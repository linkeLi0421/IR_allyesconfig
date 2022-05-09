; ModuleID = '/llk/IR_all_yes/fs/ceph/snap.c_pt.bc'
source_filename = "../fs/ceph/snap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rb_root = type { ptr }
%struct.ceph_snap_realm = type { i64, ptr, %struct.atomic_t, %struct.rb_node, i64, i64, i64, i64, ptr, i32, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.128, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_vino = type { i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%struct.ceph_cap_reservation = type { i32, i32 }
%union.anon.128 = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
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
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_cap_snap = type { %struct.refcount_struct, %struct.list_head, %struct.ceph_cap_flush, i64, i32, i32, ptr, i16, %struct.kuid_t, %struct.kgid_t, ptr, i64, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i32, i32, i32, i8, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ceph_cap_flush = type { i64, i32, i8, i8, %struct.list_head, %struct.list_head }
%struct.ceph_snap_context = type { %struct.refcount_struct, i64, i32, [0 x i64] }
%struct.ceph_mds_snap_realm = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.122 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.111 }
%union.anon.111 = type { ptr, [124 x i8] }
%union.anon.122 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.123 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.92, %union.anon.93 }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.117 }
%union.anon.117 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.123 = type { i8, %union.anon.124 }
%union.anon.124 = type <{ %struct.anon.125, [3 x i8] }>
%struct.anon.125 = type { i32, i32, i32 }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon.113, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%union.anon.113 = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.kref = type { %struct.refcount_struct }
%struct.ceph_mds_snap_head = type <{ i32, i64, i32, i32, i32 }>
%struct.ceph_snapid_map = type { %struct.rb_node, %struct.list_head, %struct.atomic_t, i64, i32, i32 }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ceph/snap.c\00", [17 x i8] zeroinitializer }, align 32
@__ceph_finish_cap_snap.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__ceph_finish_cap_snap\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"%.*s %12.12s:%-4d : finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu still has %d dirty pages\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"ceph: %.*s %12.12s:%-4d : finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu still has %d dirty pages\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@__ceph_finish_cap_snap.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.6, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"%.*s %12.12s:%-4d : finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu used WRBUFFER, delaying\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"ceph: %.*s %12.12s:%-4d : finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu used WRBUFFER, delaying\0A\00", [54 x i8] zeroinitializer }, align 32
@__ceph_finish_cap_snap.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.8, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%.*s %12.12s:%-4d : finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ceph: %.*s %12.12s:%-4d : finish_cap_snap %p cap_snap %p snapc %p %llu %s s=%llu\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_update_snap_trace\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : update_snap_trace deletion=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : update_snap_trace deletion=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.13, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : update_snap_trace updating %llx %p %lld -> %lld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ceph: %.*s %12.12s:%-4d : update_snap_trace updating %llx %p %lld -> %lld\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.15, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : update_snap_trace %llx %p seq %lld new\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : update_snap_trace %llx %p seq %lld new\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.17, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : update_snap_trace %llx %p seq %lld unchanged\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : update_snap_trace %llx %p seq %lld unchanged\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str, ptr @.str.19, i8 0, i8 -62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : done with %llx %p, invalidated=%d, %p %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ceph: %.*s %12.12s:%-4d : done with %llx %p, invalidated=%d, %p %p\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ceph: update_snap_trace error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_update_snap_trace._entry_ptr = internal global ptr @ceph_update_snap_trace._entry, section ".printk_index", align 4
@ceph_handle_snap.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.23, i8 0, i8 -23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_handle_snap\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : handle_snap from mds%d op %s split %llx tracelen %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ceph: %.*s %12.12s:%-4d : handle_snap from mds%d op %s split %llx tracelen %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_handle_snap.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.25, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : splitting snap_realm %llx %p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : splitting snap_realm %llx %p\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_handle_snap.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.27, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d :  leaving %p in newer realm %llx %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d :  leaving %p in newer realm %llx %p\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_handle_snap.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.29, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d :  will move %p to split realm %llx %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d :  will move %p to split realm %llx %p\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_handle_snap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ceph: corrupt snap message from mds%d\0A\00", [55 x i8] zeroinitializer }, align 32
@ceph_handle_snap._entry_ptr = internal global ptr @ceph_handle_snap._entry, section ".printk_index", align 4
@ceph_get_snapid_map.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str, ptr @.str.33, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_get_snapid_map\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : found snapid map %llx -> %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : found snapid map %llx -> %x\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_get_snapid_map.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str, ptr @.str.33, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_get_snapid_map.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str, ptr @.str.35, i8 1, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : create snapid map %llx -> %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : create snapid map %llx -> %x\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ceph_trim_snapid_map.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str, ptr @.str.38, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_trim_snapid_map\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : trim snapid map %llx -> %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : trim snapid map %llx -> %x\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_cleanup_snapid_map.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_cleanup_snapid_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ceph: snapid map %llx -> %x still in use\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ceph_cleanup_snapid_map\00", [40 x i8] zeroinitializer }, align 32
@ceph_cleanup_snapid_map._entry_ptr = internal global ptr @ceph_cleanup_snapid_map._entry, section ".printk_index", align 4
@__lookup_snap_realm.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.42, ptr @.str, ptr @.str.43, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__lookup_snap_realm\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : lookup_snap_realm %llx %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : lookup_snap_realm %llx %p\0A\00", [43 x i8] zeroinitializer }, align 32
@__destroy_snap_realm.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str, ptr @.str.46, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__destroy_snap_realm\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : __destroy_snap_realm %p %llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : __destroy_snap_realm %p %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_create_snap_realm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&realm->inodes_with_caps_lock\00", [34 x i8] zeroinitializer }, align 32
@ceph_create_snap_realm.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str, ptr @.str.50, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_create_snap_realm\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : create_snap_realm %llx %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : create_snap_realm %llx %p\0A\00", [43 x i8] zeroinitializer }, align 32
@adjust_snap_realm_parent.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str, ptr @.str.53, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adjust_snap_realm_parent\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s %12.12s:%-4d : adjust_snap_realm_parent %llx %p: %llx %p -> %llx %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ceph: %.*s %12.12s:%-4d : adjust_snap_realm_parent %llx %p: %llx %p -> %llx %p\0A\00", [48 x i8] zeroinitializer }, align 32
@rebuild_snap_realms.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.55, ptr @.str, ptr @.str.56, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rebuild_snap_realms\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : rebuild_snap_realms %llx %p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : rebuild_snap_realms %llx %p\0A\00", [41 x i8] zeroinitializer }, align 32
@build_snap_context.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str, ptr @.str.59, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"build_snap_context\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%.*s %12.12s:%-4d : build_snap_context %llx %p: %p seq %lld (%u snaps) (unchanged)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"ceph: %.*s %12.12s:%-4d : build_snap_context %llx %p: %p seq %lld (%u snaps) (unchanged)\0A\00", [38 x i8] zeroinitializer }, align 32
@build_snap_context.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str, ptr @.str.61, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : build_snap_context %llx %p: %p seq %lld (%u snaps)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : build_snap_context %llx %p: %p seq %lld (%u snaps)\0A\00", [50 x i8] zeroinitializer }, align 32
@build_snap_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ceph: build_snap_context %llx %p fail %d\0A\00", [52 x i8] zeroinitializer }, align 32
@build_snap_context._entry_ptr = internal global ptr @build_snap_context._entry, section ".printk_index", align 4
@queue_realm_cap_snaps.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str, ptr @.str.65, i8 0, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"queue_realm_cap_snaps\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : queue_realm_cap_snaps %p %llx inodes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d : queue_realm_cap_snaps %p %llx inodes\0A\00", [32 x i8] zeroinitializer }, align 32
@queue_realm_cap_snaps.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.64, ptr @.str, ptr @.str.67, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : queue_realm_cap_snaps %p %llx done\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : queue_realm_cap_snaps %p %llx done\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ceph: ENOMEM allocating ceph_cap_snap on %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_queue_cap_snap\00", [44 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap._entry_ptr = internal global ptr @ceph_queue_cap_snap._entry, section ".printk_index", align 4
@ceph_queue_cap_snap.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.71, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : queue_cap_snap %p already pending\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d : queue_cap_snap %p already pending\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.73, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : queue_cap_snap %p nothing dirty|writing\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : queue_cap_snap %p nothing dirty|writing\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.75, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%.*s %12.12s:%-4d : queue_cap_snap %p no new_snap|dirty_page|writing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"ceph: %.*s %12.12s:%-4d : queue_cap_snap %p no new_snap|dirty_page|writing\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.77, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s %12.12s:%-4d : queue_cap_snap %p cap_snap %p queuing under %p %s %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ceph: %.*s %12.12s:%-4d : queue_cap_snap %p cap_snap %p queuing under %p %s %s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no_flush\00", [23 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.81, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%.*s %12.12s:%-4d : queue_cap_snap %p cap_snap %p snapc %p seq %llu used WR, now pending\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"ceph: %.*s %12.12s:%-4d : queue_cap_snap %p cap_snap %p snapc %p seq %llu used WR, now pending\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_queue_cap_snap.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.70, ptr @.str, ptr @.str.83, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%.*s %12.12s:%-4d :  new snapc is %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ceph: %.*s %12.12s:%-4d :  new snapc is %p\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_vino_is_reserved._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ceph_vino_is_reserved = private unnamed_addr constant [22 x i8] c"ceph_vino_is_reserved\00", align 1
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/super.h\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Attempt to access reserved inode number 0x%llx\00", [49 x i8] zeroinitializer }, align 32
@flush_snaps.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str, ptr @.str.89, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flush_snaps\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%.*s %12.12s:%-4d : flush_snaps\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ceph: %.*s %12.12s:%-4d : flush_snaps\0A\00", [57 x i8] zeroinitializer }, align 32
@flush_snaps.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str, ptr @.str.91, i8 0, i8 -44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%.*s %12.12s:%-4d : flush_snaps done\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ceph: %.*s %12.12s:%-4d : flush_snaps done\0A\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 68, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 635, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 645, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 654, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 716, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 744, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 768, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 772, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 776, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 817, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 931, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 967, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 992, i32 5 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 997, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1041, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1074, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1122, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1168, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 1194, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 159, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 187, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 131, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 135, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 295, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 425, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 352, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 393, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 412, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 675, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 691, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 487, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 514, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 519, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 539, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 545, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 582, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 601, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [19 x i8] c"../fs/ceph/super.h\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 552, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 834, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.391 = private constant [18 x i8] c"../fs/ceph/snap.c\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 849, i32 2 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @build_snap_context._entry, ptr @build_snap_context._entry_ptr, ptr @ceph_cleanup_snapid_map._entry, ptr @ceph_cleanup_snapid_map._entry_ptr, ptr @ceph_handle_snap._entry, ptr @ceph_handle_snap._entry_ptr, ptr @ceph_queue_cap_snap._entry, ptr @ceph_queue_cap_snap._entry_ptr, ptr @ceph_update_snap_trace._entry, ptr @ceph_update_snap_trace._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @ceph_create_snap_realm.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @ceph_vino_is_reserved._rs, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_update_snap_trace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_handle_snap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_cleanup_snapid_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_create_snap_realm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @build_snap_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_queue_cap_snap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_vino_is_reserved._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_get_snap_realm(ptr noundef %mdsc, ptr noundef %realm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nref = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %nref, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %nref, ptr %nref, i32 0, i32 1, ptr elementtype(i32) %nref) #11, !srcloc !193
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end26, label %atomic_inc_not_zero.exit.thread

atomic_inc_not_zero.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !194
  br label %return

if.end26:                                         ; preds = %if.end
  %snap_empty_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %snap_empty_lock) #11
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %nref, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nref, ptr %nref, i32 1, ptr elementtype(i32) %nref) #11, !srcloc !196
  %asmresult.i.i.i.i39 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i39)
  %cmp29 = icmp eq i32 %asmresult.i.i.i.i39, 1
  br i1 %cmp29, label %if.then30, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  %empty_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 15
  %call.i.i40 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %empty_item) #11
  br i1 %call.i.i40, label %if.end.i.i, label %if.then30.list_del_init.exit_crit_edge

if.then30.list_del_init.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %empty_item to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %empty_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then30.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %empty_item to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %empty_item, ptr %empty_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %empty_item, ptr %prev.i3.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %list_del_init.exit, %if.end26.if.end31_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snap_empty_lock) #11
  br label %return

return:                                           ; preds = %if.end31, %atomic_inc_not_zero.exit.thread
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_lookup_snap_realm(ptr noundef %mdsc, i64 noundef %ino) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %snap_realms.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 16
  %0 = ptrtoint ptr %snap_realms.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap_realms.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !191

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %tobool24.not63.i = icmp eq ptr %1, null
  br i1 %tobool24.not63.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %n.064.i = phi ptr [ %n.1.i, %if.end50.i.while.body.i_crit_edge ], [ %1, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.064.i, i32 -16
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %ino)
  %cmp27.i = icmp ugt i64 %4, %ino
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.064.i, i32 0, i32 2
  br label %if.end50.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %ino)
  %cmp30.i = icmp ult i64 %4, %ino
  br i1 %cmp30.i, label %if.then31.i, label %do.body33.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.064.i, i32 0, i32 1
  br label %if.end50.i

do.body33.i:                                      ; preds = %if.else.i
  %add.ptr.i.le = getelementptr i8, ptr %n.064.i, i32 -16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__lookup_snap_realm.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lookup_snap_realm, %if.then43.i)) #11
          to label %__lookup_snap_realm.exit [label %if.then43.i], !srcloc !198

if.then43.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %add.ptr.i.le to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr.i.le, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__lookup_snap_realm.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.44, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 159, i64 noundef %6, ptr noundef %add.ptr.i.le) #11
  br label %__lookup_snap_realm.exit

if.end50.i:                                       ; preds = %if.then31.i, %if.then28.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then28.i ], [ %rb_right.i, %if.then31.i ]
  %7 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.1.i = load ptr, ptr %n.1.in.i, align 4
  %tobool24.not.i = icmp eq ptr %n.1.i, null
  br i1 %tobool24.not.i, label %if.end50.i.if.end_crit_edge, label %if.end50.i.while.body.i_crit_edge

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end50.i.if.end_crit_edge:                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

__lookup_snap_realm.exit:                         ; preds = %if.then43.i, %do.body33.i
  %tobool.not = icmp eq ptr %add.ptr.i.le, null
  br i1 %tobool.not, label %__lookup_snap_realm.exit.if.end_crit_edge, label %if.then

__lookup_snap_realm.exit.if.end_crit_edge:        ; preds = %__lookup_snap_realm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %__lookup_snap_realm.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ceph_get_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %add.ptr.i.le)
  br label %if.end

if.end:                                           ; preds = %if.then, %__lookup_snap_realm.exit.if.end_crit_edge, %if.end50.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i6 = phi ptr [ %add.ptr.i.le, %if.then ], [ null, %__lookup_snap_realm.exit.if.end_crit_edge ], [ null, %if.end.i.if.end_crit_edge ], [ null, %if.end50.i.if.end_crit_edge ]
  ret ptr %retval.0.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef %realm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nref = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 2
  %snap_empty_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 19
  %call = tail call i32 @_atomic_dec_and_lock(ptr noundef %nref, ptr noundef %snap_empty_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end:                                           ; preds = %entry
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15
  %call1 = tail call i32 @down_write_trylock(ptr noundef %snap_rwsem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %snap_empty_lock) #11
  tail call fastcc void @__destroy_snap_realm(ptr noundef %mdsc, ptr noundef %realm)
  tail call void @up_write(ptr noundef %snap_rwsem) #11
  br label %if.end7

if.else:                                          ; preds = %if.end
  %empty_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 15
  %snap_empty = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 17
  %0 = ptrtoint ptr %snap_empty to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snap_empty, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %empty_item, ptr noundef %snap_empty, ptr noundef %1) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add.exit_crit_edge

if.else.list_add.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %empty_item, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %empty_item to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %empty_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %snap_empty, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %snap_empty to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %empty_item, ptr %snap_empty, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.else.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snap_empty_lock) #11
  br label %if.end7

if.end7:                                          ; preds = %list_add.exit, %if.then3, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__destroy_snap_realm(ptr noundef %mdsc, ptr noundef %realm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__destroy_snap_realm.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__destroy_snap_realm, %if.then35)) #11
          to label %do.end39 [label %if.then35], !srcloc !198

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %realm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__destroy_snap_realm.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.47, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 187, ptr noundef %realm, i64 noundef %2) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %if.end
  %node = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 3
  %snap_realms = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 16
  tail call void @rb_erase(ptr noundef %node, ptr noundef %snap_realms) #11
  %num_snap_realms = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 18
  %3 = ptrtoint ptr %num_snap_realms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_snap_realms, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %num_snap_realms, align 4
  %parent = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 12
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %tobool40.not = icmp eq ptr %6, null
  br i1 %tobool40.not, label %do.end39.if.end43_crit_edge, label %if.then41

do.end39.if.end43_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then41:                                        ; preds = %do.end39
  %child_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %child_item) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then41.list_del_init.exit_crit_edge

if.then41.list_del_init.exit_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %child_item to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %child_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then41.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %child_item to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %child_item, ptr %child_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %child_item, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %list_del_init.exit.if.end.i_crit_edge, label %land.rhs.i

list_del_init.exit.if.end.i_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %list_del_init.exit
  %dep_map.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !191

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %list_del_init.exit.if.end.i_crit_edge
  %nref.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %16, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !199
  tail call void @llvm.prefetch.p0(ptr %nref.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nref.i, ptr %nref.i, i32 1, ptr elementtype(i32) %nref.i) #11, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then26.i, label %if.end.i.if.end43_crit_edge

if.end.i.if.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__destroy_snap_realm(ptr noundef %mdsc, ptr noundef %16) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then26.i, %if.end.i.if.end43_crit_edge, %do.end39.if.end43_crit_edge
  %prior_parent_snaps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 8
  %19 = ptrtoint ptr %prior_parent_snaps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prior_parent_snaps, align 8
  tail call void @kfree(ptr noundef %20) #11
  %snaps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 10
  %21 = ptrtoint ptr %snaps to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %snaps, align 8
  tail call void @kfree(ptr noundef %22) #11
  %cached_context = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 17
  %23 = ptrtoint ptr %cached_context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cached_context, align 4
  tail call void @ceph_put_snap_context(ptr noundef %24) #11
  tail call void @kfree(ptr noundef %realm) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_cleanup_empty_realms(ptr noundef %mdsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15
  tail call void @down_write(ptr noundef %snap_rwsem) #11
  tail call fastcc void @__cleanup_empty_realms(ptr noundef %mdsc)
  tail call void @up_write(ptr noundef %snap_rwsem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cleanup_empty_realms(ptr noundef %mdsc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %snap_empty_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %snap_empty_lock) #11
  %snap_empty = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 17
  %1 = ptrtoint ptr %snap_empty to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %snap_empty, align 4
  %cmp.i.not43 = icmp eq ptr %2, %snap_empty
  br i1 %cmp.i.not43, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %3 = phi ptr [ %13, %list_del.exit.while.body_crit_edge ], [ %2, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -100
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %snap_empty_lock) #11
  tail call fastcc void @__destroy_snap_realm(ptr noundef %mdsc, ptr noundef %add.ptr)
  tail call void @_raw_spin_lock(ptr noundef %snap_empty_lock) #11
  %12 = ptrtoint ptr %snap_empty to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %snap_empty, align 4
  %cmp.i.not = icmp eq ptr %13, %snap_empty
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snap_empty_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ceph_finish_cap_snap(ptr noundef %ci, ptr noundef %capsnap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76
  %i_sb = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 8
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
  %writing = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 21
  %6 = ptrtoint ptr %writing to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !202

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #11, !srcloc !203
  unreachable

do.end8:                                          ; preds = %entry
  %i_size_seqcount.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %do.end8
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !204
  %and.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %9 = tail call ptr @llvm.returnaddress(i32 0) #11
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %10) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %10) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call ptr @llvm.returnaddress(i32 0) #11
  %12 = ptrtoint ptr %11 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %12) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %12) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !205
  %and.i.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !191

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #11, !srcloc !206
  %14 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !207
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !208
  %16 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %17, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %15, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %17, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !209
  %18 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !210
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %21, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %size = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 12
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %19, ptr %size, align 8
  %mtime = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 14
  %i_mtime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 16
  %23 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %atime = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 15
  %i_atime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 15
  %24 = call ptr @memcpy(ptr %atime, ptr %i_atime, i32 16)
  %ctime = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 17
  %25 = call ptr @memcpy(ptr %ctime, ptr %i_ctime, i32 16)
  %btime = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 17
  %i_btime = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 71
  %26 = call ptr @memcpy(ptr %btime, ptr %i_btime, i32 16)
  %i_version.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i, i32 noundef 8) #11
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i) #11
  %change_attr = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 13
  %27 = ptrtoint ptr %change_attr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call.i.i, ptr %change_attr, align 8
  %i_time_warp_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 4
  %28 = ptrtoint ptr %i_time_warp_seq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_time_warp_seq, align 8
  %conv = zext i32 %29 to i64
  %time_warp_seq = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 18
  %30 = ptrtoint ptr %time_warp_seq to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv, ptr %time_warp_seq, align 8
  %i_truncate_size = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 47
  %31 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_truncate_size, align 8
  %truncate_size = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 19
  %33 = ptrtoint ptr %truncate_size to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %truncate_size, align 8
  %i_truncate_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 46
  %34 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_truncate_seq, align 8
  %truncate_seq = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 20
  %36 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %truncate_seq, align 8
  %dirty_pages = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 22
  %37 = ptrtoint ptr %dirty_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dirty_pages, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool11.not = icmp eq i32 %38, 0
  br i1 %tobool11.not, label %if.end31, label %do.body13

do.body13:                                        ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_finish_cap_snap, %if.then22)) #11
          to label %cleanup [label %if.then22], !srcloc !198

if.then22:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %context = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 6
  %39 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context, align 8
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %seq, align 8
  %dirty = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 5
  %43 = ptrtoint ptr %dirty to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dirty, align 4
  %call25 = tail call ptr @ceph_cap_string(i32 noundef %44) #11
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %size, align 8
  %47 = ptrtoint ptr %dirty_pages to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dirty_pages, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 639, ptr noundef %vfs_inode, ptr noundef %capsnap, ptr noundef %40, i64 noundef %42, ptr noundef %call25, i64 noundef %46, i32 noundef %48) #11
  br label %cleanup

if.end31:                                         ; preds = %i_size_read.exit
  %i_wb_ref = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 57
  %49 = ptrtoint ptr %i_wb_ref to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_wb_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool32.not = icmp eq i32 %50, 0
  br i1 %tobool32.not, label %if.end58, label %do.body34

do.body34:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_finish_cap_snap, %if.then46)) #11
          to label %do.end56 [label %if.then46], !srcloc !198

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  %context48 = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 6
  %51 = ptrtoint ptr %context48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %context48, align 8
  %seq50 = getelementptr inbounds %struct.ceph_snap_context, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %seq50 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %seq50, align 8
  %dirty51 = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 5
  %55 = ptrtoint ptr %dirty51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dirty51, align 4
  %call52 = tail call ptr @ceph_cap_string(i32 noundef %56) #11
  %57 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.7, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 648, ptr noundef %vfs_inode, ptr noundef %capsnap, ptr noundef %52, i64 noundef %54, ptr noundef %call52, i64 noundef %58) #11
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %do.body34
  %59 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %writing, align 4
  br label %cleanup

if.end58:                                         ; preds = %if.end31
  %i_ceph_flags = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 5
  %60 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %i_ceph_flags, align 4
  %or = or i32 %61, 256
  store i32 %or, ptr %i_ceph_flags, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_finish_cap_snap, %if.then71)) #11
          to label %do.end81 [label %if.then71], !srcloc !198

if.then71:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %context73 = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 6
  %62 = ptrtoint ptr %context73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %context73, align 8
  %seq75 = getelementptr inbounds %struct.ceph_snap_context, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %seq75 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %seq75, align 8
  %dirty76 = getelementptr inbounds %struct.ceph_cap_snap, ptr %capsnap, i32 0, i32 5
  %66 = ptrtoint ptr %dirty76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dirty76, align 4
  %call77 = tail call ptr @ceph_cap_string(i32 noundef %67) #11
  %68 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.9, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 657, ptr noundef %vfs_inode, ptr noundef %capsnap, ptr noundef %63, i64 noundef %65, ptr noundef %call77, i64 noundef %69) #11
  br label %do.end81

do.end81:                                         ; preds = %if.then71, %if.end58
  %snap_flush_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %snap_flush_lock) #11
  %i_snap_flush_item = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 70
  %70 = ptrtoint ptr %i_snap_flush_item to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %i_snap_flush_item, align 4
  %cmp.i.not = icmp eq ptr %71, %i_snap_flush_item
  br i1 %cmp.i.not, label %if.then84, label %do.end81.if.end86_crit_edge

do.end81.if.end86_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then84:                                        ; preds = %do.end81
  %snap_flush_list = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 27
  %prev.i = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 27, i32 1
  %72 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i, align 4
  %call.i.i140 = tail call zeroext i1 @__list_add_valid(ptr noundef %i_snap_flush_item, ptr noundef %73, ptr noundef %snap_flush_list) #11
  br i1 %call.i.i140, label %if.end.i.i, label %if.then84.if.end86_crit_edge

if.then84.if.end86_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.end.i.i:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %i_snap_flush_item, ptr %prev.i, align 4
  %75 = ptrtoint ptr %i_snap_flush_item to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %snap_flush_list, ptr %i_snap_flush_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 70, i32 1
  %76 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev3.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %i_snap_flush_item, ptr %73, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end.i.i, %if.then84.if.end86_crit_edge, %do.end81.if.end86_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snap_flush_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end56, %if.then22, %do.body13
  %retval.0 = phi i32 [ 0, %do.end56 ], [ 1, %if.end86 ], [ 0, %if.then22 ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_update_snap_trace(ptr noundef %mdsc, ptr noundef %p, ptr noundef %e, i1 noundef zeroext %deletion, ptr noundef writeonly %realm_ret) local_unnamed_addr #0 align 64 {
entry:
  %dirty_realms = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dirty_realms) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %dirty_realms, i32 0, i32 1
  %1 = ptrtoint ptr %dirty_realms to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dirty_realms, ptr %dirty_realms, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dirty_realms, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 714, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_update_snap_trace, %if.then36)) #11
          to label %do.end41 [label %if.then36], !srcloc !198

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i1 %deletion to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_update_snap_trace.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 716, i32 noundef %conv) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %e to i32
  %cmp.not.i424 = icmp ule ptr %p, %e
  %sub.ptr.rhs.cast.i425 = ptrtoint ptr %p to i32
  %sub.ptr.sub.i426 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i425
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub.ptr.sub.i426)
  %cmp1.i427 = icmp ugt i32 %sub.ptr.sub.i426, 47
  %4 = and i1 %cmp.not.i424, %cmp1.i427
  br i1 %4, label %do.end53.lr.ph, label %do.end41.do.end235_crit_edge, !prof !202

do.end41.do.end235_crit_edge:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end235

do.end53.lr.ph:                                   ; preds = %do.end41
  %last_snap_seq = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 14
  %add.ptr484 = getelementptr i8, ptr %p, i32 48
  %num_snaps485 = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %p, i32 0, i32 5
  %5 = ptrtoint ptr %num_snaps485 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %num_snaps485, align 1
  %7 = call i32 @llvm.bswap.i32(i32 %6)
  %num_prior_parent_snaps486 = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %p, i32 0, i32 6
  %8 = ptrtoint ptr %num_prior_parent_snaps486 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %num_prior_parent_snaps486, align 1
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %add487 = add i32 %10, %7
  %mul488 = shl i32 %add487, 3
  %cmp.not.i332489 = icmp ule ptr %add.ptr484, %e
  %sub.ptr.rhs.cast.i334490 = ptrtoint ptr %add.ptr484 to i32
  %sub.ptr.sub.i335491 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i334490
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i335491, i32 %mul488)
  %cmp1.i336492 = icmp uge i32 %sub.ptr.sub.i335491, %mul488
  %11 = select i1 %cmp.not.i332489, i1 %cmp1.i336492, i1 false
  br i1 %11, label %do.end53.lr.ph.do.end65_crit_edge, label %do.end53.lr.ph.fail_crit_edge, !prof !202

do.end53.lr.ph.fail_crit_edge:                    ; preds = %do.end53.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end53.lr.ph.do.end65_crit_edge:                ; preds = %do.end53.lr.ph
  br label %do.end65

more:                                             ; preds = %if.end209
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr71 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 47
  br i1 %cmp1.i, label %do.end53, label %more.fail_crit_edge, !prof !202

more.fail_crit_edge:                              ; preds = %more
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end53:                                         ; preds = %more
  %add.ptr = getelementptr i8, ptr %add.ptr71, i32 48
  %num_snaps = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %add.ptr71, i32 0, i32 5
  %12 = ptrtoint ptr %num_snaps to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %num_snaps, align 1
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %num_prior_parent_snaps = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %add.ptr71, i32 0, i32 6
  %15 = ptrtoint ptr %num_prior_parent_snaps to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %num_prior_parent_snaps, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %add = add i32 %17, %14
  %mul = shl i32 %add, 3
  %cmp.not.i332 = icmp ule ptr %add.ptr, %e
  %sub.ptr.rhs.cast.i334 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub.i335 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i334
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i335, i32 %mul)
  %cmp1.i336 = icmp uge i32 %sub.ptr.sub.i335, %mul
  %18 = select i1 %cmp.not.i332, i1 %cmp1.i336, i1 false
  br i1 %18, label %do.end53.do.end65_crit_edge, label %do.end53.fail_crit_edge, !prof !202

do.end53.fail_crit_edge:                          ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

do.end53.do.end65_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end65:                                         ; preds = %do.end53.do.end65_crit_edge, %do.end53.lr.ph.do.end65_crit_edge
  %19 = phi i32 [ %17, %do.end53.do.end65_crit_edge ], [ %10, %do.end53.lr.ph.do.end65_crit_edge ]
  %num_prior_parent_snaps501 = phi ptr [ %num_prior_parent_snaps, %do.end53.do.end65_crit_edge ], [ %num_prior_parent_snaps486, %do.end53.lr.ph.do.end65_crit_edge ]
  %20 = phi i32 [ %14, %do.end53.do.end65_crit_edge ], [ %7, %do.end53.lr.ph.do.end65_crit_edge ]
  %num_snaps500 = phi ptr [ %num_snaps, %do.end53.do.end65_crit_edge ], [ %num_snaps485, %do.end53.lr.ph.do.end65_crit_edge ]
  %add.ptr499 = phi ptr [ %add.ptr, %do.end53.do.end65_crit_edge ], [ %add.ptr484, %do.end53.lr.ph.do.end65_crit_edge ]
  %p.addr.0428498 = phi ptr [ %add.ptr71, %do.end53.do.end65_crit_edge ], [ %p, %do.end53.lr.ph.do.end65_crit_edge ]
  %invalidate.0430497 = phi i32 [ %invalidate.1, %do.end53.do.end65_crit_edge ], [ 0, %do.end53.lr.ph.do.end65_crit_edge ]
  %first_realm.0431493 = phi ptr [ %first_realm.1, %do.end53.do.end65_crit_edge ], [ null, %do.end53.lr.ph.do.end65_crit_edge ]
  %mul67 = shl i32 %20, 3
  %add.ptr68 = getelementptr i8, ptr %add.ptr499, i32 %mul67
  %mul70 = shl i32 %19, 3
  %add.ptr71 = getelementptr i8, ptr %add.ptr68, i32 %mul70
  %21 = ptrtoint ptr %p.addr.0428498 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %p.addr.0428498, align 1
  %23 = call i64 @llvm.bswap.i64(i64 %22)
  %call72 = call ptr @ceph_lookup_snap_realm(ptr noundef %mdsc, i64 noundef %23)
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.then74, label %do.end65.if.end81_crit_edge

do.end65.if.end81_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then74:                                        ; preds = %do.end65
  %24 = ptrtoint ptr %p.addr.0428498 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %p.addr.0428498, align 1
  %26 = call i64 @llvm.bswap.i64(i64 %25)
  %call76 = call fastcc ptr @ceph_create_snap_realm(ptr noundef %mdsc, i64 noundef %26)
  %cmp.i = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then78, label %if.then74.if.end81_crit_edge

if.then74.if.end81_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then78:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %call76 to i32
  br label %fail

if.end81:                                         ; preds = %if.then74.if.end81_crit_edge, %do.end65.if.end81_crit_edge
  %realm.1 = phi ptr [ %call72, %do.end65.if.end81_crit_edge ], [ %call76, %if.then74.if.end81_crit_edge ]
  %parent = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %p.addr.0428498, i32 0, i32 2
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %parent, align 1
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  %call82 = call fastcc i32 @adjust_snap_realm_parent(ptr noundef %mdsc, ptr noundef %realm.1, i64 noundef %30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp = icmp slt i32 %call82, 0
  br i1 %cmp, label %if.end81.fail_crit_edge, label %if.end85

if.end81.fail_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end85:                                         ; preds = %if.end81
  %add86 = add i32 %call82, %invalidate.0430497
  %seq = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %p.addr.0428498, i32 0, i32 4
  %31 = ptrtoint ptr %seq to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %seq, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %32)
  %seq87 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 5
  %34 = ptrtoint ptr %seq87 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %seq87, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp88 = icmp ugt i64 %33, %35
  br i1 %cmp88, label %do.body91, label %if.else

do.body91:                                        ; preds = %if.end85
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_update_snap_trace, %if.then103)) #11
          to label %do.end110 [label %if.then103], !srcloc !198

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %realm.1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %realm.1, align 8
  %38 = ptrtoint ptr %seq87 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %seq87, align 8
  %40 = ptrtoint ptr %seq to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %seq, align 1
  %42 = call i64 @llvm.bswap.i64(i64 %41)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_update_snap_trace.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 745, i64 noundef %37, ptr noundef %realm.1, i64 noundef %39, i64 noundef %42) #11
  br label %do.end110

do.end110:                                        ; preds = %if.then103, %do.body91
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %seq, align 1
  %45 = call i64 @llvm.bswap.i64(i64 %44)
  %46 = ptrtoint ptr %seq87 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %seq87, align 8
  %created = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %p.addr.0428498, i32 0, i32 1
  %47 = ptrtoint ptr %created to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %created, align 1
  %49 = call i64 @llvm.bswap.i64(i64 %48)
  %created113 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 4
  %50 = ptrtoint ptr %created113 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %created113, align 8
  %parent_since = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %p.addr.0428498, i32 0, i32 3
  %51 = ptrtoint ptr %parent_since to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %parent_since, align 1
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %parent_since114 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 7
  %54 = ptrtoint ptr %parent_since114 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %parent_since114, align 8
  %55 = ptrtoint ptr %num_snaps500 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %num_snaps500, align 1
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %num_snaps116 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 11
  %58 = ptrtoint ptr %num_snaps116 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %num_snaps116, align 4
  %snaps117 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 10
  %59 = ptrtoint ptr %snaps117 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %snaps117, align 4
  call void @kfree(ptr noundef %60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %dup_array.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end110
  %61 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 8) #11
  %62 = extractvalue { i32, i1 } %61, 1
  br i1 %62, label %dup_array.exit.thread401, label %if.end7.i.i.i, !prof !191

dup_array.exit.thread401:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %snaps117 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %snaps117, align 4
  br label %fail

if.end7.i.i.i:                                    ; preds = %if.then.i
  %64 = extractvalue { i32, i1 } %61, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %64, i32 noundef 3392) #14
  %65 = ptrtoint ptr %snaps117 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call8.i.i.i, ptr %snaps117, align 4
  %tobool1.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool1.not.i, label %if.end7.i.i.i.fail_crit_edge, label %if.end7.i.i.i.for.body.i_crit_edge

if.end7.i.i.i.for.body.i_crit_edge:               ; preds = %if.end7.i.i.i
  br label %for.body.i

if.end7.i.i.i.fail_crit_edge:                     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.i.i.i.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.i.i.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i64, ptr %add.ptr499, i32 %i.017.i
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %67 = load i64, ptr %add.ptr.i, align 1
  %68 = call i64 @llvm.bswap.i64(i64 %67) #11
  %69 = ptrtoint ptr %snaps117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %snaps117, align 4
  %arrayidx.i = getelementptr i64, ptr %70, i32 %i.017.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %68, ptr %arrayidx.i, align 8
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %57
  br i1 %exitcond.not.i, label %for.body.i.if.end123_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.if.end123_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end123

dup_array.exit:                                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %snaps117 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %snaps117, align 4
  br label %if.end123

if.end123:                                        ; preds = %dup_array.exit, %for.body.i.if.end123_crit_edge
  %73 = ptrtoint ptr %num_prior_parent_snaps501 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 4)
  %74 = load i32, ptr %num_prior_parent_snaps501, align 1
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  %num_prior_parent_snaps125 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 9
  %76 = ptrtoint ptr %num_prior_parent_snaps125 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %num_prior_parent_snaps125, align 4
  %prior_parent_snaps126 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 8
  %77 = ptrtoint ptr %prior_parent_snaps126 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prior_parent_snaps126, align 4
  call void @kfree(ptr noundef %78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i338 = icmp eq i32 %74, 0
  br i1 %tobool.not.i338, label %dup_array.exit385, label %if.then.i339

if.then.i339:                                     ; preds = %if.end123
  %79 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 8) #11
  %80 = extractvalue { i32, i1 } %79, 1
  br i1 %80, label %dup_array.exit385.thread409, label %if.end7.i.i.i371, !prof !191

dup_array.exit385.thread409:                      ; preds = %if.then.i339
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %prior_parent_snaps126 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %prior_parent_snaps126, align 4
  br label %fail

if.end7.i.i.i371:                                 ; preds = %if.then.i339
  %82 = extractvalue { i32, i1 } %79, 0
  %call8.i.i.i370 = call noalias align 128 ptr @__kmalloc(i32 noundef %82, i32 noundef 3392) #14
  %83 = ptrtoint ptr %prior_parent_snaps126 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call8.i.i.i370, ptr %prior_parent_snaps126, align 4
  %tobool1.not.i373 = icmp eq ptr %call8.i.i.i370, null
  br i1 %tobool1.not.i373, label %if.end7.i.i.i371.fail_crit_edge, label %if.end7.i.i.i371.for.body.i381_crit_edge

if.end7.i.i.i371.for.body.i381_crit_edge:         ; preds = %if.end7.i.i.i371
  br label %for.body.i381

if.end7.i.i.i371.fail_crit_edge:                  ; preds = %if.end7.i.i.i371
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.body.i381:                                    ; preds = %for.body.i381.for.body.i381_crit_edge, %if.end7.i.i.i371.for.body.i381_crit_edge
  %i.017.i376 = phi i32 [ %inc.i379, %for.body.i381.for.body.i381_crit_edge ], [ 0, %if.end7.i.i.i371.for.body.i381_crit_edge ]
  %add.ptr.i377 = getelementptr i64, ptr %add.ptr68, i32 %i.017.i376
  %84 = ptrtoint ptr %add.ptr.i377 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %add.ptr.i377, align 1
  %86 = call i64 @llvm.bswap.i64(i64 %85) #11
  %87 = ptrtoint ptr %prior_parent_snaps126 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %prior_parent_snaps126, align 4
  %arrayidx.i378 = getelementptr i64, ptr %88, i32 %i.017.i376
  %89 = ptrtoint ptr %arrayidx.i378 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %86, ptr %arrayidx.i378, align 8
  %inc.i379 = add nuw i32 %i.017.i376, 1
  %exitcond.not.i380 = icmp eq i32 %inc.i379, %75
  br i1 %exitcond.not.i380, label %for.body.i381.if.end132_crit_edge, label %for.body.i381.for.body.i381_crit_edge

for.body.i381.for.body.i381_crit_edge:            ; preds = %for.body.i381
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i381

for.body.i381.if.end132_crit_edge:                ; preds = %for.body.i381
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132

dup_array.exit385:                                ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %prior_parent_snaps126 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %prior_parent_snaps126, align 4
  br label %if.end132

if.end132:                                        ; preds = %dup_array.exit385, %for.body.i381.if.end132_crit_edge
  %91 = ptrtoint ptr %seq87 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %seq87, align 8
  %93 = ptrtoint ptr %last_snap_seq to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %last_snap_seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %92, i64 %94)
  %cmp134 = icmp ugt i64 %92, %94
  br i1 %cmp134, label %if.then136, label %if.end132.do.body183_crit_edge

if.end132.do.body183_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body183

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %last_snap_seq to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %92, ptr %last_snap_seq, align 8
  br label %do.body183

if.else:                                          ; preds = %if.end85
  %cached_context = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm.1, i32 0, i32 17
  %96 = ptrtoint ptr %cached_context to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cached_context, align 4
  %tobool140.not = icmp eq ptr %97, null
  br i1 %tobool140.not, label %do.body142, label %do.body162

do.body142:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_update_snap_trace, %if.then154)) #11
          to label %do.body183 [label %if.then154], !srcloc !198

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %realm.1 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %realm.1, align 8
  %100 = ptrtoint ptr %seq87 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %seq87, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_update_snap_trace.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 769, i64 noundef %99, ptr noundef %realm.1, i64 noundef %101) #11
  br label %do.body183

do.body162:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_update_snap_trace, %if.then174)) #11
          to label %do.body183 [label %if.then174], !srcloc !198

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %realm.1 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %realm.1, align 8
  %104 = ptrtoint ptr %seq87 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %seq87, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_update_snap_trace.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.18, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 773, i64 noundef %103, ptr noundef %realm.1, i64 noundef %105) #11
  br label %do.body183

do.body183:                                       ; preds = %if.then174, %do.body162, %if.then154, %do.body142, %if.then136, %if.end132.do.body183_crit_edge
  %invalidate.1 = phi i32 [ %add86, %if.then174 ], [ 1, %if.then136 ], [ 1, %if.end132.do.body183_crit_edge ], [ 1, %if.then154 ], [ 1, %do.body142 ], [ %add86, %do.body162 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_update_snap_trace, %if.then195)) #11
          to label %do.end200 [label %if.then195], !srcloc !198

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %realm.1 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %realm.1, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_update_snap_trace.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.20, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 777, i64 noundef %107, ptr noundef %realm.1, i32 noundef %invalidate.1, ptr noundef %add.ptr71, ptr noundef %e) #11
  br label %do.end200

do.end200:                                        ; preds = %if.then195, %do.body183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invalidate.1)
  %tobool201.not = icmp eq i32 %invalidate.1, 0
  %cmp202.not = icmp ult ptr %add.ptr71, %e
  %or.cond = select i1 %tobool201.not, i1 true, i1 %cmp202.not
  br i1 %or.cond, label %do.end200.if.end205_crit_edge, label %if.then204

do.end200.if.end205_crit_edge:                    ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end205

if.then204:                                       ; preds = %do.end200
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rebuild_snap_realms(ptr noundef %realm.1, ptr noundef nonnull %dirty_realms)
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %do.end200.if.end205_crit_edge
  %tobool206.not = icmp eq ptr %first_realm.0431493, null
  br i1 %tobool206.not, label %if.end205.if.end209_crit_edge, label %if.else208

if.end205.if.end209_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.else208:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef %realm.1)
  br label %if.end209

if.end209:                                        ; preds = %if.else208, %if.end205.if.end209_crit_edge
  %first_realm.1 = phi ptr [ %first_realm.0431493, %if.else208 ], [ %realm.1, %if.end205.if.end209_crit_edge ]
  br i1 %cmp202.not, label %more, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end209
  %108 = ptrtoint ptr %dirty_realms to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile ptr, ptr %dirty_realms, align 4
  %cmp.i386.not450 = icmp eq ptr %109, %dirty_realms
  br i1 %cmp.i386.not450, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %110 = phi ptr [ %120, %list_del_init.exit.while.body_crit_edge ], [ %109, %while.cond.preheader.while.body_crit_edge ]
  %add.ptr220 = getelementptr i8, ptr %110, i32 -108
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %110) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prev.i.i, align 4
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %110, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %112, ptr %prev1.i.i.i, align 4
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %114, ptr %112, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %117 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %110, ptr %110, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %118 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %110, ptr %prev.i3.i, align 4
  call fastcc void @queue_realm_cap_snaps(ptr noundef %add.ptr220)
  %119 = ptrtoint ptr %dirty_realms to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %dirty_realms, align 4
  %cmp.i386.not = icmp eq ptr %120, %dirty_realms
  br i1 %cmp.i386.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tobool221.not = icmp eq ptr %realm_ret, null
  br i1 %tobool221.not, label %if.else223, label %if.then222

if.then222:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %realm_ret to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %first_realm.1, ptr %realm_ret, align 4
  br label %if.end224

if.else223:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef %first_realm.1)
  br label %if.end224

if.end224:                                        ; preds = %if.else223, %if.then222
  call fastcc void @__cleanup_empty_realms(ptr noundef %mdsc)
  br label %cleanup

fail:                                             ; preds = %if.end7.i.i.i371.fail_crit_edge, %dup_array.exit385.thread409, %if.end7.i.i.i.fail_crit_edge, %dup_array.exit.thread401, %if.end81.fail_crit_edge, %if.then78, %do.end53.fail_crit_edge, %more.fail_crit_edge, %do.end53.lr.ph.fail_crit_edge
  %first_realm.0421 = phi ptr [ %first_realm.0431493, %if.then78 ], [ %first_realm.0431493, %dup_array.exit.thread401 ], [ %first_realm.0431493, %dup_array.exit385.thread409 ], [ null, %do.end53.lr.ph.fail_crit_edge ], [ %first_realm.0431493, %if.end81.fail_crit_edge ], [ %first_realm.1, %do.end53.fail_crit_edge ], [ %first_realm.1, %more.fail_crit_edge ], [ %first_realm.0431493, %if.end7.i.i.i.fail_crit_edge ], [ %first_realm.0431493, %if.end7.i.i.i371.fail_crit_edge ]
  %err.0 = phi i32 [ %27, %if.then78 ], [ -12, %dup_array.exit.thread401 ], [ -12, %dup_array.exit385.thread409 ], [ -5, %do.end53.lr.ph.fail_crit_edge ], [ %call82, %if.end81.fail_crit_edge ], [ -5, %do.end53.fail_crit_edge ], [ -5, %more.fail_crit_edge ], [ -12, %if.end7.i.i.i.fail_crit_edge ], [ -12, %if.end7.i.i.i371.fail_crit_edge ]
  %realm.2 = phi ptr [ %call76, %if.then78 ], [ %realm.1, %dup_array.exit.thread401 ], [ %realm.1, %dup_array.exit385.thread409 ], [ null, %do.end53.lr.ph.fail_crit_edge ], [ %realm.1, %if.end81.fail_crit_edge ], [ %realm.1, %do.end53.fail_crit_edge ], [ %realm.1, %more.fail_crit_edge ], [ %realm.1, %if.end7.i.i.i.fail_crit_edge ], [ %realm.1, %if.end7.i.i.i371.fail_crit_edge ]
  %tobool225.not = icmp eq ptr %realm.2, null
  %cmp.i387 = icmp ugt ptr %realm.2, inttoptr (i32 -4096 to ptr)
  %or.cond415 = or i1 %tobool225.not, %cmp.i387
  br i1 %or.cond415, label %fail.if.end229_crit_edge, label %if.then228

fail.if.end229_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

if.then228:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %realm.2)
  br label %if.end229

if.end229:                                        ; preds = %if.then228, %fail.if.end229_crit_edge
  %tobool230.not = icmp eq ptr %first_realm.0421, null
  br i1 %tobool230.not, label %if.end229.do.end235_crit_edge, label %if.then231

if.end229.do.end235_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end235

if.then231:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef nonnull %first_realm.0421)
  br label %do.end235

do.end235:                                        ; preds = %if.then231, %if.end229.do.end235_crit_edge, %do.end41.do.end235_crit_edge
  %err.0465469 = phi i32 [ %err.0, %if.end229.do.end235_crit_edge ], [ %err.0, %if.then231 ], [ -5, %do.end41.do.end235_crit_edge ]
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %err.0465469) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end235, %if.end224
  %retval.0 = phi i32 [ %err.0465469, %do.end235 ], [ 0, %if.end224 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dirty_realms) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ceph_create_snap_realm(ptr noundef %mdsc, i64 noundef %ino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 176) #16
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end.cleanup_crit_edge, label %if.end29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %nref = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nref, i32 noundef 4) #11
  %2 = ptrtoint ptr %nref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %nref, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %ino, ptr %call7.i.i, align 8
  %children = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %children, ptr %children, align 4
  %prev.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 13, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %children, ptr %prev.i, align 8
  %child_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %child_item to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %child_item, ptr %child_item, align 4
  %prev.i66 = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %prev.i66 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %child_item, ptr %prev.i66, align 8
  %empty_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %empty_item to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %empty_item, ptr %empty_item, align 4
  %prev.i67 = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %empty_item, ptr %prev.i67, align 8
  %dirty_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %dirty_item to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %dirty_item, ptr %dirty_item, align 4
  %prev.i68 = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dirty_item, ptr %prev.i68, align 8
  %inodes_with_caps = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 18
  %12 = ptrtoint ptr %inodes_with_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %inodes_with_caps, ptr %inodes_with_caps, align 8
  %prev.i69 = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev.i69 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %inodes_with_caps, ptr %prev.i69, align 4
  %inodes_with_caps_lock = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %inodes_with_caps_lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @ceph_create_snap_realm.__key, i16 noundef signext 3) #11
  %snap_realms = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 16
  %14 = ptrtoint ptr %snap_realms to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %snap_realms, align 4
  %tobool.not26.i = icmp eq ptr %15, null
  br i1 %tobool.not26.i, label %if.end29.__insert_snap_realm.exit_crit_edge, label %while.body.lr.ph.i

if.end29.__insert_snap_realm.exit_crit_edge:      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %__insert_snap_realm.exit

while.body.lr.ph.i:                               ; preds = %if.end29
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %call7.i.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = phi ptr [ %15, %while.body.lr.ph.i ], [ %22, %if.end10.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %18, i32 -16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %20)
  %cmp.i = icmp ult i64 %17, %20
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 2
  br label %if.end10.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %20)
  %cmp4.i = icmp ugt i64 %17, %20
  br i1 %cmp4.i, label %if.then5.i, label %do.body.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %18, i32 0, i32 1
  br label %if.end10.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

if.end10.i:                                       ; preds = %if.then5.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ]
  %21 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %while.cond.while.end_crit_edge.i, label %if.end10.i.while.body.i_crit_edge

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le.i = ptrtoint ptr %18 to i32
  br label %__insert_snap_realm.exit

__insert_snap_realm.exit:                         ; preds = %while.cond.while.end_crit_edge.i, %if.end29.__insert_snap_realm.exit_crit_edge
  %parent.0.lcssa.i = phi i32 [ %phi.cast.le.i, %while.cond.while.end_crit_edge.i ], [ 0, %if.end29.__insert_snap_realm.exit_crit_edge ]
  %p.0.lcssa.i = phi ptr [ %p.1.i, %while.cond.while.end_crit_edge.i ], [ %snap_realms, %if.end29.__insert_snap_realm.exit_crit_edge ]
  %node.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %parent.0.lcssa.i, ptr %node.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %call7.i.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_left.i.i, align 8
  %26 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node.i, ptr %p.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i, ptr noundef %snap_realms) #11
  %num_snap_realms = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 18
  %27 = ptrtoint ptr %num_snap_realms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_snap_realms, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %num_snap_realms, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_create_snap_realm.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_create_snap_realm, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !198

if.then45:                                        ; preds = %__insert_snap_realm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %call7.i.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_create_snap_realm.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.51, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 135, i64 noundef %30, ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %__insert_snap_realm.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.then45 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call7.i.i, %__insert_snap_realm.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adjust_snap_realm_parent(ptr noundef %mdsc, ptr noundef %realm, i64 noundef %parentino) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  %call = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %parent_ino = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 6
  %1 = ptrtoint ptr %parent_ino to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %parent_ino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %parentino)
  %cmp = icmp eq i64 %2, %parentino
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %call27 = tail call ptr @ceph_lookup_snap_realm(ptr noundef %mdsc, i64 noundef %parentino)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end26.do.body36_crit_edge

if.end26.do.body36_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then29:                                        ; preds = %if.end26
  %call30 = tail call fastcc ptr @ceph_create_snap_realm(ptr noundef %mdsc, i64 noundef %parentino)
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.then29.do.body36_crit_edge

if.then29.do.body36_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call30 to i32
  br label %cleanup

do.body36:                                        ; preds = %if.then29.do.body36_crit_edge, %if.end26.do.body36_crit_edge
  %parent.0 = phi ptr [ %call27, %if.end26.do.body36_crit_edge ], [ %call30, %if.then29.do.body36_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adjust_snap_realm_parent.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adjust_snap_realm_parent, %if.then46)) #11
          to label %do.end52 [label %if.then46], !srcloc !198

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %realm, align 8
  %6 = ptrtoint ptr %parent_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %parent_ino, align 8
  %parent49 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 12
  %8 = ptrtoint ptr %parent49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent49, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @adjust_snap_realm_parent.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.54, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 297, i64 noundef %5, ptr noundef %realm, i64 noundef %7, ptr noundef %9, i64 noundef %parentino, ptr noundef %parent.0) #11
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %do.body36
  %parent53 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 12
  %10 = ptrtoint ptr %parent53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent53, align 8
  %tobool54.not = icmp eq ptr %11, null
  br i1 %tobool54.not, label %do.end52.if.end57_crit_edge, label %if.then55

do.end52.if.end57_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then55:                                        ; preds = %do.end52
  %child_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %child_item) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then55.list_del_init.exit_crit_edge

if.then55.list_del_init.exit_crit_edge:           ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %child_item to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %child_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then55.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %child_item to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %child_item, ptr %child_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %child_item, ptr %prev.i3.i, align 4
  %20 = ptrtoint ptr %parent53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent53, align 8
  tail call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef %21)
  br label %if.end57

if.end57:                                         ; preds = %list_del_init.exit, %do.end52.if.end57_crit_edge
  %22 = ptrtoint ptr %parent_ino to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %parentino, ptr %parent_ino, align 8
  %23 = ptrtoint ptr %parent53 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %parent.0, ptr %parent53, align 8
  %child_item60 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14
  %children = getelementptr inbounds %struct.ceph_snap_realm, ptr %parent.0, i32 0, i32 13
  %24 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %children, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %child_item60, ptr noundef %children, ptr noundef %25) #11
  br i1 %call.i.i84, label %if.end.i.i85, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i85:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %child_item60, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %child_item60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %child_item60, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %children, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %child_item60, ptr %children, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i85, %if.end57.cleanup_crit_edge, %if.then32, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then32 ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end57.cleanup_crit_edge ], [ 1, %if.end.i.i85 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rebuild_snap_realms(ptr noundef %realm, ptr noundef %dirty_realms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rebuild_snap_realms.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rebuild_snap_realms, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %realm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rebuild_snap_realms.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.57, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 425, i64 noundef %1, ptr noundef %realm) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @build_snap_context(ptr noundef %realm, ptr noundef %dirty_realms)
  %children = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 13
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %children, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %children
  br i1 %cmp.not23, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn22, %do.end.for.body_crit_edge ]
  %child.0 = getelementptr i8, ptr %.pn24, i32 -92
  tail call fastcc void @rebuild_snap_realms(ptr noundef %child.0, ptr noundef %dirty_realms)
  %3 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %children
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_realm_cap_snaps(ptr noundef %realm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_realm_cap_snaps.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_realm_cap_snaps, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %realm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_realm_cap_snaps.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.66, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 675, ptr noundef %realm, i64 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %inodes_with_caps_lock = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock) #11
  %inodes_with_caps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 18
  %2 = ptrtoint ptr %inodes_with_caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn57 = load ptr, ptr %inodes_with_caps, align 8
  %cmp.not59 = icmp eq ptr %.pn57, %inodes_with_caps
  br i1 %cmp.not59, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn57, %do.end.for.body_crit_edge ]
  %lastinode.060 = phi ptr [ %lastinode.1, %cleanup.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %vfs_inode = getelementptr i8, ptr %.pn61, i32 104
  %call8 = tail call ptr @igrab(ptr noundef %vfs_inode) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %for.body.cleanup_crit_edge, label %if.end11

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ci.062 = getelementptr i8, ptr %.pn61, i32 -848
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #11
  tail call void @iput(ptr noundef %lastinode.060) #11
  tail call fastcc void @ceph_queue_cap_snap(ptr noundef %ci.062)
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.body.cleanup_crit_edge
  %lastinode.1 = phi ptr [ %call8, %if.end11 ], [ %lastinode.060, %for.body.cleanup_crit_edge ]
  %3 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn61, align 8
  %cmp.not = icmp eq ptr %.pn, %inodes_with_caps
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.end.for.end_crit_edge
  %lastinode.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %lastinode.1, %cleanup.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #11
  tail call void @iput(ptr noundef %lastinode.0.lcssa) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_realm_cap_snaps.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_realm_cap_snaps, %if.then32)) #11
          to label %do.end37 [label %if.then32], !srcloc !198

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %realm, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_realm_cap_snaps.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.68, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 691, ptr noundef %realm, i64 noundef %5) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then32, %for.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_change_snap_realm(ptr noundef %inode, ptr noundef %realm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc2 = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc2, align 8
  %6 = getelementptr i8, ptr %inode, i32 -108
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr i8, ptr %inode, i32 -920
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !191

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 868, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %8, null
  br i1 %tobool27.not, label %if.end.if.end35_crit_edge, label %if.then28

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then28:                                        ; preds = %if.end
  %inodes_with_caps_lock = getelementptr inbounds %struct.ceph_snap_realm, ptr %8, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock) #11
  %i_snap_realm_item = getelementptr i8, ptr %inode, i32 -104
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_snap_realm_item) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then28.list_del_init.exit_crit_edge

if.then28.list_del_init.exit_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %inode, i32 -100
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %i_snap_realm_item to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_snap_realm_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then28.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %i_snap_realm_item to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %i_snap_realm_item, ptr %i_snap_realm_item, align 4
  %prev.i3.i = getelementptr i8, ptr %inode, i32 -100
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %i_snap_realm_item, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %8, align 8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp30 = icmp eq i64 %19, %21
  br i1 %cmp30, label %if.then31, label %list_del_init.exit.if.end33_crit_edge

list_del_init.exit.if.end33_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %inode32 = getelementptr inbounds %struct.ceph_snap_realm, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %inode32 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %inode32, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %list_del_init.exit.if.end33_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock) #11
  tail call void @ceph_put_snap_realm(ptr noundef %5, ptr noundef nonnull %8)
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end.if.end35_crit_edge
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %realm, ptr %6, align 4
  %tobool36.not = icmp eq ptr %realm, null
  br i1 %tobool36.not, label %if.end35.if.end48_crit_edge, label %if.then37

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then37:                                        ; preds = %if.end35
  %inodes_with_caps_lock38 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %inodes_with_caps_lock38) #11
  %i_snap_realm_item39 = getelementptr i8, ptr %inode, i32 -104
  %inodes_with_caps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 18
  %24 = ptrtoint ptr %inodes_with_caps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inodes_with_caps, align 4
  %call.i.i69 = tail call zeroext i1 @__list_add_valid(ptr noundef %i_snap_realm_item39, ptr noundef %inodes_with_caps, ptr noundef %25) #11
  br i1 %call.i.i69, label %if.end.i.i70, label %if.then37.list_add.exit_crit_edge

if.then37.list_add.exit_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i70:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %i_snap_realm_item39, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %i_snap_realm_item39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %i_snap_realm_item39, align 4
  %prev3.i.i = getelementptr i8, ptr %inode, i32 -100
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %inodes_with_caps, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %inodes_with_caps to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %i_snap_realm_item39, ptr %inodes_with_caps, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i70, %if.then37.list_add.exit_crit_edge
  %30 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %realm, align 8
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %33)
  %cmp43 = icmp eq i64 %31, %33
  br i1 %cmp43, label %if.then44, label %list_add.exit.if.end46_crit_edge

list_add.exit.if.end46_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then44:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %inode45 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 1
  %34 = ptrtoint ptr %inode45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %inode, ptr %inode45, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %list_add.exit.if.end46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %inodes_with_caps_lock38) #11
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end35.if.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_handle_snap(ptr noundef %mdsc, ptr noundef %session, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %vino.i = alloca %struct.ceph_vino, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %s_mds = getelementptr inbounds %struct.ceph_mds_session, ptr %session, i32 0, i32 1
  %4 = ptrtoint ptr %s_mds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mds, align 4
  %front = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %front to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %front, align 4
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iov_len, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp = icmp ult i32 %9, 24
  br i1 %cmp, label %cleanup149.critedge, label %if.end

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %7, align 1
  %split6 = getelementptr inbounds %struct.ceph_mds_snap_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %split6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %split6, align 1
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %num_split_inos7 = getelementptr inbounds %struct.ceph_mds_snap_head, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %num_split_inos7 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %num_split_inos7, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %num_split_realms8 = getelementptr inbounds %struct.ceph_mds_snap_head, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %num_split_realms8 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %num_split_realms8, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %trace_len9 = getelementptr inbounds %struct.ceph_mds_snap_head, ptr %7, i32 0, i32 4
  %21 = ptrtoint ptr %trace_len9 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %trace_len9, align 1
  %add.ptr10 = getelementptr i8, ptr %7, i32 24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_handle_snap.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_handle_snap, %if.then13)) #11
          to label %do.end [label %if.then13], !srcloc !198

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %23 = tail call i32 @llvm.bswap.i32(i32 %11)
  %24 = tail call i32 @llvm.bswap.i32(i32 %22)
  %call15 = tail call ptr @ceph_snap_op_name(i32 noundef %23) #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_handle_snap.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.24, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 932, i32 noundef %5, ptr noundef %call15, i64 noundef %14, i32 noundef %24) #11
  br label %do.end

do.end:                                           ; preds = %if.then13, %if.end
  %s_mutex = getelementptr inbounds %struct.ceph_mds_session, ptr %session, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #11
  tail call void @inc_session_sequence(ptr noundef %session) #11
  tail call void @mutex_unlock(ptr noundef %s_mutex) #11
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15
  tail call void @down_write(ptr noundef %snap_rwsem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %11)
  %cmp18 = icmp eq i32 %11, 50331648
  br i1 %cmp18, label %if.then19, label %if.end133.thread

if.end133.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %11)
  %cmp134257 = icmp eq i32 %11, 33554432
  %call135258 = tail call i32 @ceph_update_snap_trace(ptr noundef %mdsc, ptr noundef %add.ptr10, ptr noundef %add.ptr, i1 noundef zeroext %cmp134257, ptr noundef null)
  br label %if.end138

if.then19:                                        ; preds = %do.end
  %mul = shl i32 %17, 3
  %add.ptr20 = getelementptr i8, ptr %add.ptr10, i32 %mul
  %mul21 = shl i32 %20, 3
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i32 %mul21
  %cmp.not.i = icmp ule ptr %add.ptr22, %add.ptr
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr22 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %sub.ptr.sub.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i, 47
  %25 = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %25, label %do.end34, label %if.then146.critedge, !prof !202

do.end34:                                         ; preds = %if.then19
  %call35 = tail call ptr @ceph_lookup_snap_realm(ptr noundef %mdsc, i64 noundef %14)
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.then37, label %do.end34.do.body43_crit_edge

do.end34.do.body43_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43

if.then37:                                        ; preds = %do.end34
  %call38 = tail call fastcc ptr @ceph_create_snap_realm(ptr noundef %mdsc, i64 noundef %14)
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37.if.then146_crit_edge, label %if.then37.do.body43_crit_edge

if.then37.do.body43_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body43

if.then37.if.then146_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then146

do.body43:                                        ; preds = %if.then37.do.body43_crit_edge, %do.end34.do.body43_crit_edge
  %realm.0 = phi ptr [ %call35, %do.end34.do.body43_crit_edge ], [ %call38, %if.then37.do.body43_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_handle_snap.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_handle_snap, %if.then55)) #11
          to label %do.end59 [label %if.then55], !srcloc !198

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %realm.0 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %realm.0, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_handle_snap.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.26, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 967, i64 noundef %27, ptr noundef %realm.0) #11
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp60263 = icmp sgt i32 %17, 0
  br i1 %cmp60263, label %for.body.lr.ph, label %do.end59.for.cond114.preheader_crit_edge

do.end59.for.cond114.preheader_crit_edge:         ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond114.preheader

for.body.lr.ph:                                   ; preds = %do.end59
  %vino.coerce.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %vino.i, i32 0, i32 1
  %created70 = getelementptr inbounds %struct.ceph_mds_snap_realm, ptr %add.ptr22, i32 0, i32 1
  br label %for.body

for.cond114.preheader:                            ; preds = %cleanup.for.cond114.preheader_crit_edge, %do.end59.for.cond114.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp115265 = icmp sgt i32 %20, 0
  br i1 %cmp115265, label %for.body116.lr.ph, label %for.cond114.preheader.if.then137_crit_edge

for.cond114.preheader.if.then137_crit_edge:       ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

for.body116.lr.ph:                                ; preds = %for.cond114.preheader
  %snap_realms.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 16
  %dep_map.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 15, i32 6
  br label %for.body116

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %add.ptr10, i32 %i.0264
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %vino.i)
  %31 = ptrtoint ptr %vino.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %vino.i, align 8
  %32 = ptrtoint ptr %vino.coerce.fca.1.gep.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 -2, ptr %vino.coerce.fca.1.gep.i, align 8
  %33 = add i64 %30, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %33)
  %34 = icmp ult i64 %33, 3584
  br i1 %34, label %land.rhs.i.i, label %ceph_vino_is_reserved.exit.i

land.rhs.i.i:                                     ; preds = %for.body
  %call.i.i = call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %land.rhs.i.i.ceph_find_inode.exit.thread_crit_edge, label %do.end.critedge.i.i, !prof !202

land.rhs.i.i.ceph_find_inode.exit.thread_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_find_inode.exit.thread

do.end.critedge.i.i:                              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.86, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.87, i64 noundef %30) #11
  br label %ceph_find_inode.exit.thread

ceph_vino_is_reserved.exit.i:                     ; preds = %for.body
  %35 = add i64 %30, -256
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %35)
  %36 = icmp ult i64 %35, 3840
  br i1 %36, label %ceph_vino_is_reserved.exit.i.ceph_find_inode.exit.thread_crit_edge, label %ceph_find_inode.exit

ceph_vino_is_reserved.exit.i.ceph_find_inode.exit.thread_crit_edge: ; preds = %ceph_vino_is_reserved.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_find_inode.exit.thread

ceph_find_inode.exit.thread:                      ; preds = %ceph_vino_is_reserved.exit.i.ceph_find_inode.exit.thread_crit_edge, %do.end.critedge.i.i, %land.rhs.i.i.ceph_find_inode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vino.i)
  br label %cleanup

ceph_find_inode.exit:                             ; preds = %ceph_vino_is_reserved.exit.i
  %conv.i = trunc i64 %30 to i32
  %call1.i = call ptr @ilookup5(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull @ceph_ino_compare, ptr noundef nonnull %vino.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %vino.i)
  %tobool63.not = icmp eq ptr %call1.i, null
  br i1 %tobool63.not, label %ceph_find_inode.exit.cleanup_crit_edge, label %if.end65

ceph_find_inode.exit.cleanup_crit_edge:           ; preds = %ceph_find_inode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end65:                                         ; preds = %ceph_find_inode.exit
  %i_ceph_lock = getelementptr i8, ptr %call1.i, i32 -936
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #11
  %37 = getelementptr i8, ptr %call1.i, i32 -108
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool67.not = icmp eq ptr %39, null
  br i1 %tobool67.not, label %if.end65.skip_inode_crit_edge, label %if.end69

if.end65.skip_inode_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %skip_inode

if.end69:                                         ; preds = %if.end65
  %created = getelementptr inbounds %struct.ceph_snap_realm, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %created to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %created, align 8
  %42 = ptrtoint ptr %created70 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %created70, align 1
  %44 = call i64 @llvm.bswap.i64(i64 %43)
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %44)
  %cmp71 = icmp ugt i64 %41, %44
  br i1 %cmp71, label %do.body73, label %do.body92

do.body73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_handle_snap.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_handle_snap, %if.then85)) #11
          to label %skip_inode [label %if.then85], !srcloc !198

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %37, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_handle_snap.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.28, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 994, ptr noundef nonnull %call1.i, i64 noundef %48, ptr noundef %46) #11
  br label %skip_inode

do.body92:                                        ; preds = %if.end69
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_handle_snap.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_handle_snap, %if.then104)) #11
          to label %do.end109 [label %if.then104], !srcloc !198

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %realm.0 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %realm.0, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_handle_snap.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.30, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 998, ptr noundef nonnull %call1.i, i64 noundef %50, ptr noundef %realm.0) #11
  br label %do.end109

do.end109:                                        ; preds = %if.then104, %do.body92
  call void @ceph_get_snap_realm(ptr noundef %mdsc, ptr noundef %realm.0)
  call void @ceph_change_snap_realm(ptr noundef nonnull %call1.i, ptr noundef %realm.0)
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #11
  call void @iput(ptr noundef nonnull %call1.i) #11
  br label %cleanup

skip_inode:                                       ; preds = %if.then85, %do.body73, %if.end65.skip_inode_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #11
  call void @iput(ptr noundef nonnull %call1.i) #11
  br label %cleanup

cleanup:                                          ; preds = %skip_inode, %do.end109, %ceph_find_inode.exit.cleanup_crit_edge, %ceph_find_inode.exit.thread
  %inc = add nuw nsw i32 %i.0264, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %cleanup.for.cond114.preheader_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.for.cond114.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond114.preheader

for.body116:                                      ; preds = %cleanup124.for.body116_crit_edge, %for.body116.lr.ph
  %i.1266 = phi i32 [ 0, %for.body116.lr.ph ], [ %inc128, %cleanup124.for.body116_crit_edge ]
  %arrayidx117 = getelementptr i64, ptr %add.ptr20, i32 %i.1266
  %51 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx117, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52)
  %54 = ptrtoint ptr %snap_realms.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %snap_realms.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %56 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %for.body116.if.end.i234_crit_edge, label %land.rhs.i

for.body116.if.end.i234_crit_edge:                ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i234

land.rhs.i:                                       ; preds = %for.body116
  %call.i.i232 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i232)
  %cmp.not.i233 = icmp eq i32 %call.i.i232, 0
  br i1 %cmp.not.i233, label %do.end.i, label %land.rhs.i.if.end.i234_crit_edge, !prof !191

land.rhs.i.if.end.i234_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i234

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i234

if.end.i234:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i234_crit_edge, %for.body116.if.end.i234_crit_edge
  %tobool24.not63.i = icmp eq ptr %55, null
  br i1 %tobool24.not63.i, label %if.end.i234.cleanup124_crit_edge, label %if.end.i234.while.body.i_crit_edge

if.end.i234.while.body.i_crit_edge:               ; preds = %if.end.i234
  br label %while.body.i

if.end.i234.cleanup124_crit_edge:                 ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup124

while.body.i:                                     ; preds = %if.end50.i.while.body.i_crit_edge, %if.end.i234.while.body.i_crit_edge
  %n.064.i = phi ptr [ %n.1.i, %if.end50.i.while.body.i_crit_edge ], [ %55, %if.end.i234.while.body.i_crit_edge ]
  %add.ptr.i235 = getelementptr i8, ptr %n.064.i, i32 -16
  %57 = ptrtoint ptr %add.ptr.i235 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr.i235, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %53)
  %cmp27.i = icmp ugt i64 %58, %53
  br i1 %cmp27.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.064.i, i32 0, i32 2
  br label %if.end50.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %53)
  %cmp30.i = icmp ult i64 %58, %53
  br i1 %cmp30.i, label %if.then31.i, label %do.body33.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.064.i, i32 0, i32 1
  br label %if.end50.i

do.body33.i:                                      ; preds = %if.else.i
  %add.ptr.i235.le = getelementptr i8, ptr %n.064.i, i32 -16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__lookup_snap_realm.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_handle_snap, %if.then43.i)) #11
          to label %__lookup_snap_realm.exit [label %if.then43.i], !srcloc !198

if.then43.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %add.ptr.i235.le to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr.i235.le, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__lookup_snap_realm.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.44, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 159, i64 noundef %60, ptr noundef %add.ptr.i235.le) #11
  br label %__lookup_snap_realm.exit

if.end50.i:                                       ; preds = %if.then31.i, %if.then28.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then28.i ], [ %rb_right.i, %if.then31.i ]
  %61 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %n.1.i = load ptr, ptr %n.1.in.i, align 4
  %tobool24.not.i = icmp eq ptr %n.1.i, null
  br i1 %tobool24.not.i, label %if.end50.i.cleanup124_crit_edge, label %if.end50.i.while.body.i_crit_edge

if.end50.i.while.body.i_crit_edge:                ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end50.i.cleanup124_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup124

__lookup_snap_realm.exit:                         ; preds = %if.then43.i, %do.body33.i
  %tobool119.not = icmp eq ptr %add.ptr.i235.le, null
  br i1 %tobool119.not, label %__lookup_snap_realm.exit.cleanup124_crit_edge, label %if.end121

__lookup_snap_realm.exit.cleanup124_crit_edge:    ; preds = %__lookup_snap_realm.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup124

if.end121:                                        ; preds = %__lookup_snap_realm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %realm.0 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %realm.0, align 8
  %call123 = call fastcc i32 @adjust_snap_realm_parent(ptr noundef %mdsc, ptr noundef nonnull %add.ptr.i235.le, i64 noundef %63)
  br label %cleanup124

cleanup124:                                       ; preds = %if.end121, %__lookup_snap_realm.exit.cleanup124_crit_edge, %if.end50.i.cleanup124_crit_edge, %if.end.i234.cleanup124_crit_edge
  %inc128 = add nuw nsw i32 %i.1266, 1
  %exitcond268.not = icmp eq i32 %inc128, %20
  br i1 %exitcond268.not, label %cleanup124.if.then137_crit_edge, label %cleanup124.for.body116_crit_edge

cleanup124.for.body116_crit_edge:                 ; preds = %cleanup124
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body116

cleanup124.if.then137_crit_edge:                  ; preds = %cleanup124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then137

if.then137:                                       ; preds = %cleanup124.if.then137_crit_edge, %for.cond114.preheader.if.then137_crit_edge
  %call135 = call i32 @ceph_update_snap_trace(ptr noundef %mdsc, ptr noundef %add.ptr22, ptr noundef %add.ptr, i1 noundef zeroext false, ptr noundef null)
  call void @ceph_put_snap_realm(ptr noundef %mdsc, ptr noundef %realm.0)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end133.thread
  call fastcc void @__cleanup_empty_realms(ptr noundef %mdsc)
  call void @up_write(ptr noundef %snap_rwsem) #11
  call fastcc void @flush_snaps(ptr noundef %mdsc)
  br label %cleanup149

if.then146.critedge:                              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %call144.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %5) #15
  tail call void @ceph_msg_dump(ptr noundef %msg) #11
  br label %if.then146

if.then146:                                       ; preds = %if.then146.critedge, %if.then37.if.then146_crit_edge
  tail call void @up_write(ptr noundef %snap_rwsem) #11
  br label %cleanup149

cleanup149.critedge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call144.c261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %5) #15
  tail call void @ceph_msg_dump(ptr noundef %msg) #11
  br label %cleanup149

cleanup149:                                       ; preds = %cleanup149.critedge, %if.then146, %if.end138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_snap_op_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_session_sequence(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_snaps(ptr noundef %mdsc) unnamed_addr #0 align 64 {
entry:
  %session = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %session) #11
  %0 = ptrtoint ptr %session to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %session, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush_snaps.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flush_snaps, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @flush_snaps.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.90, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 834) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %snap_flush_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %snap_flush_lock) #11
  %snap_flush_list = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 27
  %1 = ptrtoint ptr %snap_flush_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %snap_flush_list, align 4
  %cmp.i.not42 = icmp eq ptr %2, %snap_flush_list
  br i1 %cmp.i.not42, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %3 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %2, %do.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -856
  %vfs_inode = getelementptr i8, ptr %3, i32 96
  call void @ihold(ptr noundef %vfs_inode) #11
  call void @_raw_spin_unlock(ptr noundef %snap_flush_lock) #11
  call void @ceph_flush_snaps(ptr noundef %add.ptr, ptr noundef nonnull %session) #11
  call void @iput(ptr noundef %vfs_inode) #11
  call void @_raw_spin_lock(ptr noundef %snap_flush_lock) #11
  %4 = ptrtoint ptr %snap_flush_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %snap_flush_list, align 4
  %cmp.i.not = icmp eq ptr %5, %snap_flush_list
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %snap_flush_lock) #11
  %6 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %session, align 4
  call void @ceph_put_mds_session(ptr noundef %7) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush_snaps.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flush_snaps, %if.then25)) #11
          to label %do.end29 [label %if.then25], !srcloc !198

if.then25:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @flush_snaps.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.92, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 849) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %session) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msg_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_get_snapid_map(ptr noundef %mdsc, i64 noundef %snap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %snapid_map_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %snapid_map_lock) #11
  %snapid_map_tree = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 51
  %0 = ptrtoint ptr %snapid_map_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snapid_map_tree, align 4
  %tobool.not198 = icmp eq ptr %1, null
  br i1 %tobool.not198, label %entry.if.end22_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %15, %if.end9.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %snap1 = getelementptr inbounds %struct.ceph_snapid_map, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %snap1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %snap1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %snap)
  %cmp = icmp ult i64 %4, %snap
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end9

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %snap)
  %cmp3 = icmp ugt i64 %4, %snap
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end9

if.else5:                                         ; preds = %if.else
  %ref = getelementptr inbounds %struct.ceph_snapid_map, ptr %2, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #11, !srcloc !196
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp6 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp6, label %if.then7, label %if.else5.do.body_crit_edge

if.else5.do.body_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then7:                                         ; preds = %if.else5
  %lru = getelementptr inbounds %struct.ceph_snapid_map, ptr %2, i32 0, i32 1
  %call.i.i176 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru) #11
  br i1 %call.i.i176, label %if.end.i.i, label %if.then7.list_del_init.exit_crit_edge

if.then7.list_del_init.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ceph_snapid_map, ptr %2, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then7.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i3.i = getelementptr inbounds %struct.ceph_snapid_map, ptr %2, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lru, ptr %prev.i3.i, align 4
  br label %do.body

if.end9:                                          ; preds = %if.then4, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then4 ]
  %14 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end9.if.end22_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body:                                          ; preds = %list_del_init.exit, %if.else5.do.body_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_snapid_map.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_snapid_map, %if.then18)) #11
          to label %cleanup [label %if.then18], !srcloc !198

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %snap1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %snap1, align 8
  %dev = getelementptr inbounds %struct.ceph_snapid_map, ptr %2, i32 0, i32 4
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_snapid_map.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 1074, i64 noundef %17, i32 noundef %19) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end9.if.end22_crit_edge, %entry.if.end22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3136, i32 noundef 40) #16
  %tobool24.not = icmp eq ptr %call7.i, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %dev27 = getelementptr inbounds %struct.ceph_snapid_map, ptr %call7.i, i32 0, i32 4
  %call28 = tail call i32 @get_anon_bdev(ptr noundef %dev27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %lru32 = getelementptr inbounds %struct.ceph_snapid_map, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %lru32 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %lru32, ptr %lru32, align 4
  %prev.i = getelementptr inbounds %struct.ceph_snapid_map, ptr %call7.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %lru32, ptr %prev.i, align 8
  %ref33 = getelementptr inbounds %struct.ceph_snapid_map, ptr %call7.i, i32 0, i32 2
  %call.i.i167 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref33, i32 noundef 4) #11
  %23 = ptrtoint ptr %ref33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %ref33, align 4
  %snap34 = getelementptr inbounds %struct.ceph_snapid_map, ptr %call7.i, i32 0, i32 3
  %24 = ptrtoint ptr %snap34 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %snap, ptr %snap34, align 8
  tail call void @_raw_spin_lock(ptr noundef %snapid_map_lock) #11
  %25 = ptrtoint ptr %snapid_map_tree to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %snapid_map_tree, align 4
  %tobool39.not199 = icmp eq ptr %26, null
  br i1 %tobool39.not199, label %if.end31.if.else65_crit_edge, label %if.end31.while.body40_crit_edge

if.end31.while.body40_crit_edge:                  ; preds = %if.end31
  br label %while.body40

if.end31.if.else65_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else65

while.body40:                                     ; preds = %if.end55.while.body40_crit_edge, %if.end31.while.body40_crit_edge
  %27 = phi ptr [ %31, %if.end55.while.body40_crit_edge ], [ %26, %if.end31.while.body40_crit_edge ]
  %snap44 = getelementptr inbounds %struct.ceph_snapid_map, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %snap44 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %snap44, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %snap)
  %cmp45 = icmp ult i64 %29, %snap
  br i1 %cmp45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left47 = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 2
  br label %if.end55

if.else48:                                        ; preds = %while.body40
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %snap)
  %cmp50 = icmp ugt i64 %29, %snap
  br i1 %cmp50, label %if.then51, label %if.then58

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right52 = getelementptr inbounds %struct.rb_node, ptr %27, i32 0, i32 1
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.then46
  %p.3 = phi ptr [ %rb_left47, %if.then46 ], [ %rb_right52, %if.then51 ]
  %30 = ptrtoint ptr %p.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p.3, align 4
  %tobool39.not = icmp eq ptr %31, null
  br i1 %tobool39.not, label %while.cond38.if.else65_crit_edge, label %if.end55.while.body40_crit_edge

if.end55.while.body40_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body40

if.then58:                                        ; preds = %if.else48
  %ref59 = getelementptr inbounds %struct.ceph_snapid_map, ptr %27, i32 0, i32 2
  %call.i.i168 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref59, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %ref59, i32 1, i32 3, i32 1) #11
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref59, ptr %ref59, i32 1, ptr elementtype(i32) %ref59) #11, !srcloc !196
  %asmresult.i.i.i.i169 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i169)
  %cmp61 = icmp eq i32 %asmresult.i.i.i.i169, 1
  br i1 %cmp61, label %if.then62, label %if.then58.if.then71_crit_edge

if.then58.if.then71_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then71

if.then62:                                        ; preds = %if.then58
  %lru63 = getelementptr inbounds %struct.ceph_snapid_map, ptr %27, i32 0, i32 1
  %call.i.i177 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lru63) #11
  br i1 %call.i.i177, label %if.end.i.i180, label %if.then62.list_del_init.exit182_crit_edge

if.then62.list_del_init.exit182_crit_edge:        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit182

if.end.i.i180:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i178 = getelementptr inbounds %struct.ceph_snapid_map, ptr %27, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i178 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i178, align 4
  %35 = ptrtoint ptr %lru63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lru63, align 4
  %prev1.i.i.i179 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i179 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i179, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit182

list_del_init.exit182:                            ; preds = %if.end.i.i180, %if.then62.list_del_init.exit182_crit_edge
  %39 = ptrtoint ptr %lru63 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %lru63, ptr %lru63, align 4
  %prev.i3.i181 = getelementptr inbounds %struct.ceph_snapid_map, ptr %27, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i3.i181 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %lru63, ptr %prev.i3.i181, align 4
  br label %if.then71

while.cond38.if.else65_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast.le = ptrtoint ptr %27 to i32
  br label %if.else65

if.else65:                                        ; preds = %while.cond38.if.else65_crit_edge, %if.end31.if.else65_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond38.if.else65_crit_edge ], [ 0, %if.end31.if.else65_crit_edge ]
  %p.2.lcssa = phi ptr [ %p.3, %while.cond38.if.else65_crit_edge ], [ %snapid_map_tree, %if.end31.if.else65_crit_edge ]
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %parent.0.lcssa, ptr %call7.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %42 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %43 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rb_left.i, align 8
  %44 = ptrtoint ptr %p.2.lcssa to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i, ptr %p.2.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %snapid_map_tree) #11
  tail call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_snapid_map.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_snapid_map, %if.then105)) #11
          to label %cleanup [label %if.then105], !srcloc !198

if.then71:                                        ; preds = %list_del_init.exit182, %if.then58.if.then71_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  %45 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev27, align 8
  tail call void @free_anon_bdev(i32 noundef %46) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_snapid_map.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_snapid_map, %if.then85)) #11
          to label %cleanup [label %if.then85], !srcloc !198

if.then85:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %snap44 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %snap44, align 8
  %dev88 = getelementptr inbounds %struct.ceph_snapid_map, ptr %27, i32 0, i32 4
  %49 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dev88, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_snapid_map.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 1118, i64 noundef %48, i32 noundef %50) #11
  br label %cleanup

if.then105:                                       ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %snap34 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %snap34, align 8
  %53 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dev27, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_snapid_map.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.36, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 1122, i64 noundef %52, i32 noundef %54) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then105, %if.then85, %if.then71, %if.else65, %if.then30, %if.end22.cleanup_crit_edge, %if.then18, %do.body
  %retval.0 = phi ptr [ null, %if.then30 ], [ %2, %if.then18 ], [ null, %if.end22.cleanup_crit_edge ], [ %27, %if.then85 ], [ %call7.i, %if.then105 ], [ %2, %do.body ], [ %call7.i, %if.else65 ], [ %27, %if.then71 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_anon_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_anon_bdev(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_put_snapid_map(ptr noundef %mdsc, ptr noundef %sm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sm, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.ceph_snapid_map, ptr %sm, i32 0, i32 2
  %snapid_map_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 50
  %call = tail call i32 @_atomic_dec_and_lock(ptr noundef %ref, ptr noundef %snapid_map_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %0 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sm, align 8
  %2 = ptrtoint ptr %sm to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %last_used = getelementptr inbounds %struct.ceph_snapid_map, ptr %sm, i32 0, i32 5
  %4 = ptrtoint ptr %last_used to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %last_used, align 4
  %lru = getelementptr inbounds %struct.ceph_snapid_map, ptr %sm, i32 0, i32 1
  %snapid_map_lru = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 52
  %prev.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 52, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lru, ptr noundef %6, ptr noundef %snapid_map_lru) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_add_tail.exit_crit_edge

if.then4.list_add_tail.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %lru, ptr %prev.i, align 4
  %8 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %snapid_map_lru, ptr %lru, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_snapid_map, ptr %sm, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %lru, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  br label %if.end8

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  tail call void @kfree(ptr noundef nonnull %sm) #11
  br label %if.end8

if.end8:                                          ; preds = %if.else, %list_add_tail.exit, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_trim_snapid_map(ptr noundef %mdsc) local_unnamed_addr #0 align 64 {
entry:
  %to_free = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_free) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %to_free, i32 0, i32 1
  %1 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_free, ptr %to_free, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %to_free, ptr %0, align 4
  %snapid_map_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 50
  call void @_raw_spin_lock(ptr noundef %snapid_map_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %snapid_map_lru = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 52
  %4 = ptrtoint ptr %snapid_map_lru to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %snapid_map_lru, align 4
  %cmp.i.not44 = icmp eq ptr %5, %snapid_map_lru
  br i1 %cmp.i.not44, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.neg = add i32 %3, -30000
  %snapid_map_tree = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 51
  br label %while.body

while.body:                                       ; preds = %list_move.exit.while.body_crit_edge, %while.body.lr.ph
  %6 = phi ptr [ %5, %while.body.lr.ph ], [ %22, %list_move.exit.while.body_crit_edge ]
  %last_used = getelementptr i8, ptr %6, i32 24
  %7 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_used, align 4
  %sub = sub i32 %add.neg, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %6, i32 -12
  call void @rb_erase(ptr noundef %add.ptr, ptr noundef %snapid_map_tree) #11
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %15 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %to_free, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef nonnull %to_free, ptr noundef %16) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %6, ptr %prev1.i.i2.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %6, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %to_free, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %6, ptr %to_free, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %21 = ptrtoint ptr %snapid_map_lru to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %snapid_map_lru, align 4
  %cmp.i.not = icmp eq ptr %22, %snapid_map_lru
  br i1 %cmp.i.not, label %list_move.exit.while.end_crit_edge, label %list_move.exit.while.body_crit_edge

list_move.exit.while.body_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_move.exit.while.end_crit_edge:               ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_move.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  %23 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %to_free, align 4
  %cmp.i36.not45 = icmp eq ptr %24, %to_free
  br i1 %cmp.i36.not45, label %while.end.while.end24_crit_edge, label %while.end.while.body8_crit_edge

while.end.while.body8_crit_edge:                  ; preds = %while.end
  br label %while.body8

while.end.while.end24_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end24

while.body8:                                      ; preds = %do.end.while.body8_crit_edge, %while.end.while.body8_crit_edge
  %25 = phi ptr [ %41, %do.end.while.body8_crit_edge ], [ %24, %while.end.while.body8_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %25, i32 -12
  %call.i.i38 = call zeroext i1 @__list_del_entry_valid(ptr noundef %25) #11
  br i1 %call.i.i38, label %if.end.i.i41, label %while.body8.list_del.exit_crit_edge

while.body8.list_del.exit_crit_edge:              ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i41:                                     ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i39, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %prev1.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i40, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i41, %while.body8.list_del.exit_crit_edge
  %32 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_trim_snapid_map.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_trim_snapid_map, %if.then20)) #11
          to label %do.end [label %if.then20], !srcloc !198

if.then20:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %snap = getelementptr i8, ptr %25, i32 12
  %34 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %snap, align 8
  %dev = getelementptr i8, ptr %25, i32 20
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dev, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_trim_snapid_map.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.39, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 1168, i64 noundef %35, i32 noundef %37) #11
  br label %do.end

do.end:                                           ; preds = %if.then20, %list_del.exit
  %dev23 = getelementptr i8, ptr %25, i32 20
  %38 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dev23, align 8
  call void @free_anon_bdev(i32 noundef %39) #11
  call void @kfree(ptr noundef %add.ptr12) #11
  %40 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %to_free, align 4
  %cmp.i36.not = icmp eq ptr %41, %to_free
  br i1 %cmp.i36.not, label %do.end.while.end24_crit_edge, label %do.end.while.body8_crit_edge

do.end.while.body8_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8

do.end.while.end24_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end24

while.end24:                                      ; preds = %do.end.while.end24_crit_edge, %while.end.while.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_free) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_cleanup_snapid_map(ptr noundef %mdsc) local_unnamed_addr #0 align 64 {
entry:
  %to_free = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_free) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %to_free, i32 0, i32 1
  %1 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_free, ptr %to_free, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %to_free, ptr %0, align 4
  %snapid_map_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 50
  call void @_raw_spin_lock(ptr noundef %snapid_map_lock) #11
  %snapid_map_tree = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 51
  %call83 = call ptr @rb_first(ptr noundef %snapid_map_tree) #11
  %tobool.not84 = icmp eq ptr %call83, null
  br i1 %tobool.not84, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_move.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %call85 = phi ptr [ %call, %list_move.exit.while.body_crit_edge ], [ %call83, %entry.while.body_crit_edge ]
  call void @rb_erase(ptr noundef nonnull %call85, ptr noundef %snapid_map_tree) #11
  %3 = ptrtoint ptr %call85 to i32
  %4 = ptrtoint ptr %call85 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call85, align 4
  %lru = getelementptr inbounds %struct.ceph_snapid_map, ptr %call85, i32 0, i32 1
  %call.i.i77 = call zeroext i1 @__list_del_entry_valid(ptr noundef %lru) #11
  br i1 %call.i.i77, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ceph_snapid_map, ptr %call85, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lru, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %11 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %to_free, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %lru, ptr noundef nonnull %to_free, ptr noundef %12) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lru, ptr %prev1.i.i2.i, align 4
  %14 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %lru, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ceph_snapid_map, ptr %call85, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %to_free, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %lru, ptr %to_free, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %call = call ptr @rb_first(ptr noundef %snapid_map_tree) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %list_move.exit.while.end_crit_edge, label %list_move.exit.while.body_crit_edge

list_move.exit.while.body_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_move.exit.while.end_crit_edge:               ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_move.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %snapid_map_lock) #11
  %17 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %to_free, align 4
  %cmp.i.not87 = icmp eq ptr %18, %to_free
  br i1 %cmp.i.not87, label %while.end.while.end60_crit_edge, label %while.end.while.body6_crit_edge

while.end.while.body6_crit_edge:                  ; preds = %while.end
  br label %while.body6

while.end.while.end60_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end60

while.body6:                                      ; preds = %if.end59.while.body6_crit_edge, %while.end.while.body6_crit_edge
  %19 = phi ptr [ %37, %if.end59.while.body6_crit_edge ], [ %18, %while.end.while.body6_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %19, i32 -12
  %call.i.i78 = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #11
  br i1 %call.i.i78, label %if.end.i.i81, label %while.body6.list_del.exit_crit_edge

while.body6.list_del.exit_crit_edge:              ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i81:                                     ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i79 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i79, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i80 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i80, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i81, %while.body6.list_del.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr i8, ptr %19, i32 20
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dev, align 8
  call void @free_anon_bdev(i32 noundef %29) #11
  %ref = getelementptr i8, ptr %19, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ref, i32 noundef 4) #11
  %30 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool13.not = icmp eq i32 %31, 0
  br i1 %tobool13.not, label %list_del.exit.if.end59_crit_edge, label %land.rhs

list_del.exit.if.end59_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.rhs:                                         ; preds = %list_del.exit
  %.b75 = load i1, ptr @ceph_cleanup_snapid_map.__already_done, align 1
  br i1 %.b75, label %land.rhs.do.end55_crit_edge, label %if.then, !prof !202

land.rhs.do.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ceph_cleanup_snapid_map.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1193, i32 noundef 9, ptr noundef null) #11
  br label %do.end55

do.end55:                                         ; preds = %if.then, %land.rhs.do.end55_crit_edge
  %snap = getelementptr i8, ptr %19, i32 12
  %32 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %snap, align 8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev, align 8
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i64 noundef %33, i32 noundef %35) #15
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %list_del.exit.if.end59_crit_edge
  call void @kfree(ptr noundef %add.ptr10) #11
  %36 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %to_free, align 4
  %cmp.i.not = icmp eq ptr %37, %to_free
  br i1 %cmp.i.not, label %if.end59.while.end60_crit_edge, label %if.end59.while.body6_crit_edge

if.end59.while.body6_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body6

if.end59.while.end60_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end60

while.end60:                                      ; preds = %if.end59.while.end60_crit_edge, %while.end.while.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_free) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_snap_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @build_snap_context(ptr noundef %realm, ptr noundef %dirty_realms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 12
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %num_prior_parent_snaps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 9
  %2 = ptrtoint ptr %num_prior_parent_snaps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_prior_parent_snaps, align 4
  %num_snaps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 11
  %4 = ptrtoint ptr %num_snaps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_snaps, align 4
  %add = add i32 %5, %3
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %cached_context = getelementptr inbounds %struct.ceph_snap_realm, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %cached_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cached_context, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.then
  %call = tail call fastcc i32 @build_snap_context(ptr noundef nonnull %1, ptr noundef %dirty_realms)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then3.fail_crit_edge

if.then3.fail_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.then3.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %8 = ptrtoint ptr %cached_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cached_context, align 4
  %num_snaps8 = getelementptr inbounds %struct.ceph_snap_context, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %num_snaps8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_snaps8, align 8
  %add9 = add i32 %11, %add
  br label %if.end10

if.end10:                                         ; preds = %if.end6, %entry.if.end10_crit_edge
  %num.0 = phi i32 [ %add9, %if.end6 ], [ %add, %entry.if.end10_crit_edge ]
  %cached_context11 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 17
  %12 = ptrtoint ptr %cached_context11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cached_context11, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end10.if.end35_crit_edge, label %land.lhs.true

if.end10.if.end35_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end10
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seq, align 8
  %seq14 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 5
  %16 = ptrtoint ptr %seq14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %seq14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %17)
  %cmp = icmp eq i64 %15, %17
  br i1 %cmp, label %land.lhs.true15, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true15:                                  ; preds = %land.lhs.true
  br i1 %tobool.not, label %land.lhs.true15.do.body_crit_edge, label %lor.lhs.false

land.lhs.true15.do.body_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %cached_context19 = getelementptr inbounds %struct.ceph_snap_realm, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %cached_context19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cached_context19, align 4
  %seq20 = getelementptr inbounds %struct.ceph_snap_context, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %seq20 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %seq20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %21)
  %cmp21.not = icmp ult i64 %15, %21
  br i1 %cmp21.not, label %lor.lhs.false.if.end35_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false.if.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %land.lhs.true15.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_snap_context.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_snap_context, %if.then27)) #11
          to label %cleanup [label %if.then27], !srcloc !198

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %realm, align 8
  %24 = ptrtoint ptr %cached_context11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cached_context11, align 4
  %seq31 = getelementptr inbounds %struct.ceph_snap_context, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %seq31 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %seq31, align 8
  %num_snaps33 = getelementptr inbounds %struct.ceph_snap_context, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %num_snaps33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_snaps33, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_snap_context.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.60, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 356, i64 noundef %23, ptr noundef %realm, ptr noundef %25, i64 noundef %27, i32 noundef %29) #11
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end10.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870908, i32 %num.0)
  %cmp36 = icmp ugt i32 %num.0, 536870908
  br i1 %cmp36, label %if.end35.fail_crit_edge, label %if.end38

if.end35.fail_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end38:                                         ; preds = %if.end35
  %call39 = tail call ptr @ceph_create_snap_context(i32 noundef %num.0, i32 noundef 3136) #11
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.fail_crit_edge, label %if.end42

if.end38.fail_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end42:                                         ; preds = %if.end38
  %seq43 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 5
  %30 = ptrtoint ptr %seq43 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %seq43, align 8
  %seq44 = getelementptr inbounds %struct.ceph_snap_context, ptr %call39, i32 0, i32 1
  %32 = ptrtoint ptr %seq44 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %seq44, align 8
  br i1 %tobool.not, label %if.end42.if.end69_crit_edge, label %for.cond.preheader

if.end42.if.end69_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

for.cond.preheader:                               ; preds = %if.end42
  %cached_context47 = getelementptr inbounds %struct.ceph_snap_realm, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %cached_context47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cached_context47, align 4
  %num_snaps48199 = getelementptr inbounds %struct.ceph_snap_context, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %num_snaps48199 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_snaps48199, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp49200.not = icmp eq i32 %36, 0
  br i1 %cmp49200.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parent_since = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %37 = phi ptr [ %34, %for.body.lr.ph ], [ %44, %for.inc.for.body_crit_edge ]
  %i.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc59, %for.inc.for.body_crit_edge ]
  %num.1201 = phi i32 [ 0, %for.body.lr.ph ], [ %num.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ceph_snap_context, ptr %37, i32 0, i32 3, i32 %i.0202
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx, align 8
  %40 = ptrtoint ptr %parent_since to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %parent_since, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %41)
  %cmp51.not = icmp ult i64 %39, %41
  br i1 %cmp51.not, label %for.body.for.inc_crit_edge, label %if.then52

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then52:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %num.1201, 1
  %arrayidx57 = getelementptr %struct.ceph_snap_context, ptr %call39, i32 0, i32 3, i32 %num.1201
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %39, ptr %arrayidx57, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %for.body.for.inc_crit_edge
  %num.2 = phi i32 [ %inc, %if.then52 ], [ %num.1201, %for.body.for.inc_crit_edge ]
  %inc59 = add nuw i32 %i.0202, 1
  %43 = ptrtoint ptr %cached_context47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cached_context47, align 4
  %num_snaps48 = getelementptr inbounds %struct.ceph_snap_context, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %num_snaps48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_snaps48, align 8
  %cmp49 = icmp ult i32 %inc59, %46
  br i1 %cmp49, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num.1.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %num.2, %for.inc.for.end_crit_edge ]
  %.lcssa = phi ptr [ %34, %for.cond.preheader.for.end_crit_edge ], [ %44, %for.inc.for.end_crit_edge ]
  %seq61 = getelementptr inbounds %struct.ceph_snap_context, ptr %.lcssa, i32 0, i32 1
  %47 = ptrtoint ptr %seq61 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %seq61, align 8
  %49 = ptrtoint ptr %seq44 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %seq44, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %50)
  %cmp63 = icmp ugt i64 %48, %50
  br i1 %cmp63, label %if.then64, label %for.end.if.end69_crit_edge

for.end.if.end69_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %seq44 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %48, ptr %seq44, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %for.end.if.end69_crit_edge, %if.end42.if.end69_crit_edge
  %num.3 = phi i32 [ 0, %if.end42.if.end69_crit_edge ], [ %num.1.lcssa, %if.then64 ], [ %num.1.lcssa, %for.end.if.end69_crit_edge ]
  %snaps70 = getelementptr inbounds %struct.ceph_snap_context, ptr %call39, i32 0, i32 3
  %add.ptr = getelementptr i64, ptr %snaps70, i32 %num.3
  %snaps71 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 10
  %52 = ptrtoint ptr %snaps71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %snaps71, align 8
  %54 = ptrtoint ptr %num_snaps to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_snaps, align 4
  %mul = shl i32 %55, 3
  %56 = call ptr @memcpy(ptr %add.ptr, ptr %53, i32 %mul)
  %57 = load i32, ptr %num_snaps, align 4
  %add74 = add i32 %57, %num.3
  %add.ptr77 = getelementptr i64, ptr %snaps70, i32 %add74
  %prior_parent_snaps = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 8
  %58 = ptrtoint ptr %prior_parent_snaps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prior_parent_snaps, align 8
  %60 = ptrtoint ptr %num_prior_parent_snaps to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_prior_parent_snaps, align 4
  %mul79 = shl i32 %61, 3
  %62 = call ptr @memcpy(ptr %add.ptr77, ptr %59, i32 %mul79)
  %63 = load i32, ptr %num_prior_parent_snaps, align 4
  %add81 = add i32 %63, %add74
  tail call void @sort(ptr noundef %snaps70, i32 noundef %add81, i32 noundef 8, ptr noundef nonnull @cmpu64_rev, ptr noundef null) #11
  %num_snaps84 = getelementptr inbounds %struct.ceph_snap_context, ptr %call39, i32 0, i32 2
  %64 = ptrtoint ptr %num_snaps84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add81, ptr %num_snaps84, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @build_snap_context.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@build_snap_context, %if.then97)) #11
          to label %do.end104 [label %if.then97], !srcloc !198

if.then97:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %realm, align 8
  %67 = ptrtoint ptr %seq44 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %seq44, align 8
  %69 = ptrtoint ptr %num_snaps84 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_snaps84, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @build_snap_context.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.62, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 395, i64 noundef %66, ptr noundef %realm, ptr noundef nonnull %call39, i64 noundef %68, i32 noundef %70) #11
  br label %do.end104

do.end104:                                        ; preds = %if.then97, %if.end69
  %71 = ptrtoint ptr %cached_context11 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cached_context11, align 4
  tail call void @ceph_put_snap_context(ptr noundef %72) #11
  %73 = ptrtoint ptr %cached_context11 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call39, ptr %cached_context11, align 4
  %dirty_item = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dirty_realms, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dirty_item, ptr noundef %75, ptr noundef %dirty_realms) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end104.cleanup_crit_edge

do.end104.cleanup_crit_edge:                      ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dirty_item, ptr %prev.i, align 4
  %77 = ptrtoint ptr %dirty_item to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %dirty_realms, ptr %dirty_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 16, i32 1
  %78 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %dirty_item, ptr %75, align 4
  br label %cleanup

fail:                                             ; preds = %if.end38.fail_crit_edge, %if.end35.fail_crit_edge, %if.then3.fail_crit_edge
  %err.0 = phi i32 [ -12, %if.end35.fail_crit_edge ], [ -12, %if.end38.fail_crit_edge ], [ %call, %if.then3.fail_crit_edge ]
  %cached_context107 = getelementptr inbounds %struct.ceph_snap_realm, ptr %realm, i32 0, i32 17
  %80 = ptrtoint ptr %cached_context107 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cached_context107, align 4
  %tobool108.not = icmp eq ptr %81, null
  br i1 %tobool108.not, label %fail.do.end115_crit_edge, label %if.then109

fail.do.end115_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end115

if.then109:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ceph_put_snap_context(ptr noundef nonnull %81) #11
  %82 = ptrtoint ptr %cached_context107 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %cached_context107, align 4
  br label %do.end115

do.end115:                                        ; preds = %if.then109, %fail.do.end115_crit_edge
  %83 = ptrtoint ptr %realm to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %realm, align 8
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i64 noundef %84, ptr noundef %realm, i32 noundef %err.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end115, %if.end.i.i, %do.end104.cleanup_crit_edge, %if.then27, %do.body
  %retval.0 = phi i32 [ %err.0, %do.end115 ], [ 0, %if.then27 ], [ 0, %do.body ], [ 0, %do.end104.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_create_snap_context(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmpu64_rev(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %a, align 8
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp1 = icmp ugt i64 %1, %3
  %. = sext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_queue_cap_snap(ptr noundef %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 208) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %vfs_inode) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_capsnap = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %is_capsnap to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %is_capsnap, align 1
  %i_list = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %i_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %i_list, ptr %i_list, align 8
  %prev.i = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i_list, ptr %prev.i, align 4
  %g_list = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 2, i32 4
  %4 = ptrtoint ptr %g_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %g_list, ptr %g_list, align 8
  %prev.i284 = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %g_list, ptr %prev.i284, align 4
  %i_ceph_lock = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #11
  %call4 = tail call i32 @__ceph_caps_used(ptr noundef %ci) #11
  %i_dirty_caps.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 29
  %6 = ptrtoint ptr %i_dirty_caps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_dirty_caps.i, align 8
  %i_flushing_caps.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 30
  %8 = ptrtoint ptr %i_flushing_caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_flushing_caps.i, align 4
  %or.i = or i32 %9, %7
  %i_head_snapc = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 40
  %10 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_head_snapc, align 4
  %12 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 68
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cached_context = getelementptr inbounds %struct.ceph_snap_realm, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %cached_context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cached_context, align 4
  %and = and i32 %call4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %17 = or i32 %or.i, %and
  %i_cap_snaps.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 39
  %18 = ptrtoint ptr %i_cap_snaps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %i_cap_snaps.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %i_cap_snaps.i
  br i1 %cmp.i.not.i, label %if.end.if.end22_crit_edge, label %__ceph_have_pending_cap_snap.exit

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

__ceph_have_pending_cap_snap.exit:                ; preds = %if.end
  %prev.i285 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 39, i32 1
  %20 = ptrtoint ptr %prev.i285 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i285, align 4
  %writing.i = getelementptr i8, ptr %21, i32 192
  %22 = ptrtoint ptr %writing.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %writing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.i.not = icmp eq i32 %23, 0
  br i1 %tobool2.i.not, label %__ceph_have_pending_cap_snap.exit.if.end22_crit_edge, label %do.body11

__ceph_have_pending_cap_snap.exit.if.end22_crit_edge: ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body11:                                        ; preds = %__ceph_have_pending_cap_snap.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_cap_snap, %if.then17)) #11
          to label %update_snapc [label %if.then17], !srcloc !198

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_cap_snap.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.72, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 514, ptr noundef %vfs_inode) #11
  br label %update_snapc

if.end22:                                         ; preds = %__ceph_have_pending_cap_snap.exit.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %i_wrbuffer_ref_head = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 60
  %24 = ptrtoint ptr %i_wrbuffer_ref_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_wrbuffer_ref_head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  %and23 = and i32 %17, 4776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond = select i1 %cmp, i1 %tobool24.not, i1 false
  br i1 %or.cond, label %do.body26, label %do.body44

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_cap_snap, %if.then38)) #11
          to label %update_snapc [label %if.then38], !srcloc !198

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_cap_snap.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.74, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 519, ptr noundef %vfs_inode) #11
  br label %update_snapc

do.body44:                                        ; preds = %if.end22
  %tobool45.not = icmp eq ptr %11, null
  br i1 %tobool45.not, label %do.body55, label %do.end63, !prof !191

do.body55:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/snap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 523, 0\0A.popsection", ""() #11, !srcloc !212
  unreachable

do.end63:                                         ; preds = %do.body44
  %num_snaps.i = getelementptr inbounds %struct.ceph_snap_context, ptr %16, i32 0, i32 2
  %26 = ptrtoint ptr %num_snaps.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_snaps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %do.end63.if.else_crit_edge, label %has_new_snaps.exit

do.end63.if.else_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

has_new_snaps.exit:                               ; preds = %do.end63
  %snaps.i = getelementptr inbounds %struct.ceph_snap_context, ptr %16, i32 0, i32 3
  %28 = ptrtoint ptr %snaps.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %snaps.i, align 8
  %seq.i = getelementptr inbounds %struct.ceph_snap_context, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %seq.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %seq.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp1.i = icmp ugt i64 %29, %31
  br i1 %cmp1.i, label %if.then65, label %has_new_snaps.exit.if.else_crit_edge

has_new_snaps.exit.if.else_crit_edge:             ; preds = %has_new_snaps.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then65:                                        ; preds = %has_new_snaps.exit
  br i1 %tobool24.not, label %if.then65.do.body95_crit_edge, label %if.then68

if.then65.do.body95_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %need_flush = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 24
  %32 = ptrtoint ptr %need_flush to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %need_flush, align 1
  br label %do.body95

if.else:                                          ; preds = %has_new_snaps.exit.if.else_crit_edge, %do.end63.if.else_crit_edge
  %33 = select i1 %tobool6.not, i1 %cmp, i1 false
  br i1 %33, label %do.body76, label %if.else.do.body95_crit_edge

if.else.do.body95_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body95

do.body76:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_cap_snap, %if.then88)) #11
          to label %update_snapc [label %if.then88], !srcloc !198

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_cap_snap.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.76, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 540, ptr noundef %vfs_inode) #11
  br label %update_snapc

do.body95:                                        ; preds = %if.else.do.body95_crit_edge, %if.then68, %if.then65.do.body95_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_cap_snap, %if.then107)) #11
          to label %do.end114 [label %if.then107], !srcloc !198

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #13
  %call109 = tail call ptr @ceph_cap_string(i32 noundef %17) #11
  %need_flush110 = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 24
  %34 = ptrtoint ptr %need_flush110 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %need_flush110, align 1, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool111.not = icmp eq i8 %35, 0
  %cond = select i1 %tobool111.not, ptr @.str.80, ptr @.str.79
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_cap_snap.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.78, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 547, ptr noundef %vfs_inode, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %11, ptr noundef %call109, ptr noundef nonnull %cond) #11
  br label %do.end114

do.end114:                                        ; preds = %if.then107, %do.body95
  tail call void @ihold(ptr noundef %vfs_inode) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #11
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %call7.i.i, align 8
  %ci_item = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %ci_item to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ci_item, ptr %ci_item, align 4
  %prev.i287 = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i287 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ci_item, ptr %prev.i287, align 8
  %seq = getelementptr inbounds %struct.ceph_snap_context, ptr %11, i32 0, i32 1
  %39 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %seq, align 8
  %follows = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %follows to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %follows, align 8
  %call115 = tail call i32 @__ceph_caps_issued(ptr noundef %ci, ptr noundef null) #11
  %issued = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %issued to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call115, ptr %issued, align 8
  %dirty116 = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %dirty116 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %17, ptr %dirty116, align 4
  %44 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vfs_inode, align 8
  %mode = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 7
  %46 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %mode, align 4
  %uid = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 8
  %i_uid = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 2
  %47 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_uid, align 4
  %49 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %uid, align 8
  %gid = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 9
  %i_gid = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 76, i32 3
  %50 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_gid, align 8
  %52 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %gid, align 4
  %and117 = and i32 %or.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else123, label %if.then119

if.then119:                                       ; preds = %do.end114
  %call120 = tail call ptr @__ceph_build_xattrs_blob(ptr noundef %ci) #11
  %i_xattrs = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26
  %53 = ptrtoint ptr %i_xattrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_xattrs, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %54, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %54, i32 1, i32 3, i32 1) #11
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #11, !srcloc !214
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then119.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !191

if.then119.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then119
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %56 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %.not.i.i.i.i.i = icmp sgt i32 %56, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.ceph_buffer_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !202

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.ceph_buffer_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_buffer_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then119.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then119.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %54, i32 noundef %.sink.i.i.i.i.i) #11
  br label %ceph_buffer_get.exit

ceph_buffer_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.ceph_buffer_get.exit_crit_edge
  %xattr_blob = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %xattr_blob to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %xattr_blob, align 8
  %version = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 26, i32 7
  %58 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %version, align 8
  br label %if.end126

if.else123:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #13
  %xattr_blob124 = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 10
  %60 = ptrtoint ptr %xattr_blob124 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %xattr_blob124, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %ceph_buffer_get.exit
  %.sink = phi i64 [ 0, %if.else123 ], [ %59, %ceph_buffer_get.exit ]
  %old_blob.0 = phi ptr [ null, %if.else123 ], [ %call120, %ceph_buffer_get.exit ]
  %xattr_version125 = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 11
  %61 = ptrtoint ptr %xattr_version125 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %.sink, ptr %xattr_version125, align 8
  %i_inline_version = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 3
  %62 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %63)
  %cmp127 = icmp ne i64 %63, -1
  %inline_data = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 23
  %frombool128 = zext i1 %cmp127 to i8
  %64 = ptrtoint ptr %inline_data to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %frombool128, ptr %inline_data, align 4
  %65 = ptrtoint ptr %i_wrbuffer_ref_head to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_wrbuffer_ref_head, align 4
  %dirty_pages = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 22
  %67 = ptrtoint ptr %dirty_pages to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %dirty_pages, align 8
  store i32 0, ptr %i_wrbuffer_ref_head, align 4
  %context = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %11, ptr %context, align 8
  %prev.i288 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 39, i32 1
  %69 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i288, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ci_item, ptr noundef %70, ptr noundef %i_cap_snaps.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end126.list_add_tail.exit_crit_edge

if.end126.list_add_tail.exit_crit_edge:           ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %ci_item, ptr %prev.i288, align 4
  %72 = ptrtoint ptr %ci_item to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %i_cap_snaps.i, ptr %ci_item, align 4
  %73 = ptrtoint ptr %prev.i287 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev.i287, align 8
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %ci_item, ptr %70, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end126.list_add_tail.exit_crit_edge
  br i1 %tobool6.not, label %if.else153, label %do.body135

do.body135:                                       ; preds = %list_add_tail.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_cap_snap, %if.then147)) #11
          to label %do.end152 [label %if.then147], !srcloc !198

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_cap_snap.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.82, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 584, ptr noundef %vfs_inode, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %11, i64 noundef %76) #11
  br label %do.end152

do.end152:                                        ; preds = %if.then147, %do.body135
  %writing = getelementptr inbounds %struct.ceph_cap_snap, ptr %call7.i.i, i32 0, i32 21
  %77 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %writing, align 4
  br label %update_snapc

if.else153:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call154 = tail call i32 @__ceph_finish_cap_snap(ptr noundef %ci, ptr noundef nonnull %call7.i.i)
  br label %update_snapc

update_snapc:                                     ; preds = %if.else153, %do.end152, %if.then88, %do.body76, %if.then38, %do.body26, %if.then17, %do.body11
  %old_blob.1 = phi ptr [ null, %if.then17 ], [ null, %if.then88 ], [ null, %if.then38 ], [ %old_blob.0, %if.else153 ], [ %old_blob.0, %do.end152 ], [ null, %do.body11 ], [ null, %do.body26 ], [ null, %do.body76 ]
  %old_snapc.0 = phi ptr [ %11, %if.then17 ], [ %11, %if.then88 ], [ %11, %if.then38 ], [ null, %if.else153 ], [ null, %do.end152 ], [ %11, %do.body11 ], [ %11, %do.body26 ], [ %11, %do.body76 ]
  %capsnap.0 = phi ptr [ %call7.i.i, %if.then17 ], [ %call7.i.i, %if.then88 ], [ %call7.i.i, %if.then38 ], [ null, %if.else153 ], [ null, %do.end152 ], [ %call7.i.i, %do.body11 ], [ %call7.i.i, %do.body26 ], [ %call7.i.i, %do.body76 ]
  %i_wrbuffer_ref_head156 = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 60
  %78 = ptrtoint ptr %i_wrbuffer_ref_head156 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %i_wrbuffer_ref_head156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp157 = icmp eq i32 %79, 0
  br i1 %cmp157, label %land.lhs.true158, label %update_snapc.if.else166_crit_edge

update_snapc.if.else166_crit_edge:                ; preds = %update_snapc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

land.lhs.true158:                                 ; preds = %update_snapc
  %i_wr_ref = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 56
  %80 = ptrtoint ptr %i_wr_ref to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_wr_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp159 = icmp eq i32 %81, 0
  br i1 %cmp159, label %land.lhs.true160, label %land.lhs.true158.if.else166_crit_edge

land.lhs.true158.if.else166_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

land.lhs.true160:                                 ; preds = %land.lhs.true158
  %82 = ptrtoint ptr %i_dirty_caps.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_dirty_caps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp161 = icmp eq i32 %83, 0
  br i1 %cmp161, label %land.lhs.true162, label %land.lhs.true160.if.else166_crit_edge

land.lhs.true160.if.else166_crit_edge:            ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

land.lhs.true162:                                 ; preds = %land.lhs.true160
  %84 = ptrtoint ptr %i_flushing_caps.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_flushing_caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp163 = icmp eq i32 %85, 0
  br i1 %cmp163, label %if.then164, label %land.lhs.true162.if.else166_crit_edge

land.lhs.true162.if.else166_crit_edge:            ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else166

if.then164:                                       ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %i_head_snapc, align 4
  br label %if.end186

if.else166:                                       ; preds = %land.lhs.true162.if.else166_crit_edge, %land.lhs.true160.if.else166_crit_edge, %land.lhs.true158.if.else166_crit_edge, %update_snapc.if.else166_crit_edge
  %call167 = tail call ptr @ceph_get_snap_context(ptr noundef %16) #11
  %87 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call167, ptr %i_head_snapc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_cap_snap, %if.then181)) #11
          to label %if.end186 [label %if.then181], !srcloc !198

if.then181:                                       ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_cap_snap.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.84, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([15 x i8], ptr @.str, i32 0, i32 8), i32 noundef 601, ptr noundef %16) #11
  br label %if.end186

if.end186:                                        ; preds = %if.then181, %if.else166, %if.then164
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #11
  %tobool.not.i = icmp eq ptr %old_blob.1, null
  br i1 %tobool.not.i, label %if.end186.ceph_buffer_put.exit_crit_edge, label %if.then.i

if.end186.ceph_buffer_put.exit_crit_edge:         ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_buffer_put.exit

if.then.i:                                        ; preds = %if.end186
  %call.i.i.i.i.i.i.i289 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old_blob.1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @llvm.prefetch.p0(ptr nonnull %old_blob.1, i32 1, i32 3, i32 1) #11
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %old_blob.1, ptr nonnull %old_blob.1, i32 1, ptr nonnull elementtype(i32) %old_blob.1) #11, !srcloc !216
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i290 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i290, label %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !202

if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ceph_buffer_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %old_blob.1, i32 noundef 3) #11
  br label %ceph_buffer_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @ceph_buffer_release(ptr noundef nonnull %old_blob.1) #11
  br label %ceph_buffer_put.exit

ceph_buffer_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, %if.end186.ceph_buffer_put.exit_crit_edge
  tail call void @kfree(ptr noundef %capsnap.0) #11
  tail call void @ceph_put_snap_context(ptr noundef %old_snapc.0) #11
  br label %cleanup

cleanup:                                          ; preds = %ceph_buffer_put.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_used(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ceph_build_xattrs_blob(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_snap_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup5(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ceph_ino_compare(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_flush_snaps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !172, !173, !175, !176, !177, !178, !180, !181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/snap.c", i32 68, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ceph/snap.c", i32 635, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug327, !3, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ceph/snap.c", i32 645, i32 3}
!11 = !{ptr @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug328, !10, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ceph/snap.c", i32 654, i32 2}
!15 = !{ptr @__ceph_finish_cap_snap.__UNIQUE_ID_ddebug329, !14, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ceph/snap.c", i32 716, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug332, !18, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!21 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ceph/snap.c", i32 744, i32 3}
!24 = !{ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug333, !23, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ceph/snap.c", i32 768, i32 3}
!28 = !{ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug334, !27, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!29 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/ceph/snap.c", i32 772, i32 3}
!32 = !{ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug335, !31, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ceph/snap.c", i32 776, i32 2}
!36 = !{ptr @ceph_update_snap_trace.__UNIQUE_ID_ddebug336, !35, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!37 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ceph/snap.c", i32 817, i32 2}
!40 = !{ptr @ceph_update_snap_trace._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ceph_update_snap_trace._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ceph/snap.c", i32 931, i32 2}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ceph_handle_snap.__UNIQUE_ID_ddebug339, !43, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!46 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ceph/snap.c", i32 967, i32 3}
!49 = !{ptr @ceph_handle_snap.__UNIQUE_ID_ddebug340, !48, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!50 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ceph/snap.c", i32 992, i32 5}
!53 = !{ptr @ceph_handle_snap.__UNIQUE_ID_ddebug341, !52, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!54 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ceph/snap.c", i32 997, i32 4}
!57 = !{ptr @ceph_handle_snap.__UNIQUE_ID_ddebug342, !56, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ceph/snap.c", i32 1041, i32 2}
!61 = !{ptr @ceph_handle_snap._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ceph_handle_snap._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ceph/snap.c", i32 1074, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ceph_get_snapid_map.__UNIQUE_ID_ddebug343, !64, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!67 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ceph_get_snapid_map.__UNIQUE_ID_ddebug344, !69, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!69 = !{!"../fs/ceph/snap.c", i32 1118, i32 3}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ceph/snap.c", i32 1122, i32 2}
!72 = !{ptr @ceph_get_snapid_map.__UNIQUE_ID_ddebug345, !71, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!73 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ceph/snap.c", i32 1168, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ceph_trim_snapid_map.__UNIQUE_ID_ddebug346, !75, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!78 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../fs/ceph/snap.c", i32 1193, i32 7}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ceph/snap.c", i32 1194, i32 4}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ceph_cleanup_snapid_map._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @ceph_cleanup_snapid_map._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ceph/snap.c", i32 159, i32 4}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @__lookup_snap_realm.__UNIQUE_ID_ddebug315, !87, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!90 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ceph/snap.c", i32 187, i32 2}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @__destroy_snap_realm.__UNIQUE_ID_ddebug316, !92, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!95 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ceph_create_snap_realm.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../fs/ceph/snap.c", i32 131, i32 2}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ceph/snap.c", i32 135, i32 2}
!101 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ceph_create_snap_realm.__UNIQUE_ID_ddebug314, !100, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!103 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ceph/snap.c", i32 295, i32 2}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @adjust_snap_realm_parent.__UNIQUE_ID_ddebug317, !105, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!108 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ceph/snap.c", i32 425, i32 2}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @rebuild_snap_realms.__UNIQUE_ID_ddebug320, !110, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!113 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ceph/snap.c", i32 352, i32 3}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @build_snap_context.__UNIQUE_ID_ddebug318, !115, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!118 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ceph/snap.c", i32 393, i32 2}
!121 = !{ptr @build_snap_context.__UNIQUE_ID_ddebug319, !120, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!122 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ceph/snap.c", i32 412, i32 2}
!125 = !{ptr @build_snap_context._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @build_snap_context._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ceph/snap.c", i32 675, i32 2}
!129 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @queue_realm_cap_snaps.__UNIQUE_ID_ddebug330, !128, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!131 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ceph/snap.c", i32 691, i32 2}
!134 = !{ptr @queue_realm_cap_snaps.__UNIQUE_ID_ddebug331, !133, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!135 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ceph/snap.c", i32 487, i32 3}
!138 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ceph_queue_cap_snap._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @ceph_queue_cap_snap._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/ceph/snap.c", i32 514, i32 3}
!143 = !{ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug321, !142, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!144 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../fs/ceph/snap.c", i32 519, i32 3}
!147 = !{ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug322, !146, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!148 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/ceph/snap.c", i32 539, i32 4}
!151 = !{ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug323, !150, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!152 = !{ptr @.str.76, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/ceph/snap.c", i32 545, i32 2}
!155 = !{ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug324, !154, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!156 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../fs/ceph/snap.c", i32 582, i32 3}
!161 = !{ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug325, !160, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!162 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../fs/ceph/snap.c", i32 601, i32 3}
!165 = !{ptr @ceph_queue_cap_snap.__UNIQUE_ID_ddebug326, !164, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!166 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ceph/super.h", i32 552, i32 2}
!169 = !{ptr @ceph_vino_is_reserved._rs, !168, !"_rs", i1 false, i1 false}
!170 = !{ptr @__func__.ceph_vino_is_reserved, !168, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../fs/ceph/snap.c", i32 834, i32 2}
!175 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @flush_snaps.__UNIQUE_ID_ddebug337, !174, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!177 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ceph/snap.c", i32 849, i32 2}
!180 = !{ptr @flush_snaps.__UNIQUE_ID_ddebug338, !179, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!181 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{i64 2148628051}
!193 = !{i64 1114651, i64 1114676, i64 1114698, i64 1114714, i64 1114726, i64 1114746, i64 1114770, i64 1114786, i64 1114798}
!194 = !{i64 2148628239}
!195 = !{i64 2148714067}
!196 = !{i64 2148629352, i64 2148629384, i64 2148629413, i64 2148629447, i64 2148629478, i64 2148629501}
!197 = !{i64 2148714296}
!198 = !{i64 2148256620, i64 2148256625, i64 2148256638, i64 2148256682, i64 2148256716, i64 2148256737}
!199 = !{i64 2148717108}
!200 = !{i64 2148631817, i64 2148631849, i64 2148631878, i64 2148631912, i64 2148631943, i64 2148631966}
!201 = !{i64 2148717337}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i64 2155964046, i64 2155964525, i64 2155964083, i64 2155964139, i64 2155964173, i64 2155964197, i64 2155964238, i64 2155964259, i64 2155964287, i64 2155964321}
!204 = !{i64 1033312, i64 1033373}
!205 = !{i64 1036044}
!206 = !{i64 1036329}
!207 = !{i64 2152945513}
!208 = !{i64 2152945355}
!209 = !{i64 2152945683}
!210 = !{i64 2149792682}
!211 = !{i64 2155896663, i64 2155897142, i64 2155896700, i64 2155896756, i64 2155896790, i64 2155896814, i64 2155896855, i64 2155896876, i64 2155896904, i64 2155896938}
!212 = !{i64 2155948195, i64 2155948674, i64 2155948232, i64 2155948288, i64 2155948322, i64 2155948346, i64 2155948387, i64 2155948408, i64 2155948436, i64 2155948470}
!213 = !{i8 0, i8 2}
!214 = !{i64 2148630162, i64 2148630194, i64 2148630223, i64 2148630257, i64 2148630288, i64 2148630311}
!215 = !{i64 2148718187}
!216 = !{i64 2148632627, i64 2148632659, i64 2148632688, i64 2148632722, i64 2148632753, i64 2148632776}
!217 = !{i64 2149900611}
