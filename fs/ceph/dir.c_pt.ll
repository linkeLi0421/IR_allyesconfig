; ModuleID = '/llk/IR_all_yes/fs/ceph/dir.c_pt.bc'
source_filename = "../fs/ceph/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.109, %struct.list_head, %struct.list_head, %union.anon.110 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.107 }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.109 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.110 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ceph_vino = type { i64, i64 }
%union.ceph_mds_request_args = type { %struct.anon.139, [16 x i8] }
%struct.anon.139 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.144, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.144 = type { %struct.anon.146, [8 x i8] }
%struct.anon.146 = type { i8, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.ceph_mds_reply_head = type <{ i32, i32, i32, i8, i8, i8 }>
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.103 = type { i32 }
%union.anon.104 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.106 = type { ptr }
%struct.ceph_dentry_info = type { ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
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
%struct.ceph_lease_walk_control = type { i8, i8, i32, i32 }
%struct.anon.3 = type { i32, i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ceph_dir_file_info = type { %struct.ceph_file_info, i32, ptr, i32, ptr, i64, i64, i32, ptr, i32 }
%struct.ceph_file_info = type { i16, i16, %struct.spinlock, %struct.list_head, i32, %struct.atomic_t }
%struct.ceph_mds_reply_dir_entry = type { ptr, i32, ptr, %struct.ceph_mds_reply_info_in, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.anon.136 = type <{ i32, i32, i32, i16, i32 }>
%struct.anon.145 = type { ptr, i32, i32, i8, i8, i8, i8, ptr }
%struct.ceph_mds_reply_inode = type <{ i64, i64, i32, i64, i64, %struct.ceph_mds_reply_cap, %struct.ceph_file_layout_legacy, %struct.ceph_timespec, %struct.ceph_timespec, %struct.ceph_timespec, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.ceph_timespec, %struct.ceph_frag_tree_head }>
%struct.ceph_mds_reply_cap = type <{ i32, i32, i64, i32, i32, i64, i8 }>
%struct.ceph_file_layout_legacy = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_frag_tree_head = type { i32, [0 x %struct.ceph_frag_tree_split] }
%struct.ceph_frag_tree_split = type { i32, i32 }
%struct.ceph_acl_sec_ctx = type { ptr, ptr, ptr, i32, ptr }
%struct.ceph_readdir_cache_control = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.128, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%union.anon.128 = type { ptr }
%struct.page = type { i32, %union.anon.18, %union.anon.89, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }

@ceph_handle_snapdir.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_handle_snapdir\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ceph/dir.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"%.*s %12.12s:%-4d : ENOENT on snapdir %p '%pd', linking to snapdir %p. Spliced dentry %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"ceph: %.*s %12.12s:%-4d : ENOENT on snapdir %p '%pd', linking to snapdir %p. Spliced dentry %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_finish_lookup.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_finish_lookup\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : ENOENT and no trace, dentry %p inode %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : ENOENT and no trace, dentry %p inode %p\0A\00", [61 x i8] zeroinitializer }, align 32
@__ceph_dentry_lease_touch.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__ceph_dentry_lease_touch\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : dentry_lease_touch %p %p '%pd'\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : dentry_lease_touch %p %p '%pd'\0A\00", [38 x i8] zeroinitializer }, align 32
@__ceph_dentry_dir_lease_touch.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__ceph_dentry_dir_lease_touch\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%.*s %12.12s:%-4d : dentry_dir_lease_touch %p %p '%pd' (offset 0x%llx)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"ceph: %.*s %12.12s:%-4d : dentry_dir_lease_touch %p %p '%pd' (offset 0x%llx)\0A\00", [50 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ceph_dir_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ceph_dir_llseek, ptr @ceph_read_dir, ptr null, ptr null, ptr null, ptr null, ptr @ceph_readdir, ptr null, ptr null, ptr @ceph_ioctl, ptr null, ptr null, i32 0, ptr @ceph_open, ptr null, ptr @ceph_release, ptr @ceph_fsync, ptr null, ptr @ceph_lock, ptr null, ptr null, ptr null, ptr @ceph_flock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ceph_snapdir_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @ceph_dir_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceph_readdir, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ceph_open, ptr null, ptr @ceph_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ceph_dir_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @ceph_lookup, ptr null, ptr @ceph_permission, ptr @ceph_get_acl, ptr null, ptr @ceph_create, ptr @ceph_link, ptr @ceph_unlink, ptr @ceph_symlink, ptr @ceph_mkdir, ptr @ceph_unlink, ptr @ceph_mknod, ptr @ceph_rename, ptr @ceph_setattr, ptr @ceph_getattr, ptr @ceph_listxattr, ptr null, ptr null, ptr @ceph_atomic_open, ptr null, ptr @ceph_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@ceph_snapdir_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @ceph_lookup, ptr null, ptr @ceph_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceph_mkdir, ptr @ceph_unlink, ptr null, ptr @ceph_rename, ptr null, ptr @ceph_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ceph_dentry_ops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @ceph_d_revalidate, ptr null, ptr null, ptr null, ptr @ceph_d_delete, ptr @ceph_d_init, ptr @ceph_d_release, ptr @ceph_d_prune, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@ceph_lookup.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ceph_lookup\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : lookup %p dentry %p '%pd'\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : lookup %p dentry %p '%pd'\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_lookup.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d :  dir %p flags are 0x%lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d :  dir %p flags are 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_lookup.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.20, i8 0, i8 -64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d :  dir %p complete, -ENOENT\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d :  dir %p complete, -ENOENT\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_lookup.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.22, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%.*s %12.12s:%-4d : lookup result=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ceph: %.*s %12.12s:%-4d : lookup result=%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".ceph\00", [26 x i8] zeroinitializer }, align 32
@ceph_dir_llseek.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_dir_llseek\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : dir_llseek dropping %p content\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : dir_llseek dropping %p content\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"entries:   %20lld\0A files:    %20lld\0A subdirs:  %20lld\0Arentries:  %20lld\0A rfiles:   %20lld\0A rsubdirs: %20lld\0Arbytes:    %20lld\0Arctime:    %10lld.%09ld\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_readdir\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : readdir %p file %p pos %llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : readdir %p file %p pos %llx\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : readdir off 0 -> '.'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : readdir off 0 -> '.'\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.38, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : readdir off 1 -> '..'\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : readdir off 1 -> '..'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.41, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%.*s %12.12s:%-4d : readdir fetching %llx.%llx frag %x offset '%s'\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ceph: %.*s %12.12s:%-4d : readdir fetching %llx.%llx frag %x offset '%s'\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.43, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"%.*s %12.12s:%-4d : readdir got and parsed readdir result=%d on frag %x, end=%d, complete=%d, hash_order=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"ceph: %.*s %12.12s:%-4d : readdir got and parsed readdir result=%d on frag %x, end=%d, complete=%d, hash_order=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.45, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : readdir !did_prepopulate\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : readdir !did_prepopulate\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.47, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%.*s %12.12s:%-4d : readdir frag %x num %d pos %llx chunk first %llx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"ceph: %.*s %12.12s:%-4d : readdir frag %x num %d pos %llx chunk first %llx\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.49, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : readdir (%d/%d) -> %llx '%.*s' %p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d : readdir (%d/%d) -> %llx '%.*s' %p\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.51, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : filldir stopping us...\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : filldir stopping us...\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.53, i8 0, i8 -118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : readdir next frag is %x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : readdir next frag is %x\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.55, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d :  marking %p complete and ordered\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d :  marking %p complete and ordered\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.57, i8 0, i8 -113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d :  marking %p complete\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d :  marking %p complete\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_readdir.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.59, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : readdir %p file %p done.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : readdir %p file %p done.\0A\00", [44 x i8] zeroinitializer }, align 32
@__dcache_readdir.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__dcache_readdir\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : __dcache_readdir %p v%u at %llx\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d : __dcache_readdir %p v%u at %llx\0A\00", [37 x i8] zeroinitializer }, align 32
@__dcache_readdir.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : __dcache_readdir %p cache idx %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : __dcache_readdir %p cache idx %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@__dcache_readdir.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.66, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d :  %llx dentry %p %pd %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d :  %llx dentry %p %pd %p\0A\00", [46 x i8] zeroinitializer }, align 32
@__dcache_find_get_entry.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__dcache_find_get_entry\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d :  page %lu not found\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ceph: %.*s %12.12s:%-4d :  page %lu not found\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@note_last_dentry.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"note_last_dentry\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : note_last_dentry '%s'\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : note_last_dentry '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ceph_link.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceph_link\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : link in dir %p old_dentry %p dentry %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : link in dir %p old_dentry %p dentry %p\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_unlink.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.85, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ceph_unlink\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : rmsnap dir %p '%pd' dn %p\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : rmsnap dir %p '%pd' dn %p\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_unlink.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.87, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : unlink/rmdir dir %p dn %p inode %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : unlink/rmdir dir %p dn %p inode %p\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_unlink.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.89, i8 1, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : async unlink on %llu/%.*s caps=%s\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : async unlink on %llu/%.*s caps=%s\00", [36 x i8] zeroinitializer }, align 32
@ceph_async_unlink_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014ceph: ceph: async unlink failure path=(%llx)%s result=%d!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_async_unlink_cb\00", [43 x i8] zeroinitializer }, align 32
@ceph_async_unlink_cb._entry_ptr = internal global ptr @ceph_async_unlink_cb._entry, section ".printk_index", align 4
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<<bad>>\00", [24 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@ceph_symlink.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_symlink\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d : symlink in dir %p dentry %p to '%s'\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ceph: %.*s %12.12s:%-4d : symlink in dir %p dentry %p to '%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_mkdir.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ceph_mkdir\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : mksnap dir %p snap '%pd' dn %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : mksnap dir %p snap '%pd' dn %p\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_mkdir.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.100, i8 0, i8 -14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : mkdir dir %p dn %p mode 0%ho\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : mkdir dir %p dn %p mode 0%ho\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_mknod.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ceph_mknod\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%.*s %12.12s:%-4d : mknod in dir %p dentry %p mode 0%ho rdev %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ceph: %.*s %12.12s:%-4d : mknod in dir %p dentry %p mode 0%ho rdev %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_rename.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 1, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ceph_rename\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%.*s %12.12s:%-4d : rename dir %p dentry %p to dir %p dentry %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ceph: %.*s %12.12s:%-4d : rename dir %p dentry %p to dir %p dentry %p\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_d_revalidate.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 1, i8 -88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_d_revalidate\00", [46 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : d_revalidate %p '%pd' inode %p offset 0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : d_revalidate %p '%pd' inode %p offset 0x%llx\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_d_revalidate.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.111, i8 1, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : d_revalidate %p '%pd' inode %p is SNAPPED\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : d_revalidate %p '%pd' inode %p is SNAPPED\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_d_revalidate.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.113, i8 1, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : d_revalidate %p lookup result=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : d_revalidate %p lookup result=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_d_revalidate.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.115, i8 1, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : d_revalidate %p %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ceph: %.*s %12.12s:%-4d : d_revalidate %p %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"valid\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@dentry_lease_is_valid.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 1, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dentry_lease_is_valid\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : dentry_lease_is_valid - dentry %p = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : dentry_lease_is_valid - dentry %p = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dir_lease_is_valid.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.2, ptr @.str.123, i8 1, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dir_lease_is_valid\00", [45 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : dir_lease_is_valid dir %p v%u dentry %p = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : dir_lease_is_valid dir %p v%u dentry %p = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@ceph_dentry_cachep = external dso_local local_unnamed_addr global ptr, align 4
@ceph_d_release.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.2, ptr @.str.126, i8 1, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_d_release\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : d_release %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d : d_release %p\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_d_prune.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 1, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_d_prune\00", [19 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : ceph_d_prune %pd %p\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_d_prune %pd %p\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 64, i64 -2, i64 -1]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966768]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967286]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966768]
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 683, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 709, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1279, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1313, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"ceph_dir_fops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1940, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"ceph_snapdir_fops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1953, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 748, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 760, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 770, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 808, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 731, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 646, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1886, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 230, i32 6 }
@___asan_gen_.236 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 214, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 174, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 317, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 323, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 324, i32 22 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 337, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 338, i32 22 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 387, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 431, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 466, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 490, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 514, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 523, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 552, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 567, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 574, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 581, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 193, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 223, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 257, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 144, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 260, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 44, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 695, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 723, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 122, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 271, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1034, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1149, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1152, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1174, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1089, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 921, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 968, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 971, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 862, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1231, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1698, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1705, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1761, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1768, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1607, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1671, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1810, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.536 = private constant [17 x i8] c"../fs/ceph/dir.c\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 1834, i32 2 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @ceph_async_unlink_cb._entry, ptr @ceph_async_unlink_cb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ceph_dir_fops, ptr @ceph_snapdir_fops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_dir_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_snapdir_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_async_unlink_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ceph_make_fpos(i32 noundef %high, i32 noundef %off, i1 noundef zeroext %hash_order) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %high to i64
  %shl = shl nuw nsw i64 %conv, 28
  %conv1 = zext i32 %off to i64
  %or = or i64 %shl, %conv1
  %or2 = or i64 %or, 1148417904979476480
  %spec.select = select i1 %hash_order, i64 %or2, i64 %or
  ret i64 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_handle_snapdir(ptr nocapture readnone %req, ptr noundef %dentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %snap.i = getelementptr i8, ptr %3, i32 -944
  %4 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %5)
  %cmp = icmp eq i64 %5, -2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 8
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mount_options, align 4
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %snapdir_name, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call ptr @ceph_get_snapdir(ptr noundef %3) #14
  %call6 = tail call ptr @d_splice_alias(ptr noundef %call5, ptr noundef %dentry) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_handle_snapdir.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_handle_snapdir, %if.then10)) #14
          to label %do.end [label %if.then10], !srcloc !259

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_handle_snapdir.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 684, ptr noundef %dentry, ptr noundef %dentry, ptr noundef %call5, ptr noundef %call6) #14
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then
  %tobool12.not = icmp eq ptr %call6, null
  %spec.select = select i1 %tobool12.not, ptr %dentry, ptr %call6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %dentry.addr.1 = phi ptr [ %spec.select, %do.end ], [ %dentry, %land.lhs.true.if.end15_crit_edge ], [ %dentry, %entry.if.end15_crit_edge ]
  ret ptr %dentry.addr.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_snapdir(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_finish_lookup(ptr nocapture noundef readonly %req, ptr noundef %dentry, i32 noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %err to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err, label %entry.if.then14_crit_edge [
    i32 -2, label %if.then
    i32 0, label %entry.if.else16_crit_edge
  ]

entry.if.else16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else16

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then14

if.then:                                          ; preds = %entry
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36
  %1 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %if.then.if.else16_crit_edge

if.then.if.else16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else16

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_finish_lookup.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_finish_lookup, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !259

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %5 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_inode.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_finish_lookup.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 710, ptr noundef %dentry, ptr noundef %6) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %d_inode.i34 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i34, align 8
  %cmp.i.not = icmp eq ptr %8, null
  br i1 %cmp.i.not, label %if.else, label %if.end12.thread38

if.end12.thread38:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_drop(ptr noundef %dentry) #14
  br label %if.then14

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_add(ptr noundef %dentry, ptr noundef null) #14
  br label %if.else16

if.then14:                                        ; preds = %if.end12.thread38, %entry.if.then14_crit_edge
  %9 = inttoptr i32 %err to ptr
  br label %if.end23

if.else16:                                        ; preds = %if.else, %if.then.if.else16_crit_edge, %entry.if.else16_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r_dentry, align 4
  %cmp17.not = icmp eq ptr %11, %dentry
  %tobool.not.i = icmp eq ptr %11, null
  %or.cond = or i1 %cmp17.not, %tobool.not.i
  br i1 %or.cond, label %if.else16.if.end23_crit_edge, label %if.then.i

if.else16.if.end23_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then.i:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.else16.if.end23_crit_edge, %if.then14
  %dentry.addr.0 = phi ptr [ %9, %if.then14 ], [ null, %if.else16.if.end23_crit_edge ], [ %11, %if.then.i ]
  ret ptr %dentry.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_handle_notrace_create(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ceph_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_drop(ptr noundef nonnull %call) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.end ], [ -116, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ceph_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lookup.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lookup, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lookup.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 749, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dentry) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp = icmp ugt i32 %7, 255
  br i1 %cmp, label %do.end.cleanup109_crit_edge, label %if.end9

do.end.cleanup109_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup109

if.end9:                                          ; preds = %do.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %9, null
  br i1 %cmp.i, label %if.then11, label %if.end9.if.end69_crit_edge

if.end9.if.end69_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then11:                                        ; preds = %if.end9
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -952
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata.i, align 4
  %i_ceph_lock = getelementptr i8, ptr %dir, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lookup.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lookup, %if.then26)) #14
          to label %do.end30 [label %if.then26], !srcloc !259

if.then26:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  %i_ceph_flags = getelementptr i8, ptr %dir, i32 -868
  %12 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ceph_flags, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lookup.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.19, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 760, ptr noundef %dir, i32 noundef %13) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %if.then11
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mount_options, align 4
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %snapdir_name, align 4
  %20 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %d_name, align 8
  %call34 = tail call i32 @strncmp(ptr noundef %15, ptr noundef %19, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end30.if.end66_crit_edge, label %land.lhs.true

do.end30.if.end66_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true:                                    ; preds = %do.end30
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %23)
  %cmp.i172 = icmp eq i64 %23, 1
  br i1 %cmp.i172, label %is_root_ceph_dentry.exit, label %land.lhs.true.land.lhs.true37_crit_edge

land.lhs.true.land.lhs.true37_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true37

is_root_ceph_dentry.exit:                         ; preds = %land.lhs.true
  %call1.i = tail call i32 @strncmp(ptr noundef %15, ptr noundef nonnull dereferenceable(6) @.str.24, i32 noundef 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %is_root_ceph_dentry.exit.if.end66_crit_edge, label %is_root_ceph_dentry.exit.land.lhs.true37_crit_edge

is_root_ceph_dentry.exit.land.lhs.true37_crit_edge: ; preds = %is_root_ceph_dentry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true37

is_root_ceph_dentry.exit.if.end66_crit_edge:      ; preds = %is_root_ceph_dentry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true37:                                  ; preds = %is_root_ceph_dentry.exit.land.lhs.true37_crit_edge, %land.lhs.true.land.lhs.true37_crit_edge
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %17, align 4
  %and = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %land.lhs.true37.if.end66_crit_edge, label %land.lhs.true41

land.lhs.true37.if.end66_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true41:                                  ; preds = %land.lhs.true37
  %i_complete_seq.i = getelementptr i8, ptr %dir, i32 -848
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_complete_seq.i, i32 noundef 8) #14
  %call.i.i173 = tail call i64 @generic_atomic64_read(ptr noundef %i_complete_seq.i) #14
  %i_release_count.i = getelementptr i8, ptr %dir, i32 -864
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count.i, i32 noundef 8) #14
  %call.i4.i = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i173, i64 %call.i4.i)
  %cmp.i174 = icmp eq i64 %call.i.i173, %call.i4.i
  br i1 %cmp.i174, label %land.lhs.true43, label %land.lhs.true41.if.end66_crit_edge

land.lhs.true41.if.end66_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.lhs.true43:                                  ; preds = %land.lhs.true41
  %call44 = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end66_crit_edge, label %if.then46

land.lhs.true43.if.end66_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then46:                                        ; preds = %land.lhs.true43
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef 1) #14
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lookup.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lookup, %if.then60)) #14
          to label %do.end64 [label %if.then60], !srcloc !259

if.then60:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lookup.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.21, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 770, ptr noundef %dir) #14
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %if.then46
  tail call void @d_add(ptr noundef %dentry, ptr noundef null) #14
  %i_shared_gen = getelementptr i8, ptr %dir, i32 -180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %26 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %i_shared_gen, align 4
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %11, i32 0, i32 4
  %28 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %lease_shared_gen, align 4
  br label %cleanup109

if.end66:                                         ; preds = %land.lhs.true43.if.end66_crit_edge, %land.lhs.true41.if.end66_crit_edge, %land.lhs.true37.if.end66_crit_edge, %is_root_ceph_dentry.exit.if.end66_crit_edge, %do.end30.if.end66_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.end9.if.end69_crit_edge
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %29 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %30)
  %cmp71 = icmp eq i64 %30, -1
  %cond = select i1 %cmp71, i32 1024, i32 256
  %call72 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef %cond, i32 noundef 0) #14
  %cmp.i175 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.end69.cleanup109_crit_edge, label %if.end76

if.end69.cleanup109_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup109

if.end76:                                         ; preds = %if.end69
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end76.dget.exit_crit_edge, label %if.then.i

if.end76.dget.exit_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end76.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call72, i32 0, i32 6
  %31 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call72, i32 0, i32 40
  %32 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %r_num_caps, align 4
  %call78 = tail call zeroext i1 @ceph_security_xattr_wanted(ptr noundef %dir) #14
  %spec.select = select i1 %call78, i32 1157627904, i32 83886080
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call72, i32 0, i32 17
  %33 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %r_args, align 8
  tail call void @ihold(ptr noundef %dir) #14
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call72, i32 0, i32 13
  %34 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dir, ptr %r_parent, align 8
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call72, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #14
  %call82 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef null, ptr noundef %call72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call82)
  %cmp83 = icmp eq i32 %call82, -2
  br i1 %cmp83, label %if.then84, label %dget.exit.if.end90_crit_edge

dget.exit.if.end90_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end90

if.then84:                                        ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call85 = tail call ptr @ceph_handle_snapdir(ptr undef, ptr noundef %dentry)
  %cmp.i176 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  %35 = ptrtoint ptr %call85 to i32
  %spec.select181 = select i1 %cmp.i176, i32 %35, i32 0
  %spec.select182 = select i1 %cmp.i176, ptr %dentry, ptr %call85
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %dget.exit.if.end90_crit_edge
  %err.1 = phi i32 [ %call82, %dget.exit.if.end90_crit_edge ], [ %spec.select181, %if.then84 ]
  %dentry.addr.1 = phi ptr [ %dentry, %dget.exit.if.end90_crit_edge ], [ %spec.select182, %if.then84 ]
  %call91 = tail call ptr @ceph_finish_lookup(ptr noundef %call72, ptr noundef %dentry.addr.1, i32 noundef %err.1)
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call72, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_lookup.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_lookup, %if.then104)) #14
          to label %cleanup109 [label %if.then104], !srcloc !259

if.then104:                                       ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_lookup.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.23, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 808, ptr noundef %call91) #14
  br label %cleanup109

cleanup109:                                       ; preds = %if.then104, %ceph_mdsc_put_request.exit, %if.end69.cleanup109_crit_edge, %do.end64, %do.end.cleanup109_crit_edge
  %retval.1 = phi ptr [ null, %do.end64 ], [ %call91, %if.then104 ], [ inttoptr (i32 -36 to ptr), %do.end.cleanup109_crit_edge ], [ %call72, %if.end69.cleanup109_crit_edge ], [ %call91, %ceph_mdsc_put_request.exit ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ceph_dentry_lease_touch(ptr noundef %di) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_dentry_lease_touch.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_dentry_lease_touch, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_dentry_lease_touch.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.11, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1279, ptr noundef %di, ptr noundef %1, ptr noundef %1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %or = or i32 %3, 2
  store i32 %or, ptr %flags, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %or8 = or i32 %3, 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or8, ptr %flags, align 8
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc11 = getelementptr inbounds %struct.ceph_fs_client, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %mdsc11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdsc11, align 8
  %dentry_list_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %10, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %dentry_list_lock) #14
  %lease_list = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 2
  %dentry_leases = getelementptr inbounds %struct.ceph_mds_client, ptr %10, i32 0, i32 47
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lease_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.__list_del_entry.exit.i_crit_edge

if.end9.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %lease_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lease_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end9.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.ceph_mds_client, ptr %10, i32 0, i32 47, i32 1
  %17 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lease_list, ptr noundef %18, ptr noundef %dentry_leases) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lease_list, ptr %prev.i2.i, align 4
  %20 = ptrtoint ptr %lease_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dentry_leases, ptr %lease_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %lease_list, ptr %18, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dentry_list_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ceph_dentry_dir_lease_touch(ptr noundef %di) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %di, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_dentry_dir_lease_touch.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_dentry_dir_lease_touch, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %offset = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 10
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_dentry_dir_lease_touch.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1314, ptr noundef %di, ptr noundef %1, ptr noundef %1, i64 noundef %3) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lease_list = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 2
  %4 = ptrtoint ptr %lease_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %lease_list, align 4
  %cmp.i.not = icmp eq ptr %5, %lease_list
  br i1 %cmp.i.not, label %do.end.if.end14_crit_edge, label %if.then6

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then6:                                         ; preds = %do.end
  %flags = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  %lease_gen.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 5
  %8 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then8.if.end14_crit_edge, label %if.end.i

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end.i:                                         ; preds = %if.then8
  %lease_session.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 1
  %10 = ptrtoint ptr %lease_session.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lease_session.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then2.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  %s_cap_gen.i = getelementptr inbounds %struct.ceph_mds_session, ptr %11, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_cap_gen.i, i32 noundef 4) #14
  %12 = ptrtoint ptr %s_cap_gen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %s_cap_gen.i, align 4
  %14 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i42 = icmp eq i32 %15, %13
  br i1 %cmp.i42, label %land.lhs.true.i, label %if.then2.i.if.end11.i_crit_edge

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %s_cap_ttl.i = getelementptr inbounds %struct.ceph_mds_session, ptr %11, i32 0, i32 11
  %16 = ptrtoint ptr %s_cap_ttl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_cap_ttl.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %18, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %time.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 9
  %20 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time.i, align 8
  %sub6.i = sub i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  br i1 %cmp7.i, label %land.lhs.true5.i.cleanup_crit_edge, label %land.lhs.true5.i.if.end11.i_crit_edge

land.lhs.true5.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i:                                       ; preds = %land.lhs.true5.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.then2.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %22 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %lease_gen.i, align 8
  br label %if.end14

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i32 %7, 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %flags, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.end11.i, %if.then8.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %flags15 = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 3
  %24 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags15, align 8
  %and16 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %or20 = and i32 %25, -4
  %and22 = or i32 %or20, 1
  %26 = ptrtoint ptr %flags15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and22, ptr %flags15, align 8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc25 = getelementptr inbounds %struct.ceph_fs_client, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %mdsc25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdsc25, align 8
  %dentry_list_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %32, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %dentry_list_lock) #14
  %33 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags15, align 8
  %and.i = and i32 %34, -4
  store i32 %and.i, ptr %flags15, align 8
  %lease_gen.i43 = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 5
  %35 = ptrtoint ptr %lease_gen.i43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %lease_gen.i43, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %time.i44 = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 9
  %37 = ptrtoint ptr %time.i44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %time.i44, align 8
  %dentry_dir_leases.i = getelementptr inbounds %struct.ceph_mds_client, ptr %32, i32 0, i32 48
  %call.i.i.i45 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lease_list) #14
  br i1 %call.i.i.i45, label %if.end.i.i.i, label %if.end23.__list_del_entry.exit.i.i_crit_edge

if.end23.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %lease_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lease_list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end23.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.ceph_mds_client, ptr %32, i32 0, i32 48, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %lease_list, ptr noundef %45, ptr noundef %dentry_dir_leases.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.__dentry_dir_lease_touch.exit_crit_edge

__list_del_entry.exit.i.i.__dentry_dir_lease_touch.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dentry_dir_lease_touch.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %lease_list, ptr %prev.i2.i.i, align 4
  %47 = ptrtoint ptr %lease_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dentry_dir_leases.i, ptr %lease_list, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %di, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %lease_list, ptr %45, align 4
  br label %__dentry_dir_lease_touch.exit

__dentry_dir_lease_touch.exit:                    ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.__dentry_dir_lease_touch.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dentry_list_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %__dentry_dir_lease_touch.exit, %if.then18, %if.else, %land.lhs.true5.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_trim_dentries(ptr noundef %mdsc) local_unnamed_addr #2 align 64 {
entry:
  %lwc = alloca %struct.ceph_lease_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %lwc) #14
  %0 = call ptr @memset(ptr %lwc, i32 255, i32 12)
  %caps_list_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %caps_list_lock) #14
  %caps_use_max = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 42
  %1 = ptrtoint ptr %caps_use_max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %caps_use_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %caps_use_count = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 41
  %3 = ptrtoint ptr %caps_use_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %caps_use_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp2 = icmp sgt i32 %4, %2
  %sub = sub i32 %4, %2
  %spec.select = select i1 %cmp2, i32 %sub, i32 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %count.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  tail call void @_raw_spin_unlock(ptr noundef %caps_list_lock) #14
  %5 = ptrtoint ptr %lwc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %lwc, align 4
  %nr_to_scan = getelementptr inbounds %struct.ceph_lease_walk_control, ptr %lwc, i32 0, i32 2
  %6 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 340, ptr %nr_to_scan, align 4
  %call = call fastcc i32 @__dentry_leases_walk(ptr noundef %mdsc, ptr noundef nonnull %lwc, ptr noundef nonnull @__dentry_lease_check)
  %7 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %8)
  %cmp10 = icmp ult i32 %8, 170
  br i1 %cmp10, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 170, ptr %nr_to_scan, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %10 = ptrtoint ptr %lwc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %lwc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %count.0)
  %cmp15 = icmp ult i32 %call, %count.0
  %expire_dir_lease = getelementptr inbounds %struct.ceph_lease_walk_control, ptr %lwc, i32 0, i32 1
  %frombool = zext i1 %cmp15 to i8
  %11 = ptrtoint ptr %expire_dir_lease to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %expire_dir_lease, align 1
  %12 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdsc, align 8
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mount_options, align 4
  %caps_wanted_delay_max = getelementptr inbounds %struct.ceph_mount_options, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %caps_wanted_delay_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %caps_wanted_delay_max, align 4
  %mul = mul i32 %17, 100
  %dir_lease_ttl = getelementptr inbounds %struct.ceph_lease_walk_control, ptr %lwc, i32 0, i32 3
  %18 = ptrtoint ptr %dir_lease_ttl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %dir_lease_ttl, align 4
  %call16 = call fastcc i32 @__dentry_leases_walk(ptr noundef %mdsc, ptr noundef nonnull %lwc, ptr noundef nonnull @__dir_lease_check)
  %19 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %add = sub i32 0, %call16
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp21.not = icmp ne i32 %call, %add
  %cond = zext i1 %cmp21.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end20 ], [ -11, %if.end.cleanup_crit_edge ], [ -11, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %lwc) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dentry_leases_walk(ptr noundef %mdsc, ptr noundef %lwc, ptr nocapture noundef readonly %check) unnamed_addr #2 align 64 {
entry:
  %dispose = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dispose) #14
  %0 = getelementptr inbounds %struct.list_head, ptr %dispose, i32 0, i32 1
  %1 = ptrtoint ptr %dispose to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dispose, ptr %dispose, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dispose, ptr %0, align 4
  %3 = ptrtoint ptr %lwc to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lwc, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %dentry_dir_leases = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 48
  %dentry_leases = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 47
  %cond = select i1 %tobool.not, ptr %dentry_leases, ptr %dentry_dir_leases
  %dentry_list_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 46
  call void @_raw_spin_lock(ptr noundef %dentry_list_lock) #14
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cond, align 4
  %nr_to_scan = getelementptr inbounds %struct.ceph_lease_walk_control, ptr %lwc, i32 0, i32 2
  %cmp.not171 = icmp eq ptr %6, %cond
  br i1 %cmp.not171, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %prev.i2.i.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 48, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in174 = phi ptr [ %6, %for.body.lr.ph ], [ %.pn182, %for.inc.for.body_crit_edge ]
  %last.0173 = phi ptr [ null, %for.body.lr.ph ], [ %last.3, %for.inc.for.body_crit_edge ]
  %ret.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.2, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn182 = load ptr, ptr %.pn.in174, align 8
  %8 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_to_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %for.body
  %di.0181 = getelementptr i8, ptr %.pn.in174, i32 -8
  %dec = add i32 %9, -1
  %10 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dec, ptr %nr_to_scan, align 4
  %11 = ptrtoint ptr %di.0181 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di.0181, align 8
  %cmp11 = icmp eq ptr %last.0173, %12
  br i1 %cmp11, label %if.end.for.end_crit_edge, label %if.end13

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end13:                                         ; preds = %if.end
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 7
  %call.i = call i32 @_raw_spin_trylock(ptr noundef %d_lockref) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end13.for.inc_crit_edge, label %if.end16

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end16:                                         ; preds = %if.end13
  %count.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 7, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp slt i32 %14, 0
  br i1 %cmp.i, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in174) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.list_del_init.exit_crit_edge

if.then19.list_del_init.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in174, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in174, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then19.list_del_init.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in174, ptr %.pn.in174, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in174, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in174, ptr %prev.i3.i, align 4
  br label %next42

if.end21:                                         ; preds = %if.end16
  %call22 = call i32 %check(ptr noundef %12, ptr noundef %lwc) #14, !callees !265
  %and = and i32 %call22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end21.if.end28_crit_edge, label %if.then24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  %flags.i = getelementptr i8, ptr %.pn.in174, i32 8
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %24, -4
  store i32 %and.i, ptr %flags.i, align 8
  %lease_gen.i = getelementptr i8, ptr %.pn.in174, i32 16
  %25 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %lease_gen.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %time.i = getelementptr i8, ptr %.pn.in174, i32 32
  %27 = ptrtoint ptr %time.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %time.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in174) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then24.__list_del_entry.exit.i.i_crit_edge

if.then24.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr i8, ptr %.pn.in174, i32 4
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in174, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then24.__list_del_entry.exit.i.i_crit_edge
  %34 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in174, ptr noundef %35, ptr noundef %dentry_dir_leases) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.__dentry_dir_lease_touch.exit_crit_edge

__list_del_entry.exit.i.i.__dentry_dir_lease_touch.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dentry_dir_lease_touch.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %.pn.in174, ptr %prev.i2.i.i, align 4
  %37 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dentry_dir_leases, ptr %.pn.in174, align 4
  %prev3.i.i.i.i = getelementptr i8, ptr %.pn.in174, i32 4
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %.pn.in174, ptr %35, align 4
  br label %__dentry_dir_lease_touch.exit

__dentry_dir_lease_touch.exit:                    ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.__dentry_dir_lease_touch.exit_crit_edge
  %tobool25.not = icmp eq ptr %last.0173, null
  %spec.select = select i1 %tobool25.not, ptr %12, ptr %last.0173
  br label %if.end28

if.end28:                                         ; preds = %__dentry_dir_lease_touch.exit, %if.end21.if.end28_crit_edge
  %last.1 = phi ptr [ %last.0173, %if.end21.if.end28_crit_edge ], [ %spec.select, %__dentry_dir_lease_touch.exit ]
  %and29 = and i32 %call22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.next42_crit_edge, label %if.then31

if.end28.next42_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %next42

if.then31:                                        ; preds = %if.end28
  %flags = getelementptr i8, ptr %.pn.in174, i32 8
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 8
  %and32 = and i32 %41, -2
  store i32 %and32, ptr %flags, align 8
  %42 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp34 = icmp sgt i32 %43, 0
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then31
  %call.i.i130 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in174) #14
  br i1 %call.i.i130, label %if.end.i.i133, label %if.then35.list_del_init.exit135_crit_edge

if.then35.list_del_init.exit135_crit_edge:        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit135

if.end.i.i133:                                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i131 = getelementptr inbounds %struct.list_head, ptr %.pn.in174, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i131, align 4
  %46 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %.pn.in174, align 4
  %prev1.i.i.i132 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i132 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i132, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit135

list_del_init.exit135:                            ; preds = %if.end.i.i133, %if.then35.list_del_init.exit135_crit_edge
  %50 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %.pn.in174, ptr %.pn.in174, align 4
  %prev.i3.i134 = getelementptr inbounds %struct.list_head, ptr %.pn.in174, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i3.i134 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.pn.in174, ptr %prev.i3.i134, align 4
  br label %next42

if.else:                                          ; preds = %if.then31
  %or = or i32 %and32, 4
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %flags, align 8
  %call.i.i136 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in174) #14
  br i1 %call.i.i136, label %if.end.i.i139, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i

if.end.i.i139:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i137 = getelementptr inbounds %struct.list_head, ptr %.pn.in174, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i137 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i137, align 4
  %55 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %.pn.in174, align 4
  %prev1.i.i.i138 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i138, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i139, %if.else.__list_del_entry.exit.i_crit_edge
  %59 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %0, align 4
  %call.i.i.i140 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in174, ptr noundef %60, ptr noundef nonnull %dispose) #14
  br i1 %call.i.i.i140, label %if.end.i.i.i141, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_move_tail.exit

if.end.i.i.i141:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.pn.in174, ptr %0, align 4
  %62 = ptrtoint ptr %.pn.in174 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dispose, ptr %.pn.in174, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in174, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %.pn.in174, ptr %60, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i141, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %list_move_tail.exit.next42_crit_edge, label %if.then.i

list_move_tail.exit.next42_crit_edge:             ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %next42

if.then.i:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %count.i, align 4
  br label %next42

next42:                                           ; preds = %if.then.i, %list_move_tail.exit.next42_crit_edge, %list_del_init.exit135, %if.end28.next42_crit_edge, %list_del_init.exit
  %ret.1 = phi i32 [ %ret.0172, %list_del_init.exit ], [ %call22, %list_del_init.exit135 ], [ %call22, %if.end28.next42_crit_edge ], [ %call22, %list_move_tail.exit.next42_crit_edge ], [ %call22, %if.then.i ]
  %last.2 = phi ptr [ %last.0173, %list_del_init.exit ], [ %last.1, %list_del_init.exit135 ], [ %last.1, %if.end28.next42_crit_edge ], [ %last.1, %list_move_tail.exit.next42_crit_edge ], [ %last.1, %if.then.i ]
  call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  %and45 = and i32 %ret.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %next42.for.inc_crit_edge, label %next42.for.end_crit_edge

next42.for.end_crit_edge:                         ; preds = %next42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

next42.for.inc_crit_edge:                         ; preds = %next42
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %next42.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %next42.for.inc_crit_edge ], [ %ret.0172, %if.end13.for.inc_crit_edge ]
  %last.3 = phi ptr [ %last.2, %next42.for.inc_crit_edge ], [ %last.0173, %if.end13.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn182, %cond
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %next42.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dentry_list_lock) #14
  %67 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %dispose, align 4
  %cmp.i143.not183 = icmp eq ptr %68, %dispose
  br i1 %cmp.i143.not183, label %for.end.while.end_crit_edge, label %while.body.lr.ph

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %prev.i = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 47, i32 1
  %prev.i2.i.i163 = getelementptr inbounds %struct.ceph_mds_client, ptr %mdsc, i32 0, i32 48, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %while.body.lr.ph
  %69 = phi ptr [ %68, %while.body.lr.ph ], [ %104, %if.end83.while.body_crit_edge ]
  %freed.0184 = phi i32 [ 0, %while.body.lr.ph ], [ %freed.1, %if.end83.while.body_crit_edge ]
  %add.ptr61 = getelementptr i8, ptr %69, i32 -8
  %70 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr61, align 8
  %d_lockref63 = getelementptr inbounds %struct.dentry, ptr %71, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref63) #14
  %call.i.i144 = call zeroext i1 @__list_del_entry_valid(ptr noundef %69) #14
  br i1 %call.i.i144, label %if.end.i.i147, label %while.body.list_del_init.exit150_crit_edge

while.body.list_del_init.exit150_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit150

if.end.i.i147:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i145 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i145 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i145, align 4
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %69, align 4
  %prev1.i.i.i146 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i146 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i146, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del_init.exit150

list_del_init.exit150:                            ; preds = %if.end.i.i147, %while.body.list_del_init.exit150_crit_edge
  %78 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %69, ptr %69, align 4
  %prev.i3.i148 = getelementptr %struct.list_head, ptr %69, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i3.i148 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %69, ptr %prev.i3.i148, align 4
  %flags66 = getelementptr i8, ptr %69, i32 8
  %80 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags66, align 8
  %and67 = and i32 %81, -5
  store i32 %and67, ptr %flags66, align 8
  %and69 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else82, label %if.then71

if.then71:                                        ; preds = %list_del_init.exit150
  call void @_raw_spin_lock(ptr noundef %dentry_list_lock) #14
  %82 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags66, align 8
  %and74 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.else79, label %if.then76

if.then76:                                        ; preds = %if.then71
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i, align 4
  %call.i.i151 = call zeroext i1 @__list_add_valid(ptr noundef %69, ptr noundef %85, ptr noundef %dentry_leases) #14
  br i1 %call.i.i151, label %if.then76.if.end80.sink.split_crit_edge, label %if.then76.if.end80_crit_edge

if.then76.if.end80_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

if.then76.if.end80.sink.split_crit_edge:          ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.sink.split

if.else79:                                        ; preds = %if.then71
  %86 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags66, align 8
  %and.i154 = and i32 %87, -4
  store i32 %and.i154, ptr %flags66, align 8
  %lease_gen.i155 = getelementptr i8, ptr %69, i32 16
  %88 = ptrtoint ptr %lease_gen.i155 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %lease_gen.i155, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %time.i156 = getelementptr i8, ptr %69, i32 32
  %90 = ptrtoint ptr %time.i156 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %time.i156, align 8
  %call.i.i.i159 = call zeroext i1 @__list_del_entry_valid(ptr noundef %69) #14
  br i1 %call.i.i.i159, label %if.end.i.i.i162, label %if.else79.__list_del_entry.exit.i.i165_crit_edge

if.else79.__list_del_entry.exit.i.i165_crit_edge: ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit.i.i165

if.end.i.i.i162:                                  ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %prev.i3.i148 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %prev.i3.i148, align 4
  %93 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %69, align 4
  %prev1.i.i.i.i161 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %prev1.i.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev1.i.i.i.i161, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %94, ptr %92, align 4
  br label %__list_del_entry.exit.i.i165

__list_del_entry.exit.i.i165:                     ; preds = %if.end.i.i.i162, %if.else79.__list_del_entry.exit.i.i165_crit_edge
  %97 = ptrtoint ptr %prev.i2.i.i163 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i2.i.i163, align 4
  %call.i.i.i.i164 = call zeroext i1 @__list_add_valid(ptr noundef %69, ptr noundef %98, ptr noundef %dentry_dir_leases) #14
  br i1 %call.i.i.i.i164, label %__list_del_entry.exit.i.i165.if.end80.sink.split_crit_edge, label %__list_del_entry.exit.i.i165.if.end80_crit_edge

__list_del_entry.exit.i.i165.if.end80_crit_edge:  ; preds = %__list_del_entry.exit.i.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80

__list_del_entry.exit.i.i165.if.end80.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i.i165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end80.sink.split

if.end80.sink.split:                              ; preds = %__list_del_entry.exit.i.i165.if.end80.sink.split_crit_edge, %if.then76.if.end80.sink.split_crit_edge
  %prev.i2.i.i163.sink = phi ptr [ %prev.i, %if.then76.if.end80.sink.split_crit_edge ], [ %prev.i2.i.i163, %__list_del_entry.exit.i.i165.if.end80.sink.split_crit_edge ]
  %dentry_dir_leases.sink = phi ptr [ %dentry_leases, %if.then76.if.end80.sink.split_crit_edge ], [ %dentry_dir_leases, %__list_del_entry.exit.i.i165.if.end80.sink.split_crit_edge ]
  %.sink185 = phi ptr [ %85, %if.then76.if.end80.sink.split_crit_edge ], [ %98, %__list_del_entry.exit.i.i165.if.end80.sink.split_crit_edge ]
  %99 = ptrtoint ptr %prev.i2.i.i163.sink to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %69, ptr %prev.i2.i.i163.sink, align 4
  %100 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %dentry_dir_leases.sink, ptr %69, align 4
  %101 = ptrtoint ptr %prev.i3.i148 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %.sink185, ptr %prev.i3.i148, align 4
  %102 = ptrtoint ptr %.sink185 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %69, ptr %.sink185, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %__list_del_entry.exit.i.i165.if.end80_crit_edge, %if.then76.if.end80_crit_edge
  call void @_raw_spin_unlock(ptr noundef %dentry_list_lock) #14
  br label %if.end83

if.else82:                                        ; preds = %list_del_init.exit150
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %freed.0184, 1
  br label %if.end83

if.end83:                                         ; preds = %if.else82, %if.end80
  %freed.1 = phi i32 [ %freed.0184, %if.end80 ], [ %inc, %if.else82 ]
  call void @_raw_spin_unlock(ptr noundef %d_lockref63) #14
  call void @dput(ptr noundef %71) #14
  %103 = ptrtoint ptr %dispose to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %dispose, align 4
  %cmp.i143.not = icmp eq ptr %104, %dispose
  br i1 %cmp.i143.not, label %if.end83.while.end_crit_edge, label %if.end83.while.body_crit_edge

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end83.while.end_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end83.while.end_crit_edge, %for.end.while.end_crit_edge
  %freed.0.lcssa = phi i32 [ 0, %for.end.while.end_crit_edge ], [ %freed.1, %if.end83.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dispose) #14
  ret i32 %freed.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__dentry_lease_check(ptr noundef %dentry, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %lease_gen.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %lease_session.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lease_session.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lease_session.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then2.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  %s_cap_gen.i = getelementptr inbounds %struct.ceph_mds_session, ptr %5, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_cap_gen.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %s_cap_gen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_cap_gen.i, align 4
  %8 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.i = icmp eq i32 %9, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then2.i.if.end11.i_crit_edge

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %s_cap_ttl.i = getelementptr inbounds %struct.ceph_mds_session, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %s_cap_ttl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_cap_ttl.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %time.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time.i, align 8
  %sub6.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  br i1 %cmp7.i, label %land.lhs.true5.i.cleanup_crit_edge, label %land.lhs.true5.i.if.end11.i_crit_edge

land.lhs.true5.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i:                                       ; preds = %land.lhs.true5.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.then2.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %16 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lease_gen.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end11.i, %entry.if.end_crit_edge
  %call2 = tail call fastcc i32 @__dir_lease_try_check(ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call2)
  %cmp = icmp eq i32 %call2, -16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp5.inv = icmp slt i32 %call2, 1
  %. = select i1 %cmp5.inv, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %., %if.end4 ], [ 4, %land.lhs.true5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__dir_lease_check(ptr noundef %dentry, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %call1 = tail call fastcc i32 @__dir_lease_try_check(ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1)
  %cmp = icmp eq i32 %call1, -16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp sgt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %time, align 8
  %dir_lease_ttl = getelementptr inbounds %struct.ceph_lease_walk_control, ptr %arg, i32 0, i32 3
  %5 = ptrtoint ptr %dir_lease_ttl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir_lease_ttl, align 4
  %7 = add i32 %4, %6
  %sub = sub i32 %2, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp4 = icmp slt i32 %sub, 0
  br i1 %cmp4, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %expire_dir_lease = getelementptr inbounds %struct.ceph_lease_walk_control, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %expire_dir_lease to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %expire_dir_lease, align 1, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %count = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp sgt i32 %11, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %flags = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %lease_shared_gen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 4, %if.then3.cleanup_crit_edge ], [ 2, %if.end6.cleanup_crit_edge ], [ 2, %lor.lhs.false.cleanup_crit_edge ], [ 2, %if.end8.cleanup_crit_edge ], [ 1, %if.end12 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_invalidate_dentry_lease(ptr noundef %dentry) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %time, align 8
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lease_shared_gen, align 4
  %flags = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, -9
  store i32 %and, ptr %flags, align 8
  %and.i = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__dentry_lease_unlist.exit_crit_edge

entry.__dentry_lease_unlist.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dentry_lease_unlist.exit

if.end.i:                                         ; preds = %entry
  %lease_list.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %lease_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %8, %lease_list.i
  br i1 %cmp.i.not.i, label %if.end.i.__dentry_lease_unlist.exit_crit_edge, label %if.end3.i

if.end.i.__dentry_lease_unlist.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dentry_lease_unlist.exit

if.end3.i:                                        ; preds = %if.end.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc5.i = getelementptr inbounds %struct.ceph_fs_client, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %mdsc5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdsc5.i, align 8
  %dentry_list_lock.i = getelementptr inbounds %struct.ceph_mds_client, ptr %16, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %dentry_list_lock.i) #14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lease_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del_init.exit.i_crit_edge

if.end3.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lease_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_del_init.exit.i_crit_edge
  %23 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %lease_list.i, ptr %lease_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %lease_list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dentry_list_lock.i) #14
  br label %__dentry_lease_unlist.exit

__dentry_lease_unlist.exit:                       ; preds = %list_del_init.exit.i, %if.end.i.__dentry_lease_unlist.exit_crit_edge, %entry.__dentry_lease_unlist.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_dentry_hash(ptr nocapture noundef readonly %dir, ptr noundef %dn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_dir_layout = getelementptr i8, ptr %dir, i32 -832
  %0 = ptrtoint ptr %i_dir_layout to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_dir_layout, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dn, i32 0, i32 4
  %hash1 = getelementptr inbounds %struct.anon.3, ptr %d_name, i32 0, i32 1
  %2 = ptrtoint ptr %hash1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash1, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dn, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %4 = ptrtoint ptr %i_dir_layout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_dir_layout, align 8
  %conv4 = zext i8 %5 to i32
  %d_name5 = getelementptr inbounds %struct.dentry, ptr %dn, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dn, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %d_name5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %d_name5, align 8
  %call7 = tail call i32 @ceph_str_hash(i32 noundef %conv4, ptr noundef %7, i32 noundef %9) #14
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb
  %retval.0 = phi i32 [ %call7, %sw.default ], [ %3, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_str_hash(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ceph_dir_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %whence) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #14
  %6 = zext i32 %whence to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %whence, label %entry.out_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %f_pos = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %7 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %f_pos, align 8
  %add = add i64 %8, %offset
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %offset.addr.0 = phi i64 [ %offset, %entry.sw.epilog_crit_edge ], [ %add, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %offset.addr.0)
  %cmp = icmp sgt i64 %offset.addr.0, -1
  br i1 %cmp, label %if.then, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %offset.addr.0)
  %cmp.i = icmp eq i64 %offset.addr.0, 0
  br i1 %cmp.i, label %if.then.do.body_crit_edge, label %if.end.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end.i:                                         ; preds = %if.then
  %and.i.i = and i64 %offset.addr.0, 1148417904979476480
  call void @__sanitizer_cov_trace_const_cmp8(i64 1148417904979476480, i64 %and.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, 1148417904979476480
  br i1 %cmp.i.i, label %if.end.i.if.end6.i_crit_edge, label %if.else.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  %frag.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %frag.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag.i, align 8
  %11 = lshr i64 %offset.addr.0, 28
  %conv.i.i = trunc i64 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i.i)
  %cmp3.not.i = icmp eq i32 %10, %conv.i.i
  br i1 %cmp3.not.i, label %if.else.i.if.end6.i_crit_edge, label %if.else.i.do.body_crit_edge

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %last_readdir.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %last_readdir.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end6.i.do.body_crit_edge, label %lor.lhs.false.i

if.end6.i.do.body_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %dir_nr.i = getelementptr inbounds %struct.ceph_mds_request, ptr %13, i32 0, i32 36, i32 7, i32 0, i32 1
  %14 = ptrtoint ptr %dir_nr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not.i = icmp eq i32 %15, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %if.end11.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %dir_entries.i = getelementptr inbounds %struct.ceph_mds_request, ptr %13, i32 0, i32 36, i32 7, i32 1
  %16 = ptrtoint ptr %dir_entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dir_entries.i, align 8
  %offset.i = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %offset.addr.0)
  %cmp12.i = icmp sgt i64 %19, %offset.addr.0
  br i1 %cmp12.i, label %if.end11.i.do.body_crit_edge, label %need_reset_readdir.exit

if.end11.i.do.body_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

need_reset_readdir.exit:                          ; preds = %if.end11.i
  %and.i31.i = and i64 %19, 1148417904979476480
  call void @__sanitizer_cov_trace_const_cmp8(i64 1148417904979476480, i64 %and.i31.i)
  %cmp.i32.i = icmp eq i64 %and.i31.i, 1148417904979476480
  %cmp16.i = xor i1 %cmp.i.i, %cmp.i32.i
  br i1 %cmp16.i, label %need_reset_readdir.exit.do.body_crit_edge, label %if.else

need_reset_readdir.exit.do.body_crit_edge:        ; preds = %need_reset_readdir.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %need_reset_readdir.exit.do.body_crit_edge, %if.end11.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.end6.i.do.body_crit_edge, %if.else.i.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_dir_llseek.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_dir_llseek, %if.then7)) #14
          to label %do.end [label %if.then7], !srcloc !259

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_dir_llseek.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.27, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 646, ptr noundef %file) #14
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %last_readdir.i42 = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %last_readdir.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %last_readdir.i42, align 4
  %tobool.not.i43 = icmp eq ptr %21, null
  br i1 %tobool.not.i43, label %do.end.reset_readdir.exit_crit_edge, label %if.then.i

do.end.reset_readdir.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %reset_readdir.exit

if.then.i:                                        ; preds = %do.end
  %r_kref.i.i = getelementptr inbounds %struct.ceph_mds_request, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i.i, i32 1, i32 3, i32 1) #14
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i.i, ptr %r_kref.i.i, i32 1, ptr elementtype(i32) %r_kref.i.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ceph_mdsc_put_request.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.i.ceph_mdsc_put_request.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i.i) #14
  br label %ceph_mdsc_put_request.exit.i

ceph_mdsc_put_request.exit.i:                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ceph_mdsc_put_request.exit.i_crit_edge
  %23 = ptrtoint ptr %last_readdir.i42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %last_readdir.i42, align 4
  br label %reset_readdir.exit

reset_readdir.exit:                               ; preds = %ceph_mdsc_put_request.exit.i, %do.end.reset_readdir.exit_crit_edge
  %last_name.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %last_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %last_name.i, align 4
  tail call void @kfree(ptr noundef %25) #14
  %26 = ptrtoint ptr %last_name.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %last_name.i, align 4
  %dir_release_count.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %dir_release_count.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %dir_release_count.i, align 8
  %readdir_cache_idx.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %readdir_cache_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %readdir_cache_idx.i, align 8
  %next_offset.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %next_offset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %next_offset.i, align 8
  %flags.i = getelementptr inbounds %struct.ceph_file_info, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 2
  %32 = and i16 %31, -3
  store i16 %32, ptr %flags.i, align 2
  br label %if.end14

if.else:                                          ; preds = %need_reset_readdir.exit
  br i1 %cmp.i.i, label %land.lhs.true, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %if.else
  %f_pos10 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %33 = ptrtoint ptr %f_pos10 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %f_pos10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0, i64 %34)
  %cmp11 = icmp sgt i64 %offset.addr.0, %34
  br i1 %cmp11, label %if.then12, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dir_release_count = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %dir_release_count, align 8
  %readdir_cache_idx = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %readdir_cache_idx, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true.if.end14_crit_edge, %if.else.if.end14_crit_edge, %reset_readdir.exit
  %f_pos15 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 10
  %37 = ptrtoint ptr %f_pos15 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %f_pos15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.addr.0, i64 %38)
  %cmp16.not = icmp eq i64 %offset.addr.0, %38
  br i1 %cmp16.not, label %if.end14.out_crit_edge, label %if.then17

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %f_pos15 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %offset.addr.0, ptr %f_pos15, align 8
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %40 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %f_version, align 8
  %flags = getelementptr inbounds %struct.ceph_file_info, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags, align 2
  %43 = and i16 %42, -3
  store i16 %43, ptr %flags, align 2
  br label %out

out:                                              ; preds = %if.then17, %if.end14.out_crit_edge, %sw.epilog.out_crit_edge, %sw.bb2, %entry.out_crit_edge
  %retval1.0 = phi i64 [ -22, %entry.out_crit_edge ], [ -95, %sw.bb2 ], [ -22, %sw.epilog.out_crit_edge ], [ %offset.addr.0, %if.then17 ], [ %offset.addr.0, %if.end14.out_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #14
  ret i64 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_read_dir(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mount_options, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %dir_info = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %dir_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dir_info, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 1024) #18
  %15 = ptrtoint ptr %dir_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %dir_info, align 4
  %tobool8.not = icmp eq ptr %call7.i, null
  br i1 %tobool8.not, label %if.then4.cleanup_crit_edge, label %if.end10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %i_files = getelementptr i8, ptr %3, i32 -704
  %16 = ptrtoint ptr %i_files to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_files, align 8
  %i_subdirs = getelementptr i8, ptr %3, i32 -696
  %18 = ptrtoint ptr %i_subdirs to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %i_subdirs, align 8
  %add = add i64 %19, %17
  %i_rfiles = getelementptr i8, ptr %3, i32 -728
  %20 = ptrtoint ptr %i_rfiles to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_rfiles, align 8
  %i_rsubdirs = getelementptr i8, ptr %3, i32 -720
  %22 = ptrtoint ptr %i_rsubdirs to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_rsubdirs, align 8
  %add14 = add i64 %23, %21
  %i_rbytes = getelementptr i8, ptr %3, i32 -736
  %24 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_rbytes, align 8
  %i_rctime = getelementptr i8, ptr %3, i32 -752
  %26 = ptrtoint ptr %i_rctime to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_rctime, align 8
  %tv_nsec = getelementptr i8, ptr %3, i32 -744
  %28 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec, align 8
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 1024, ptr noundef nonnull @.str.28, i64 noundef %add, i64 noundef %17, i64 noundef %19, i64 noundef %add14, i64 noundef %21, i64 noundef %23, i64 noundef %25, i64 noundef %27, i32 noundef %29)
  %dir_info_len = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %dir_info_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call18, ptr %dir_info_len, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end10, %if.end.if.end19_crit_edge
  %31 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ppos, align 8
  %dir_info_len20 = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %dir_info_len20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dir_info_len20, align 8
  %conv = sext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv)
  %cmp.not = icmp slt i64 %32, %conv
  br i1 %cmp.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %35 = trunc i64 %32 to i32
  %conv26 = sub i32 %34, %35
  %36 = tail call i32 @llvm.umin.i32(i32 %conv26, i32 %size)
  %37 = ptrtoint ptr %dir_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dir_info, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp9.i.i = icmp slt i32 %36, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end23
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !262

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end23
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %36, i1 noundef zeroext true) #14
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %36, i32 -1226833920) #19, !srcloc !266
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %36) #14
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %36) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %call.i12.i.i)
  %cmp31 = icmp eq i32 %36, %call.i12.i.i
  br i1 %cmp31, label %copy_to_user.exit.cleanup_crit_edge, label %if.end34

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub35 = sub i32 %36, %call.i12.i.i
  %conv36 = zext i32 %sub35 to i64
  %40 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ppos, align 8
  %add37 = add i64 %41, %conv36
  store i64 %add37, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub35, %if.end34 ], [ -21, %entry.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then.i.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_readdir(ptr noundef %file, ptr noundef %ctx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc3 = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %mdsc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdsc3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.34, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 317, ptr noundef %3, ptr noundef %file, i64 noundef %11) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ceph_file_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 2
  %14 = and i16 %13, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool8.not = icmp eq i16 %14, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup617_crit_edge

do.end.cleanup617_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup617

if.end10:                                         ; preds = %do.end
  %pos11 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos11, align 8
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.132)
  switch i64 %16, label %if.end10.if.end71_crit_edge [
    i64 0, label %do.body14
    i64 1, label %if.end10.if.then41_crit_edge
  ]

if.end10.if.then41_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then41

if.end10.if.end71_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

do.body14:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then26)) #14
          to label %do.end30 [label %if.then26], !srcloc !259

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.36, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 323) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %17 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.i, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mount_options.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mount_options.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mount_options.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %and.i.i = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end30.ceph_present_inode.exit_crit_edge, label %if.then.i.i, !prof !262

do.end30.ceph_present_inode.exit_crit_edge:       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_present_inode.exit

if.then.i.i:                                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i = lshr i64 %20, 32
  %xor.i.i.i = xor i64 %shr.i.i.i, %20
  %conv2.i.i.i = trunc i64 %xor.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv2.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 %conv2.i.i.i
  %conv.i.i = zext i32 %spec.store.select.i.i.i to i64
  br label %ceph_present_inode.exit

ceph_present_inode.exit:                          ; preds = %if.then.i.i, %do.end30.ceph_present_inode.exit_crit_edge
  %retval.0.i.i = phi i64 [ %conv.i.i, %if.then.i.i ], [ %20, %do.end30.ceph_present_inode.exit_crit_edge ]
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %3, align 8
  %29 = lshr i16 %28, 12
  %30 = zext i16 %29 to i32
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %33 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos11, align 8
  %call.i881 = tail call i32 %32(ptr noundef %ctx, ptr noundef nonnull @.str.37, i32 noundef 1, i64 noundef %34, i64 noundef %retval.0.i.i, i32 noundef %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i881)
  %cmp.i = icmp eq i32 %call.i881, 0
  br i1 %cmp.i, label %if.end37.thread, label %ceph_present_inode.exit.cleanup617_crit_edge

ceph_present_inode.exit.cleanup617_crit_edge:     ; preds = %ceph_present_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup617

if.end37.thread:                                  ; preds = %ceph_present_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %pos11 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1, ptr %pos11, align 8
  br label %if.then41

if.then41:                                        ; preds = %if.end37.thread, %if.end10.if.then41_crit_edge
  %dentry42 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %dentry42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dentry42, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %d_parent = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_parent, align 8
  %d_inode = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %d_inode, align 8
  %i_sb.i882 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb.i882 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i882, align 4
  %add.ptr.i.i.i883 = getelementptr i8, ptr %41, i32 -952
  %44 = ptrtoint ptr %add.ptr.i.i.i883 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr.i.i.i883, align 8
  %s_fs_info.i.i.i884 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i.i884 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i.i884, align 16
  %mount_options.i.i885 = getelementptr inbounds %struct.ceph_fs_client, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %mount_options.i.i885 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mount_options.i.i885, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %and.i.i886 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i886)
  %tobool.not.i.i887 = icmp eq i32 %and.i.i886, 0
  br i1 %tobool.not.i.i887, label %if.then41.ceph_present_inode.exit896_crit_edge, label %if.then.i.i894, !prof !262

if.then41.ceph_present_inode.exit896_crit_edge:   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_present_inode.exit896

if.then.i.i894:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i888 = lshr i64 %45, 32
  %xor.i.i.i889 = xor i64 %shr.i.i.i888, %45
  %conv2.i.i.i890 = trunc i64 %xor.i.i.i889 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i.i890)
  %tobool.not.i.i.i891 = icmp eq i32 %conv2.i.i.i890, 0
  %spec.store.select.i.i.i892 = select i1 %tobool.not.i.i.i891, i32 2, i32 %conv2.i.i.i890
  %conv.i.i893 = zext i32 %spec.store.select.i.i.i892 to i64
  br label %ceph_present_inode.exit896

ceph_present_inode.exit896:                       ; preds = %if.then.i.i894, %if.then41.ceph_present_inode.exit896_crit_edge
  %retval.0.i.i895 = phi i64 [ %conv.i.i893, %if.then.i.i894 ], [ %45, %if.then41.ceph_present_inode.exit896_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then58)) #14
          to label %do.end62 [label %if.then58], !srcloc !259

if.then58:                                        ; preds = %ceph_present_inode.exit896
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.39, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 337) #14
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %ceph_present_inode.exit896
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %3, align 8
  %54 = lshr i16 %53, 12
  %55 = zext i16 %54 to i32
  %56 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctx, align 8
  %58 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %pos11, align 8
  %call.i898 = tail call i32 %57(ptr noundef %ctx, ptr noundef nonnull @.str.40, i32 noundef 2, i64 noundef %59, i64 noundef %retval.0.i.i895, i32 noundef %55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i898)
  %cmp.i899 = icmp eq i32 %call.i898, 0
  br i1 %cmp.i899, label %if.end68, label %do.end62.cleanup617_crit_edge

do.end62.cleanup617_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup617

if.end68:                                         ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %pos11 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 2, ptr %pos11, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.end68, %if.end10.if.end71_crit_edge
  %i_ceph_lock = getelementptr i8, ptr %3, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %9, i32 noundef 2) #14
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %7, i32 0, i32 2
  %61 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mount_options, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = and i32 %64, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %65)
  %66 = icmp eq i32 %65, 512
  br i1 %66, label %land.lhs.true79, label %if.end71.if.else_crit_edge

if.end71.if.else_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true79:                                  ; preds = %if.end71
  %snap.i = getelementptr i8, ptr %3, i32 -944
  %67 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %68)
  %cmp81.not = icmp eq i64 %68, -1
  br i1 %cmp81.not, label %land.lhs.true79.if.else_crit_edge, label %land.lhs.true83

land.lhs.true79.if.else_crit_edge:                ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %i_complete_seq.i = getelementptr i8, ptr %3, i32 -848
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_complete_seq.i, i32 noundef 8) #14
  %call.i.i900 = tail call i64 @generic_atomic64_read(ptr noundef %i_complete_seq.i) #14
  %i_release_count.i = getelementptr i8, ptr %3, i32 -864
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count.i, i32 noundef 8) #14
  %call.i11.i = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i900, i64 %call.i11.i)
  %cmp.i901 = icmp eq i64 %call.i.i900, %call.i11.i
  br i1 %cmp.i901, label %__ceph_dir_is_complete_ordered.exit, label %land.lhs.true83.if.else_crit_edge

land.lhs.true83.if.else_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

__ceph_dir_is_complete_ordered.exit:              ; preds = %land.lhs.true83
  %arrayidx3.i = getelementptr i8, ptr %3, i32 -840
  %call.i.i12.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx3.i, i32 noundef 8) #14
  %call.i13.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx3.i) #14
  %i_ordered_count.i = getelementptr i8, ptr %3, i32 -856
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ordered_count.i, i32 noundef 8) #14
  %call.i15.i = tail call i64 @generic_atomic64_read(ptr noundef %i_ordered_count.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i13.i, i64 %call.i15.i)
  %cmp6.i = icmp eq i64 %call.i13.i, %call.i15.i
  br i1 %cmp6.i, label %land.lhs.true86, label %__ceph_dir_is_complete_ordered.exit.if.else_crit_edge

__ceph_dir_is_complete_ordered.exit.if.else_crit_edge: ; preds = %__ceph_dir_is_complete_ordered.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true86:                                  ; preds = %__ceph_dir_is_complete_ordered.exit
  %call87 = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.else_crit_edge, label %if.then89

land.lhs.true86.if.else_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then89:                                        ; preds = %land.lhs.true86
  %i_shared_gen = getelementptr i8, ptr %3, i32 -180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %69 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %i_shared_gen, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  %call92 = tail call fastcc i32 @__dcache_readdir(ptr noundef %file, ptr noundef %ctx, i32 noundef %70)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, -11
  br i1 %cmp93.not, label %if.then89.if.end101_crit_edge, label %if.then89.cleanup617_crit_edge

if.then89.cleanup617_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup617

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.else:                                          ; preds = %land.lhs.true86.if.else_crit_edge, %__ceph_dir_is_complete_ordered.exit.if.else_crit_edge, %land.lhs.true83.if.else_crit_edge, %land.lhs.true79.if.else_crit_edge, %if.end71.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  br label %if.end101

if.end101:                                        ; preds = %if.else, %if.then89.if.end101_crit_edge
  %last_readdir.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 2
  %frag.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 1
  %snap.i905975 = getelementptr i8, ptr %3, i32 -944
  %last_name = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 4
  %dir_release_count = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 5
  %dir_ordered_count = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 6
  %readdir_cache_idx = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 7
  %next_offset = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 3
  %dentry184 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  br label %more

more:                                             ; preds = %if.then517, %do.body505, %ceph_mdsc_put_request.exit951.more_crit_edge, %if.end101
  %frag.0 = phi i32 [ -1, %if.end101 ], [ %or.i.i, %do.body505 ], [ %or.i.i, %if.then517 ], [ %257, %ceph_mdsc_put_request.exit951.more_crit_edge ]
  %71 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %last_readdir.i, align 4
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %if.then104, label %if.end.i

if.end.i:                                         ; preds = %more
  %73 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %pos11, align 8
  %and.i.i902 = and i64 %74, 1148417904979476480
  call void @__sanitizer_cov_trace_const_cmp8(i64 1148417904979476480, i64 %and.i.i902)
  %cmp.i.i = icmp eq i64 %and.i.i902, 1148417904979476480
  %75 = ptrtoint ptr %frag.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %frag.i, align 8
  %77 = lshr i64 %74, 28
  %conv.i.i.i = trunc i64 %77 to i32
  br i1 %cmp.i.i, label %if.then1.i, label %need_send_readdir.exit

if.then1.i:                                       ; preds = %if.end.i
  %and.i.i.i = and i32 %conv.i.i.i, 16777215
  %shr.i.i.i.i = lshr i32 %76, 24
  %sub.i.i.i = sub nsw i32 24, %shr.i.i.i.i
  %shl.i.i.i = shl i32 16777215, %sub.i.i.i
  %and.i10.i = and i32 %and.i.i.i, %shl.i.i.i
  %and.i3.i.i = and i32 %76, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i10.i, i32 %and.i3.i.i)
  %cmp.i11.i.not = icmp eq i32 %and.i10.i, %and.i3.i.i
  br i1 %cmp.i11.i.not, label %if.then1.i.if.end312_crit_edge, label %if.then1.i.if.then109_crit_edge

if.then1.i.if.then109_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

if.then1.i.if.end312_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end312

need_send_readdir.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %conv.i.i.i)
  %cmp.i903.not = icmp eq i32 %76, %conv.i.i.i
  br i1 %cmp.i903.not, label %need_send_readdir.exit.if.end312_crit_edge, label %need_send_readdir.exit.if.then109_crit_edge

need_send_readdir.exit.if.then109_crit_edge:      ; preds = %need_send_readdir.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then109

need_send_readdir.exit.if.end312_crit_edge:       ; preds = %need_send_readdir.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end312

if.then104:                                       ; preds = %more
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %snap.i905975 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %snap.i905975, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %79)
  %cmp106 = icmp eq i64 %79, -1
  %cond = select i1 %cmp106, i32 1026, i32 773
  br label %if.end112

if.then109:                                       ; preds = %need_send_readdir.exit.if.then109_crit_edge, %if.then1.i.if.then109_crit_edge
  %80 = ptrtoint ptr %snap.i905975 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %snap.i905975, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %81)
  %cmp106976 = icmp eq i64 %81, -1
  %cond977 = select i1 %cmp106976, i32 1026, i32 773
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %72, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %82 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i906, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit

if.then.i.i906:                                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i906, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  %83 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %last_readdir.i, align 4
  br label %if.end112

if.end112:                                        ; preds = %ceph_mdsc_put_request.exit, %if.then104
  %cond981 = phi i32 [ %cond977, %ceph_mdsc_put_request.exit ], [ %cond, %if.then104 ]
  %cmp106979 = phi i1 [ %cmp106976, %ceph_mdsc_put_request.exit ], [ %cmp106, %if.then104 ]
  %84 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %pos11, align 8
  %and.i = and i64 %85, 1148417904979476480
  call void @__sanitizer_cov_trace_const_cmp8(i64 1148417904979476480, i64 %and.i)
  %cmp.i907 = icmp eq i64 %and.i, 1148417904979476480
  br i1 %cmp.i907, label %if.then115, label %if.else123

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %frag.0)
  %cmp116 = icmp eq i32 %frag.0, -1
  br i1 %cmp116, label %if.then118, label %if.then115.do.body127_crit_edge

if.then115.do.body127_crit_edge:                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body127

if.then118:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #16
  %86 = lshr i64 %85, 28
  %conv.i.i908 = trunc i64 %86 to i32
  %and.i.i909 = and i32 %conv.i.i908, 16777215
  %call121 = tail call i32 @ceph_choose_frag(ptr noundef %add.ptr.i, i32 noundef %and.i.i909, ptr noundef null, ptr noundef null) #14
  br label %do.body127

if.else123:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  %87 = lshr i64 %85, 28
  %conv.i = trunc i64 %87 to i32
  br label %do.body127

do.body127:                                       ; preds = %if.else123, %if.then118, %if.then115.do.body127_crit_edge
  %frag.1 = phi i32 [ %call121, %if.then118 ], [ %frag.0, %if.then115.do.body127_crit_edge ], [ %conv.i, %if.else123 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then139)) #14
          to label %do.end147 [label %if.then139], !srcloc !259

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %add.ptr.i, align 8
  %90 = ptrtoint ptr %snap.i905975 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %snap.i905975, align 8
  %92 = ptrtoint ptr %last_name to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %last_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.42, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 388, i64 noundef %89, i64 noundef %91, i32 noundef %frag.1, ptr noundef %93) #14
  br label %do.end147

do.end147:                                        ; preds = %if.then139, %do.body127
  %call148 = tail call ptr @ceph_mdsc_create_request(ptr noundef %9, i32 noundef %cond981, i32 noundef 2) #14
  %cmp.i912 = icmp ugt ptr %call148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i912, label %if.then150, label %if.end152

if.then150:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #16
  %94 = ptrtoint ptr %call148 to i32
  br label %cleanup617

if.end152:                                        ; preds = %do.end147
  %call153 = tail call i32 @ceph_alloc_readdir_reply_buffer(ptr noundef %call148, ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.then155

if.then155:                                       ; preds = %if.end152
  %r_kref.i913 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 3
  %call.i.i.i.i.i.i.i914 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i913, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i913, i32 1, i32 3, i32 1) #14
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i913, ptr %r_kref.i913, i32 1, ptr elementtype(i32) %r_kref.i913) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i915 = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i915)
  %cmp.i.i.i.i.i916 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i915, 1
  br i1 %cmp.i.i.i.i.i916, label %if.then.i.i920, label %if.end5.i.i.i.i.i918

if.end5.i.i.i.i.i918:                             ; preds = %if.then155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i915)
  %.not.i.i.i.i.i917 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i915, 0
  br i1 %.not.i.i.i.i.i917, label %if.end5.i.i.i.i.i918.cleanup617_crit_edge, label %if.then10.i.i.i.i.i919, !prof !262

if.end5.i.i.i.i.i918.cleanup617_crit_edge:        ; preds = %if.end5.i.i.i.i.i918
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup617

if.then10.i.i.i.i.i919:                           ; preds = %if.end5.i.i.i.i.i918
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i913, i32 noundef 3) #14
  br label %cleanup617

if.then.i.i920:                                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i913) #14
  br label %cleanup617

if.end156:                                        ; preds = %if.end152
  %r_direct_mode = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 22
  %96 = ptrtoint ptr %r_direct_mode to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %r_direct_mode, align 8
  br i1 %cmp106979, label %if.end156.if.end161_crit_edge, label %if.then159

if.end156.if.end161_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end161

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #16
  %and.i922 = and i32 %frag.1, 16777215
  %r_direct_hash = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 23
  %97 = ptrtoint ptr %r_direct_hash to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and.i922, ptr %r_direct_hash, align 4
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 15
  %98 = ptrtoint ptr %r_req_flags to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %r_req_flags, align 4
  %or.i = or i32 %99, 2
  store i32 %or.i, ptr %r_req_flags, align 4
  %r_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 25
  %100 = ptrtoint ptr %r_inode_drop to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 512, ptr %r_inode_drop, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.end156.if.end161_crit_edge
  %101 = ptrtoint ptr %last_name to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %last_name, align 4
  %tobool163.not = icmp eq ptr %102, null
  br i1 %tobool163.not, label %if.else171, label %if.then164

if.then164:                                       ; preds = %if.end161
  %call166 = tail call noalias ptr @kstrdup(ptr noundef nonnull %102, i32 noundef 3264) #14
  %r_path2 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 10
  %103 = ptrtoint ptr %r_path2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call166, ptr %r_path2, align 4
  %tobool168.not = icmp eq ptr %call166, null
  br i1 %tobool168.not, label %if.then169, label %if.then164.if.end178_crit_edge

if.then164.if.end178_crit_edge:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

if.then169:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ceph_mdsc_put_request(ptr noundef %call148)
  br label %cleanup617

if.else171:                                       ; preds = %if.end161
  %104 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %pos11, align 8
  %and.i923 = and i64 %105, 1148417904979476480
  call void @__sanitizer_cov_trace_const_cmp8(i64 1148417904979476480, i64 %and.i923)
  %cmp.i924 = icmp eq i64 %and.i923, 1148417904979476480
  br i1 %cmp.i924, label %if.then174, label %if.else171.if.end178_crit_edge

if.else171.if.end178_crit_edge:                   ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end178

if.then174:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #16
  %106 = lshr i64 %105, 28
  %conv.i.i925 = trunc i64 %106 to i32
  %and.i.i926 = and i32 %conv.i.i925, 16777215
  %107 = tail call i32 @llvm.bswap.i32(i32 %and.i.i926)
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 17
  %offset_hash = getelementptr inbounds %struct.anon.136, ptr %r_args, i32 0, i32 4
  %108 = ptrtoint ptr %offset_hash to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %offset_hash, align 2
  br label %if.end178

if.end178:                                        ; preds = %if.then174, %if.else171.if.end178_crit_edge, %if.then164.if.end178_crit_edge
  %109 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %dir_release_count, align 8
  %r_dir_release_cnt = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 62
  %111 = ptrtoint ptr %r_dir_release_cnt to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %r_dir_release_cnt, align 8
  %112 = ptrtoint ptr %dir_ordered_count to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %dir_ordered_count, align 8
  %r_dir_ordered_cnt = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 63
  %114 = ptrtoint ptr %r_dir_ordered_cnt to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %r_dir_ordered_cnt, align 8
  %115 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %readdir_cache_idx, align 8
  %r_readdir_cache_idx = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 64
  %117 = ptrtoint ptr %r_readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %r_readdir_cache_idx, align 8
  %118 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %next_offset, align 8
  %r_readdir_offset = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 41
  %120 = ptrtoint ptr %r_readdir_offset to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %r_readdir_offset, align 8
  %121 = tail call i32 @llvm.bswap.i32(i32 %frag.1)
  %r_args179 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 17
  %122 = ptrtoint ptr %r_args179 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %r_args179, align 8
  %flags182 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 17, i32 0, i32 3
  %123 = ptrtoint ptr %flags182 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 256, ptr %flags182, align 4
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 5
  %124 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %3, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %3) #14
  %125 = ptrtoint ptr %dentry184 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dentry184, align 4
  %tobool.not.i927 = icmp eq ptr %126, null
  br i1 %tobool.not.i927, label %if.end178.dget.exit_crit_edge, label %if.then.i

if.end178.dget.exit_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %126, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end178.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 6
  %127 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %r_dentry, align 4
  %call186 = tail call i32 @ceph_mdsc_do_request(ptr noundef %9, ptr noundef null, ptr noundef %call148) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then189, label %do.body191

if.then189:                                       ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ceph_mdsc_put_request(ptr noundef %call148)
  br label %cleanup617

do.body191:                                       ; preds = %dget.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then203)) #14
          to label %do.end215 [label %if.then203], !srcloc !259

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #16
  %128 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 36, i32 7
  %dir_end = getelementptr inbounds %struct.anon.145, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %dir_end to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %dir_end, align 4, !range !264
  %131 = zext i8 %130 to i32
  %dir_complete = getelementptr inbounds %struct.anon.145, ptr %128, i32 0, i32 4
  %132 = ptrtoint ptr %dir_complete to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %dir_complete, align 1, !range !264
  %134 = zext i8 %133 to i32
  %hash_order = getelementptr inbounds %struct.anon.145, ptr %128, i32 0, i32 5
  %135 = ptrtoint ptr %hash_order to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %hash_order, align 2, !range !264
  %137 = zext i8 %136 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.44, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 436, i32 noundef %call186, i32 noundef %frag.1, i32 noundef %131, i32 noundef %134, i32 noundef %137) #14
  br label %do.end215

do.end215:                                        ; preds = %if.then203, %do.body191
  %138 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 36, i32 7
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %140, align 1
  %143 = tail call i32 @llvm.bswap.i32(i32 %142)
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %frag.1)
  %cmp218.not = icmp eq i32 %143, %frag.1
  br i1 %cmp218.not, label %do.end215.if.end232_crit_edge, label %if.then220

do.end215.if.end232_crit_edge:                    ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232

if.then220:                                       ; preds = %do.end215
  %hash_order223 = getelementptr inbounds %struct.anon.145, ptr %138, i32 0, i32 5
  %144 = ptrtoint ptr %hash_order223 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %hash_order223, align 2, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool224.not = icmp eq i8 %145, 0
  br i1 %tobool224.not, label %if.then225, label %if.then220.if.end232_crit_edge

if.then220.if.end232_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232

if.then225:                                       ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #16
  %146 = ptrtoint ptr %r_readdir_offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %r_readdir_offset, align 8
  %148 = ptrtoint ptr %next_offset to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %next_offset, align 8
  %conv.i929 = zext i32 %143 to i64
  %shl.i = shl nuw nsw i64 %conv.i929, 28
  %conv1.i = zext i32 %147 to i64
  %or.i930 = or i64 %shl.i, %conv1.i
  %149 = ptrtoint ptr %pos11 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %or.i930, ptr %pos11, align 8
  br label %if.end232

if.end232:                                        ; preds = %if.then225, %if.then220.if.end232_crit_edge, %do.end215.if.end232_crit_edge
  %frag.2 = phi i32 [ %143, %if.then220.if.end232_crit_edge ], [ %143, %if.then225 ], [ %frag.1, %do.end215.if.end232_crit_edge ]
  %150 = ptrtoint ptr %frag.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %frag.2, ptr %frag.i, align 8
  %151 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call148, ptr %last_readdir.i, align 4
  %r_req_flags235 = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 15
  %152 = ptrtoint ptr %r_req_flags235 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %r_req_flags235, align 4
  %154 = and i32 %153, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool237.not = icmp eq i32 %154, 0
  br i1 %tobool237.not, label %do.body261, label %if.then238

if.then238:                                       ; preds = %if.end232
  %155 = ptrtoint ptr %r_readdir_cache_idx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %r_readdir_cache_idx, align 8
  %157 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %readdir_cache_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp242 = icmp slt i32 %156, 0
  br i1 %cmp242, label %if.then244, label %if.else246

if.then244:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #16
  %158 = ptrtoint ptr %dir_ordered_count to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 0, ptr %dir_ordered_count, align 8
  br label %if.end280

if.else246:                                       ; preds = %if.then238
  %and.i.i931 = and i32 %frag.2, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i931)
  %cmp.i932 = icmp eq i32 %and.i.i931, 0
  br i1 %cmp.i932, label %land.lhs.true249, label %if.else246.if.end280_crit_edge

if.else246.if.end280_crit_edge:                   ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end280

land.lhs.true249:                                 ; preds = %if.else246
  %159 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %next_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp251 = icmp eq i32 %160, 2
  br i1 %cmp251, label %if.then253, label %land.lhs.true249.if.end280_crit_edge

land.lhs.true249.if.end280_crit_edge:             ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end280

if.then253:                                       ; preds = %land.lhs.true249
  call void @__sanitizer_cov_trace_pc() #16
  %161 = ptrtoint ptr %r_dir_release_cnt to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %r_dir_release_cnt, align 8
  %163 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %dir_release_count, align 8
  %164 = ptrtoint ptr %r_dir_ordered_cnt to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %r_dir_ordered_cnt, align 8
  %166 = ptrtoint ptr %dir_ordered_count to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %dir_ordered_count, align 8
  br label %if.end280

do.body261:                                       ; preds = %if.end232
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then273)) #14
          to label %do.end277 [label %if.then273], !srcloc !259

if.then273:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.46, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 466) #14
  br label %do.end277

do.end277:                                        ; preds = %if.then273, %do.body261
  %167 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %readdir_cache_idx, align 8
  %168 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 0, ptr %dir_release_count, align 8
  br label %if.end280

if.end280:                                        ; preds = %do.end277, %if.then253, %land.lhs.true249.if.end280_crit_edge, %if.else246.if.end280_crit_edge, %if.then244
  %dir_nr = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 36, i32 7, i32 0, i32 1
  %169 = ptrtoint ptr %dir_nr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %dir_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp281 = icmp sgt i32 %170, 0
  br i1 %cmp281, label %if.then283, label %if.else300

if.then283:                                       ; preds = %if.end280
  %dir_entries = getelementptr inbounds %struct.ceph_mds_request, ptr %call148, i32 0, i32 36, i32 7, i32 1
  %171 = ptrtoint ptr %dir_entries to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dir_entries, align 8
  %sub = add nsw i32 %170, -1
  %add.ptr = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %172, i32 %sub
  %dir_end287 = getelementptr inbounds %struct.anon.145, ptr %138, i32 0, i32 3
  %173 = ptrtoint ptr %dir_end287 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %dir_end287, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool288.not = icmp eq i8 %174, 0
  br i1 %tobool288.not, label %cond.false, label %if.then283.cond.end_crit_edge

if.then283.cond.end_crit_edge:                    ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #16
  %offset = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %172, i32 %sub, i32 4
  %175 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %offset, align 8
  %177 = trunc i64 %176 to i32
  %conv.i933 = and i32 %177, 268435455
  %add = add nuw nsw i32 %conv.i933, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then283.cond.end_crit_edge
  %cond291 = phi i32 [ %add, %cond.false ], [ 2, %if.then283.cond.end_crit_edge ]
  %178 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr, align 8
  %name_len = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %172, i32 %sub, i32 1
  %180 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %name_len, align 4
  %call292 = tail call fastcc i32 @note_last_dentry(ptr noundef %1, ptr noundef %179, i32 noundef %181, i32 noundef %cond291)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %cond.end.if.end312_crit_edge, label %cond.end.cleanup617_crit_edge

cond.end.cleanup617_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup617

cond.end.if.end312_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end312

if.else300:                                       ; preds = %if.end280
  %dir_end302 = getelementptr inbounds %struct.anon.145, ptr %138, i32 0, i32 3
  %182 = ptrtoint ptr %dir_end302 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %dir_end302, align 4, !range !264
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool303.not = icmp eq i8 %183, 0
  br i1 %tobool303.not, label %if.else300.if.end312_crit_edge, label %if.then304

if.else300.if.end312_crit_edge:                   ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end312

if.then304:                                       ; preds = %if.else300
  call void @__sanitizer_cov_trace_pc() #16
  %184 = ptrtoint ptr %next_offset to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 2, ptr %next_offset, align 8
  br label %if.end312

if.end312:                                        ; preds = %if.then304, %if.else300.if.end312_crit_edge, %cond.end.if.end312_crit_edge, %need_send_readdir.exit.if.end312_crit_edge, %if.then1.i.if.end312_crit_edge
  %185 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %last_readdir.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then327)) #14
          to label %do.end342 [label %if.then327], !srcloc !259

if.then327:                                       ; preds = %if.end312
  %187 = ptrtoint ptr %frag.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %frag.i, align 8
  %dir_nr330 = getelementptr inbounds %struct.ceph_mds_request, ptr %186, i32 0, i32 36, i32 7, i32 0, i32 1
  %189 = ptrtoint ptr %dir_nr330 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dir_nr330, align 8
  %191 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %pos11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool333.not = icmp eq i32 %190, 0
  br i1 %tobool333.not, label %if.then327.cond.end338_crit_edge, label %cond.true334

if.then327.cond.end338_crit_edge:                 ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end338

cond.true334:                                     ; preds = %if.then327
  call void @__sanitizer_cov_trace_pc() #16
  %dir_entries335 = getelementptr inbounds %struct.ceph_mds_request, ptr %186, i32 0, i32 36, i32 7, i32 1
  %193 = ptrtoint ptr %dir_entries335 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dir_entries335, align 8
  %offset336 = getelementptr inbounds %struct.ceph_mds_reply_dir_entry, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %offset336 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %offset336, align 8
  br label %cond.end338

cond.end338:                                      ; preds = %cond.true334, %if.then327.cond.end338_crit_edge
  %cond339 = phi i64 [ %196, %cond.true334 ], [ 0, %if.then327.cond.end338_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.48, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 492, i32 noundef %188, i32 noundef %190, i64 noundef %192, i64 noundef %cond339) #14
  br label %do.end342

do.end342:                                        ; preds = %cond.end338, %if.end312
  %dir_nr343 = getelementptr inbounds %struct.ceph_mds_request, ptr %186, i32 0, i32 36, i32 7, i32 0, i32 1
  %197 = ptrtoint ptr %dir_nr343 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %dir_nr343, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %cmp344 = icmp sgt i32 %198, 0
  br i1 %cmp344, label %while.body.lr.ph, label %do.end342.if.end365_crit_edge

do.end342.if.end365_crit_edge:                    ; preds = %do.end342
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end365

while.body.lr.ph:                                 ; preds = %do.end342
  %dir_entries351 = getelementptr inbounds %struct.ceph_mds_request, ptr %186, i32 0, i32 36, i32 7, i32 1
  %199 = ptrtoint ptr %dir_entries351 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dir_entries351, align 8
  %201 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %pos11, align 8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.01007 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %while.body.while.body_crit_edge ]
  %nr.01006 = phi i32 [ %198, %while.body.lr.ph ], [ %nr.1, %while.body.while.body_crit_edge ]
  %shr350996 = lshr i32 %nr.01006, 1
  %add352 = add i32 %i.01007, %shr350996
  %offset354 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %200, i32 %add352, i32 4
  %203 = ptrtoint ptr %offset354 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %offset354, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %204, i64 %202)
  %cmp356 = icmp slt i64 %204, %202
  %add359 = add nuw nsw i32 %shr350996, 1
  %sub362 = sub nsw i32 %nr.01006, %add359
  %nr.1 = select i1 %cmp356, i32 %sub362, i32 %shr350996
  %add360 = select i1 %cmp356, i32 %add359, i32 0
  %i.1 = add i32 %add360, %i.01007
  %cmp348 = icmp sgt i32 %nr.1, 0
  br i1 %cmp348, label %while.body.while.body_crit_edge, label %while.body.if.end365_crit_edge

while.body.if.end365_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end365

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end365:                                        ; preds = %while.body.if.end365_crit_edge, %do.end342.if.end365_crit_edge
  %i.2 = phi i32 [ 0, %do.end342.if.end365_crit_edge ], [ %i.1, %while.body.if.end365_crit_edge ]
  %205 = ptrtoint ptr %dir_nr343 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dir_nr343, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %206)
  %cmp3671008 = icmp slt i32 %i.2, %206
  br i1 %cmp3671008, label %for.body.lr.ph, label %if.end365.for.end_crit_edge

if.end365.for.end_crit_edge:                      ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end365
  %dir_entries370 = getelementptr inbounds %struct.ceph_mds_request, ptr %186, i32 0, i32 36, i32 7, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.31009 = phi i32 [ %i.2, %for.body.lr.ph ], [ %inc472, %for.inc.for.body_crit_edge ]
  %207 = ptrtoint ptr %dir_entries370 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dir_entries370, align 8
  %add.ptr371 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %208, i32 %i.31009
  %offset373 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %208, i32 %i.31009, i32 4
  %209 = ptrtoint ptr %offset373 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %offset373, align 8
  %211 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %pos11, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %210, i64 %212)
  %cmp375 = icmp slt i64 %210, %212
  br i1 %cmp375, label %do.body384, label %do.end392, !prof !267

do.body384:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 511, 0\0A.popsection", ""() #14, !srcloc !268
  unreachable

do.end392:                                        ; preds = %for.body
  %213 = ptrtoint ptr %pos11 to i32
  call void @__asan_store8_noabort(i32 %213)
  store i64 %210, ptr %pos11, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then407)) #14
          to label %do.body417 [label %if.then407], !srcloc !259

if.then407:                                       ; preds = %do.end392
  call void @__sanitizer_cov_trace_pc() #16
  %214 = ptrtoint ptr %dir_nr343 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %dir_nr343, align 8
  %216 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %pos11, align 8
  %name_len411 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %208, i32 %i.31009, i32 1
  %218 = ptrtoint ptr %name_len411 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %name_len411, align 4
  %220 = ptrtoint ptr %add.ptr371 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %add.ptr371, align 8
  %inode413 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %208, i32 %i.31009, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.50, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 516, i32 noundef %i.31009, i32 noundef %215, i64 noundef %217, i32 noundef %219, ptr noundef %221, ptr noundef %inode413) #14
  br label %do.body417

do.body417:                                       ; preds = %if.then407, %do.end392
  %inode418 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %208, i32 %i.31009, i32 3
  %222 = ptrtoint ptr %inode418 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %inode418, align 8
  %tobool420.not = icmp eq ptr %223, null
  br i1 %tobool420.not, label %do.body430, label %do.end438, !prof !267

do.body430:                                       ; preds = %do.body417
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #14, !srcloc !269
  unreachable

do.end438:                                        ; preds = %do.body417
  %224 = ptrtoint ptr %add.ptr371 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr371, align 8
  %name_len440 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %208, i32 %i.31009, i32 1
  %226 = ptrtoint ptr %name_len440 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %name_len440, align 4
  %228 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %i_sb.i, align 4
  %230 = ptrtoint ptr %223 to i32
  call void @__asan_loadN_noabort(i32 %230, i32 8)
  %231 = load i64, ptr %223, align 1
  %232 = tail call i64 @llvm.bswap.i64(i64 %231)
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %229, i32 0, i32 33
  %233 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_options.i = getelementptr inbounds %struct.ceph_fs_client, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %mount_options.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mount_options.i, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  %and.i934 = and i32 %238, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i934)
  %tobool.not.i935 = icmp eq i32 %and.i934, 0
  br i1 %tobool.not.i935, label %do.end438.ceph_present_ino.exit_crit_edge, label %if.then.i938, !prof !262

do.end438.ceph_present_ino.exit_crit_edge:        ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_present_ino.exit

if.then.i938:                                     ; preds = %do.end438
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i = lshr i64 %232, 32
  %xor.i.i = xor i64 %shr.i.i, %232
  %conv2.i.i = trunc i64 %xor.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i)
  %tobool.not.i.i936 = icmp eq i32 %conv2.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i936, i32 2, i32 %conv2.i.i
  %conv.i937 = zext i32 %spec.store.select.i.i to i64
  br label %ceph_present_ino.exit

ceph_present_ino.exit:                            ; preds = %if.then.i938, %do.end438.ceph_present_ino.exit_crit_edge
  %retval.0.i939 = phi i64 [ %conv.i937, %if.then.i938 ], [ %232, %do.end438.ceph_present_ino.exit_crit_edge ]
  %mode = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %223, i32 0, i32 15
  %239 = ptrtoint ptr %mode to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %mode, align 1
  %241 = tail call i32 @llvm.bswap.i32(i32 %240)
  %shr447 = lshr i32 %241, 12
  %242 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ctx, align 8
  %244 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %pos11, align 8
  %call.i941 = tail call i32 %243(ptr noundef %ctx, ptr noundef %225, i32 noundef %227, i64 noundef %245, i64 noundef %retval.0.i939, i32 noundef %shr447) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i941)
  %cmp.i942 = icmp eq i32 %call.i941, 0
  br i1 %cmp.i942, label %for.inc, label %do.body450

do.body450:                                       ; preds = %ceph_present_ino.exit
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then462)) #14
          to label %cleanup617 [label %if.then462], !srcloc !259

if.then462:                                       ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.52, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 523) #14
  br label %cleanup617

for.inc:                                          ; preds = %ceph_present_ino.exit
  %246 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %pos11, align 8
  %inc = add i64 %247, 1
  store i64 %inc, ptr %pos11, align 8
  %inc472 = add nsw i32 %i.31009, 1
  %248 = ptrtoint ptr %dir_nr343 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %dir_nr343, align 8
  %cmp367 = icmp slt i32 %inc472, %249
  br i1 %cmp367, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end365.for.end_crit_edge
  %250 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %last_readdir.i, align 4
  %r_kref.i943 = getelementptr inbounds %struct.ceph_mds_request, ptr %251, i32 0, i32 3
  %call.i.i.i.i.i.i.i944 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i943, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i943, i32 1, i32 3, i32 1) #14
  %252 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i943, ptr %r_kref.i943, i32 1, ptr elementtype(i32) %r_kref.i943) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i945 = extractvalue { i32, i32, i32 } %252, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i945)
  %cmp.i.i.i.i.i946 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i945, 1
  br i1 %cmp.i.i.i.i.i946, label %if.then.i.i950, label %if.end5.i.i.i.i.i948

if.end5.i.i.i.i.i948:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i945)
  %.not.i.i.i.i.i947 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i945, 0
  br i1 %.not.i.i.i.i.i947, label %if.end5.i.i.i.i.i948.ceph_mdsc_put_request.exit951_crit_edge, label %if.then10.i.i.i.i.i949, !prof !262

if.end5.i.i.i.i.i948.ceph_mdsc_put_request.exit951_crit_edge: ; preds = %if.end5.i.i.i.i.i948
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit951

if.then10.i.i.i.i.i949:                           ; preds = %if.end5.i.i.i.i.i948
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i943, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit951

if.then.i.i950:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i943) #14
  br label %ceph_mdsc_put_request.exit951

ceph_mdsc_put_request.exit951:                    ; preds = %if.then.i.i950, %if.then10.i.i.i.i.i949, %if.end5.i.i.i.i.i948.ceph_mdsc_put_request.exit951_crit_edge
  %253 = ptrtoint ptr %last_readdir.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %last_readdir.i, align 4
  %254 = ptrtoint ptr %next_offset to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %next_offset, align 8
  %cmp476 = icmp ugt i32 %255, 2
  %256 = ptrtoint ptr %frag.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %frag.i, align 8
  br i1 %cmp476, label %ceph_mdsc_put_request.exit951.more_crit_edge, label %if.end480

ceph_mdsc_put_request.exit951.more_crit_edge:     ; preds = %ceph_mdsc_put_request.exit951
  call void @__sanitizer_cov_trace_pc() #16
  br label %more

if.end480:                                        ; preds = %ceph_mdsc_put_request.exit951
  %shr.i.i.i952 = lshr i32 %257, 24
  %sub.i.i = sub nsw i32 24, %shr.i.i.i952
  %shl.i.i = shl i32 16777215, %sub.i.i
  %258 = xor i32 %shl.i.i, %257
  %259 = and i32 %258, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %cmp.i953 = icmp eq i32 %259, 0
  br i1 %cmp.i953, label %if.end522, label %if.then483

if.then483:                                       ; preds = %if.end480
  %shr.i955 = lshr i32 16777216, %shr.i.i.i952
  %add.i = add i32 %shr.i955, %257
  %shl.i.i956 = and i32 %257, -16777216
  %and.i7.i = and i32 %add.i, 16777215
  %and2.i.i = and i32 %and.i7.i, %shl.i.i
  %or.i.i = or i32 %and2.i.i, %shl.i.i956
  %260 = ptrtoint ptr %pos11 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %pos11, align 8
  %and.i958 = and i64 %261, 1148417904979476480
  call void @__sanitizer_cov_trace_const_cmp8(i64 1148417904979476480, i64 %and.i958)
  %cmp.i959 = icmp eq i64 %and.i958, 1148417904979476480
  br i1 %cmp.i959, label %if.then488, label %if.else498

if.then488:                                       ; preds = %if.then483
  %conv.i960 = zext i32 %and2.i.i to i64
  %shl.i961 = shl nuw nsw i64 %conv.i960, 28
  %conv1.i962 = zext i32 %255 to i64
  %or.i963 = or i64 %shl.i961, %conv1.i962
  %or2.i964 = or i64 %or.i963, 1148417904979476480
  call void @__sanitizer_cov_trace_cmp8(i64 %or2.i964, i64 %261)
  %cmp493 = icmp sgt i64 %or2.i964, %261
  br i1 %cmp493, label %if.then495, label %if.then488.do.body505_crit_edge

if.then488.do.body505_crit_edge:                  ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body505

if.then495:                                       ; preds = %if.then488
  call void @__sanitizer_cov_trace_pc() #16
  %262 = ptrtoint ptr %pos11 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %or2.i964, ptr %pos11, align 8
  br label %do.body505

if.else498:                                       ; preds = %if.then483
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i965 = zext i32 %or.i.i to i64
  %shl.i966 = shl nuw nsw i64 %conv.i965, 28
  %conv1.i967 = zext i32 %255 to i64
  %or.i968 = or i64 %shl.i966, %conv1.i967
  %263 = ptrtoint ptr %pos11 to i32
  call void @__asan_store8_noabort(i32 %263)
  store i64 %or.i968, ptr %pos11, align 8
  %264 = ptrtoint ptr %last_name to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %last_name, align 4
  tail call void @kfree(ptr noundef %265) #14
  %266 = ptrtoint ptr %last_name to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %last_name, align 4
  br label %do.body505

do.body505:                                       ; preds = %if.else498, %if.then495, %if.then488.do.body505_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then517)) #14
          to label %more [label %if.then517], !srcloc !259

if.then517:                                       ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.54, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 552, i32 noundef %or.i.i) #14
  br label %more

if.end522:                                        ; preds = %if.end480
  %267 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %flags, align 2
  %269 = or i16 %268, 2
  store i16 %269, ptr %flags, align 2
  %i_release_count = getelementptr i8, ptr %3, i32 -864
  %call.i.i868 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count) #14
  %270 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %dir_release_count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %271)
  %cmp529 = icmp eq i64 %call.i, %271
  br i1 %cmp529, label %if.then531, label %if.end522.do.body600_crit_edge

if.end522.do.body600_crit_edge:                   ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body600

if.then531:                                       ; preds = %if.end522
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %272 = ptrtoint ptr %dir_ordered_count to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %dir_ordered_count, align 8
  %i_ordered_count = getelementptr i8, ptr %3, i32 -856
  %call.i.i869 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ordered_count, i32 noundef 8) #14
  %call.i870 = tail call i64 @generic_atomic64_read(ptr noundef %i_ordered_count) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %273, i64 %call.i870)
  %cmp535 = icmp eq i64 %273, %call.i870
  br i1 %cmp535, label %do.body538, label %do.body578

do.body538:                                       ; preds = %if.then531
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then550)) #14
          to label %do.body555 [label %if.then550], !srcloc !259

if.then550:                                       ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.56, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 567, ptr noundef %3) #14
  br label %do.body555

do.body555:                                       ; preds = %if.then550, %do.body538
  %274 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %readdir_cache_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp557 = icmp slt i32 %275, 0
  br i1 %cmp557, label %do.body566, label %do.end574, !prof !267

do.body566:                                       ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 570, 0\0A.popsection", ""() #14, !srcloc !270
  unreachable

do.end574:                                        ; preds = %do.body555
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl i32 %275, 2
  %conv576 = zext i32 %mul to i64
  tail call fastcc void @i_size_write(ptr noundef %3, i64 noundef %conv576)
  br label %if.end595

do.body578:                                       ; preds = %if.then531
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then590)) #14
          to label %if.end595 [label %if.then590], !srcloc !259

if.then590:                                       ; preds = %do.body578
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.58, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 574, ptr noundef %3) #14
  br label %if.end595

if.end595:                                        ; preds = %if.then590, %do.body578, %do.end574
  %276 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %dir_release_count, align 8
  %278 = ptrtoint ptr %dir_ordered_count to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %dir_ordered_count, align 8
  tail call fastcc void @__ceph_dir_set_complete(ptr noundef %add.ptr.i, i64 noundef %277, i64 noundef %279)
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  br label %do.body600

do.body600:                                       ; preds = %if.end595, %if.end522.do.body600_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir, %if.then612)) #14
          to label %cleanup617 [label %if.then612], !srcloc !259

if.then612:                                       ; preds = %do.body600
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.60, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 581, ptr noundef %3, ptr noundef %file) #14
  br label %cleanup617

cleanup617:                                       ; preds = %if.then612, %do.body600, %if.then462, %do.body450, %cond.end.cleanup617_crit_edge, %if.then189, %if.then169, %if.then.i.i920, %if.then10.i.i.i.i.i919, %if.end5.i.i.i.i.i918.cleanup617_crit_edge, %if.then150, %if.then89.cleanup617_crit_edge, %do.end62.cleanup617_crit_edge, %ceph_present_inode.exit.cleanup617_crit_edge, %do.end.cleanup617_crit_edge
  %retval.11 = phi i32 [ %call92, %if.then89.cleanup617_crit_edge ], [ 0, %do.end.cleanup617_crit_edge ], [ 0, %ceph_present_inode.exit.cleanup617_crit_edge ], [ 0, %if.then612 ], [ 0, %do.end62.cleanup617_crit_edge ], [ 0, %if.then462 ], [ 0, %do.body450 ], [ 0, %do.body600 ], [ %call153, %if.then.i.i920 ], [ %call153, %if.then10.i.i.i.i.i919 ], [ %call153, %if.end5.i.i.i.i.i918.cleanup617_crit_edge ], [ %94, %if.then150 ], [ -12, %if.then169 ], [ %call186, %if.then189 ], [ %call292, %cond.end.cleanup617_crit_edge ]
  ret i32 %retval.11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_ioctl(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_open(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_lock(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_flock(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_permission(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ceph_mknod(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_link(ptr noundef %old_dentry, ptr noundef %dir, ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
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
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %6 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %cmp.not = icmp eq i64 %7, -2
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_link.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_link, %if.then5)) #14
          to label %do.end [label %if.then5], !srcloc !259

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_link.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.83, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1035, ptr noundef %dir, ptr noundef %old_dentry, ptr noundef %dentry) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %call8 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef 4610, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_drop(ptr noundef %dentry) #14
  %8 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end12.dget.exit_crit_edge, label %if.then.i

if.end12.dget.exit_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end12.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 6
  %9 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 40
  %10 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %r_num_caps, align 4
  %tobool.not.i52 = icmp eq ptr %old_dentry, null
  br i1 %tobool.not.i52, label %dget.exit.dget.exit55_crit_edge, label %if.then.i54

dget.exit.dget.exit55_crit_edge:                  ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit55

if.then.i54:                                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i53 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i53) #14
  br label %dget.exit55

dget.exit55:                                      ; preds = %if.then.i54, %dget.exit.dget.exit55_crit_edge
  %r_old_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 7
  %11 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %old_dentry, ptr %r_old_dentry, align 8
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 13
  %12 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dir, ptr %r_parent, align 8
  tail call void @ihold(ptr noundef %dir) #14
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #14
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 27
  %13 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 256, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 28
  %14 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 512, ptr %r_dentry_unless, align 8
  %r_old_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 32
  %15 = ptrtoint ptr %r_old_inode_drop to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 48, ptr %r_old_inode_drop, align 8
  %call15 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef %dir, ptr noundef %call8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %dget.exit55
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_drop(ptr noundef %dentry) #14
  br label %if.end23

if.else:                                          ; preds = %dget.exit55
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 36
  %16 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.then19, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %20 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d_inode.i, align 8
  tail call void @ihold(ptr noundef %21) #14
  %22 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %d_inode.i, align 8
  tail call void @d_instantiate(ptr noundef %dentry, ptr noundef %23) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.else.if.end23_crit_edge, %if.then17
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then10 ], [ -30, %entry.cleanup_crit_edge ], [ %call15, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call15, %if.then10.i.i.i.i.i ], [ %call15, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_unlink(ptr noundef %dir, ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc1, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mount_options, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp ne i32 %12, 0
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %14 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.133)
  switch i64 %15, label %entry.out_crit_edge [
    i64 -1, label %do.body
    i64 -2, label %do.body16
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_unlink.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_unlink, %if.then11)) #14
          to label %if.end36 [label %if.then11], !srcloc !259

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_unlink.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.86, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1149, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dentry) #14
  br label %if.end36

do.body16:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_unlink.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_unlink, %if.then28)) #14
          to label %do.end32 [label %if.then28], !srcloc !259

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_unlink.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.88, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1153, ptr noundef %dir, ptr noundef %dentry, ptr noundef %7) #14
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  %16 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dentry, align 8
  %18 = and i32 %17, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %18)
  %19 = icmp eq i32 %18, 2097152
  %cond = select i1 %19, i32 4641, i32 4611
  br label %if.end36

if.end36:                                         ; preds = %do.end32, %if.then11, %do.body
  %op.0 = phi i32 [ %cond, %do.end32 ], [ 5121, %if.then11 ], [ 5121, %do.body ]
  %call37183 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef %op.0, i32 noundef 2) #14
  %cmp.i184 = icmp ugt ptr %call37183, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %if.end36.if.then39_crit_edge, label %if.end41.lr.ph

if.end36.if.then39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

if.end41.lr.ph:                                   ; preds = %if.end36
  %tobool.not.i = icmp eq ptr %dentry, null
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4611, i32 %op.0)
  %cmp45 = icmp eq i32 %op.0, 4611
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -952
  %i_ceph_lock.i = getelementptr i8, ptr %dir, i32 -936
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %i_shared_gen.i = getelementptr i8, ptr %dir, i32 -180
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  br label %if.end41

if.then39:                                        ; preds = %ceph_mdsc_put_request.exit.if.then39_crit_edge, %if.end36.if.then39_crit_edge
  %call37.lcssa = phi ptr [ %call37183, %if.end36.if.then39_crit_edge ], [ %call37, %ceph_mdsc_put_request.exit.if.then39_crit_edge ]
  %20 = ptrtoint ptr %call37.lcssa to i32
  br label %out

if.end41:                                         ; preds = %ceph_mdsc_put_request.exit.if.end41_crit_edge, %if.end41.lr.ph
  %call37186 = phi ptr [ %call37183, %if.end41.lr.ph ], [ %call37, %ceph_mdsc_put_request.exit.if.end41_crit_edge ]
  %try_async.0.off0185 = phi i1 [ %13, %if.end41.lr.ph ], [ false, %ceph_mdsc_put_request.exit.if.end41_crit_edge ]
  br i1 %tobool.not.i, label %if.end41.dget.exit_crit_edge, label %if.then.i

if.end41.dget.exit_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end41.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 6
  %21 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 40
  %22 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %r_num_caps, align 4
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 13
  %23 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dir, ptr %r_parent, align 8
  tail call void @ihold(ptr noundef %dir) #14
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 27
  %24 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 28
  %25 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %r_dentry_unless, align 8
  %call43 = tail call i32 @ceph_drop_caps_for_unlink(ptr noundef %7) #14
  %r_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 25
  %26 = ptrtoint ptr %r_inode_drop to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call43, ptr %r_inode_drop, align 4
  %or.cond = and i1 %try_async.0.off0185, %cmp45
  br i1 %or.cond, label %land.lhs.true46, label %dget.exit.if.else81_crit_edge

dget.exit.if.else81_crit_edge:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else81

land.lhs.true46:                                  ; preds = %dget.exit
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #14
  %call1.i = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i.i, ptr noundef null) #14
  %and.i = and i32 %call1.i, 2560
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %and.i)
  %cmp.i146 = icmp eq i32 %and.i, 2560
  br i1 %cmp.i146, label %if.end4.i, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #14
  br label %get_caps_for_async_unlink.exit.thread

if.end4.i:                                        ; preds = %land.lhs.true46
  tail call void @ceph_take_cap_refs(ptr noundef %add.ptr.i.i, i32 noundef 2560, i1 noundef zeroext false) #14
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #14
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #14
  %27 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_fsdata.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen.i, i32 noundef 4) #14
  %29 = ptrtoint ptr %i_shared_gen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %i_shared_gen.i, align 4
  %lease_shared_gen.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %lease_shared_gen.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lease_shared_gen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp7.not.i = icmp eq i32 %30, %32
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.end4.i.if.end16.i_crit_edge

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %flags.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %28, i32 0, i32 3
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 8
  %and8.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.if.end16.i_crit_edge, label %do.body50

lor.lhs.false.i.if.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

if.end16.i:                                       ; preds = %lor.lhs.false.i.if.end16.i_crit_edge, %if.end4.i.if.end16.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #14
  tail call void @ceph_put_cap_refs(ptr noundef %add.ptr.i.i, i32 noundef 2560) #14
  br label %get_caps_for_async_unlink.exit.thread

get_caps_for_async_unlink.exit.thread:            ; preds = %if.end16.i, %if.end.i
  %r_dir_caps163 = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 39
  %35 = ptrtoint ptr %r_dir_caps163 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %r_dir_caps163, align 8
  br label %if.else81

do.body50:                                        ; preds = %lor.lhs.false.i
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #14
  %r_dir_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 39
  %36 = ptrtoint ptr %r_dir_caps to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2560, ptr %r_dir_caps, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_unlink.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_unlink, %if.then62)) #14
          to label %do.end70 [label %if.then62], !srcloc !259

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr.i.i, align 8
  %39 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d_name, align 8
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 8
  %43 = ptrtoint ptr %r_dir_caps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %r_dir_caps, align 8
  %call67 = tail call ptr @ceph_cap_string(i32 noundef %44) #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_unlink.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.90, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1176, i64 noundef %38, i32 noundef %40, ptr noundef %42, ptr noundef %call67) #14
  br label %do.end70

do.end70:                                         ; preds = %if.then62, %do.body50
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 8, ptr noundef %r_req_flags) #14
  %r_callback = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 59
  %45 = ptrtoint ptr %r_callback to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ceph_async_unlink_cb, ptr %r_callback, align 8
  %46 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i, align 8
  %r_old_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 31
  %48 = ptrtoint ptr %r_old_inode to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %r_old_inode, align 4
  tail call void @ihold(ptr noundef %47) #14
  %call73 = tail call i32 @ceph_mdsc_submit_request(ptr noundef %5, ptr noundef %dir, ptr noundef %call37186) #14
  %49 = zext i32 %call73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call73, label %do.end70.if.end89_crit_edge [
    i32 0, label %if.then75
    i32 -528, label %if.then78
  ]

do.end70.if.end89_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then75:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @drop_nlink(ptr noundef %7) #14
  br label %if.end89.sink.split

if.then78:                                        ; preds = %do.end70
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  %call37 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef 4611, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ceph_mdsc_put_request.exit.if.then39_crit_edge, label %ceph_mdsc_put_request.exit.if.end41_crit_edge

ceph_mdsc_put_request.exit.if.end41_crit_edge:    ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

ceph_mdsc_put_request.exit.if.then39_crit_edge:   ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then39

if.else81:                                        ; preds = %get_caps_for_async_unlink.exit.thread, %dget.exit.if.else81_crit_edge
  %r_req_flags82 = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags82) #14
  %call83 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef %dir, ptr noundef %call37186) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.lhs.true85, label %if.else81.if.end89_crit_edge

if.else81.if.end89_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

land.lhs.true85:                                  ; preds = %if.else81
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 36
  %51 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool86.not = icmp eq i8 %54, 0
  br i1 %tobool86.not, label %land.lhs.true85.if.end89.sink.split_crit_edge, label %land.lhs.true85.if.end89_crit_edge

land.lhs.true85.if.end89_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

land.lhs.true85.if.end89.sink.split_crit_edge:    ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.sink.split

if.end89.sink.split:                              ; preds = %land.lhs.true85.if.end89.sink.split_crit_edge, %if.then75
  tail call void @d_delete(ptr noundef %dentry) #14
  br label %if.end89

if.end89:                                         ; preds = %if.end89.sink.split, %land.lhs.true85.if.end89_crit_edge, %if.else81.if.end89_crit_edge, %do.end70.if.end89_crit_edge
  %err.0 = phi i32 [ %call83, %if.else81.if.end89_crit_edge ], [ 0, %land.lhs.true85.if.end89_crit_edge ], [ 0, %if.end89.sink.split ], [ %call73, %do.end70.if.end89_crit_edge ]
  %r_kref.i151 = getelementptr inbounds %struct.ceph_mds_request, ptr %call37186, i32 0, i32 3
  %call.i.i.i.i.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i151, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i151, i32 1, i32 3, i32 1) #14
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i151, ptr %r_kref.i151, i32 1, ptr elementtype(i32) %r_kref.i151) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i153)
  %cmp.i.i.i.i.i154 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i153, 1
  br i1 %cmp.i.i.i.i.i154, label %if.then.i.i158, label %if.end5.i.i.i.i.i156

if.end5.i.i.i.i.i156:                             ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i153)
  %.not.i.i.i.i.i155 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i153, 0
  br i1 %.not.i.i.i.i.i155, label %if.end5.i.i.i.i.i156.out_crit_edge, label %if.then10.i.i.i.i.i157, !prof !262

if.end5.i.i.i.i.i156.out_crit_edge:               ; preds = %if.end5.i.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then10.i.i.i.i.i157:                           ; preds = %if.end5.i.i.i.i.i156
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i151, i32 noundef 3) #14
  br label %out

if.then.i.i158:                                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i151) #14
  br label %out

out:                                              ; preds = %if.then.i.i158, %if.then10.i.i.i.i.i157, %if.end5.i.i.i.i.i156.out_crit_edge, %if.then39, %entry.out_crit_edge
  %err.1 = phi i32 [ %20, %if.then39 ], [ %err.0, %if.end5.i.i.i.i.i156.out_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i157 ], [ %err.0, %if.then.i.i158 ], [ -30, %entry.out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dest) #2 align 64 {
entry:
  %as_ctx = alloca %struct.ceph_acl_sec_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %as_ctx) #14
  %6 = call ptr @memset(ptr %as_ctx, i32 0, i32 20)
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %7 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %8)
  %cmp.not = icmp eq i64 %8, -2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @ceph_quota_is_max_files_exceeded(ptr noundef %dir) #14
  br i1 %call2, label %if.end.if.then38_crit_edge, label %if.end4

if.end.if.then38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ceph_security_init_secctx(ptr noundef %dentry, i16 noundef zeroext -24065, ptr noundef nonnull %as_ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.if.then38_crit_edge, label %do.body

if.end4.if.then38_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_symlink.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_symlink, %if.then12)) #14
          to label %do.end [label %if.then12], !srcloc !259

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_symlink.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.96, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 921, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dest) #14
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %call15 = call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef 4642, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call15 to i32
  br label %out

if.end19:                                         ; preds = %do.end
  %call20 = call noalias ptr @kstrdup(ptr noundef %dest, i32 noundef 3264) #14
  %r_path2 = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 10
  %10 = ptrtoint ptr %r_path2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %r_path2, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %11 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then38_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.if.then38_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %if.then38

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %if.then38

if.end24:                                         ; preds = %if.end19
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 13
  %12 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dir, ptr %r_parent, align 8
  call void @ihold(ptr noundef %dir) #14
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 15
  call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #14
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end24.dget.exit_crit_edge, label %if.then.i

if.end24.dget.exit_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end24.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 6
  %13 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 40
  %14 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %r_num_caps, align 4
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 27
  %15 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 264, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 28
  %16 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %r_dentry_unless, align 8
  %pagelist = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %17 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pagelist, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %dget.exit.if.end30_crit_edge, label %if.then27

dget.exit.if.end30_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %r_pagelist = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 24
  %19 = ptrtoint ptr %r_pagelist to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %r_pagelist, align 8
  %20 = ptrtoint ptr %pagelist to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pagelist, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %dget.exit.if.end30_crit_edge
  %call31 = call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef %dir, ptr noundef %call15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end30
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 36
  %21 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool33.not = icmp eq i8 %24, 0
  br i1 %tobool33.not, label %if.then34, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call35 = call i32 @ceph_handle_notrace_create(ptr noundef %dir, ptr noundef %dentry)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  %err.0 = phi i32 [ %call31, %if.end30.if.end36_crit_edge ], [ 0, %land.lhs.true.if.end36_crit_edge ], [ %call35, %if.then34 ]
  %r_kref.i73 = getelementptr inbounds %struct.ceph_mds_request, ptr %call15, i32 0, i32 3
  %call.i.i.i.i.i.i.i74 = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i73, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  call void @llvm.prefetch.p0(ptr %r_kref.i73, i32 1, i32 3, i32 1) #14
  %25 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i73, ptr %r_kref.i73, i32 1, ptr elementtype(i32) %r_kref.i73) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i75 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i75)
  %cmp.i.i.i.i.i76 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i75, 1
  br i1 %cmp.i.i.i.i.i76, label %if.then.i.i80, label %if.end5.i.i.i.i.i78

if.end5.i.i.i.i.i78:                              ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i75)
  %.not.i.i.i.i.i77 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i75, 0
  br i1 %.not.i.i.i.i.i77, label %if.end5.i.i.i.i.i78.out_crit_edge, label %if.then10.i.i.i.i.i79, !prof !262

if.end5.i.i.i.i.i78.out_crit_edge:                ; preds = %if.end5.i.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then10.i.i.i.i.i79:                            ; preds = %if.end5.i.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %r_kref.i73, i32 noundef 3) #14
  br label %out

if.then.i.i80:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i73) #14
  br label %out

out:                                              ; preds = %if.then.i.i80, %if.then10.i.i.i.i.i79, %if.end5.i.i.i.i.i78.out_crit_edge, %if.then17
  %err.1 = phi i32 [ %9, %if.then17 ], [ %err.0, %if.end5.i.i.i.i.i78.out_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i79 ], [ %err.0, %if.then.i.i80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool37.not = icmp eq i32 %err.1, 0
  br i1 %tobool37.not, label %out.if.end39_crit_edge, label %out.if.then38_crit_edge

out.if.then38_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then38

out.if.end39_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then38:                                        ; preds = %out.if.then38_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then38_crit_edge, %if.end4.if.then38_crit_edge, %if.end.if.then38_crit_edge
  %err.185 = phi i32 [ %err.1, %out.if.then38_crit_edge ], [ -12, %if.then.i.i ], [ -12, %if.then10.i.i.i.i.i ], [ -12, %if.end5.i.i.i.i.i.if.then38_crit_edge ], [ -122, %if.end.if.then38_crit_edge ], [ %call5, %if.end4.if.then38_crit_edge ]
  call void @d_drop(ptr noundef %dentry) #14
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %out.if.end39_crit_edge
  %err.186 = phi i32 [ %err.185, %if.then38 ], [ 0, %out.if.end39_crit_edge ]
  call void @ceph_release_acl_sec_ctx(ptr noundef nonnull %as_ctx) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.186, %if.end39 ], [ -30, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %as_ctx) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #2 align 64 {
entry:
  %mode.addr = alloca i16, align 2
  %as_ctx = alloca %struct.ceph_acl_sec_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %mode.addr, align 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdsc.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %as_ctx) #14
  %7 = call ptr @memset(ptr %as_ctx, i32 0, i32 20)
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %8 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mkdir.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mkdir, %if.end29.thread)) #14
          to label %if.end29 [label %if.end29.thread], !srcloc !259

if.end29.thread:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mkdir.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.99, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 969, ptr noundef %dir, ptr noundef %dentry, ptr noundef %dentry) #14
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %9)
  %cmp8 = icmp eq i64 %9, -2
  br i1 %cmp8, label %do.body10, label %if.else.if.else75_crit_edge

if.else.if.else75_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mkdir.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mkdir, %if.end29.thread121)) #14
          to label %if.end29 [label %if.end29.thread121], !srcloc !259

if.end29.thread121:                               ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode.addr, align 2
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mkdir.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.101, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 971, ptr noundef %dir, ptr noundef %dentry, i32 noundef %conv) #14
  br label %land.lhs.true

if.end29:                                         ; preds = %do.body10, %if.then
  %op.0 = phi i32 [ 5120, %if.then ], [ 4640, %do.body10 ]
  br i1 %cmp, label %if.end29.if.end35_crit_edge, label %if.end29.land.lhs.true_crit_edge

if.end29.land.lhs.true_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end29.land.lhs.true_crit_edge, %if.end29.thread121
  %op.0123 = phi i32 [ 4640, %if.end29.thread121 ], [ %op.0, %if.end29.land.lhs.true_crit_edge ]
  %call32 = tail call zeroext i1 @ceph_quota_is_max_files_exceeded(ptr noundef %dir) #14
  br i1 %call32, label %land.lhs.true.if.else75_crit_edge, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true.if.else75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

if.end35:                                         ; preds = %land.lhs.true.if.end35_crit_edge, %if.end29.if.end35_crit_edge, %if.end29.thread
  %op.0120 = phi i32 [ 5120, %if.end29.thread ], [ %op.0123, %land.lhs.true.if.end35_crit_edge ], [ %op.0, %if.end29.if.end35_crit_edge ]
  %12 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode.addr, align 2
  %14 = or i16 %13, 16384
  store i16 %14, ptr %mode.addr, align 2
  %call38 = call i32 @ceph_pre_init_acls(ptr noundef %dir, ptr noundef nonnull %mode.addr, ptr noundef nonnull %as_ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end35.if.else75_crit_edge, label %if.end42

if.end35.if.else75_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

if.end42:                                         ; preds = %if.end35
  %15 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode.addr, align 2
  %call43 = call i32 @ceph_security_init_secctx(ptr noundef %dentry, i16 noundef zeroext %16, ptr noundef nonnull %as_ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.if.else75_crit_edge, label %if.end47

if.end42.if.else75_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

if.end47:                                         ; preds = %if.end42
  %call48 = call ptr @ceph_mdsc_create_request(ptr noundef %6, i32 noundef %op.0120, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %call48 to i32
  br label %out

if.end52:                                         ; preds = %if.end47
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end52.dget.exit_crit_edge, label %if.then.i

if.end52.dget.exit_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end52.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 6
  %18 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 40
  %19 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %r_num_caps, align 4
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 13
  %20 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dir, ptr %r_parent, align 8
  call void @ihold(ptr noundef %dir) #14
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 15
  call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #14
  %21 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mode.addr, align 2
  %conv54 = zext i16 %22 to i32
  %23 = call i32 @llvm.bswap.i32(i32 %conv54)
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 17
  %24 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %r_args, align 8
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 27
  %25 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 264, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 28
  %26 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 512, ptr %r_dentry_unless, align 8
  %pagelist = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %27 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pagelist, align 4
  %tobool56.not = icmp eq ptr %28, null
  br i1 %tobool56.not, label %dget.exit.if.end60_crit_edge, label %if.then57

dget.exit.if.end60_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then57:                                        ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %r_pagelist = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 24
  %29 = ptrtoint ptr %r_pagelist to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %r_pagelist, align 8
  %30 = ptrtoint ptr %pagelist to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pagelist, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %dget.exit.if.end60_crit_edge
  %call61 = call i32 @ceph_mdsc_do_request(ptr noundef %6, ptr noundef %dir, ptr noundef %call48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %if.end60.if.end71_crit_edge

if.end60.if.end71_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true63:                                  ; preds = %if.end60
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 36
  %31 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %r_reply_info, align 8
  %is_target = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %is_target to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_target, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool64.not = icmp eq i8 %34, 0
  br i1 %tobool64.not, label %land.lhs.true65, label %land.lhs.true63.if.end71_crit_edge

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

land.lhs.true65:                                  ; preds = %land.lhs.true63
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %32, i32 0, i32 4
  %35 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool68.not = icmp eq i8 %36, 0
  br i1 %tobool68.not, label %if.then69, label %land.lhs.true65.if.end71_crit_edge

land.lhs.true65.if.end71_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #16
  %call70 = call i32 @ceph_handle_notrace_create(ptr noundef %dir, ptr noundef %dentry)
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %land.lhs.true65.if.end71_crit_edge, %land.lhs.true63.if.end71_crit_edge, %if.end60.if.end71_crit_edge
  %err.0 = phi i32 [ %call61, %if.end60.if.end71_crit_edge ], [ 0, %land.lhs.true63.if.end71_crit_edge ], [ 0, %land.lhs.true65.if.end71_crit_edge ], [ %call70, %if.then69 ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call48, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %out

if.then.i.i:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.then50
  %err.1 = phi i32 [ %17, %if.then50 ], [ %err.0, %if.end5.i.i.i.i.i.out_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool72.not = icmp eq i32 %err.1, 0
  br i1 %tobool72.not, label %if.then73, label %out.if.else75_crit_edge

out.if.else75_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else75

if.then73:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %38 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %d_inode.i, align 8
  call void @ceph_init_inode_acls(ptr noundef %39, ptr noundef nonnull %as_ctx) #14
  br label %if.end76

if.else75:                                        ; preds = %out.if.else75_crit_edge, %if.end42.if.else75_crit_edge, %if.end35.if.else75_crit_edge, %land.lhs.true.if.else75_crit_edge, %if.else.if.else75_crit_edge
  %err.1127 = phi i32 [ %err.1, %out.if.else75_crit_edge ], [ -122, %land.lhs.true.if.else75_crit_edge ], [ -30, %if.else.if.else75_crit_edge ], [ %call43, %if.end42.if.else75_crit_edge ], [ %call38, %if.end35.if.else75_crit_edge ]
  call void @d_drop(ptr noundef %dentry) #14
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then73
  %err.1126 = phi i32 [ %err.1127, %if.else75 ], [ 0, %if.then73 ]
  call void @ceph_release_acl_sec_ctx(ptr noundef nonnull %as_ctx) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %as_ctx) #14
  ret i32 %err.1126
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #2 align 64 {
entry:
  %mode.addr = alloca i16, align 2
  %as_ctx = alloca %struct.ceph_acl_sec_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %mode, ptr %mode.addr, align 2
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdsc.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %as_ctx) #14
  %7 = call ptr @memset(ptr %as_ctx, i32 0, i32 20)
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %8 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %9)
  %cmp.not = icmp eq i64 %9, -2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @ceph_quota_is_max_files_exceeded(ptr noundef %dir) #14
  br i1 %call2, label %if.end.if.else_crit_edge, label %if.end4

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @ceph_pre_init_acls(ptr noundef %dir, ptr noundef nonnull %mode.addr, ptr noundef nonnull %as_ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.if.else_crit_edge, label %if.end8

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.end8:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode.addr, align 2
  %call9 = call i32 @ceph_security_init_secctx(ptr noundef %dentry, i16 noundef zeroext %11, ptr noundef nonnull %as_ctx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.if.else_crit_edge, label %do.body

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

do.body:                                          ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_mknod.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_mknod, %if.then16)) #14
          to label %do.end [label %if.then16], !srcloc !259

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode.addr, align 2
  %conv = zext i16 %13 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_mknod.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.104, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 863, ptr noundef %dir, ptr noundef %dentry, i32 noundef %conv, i32 noundef %rdev) #14
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %call19 = call ptr @ceph_mdsc_create_request(ptr noundef %6, i32 noundef 4609, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %call19 to i32
  br label %out

if.end23:                                         ; preds = %do.end
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.end23.dget.exit_crit_edge, label %if.then.i

if.end23.dget.exit_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end23.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 6
  %15 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 40
  %16 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %r_num_caps, align 4
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 13
  %17 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dir, ptr %r_parent, align 8
  call void @ihold(ptr noundef %dir) #14
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 15
  call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #14
  %18 = ptrtoint ptr %mode.addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mode.addr, align 2
  %conv25 = zext i16 %19 to i32
  %20 = call i32 @llvm.bswap.i32(i32 %conv25)
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 17
  %21 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %r_args, align 8
  %22 = call i32 @llvm.bswap.i32(i32 %rdev)
  %rdev28 = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 17, i32 0, i32 1
  %23 = ptrtoint ptr %rdev28 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rdev28, align 4
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 27
  %24 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 264, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 28
  %25 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 512, ptr %r_dentry_unless, align 8
  %pagelist = getelementptr inbounds %struct.ceph_acl_sec_ctx, ptr %as_ctx, i32 0, i32 4
  %26 = ptrtoint ptr %pagelist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pagelist, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %dget.exit.if.end33_crit_edge, label %if.then30

dget.exit.if.end33_crit_edge:                     ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then30:                                        ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %r_pagelist = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 24
  %28 = ptrtoint ptr %r_pagelist to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %r_pagelist, align 8
  %29 = ptrtoint ptr %pagelist to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %pagelist, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %dget.exit.if.end33_crit_edge
  %call34 = call i32 @ceph_mdsc_do_request(ptr noundef %6, ptr noundef %dir, ptr noundef %call19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end33
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 36
  %30 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool36.not = icmp eq i8 %33, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = call i32 @ceph_handle_notrace_create(ptr noundef %dir, ptr noundef %dentry)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true.if.end39_crit_edge, %if.end33.if.end39_crit_edge
  %err.0 = phi i32 [ %call34, %if.end33.if.end39_crit_edge ], [ 0, %land.lhs.true.if.end39_crit_edge ], [ %call38, %if.then37 ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call19, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.out_crit_edge:                  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %out

if.then.i.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %out

out:                                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_crit_edge, %if.then21
  %err.1 = phi i32 [ %14, %if.then21 ], [ %err.0, %if.end5.i.i.i.i.i.out_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i ], [ %err.0, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool40.not = icmp eq i32 %err.1, 0
  br i1 %tobool40.not, label %if.then41, label %out.if.else_crit_edge

out.if.else_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then41:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %35 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_inode.i, align 8
  call void @ceph_init_inode_acls(ptr noundef %36, ptr noundef nonnull %as_ctx) #14
  br label %if.end43

if.else:                                          ; preds = %out.if.else_crit_edge, %if.end8.if.else_crit_edge, %if.end4.if.else_crit_edge, %if.end.if.else_crit_edge
  %err.183 = phi i32 [ %err.1, %out.if.else_crit_edge ], [ -122, %if.end.if.else_crit_edge ], [ %call9, %if.end8.if.else_crit_edge ], [ %call5, %if.end4.if.else_crit_edge ]
  call void @d_drop(ptr noundef %dentry) #14
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then41
  %err.182 = phi i32 [ %err.183, %if.else ], [ 0, %if.then41 ]
  call void @ceph_release_acl_sec_ctx(ptr noundef nonnull %as_ctx) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.182, %if.end43 ], [ -30, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %as_ctx) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not = icmp eq i32 %flags, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %snap.i = getelementptr i8, ptr %old_dir, i32 -944
  %6 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap.i, align 8
  %snap.i87 = getelementptr i8, ptr %new_dir, i32 -944
  %8 = ptrtoint ptr %snap.i87 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %snap.i87, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp.not = icmp eq i64 %7, %9
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %cmp6.not = icmp eq i64 %7, -2
  br i1 %cmp6.not, label %if.end4.if.end13_crit_edge, label %if.then7

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then7:                                         ; preds = %if.end4
  %cmp8 = icmp eq ptr %old_dir, %new_dir
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp10 = icmp eq i64 %7, -1
  %or.cond = select i1 %cmp8, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %op.0 = phi i32 [ 4612, %if.end4.if.end13_crit_edge ], [ 5123, %if.then7.if.end13_crit_edge ]
  %cmp14.not = icmp eq ptr %old_dir, %new_dir
  br i1 %cmp14.not, label %if.end13.do.body_crit_edge, label %land.lhs.true15

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true15:                                  ; preds = %if.end13
  %call16 = tail call zeroext i1 @ceph_quota_is_same_realm(ptr noundef %old_dir, ptr noundef %new_dir) #14
  br i1 %call16, label %land.lhs.true15.do.body_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true15.do.body_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %land.lhs.true15.do.body_crit_edge, %if.end13.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_rename.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_rename, %if.then23)) #14
          to label %do.end [label %if.then23], !srcloc !259

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_rename.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1232, ptr noundef %old_dir, ptr noundef %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry) #14
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %call26 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef %op.0, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %do.end
  tail call void @ihold(ptr noundef %old_dir) #14
  %tobool.not.i = icmp eq ptr %new_dentry, null
  br i1 %tobool.not.i, label %if.end30.dget.exit_crit_edge, label %if.then.i

if.end30.dget.exit_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.end30.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 6
  %11 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %new_dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 40
  %12 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %r_num_caps, align 4
  %tobool.not.i90 = icmp eq ptr %old_dentry, null
  br i1 %tobool.not.i90, label %dget.exit.dget.exit93_crit_edge, label %if.then.i92

dget.exit.dget.exit93_crit_edge:                  ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit93

if.then.i92:                                      ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i91 = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i91) #14
  br label %dget.exit93

dget.exit93:                                      ; preds = %if.then.i92, %dget.exit.dget.exit93_crit_edge
  %r_old_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 7
  %13 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %old_dentry, ptr %r_old_dentry, align 8
  %r_old_dentry_dir = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 8
  %14 = ptrtoint ptr %r_old_dentry_dir to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %old_dir, ptr %r_old_dentry_dir, align 4
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 13
  %15 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %new_dir, ptr %r_parent, align 8
  tail call void @ihold(ptr noundef %new_dir) #14
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 15
  tail call void @_set_bit(i32 noundef 7, ptr noundef %r_req_flags) #14
  %r_old_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 29
  %16 = ptrtoint ptr %r_old_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %r_old_dentry_drop, align 4
  %r_old_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 30
  %17 = ptrtoint ptr %r_old_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %r_old_dentry_unless, align 8
  %r_dentry_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 27
  %18 = ptrtoint ptr %r_dentry_drop to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %r_dentry_drop, align 4
  %r_dentry_unless = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 28
  %19 = ptrtoint ptr %r_dentry_unless to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 512, ptr %r_dentry_unless, align 8
  %r_old_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 32
  %20 = ptrtoint ptr %r_old_inode_drop to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 48, ptr %r_old_inode_drop, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %21 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_inode.i, align 8
  %cmp.i94.not = icmp eq ptr %22, null
  br i1 %cmp.i94.not, label %dget.exit93.if.end37_crit_edge, label %if.then34

dget.exit93.if.end37_crit_edge:                   ; preds = %dget.exit93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then34:                                        ; preds = %dget.exit93
  call void @__sanitizer_cov_trace_pc() #16
  %call36 = tail call i32 @ceph_drop_caps_for_unlink(ptr noundef nonnull %22) #14
  %r_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 25
  %23 = ptrtoint ptr %r_inode_drop to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call36, ptr %r_inode_drop, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %dget.exit93.if.end37_crit_edge
  %call38 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef %old_dir, ptr noundef %call26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %if.end37.if.end43_crit_edge

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

land.lhs.true40:                                  ; preds = %if.end37
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 36
  %24 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_dentry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool41.not = icmp eq i8 %27, 0
  br i1 %tobool41.not, label %if.then42, label %land.lhs.true40.if.end43_crit_edge

land.lhs.true40.if.end43_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_move(ptr noundef %old_dentry, ptr noundef %new_dentry) #14
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %land.lhs.true40.if.end43_crit_edge, %if.end37.if.end43_crit_edge
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then28, %land.lhs.true15.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then28 ], [ -22, %entry.cleanup_crit_edge ], [ -18, %if.end.cleanup_crit_edge ], [ -30, %if.then7.cleanup_crit_edge ], [ -18, %land.lhs.true15.cleanup_crit_edge ], [ %call38, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ %call38, %if.then10.i.i.i.i.i ], [ %call38, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_setattr(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_listxattr(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_atomic_open(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_d_revalidate(ptr noundef %dentry, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %d_inode.i, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %do.end.cleanup140_crit_edge, label %if.end

do.end.cleanup140_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup140

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i210 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i210 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %d_inode.i210, align 8
  br label %do.body8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call ptr @dget_parent(ptr noundef %dentry) #14
  %d_inode.i211 = getelementptr inbounds %struct.dentry, ptr %call4, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i211 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i211, align 8
  %d_inode.i212 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i212 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i212, align 8
  br label %do.body8

do.body8:                                         ; preds = %if.else, %if.end
  %inode.0 = phi ptr [ %5, %if.end ], [ %9, %if.else ]
  %dir.0 = phi ptr [ %3, %if.end ], [ %7, %if.else ]
  %parent.0 = phi ptr [ %1, %if.end ], [ %call4, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_d_revalidate, %if.then14)) #14
          to label %do.end19 [label %if.then14], !srcloc !259

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata.i, align 4
  %offset = getelementptr inbounds %struct.ceph_dentry_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_d_revalidate.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.110, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1699, ptr noundef %dentry, ptr noundef %dentry, ptr noundef %inode.0, i64 noundef %13) #14
  br label %do.end19

do.end19:                                         ; preds = %if.then14, %do.body8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir.0, i32 0, i32 8
  %14 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc21 = getelementptr inbounds %struct.ceph_fs_client, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %mdsc21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdsc21, align 8
  %snap.i = getelementptr i8, ptr %dir.0, i32 -944
  %20 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %21)
  %cmp.not = icmp eq i64 %21, -2
  br i1 %cmp.not, label %if.else41, label %do.body24

do.body24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_d_revalidate, %if.then36)) #14
          to label %if.end62 [label %if.then36], !srcloc !259

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_d_revalidate.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.112, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1706, ptr noundef %dentry, ptr noundef %dentry, ptr noundef %inode.0) #14
  br label %if.else111

if.else41:                                        ; preds = %do.end19
  %tobool42.not = icmp eq ptr %inode.0, null
  br i1 %tobool42.not, label %if.else41.if.else46_crit_edge, label %land.lhs.true

if.else41.if.else46_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else46

land.lhs.true:                                    ; preds = %if.else41
  %snap.i213 = getelementptr i8, ptr %inode.0, i32 -944
  %22 = ptrtoint ptr %snap.i213 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %snap.i213, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %cmp44 = icmp eq i64 %23, -1
  br i1 %cmp44, label %land.lhs.true.if.else111_crit_edge, label %land.lhs.true.if.else46_crit_edge

land.lhs.true.if.else46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else46

land.lhs.true.if.else111_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else111

if.else46:                                        ; preds = %land.lhs.true.if.else46_crit_edge, %if.else41.if.else46_crit_edge
  %call47 = tail call fastcc i32 @dentry_lease_is_valid(ptr noundef %dentry, i32 noundef %flags)
  %24 = zext i32 %call47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call47, label %if.then54 [
    i32 -10, label %if.else46.cleanup140_crit_edge
    i32 0, label %lor.lhs.false
  ]

if.else46.cleanup140_crit_edge:                   ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup140

lor.lhs.false:                                    ; preds = %if.else46
  %call52 = tail call fastcc i32 @dir_lease_is_valid(ptr noundef %dir.0, ptr noundef %dentry, ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  %brmerge = select i1 %tobool53.not, i1 true, i1 %tobool42.not
  %not.tobool53.not = xor i1 %tobool53.not, true
  %.mux = zext i1 %not.tobool53.not to i32
  br i1 %brmerge, label %lor.lhs.false.if.end62_crit_edge, label %lor.lhs.false.if.then56_crit_edge

lor.lhs.false.if.then56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

lor.lhs.false.if.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end62

if.then54:                                        ; preds = %if.else46
  br i1 %tobool42.not, label %if.then54.if.else111_crit_edge, label %if.then54.if.then56_crit_edge

if.then54.if.then56_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.then54.if.else111_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else111

if.then56:                                        ; preds = %if.then54.if.then56_crit_edge, %lor.lhs.false.if.then56_crit_edge
  %call57 = tail call i32 @ceph_is_any_caps(ptr noundef nonnull %inode.0) #14
  br label %if.end62

if.end62:                                         ; preds = %if.then56, %lor.lhs.false.if.end62_crit_edge, %do.body24
  %valid.0 = phi i32 [ %call57, %if.then56 ], [ %.mux, %lor.lhs.false.if.end62_crit_edge ], [ 1, %do.body24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.0)
  %tobool63.not = icmp eq i32 %valid.0, 0
  br i1 %tobool63.not, label %if.then64, label %if.end62.if.else111_crit_edge

if.end62.if.else111_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else111

if.then64:                                        ; preds = %if.end62
  br i1 %tobool.not, label %if.end68, label %if.then64.cleanup140_crit_edge

if.then64.cleanup140_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup140

if.end68:                                         ; preds = %if.then64
  %d_lease_mis = getelementptr inbounds %struct.ceph_mds_client, ptr %19, i32 0, i32 49, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %25 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %d_lease_mis, i64 noundef 1, i32 noundef %25) #14
  %26 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %27)
  %cmp70 = icmp eq i64 %27, -1
  %cond = select i1 %cmp70, i32 1024, i32 256
  %call71 = tail call ptr @ceph_mdsc_create_request(ptr noundef %19, i32 noundef %cond, i32 noundef 0) #14
  %cmp.i = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end68.do.body114_crit_edge, label %if.then73

if.end68.do.body114_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body114

if.then73:                                        ; preds = %if.end68
  %tobool.not.i = icmp eq ptr %dentry, null
  br i1 %tobool.not.i, label %if.then73.dget.exit_crit_edge, label %if.then.i

if.then73.dget.exit_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  br label %dget.exit

if.then.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #14
  br label %dget.exit

dget.exit:                                        ; preds = %if.then.i, %if.then73.dget.exit_crit_edge
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %call71, i32 0, i32 6
  %28 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dentry, ptr %r_dentry, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call71, i32 0, i32 40
  %29 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %r_num_caps, align 4
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %call71, i32 0, i32 13
  %30 = ptrtoint ptr %r_parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dir.0, ptr %r_parent, align 8
  tail call void @ihold(ptr noundef %dir.0) #14
  %call75 = tail call zeroext i1 @ceph_security_xattr_wanted(ptr noundef %dir.0) #14
  %spec.select = select i1 %call75, i32 1157627904, i32 83886080
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call71, i32 0, i32 17
  %31 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select, ptr %r_args, align 8
  %call79 = tail call i32 @ceph_mdsc_do_request(ptr noundef %19, ptr noundef null, ptr noundef %call71) #14
  %32 = zext i32 %call79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call79, label %dget.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb86
  ]

dget.exit.sw.epilog_crit_edge:                    ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %dget.exit
  %d_inode.i215 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i215 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i215, align 8
  %cmp.i216.not = icmp eq ptr %34, null
  br i1 %cmp.i216.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true81

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

land.lhs.true81:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call71, i32 0, i32 14
  %35 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %r_target_inode, align 4
  %cmp83 = icmp eq ptr %34, %36
  br label %sw.epilog

sw.bb86:                                          ; preds = %dget.exit
  call void @__sanitizer_cov_trace_pc() #16
  %d_inode.i218 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %37 = ptrtoint ptr %d_inode.i218 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i218, align 8
  %cmp.i219 = icmp eq ptr %38, null
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb86, %land.lhs.true81, %sw.bb.sw.epilog_crit_edge, %dget.exit.sw.epilog_crit_edge
  %valid.1.shrunk = phi i1 [ false, %dget.exit.sw.epilog_crit_edge ], [ false, %sw.bb.sw.epilog_crit_edge ], [ %cmp83, %land.lhs.true81 ], [ %cmp.i219, %sw.bb86 ]
  %valid.1 = zext i1 %valid.1.shrunk to i32
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call71, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !262

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_d_revalidate, %if.then102)) #14
          to label %do.body114 [label %if.then102], !srcloc !259

if.then102:                                       ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_d_revalidate.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.114, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1762, ptr noundef %dentry, i32 noundef %call79) #14
  br label %do.body114

if.else111:                                       ; preds = %if.end62.if.else111_crit_edge, %if.then54.if.else111_crit_edge, %land.lhs.true.if.else111_crit_edge, %if.then36
  %valid.0224 = phi i32 [ %valid.0, %if.end62.if.else111_crit_edge ], [ 1, %if.then36 ], [ 1, %land.lhs.true.if.else111_crit_edge ], [ 1, %if.then54.if.else111_crit_edge ]
  %d_lease_hit = getelementptr inbounds %struct.ceph_mds_client, ptr %19, i32 0, i32 49, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %40 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %d_lease_hit, i64 noundef 1, i32 noundef %40) #14
  br label %do.body114

do.body114:                                       ; preds = %if.else111, %if.then102, %ceph_mdsc_put_request.exit, %if.end68.do.body114_crit_edge
  %valid.4 = phi i32 [ %valid.0224, %if.else111 ], [ %valid.1, %ceph_mdsc_put_request.exit ], [ %valid.1, %if.then102 ], [ 0, %if.end68.do.body114_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_d_revalidate, %if.then126)) #14
          to label %do.end132 [label %if.then126], !srcloc !259

if.then126:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.4)
  %tobool128.not = icmp eq i32 %valid.4, 0
  %cond129 = select i1 %tobool128.not, ptr @.str.118, ptr @.str.117
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_d_revalidate.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.116, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1768, ptr noundef %dentry, ptr noundef nonnull %cond129) #14
  br label %do.end132

do.end132:                                        ; preds = %if.then126, %do.body114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid.4)
  %tobool133.not = icmp eq i32 %valid.4, 0
  br i1 %tobool133.not, label %if.then134, label %do.end132.if.end135_crit_edge

do.end132.if.end135_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

if.then134:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #16
  %i_release_count.i.i = getelementptr i8, ptr %dir.0, i32 -864
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_release_count.i.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_release_count.i.i) #14
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %do.end132.if.end135_crit_edge
  br i1 %tobool.not, label %if.then138, label %if.end135.cleanup140_crit_edge

if.end135.cleanup140_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup140

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dput(ptr noundef %parent.0) #14
  br label %cleanup140

cleanup140:                                       ; preds = %if.then138, %if.end135.cleanup140_crit_edge, %if.then64.cleanup140_crit_edge, %if.else46.cleanup140_crit_edge, %do.end.cleanup140_crit_edge
  %retval.1 = phi i32 [ -10, %do.end.cleanup140_crit_edge ], [ %call47, %if.else46.cleanup140_crit_edge ], [ %valid.4, %if.then138 ], [ %valid.4, %if.end135.cleanup140_crit_edge ], [ -10, %if.then64.cleanup140_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_d_delete(ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %snap.i = getelementptr i8, ptr %1, i32 -944
  %2 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %3)
  %cmp.not = icmp eq i64 %3, -2
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %lease_gen.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then6.if.end9_crit_edge, label %if.end.i

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end.i:                                         ; preds = %if.then6
  %lease_session.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %lease_session.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lease_session.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then2.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  %s_cap_gen.i = getelementptr inbounds %struct.ceph_mds_session, ptr %9, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_cap_gen.i, i32 noundef 4) #14
  %10 = ptrtoint ptr %s_cap_gen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %s_cap_gen.i, align 4
  %12 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.i20 = icmp eq i32 %13, %11
  br i1 %cmp.i20, label %land.lhs.true.i, label %if.then2.i.if.end11.i_crit_edge

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %s_cap_ttl.i = getelementptr inbounds %struct.ceph_mds_session, ptr %9, i32 0, i32 11
  %14 = ptrtoint ptr %s_cap_ttl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_cap_ttl.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %16, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %time.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %time.i, align 8
  %sub6.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  br i1 %cmp7.i, label %land.lhs.true5.i.cleanup_crit_edge, label %land.lhs.true5.i.if.end11.i_crit_edge

land.lhs.true5.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.i:                                       ; preds = %land.lhs.true5.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.then2.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %20 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lease_gen.i, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end11.i, %if.then6.if.end9_crit_edge
  %call10 = tail call fastcc i32 @__dir_lease_try_check(ptr noundef %dentry)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %land.lhs.true5.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_d_init(ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsc.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_dentry_cachep to i32))
  %6 = load ptr, ptr @ceph_dentry_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dentry, ptr %call.i, align 8
  %lease_session = getelementptr inbounds %struct.ceph_dentry_info, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %lease_session to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %lease_session, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.ceph_dentry_info, ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %time, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %11 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %d_fsdata, align 4
  %lease_list = getelementptr inbounds %struct.ceph_dentry_info, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %lease_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %lease_list, ptr %lease_list, align 8
  %prev.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %call.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lease_list, ptr %prev.i, align 4
  %metric = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %metric, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %metric) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_d_release(ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_d_release.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_d_release, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_d_release.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.127, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1810, ptr noundef %dentry) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsc, align 8
  %metric = getelementptr inbounds %struct.ceph_mds_client, ptr %7, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %metric, i32 noundef 8) #14
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %metric) #14
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %flags.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.__dentry_lease_unlist.exit_crit_edge

do.end.__dentry_lease_unlist.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dentry_lease_unlist.exit

if.end.i:                                         ; preds = %do.end
  %lease_list.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %lease_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %lease_list.i
  br i1 %cmp.i.not.i, label %if.end.i.__dentry_lease_unlist.exit_crit_edge, label %if.end3.i

if.end.i.__dentry_lease_unlist.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__dentry_lease_unlist.exit

if.end3.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc5.i = getelementptr inbounds %struct.ceph_fs_client, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %mdsc5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdsc5.i, align 8
  %dentry_list_lock.i = getelementptr inbounds %struct.ceph_mds_client, ptr %19, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %dentry_list_lock.i) #14
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lease_list.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.list_del_init.exit.i_crit_edge

if.end3.i.list_del_init.exit.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lease_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end3.i.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %lease_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %lease_list.i, ptr %lease_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lease_list.i, ptr %prev.i3.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dentry_list_lock.i) #14
  br label %__dentry_lease_unlist.exit

__dentry_lease_unlist.exit:                       ; preds = %list_del_init.exit.i, %if.end.i.__dentry_lease_unlist.exit_crit_edge, %do.end.__dentry_lease_unlist.exit_crit_edge
  %28 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %d_fsdata.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  %lease_session = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %lease_session to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lease_session, align 4
  tail call void @ceph_put_mds_session(ptr noundef %30) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_dentry_cachep to i32))
  %31 = load ptr, ptr @ceph_dentry_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_d_prune(ptr noundef %dentry) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_d_prune.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_d_prune, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_d_prune.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.130, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1834, ptr noundef %dentry, ptr noundef %dentry) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %cmp = icmp eq ptr %1, %dentry
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %snap = getelementptr i8, ptr %3, i32 -944
  %4 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %snap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp9 = icmp eq i64 %5, -1
  br i1 %cmp9, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %d_inode.i37 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i37 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i37, align 8
  %cmp.i = icmp eq ptr %7, null
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.not, label %if.end18, label %if.end14.cleanup.sink.split_crit_edge

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.end14
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata.i, align 4
  %offset = getelementptr inbounds %struct.ceph_dentry_info, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp20.not = icmp eq i64 %13, 0
  br i1 %cmp20.not, label %if.end18.cleanup_crit_edge, label %land.lhs.true

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end18
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lease_shared_gen, align 4
  %i_shared_gen = getelementptr i8, ptr %3, i32 -180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %16 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %i_shared_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp22 = icmp eq i32 %15, %17
  br i1 %cmp22, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ -864, %if.end14.cleanup.sink.split_crit_edge ], [ -856, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %i_release_count.i = getelementptr i8, ptr %3, i32 %.sink
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_release_count.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_release_count.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued_mask_metric(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_touch_fmode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_security_xattr_wanted(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_mdsc_put_request(ptr noundef %req) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %r_kref = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #14, !srcloc !261
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !262

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !263
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dir_lease_try_check(ptr noundef readonly %dentry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lease_shared_gen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %cmp = icmp eq ptr %5, %dentry
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -952
  %i_ceph_lock = getelementptr i8, ptr %7, i32 -936
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %i_ceph_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end2.cleanup_crit_edge, label %if.then8

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end2
  %i_shared_gen = getelementptr i8, ptr %7, i32 -180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %8 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_shared_gen, align 4
  %10 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lease_shared_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp11 = icmp eq i32 %9, %11
  br i1 %cmp11, label %land.lhs.true, label %if.then8.if.then19_crit_edge

if.then8.if.then19_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

land.lhs.true:                                    ; preds = %if.then8
  %call12 = tail call i32 @__ceph_caps_issued_mask(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.if.then19_crit_edge, label %if.end17

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.end17:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  br label %cleanup

if.then19:                                        ; preds = %land.lhs.true.if.then19_crit_edge, %if.then8.if.then19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  %12 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %lease_shared_gen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then19 ], [ 1, %if.end17 ], [ -16, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dcache_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx, i32 noundef %shared_gen) unnamed_addr #2 align 64 {
entry:
  %cache_ctl = alloca %struct.ceph_readdir_cache_control, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cache_ctl) #14
  %6 = call ptr @memset(ptr %cache_ctl, i32 0, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dcache_readdir.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dcache_readdir, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__dcache_readdir.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.63, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 193, ptr noundef %5, i32 noundef %shared_gen, i64 noundef %8) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pos6 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %pos6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %10)
  %cmp = icmp sgt i64 %10, 2
  br i1 %cmp, label %if.then7, label %do.end.if.end50_crit_edge

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then7:                                         ; preds = %do.end
  %call8 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %call8)
  %cmp10.not287 = icmp ult i64 %call8, 4
  br i1 %cmp10.not287, label %if.then7.do.body30_crit_edge, label %while.body.preheader

if.then7.do.body30_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body30

while.body.preheader:                             ; preds = %if.then7
  %shr.i.i = lshr i64 %call8, 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %count.0289 = phi i64 [ %count.1, %cleanup.while.body_crit_edge ], [ %shr.i.i, %while.body.preheader ]
  %idx.0288 = phi i64 [ %idx.1, %cleanup.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %shr = lshr i64 %count.0289, 1
  %add = add i64 %shr, %idx.0288
  %call11 = call fastcc ptr @__dcache_find_get_entry(ptr noundef %3, i64 noundef %add, ptr noundef nonnull %cache_ctl)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %while.body.do.body30_crit_edge, label %if.end14

while.body.do.body30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body30

if.end14:                                         ; preds = %while.body
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out.thread, label %if.end18

out.thread:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call11 to i32
  call void @ceph_readdir_cache_release(ptr noundef nonnull %cache_ctl) #14
  br label %cleanup146

if.end18:                                         ; preds = %if.end14
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 11
  %12 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_fsdata.i, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %offset = getelementptr inbounds %struct.ceph_dentry_info, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %offset, align 8
  %16 = ptrtoint ptr %pos6 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos6, align 8
  %18 = lshr i64 %15, 28
  %conv.i.i = trunc i64 %18 to i32
  %19 = lshr i64 %17, 28
  %conv.i8.i = trunc i64 %19 to i32
  %call2.i = call i32 @ceph_frag_compare(i32 noundef %conv.i.i, i32 noundef %conv.i8.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  %20 = trunc i64 %15 to i32
  %conv.i9.i = and i32 %20, 268435455
  %21 = trunc i64 %17 to i32
  %conv.i10.i = and i32 %21, 268435455
  %sub.i = sub nsw i32 %conv.i9.i, %conv.i10.i
  %retval.0.i226 = select i1 %tobool.not.i, i32 %sub.i, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i226)
  %cmp22 = icmp slt i32 %retval.0.i226, 0
  br i1 %cmp22, label %if.then23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %add24 = add nuw i64 %shr, 1
  %add25 = add i64 %add24, %idx.0288
  %sub = sub i64 %count.0289, %add24
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end18.cleanup_crit_edge
  %idx.1 = phi i64 [ %add25, %if.then23 ], [ %idx.0288, %if.end18.cleanup_crit_edge ]
  %count.1 = phi i64 [ %sub, %if.then23 ], [ %shr, %if.end18.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  call void @dput(ptr noundef nonnull %call11) #14
  %cmp10.not = icmp eq i64 %count.1, 0
  br i1 %cmp10.not, label %cleanup.do.body30_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.do.body30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body30

do.body30:                                        ; preds = %cleanup.do.body30_crit_edge, %while.body.do.body30_crit_edge, %if.then7.do.body30_crit_edge
  %idx.3 = phi i64 [ 0, %if.then7.do.body30_crit_edge ], [ 0, %while.body.do.body30_crit_edge ], [ %idx.1, %cleanup.do.body30_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dcache_readdir.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dcache_readdir, %cleanup47.thread)) #14
          to label %if.end50 [label %cleanup47.thread], !srcloc !259

cleanup47.thread:                                 ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__dcache_readdir.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.65, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 223, ptr noundef %5, i64 noundef %idx.3) #14
  br label %if.end50

if.end50:                                         ; preds = %cleanup47.thread, %do.body30, %do.end.if.end50_crit_edge
  %idx.5 = phi i64 [ 0, %do.end.if.end50_crit_edge ], [ %idx.3, %cleanup47.thread ], [ %idx.3, %do.body30 ]
  %call51292 = call fastcc ptr @__dcache_find_get_entry(ptr noundef %3, i64 noundef %idx.5, ptr noundef nonnull %cache_ctl)
  %tobool52.not293 = icmp eq ptr %call51292, null
  br i1 %tobool52.not293, label %if.end50.if.then53_crit_edge, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  br label %if.end55

if.end50.if.then53_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

if.then53:                                        ; preds = %cleanup122.if.then53_crit_edge, %if.end50.if.then53_crit_edge
  %last.0.lcssa = phi ptr [ null, %if.end50.if.then53_crit_edge ], [ %last.2, %cleanup122.if.then53_crit_edge ]
  %flags = getelementptr inbounds %struct.ceph_file_info, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 2
  %24 = or i16 %23, 2
  store i16 %24, ptr %flags, align 2
  br label %out

if.end55:                                         ; preds = %cleanup122.if.end55_crit_edge, %if.end50.if.end55_crit_edge
  %call51296 = phi ptr [ %call51, %cleanup122.if.end55_crit_edge ], [ %call51292, %if.end50.if.end55_crit_edge ]
  %inc295.in = phi i64 [ %inc295, %cleanup122.if.end55_crit_edge ], [ %idx.5, %if.end50.if.end55_crit_edge ]
  %last.0294 = phi ptr [ %last.2, %cleanup122.if.end55_crit_edge ], [ null, %if.end50.if.end55_crit_edge ]
  %inc295 = add i64 %inc295.in, 1
  %cmp.i227 = icmp ugt ptr %call51296, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %call51296 to i32
  br label %out

if.end59:                                         ; preds = %if.end55
  %d_lockref60 = getelementptr inbounds %struct.dentry, ptr %call51296, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref60) #14
  %d_fsdata.i228 = getelementptr inbounds %struct.dentry, ptr %call51296, i32 0, i32 11
  %26 = ptrtoint ptr %d_fsdata.i228 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_fsdata.i228, align 4
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %call51296, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.not, label %if.end59.if.then70_crit_edge, label %lor.lhs.false

if.end59.if.then70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.end59
  %d_inode.i229 = getelementptr inbounds %struct.dentry, ptr %call51296, i32 0, i32 5
  %30 = ptrtoint ptr %d_inode.i229 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_inode.i229, align 8
  %cmp.i230 = icmp eq ptr %31, null
  br i1 %cmp.i230, label %lor.lhs.false.if.then70_crit_edge, label %lor.lhs.false67

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then70

lor.lhs.false67:                                  ; preds = %lor.lhs.false
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %27, i32 0, i32 4
  %32 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lease_shared_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %shared_gen)
  %cmp68.not = icmp eq i32 %33, %shared_gen
  br i1 %cmp68.not, label %if.end73, label %lor.lhs.false67.if.then70_crit_edge

lor.lhs.false67.if.then70_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false67.if.then70_crit_edge, %lor.lhs.false.if.then70_crit_edge, %if.end59.if.then70_crit_edge
  call void @_raw_spin_unlock(ptr noundef %d_lockref60) #14
  call void @dput(ptr noundef nonnull %call51296) #14
  br label %out

if.end73:                                         ; preds = %lor.lhs.false67
  %34 = ptrtoint ptr %pos6 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %pos6, align 8
  %offset75 = getelementptr inbounds %struct.ceph_dentry_info, ptr %27, i32 0, i32 10
  %36 = ptrtoint ptr %offset75 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %offset75, align 8
  %38 = lshr i64 %35, 28
  %conv.i.i231 = trunc i64 %38 to i32
  %39 = lshr i64 %37, 28
  %conv.i8.i232 = trunc i64 %39 to i32
  %call2.i233 = call i32 @ceph_frag_compare(i32 noundef %conv.i.i231, i32 noundef %conv.i8.i232) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i233)
  %tobool.not.i234 = icmp eq i32 %call2.i233, 0
  %40 = trunc i64 %35 to i32
  %conv.i9.i235 = and i32 %40, 268435455
  %41 = trunc i64 %37 to i32
  %conv.i10.i236 = and i32 %41, 268435455
  %sub.i237 = sub nsw i32 %conv.i9.i235, %conv.i10.i236
  %retval.0.i238 = select i1 %tobool.not.i234, i32 %sub.i237, i32 %call2.i233
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i238)
  %cmp77 = icmp slt i32 %retval.0.i238, 1
  br i1 %cmp77, label %if.then79, label %if.else120.critedge

if.then79:                                        ; preds = %if.end73
  call void @__ceph_dentry_dir_lease_touch(ptr noundef %27)
  call void @_raw_spin_unlock(ptr noundef %d_lockref60) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dcache_readdir.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dcache_readdir, %if.then97)) #14
          to label %do.end103 [label %if.then97], !srcloc !259

if.then97:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %offset75 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %offset75, align 8
  %44 = ptrtoint ptr %d_inode.i229 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i229, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__dcache_readdir.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.67, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 258, i64 noundef %43, ptr noundef nonnull %call51296, ptr noundef nonnull %call51296, ptr noundef %45) #14
  br label %do.end103

do.end103:                                        ; preds = %if.then97, %if.then79
  %46 = ptrtoint ptr %offset75 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset75, align 8
  %48 = ptrtoint ptr %pos6 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %pos6, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %call51296, i32 0, i32 4
  %name = getelementptr inbounds %struct.dentry, ptr %call51296, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 8
  %51 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %d_name, align 8
  %53 = ptrtoint ptr %d_inode.i229 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_inode.i229, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 -952
  %57 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr.i.i.i, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 33
  %59 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mount_options.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %mount_options.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mount_options.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %and.i.i = and i32 %64, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i241 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i241, label %do.end103.ceph_present_inode.exit_crit_edge, label %if.then.i.i, !prof !262

do.end103.ceph_present_inode.exit_crit_edge:      ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_present_inode.exit

if.then.i.i:                                      ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i = lshr i64 %58, 32
  %xor.i.i.i = xor i64 %shr.i.i.i, %58
  %conv2.i.i.i = trunc i64 %xor.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv2.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 %conv2.i.i.i
  %conv.i.i242 = zext i32 %spec.store.select.i.i.i to i64
  br label %ceph_present_inode.exit

ceph_present_inode.exit:                          ; preds = %if.then.i.i, %do.end103.ceph_present_inode.exit_crit_edge
  %retval.0.i.i = phi i64 [ %conv.i.i242, %if.then.i.i ], [ %58, %do.end103.ceph_present_inode.exit_crit_edge ]
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %54, align 8
  %67 = lshr i16 %66, 12
  %68 = zext i16 %67 to i32
  %69 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctx, align 8
  %call.i = call i32 %70(ptr noundef %ctx, ptr noundef %50, i32 noundef %52, i64 noundef %47, i64 noundef %retval.0.i.i, i32 noundef %68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i244 = icmp eq i32 %call.i, 0
  br i1 %cmp.i244, label %if.end114, label %if.then113

if.then113:                                       ; preds = %ceph_present_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef nonnull %call51296) #14
  br label %out

if.end114:                                        ; preds = %ceph_present_inode.exit
  %71 = ptrtoint ptr %pos6 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %pos6, align 8
  %inc116 = add i64 %72, 1
  store i64 %inc116, ptr %pos6, align 8
  %tobool117.not = icmp eq ptr %last.0294, null
  br i1 %tobool117.not, label %if.end114.cleanup122_crit_edge, label %if.end114.cleanup122.sink.split_crit_edge

if.end114.cleanup122.sink.split_crit_edge:        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup122.sink.split

if.end114.cleanup122_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup122

if.else120.critedge:                              ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock(ptr noundef %d_lockref60) #14
  br label %cleanup122.sink.split

cleanup122.sink.split:                            ; preds = %if.else120.critedge, %if.end114.cleanup122.sink.split_crit_edge
  %call51296.sink = phi ptr [ %call51296, %if.else120.critedge ], [ %last.0294, %if.end114.cleanup122.sink.split_crit_edge ]
  %last.2.ph = phi ptr [ %last.0294, %if.else120.critedge ], [ %call51296, %if.end114.cleanup122.sink.split_crit_edge ]
  call void @dput(ptr noundef nonnull %call51296.sink) #14
  br label %cleanup122

cleanup122:                                       ; preds = %cleanup122.sink.split, %if.end114.cleanup122_crit_edge
  %last.2 = phi ptr [ %call51296, %if.end114.cleanup122_crit_edge ], [ %last.2.ph, %cleanup122.sink.split ]
  %call51 = call fastcc ptr @__dcache_find_get_entry(ptr noundef %3, i64 noundef %inc295, ptr noundef nonnull %cache_ctl)
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %cleanup122.if.then53_crit_edge, label %cleanup122.if.end55_crit_edge

cleanup122.if.end55_crit_edge:                    ; preds = %cleanup122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

cleanup122.if.then53_crit_edge:                   ; preds = %cleanup122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then53

out:                                              ; preds = %if.then113, %if.then70, %if.then57, %if.then53
  %last.0285 = phi ptr [ %last.0.lcssa, %if.then53 ], [ %last.0294, %if.then113 ], [ %last.0294, %if.then70 ], [ %last.0294, %if.then57 ]
  %err.6.ph = phi i32 [ 0, %if.then53 ], [ 0, %if.then113 ], [ -11, %if.then70 ], [ %25, %if.then57 ]
  call void @ceph_readdir_cache_release(ptr noundef nonnull %cache_ctl) #14
  %tobool125.not = icmp eq ptr %last.0285, null
  br i1 %tobool125.not, label %out.cleanup146_crit_edge, label %if.then126

out.cleanup146_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup146

if.then126:                                       ; preds = %out
  %d_fsdata.i245 = getelementptr inbounds %struct.dentry, ptr %last.0285, i32 0, i32 11
  %73 = ptrtoint ptr %d_fsdata.i245 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %d_fsdata.i245, align 4
  %d_name128 = getelementptr inbounds %struct.dentry, ptr %last.0285, i32 0, i32 4
  %name129 = getelementptr inbounds %struct.dentry, ptr %last.0285, i32 0, i32 4, i32 1
  %75 = ptrtoint ptr %name129 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name129, align 8
  %77 = ptrtoint ptr %d_name128 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %d_name128, align 8
  %offset132 = getelementptr inbounds %struct.ceph_dentry_info, ptr %74, i32 0, i32 10
  %79 = ptrtoint ptr %offset132 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %offset132, align 8
  %add.i = add i32 %78, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #20
  %tobool.not.i249 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i249, label %if.then126.note_last_dentry.exit_crit_edge, label %if.end.i

if.then126.note_last_dentry.exit_crit_edge:       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  br label %note_last_dentry.exit

if.end.i:                                         ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #16
  %81 = trunc i64 %80 to i32
  %conv.i246 = and i32 %81, 268435455
  %add134 = add nuw nsw i32 %conv.i246, 1
  %last_name.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %last_name.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %last_name.i, align 4
  call void @kfree(ptr noundef %83) #14
  %84 = ptrtoint ptr %last_name.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call9.i.i, ptr %last_name.i, align 4
  %85 = call ptr @memcpy(ptr %call9.i.i, ptr %76, i32 %78)
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %78
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx.i, align 1
  %next_offset4.i = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %next_offset4.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add134, ptr %next_offset4.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @note_last_dentry.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dcache_readdir, %if.then9.i)) #14
          to label %note_last_dentry.exit [label %if.then9.i], !srcloc !259

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %88 = ptrtoint ptr %last_name.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %last_name.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @note_last_dentry.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.79, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 122, ptr noundef %89) #14
  br label %note_last_dentry.exit

note_last_dentry.exit:                            ; preds = %if.then9.i, %if.end.i, %if.then126.note_last_dentry.exit_crit_edge
  %90 = phi i32 [ %err.6.ph, %if.end.i ], [ %err.6.ph, %if.then9.i ], [ -12, %if.then126.note_last_dentry.exit_crit_edge ]
  call void @dput(ptr noundef nonnull %last.0285) #14
  %readdir_cache_idx = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 7
  %91 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %readdir_cache_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %cmp140 = icmp sgt i32 %92, -1
  br i1 %cmp140, label %if.then142, label %note_last_dentry.exit.cleanup146_crit_edge

note_last_dentry.exit.cleanup146_crit_edge:       ; preds = %note_last_dentry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup146

if.then142:                                       ; preds = %note_last_dentry.exit
  call void @__sanitizer_cov_trace_pc() #16
  %93 = ptrtoint ptr %readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %readdir_cache_idx, align 8
  %dir_release_count = getelementptr inbounds %struct.ceph_dir_file_info, ptr %1, i32 0, i32 5
  %94 = ptrtoint ptr %dir_release_count to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %dir_release_count, align 8
  br label %cleanup146

cleanup146:                                       ; preds = %if.then142, %note_last_dentry.exit.cleanup146_crit_edge, %out.cleanup146_crit_edge, %out.thread
  %retval.0 = phi i32 [ %err.6.ph, %out.cleanup146_crit_edge ], [ %90, %if.then142 ], [ %90, %note_last_dentry.exit.cleanup146_crit_edge ], [ %11, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cache_ctl) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_choose_frag(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_alloc_readdir_reply_buffer(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @note_last_dentry(ptr nocapture noundef %dfi, ptr nocapture noundef readonly %name, i32 noundef %len, i32 noundef %next_offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %len, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %last_name = getelementptr inbounds %struct.ceph_dir_file_info, ptr %dfi, i32 0, i32 4
  %0 = ptrtoint ptr %last_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_name, align 4
  tail call void @kfree(ptr noundef %1) #14
  %2 = ptrtoint ptr %last_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %last_name, align 4
  %3 = call ptr @memcpy(ptr %call9.i, ptr %name, i32 %len)
  %arrayidx = getelementptr i8, ptr %call9.i, i32 %len
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %next_offset4 = getelementptr inbounds %struct.ceph_dir_file_info, ptr %dfi, i32 0, i32 3
  %5 = ptrtoint ptr %next_offset4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %next_offset, ptr %next_offset4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @note_last_dentry.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@note_last_dentry, %if.then9)) #14
          to label %cleanup [label %if.then9], !srcloc !259

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %last_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %last_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @note_last_dentry.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.79, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 122, ptr noundef %7) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !271
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !272
  %9 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !273
  %18 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !274
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !275
  %37 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !262

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !276
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !277
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !278
  %48 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ceph_dir_set_complete(ptr noundef %ci, i64 noundef %release_count, i64 noundef %ordered_count) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !279
  %i_complete_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_complete_seq, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %i_complete_seq, i64 noundef %release_count) #14
  %arrayidx4 = getelementptr %struct.ceph_inode_info, ptr %ci, i32 0, i32 8, i32 1
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4, i64 noundef %ordered_count) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !280
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #14
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !281
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !267

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !282
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !283
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !284
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !285
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !286
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__dcache_find_get_entry(ptr noundef %parent, i64 noundef %idx, ptr noundef %cache_ctl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %mul = shl i64 %idx, 2
  %2 = lshr i64 %mul, 12
  %conv = trunc i64 %2 to i32
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %call1)
  %cmp.not = icmp slt i64 %mul, %call1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cache_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache_ctl, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.then7_crit_edge, label %lor.lhs.false

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !262

if.then.i.i.i:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %7, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %8, %if.end.i.i.i ]
  %9 = inttoptr i32 %retval.0.i.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !262

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.71) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !287
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i.i74 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i74)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i74, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !262

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.71) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !287
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %9, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i75, !prof !262

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i75:                                      ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call i32 @__page_file_index(ptr noundef nonnull %4) #14
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i75
  %retval.0.i76 = phi i32 [ %call2.i, %if.then.i75 ], [ %22, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i76, i32 %conv)
  %cmp5.not = icmp eq i32 %retval.0.i76, %conv
  br i1 %cmp5.not, label %page_index.exit.if.end25_crit_edge, label %page_index.exit.if.then7_crit_edge

page_index.exit.if.then7_crit_edge:               ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7

page_index.exit.if.end25_crit_edge:               ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then7:                                         ; preds = %page_index.exit.if.then7_crit_edge, %if.end.if.then7_crit_edge
  tail call void @ceph_readdir_cache_release(ptr noundef %cache_ctl) #14
  %i_data = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46
  %call.i77 = tail call ptr @pagecache_get_page(ptr noundef %i_data, i32 noundef %conv, i32 noundef 2, i32 noundef 0) #14
  %23 = ptrtoint ptr %cache_ctl to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i77, ptr %cache_ctl, align 4
  %tobool11.not = icmp eq ptr %call.i77, null
  br i1 %tobool11.not, label %do.body, label %if.end21

do.body:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dcache_find_get_entry.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dcache_find_get_entry, %if.then17)) #14
          to label %cleanup [label %if.then17], !srcloc !259

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__dcache_find_get_entry.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.70, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 144, i32 noundef %conv) #14
  br label %cleanup

if.end21:                                         ; preds = %if.then7
  tail call void @unlock_page(ptr noundef nonnull %call.i77) #14
  %24 = ptrtoint ptr %cache_ctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache_ctl, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.73, i32 noundef 44) #14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shr.i.i = lshr i32 %27, 30
  %28 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %shr.i.i, label %if.end21.if.then.i78_crit_edge [
    i32 2, label %if.end21.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end21.if.else.i_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.end21.if.then.i78_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i78

is_highmem_idx.exit.i:                            ; preds = %if.end21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %29 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp2.i.not.i = icmp eq i32 %29, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i78_crit_edge

is_highmem_idx.exit.i.if.then.i78_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i78

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i78:                                      ; preds = %is_highmem_idx.exit.i.if.then.i78_crit_edge, %if.end21.if.then.i78_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %25) #14
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end21.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %25) #14
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i78
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i78 ]
  %dentries = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %cache_ctl, i32 0, i32 1
  %30 = ptrtoint ptr %dentries to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %addr.0.i, ptr %dentries, align 4
  br label %if.end25

if.end25:                                         ; preds = %kmap.exit, %page_index.exit.if.end25_crit_edge
  %31 = trunc i64 %idx to i32
  %conv27 = and i32 %31, 1023
  %index = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %cache_ctl, i32 0, i32 2
  %32 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv27, ptr %index, align 4
  %33 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !288
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end25.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end25.rcu_read_lock.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end25
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.74, i32 noundef 696, ptr noundef nonnull @.str.75) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end25.rcu_read_lock.exit_crit_edge
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %i_complete_seq.i.i = getelementptr i8, ptr %1, i32 -848
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_complete_seq.i.i, i32 noundef 8) #14
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_complete_seq.i.i) #14
  %i_release_count.i.i = getelementptr i8, ptr %1, i32 -864
  %call.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count.i.i, i32 noundef 8) #14
  %call.i11.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count.i.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i.i, i64 %call.i11.i.i)
  %cmp.i.i = icmp eq i64 %call.i.i.i, %call.i11.i.i
  br i1 %cmp.i.i, label %ceph_dir_is_complete_ordered.exit, label %ceph_dir_is_complete_ordered.exit.thread

ceph_dir_is_complete_ordered.exit.thread:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !289
  br label %if.end36.thread

ceph_dir_is_complete_ordered.exit:                ; preds = %rcu_read_lock.exit
  %arrayidx3.i.i = getelementptr i8, ptr %1, i32 -840
  %call.i.i12.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx3.i.i, i32 noundef 8) #14
  %call.i13.i.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx3.i.i) #14
  %i_ordered_count.i.i = getelementptr i8, ptr %1, i32 -856
  %call.i.i14.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ordered_count.i.i, i32 noundef 8) #14
  %call.i15.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_ordered_count.i.i) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i13.i.i, i64 %call.i15.i.i)
  %cmp6.i.i = icmp eq i64 %call.i13.i.i, %call.i15.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !289
  br i1 %cmp6.i.i, label %land.lhs.true, label %ceph_dir_is_complete_ordered.exit.if.end36.thread_crit_edge

ceph_dir_is_complete_ordered.exit.if.end36.thread_crit_edge: ; preds = %ceph_dir_is_complete_ordered.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.thread

land.lhs.true:                                    ; preds = %ceph_dir_is_complete_ordered.exit
  %call30 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %call30)
  %cmp31 = icmp slt i64 %mul, %call30
  br i1 %cmp31, label %if.end36, label %land.lhs.true.if.end36.thread_crit_edge

land.lhs.true.if.end36.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.thread

if.end36.thread:                                  ; preds = %land.lhs.true.if.end36.thread_crit_edge, %ceph_dir_is_complete_ordered.exit.if.end36.thread_crit_edge, %ceph_dir_is_complete_ordered.exit.thread
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  br label %if.end45

if.end36:                                         ; preds = %land.lhs.true
  %dentries34 = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %cache_ctl, i32 0, i32 1
  %37 = ptrtoint ptr %dentries34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dentries34, align 4
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %arrayidx = getelementptr ptr, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  %tobool39.not = icmp eq ptr %42, null
  br i1 %tobool39.not, label %if.end36.if.end45_crit_edge, label %land.lhs.true40

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

land.lhs.true40:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %d_lockref41 = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 7
  %call42 = tail call i32 @lockref_get_not_dead(ptr noundef %d_lockref41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %spec.select = select i1 %tobool43.not, ptr null, ptr %42
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true40, %if.end36.if.end45_crit_edge, %if.end36.thread
  %dentry.1 = phi ptr [ null, %if.end36.if.end45_crit_edge ], [ %spec.select, %land.lhs.true40 ], [ null, %if.end36.thread ]
  %call.i80 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i80, label %if.end45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i83

if.end45.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i83:                                ; preds = %if.end45
  %call1.i81 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81)
  %tobool.not.i82 = icmp eq i32 %call1.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i85

land.lhs.true.i83.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i85:                               ; preds = %land.lhs.true.i83
  %.b4.i84 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i84, label %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, label %if.then.i86

land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i86:                                      ; preds = %land.lhs.true2.i85
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.74, i32 noundef 724, ptr noundef nonnull @.str.76) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i86, %land.lhs.true2.i85.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i83.rcu_read_unlock.exit_crit_edge, %if.end45.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !290
  %43 = tail call i32 @llvm.read_register.i32(metadata !249) #14
  %and.i.i.i.i.i87 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %preempt_count.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i88, align 4
  %sub.i.i.i89 = add i32 %46, -1
  store volatile i32 %sub.i.i.i89, ptr %preempt_count.i.i.i.i88, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %tobool46.not = icmp eq ptr %dentry.1, null
  %spec.select93 = select i1 %tobool46.not, ptr inttoptr (i32 -11 to ptr), ptr %dentry.1
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -11 to ptr), %do.body ], [ inttoptr (i32 -11 to ptr), %if.then17 ], [ %spec.select93, %rcu_read_unlock.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_readdir_cache_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_frag_compare(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_drop_caps_for_unlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_async_unlink_cb(ptr nocapture noundef readnone %mdsc, ptr noundef %req) #2 align 64 {
entry:
  %pathlen = alloca i32, align 4
  %base = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %r_err = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 37
  %0 = ptrtoint ptr %r_err to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36
  %2 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r_reply_info, align 8
  %result2 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %result2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %result2, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %7 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %cond, label %if.end.i [
    i32 -528, label %cond.end.out_crit_edge
    i32 0, label %cond.end.out_crit_edge52
  ]

cond.end.out_crit_edge52:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end.i:                                         ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pathlen) #14
  %8 = ptrtoint ptr %pathlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %pathlen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #14
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %base, align 8
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %r_dentry, align 4
  %call = call ptr @ceph_mdsc_build_path(ptr noundef %11, ptr noundef nonnull %pathlen, ptr noundef nonnull %base, i32 noundef 0) #14
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 13
  %12 = ptrtoint ptr %r_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r_parent, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping, align 8
  call void @__filemap_set_wb_err(ptr noundef %15, i32 noundef %cond) #14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %if.end.i.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end.i.mapping_set_error.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 50
  %call.i = call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %cond) #14
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end.i.mapping_set_error.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %cond)
  %cmp.i = icmp eq i32 %cond, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %15, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #14
  %20 = ptrtoint ptr %r_parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %r_parent, align 8
  %i_release_count.i.i = getelementptr i8, ptr %21, i32 -864
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_release_count.i.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_release_count.i.i) #14
  %22 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %r_dentry, align 4
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.not, label %mapping_set_error.exit.if.end.i39_crit_edge, label %if.then9

mapping_set_error.exit.if.end.i39_crit_edge:      ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i39

if.then9:                                         ; preds = %mapping_set_error.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @d_drop(ptr noundef %23) #14
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then9, %mapping_set_error.exit.if.end.i39_crit_edge
  %r_old_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 31
  %26 = ptrtoint ptr %r_old_inode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %r_old_inode, align 4
  %i_mapping12 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %i_mapping12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_mapping12, align 8
  call void @__filemap_set_wb_err(ptr noundef %29, i32 noundef %cond) #14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool4.not.i38 = icmp eq ptr %31, null
  br i1 %tobool4.not.i38, label %if.end.i39.mapping_set_error.exit48_crit_edge, label %if.then5.i43

if.end.i39.mapping_set_error.exit48_crit_edge:    ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapping_set_error.exit48

if.then5.i43:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i40 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i40, align 4
  %s_wb_err.i41 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 50
  %call.i42 = call i32 @errseq_set(ptr noundef %s_wb_err.i41, i32 noundef %cond) #14
  br label %mapping_set_error.exit48

mapping_set_error.exit48:                         ; preds = %if.then5.i43, %if.end.i39.mapping_set_error.exit48_crit_edge
  %flags.i45 = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 10
  call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i45) #14
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %base, align 8
  %cmp.i49 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i49, ptr @.str.93, ptr %call
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i64 noundef %35, ptr noundef %spec.select, i32 noundef %cond) #21
  %tobool.not.i.i50 = icmp eq ptr %call, null
  %spec.select.i.i = or i1 %tobool.not.i.i50, %cmp.i49
  br i1 %spec.select.i.i, label %mapping_set_error.exit48.ceph_mdsc_free_path.exit_crit_edge, label %if.then.i

mapping_set_error.exit48.ceph_mdsc_free_path.exit_crit_edge: ; preds = %mapping_set_error.exit48
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_free_path.exit

if.then.i:                                        ; preds = %mapping_set_error.exit48
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %pathlen to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pathlen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %38 = load ptr, ptr @names_cachep, align 4
  %sub.neg.i = add i32 %37, -4095
  %add.ptr.i = getelementptr i8, ptr %call, i32 %sub.neg.i
  call void @kmem_cache_free(ptr noundef %38, ptr noundef %add.ptr.i) #14
  br label %ceph_mdsc_free_path.exit

ceph_mdsc_free_path.exit:                         ; preds = %if.then.i, %mapping_set_error.exit48.ceph_mdsc_free_path.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pathlen) #14
  br label %out

out:                                              ; preds = %ceph_mdsc_free_path.exit, %cond.end.out_crit_edge, %cond.end.out_crit_edge52
  %r_old_inode20 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 31
  %39 = ptrtoint ptr %r_old_inode20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %r_old_inode20, align 4
  call void @iput(ptr noundef %40) #14
  call void @ceph_mdsc_release_dir_caps(ptr noundef %req) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_submit_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_take_cap_refs(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_cap_refs(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_build_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_dir_caps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_is_max_files_exceeded(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_security_init_secctx(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_acl_sec_ctx(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pre_init_acls(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_init_inode_acls(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_is_same_realm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dentry_lease_is_valid(ptr noundef %dentry, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11.thread_crit_edge, label %land.lhs.true

entry.if.end11.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.thread

land.lhs.true:                                    ; preds = %entry
  %lease_gen.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end11.thread_crit_edge, label %if.end.i

land.lhs.true.if.end11.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.thread

if.end.i:                                         ; preds = %land.lhs.true
  %lease_session.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %lease_session.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lease_session.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then2.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then2.i:                                       ; preds = %if.end.i
  %s_cap_gen.i = getelementptr inbounds %struct.ceph_mds_session, ptr %5, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_cap_gen.i, i32 noundef 4) #14
  %6 = ptrtoint ptr %s_cap_gen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %s_cap_gen.i, align 4
  %8 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lease_gen.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.i = icmp eq i32 %9, %7
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then2.i.if.end11.i_crit_edge

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.then2.i
  %s_cap_ttl.i = getelementptr inbounds %struct.ceph_mds_session, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %s_cap_ttl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_cap_ttl.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %12, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %time.i = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time.i, align 8
  %sub6.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  br i1 %cmp7.i, label %if.then, label %land.lhs.true5.i.if.end11.i_crit_edge

land.lhs.true5.i.if.end11.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true5.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.then2.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %16 = ptrtoint ptr %lease_gen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %lease_gen.i, align 8
  br label %if.end11.thread

if.then:                                          ; preds = %land.lhs.true5.i
  %lease_renew_after = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %lease_renew_after to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lease_renew_after, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not = icmp eq i32 %18, 0
  br i1 %tobool2.not, label %if.then.if.end11.thread_crit_edge, label %land.lhs.true3

if.then.if.end11.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.thread

land.lhs.true3:                                   ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then5, label %land.lhs.true3.if.end11.thread_crit_edge

land.lhs.true3.if.end11.thread_crit_edge:         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.thread

if.then5:                                         ; preds = %land.lhs.true3
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end11, label %if.then5.if.end11.thread_crit_edge

if.then5.if.end11.thread_crit_edge:               ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %if.then5.if.end11.thread_crit_edge, %land.lhs.true3.if.end11.thread_crit_edge, %if.then.if.end11.thread_crit_edge, %if.end11.i, %land.lhs.true.if.end11.thread_crit_edge, %entry.if.end11.thread_crit_edge
  %valid.0.ph = phi i32 [ -10, %if.then5.if.end11.thread_crit_edge ], [ 0, %entry.if.end11.thread_crit_edge ], [ 1, %if.then.if.end11.thread_crit_edge ], [ 1, %land.lhs.true3.if.end11.thread_crit_edge ], [ 0, %if.end11.i ], [ 0, %land.lhs.true.if.end11.thread_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  br label %do.body

if.end11:                                         ; preds = %if.then5
  %20 = ptrtoint ptr %lease_session.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lease_session.i, align 4
  %call8 = tail call ptr @ceph_get_mds_session(ptr noundef %21) #14
  %lease_seq = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %lease_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lease_seq, align 4
  %24 = ptrtoint ptr %lease_renew_after to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %lease_renew_after, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %lease_renew_from = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %lease_renew_from to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %lease_renew_from, align 4
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  %tobool14.not = icmp eq ptr %call8, null
  br i1 %tobool14.not, label %if.end11.do.body_crit_edge, label %if.then15

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_mdsc_lease_send_msg(ptr noundef nonnull %call8, ptr noundef %dentry, i8 noundef zeroext 3, i32 noundef %23) #14
  tail call void @ceph_put_mds_session(ptr noundef nonnull %call8) #14
  br label %do.body

do.body:                                          ; preds = %if.then15, %if.end11.do.body_crit_edge, %if.end11.thread
  %valid.043 = phi i32 [ %valid.0.ph, %if.end11.thread ], [ 1, %if.end11.do.body_crit_edge ], [ 1, %if.then15 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dentry_lease_is_valid.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dentry_lease_is_valid, %if.then21)) #14
          to label %do.end [label %if.then21], !srcloc !259

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dentry_lease_is_valid.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.121, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1607, ptr noundef %dentry, i32 noundef %valid.043) #14
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  ret i32 %valid.043
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dir_lease_is_valid(ptr noundef %dir, ptr noundef %dentry, ptr noundef %mdsc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -952
  %i_ceph_lock = getelementptr i8, ptr %dir, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %call1 = tail call i32 @__ceph_caps_issued_mask(ptr noundef %add.ptr.i, i32 noundef 256, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then5

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then5:                                         ; preds = %entry
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %mdsc, i32 noundef 1) #14
  %i_shared_gen = getelementptr i8, ptr %dir, i32 -180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %0 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_shared_gen, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %cmp = icmp ne ptr %7, %dir
  %tobool8.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.then5.do.body_crit_edge, label %land.lhs.true9

if.then5.do.body_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true9:                                   ; preds = %if.then5
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lease_shared_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp10 = icmp eq i32 %9, %1
  br i1 %cmp10, label %if.then11, label %land.lhs.true9.do.body_crit_edge

land.lhs.true9.do.body_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__ceph_dentry_dir_lease_touch(ptr noundef nonnull %3)
  br label %do.body

do.body:                                          ; preds = %if.then11, %land.lhs.true9.do.body_crit_edge, %if.then5.do.body_crit_edge, %entry.do.body_crit_edge
  %i_ceph_lock.sink = phi ptr [ %i_ceph_lock, %entry.do.body_crit_edge ], [ %d_lockref, %if.then5.do.body_crit_edge ], [ %d_lockref, %land.lhs.true9.do.body_crit_edge ], [ %d_lockref, %if.then11 ]
  %valid.1 = phi i32 [ 0, %entry.do.body_crit_edge ], [ 0, %if.then5.do.body_crit_edge ], [ 0, %land.lhs.true9.do.body_crit_edge ], [ %call1, %if.then11 ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.sink) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dir_lease_is_valid.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dir_lease_is_valid, %if.then20)) #14
          to label %do.end [label %if.then20], !srcloc !259

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %i_shared_gen22 = getelementptr i8, ptr %dir, i32 -180
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen22, i32 noundef 4) #14
  %10 = ptrtoint ptr %i_shared_gen22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %i_shared_gen22, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dir_lease_is_valid.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.124, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([14 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1672, ptr noundef %dir, i32 noundef %11, ptr noundef %dentry, i32 noundef %valid.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  ret i32 %valid.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_is_any_caps(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_mds_session(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_lease_send_msg(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_mds_session(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !147, !149, !150, !151, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248}
!llvm.named.register.sp = !{!249}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/dir.c", i32 683, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_handle_snapdir.__UNIQUE_ID_ddebug335, !1, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ceph/dir.c", i32 709, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ceph_finish_lookup.__UNIQUE_ID_ddebug336, !9, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ceph/dir.c", i32 1279, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ceph_dentry_lease_touch.__UNIQUE_ID_ddebug350, !14, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!17 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ceph/dir.c", i32 1313, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__ceph_dentry_dir_lease_touch.__UNIQUE_ID_ddebug351, !19, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!22 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ceph_dir_fops, !24, !"ceph_dir_fops", i1 false, i1 false}
!24 = !{!"../fs/ceph/dir.c", i32 1940, i32 30}
!25 = !{ptr @ceph_snapdir_fops, !26, !"ceph_snapdir_fops", i1 false, i1 false}
!26 = !{!"../fs/ceph/dir.c", i32 1953, i32 30}
!27 = !{ptr @ceph_dir_iops, !28, !"ceph_dir_iops", i1 false, i1 false}
!28 = !{!"../fs/ceph/dir.c", i32 1960, i32 31}
!29 = !{ptr @ceph_snapdir_iops, !30, !"ceph_snapdir_iops", i1 false, i1 false}
!30 = !{!"../fs/ceph/dir.c", i32 1979, i32 31}
!31 = !{ptr @ceph_dentry_ops, !32, !"ceph_dentry_ops", i1 false, i1 false}
!32 = !{!"../fs/ceph/dir.c", i32 1988, i32 32}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ceph/dir.c", i32 748, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ceph_lookup.__UNIQUE_ID_ddebug337, !34, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!37 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/ceph/dir.c", i32 760, i32 3}
!40 = !{ptr @ceph_lookup.__UNIQUE_ID_ddebug338, !39, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!41 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ceph/dir.c", i32 770, i32 4}
!44 = !{ptr @ceph_lookup.__UNIQUE_ID_ddebug339, !43, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ceph/dir.c", i32 808, i32 2}
!48 = !{ptr @ceph_lookup.__UNIQUE_ID_ddebug340, !47, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ceph/dir.c", i32 731, i32 32}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ceph/dir.c", i32 646, i32 4}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ceph_dir_llseek.__UNIQUE_ID_ddebug334, !53, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ceph/dir.c", i32 1886, i32 5}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ceph/dir.c", i32 317, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug321, !67, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!70 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ceph/dir.c", i32 323, i32 3}
!73 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug322, !72, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!74 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ceph/dir.c", i32 324, i32 22}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ceph/dir.c", i32 337, i32 3}
!79 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug323, !78, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!80 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ceph/dir.c", i32 338, i32 22}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ceph/dir.c", i32 387, i32 3}
!85 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug324, !84, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!86 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ceph/dir.c", i32 431, i32 3}
!89 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug325, !88, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!90 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ceph/dir.c", i32 466, i32 4}
!93 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug326, !92, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!94 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ceph/dir.c", i32 490, i32 2}
!97 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug327, !96, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!98 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ceph/dir.c", i32 514, i32 3}
!101 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug328, !100, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!102 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ceph/dir.c", i32 523, i32 4}
!105 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug329, !104, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!106 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ceph/dir.c", i32 552, i32 3}
!109 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug330, !108, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!110 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ceph/dir.c", i32 567, i32 4}
!113 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug331, !112, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!114 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ceph/dir.c", i32 574, i32 4}
!117 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug332, !116, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!118 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ceph/dir.c", i32 581, i32 2}
!121 = !{ptr @ceph_readdir.__UNIQUE_ID_ddebug333, !120, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!122 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ceph/dir.c", i32 193, i32 2}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @__dcache_readdir.__UNIQUE_ID_ddebug318, !124, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!127 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ceph/dir.c", i32 223, i32 3}
!130 = !{ptr @__dcache_readdir.__UNIQUE_ID_ddebug319, !129, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!131 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/ceph/dir.c", i32 257, i32 4}
!134 = !{ptr @__dcache_readdir.__UNIQUE_ID_ddebug320, !133, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!135 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ceph/dir.c", i32 144, i32 4}
!138 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @__dcache_find_get_entry.__UNIQUE_ID_ddebug317, !137, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!140 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!145 = !{ptr @.str.73, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!147 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!148 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!149 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!153 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ceph/dir.c", i32 122, i32 2}
!156 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @note_last_dentry.__UNIQUE_ID_ddebug316, !155, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!158 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!161 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ceph/dir.c", i32 1034, i32 2}
!164 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ceph_link.__UNIQUE_ID_ddebug345, !163, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!166 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.84, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ceph/dir.c", i32 1149, i32 3}
!169 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ceph_unlink.__UNIQUE_ID_ddebug346, !168, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!171 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/ceph/dir.c", i32 1152, i32 3}
!174 = !{ptr @ceph_unlink.__UNIQUE_ID_ddebug347, !173, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!175 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/ceph/dir.c", i32 1174, i32 3}
!178 = !{ptr @ceph_unlink.__UNIQUE_ID_ddebug348, !177, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!179 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/ceph/dir.c", i32 1089, i32 3}
!182 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ceph_async_unlink_cb._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @ceph_async_unlink_cb._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ceph/dir.c", i32 921, i32 2}
!188 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @ceph_symlink.__UNIQUE_ID_ddebug342, !187, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!190 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../fs/ceph/dir.c", i32 968, i32 3}
!193 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @ceph_mkdir.__UNIQUE_ID_ddebug343, !192, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!195 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ceph/dir.c", i32 971, i32 3}
!198 = !{ptr @ceph_mkdir.__UNIQUE_ID_ddebug344, !197, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!199 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ceph/dir.c", i32 862, i32 2}
!202 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @ceph_mknod.__UNIQUE_ID_ddebug341, !201, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!204 = !{ptr @.str.104, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../fs/ceph/dir.c", i32 1231, i32 2}
!207 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @ceph_rename.__UNIQUE_ID_ddebug349, !206, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!209 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.108, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../fs/ceph/dir.c", i32 1698, i32 2}
!212 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug355, !211, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!214 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ceph/dir.c", i32 1705, i32 3}
!217 = !{ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug356, !216, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!218 = !{ptr @.str.112, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.113, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ceph/dir.c", i32 1761, i32 4}
!221 = !{ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug357, !220, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!222 = !{ptr @.str.114, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ceph/dir.c", i32 1768, i32 2}
!225 = !{ptr @ceph_d_revalidate.__UNIQUE_ID_ddebug358, !224, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!226 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.119, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/ceph/dir.c", i32 1607, i32 2}
!231 = !{ptr @.str.120, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @dentry_lease_is_valid.__UNIQUE_ID_ddebug352, !230, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!233 = !{ptr @.str.121, !230, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../fs/ceph/dir.c", i32 1671, i32 2}
!236 = !{ptr @.str.123, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @dir_lease_is_valid.__UNIQUE_ID_ddebug353, !235, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!238 = !{ptr @.str.124, !235, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.125, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/ceph/dir.c", i32 1810, i32 2}
!241 = !{ptr @.str.126, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @ceph_d_release.__UNIQUE_ID_ddebug359, !240, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!243 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.128, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../fs/ceph/dir.c", i32 1834, i32 2}
!246 = !{ptr @.str.129, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ceph_d_prune.__UNIQUE_ID_ddebug360, !245, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!248 = !{ptr @.str.130, !245, !"<string literal>", i1 false, i1 false}
!249 = !{!"sp"}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 1, !"min_enum_size", i32 4}
!252 = !{i32 8, !"branch-target-enforcement", i32 0}
!253 = !{i32 8, !"sign-return-address", i32 0}
!254 = !{i32 8, !"sign-return-address-all", i32 0}
!255 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!256 = !{i32 7, !"uwtable", i32 1}
!257 = !{i32 7, !"frame-pointer", i32 2}
!258 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!259 = !{i64 2148368997, i64 2148369002, i64 2148369015, i64 2148369059, i64 2148369093, i64 2148369114}
!260 = !{i64 2148633954}
!261 = !{i64 2148548394, i64 2148548426, i64 2148548455, i64 2148548489, i64 2148548520, i64 2148548543}
!262 = !{!"branch_weights", i32 2000, i32 1}
!263 = !{i64 2150418536}
!264 = !{i8 0, i8 2}
!265 = !{ptr @__dentry_lease_check, ptr @__dir_lease_check}
!266 = !{i64 2152221052, i64 2152221077}
!267 = !{!"branch_weights", i32 1, i32 2000}
!268 = !{i64 2155961173, i64 2155961651, i64 2155961210, i64 2155961266, i64 2155961300, i64 2155961324, i64 2155961365, i64 2155961386, i64 2155961414, i64 2155961448}
!269 = !{i64 2155966171, i64 2155966649, i64 2155966208, i64 2155966264, i64 2155966298, i64 2155966322, i64 2155966363, i64 2155966384, i64 2155966412, i64 2155966446}
!270 = !{i64 2155977082, i64 2155977560, i64 2155977119, i64 2155977175, i64 2155977209, i64 2155977233, i64 2155977274, i64 2155977295, i64 2155977323, i64 2155977357}
!271 = !{i64 2152552753}
!272 = !{i64 2150028959}
!273 = !{i64 2150033893}
!274 = !{i64 2150055611}
!275 = !{i64 2150060505}
!276 = !{i64 2150137032}
!277 = !{i64 2150137357}
!278 = !{i64 2152564615}
!279 = !{i64 2155863301}
!280 = !{i64 949079, i64 949140}
!281 = !{i64 951811}
!282 = !{i64 952096}
!283 = !{i64 2152550822}
!284 = !{i64 2152550664}
!285 = !{i64 2152550992}
!286 = !{i64 2150136707}
!287 = !{i64 2150616637, i64 2150617128, i64 2150616674, i64 2150616730, i64 2150616764, i64 2150616788, i64 2150616829, i64 2150616850, i64 2150616878, i64 2150616912}
!288 = !{i64 2149520338}
!289 = !{i64 2155864649}
!290 = !{i64 2149520604}
