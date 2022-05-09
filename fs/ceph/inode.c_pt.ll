; ModuleID = '/llk/IR_all_yes/fs/ceph/inode.c_pt.bc'
source_filename = "../fs/ceph/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
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
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.ceph_vino = type { i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.105, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.106, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.107, ptr, %struct.address_space, %struct.list_head, %union.anon.108, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.105 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.106 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
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
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.ceph_snapid_map = type { %struct.rb_node, %struct.list_head, %struct.atomic_t, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.132, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%struct.ceph_cap_reservation = type { i32, i32 }
%union.anon.132 = type { ptr }
%struct.ceph_inode_frag = type { %struct.rb_node, i32, i32, i32, i32, [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_inode = type <{ i64, i64, i32, i64, i64, %struct.ceph_mds_reply_cap, %struct.ceph_file_layout_legacy, %struct.ceph_timespec, %struct.ceph_timespec, %struct.ceph_timespec, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, %struct.ceph_timespec, %struct.ceph_frag_tree_head }>
%struct.ceph_mds_reply_cap = type <{ i32, i32, i64, i32, i32, i64, i8 }>
%struct.ceph_file_layout_legacy = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_timespec = type { i32, i32 }
%struct.ceph_frag_tree_head = type { i32, [0 x %struct.ceph_frag_tree_split] }
%struct.ceph_frag_tree_split = type { i32, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_buffer = type { %struct.kref, %struct.kvec, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.kvec = type { ptr, i32 }
%struct.ceph_mds_reply_dirfrag = type { i32, i32, i32, [0 x i32] }
%struct.ceph_cap = type { ptr, %struct.rb_node, ptr, %struct.list_head, i64, %union.anon.129, i32, i32, i32, i32, i32, %struct.list_head }
%union.anon.129 = type { %struct.anon.131 }
%struct.anon.131 = type { i64, i32 }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%union.ceph_mds_request_args = type { %struct.anon.140, [16 x i8] }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.145, ptr, i32 }
%union.anon.145 = type { %struct.anon.147, [8 x i8] }
%struct.anon.147 = type { i8, i64 }
%struct.ceph_mds_reply_head = type <{ i32, i32, i32, i8, i8, i8 }>
%struct.anon.4 = type { i32, i32 }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_mds_reply_lease = type <{ i16, i32, i32 }>
%struct.ceph_dentry_info = type { ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.page = type { i32, %union.anon.7, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.ceph_readdir_cache_control = type { ptr, ptr, i32 }
%struct.anon.146 = type { ptr, i32, i32, i8, i8, i8, i8, ptr }
%struct.anon.137 = type <{ i32, i32, i32, i16, i32 }>
%struct.ceph_mds_reply_dir_entry = type { ptr, i32, ptr, %struct.ceph_mds_reply_info_in, i64 }
%struct.fscache_cookie = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, ptr, ptr, %struct.hlist_bl_node, %struct.list_head, %struct.list_head, %struct.work_struct, i64, i32, i32, i8, i8, i8, i8, i32, %union.anon.133, %union.anon.134 }
%union.anon.133 = type { ptr, [12 x i8] }
%union.anon.134 = type { ptr, [4 x i8] }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.124 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.113 }
%union.anon.113 = type { ptr, [124 x i8] }
%union.anon.124 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.125 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.119 }
%union.anon.119 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.125 = type { i8, %union.anon.126 }
%union.anon.126 = type <{ %struct.anon.127, [3 x i8] }>
%struct.anon.127 = type { i32, i32, i32 }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }

@ceph_get_inode.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_get_inode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/inode.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : get_inode on %llu=%llx.%llx got %p new %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : get_inode on %llu=%llx.%llx got %p new %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_get_snapdir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_get_snapdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014ceph: bad snapdir parent type (mode=0%o)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_get_snapdir\00", [47 x i8] zeroinitializer }, align 32
@ceph_get_snapdir._entry_ptr = internal global ptr @ceph_get_snapdir._entry, section ".printk_index", align 4
@ceph_get_snapdir.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_get_snapdir._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ceph: bad snapdir inode type (mode=0%o)\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_get_snapdir._entry_ptr.11 = internal global ptr @ceph_get_snapdir._entry.9, section ".printk_index", align 4
@ceph_snapdir_iops = external dso_local constant %struct.inode_operations, align 128
@ceph_snapdir_fops = external dso_local constant %struct.file_operations, align 4
@ceph_file_iops = dso_local constant %struct.inode_operations { ptr null, ptr null, ptr @ceph_permission, ptr @ceph_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceph_setattr, ptr @ceph_getattr, ptr @ceph_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @ceph_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@ceph_inode_cachep = external dso_local local_unnamed_addr global ptr, align 4
@ceph_alloc_inode.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_alloc_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : alloc_inode %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ceph: %.*s %12.12s:%-4d : alloc_inode %p\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_alloc_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ci->i_ceph_lock\00", [47 x i8] zeroinitializer }, align 32
@ceph_alloc_inode.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ci->i_fragtree_mutex\00", [42 x i8] zeroinitializer }, align 32
@ceph_alloc_inode.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ci->i_cap_wq\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ceph_alloc_inode.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&ci->i_truncate_mutex\00", [42 x i8] zeroinitializer }, align 32
@ceph_alloc_inode.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ci->i_unsafe_lock\00", [45 x i8] zeroinitializer }, align 32
@ceph_alloc_inode.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&ci->i_work)\00", [33 x i8] zeroinitializer }, align 32
@ceph_evict_inode.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_evict_inode\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : evict_inode %p ino %llx.%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : evict_inode %p ino %llx.%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_evict_inode.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d :  dropping residual ref to snap realm %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d :  dropping residual ref to snap realm %p\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_fill_file_size.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_fill_file_size\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : size %lld -> %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceph: %.*s %12.12s:%-4d : size %lld -> %llu\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_fill_file_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.31, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ceph: fill_file_size non-zero size for directory\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_fill_file_size._entry_ptr = internal global ptr @ceph_fill_file_size._entry, section ".printk_index", align 4
@ceph_fill_file_size.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.35, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : truncate_seq %u -> %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : truncate_seq %u -> %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_fill_file_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_fill_file_size.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.37, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : truncate_size %lld -> %llu\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : truncate_size %lld -> %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_fill_file_time.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_fill_file_time\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : ctime %lld.%09ld -> %lld.%09ld inc w/ cap\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : ctime %lld.%09ld -> %lld.%09ld inc w/ cap\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_fill_file_time.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : mtime %lld.%09ld -> %lld.%09ld tw %d -> %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : mtime %lld.%09ld -> %lld.%09ld tw %d -> %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_fill_file_time.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.44, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : mtime %lld.%09ld -> %lld.%09ld inc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : mtime %lld.%09ld -> %lld.%09ld inc\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_fill_file_time.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.46, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : atime %lld.%09ld -> %lld.%09ld inc\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : atime %lld.%09ld -> %lld.%09ld inc\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_fill_file_time.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.48, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : %p mds time_warp_seq %llu < %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : %p mds time_warp_seq %llu < %u\0A\00", [38 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ceph_fill_inode.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_fill_inode\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%.*s %12.12s:%-4d : %s %p ino %llx.%llx v %llu had %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"ceph: %.*s %12.12s:%-4d : %s %p ino %llx.%llx v %llu had %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@ceph_fill_inode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_fill_inode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014ceph: inode type changed! (ino %llx.%llx is 0%o, mds says 0%o)\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry_ptr = internal global ptr @ceph_fill_inode._entry, section ".printk_index", align 4
@ceph_fill_inode.__already_done.54 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_fill_inode._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014ceph: dev inode rdev changed! (ino %llx.%llx is %u:%u, mds says %u:%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry_ptr.57 = internal global ptr @ceph_fill_inode._entry.55, section ".printk_index", align 4
@ceph_fill_inode._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.50, ptr @.str.2, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ceph: %s ENOMEM xattr blob %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry_ptr.60 = internal global ptr @ceph_fill_inode._entry.58, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@ceph_fill_inode.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.61, i8 0, i8 -39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : %p mode 0%o uid.gid %d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : %p mode 0%o uid.gid %d.%d\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_fill_inode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@ceph_fill_inode.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.64, i8 0, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : max_size %lld -> %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : max_size %lld -> %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_aops = external dso_local constant %struct.address_space_operations, align 4
@ceph_file_fops = external dso_local constant %struct.file_operations, align 4
@ceph_symlink_iops = internal constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceph_setattr, ptr @ceph_getattr, ptr @ceph_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ceph_fill_inode._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.50, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ceph: %s %llx.%llx BAD symlink size %lld\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry_ptr.68 = internal global ptr @ceph_fill_inode._entry.66, section ".printk_index", align 4
@ceph_dir_iops = external dso_local constant %struct.inode_operations, align 128
@ceph_dir_fops = external dso_local constant %struct.file_operations, align 4
@ceph_fill_inode._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.50, ptr @.str.2, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013ceph: %s %llx.%llx BAD mode 0%o\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry_ptr.71 = internal global ptr @ceph_fill_inode._entry.69, section ".printk_index", align 4
@ceph_fill_inode.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.72, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d :  marking %p complete (empty)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d :  marking %p complete (empty)\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_fill_inode.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.74, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d :  %p got snap_caps %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d :  %p got snap_caps %s\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.50, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014ceph: mds issued no caps on %llx.%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@ceph_fill_inode._entry_ptr.78 = internal global ptr @ceph_fill_inode._entry.76, section ".printk_index", align 4
@ceph_fill_trace.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 1, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_fill_trace\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : fill_trace %p is_dentry %d is_target %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : fill_trace %p is_dentry %d is_target %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.82, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : fill_trace reply is empty!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : fill_trace reply is empty!\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_fill_trace.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.84, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : d_lookup on parent=%p name=%.*s got %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : d_lookup on parent=%p name=%.*s got %p\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.86, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : d_alloc %p '%.*s' = %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : d_alloc %p '%.*s' = %p\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.88, i8 1, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d :  dn %p points to wrong inode %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ceph: %.*s %12.12s:%-4d :  dn %p points to wrong inode %p\0A\00", [37 x i8] zeroinitializer }, align 32
@ceph_fill_trace._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.2, i32 1364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ceph: ceph_fill_inode badness %p %llx.%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_fill_trace._entry_ptr = internal global ptr @ceph_fill_trace._entry, section ".printk_index", align 4
@ceph_fill_trace.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.91, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : fill_trace  no dentry lease or dir cap\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : fill_trace  no dentry lease or dir cap\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.93, i8 1, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d :  src %p '%pd' dst %p '%pd'\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d :  src %p '%pd' dst %p '%pd'\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.95, i8 1, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : fill_trace doing d_move %p -> %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : fill_trace doing d_move %p -> %p\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.93, i8 1, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_fill_trace.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.97, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : dn %p gets new offset %lld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : dn %p gets new offset %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.99, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : fill_trace null dentry\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : fill_trace null dentry\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.101, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%.*s %12.12s:%-4d : d_delete %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ceph: %.*s %12.12s:%-4d : d_delete %p\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.103, i8 1, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d :  %p links to %p %llx.%llx, not %llx.%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ceph: %.*s %12.12s:%-4d :  %p links to %p %llx.%llx, not %llx.%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.105, i8 1, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d :  final dn %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d :  final dn %p\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.107, i8 1, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d :  linking snapped dir %p to dn %p\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d :  linking snapped dir %p to dn %p\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_fill_trace.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.109, i8 1, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : fill_trace done err=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : fill_trace done err=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_readdir_prepopulate\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : readdir_prepopulate got new frag %x -> %x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : readdir_prepopulate got new frag %x -> %x\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.114, i8 1, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%.*s %12.12s:%-4d : readdir_prepopulate %d items under SNAPDIR dn %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"ceph: %.*s %12.12s:%-4d : readdir_prepopulate %d items under SNAPDIR dn %p\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.116, i8 1, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : readdir_prepopulate %d items under dn %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ceph: %.*s %12.12s:%-4d : readdir_prepopulate %d items under dn %p\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.84, i8 1, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.86, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.118, i8 1, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%.*s %12.12s:%-4d : d_alloc badness\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ceph: %.*s %12.12s:%-4d : d_alloc badness\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.88, i8 1, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.120, i8 1, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : new_inode badness\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceph: %.*s %12.12s:%-4d : new_inode badness\0A\00", [51 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.111, ptr @.str.2, i32 1761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ceph: ceph_fill_inode badness on %p\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate._entry_ptr = internal global ptr @ceph_readdir_prepopulate._entry, section ".printk_index", align 4
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.123, i8 1, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%.*s %12.12s:%-4d :  skip splicing dn %p to inode %p (security xattr deadlock)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"ceph: %.*s %12.12s:%-4d :  skip splicing dn %p to inode %p (security xattr deadlock)\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_readdir_prepopulate.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.125, i8 1, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : readdir_prepopulate done\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : readdir_prepopulate done\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_inode_set_size.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.2, ptr @.str.128, i8 1, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_inode_set_size\00", [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : set_size %p %llu -> %llu\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : set_size %p %llu -> %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_queue_inode_work.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.131, i8 1, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_queue_inode_work\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : queue_inode_work %p, mask=%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : queue_inode_work %p, mask=%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_queue_inode_work.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.2, ptr @.str.133, i8 1, i8 -51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : queue_inode_work %p already queued, mask=%lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : queue_inode_work %p already queued, mask=%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 1, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__ceph_do_pending_vmtruncate\00", [35 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : __do_pending_vmtruncate %p none pending\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : __do_pending_vmtruncate %p none pending\0A\00", [61 x i8] zeroinitializer }, align 32
@__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.138, i8 1, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : __do_pending_vmtruncate %p flushing snaps first\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ceph: %.*s %12.12s:%-4d : __do_pending_vmtruncate %p flushing snaps first\0A\00", [53 x i8] zeroinitializer }, align 32
@__ceph_do_pending_vmtruncate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.135, ptr @.str.2, ptr @.str.140, i8 1, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : __do_pending_vmtruncate %p (%d) to %lld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : __do_pending_vmtruncate %p (%d) to %lld\0A\00", [61 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.143, i8 1, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__ceph_setattr\00", [17 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : setattr %p issued %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p issued %s\0A\00", [48 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.145, i8 2, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : setattr %p uid %d -> %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p uid %d -> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.147, i8 2, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.147 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : setattr %p gid %d -> %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p gid %d -> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.149, i8 2, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : setattr %p mode 0%o -> 0%o\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p mode 0%o -> 0%o\0A\00", [42 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.151, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : setattr %p atime %lld.%ld -> %lld.%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p atime %lld.%ld -> %lld.%ld\0A\00", [63 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.153, i8 2, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : setattr %p size %lld -> %lld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p size %lld -> %lld\0A\00", [40 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.155, i8 2, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : setattr %p mtime %lld.%ld -> %lld.%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p mtime %lld.%ld -> %lld.%ld\0A\00", [63 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.157, i8 2, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : setattr %p ctime %lld.%ld -> %lld.%ld (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p ctime %lld.%ld -> %lld.%ld (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ctime only\00", [21 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ignored\00", [24 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.161, i8 2, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : setattr %p ATTR_FILE ... hrm!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p ATTR_FILE ... hrm!\0A\00", [39 x i8] zeroinitializer }, align 32
@__ceph_setattr.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.142, ptr @.str.2, ptr @.str.163, i8 2, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.163 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%.*s %12.12s:%-4d : setattr %p result=%d (%s locally, %d remote)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"ceph: %.*s %12.12s:%-4d : setattr %p result=%d (%s locally, %d remote)\0A\00", [56 x i8] zeroinitializer }, align 32
@__ceph_do_getattr.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.2, ptr @.str.166, i8 2, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__ceph_do_getattr\00", [46 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : do_getattr inode %p SNAPDIR\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : do_getattr inode %p SNAPDIR\0A\00", [41 x i8] zeroinitializer }, align 32
@__ceph_do_getattr.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.2, ptr @.str.168, i8 2, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : do_getattr inode %p mask %s mode 0%o\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d : do_getattr inode %p mask %s mode 0%o\0A\00", [32 x i8] zeroinitializer }, align 32
@__ceph_do_getattr.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.2, ptr @.str.170, i8 2, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : do_getattr result=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : do_getattr result=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_vino_is_reserved._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.172, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ceph_vino_is_reserved = private unnamed_addr constant [22 x i8] c"ceph_vino_is_reserved\00", align 1
@.str.173 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/super.h\00", [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Attempt to access reserved inode number 0x%llx\00", [49 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__ceph_choose_frag.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.2, ptr @.str.176, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__ceph_choose_frag\00", [45 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%.*s %12.12s:%-4d : choose_frag(%x) %x splits by %d (%d ways)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"ceph: %.*s %12.12s:%-4d : choose_frag(%x) %x splits by %d (%d ways)\0A\00", [59 x i8] zeroinitializer }, align 32
@__ceph_choose_frag.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.175, ptr @.str.2, ptr @.str.178, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : choose_frag(%x) = %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : choose_frag(%x) = %x\0A\00", [48 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@ceph_fill_fragtree.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.182, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_fill_fragtree\00", [45 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : fill_fragtree %llx.%llx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : fill_fragtree %llx.%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_fill_fragtree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.181, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013ceph: fill_fragtree %llx.%llx invalid split %d/%u, frag %x split by %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_fill_fragtree._entry_ptr = internal global ptr @ceph_fill_fragtree._entry, section ".printk_index", align 4
@ceph_fill_fragtree.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.181, ptr @.str.2, ptr @.str.185, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d :  frag %x split by %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d :  frag %x split by %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__get_or_create_frag.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.187, ptr @.str.2, ptr @.str.188, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__get_or_create_frag\00", [43 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : get_or_create_frag added %llx.%llx frag %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : get_or_create_frag added %llx.%llx frag %x\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ceph_fill_dirfrag.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.2, ptr @.str.191, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_fill_dirfrag\00", [46 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : fill_dirfrag removed %llx.%llx frag %x (no ref)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ceph: %.*s %12.12s:%-4d : fill_dirfrag removed %llx.%llx frag %x (no ref)\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_fill_dirfrag.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.2, ptr @.str.193, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : fill_dirfrag cleared %llx.%llx frag %x referral\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ceph: %.*s %12.12s:%-4d : fill_dirfrag cleared %llx.%llx frag %x referral\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_fill_dirfrag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.190, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ceph: fill_dirfrag ENOMEM on mds ref %llx.%llx fg %x\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_fill_dirfrag._entry_ptr = internal global ptr @ceph_fill_dirfrag._entry, section ".printk_index", align 4
@ceph_fill_dirfrag.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.190, ptr @.str.2, ptr @.str.196, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.196 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : fill_dirfrag %llx.%llx frag %x ndist=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ceph: %.*s %12.12s:%-4d : fill_dirfrag %llx.%llx frag %x ndist=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__update_dentry_lease.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.198, ptr @.str.2, ptr @.str.199, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.198 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__update_dentry_lease\00", [42 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%.*s %12.12s:%-4d : update_dentry_lease %p duration %lu ms ttl %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"ceph: %.*s %12.12s:%-4d : update_dentry_lease %p duration %lu ms ttl %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@splice_dentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ceph: splice_dentry error %ld %p inode %p ino %llx.%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"splice_dentry\00", [18 x i8] zeroinitializer }, align 32
@splice_dentry._entry_ptr = internal global ptr @splice_dentry._entry, section ".printk_index", align 4
@splice_dentry.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.202, ptr @.str.2, ptr @.str.203, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.203 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"%.*s %12.12s:%-4d : dn %p (%d) spliced with %p (%d) inode %p ino %llx.%llx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"ceph: %.*s %12.12s:%-4d : dn %p (%d) spliced with %p (%d) inode %p ino %llx.%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@splice_dentry.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.202, ptr @.str.2, ptr @.str.205, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.205 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : dn %p attached to %p ino %llx.%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : dn %p attached to %p ino %llx.%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.208 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@readdir_prepopulate_inodes_only.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.209, ptr @.str.2, ptr @.str.210, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.209 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"readdir_prepopulate_inodes_only\00", [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : new_inode badness got %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : new_inode badness got %d\0A\00", [44 x i8] zeroinitializer }, align 32
@readdir_prepopulate_inodes_only._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.209, ptr @.str.2, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ceph: ceph_fill_inode badness on %p got %d\0A\00", [50 x i8] zeroinitializer }, align 32
@readdir_prepopulate_inodes_only._entry_ptr = internal global ptr @readdir_prepopulate_inodes_only._entry, section ".printk_index", align 4
@fill_readdir_cache.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.213, ptr @.str.2, ptr @.str.214, i8 1, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fill_readdir_cache\00", [45 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : readdir cache dn %p idx %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : readdir cache dn %p idx %d\0A\00", [42 x i8] zeroinitializer }, align 32
@fill_readdir_cache.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.213, ptr @.str.2, ptr @.str.216, i8 1, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.216 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : disable readdir cache\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : disable readdir cache\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@ceph_inode_work.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.220, ptr @.str.2, ptr @.str.221, i8 1, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_inode_work\00", [16 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : writeback %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d : writeback %p\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_do_invalidate_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.172, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ceph_do_invalidate_pages = private unnamed_addr constant [25 x i8] c"ceph_do_invalidate_pages\00", align 1
@ceph_do_invalidate_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @__func__.ceph_do_invalidate_pages, ptr @.str.2, i32 1861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ceph: %s: inode %llx.%llx is shut down\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_do_invalidate_pages._entry_ptr = internal global ptr @ceph_do_invalidate_pages._entry, section ".printk_index", align 4
@ceph_do_invalidate_pages.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.ceph_do_invalidate_pages, ptr @.str.2, ptr @.str.224, i8 1, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.224 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%.*s %12.12s:%-4d : invalidate_pages %p gen %d revoking %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ceph: %.*s %12.12s:%-4d : invalidate_pages %p gen %d revoking %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ceph_do_invalidate_pages._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @__func__.ceph_do_invalidate_pages, ptr @.str.2, i32 1884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ceph: invalidate_inode_pages2 %llx.%llx failed\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_do_invalidate_pages._entry_ptr.228 = internal global ptr @ceph_do_invalidate_pages._entry.226, section ".printk_index", align 4
@ceph_do_invalidate_pages.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.ceph_do_invalidate_pages, ptr @.str.2, ptr @.str.229, i8 1, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : invalidate_pages %p gen %d successful\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"ceph: %.*s %12.12s:%-4d : invalidate_pages %p gen %d successful\0A\00", [63 x i8] zeroinitializer }, align 32
@ceph_do_invalidate_pages.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.ceph_do_invalidate_pages, ptr @.str.2, ptr @.str.231, i8 1, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.231 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%.*s %12.12s:%-4d : invalidate_pages %p gen %d raced, now %d revoking %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"ceph: %.*s %12.12s:%-4d : invalidate_pages %p gen %d raced, now %d revoking %d\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@__sancov_gen_cov_switch_values.233 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7, i64 9, i64 11]
@__sancov_gen_cov_switch_values.234 = internal global [4 x i64] [i64 2, i64 32, i64 1024, i64 5120]
@__sancov_gen_cov_switch_values.235 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 67, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 88, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 94, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 454, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 456, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 476, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 496, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 507, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 532, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 538, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 562, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 584, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 632, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 634, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 647, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 673, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 694, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 702, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 714, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 721, i32 5 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 744, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 777, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 786, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 792, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 817, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 867, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 899, i32 12 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 915, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 979, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1005, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1027, i32 5 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1036, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1053, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1280, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1284, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1322, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1327, i32 5 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1338, i32 5 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1363, i32 4 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1414, i32 4 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1421, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1425, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1442, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1455, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1457, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1479, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1491, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1502, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1524, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1653, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1661, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1664, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1719, i32 5 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1750, i32 5 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1761, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1778, i32 5 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1811, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1821, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1841, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1843, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1922, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1934, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1946, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2044, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2047, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2062, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2077, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2092, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2116, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2135, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2161, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2182, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2207, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2269, i32 3 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2273, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 2300, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [19 x i8] c"../fs/ceph/super.h\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 552, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 229, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 240, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 271, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 382, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 388, i32 4 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 422, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 172, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 288, i32 4 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 294, i32 4 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 308, i32 3 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 318, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1106, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1239, i32 3 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1245, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1254, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.866, i32 55, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.869, i32 717, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1549, i32 4 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1555, i32 4 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1610, i32 3 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1614, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.902, i32 260, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1977, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1860, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1869, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1883, i32 3 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1890, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.944 = private constant [19 x i8] c"../fs/ceph/inode.c\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.944, i32 1895, i32 3 }
@llvm.compiler.used = appending global [253 x ptr] [ptr @ceph_do_invalidate_pages._entry, ptr @ceph_do_invalidate_pages._entry.226, ptr @ceph_do_invalidate_pages._entry_ptr, ptr @ceph_do_invalidate_pages._entry_ptr.228, ptr @ceph_fill_dirfrag._entry, ptr @ceph_fill_dirfrag._entry_ptr, ptr @ceph_fill_file_size._entry, ptr @ceph_fill_file_size._entry_ptr, ptr @ceph_fill_fragtree._entry, ptr @ceph_fill_fragtree._entry_ptr, ptr @ceph_fill_inode._entry, ptr @ceph_fill_inode._entry.55, ptr @ceph_fill_inode._entry.58, ptr @ceph_fill_inode._entry.66, ptr @ceph_fill_inode._entry.69, ptr @ceph_fill_inode._entry.76, ptr @ceph_fill_inode._entry_ptr, ptr @ceph_fill_inode._entry_ptr.57, ptr @ceph_fill_inode._entry_ptr.60, ptr @ceph_fill_inode._entry_ptr.68, ptr @ceph_fill_inode._entry_ptr.71, ptr @ceph_fill_inode._entry_ptr.78, ptr @ceph_fill_trace._entry, ptr @ceph_fill_trace._entry_ptr, ptr @ceph_get_snapdir._entry, ptr @ceph_get_snapdir._entry.9, ptr @ceph_get_snapdir._entry_ptr, ptr @ceph_get_snapdir._entry_ptr.11, ptr @ceph_readdir_prepopulate._entry, ptr @ceph_readdir_prepopulate._entry_ptr, ptr @readdir_prepopulate_inodes_only._entry, ptr @readdir_prepopulate_inodes_only._entry_ptr, ptr @splice_dentry._entry, ptr @splice_dentry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ceph_alloc_inode.__key, ptr @.str.15, ptr @ceph_alloc_inode.__key.16, ptr @.str.17, ptr @ceph_alloc_inode.__key.18, ptr @.str.19, ptr @ceph_alloc_inode.__key.20, ptr @.str.21, ptr @ceph_alloc_inode.__key.22, ptr @.str.23, ptr @ceph_alloc_inode.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @ceph_vino_is_reserved._rs, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @ceph_do_invalidate_pages._rs, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232], section "llvm.metadata"
@0 = internal global [236 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_get_snapdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_get_snapdir._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_alloc_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_alloc_inode.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_alloc_inode.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_alloc_inode.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_alloc_inode.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_alloc_inode.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_file_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_inode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_inode._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_inode._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_inode._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_inode._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_inode._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_trace._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_readdir_prepopulate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_vino_is_reserved._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_fragtree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fill_dirfrag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @splice_dentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @readdir_prepopulate_inodes_only._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_do_invalidate_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_do_invalidate_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_do_invalidate_pages._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_get_inode(ptr noundef %sb, [2 x i64] %vino.coerce) local_unnamed_addr #0 align 64 {
entry:
  %vino = alloca %struct.ceph_vino, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vino.coerce.fca.0.extract = extractvalue [2 x i64] %vino.coerce, 0
  %0 = ptrtoint ptr %vino to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %vino.coerce.fca.0.extract, ptr %vino, align 8
  %vino.coerce.fca.1.extract = extractvalue [2 x i64] %vino.coerce, 1
  %vino.coerce.fca.1.gep = getelementptr inbounds [2 x i64], ptr %vino, i32 0, i32 1
  %1 = ptrtoint ptr %vino.coerce.fca.1.gep to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %vino.coerce.fca.1.extract, ptr %vino.coerce.fca.1.gep, align 8
  %2 = add i64 %vino.coerce.fca.0.extract, -512
  call void @__sanitizer_cov_trace_const_cmp8(i64 3584, i64 %2)
  %3 = icmp ult i64 %2, 3584
  br i1 %3, label %land.rhs.i, label %ceph_vino_is_reserved.exit

land.rhs.i:                                       ; preds = %entry
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_vino_is_reserved._rs, ptr noundef nonnull @__func__.ceph_vino_is_reserved) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.rhs.i.cleanup_crit_edge, label %do.end.critedge.i, !prof !474

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end.critedge.i:                                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.173, i32 noundef 554, i32 noundef 9, ptr noundef nonnull @.str.174, i64 noundef %vino.coerce.fca.0.extract) #14
  br label %cleanup

ceph_vino_is_reserved.exit:                       ; preds = %entry
  %4 = add i64 %vino.coerce.fca.0.extract, -256
  call void @__sanitizer_cov_trace_const_cmp8(i64 3840, i64 %4)
  %5 = icmp ult i64 %4, 3840
  br i1 %5, label %ceph_vino_is_reserved.exit.cleanup_crit_edge, label %if.end

ceph_vino_is_reserved.exit.cleanup_crit_edge:     ; preds = %ceph_vino_is_reserved.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %ceph_vino_is_reserved.exit
  %6 = ptrtoint ptr %vino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %vino, align 8
  %conv = trunc i64 %7 to i32
  %call2 = call ptr @iget5_locked(ptr noundef %sb, i32 noundef %conv, ptr noundef nonnull @ceph_ino_compare, ptr noundef nonnull @ceph_set_ino_cb, ptr noundef nonnull %vino) #14
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_inode.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_inode, %if.then10)) #14
          to label %cleanup [label %if.then10], !srcloc !475

if.then10:                                        ; preds = %do.body
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call2, i32 -952
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.i.i.i, align 8
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %mount_options.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %mount_options.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mount_options.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then10.ceph_present_inode.exit_crit_edge, label %if.then.i.i, !prof !474

if.then10.ceph_present_inode.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_present_inode.exit

if.then.i.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i = lshr i64 %11, 32
  %xor.i.i.i = xor i64 %shr.i.i.i, %11
  %conv2.i.i.i = trunc i64 %xor.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv2.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 %conv2.i.i.i
  %conv.i.i = zext i32 %spec.store.select.i.i.i to i64
  br label %ceph_present_inode.exit

ceph_present_inode.exit:                          ; preds = %if.then.i.i, %if.then10.ceph_present_inode.exit_crit_edge
  %retval.0.i.i = phi i64 [ %conv.i.i, %if.then.i.i ], [ %11, %if.then10.ceph_present_inode.exit_crit_edge ]
  %snap = getelementptr i8, ptr %call2, i32 -944
  %18 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %snap, align 8
  %i_state = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 24
  %20 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_state, align 8
  %and = lshr i32 %21, 3
  %and.lobit = and i32 %and, 1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_inode.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 68, i64 noundef %retval.0.i.i, i64 noundef %11, i64 noundef %19, ptr noundef nonnull %call2, i32 noundef %and.lobit) #14
  br label %cleanup

cleanup:                                          ; preds = %ceph_present_inode.exit, %do.body, %if.end.cleanup_crit_edge, %ceph_vino_is_reserved.exit.cleanup_crit_edge, %do.end.critedge.i, %land.rhs.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %ceph_present_inode.exit ], [ inttoptr (i32 -121 to ptr), %ceph_vino_is_reserved.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call2, %do.body ], [ inttoptr (i32 -121 to ptr), %land.rhs.i.cleanup_crit_edge ], [ inttoptr (i32 -121 to ptr), %do.end.critedge.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ceph_ino_compare(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_set_ino_cb(ptr noundef %inode, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
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
  %6 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 16)
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack = load i64, ptr %add.ptr.i, align 8
  %shr.i.i = lshr i64 %.unpack, 32
  %xor.i.i = xor i64 %shr.i.i, %.unpack
  %conv2.i.i = trunc i64 %xor.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i)
  %tobool.not.i.i = icmp eq i32 %conv2.i.i, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 2, i32 %conv2.i.i
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select.i.i, ptr %i_ino, align 8
  %i_version.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %i_version.i, i64 noundef 0) #14
  %total_inodes = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 49, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %9 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %total_inodes, i64 noundef 1, i32 noundef %9) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_get_snapdir(ptr nocapture noundef readonly %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %parent, i32 -952
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %1, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 -1, 1
  %call1 = tail call ptr @ceph_get_inode(ptr noundef %3, [2 x i64] %.fca.1.insert)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %parent, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.end24, label %land.end

land.end:                                         ; preds = %if.end
  %.b112 = load i1, ptr @ceph_get_snapdir.__already_done, align 1
  br i1 %.b112, label %land.end.cleanup_crit_edge, label %if.then11, !prof !474

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_get_snapdir.__already_done, align 1
  %conv13 = zext i16 %5 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv13) #17
  br label %cleanup

if.end24:                                         ; preds = %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %7 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_state, align 8
  %and25 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true, label %if.end24.if.end64_crit_edge

if.end24.if.end64_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end24
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %call1, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp30 = icmp eq i16 %11, 16384
  br i1 %cmp30, label %land.lhs.true.if.end64_crit_edge, label %land.end40

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

land.end40:                                       ; preds = %land.lhs.true
  %.b111113 = load i1, ptr @ceph_get_snapdir.__already_done.8, align 1
  br i1 %.b111113, label %land.end40.cleanup_crit_edge, label %if.then47, !prof !474

land.end40.cleanup_crit_edge:                     ; preds = %land.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then47:                                        ; preds = %land.end40
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_get_snapdir.__already_done.8, align 1
  %conv53 = zext i16 %10 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv53) #17
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true.if.end64_crit_edge, %if.end24.if.end64_crit_edge
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %call1, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %i_uid67 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 2
  %13 = ptrtoint ptr %i_uid67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_uid67, align 4
  %15 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %i_gid68 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 3
  %16 = ptrtoint ptr %i_gid68 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_gid68, align 8
  %18 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %i_gid, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_mtime69 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 16
  %19 = call ptr @memcpy(ptr %i_mtime, ptr %i_mtime69, i32 16)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %i_ctime70 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 17
  %20 = call ptr @memcpy(ptr %i_ctime, ptr %i_ctime70, i32 16)
  %i_atime = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_atime71 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 15
  %21 = call ptr @memcpy(ptr %i_atime, ptr %i_atime71, i32 16)
  %i_rbytes = getelementptr i8, ptr %call1, i32 -736
  %22 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %i_rbytes, align 8
  %i_btime = getelementptr i8, ptr %call1, i32 -88
  %i_btime73 = getelementptr i8, ptr %parent, i32 -88
  %23 = call ptr @memcpy(ptr %i_btime, ptr %i_btime73, i32 16)
  br i1 %tobool26.not, label %if.end64.cleanup_crit_edge, label %if.then77

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then77:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %i_op = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %24 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ceph_snapdir_iops, ptr %i_op, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ceph_snapdir_fops, ptr %25, align 8
  %i_snap_caps = getelementptr i8, ptr %call1, i32 -392
  %27 = ptrtoint ptr %i_snap_caps to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %i_snap_caps, align 8
  tail call void @unlock_new_inode(ptr noundef %call1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end64.cleanup_crit_edge, %if.then47, %land.end40.cleanup_crit_edge, %if.then11, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %entry.cleanup_crit_edge ], [ %call1, %if.then77 ], [ %call1, %if.end64.cleanup_crit_edge ], [ inttoptr (i32 -20 to ptr), %if.then11 ], [ inttoptr (i32 -20 to ptr), %land.end.cleanup_crit_edge ], [ inttoptr (i32 -20 to ptr), %if.then47 ], [ inttoptr (i32 -20 to ptr), %land.end40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__ceph_do_getattr(ptr noundef %inode, ptr noundef null, i32 noundef 4, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -10, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call3, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %snap.i = getelementptr i8, ptr %1, i32 -944
  %6 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %7)
  %cmp.not = icmp eq i64 %7, -2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_ceph_flags.i = getelementptr i8, ptr %1, i32 -868
  %8 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp sgt i32 %11, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %12 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr, align 8
  %and = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9.if.end14_crit_edge, label %land.lhs.true

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %14 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ia_size, align 8
  %call10 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  %max_file_size = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %max_file_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_file_size, align 8
  %18 = tail call i64 @llvm.smax.i64(i64 %call10, i64 %17)
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %18)
  %cmp12 = icmp sgt i64 %15, %18
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %19 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %attr, align 8
  %and16 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end22_crit_edge, label %land.lhs.true18

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true18:                                  ; preds = %if.end14
  %ia_size19 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %21 = ptrtoint ptr %ia_size19 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ia_size19, align 8
  %call20 = tail call zeroext i1 @ceph_quota_is_max_bytes_exceeded(ptr noundef %1, i64 noundef %22) #14
  br i1 %call20, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.if.end22_crit_edge

land.lhs.true18.if.end22_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true18.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %call23 = tail call i32 @__ceph_setattr(ptr noundef %1, ptr noundef %attr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp24 = icmp sgt i32 %call23, -1
  br i1 %cmp24, label %land.lhs.true25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true25:                                  ; preds = %if.end22
  %23 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attr, align 8
  %and27 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true25.cleanup_crit_edge, label %if.then29

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %25 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ia_mode, align 4
  %call30 = tail call i32 @posix_acl_chmod(ptr noundef nonnull @init_user_ns, ptr noundef %1, i16 noundef zeroext %26) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -30, %entry.cleanup_crit_edge ], [ -116, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ -27, %land.lhs.true.cleanup_crit_edge ], [ -122, %land.lhs.true18.cleanup_crit_edge ], [ %call30, %if.then29 ], [ %call23, %land.lhs.true25.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -952
  %i_ceph_flags.i = getelementptr i8, ptr %3, i32 -868
  %4 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i = icmp sgt i32 %11, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %and.i85 = and i32 %request_mask, 2202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  %spec.select.i87 = select i1 %tobool.not.i86, i32 0, i32 4
  %and1.i = and i32 %request_mask, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.statx_to_caps.exit_crit_edge, label %if.then3.i

if.then3.statx_to_caps.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %statx_to_caps.exit

if.then3.i:                                       ; preds = %if.then3
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 8
  %14 = and i16 %13, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %14)
  %cmp.i88 = icmp eq i16 %14, 16384
  br i1 %cmp.i88, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %or7.i = or i32 %spec.select.i87, 256
  br label %statx_to_caps.exit

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %or8.i = or i32 %spec.select.i87, 16
  br label %statx_to_caps.exit

statx_to_caps.exit:                               ; preds = %if.else.i, %if.then6.i, %if.then3.statx_to_caps.exit_crit_edge
  %mask.1.i = phi i32 [ %or7.i, %if.then6.i ], [ %or8.i, %if.else.i ], [ %spec.select.i87, %if.then3.statx_to_caps.exit_crit_edge ]
  %and11.i = and i32 %request_mask, 1760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or14.i = or i32 %mask.1.i, 256
  %spec.select29.i = select i1 %tobool12.not.i, i32 %mask.1.i, i32 %or14.i
  %and16.i = lshr i32 %request_mask, 1
  %15 = and i32 %and16.i, 64
  %16 = or i32 %spec.select29.i, %15
  %and5 = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6 = icmp ne i32 %and5, 0
  %call.i = tail call i32 @__ceph_do_getattr(ptr noundef %3, ptr noundef null, i32 noundef %16, i1 noundef zeroext %tobool6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %statx_to_caps.exit.if.end11_crit_edge, label %statx_to_caps.exit.cleanup_crit_edge

statx_to_caps.exit.cleanup_crit_edge:             ; preds = %statx_to_caps.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

statx_to_caps.exit.if.end11_crit_edge:            ; preds = %statx_to_caps.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %statx_to_caps.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #14
  %17 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb.i.i, align 4
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
  br i1 %tobool.not.i.i, label %if.end11.ceph_present_inode.exit_crit_edge, label %if.then.i.i, !prof !474

if.end11.ceph_present_inode.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_present_inode.exit

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %shr.i.i.i = lshr i64 %20, 32
  %xor.i.i.i = xor i64 %shr.i.i.i, %20
  %conv2.i.i.i = trunc i64 %xor.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv2.i.i.i, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 %conv2.i.i.i
  %conv.i.i = zext i32 %spec.store.select.i.i.i to i64
  br label %ceph_present_inode.exit

ceph_present_inode.exit:                          ; preds = %if.then.i.i, %if.end11.ceph_present_inode.exit_crit_edge
  %retval.0.i.i = phi i64 [ %conv.i.i, %if.then.i.i ], [ %20, %if.end11.ceph_present_inode.exit_crit_edge ]
  %ino = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 6
  %27 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %retval.0.i.i, ptr %ino, align 8
  %i_btime = getelementptr i8, ptr %3, i32 -88
  %28 = ptrtoint ptr %i_btime to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_btime, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool13.not = icmp eq i64 %29, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %ceph_present_inode.exit.if.then16_crit_edge

ceph_present_inode.exit.if.then16_crit_edge:      ; preds = %ceph_present_inode.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

lor.lhs.false:                                    ; preds = %ceph_present_inode.exit
  %tv_nsec = getelementptr i8, ptr %3, i32 -80
  %30 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then16_crit_edge

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %ceph_present_inode.exit.if.then16_crit_edge
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  %32 = call ptr @memcpy(ptr %btime, ptr %i_btime, i32 16)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %lor.lhs.false.if.end18_crit_edge
  %valid_mask.0 = phi i32 [ 4095, %if.then16 ], [ 2047, %lor.lhs.false.if.end18_crit_edge ]
  %snap.i = getelementptr i8, ptr %3, i32 -944
  %33 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %34)
  %cmp = icmp eq i64 %34, -2
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i.i, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 1
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.end18
  %37 = getelementptr i8, ptr %3, i32 -108
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool21.not = icmp eq ptr %39, null
  br i1 %tobool21.not, label %if.else.if.end24_crit_edge, label %cond.true

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %dev22 = getelementptr inbounds %struct.ceph_snapid_map, ptr %39, i32 0, i32 4
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %cond.true, %if.then20
  %dev22.sink = phi ptr [ %dev22, %cond.true ], [ %s_dev, %if.then20 ]
  %40 = ptrtoint ptr %dev22.sink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev22.sink, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else.if.end24_crit_edge
  %cond.sink = phi i32 [ 0, %if.else.if.end24_crit_edge ], [ %41, %if.end24.sink.split ]
  %dev23 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 7
  %42 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond.sink, ptr %dev23, align 8
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %3, align 8
  %45 = and i16 %44, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %45)
  %cmp27 = icmp eq i16 %45, 16384
  br i1 %cmp27, label %if.then29, label %if.end24.if.end47_crit_edge

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then29:                                        ; preds = %if.end24
  %46 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 33
  %48 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %s_fs_info.i, align 16
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mount_options, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and33 = and i32 %53, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else36, label %if.then35

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %i_rbytes = getelementptr i8, ptr %3, i32 -736
  %54 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_rbytes, align 8
  br label %if.end38

if.else36:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  %i_files = getelementptr i8, ptr %3, i32 -704
  %56 = ptrtoint ptr %i_files to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %i_files, align 8
  %i_subdirs = getelementptr i8, ptr %3, i32 -696
  %58 = ptrtoint ptr %i_subdirs to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %i_subdirs, align 8
  %add = add i64 %59, %57
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then35
  %.sink = phi i64 [ %add, %if.else36 ], [ %55, %if.then35 ]
  %60 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %.sink, ptr %60, align 8
  %blocks = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 16
  %62 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %blocks, align 8
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %63 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 65536, ptr %blksize, align 4
  %nlink = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 2
  %64 = ptrtoint ptr %nlink to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp39 = icmp eq i32 %65, 1
  br i1 %cmp39, label %if.then41, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %i_subdirs42 = getelementptr i8, ptr %3, i32 -696
  %66 = ptrtoint ptr %i_subdirs42 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_subdirs42, align 8
  %68 = trunc i64 %67 to i32
  %conv44 = add i32 %68, 2
  %69 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv44, ptr %nlink, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end38.if.end47_crit_edge, %if.end24.if.end47_crit_edge
  %and48 = and i32 %valid_mask.0, %request_mask
  %70 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %and48, ptr %stat, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %statx_to_caps.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -116, %entry.cleanup_crit_edge ], [ %call.i, %statx_to_caps.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ceph_find_frag(ptr nocapture noundef readonly %ci, i32 noundef %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_fragtree = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 23
  %0 = ptrtoint ptr %i_fragtree to i32
  call void @__asan_load4_noabort(i32 %0)
  %n.016 = load ptr, ptr %i_fragtree, align 4
  %tobool.not17 = icmp eq ptr %n.016, null
  br i1 %tobool.not17, label %entry.cleanup7_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup7

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %n.018 = phi ptr [ %n.0, %cleanup.while.body_crit_edge ], [ %n.016, %entry.while.body_crit_edge ]
  %frag1 = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018, i32 0, i32 1
  %1 = ptrtoint ptr %frag1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frag1, align 4
  %call = tail call i32 @ceph_frag_compare(i32 noundef %f, i32 noundef %2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.018, i32 0, i32 2
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.else.cleanup7_crit_edge, label %if.then3

if.else.cleanup7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.018, i32 0, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.then
  %n.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %3 = ptrtoint ptr %n.1.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.0 = load ptr, ptr %n.1.in, align 4
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %cleanup.cleanup7_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.cleanup7_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup7

cleanup7:                                         ; preds = %cleanup.cleanup7_crit_edge, %if.else.cleanup7_crit_edge, %entry.cleanup7_crit_edge
  %n.0.lcssa = phi ptr [ null, %entry.cleanup7_crit_edge ], [ %n.018, %if.else.cleanup7_crit_edge ], [ null, %cleanup.cleanup7_crit_edge ]
  ret ptr %n.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_frag_compare(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_choose_frag(ptr noundef %ci, i32 noundef %v, ptr noundef %pfrag, ptr noundef %found) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_fragtree_mutex = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 25
  tail call void @mutex_lock_nested(ptr noundef %i_fragtree_mutex, i32 noundef 0) #14
  %call = tail call fastcc i32 @__ceph_choose_frag(ptr noundef %ci, i32 noundef %v, ptr noundef %pfrag, ptr noundef %found)
  tail call void @mutex_unlock(ptr noundef %i_fragtree_mutex) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ceph_choose_frag(ptr nocapture noundef readonly %ci, i32 noundef %v, ptr noundef writeonly %pfrag, ptr noundef writeonly %found) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %found, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and.i.i = and i32 %v, 16777215
  %i_fragtree.i = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %do.body59.while.cond_crit_edge, %if.end
  %t.0 = phi i32 [ 0, %if.end ], [ %t.1, %do.body59.while.cond_crit_edge ]
  %shr.i.i.i = lshr i32 %t.0, 24
  %sub.i.i = sub nsw i32 24, %shr.i.i.i
  %shl.i.i = shl i32 16777215, %sub.i.i
  %and.i = and i32 %shl.i.i, %and.i.i
  %and.i3.i = and i32 %t.0, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and.i3.i)
  %cmp.i = icmp eq i32 %and.i, %and.i3.i
  br i1 %cmp.i, label %while.cond.if.end17_crit_edge, label %do.end, !prof !474

while.cond.if.end17_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 215, i32 noundef 9, ptr noundef null) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end, %while.cond.if.end17_crit_edge
  %1 = ptrtoint ptr %i_fragtree.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %n.016.i = load ptr, ptr %i_fragtree.i, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.end17.do.body77_crit_edge, label %if.end17.while.body.i_crit_edge

if.end17.while.body.i_crit_edge:                  ; preds = %if.end17
  br label %while.body.i

if.end17.do.body77_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body77

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end17.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.016.i, %if.end17.while.body.i_crit_edge ]
  %frag1.i = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 1
  %2 = ptrtoint ptr %frag1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frag1.i, align 4
  %call.i = tail call i32 @ceph_frag_compare(i32 noundef %t.0, i32 noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i121 = icmp slt i32 %call.i, 0
  br i1 %cmp.i121, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end27, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %4 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.do.body77_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.do.body77_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body77

if.end27:                                         ; preds = %if.else.i
  %split_by = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 2
  %5 = ptrtoint ptr %split_by to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %split_by, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then28, label %if.end35

if.then28:                                        ; preds = %if.end27
  %tobool29.not = icmp eq ptr %pfrag, null
  br i1 %tobool29.not, label %if.then28.if.end31_crit_edge, label %if.then30

if.then28.if.end31_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  %7 = call ptr @memcpy(ptr %pfrag, ptr %n.018.i, i32 44)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then28.if.end31_crit_edge
  br i1 %tobool.not, label %if.end31.do.body77_crit_edge, label %if.then33

if.end31.do.body77_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body77

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %found, align 4
  br label %do.body77

if.end35:                                         ; preds = %if.end27
  %shl = shl nuw i32 1, %6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_choose_frag.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_choose_frag, %if.then47)) #14
          to label %do.end52 [label %if.then47], !srcloc !475

if.then47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %split_by to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %split_by, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_choose_frag.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.177, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 230, i32 noundef %v, i32 noundef %t.0, i32 noundef %10, i32 noundef %shl) #14
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %if.end35
  %11 = ptrtoint ptr %split_by to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %split_by, align 4
  %add.i = add i32 %12, %shr.i.i.i
  %sub.i = sub i32 24, %add.i
  %shl1.i.i = shl i32 16777215, %sub.i
  %and.i5.i = and i32 %shl1.i.i, 16777215
  %shr.i.i.i123 = and i32 %add.i, 255
  %sub.i.i124 = sub nsw i32 24, %shr.i.i.i123
  %shl.i.i125 = shl i32 16777215, %sub.i.i124
  %and.i127 = and i32 %shl.i.i125, %and.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end52
  %i.0144 = phi i32 [ 0, %do.end52 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl.i = shl i32 %i.0144, %sub.i
  %or.i = or i32 %shl.i, %t.0
  %and2.i.i = and i32 %and.i5.i, %or.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i127, i32 %and2.i.i)
  %cmp.i129 = icmp eq i32 %and.i127, %and2.i.i
  br i1 %cmp.i129, label %do.body59.split.loop.exit, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %shl
  br i1 %exitcond.not, label %for.inc.do.body59_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.body59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body59

do.body59.split.loop.exit:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i.i122.le = shl i32 %add.i, 24
  %or.i.i.le = or i32 %and.i127, %shl.i.i122.le
  br label %do.body59

do.body59:                                        ; preds = %do.body59.split.loop.exit, %for.inc.do.body59_crit_edge
  %i.0.lcssa = phi i32 [ %i.0144, %do.body59.split.loop.exit ], [ %shl, %for.inc.do.body59_crit_edge ]
  %t.1 = phi i32 [ %or.i.i.le, %do.body59.split.loop.exit ], [ %t.0, %for.inc.do.body59_crit_edge ]
  %cmp60 = icmp eq i32 %i.0.lcssa, %shl
  br i1 %cmp60, label %do.body68, label %do.body59.while.cond_crit_edge, !prof !476

do.body59.while.cond_crit_edge:                   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

do.body68:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #14, !srcloc !477
  unreachable

do.body77:                                        ; preds = %if.then33, %if.end31.do.body77_crit_edge, %cleanup.i.do.body77_crit_edge, %if.end17.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_choose_frag.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_choose_frag, %if.then89)) #14
          to label %do.end93 [label %if.then89], !srcloc !475

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_choose_frag.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.179, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 240, i32 noundef %v, i32 noundef %t.0) #14
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %do.body77
  ret i32 %t.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_alloc_inode(ptr nocapture noundef readnone %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_inode_cachep to i32))
  %0 = load ptr, ptr @ceph_inode_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3136) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_alloc_inode.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_alloc_inode, %if.then5)) #14
          to label %do.body8 [label %if.then5], !srcloc !475

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %vfs_inode = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 76
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_alloc_inode.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.14, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 454, ptr noundef %vfs_inode) #14
  br label %do.body8

do.body8:                                         ; preds = %if.then5, %do.body
  %i_ceph_lock = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %i_ceph_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @ceph_alloc_inode.__key, i16 noundef signext 3) #14
  %i_version = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 2
  %i_ordered_count = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 7
  %1 = call ptr @memset(ptr %i_version, i32 0, i32 24)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %i_ordered_count, i64 noundef 1) #14
  %i_release_count = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 6
  %call.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_release_count, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %i_release_count, i64 noundef 1) #14
  %i_complete_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 8
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_complete_seq, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %i_complete_seq, i64 noundef 0) #14
  %arrayidx13 = getelementptr %struct.ceph_inode_info, ptr %call, i32 0, i32 8, i32 1
  %call.i.i146 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx13, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %arrayidx13, i64 noundef 0) #14
  %i_max_bytes = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 20
  %i_dir_layout = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %i_dir_layout to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %i_dir_layout, align 8
  %i_cached_layout = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 11
  %pool_ns = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 10, i32 4
  %3 = call ptr @memset(ptr %i_cached_layout, i32 0, i32 36)
  %4 = call ptr @memset(ptr %i_max_bytes, i32 0, i32 16)
  %5 = ptrtoint ptr %pool_ns to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr null, ptr %pool_ns, align 8
  %i_fragtree = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 23
  %6 = ptrtoint ptr %i_fragtree to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %i_fragtree, align 4
  %i_fragtree_mutex = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %i_fragtree_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @ceph_alloc_inode.__key.16) #14
  %i_xattrs = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 26
  %count = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 26, i32 4
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 8
  %names_size = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 26, i32 5
  %8 = ptrtoint ptr %names_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %names_size, align 4
  %vals_size = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 26, i32 6
  %9 = ptrtoint ptr %vals_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %vals_size, align 8
  %version = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 26, i32 7
  %i_dirty_item = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 31
  %10 = call ptr @memset(ptr %i_xattrs, i32 0, i32 13)
  %11 = call ptr @memset(ptr %version, i32 0, i32 32)
  %12 = ptrtoint ptr %i_dirty_item to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %i_dirty_item, ptr %i_dirty_item, align 8
  %prev.i = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 31, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %i_dirty_item, ptr %prev.i, align 4
  %i_flushing_item = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 32
  %14 = ptrtoint ptr %i_flushing_item to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %i_flushing_item, ptr %i_flushing_item, align 8
  %prev.i149 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 32, i32 1
  %15 = ptrtoint ptr %prev.i149 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i_flushing_item, ptr %prev.i149, align 4
  %i_prealloc_cap_flush = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 33
  %16 = ptrtoint ptr %i_prealloc_cap_flush to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %i_prealloc_cap_flush, align 8
  %i_cap_flush_list = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 34
  %17 = ptrtoint ptr %i_cap_flush_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %i_cap_flush_list, ptr %i_cap_flush_list, align 4
  %prev.i150 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 34, i32 1
  %18 = ptrtoint ptr %prev.i150 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i_cap_flush_list, ptr %prev.i150, align 8
  %i_cap_wq = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 35
  tail call void @__init_waitqueue_head(ptr noundef %i_cap_wq, ptr noundef nonnull @.str.19, ptr noundef nonnull @ceph_alloc_inode.__key.18) #14
  %i_hold_caps_max = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 36
  %19 = ptrtoint ptr %i_hold_caps_max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %i_hold_caps_max, align 8
  %i_cap_delay_list = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 37
  %20 = ptrtoint ptr %i_cap_delay_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %i_cap_delay_list, ptr %i_cap_delay_list, align 4
  %prev.i151 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 37, i32 1
  %21 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %i_cap_delay_list, ptr %prev.i151, align 8
  %i_cap_snaps = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 39
  %22 = ptrtoint ptr %i_cap_snaps to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %i_cap_snaps, ptr %i_cap_snaps, align 4
  %prev.i152 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 39, i32 1
  %23 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %i_cap_snaps, ptr %prev.i152, align 8
  %i_head_snapc = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 40
  %24 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %i_head_snapc, align 4
  %i_snap_caps = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 41
  %25 = ptrtoint ptr %i_snap_caps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %i_snap_caps, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %26, -360000
  %i_last_wr = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 43
  %27 = ptrtoint ptr %i_last_wr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %i_last_wr, align 8
  %i_last_rd = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 42
  %28 = ptrtoint ptr %i_last_rd to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %i_last_rd, align 4
  %uglygep = getelementptr i8, ptr %call, i32 572
  %29 = call ptr @memset(ptr %uglygep, i32 0, i32 16)
  %i_truncate_mutex = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 45
  tail call void @__mutex_init(ptr noundef %i_truncate_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @ceph_alloc_inode.__key.20) #14
  %i_truncate_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 46
  %30 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %i_truncate_seq, align 8
  %i_truncate_size = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 47
  %31 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 0, ptr %i_truncate_size, align 8
  %i_truncate_pending = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 48
  %32 = ptrtoint ptr %i_truncate_pending to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %i_truncate_pending, align 8
  %i_max_size = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 49
  %i_filelock_ref = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 61
  %33 = call ptr @memset(ptr %i_max_size, i32 0, i32 64)
  %call.i.i147 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_filelock_ref, i32 noundef 4) #14
  %34 = ptrtoint ptr %i_filelock_ref to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %i_filelock_ref, align 8
  %i_shared_gen = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 62
  %call.i.i148 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %35 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile i32 1, ptr %i_shared_gen, align 4
  %i_rdcache_gen = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 63
  %36 = ptrtoint ptr %i_rdcache_gen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %i_rdcache_gen, align 8
  %i_rdcache_revoking = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 64
  %37 = ptrtoint ptr %i_rdcache_revoking to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %i_rdcache_revoking, align 4
  %i_unsafe_dirops = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 65
  %38 = ptrtoint ptr %i_unsafe_dirops to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %i_unsafe_dirops, ptr %i_unsafe_dirops, align 8
  %prev.i153 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 65, i32 1
  %39 = ptrtoint ptr %prev.i153 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %i_unsafe_dirops, ptr %prev.i153, align 4
  %i_unsafe_iops = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 66
  %40 = ptrtoint ptr %i_unsafe_iops to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %i_unsafe_iops, ptr %i_unsafe_iops, align 8
  %prev.i154 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 66, i32 1
  %41 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %i_unsafe_iops, ptr %prev.i154, align 4
  %i_unsafe_lock = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 67
  tail call void @__raw_spin_lock_init(ptr noundef %i_unsafe_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @ceph_alloc_inode.__key.22, i16 noundef signext 3) #14
  %42 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 68
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %42, align 4
  %i_snap_realm_item = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 69
  %44 = ptrtoint ptr %i_snap_realm_item to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %i_snap_realm_item, ptr %i_snap_realm_item, align 8
  %prev.i155 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 69, i32 1
  %45 = ptrtoint ptr %prev.i155 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %i_snap_realm_item, ptr %prev.i155, align 4
  %i_snap_flush_item = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 70
  %46 = ptrtoint ptr %i_snap_flush_item to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %i_snap_flush_item, ptr %i_snap_flush_item, align 8
  %prev.i156 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 70, i32 1
  %47 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %i_snap_flush_item, ptr %prev.i156, align 4
  %i_work = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 73
  tail call void @__init_work(ptr noundef %i_work, i32 noundef 0) #14
  %48 = ptrtoint ptr %i_work to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %i_work, align 8
  %lockdep_map = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 73, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.25, ptr noundef nonnull @ceph_alloc_inode.__key.24, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry57 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 73, i32 1
  %49 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i157 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 73, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i157 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry57, ptr %prev.i157, align 8
  %func = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 73, i32 2
  %51 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ceph_inode_work, ptr %func, align 4
  %i_work_mask = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 74
  %52 = ptrtoint ptr %i_work_mask to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %i_work_mask, align 4
  %i_btime = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 71
  %53 = call ptr @memset(ptr %i_btime, i32 0, i32 16)
  %fscache.i = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 75
  %54 = ptrtoint ptr %fscache.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %fscache.i, align 8
  %vfs_inode61 = getelementptr inbounds %struct.ceph_inode_info, ptr %call, i32 0, i32 76
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %vfs_inode61, %do.body8 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_inode_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -896
  %vfs_inode = getelementptr i8, ptr %work, i32 56
  %i_work_mask = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %i_work_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_inode_work.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_inode_work, %if.then6)) #14
          to label %do.end [label %if.then6], !srcloc !475

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_inode_work.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.222, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1977, ptr noundef %vfs_inode) #14
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %i_data = getelementptr i8, ptr %work, i32 464
  %call8 = tail call i32 @filemap_fdatawrite(ptr noundef %i_data) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %call11 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %i_work_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end9.if.end14_crit_edge, label %if.then13

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ceph_do_invalidate_pages(ptr noundef %vfs_inode)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  %call16 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %i_work_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end19_crit_edge, label %if.then18

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__ceph_do_pending_vmtruncate(ptr noundef %vfs_inode)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %call21 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %i_work_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.if.end24_crit_edge, label %if.then23

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_check_caps(ptr noundef %add.ptr, i32 noundef 0, ptr noundef null) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %call26 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %i_work_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_flush_snaps(ptr noundef %add.ptr, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  tail call void @iput(ptr noundef %vfs_inode) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_free_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_symlink = getelementptr i8, ptr %inode, i32 -760
  %0 = ptrtoint ptr %i_symlink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_symlink, align 8
  tail call void @kfree(ptr noundef %1) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_inode_cachep to i32))
  %2 = load ptr, ptr @ceph_inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %add.ptr.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_evict_inode.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_evict_inode, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !475

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %8 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_evict_inode.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.28, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 562, ptr noundef %inode, i64 noundef %7, i64 noundef %9) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %total_inodes = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 49, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %10 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %total_inodes, i64 noundef -1, i32 noundef %10) #14
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #14
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_state, align 8
  %and = and i32 %12, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.end.if.end11_crit_edge, label %if.then10

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_fscache_unuse_cookie(ptr noundef %inode, i1 noundef zeroext true) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %do.end.if.end11_crit_edge
  tail call void @clear_inode(ptr noundef %inode) #14
  tail call void @ceph_fscache_unregister_inode_cookie(ptr noundef %add.ptr.i) #14
  tail call void @__ceph_remove_caps(ptr noundef %add.ptr.i) #14
  %i_max_files.i = getelementptr i8, ptr %inode, i32 -680
  %13 = ptrtoint ptr %i_max_files.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_max_files.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not.i = icmp eq i64 %14, 0
  br i1 %tobool.not.i, label %__ceph_has_any_quota.exit, label %if.end11.if.then13_crit_edge

if.end11.if.then13_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

__ceph_has_any_quota.exit:                        ; preds = %if.end11
  %i_max_bytes.i = getelementptr i8, ptr %inode, i32 -688
  %15 = ptrtoint ptr %i_max_bytes.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_max_bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool1.i.not = icmp eq i64 %16, 0
  br i1 %tobool1.i.not, label %__ceph_has_any_quota.exit.if.end14_crit_edge, label %__ceph_has_any_quota.exit.if.then13_crit_edge

__ceph_has_any_quota.exit.if.then13_crit_edge:    ; preds = %__ceph_has_any_quota.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

__ceph_has_any_quota.exit.if.end14_crit_edge:     ; preds = %__ceph_has_any_quota.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then13:                                        ; preds = %__ceph_has_any_quota.exit.if.then13_crit_edge, %if.end11.if.then13_crit_edge
  tail call void @ceph_adjust_quota_realms_count(ptr noundef %inode, i1 noundef zeroext false) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %__ceph_has_any_quota.exit.if.end14_crit_edge
  %17 = getelementptr i8, ptr %inode, i32 -108
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.end14.if.end37_crit_edge, label %if.then16

if.end14.if.end37_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then16:                                        ; preds = %if.end14
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %20 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %21)
  %cmp = icmp eq i64 %21, -2
  br i1 %cmp, label %do.body19, label %if.else

do.body19:                                        ; preds = %if.then16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_evict_inode.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_evict_inode, %if.then31)) #14
          to label %do.end35 [label %if.then31], !srcloc !475

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_evict_inode.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.30, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 585, ptr noundef %23) #14
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body19
  tail call void @ceph_change_snap_realm(ptr noundef %inode, ptr noundef null) #14
  br label %if.end37

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_put_snapid_map(ptr noundef %5, ptr noundef nonnull %19) #14
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %17, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %do.end35, %if.end14.if.end37_crit_edge
  %i_fragtree = getelementptr i8, ptr %inode, i32 -668
  %call38130 = tail call ptr @rb_first(ptr noundef %i_fragtree) #14
  %cmp39.not131 = icmp eq ptr %call38130, null
  br i1 %cmp39.not131, label %if.end37.while.end_crit_edge, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  br label %while.body

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end37.while.body_crit_edge
  %call38132 = phi ptr [ %call38, %while.body.while.body_crit_edge ], [ %call38130, %if.end37.while.body_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %call38132, ptr noundef %i_fragtree) #14
  tail call void @kfree(ptr noundef nonnull %call38132) #14
  %call38 = tail call ptr @rb_first(ptr noundef %i_fragtree) #14
  %cmp39.not = icmp eq ptr %call38, null
  br i1 %cmp39.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end37.while.end_crit_edge
  %i_fragtree_nsplits = getelementptr i8, ptr %inode, i32 -664
  %25 = ptrtoint ptr %i_fragtree_nsplits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %i_fragtree_nsplits, align 8
  tail call void @__ceph_destroy_xattrs(ptr noundef %add.ptr.i) #14
  %i_xattrs = getelementptr i8, ptr %inode, i32 -568
  %26 = ptrtoint ptr %i_xattrs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_xattrs, align 8
  %tobool42.not = icmp eq ptr %27, null
  br i1 %tobool42.not, label %while.end.if.end46_crit_edge, label %if.then.i

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then.i:                                        ; preds = %while.end
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %27, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  tail call void @llvm.prefetch.p0(ptr nonnull %27, i32 1, i32 3, i32 1) #14
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end46_crit_edge, label %if.then10.i.i.i.i.i, !prof !474

if.end5.i.i.i.i.i.if.end46_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %27, i32 noundef 3) #14
  br label %if.end46

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  tail call void @ceph_buffer_release(ptr noundef nonnull %27) #14, !callees !481
  br label %if.end46

if.end46:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end46_crit_edge, %while.end.if.end46_crit_edge
  %prealloc_blob = getelementptr i8, ptr %inode, i32 -564
  %29 = ptrtoint ptr %prealloc_blob to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prealloc_blob, align 4
  %tobool48.not = icmp eq ptr %30, null
  br i1 %tobool48.not, label %if.end46.if.end52_crit_edge, label %if.then.i104

if.end46.if.end52_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then.i104:                                     ; preds = %if.end46
  %call.i.i.i.i.i.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %30, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  tail call void @llvm.prefetch.p0(ptr nonnull %30, i32 1, i32 3, i32 1) #14
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 1, ptr nonnull elementtype(i32) %30) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i102 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i102)
  %cmp.i.i.i.i.i103 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i102, 1
  br i1 %cmp.i.i.i.i.i103, label %if.then.i.i108, label %if.end5.i.i.i.i.i106

if.end5.i.i.i.i.i106:                             ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i102)
  %.not.i.i.i.i.i105 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i102, 0
  br i1 %.not.i.i.i.i.i105, label %if.end5.i.i.i.i.i106.if.end52_crit_edge, label %if.then10.i.i.i.i.i107, !prof !474

if.end5.i.i.i.i.i106.if.end52_crit_edge:          ; preds = %if.end5.i.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then10.i.i.i.i.i107:                           ; preds = %if.end5.i.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %30, i32 noundef 3) #14
  br label %if.end52

if.then.i.i108:                                   ; preds = %if.then.i104
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  tail call void @ceph_buffer_release(ptr noundef nonnull %30) #14, !callees !481
  br label %if.end52

if.end52:                                         ; preds = %if.then.i.i108, %if.then10.i.i.i.i.i107, %if.end5.i.i.i.i.i106.if.end52_crit_edge, %if.end46.if.end52_crit_edge
  %pool_ns = getelementptr i8, ptr %inode, i32 -800
  %32 = ptrtoint ptr %pool_ns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %pool_ns, align 8
  %tobool.not.i110 = icmp eq ptr %33, null
  br i1 %tobool.not.i110, label %if.end52.ceph_put_string.exit_crit_edge, label %if.end.i

if.end52.ceph_put_string.exit_crit_edge:          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_put_string.exit

if.end.i:                                         ; preds = %if.end52
  %call.i.i.i.i.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %33, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  tail call void @llvm.prefetch.p0(ptr nonnull %33, i32 1, i32 3, i32 1) #14
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i112 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i112)
  %cmp.i.i.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i112, 1
  br i1 %cmp.i.i.i.i.i113, label %if.then.i.i117, label %if.end5.i.i.i.i.i115

if.end5.i.i.i.i.i115:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i112)
  %.not.i.i.i.i.i114 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i112, 0
  br i1 %.not.i.i.i.i.i114, label %if.end5.i.i.i.i.i115.ceph_put_string.exit_crit_edge, label %if.then10.i.i.i.i.i116, !prof !474

if.end5.i.i.i.i.i115.ceph_put_string.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_put_string.exit

if.then10.i.i.i.i.i116:                           ; preds = %if.end5.i.i.i.i.i115
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %33, i32 noundef 3) #14
  br label %ceph_put_string.exit

if.then.i.i117:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  tail call void @ceph_release_string(ptr noundef nonnull %33) #14, !callees !481
  br label %ceph_put_string.exit

ceph_put_string.exit:                             ; preds = %if.then.i.i117, %if.then10.i.i.i.i.i116, %if.end5.i.i.i.i.i115.ceph_put_string.exit_crit_edge, %if.end52.ceph_put_string.exit_crit_edge
  %pool_ns62 = getelementptr i8, ptr %inode, i32 -768
  %35 = ptrtoint ptr %pool_ns62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pool_ns62, align 8
  %tobool.not.i118 = icmp eq ptr %36, null
  br i1 %tobool.not.i118, label %ceph_put_string.exit.ceph_put_string.exit127_crit_edge, label %if.end.i122

ceph_put_string.exit.ceph_put_string.exit127_crit_edge: ; preds = %ceph_put_string.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_put_string.exit127

if.end.i122:                                      ; preds = %ceph_put_string.exit
  %call.i.i.i.i.i.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %36, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  tail call void @llvm.prefetch.p0(ptr nonnull %36, i32 1, i32 3, i32 1) #14
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i120 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i120)
  %cmp.i.i.i.i.i121 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i120, 1
  br i1 %cmp.i.i.i.i.i121, label %if.then.i.i126, label %if.end5.i.i.i.i.i124

if.end5.i.i.i.i.i124:                             ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i120)
  %.not.i.i.i.i.i123 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i120, 0
  br i1 %.not.i.i.i.i.i123, label %if.end5.i.i.i.i.i124.ceph_put_string.exit127_crit_edge, label %if.then10.i.i.i.i.i125, !prof !474

if.end5.i.i.i.i.i124.ceph_put_string.exit127_crit_edge: ; preds = %if.end5.i.i.i.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_put_string.exit127

if.then10.i.i.i.i.i125:                           ; preds = %if.end5.i.i.i.i.i124
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %36, i32 noundef 3) #14
  br label %ceph_put_string.exit127

if.then.i.i126:                                   ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  tail call void @ceph_release_string(ptr noundef nonnull %36) #14, !callees !481
  br label %ceph_put_string.exit127

ceph_put_string.exit127:                          ; preds = %if.then.i.i126, %if.then10.i.i.i.i.i125, %if.end5.i.i.i.i.i124.ceph_put_string.exit127_crit_edge, %ceph_put_string.exit.ceph_put_string.exit127_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_unuse_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_unregister_inode_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_remove_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_adjust_quota_realms_count(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_change_snap_realm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_snapid_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_destroy_xattrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_fill_file_size(ptr noundef %inode, i32 noundef %issued, i32 noundef %truncate_seq, i64 noundef %truncate_size, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %i_truncate_seq = getelementptr i8, ptr %inode, i32 -272
  %0 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_truncate_seq, align 8
  %sub.i = sub i32 %truncate_seq, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp = icmp sgt i32 %sub.i, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %truncate_seq)
  %cmp4 = icmp eq i32 %1, %truncate_seq
  call void @__sanitizer_cov_trace_cmp8(i64 %call1, i64 %size)
  %cmp5 = icmp ult i64 %call1, %size
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end113_crit_edge

lor.lhs.false.if.end113_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_size.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_size, %if.then9)) #14
          to label %do.end [label %if.then9], !srcloc !475

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_size.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.33, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 632, i64 noundef %call1, i64 noundef %size) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %size)
  %cmp11.not = icmp eq i64 %size, 0
  br i1 %cmp11.not, label %do.end.if.end21_crit_edge, label %land.lhs.true12

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true12:                                  ; preds = %do.end
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp13 = icmp eq i16 %4, 16384
  br i1 %cmp13, label %do.end18, label %land.lhs.true12.if.end21_crit_edge

land.lhs.true12.if.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

do.end18:                                         ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #17
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %land.lhs.true12.if.end21_crit_edge, %do.end.if.end21_crit_edge
  %size.addr.0 = phi i64 [ 0, %do.end18 ], [ %size, %land.lhs.true12.if.end21_crit_edge ], [ 0, %do.end.if.end21_crit_edge ]
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %size.addr.0)
  %sub.i184 = add i64 %size.addr.0, 511
  %shr.i = lshr i64 %sub.i184, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %5 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %shr.i, ptr %i_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %size.addr.0, i64 %call1)
  %cmp23 = icmp ugt i64 %size.addr.0, %call1
  br i1 %cmp23, label %if.then25, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_fscache_update(ptr noundef %inode) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end21.if.end26_crit_edge
  %i_reported_size = getelementptr i8, ptr %inode, i32 -240
  %6 = ptrtoint ptr %i_reported_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %size.addr.0, ptr %i_reported_size, align 8
  %7 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_truncate_seq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %truncate_seq)
  %cmp28.not = icmp eq i32 %8, %truncate_seq
  br i1 %cmp28.not, label %if.end26.if.end113_crit_edge, label %do.body31

if.end26.if.end113_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

do.body31:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_size.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_size, %if.then43)) #14
          to label %do.end48 [label %if.then43], !srcloc !475

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_truncate_seq, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_size.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.36, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 648, i32 noundef %10, i32 noundef %truncate_seq) #14
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.body31
  %11 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %truncate_seq, ptr %i_truncate_seq, align 8
  %and50 = and i32 %issued, 39424
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end48.if.end94_crit_edge, label %land.rhs

do.end48.if.end94_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

land.rhs:                                         ; preds = %do.end48
  %.b177 = load i1, ptr @ceph_fill_file_size.__already_done, align 1
  br i1 %.b177, label %land.rhs.if.end94_crit_edge, label %if.then68, !prof !474

land.rhs.if.end94_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.then68:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_fill_file_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 655, i32 noundef 9, ptr noundef null) #14
  br label %if.end94

if.end94:                                         ; preds = %if.then68, %land.rhs.if.end94_crit_edge, %do.end48.if.end94_crit_edge
  %and102 = and i32 %issued, 9216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %lor.lhs.false104, label %if.end94.if.then110_crit_edge

if.end94.if.then110_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

lor.lhs.false104:                                 ; preds = %if.end94
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  %i_mmap.i = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %i_mmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %i_mmap.i, align 4
  %cmp.i.not = icmp eq ptr %15, null
  br i1 %cmp.i.not, label %lor.lhs.false107, label %lor.lhs.false104.if.then110_crit_edge

lor.lhs.false104.if.then110_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

lor.lhs.false107:                                 ; preds = %lor.lhs.false104
  %i_nr_by_mode.i = getelementptr i8, ptr %inode, i32 -380
  %16 = ptrtoint ptr %i_nr_by_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_nr_by_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %lor.lhs.false107.if.end113_crit_edge, label %lor.lhs.false107.if.then110_crit_edge

lor.lhs.false107.if.then110_crit_edge:            ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

lor.lhs.false107.if.end113_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end113

if.then110:                                       ; preds = %lor.lhs.false107.if.then110_crit_edge, %lor.lhs.false104.if.then110_crit_edge, %if.end94.if.then110_crit_edge
  %i_truncate_pending = getelementptr i8, ptr %inode, i32 -256
  %18 = ptrtoint ptr %i_truncate_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_truncate_pending, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %i_truncate_pending, align 8
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %lor.lhs.false107.if.end113_crit_edge, %if.end26.if.end113_crit_edge, %lor.lhs.false.if.end113_crit_edge
  %queue_trunc.0 = phi i32 [ 1, %if.then110 ], [ 0, %lor.lhs.false107.if.end113_crit_edge ], [ 0, %if.end26.if.end113_crit_edge ], [ 0, %lor.lhs.false.if.end113_crit_edge ]
  %20 = ptrtoint ptr %i_truncate_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_truncate_seq, align 8
  %sub.i185 = sub i32 %truncate_seq, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i185)
  %cmp116 = icmp sgt i32 %sub.i185, -1
  br i1 %cmp116, label %land.lhs.true118, label %if.end113.if.end141_crit_edge

if.end113.if.end141_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

land.lhs.true118:                                 ; preds = %if.end113
  %i_truncate_size = getelementptr i8, ptr %inode, i32 -264
  %22 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_truncate_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %truncate_size)
  %cmp119.not = icmp eq i64 %23, %truncate_size
  br i1 %cmp119.not, label %land.lhs.true118.if.end141_crit_edge, label %do.body122

land.lhs.true118.if.end141_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end141

do.body122:                                       ; preds = %land.lhs.true118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_size.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_size, %if.then134)) #14
          to label %do.end139 [label %if.then134], !srcloc !475

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_truncate_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_size.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.38, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 674, i64 noundef %25, i64 noundef %truncate_size) #14
  br label %do.end139

do.end139:                                        ; preds = %if.then134, %do.body122
  %26 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %truncate_size, ptr %i_truncate_size, align 8
  br label %if.end141

if.end141:                                        ; preds = %do.end139, %land.lhs.true118.if.end141_crit_edge, %if.end113.if.end141_crit_edge
  ret i32 %queue_trunc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !482
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !483
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !476

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !484
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !485
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !486
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !487
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !488
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !464) #14
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !489
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !464) #14
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !490
  %9 = tail call i32 @llvm.read_register.i32(metadata !464) #14
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !491
  %18 = tail call i32 @llvm.read_register.i32(metadata !464) #14
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
  %22 = tail call i32 @llvm.read_register.i32(metadata !464) #14
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !464) #14
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !492
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
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !493
  %37 = tail call i32 @llvm.read_register.i32(metadata !464) #14
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
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !474

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.180, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !494
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #14
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #14
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !495
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !496
  %48 = tail call i32 @llvm.read_register.i32(metadata !464) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fill_file_time(ptr noundef %inode, i32 noundef %issued, i64 noundef %time_warp_seq, ptr nocapture noundef readonly %ctime, ptr nocapture noundef readonly %mtime, ptr nocapture noundef readonly %atime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %issued, 12936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else123, label %if.then

if.then:                                          ; preds = %entry
  %i_version = getelementptr i8, ptr %inode, i32 -888
  %0 = ptrtoint ptr %i_version to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then.do.body_crit_edge, label %lor.lhs.false

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %2 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ctime, align 8
  %4 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp.i = icmp slt i64 %3, %5
  br i1 %cmp.i, label %lor.lhs.false.if.end15_crit_edge, label %if.end.i

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp4.i = icmp sgt i64 %3, %5
  br i1 %cmp4.i, label %if.end.i.do.body_crit_edge, label %timespec64_compare.exit

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

timespec64_compare.exit:                          ; preds = %if.end.i
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ctime, i32 0, i32 1
  %6 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec7.i, align 8
  %sub.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp2 = icmp sgt i32 %sub.i, 0
  br i1 %cmp2, label %timespec64_compare.exit.do.body_crit_edge, label %timespec64_compare.exit.if.end15_crit_edge

timespec64_compare.exit.if.end15_crit_edge:       ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

timespec64_compare.exit.do.body_crit_edge:        ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %timespec64_compare.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_time, %if.then8)) #14
          to label %do.end [label %if.then8], !srcloc !475

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %i_ctime10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %10 = ptrtoint ptr %i_ctime10 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_ctime10, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_nsec, align 8
  %14 = ptrtoint ptr %ctime to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ctime, align 8
  %tv_nsec13 = getelementptr inbounds %struct.timespec64, ptr %ctime, i32 0, i32 1
  %16 = ptrtoint ptr %tv_nsec13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec13, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_time.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.41, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 696, i64 noundef %11, i32 noundef %13, i64 noundef %15, i32 noundef %17) #14
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %i_ctime14 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %18 = call ptr @memcpy(ptr %i_ctime14, ptr %ctime, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %do.end, %timespec64_compare.exit.if.end15_crit_edge, %lor.lhs.false.if.end15_crit_edge
  %19 = ptrtoint ptr %i_version to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp17 = icmp eq i64 %20, 0
  br i1 %cmp17, label %if.end15.do.body23_crit_edge, label %lor.lhs.false18

if.end15.do.body23_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

lor.lhs.false18:                                  ; preds = %if.end15
  %conv = trunc i64 %time_warp_seq to i32
  %i_time_warp_seq = getelementptr i8, ptr %inode, i32 -872
  %21 = ptrtoint ptr %i_time_warp_seq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_time_warp_seq, align 8
  %sub.i226 = sub i32 %conv, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i226)
  %cmp20 = icmp sgt i32 %sub.i226, 0
  br i1 %cmp20, label %lor.lhs.false18.do.body23_crit_edge, label %if.else

lor.lhs.false18.do.body23_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

do.body23:                                        ; preds = %lor.lhs.false18.do.body23_crit_edge, %if.end15.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_time, %if.then35)) #14
          to label %do.end46 [label %if.then35], !srcloc !475

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %23 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_mtime, align 8
  %tv_nsec39 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %25 = ptrtoint ptr %tv_nsec39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tv_nsec39, align 8
  %27 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %mtime, align 8
  %tv_nsec41 = getelementptr inbounds %struct.timespec64, ptr %mtime, i32 0, i32 1
  %29 = ptrtoint ptr %tv_nsec41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tv_nsec41, align 8
  %i_time_warp_seq42 = getelementptr i8, ptr %inode, i32 -872
  %31 = ptrtoint ptr %i_time_warp_seq42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %i_time_warp_seq42, align 8
  %conv43 = trunc i64 %time_warp_seq to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_time.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.43, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 706, i64 noundef %24, i32 noundef %26, i64 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %conv43) #14
  br label %do.end46

do.end46:                                         ; preds = %if.then35, %do.body23
  %i_mtime47 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %33 = call ptr @memcpy(ptr %i_mtime47, ptr %mtime, i32 16)
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %34 = call ptr @memcpy(ptr %i_atime, ptr %atime, i32 16)
  %conv48 = trunc i64 %time_warp_seq to i32
  %i_time_warp_seq49 = getelementptr i8, ptr %inode, i32 -872
  %35 = ptrtoint ptr %i_time_warp_seq49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv48, ptr %i_time_warp_seq49, align 8
  br label %if.end158

if.else:                                          ; preds = %lor.lhs.false18
  %conv51 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv51, i64 %time_warp_seq)
  %cmp52 = icmp eq i64 %conv51, %time_warp_seq
  br i1 %cmp52, label %if.then54, label %if.else115

if.then54:                                        ; preds = %if.else
  %i_mtime55 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %36 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %mtime, align 8
  %38 = ptrtoint ptr %i_mtime55 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_mtime55, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp.i227 = icmp slt i64 %37, %39
  br i1 %cmp.i227, label %if.then54.if.end84_crit_edge, label %if.end.i229

if.then54.if.end84_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.end.i229:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp4.i228 = icmp sgt i64 %37, %39
  br i1 %cmp4.i228, label %if.end.i229.do.body60_crit_edge, label %timespec64_compare.exit235

if.end.i229.do.body60_crit_edge:                  ; preds = %if.end.i229
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body60

timespec64_compare.exit235:                       ; preds = %if.end.i229
  %tv_nsec.i230 = getelementptr inbounds %struct.timespec64, ptr %mtime, i32 0, i32 1
  %40 = ptrtoint ptr %tv_nsec.i230 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec.i230, align 8
  %tv_nsec7.i231 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %42 = ptrtoint ptr %tv_nsec7.i231 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tv_nsec7.i231, align 8
  %sub.i232 = sub i32 %41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i232)
  %cmp57 = icmp sgt i32 %sub.i232, 0
  br i1 %cmp57, label %timespec64_compare.exit235.do.body60_crit_edge, label %timespec64_compare.exit235.if.end84_crit_edge

timespec64_compare.exit235.if.end84_crit_edge:    ; preds = %timespec64_compare.exit235
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

timespec64_compare.exit235.do.body60_crit_edge:   ; preds = %timespec64_compare.exit235
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body60

do.body60:                                        ; preds = %timespec64_compare.exit235.do.body60_crit_edge, %if.end.i229.do.body60_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_time, %if.then72)) #14
          to label %do.end82 [label %if.then72], !srcloc !475

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %i_mtime55 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_mtime55, align 8
  %tv_nsec77 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %46 = ptrtoint ptr %tv_nsec77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tv_nsec77, align 8
  %48 = ptrtoint ptr %mtime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %mtime, align 8
  %tv_nsec79 = getelementptr inbounds %struct.timespec64, ptr %mtime, i32 0, i32 1
  %50 = ptrtoint ptr %tv_nsec79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tv_nsec79, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_time.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.45, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 717, i64 noundef %45, i32 noundef %47, i64 noundef %49, i32 noundef %51) #14
  br label %do.end82

do.end82:                                         ; preds = %if.then72, %do.body60
  %52 = call ptr @memcpy(ptr %i_mtime55, ptr %mtime, i32 16)
  br label %if.end84

if.end84:                                         ; preds = %do.end82, %timespec64_compare.exit235.if.end84_crit_edge, %if.then54.if.end84_crit_edge
  %i_atime85 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %53 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %atime, align 8
  %55 = ptrtoint ptr %i_atime85 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_atime85, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %56)
  %cmp.i236 = icmp slt i64 %54, %56
  br i1 %cmp.i236, label %if.end84.if.end158_crit_edge, label %if.end.i238

if.end84.if.end158_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.end.i238:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %56)
  %cmp4.i237 = icmp sgt i64 %54, %56
  br i1 %cmp4.i237, label %if.end.i238.do.body90_crit_edge, label %timespec64_compare.exit244

if.end.i238.do.body90_crit_edge:                  ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body90

timespec64_compare.exit244:                       ; preds = %if.end.i238
  %tv_nsec.i239 = getelementptr inbounds %struct.timespec64, ptr %atime, i32 0, i32 1
  %57 = ptrtoint ptr %tv_nsec.i239 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tv_nsec.i239, align 8
  %tv_nsec7.i240 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %59 = ptrtoint ptr %tv_nsec7.i240 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tv_nsec7.i240, align 8
  %sub.i241 = sub i32 %58, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i241)
  %cmp87 = icmp sgt i32 %sub.i241, 0
  br i1 %cmp87, label %timespec64_compare.exit244.do.body90_crit_edge, label %timespec64_compare.exit244.if.end158_crit_edge

timespec64_compare.exit244.if.end158_crit_edge:   ; preds = %timespec64_compare.exit244
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

timespec64_compare.exit244.do.body90_crit_edge:   ; preds = %timespec64_compare.exit244
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body90

do.body90:                                        ; preds = %timespec64_compare.exit244.do.body90_crit_edge, %if.end.i238.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_time, %if.then102)) #14
          to label %do.end112 [label %if.then102], !srcloc !475

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %i_atime85 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %i_atime85, align 8
  %tv_nsec107 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %63 = ptrtoint ptr %tv_nsec107 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tv_nsec107, align 8
  %65 = ptrtoint ptr %atime to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %atime, align 8
  %tv_nsec109 = getelementptr inbounds %struct.timespec64, ptr %atime, i32 0, i32 1
  %67 = ptrtoint ptr %tv_nsec109 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tv_nsec109, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_time.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.47, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 724, i64 noundef %62, i32 noundef %64, i64 noundef %66, i32 noundef %68) #14
  br label %do.end112

do.end112:                                        ; preds = %if.then102, %do.body90
  %69 = call ptr @memcpy(ptr %i_atime85, ptr %atime, i32 16)
  br label %if.end158

if.else115:                                       ; preds = %if.else
  %and116 = and i32 %issued, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not.not, label %if.else115.do.body140_crit_edge, label %if.else115.if.end158_crit_edge

if.else115.if.end158_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.else115.do.body140_crit_edge:                  ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140

if.else123:                                       ; preds = %entry
  %conv124 = trunc i64 %time_warp_seq to i32
  %i_time_warp_seq125 = getelementptr i8, ptr %inode, i32 -872
  %70 = ptrtoint ptr %i_time_warp_seq125 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_time_warp_seq125, align 8
  %sub.i245 = sub i32 %conv124, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i245)
  %cmp127 = icmp sgt i32 %sub.i245, -1
  br i1 %cmp127, label %if.then129, label %if.else123.do.body140_crit_edge

if.else123.do.body140_crit_edge:                  ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body140

if.then129:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #16
  %i_ctime130 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %72 = call ptr @memcpy(ptr %i_ctime130, ptr %ctime, i32 16)
  %i_mtime131 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %73 = call ptr @memcpy(ptr %i_mtime131, ptr %mtime, i32 16)
  %i_atime132 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %74 = call ptr @memcpy(ptr %i_atime132, ptr %atime, i32 16)
  %75 = ptrtoint ptr %i_time_warp_seq125 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv124, ptr %i_time_warp_seq125, align 8
  br label %if.end158

do.body140:                                       ; preds = %if.else123.do.body140_crit_edge, %if.else115.do.body140_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_file_time, %if.then152)) #14
          to label %if.end158 [label %if.then152], !srcloc !475

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #16
  %i_time_warp_seq154 = getelementptr i8, ptr %inode, i32 -872
  %76 = ptrtoint ptr %i_time_warp_seq154 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i_time_warp_seq154, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_file_time.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.49, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 745, ptr noundef %inode, i64 noundef %time_warp_seq, i32 noundef %77) #14
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %do.body140, %if.then129, %if.else115.if.end158_crit_edge, %do.end112, %timespec64_compare.exit244.if.end158_crit_edge, %if.end84.if.end158_crit_edge, %do.end46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_fill_inode(ptr noundef %inode, ptr noundef %locked_page, ptr nocapture noundef readonly %iinfo, ptr noundef %dirinfo, ptr noundef %session, i32 noundef %cap_fmode, ptr noundef %caps_reservation) local_unnamed_addr #0 align 64 {
entry:
  %issued = alloca i32, align 4
  %mtime = alloca %struct.timespec64, align 8
  %atime = alloca %struct.timespec64, align 8
  %ctime = alloca %struct.timespec64, align 8
  %new_cap = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
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
  %6 = ptrtoint ptr %iinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iinfo, align 8
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %issued) #14
  %8 = ptrtoint ptr %issued to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %issued, align 4, !annotation !497
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mtime) #14
  %9 = call ptr @memset(ptr %mtime, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %atime) #14
  %10 = call ptr @memset(ptr %atime, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctime) #14
  %11 = call ptr @memset(ptr %ctime, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_cap) #14
  %12 = ptrtoint ptr %new_cap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %new_cap, align 4
  %mode2 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 15
  %13 = ptrtoint ptr %mode2 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %mode2, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %conv = trunc i32 %15 to i16
  %rdev3 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 2
  %16 = ptrtoint ptr %rdev3 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %rdev3, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ceph_mds_client, ptr %5, i32 0, i32 15, i32 6
  %call.i949 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i949)
  %cmp.not = icmp eq i32 %call.i949, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !476

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 775, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_inode.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_inode, %if.then39)) #14
          to label %do.end46 [label %if.then39], !srcloc !475

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %22 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %snap, align 8
  %version = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %version to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %version, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %i_version = getelementptr i8, ptr %inode, i32 -888
  %27 = ptrtoint ptr %i_version to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_version, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_inode.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.52, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 779, ptr noundef nonnull @.str.50, ptr noundef %inode, i64 noundef %21, i64 noundef %23, i64 noundef %26, i64 noundef %28) #14
  br label %do.end46

do.end46:                                         ; preds = %if.then39, %if.end
  %i_state = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 24
  %29 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_state, align 8
  %and = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv, ptr %inode, align 8
  br label %if.end139

if.else:                                          ; preds = %do.end46
  %32 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %inode, align 8
  %xor2.i = xor i16 %33, %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i)
  %tobool.i = icmp ugt i16 %xor2.i, 4095
  br i1 %tobool.i, label %land.end57, label %if.end87

land.end57:                                       ; preds = %if.else
  %.b922 = load i1, ptr @ceph_fill_inode.__already_done, align 1
  br i1 %.b922, label %land.end57.cleanup652_crit_edge, label %if.then64, !prof !474

land.end57.cleanup652_crit_edge:                  ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup652

if.then64:                                        ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_fill_inode.__already_done, align 1
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i, align 8
  %snap74 = getelementptr i8, ptr %inode, i32 -944
  %36 = ptrtoint ptr %snap74 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %snap74, align 8
  %conv76 = zext i16 %33 to i32
  %conv77 = and i32 %15, 65535
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i64 noundef %35, i64 noundef %37, i32 noundef %conv76, i32 noundef %conv77) #17
  br label %cleanup652

if.end87:                                         ; preds = %if.else
  %trunc = and i16 %conv, -4096
  %38 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %if.end87.if.end139_crit_edge [
    i16 8192, label %if.end87.land.lhs.true_crit_edge
    i16 24576, label %if.end87.land.lhs.true_crit_edge1012
  ]

if.end87.land.lhs.true_crit_edge1012:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end87.land.lhs.true_crit_edge:                 ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.end87.if.end139_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

land.lhs.true:                                    ; preds = %if.end87.land.lhs.true_crit_edge, %if.end87.land.lhs.true_crit_edge1012
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %39 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_rdev, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %18)
  %cmp96.not = icmp eq i32 %40, %18
  br i1 %cmp96.not, label %land.lhs.true.if.end139_crit_edge, label %land.end106

land.lhs.true.if.end139_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end139

land.end106:                                      ; preds = %land.lhs.true
  %.b917921 = load i1, ptr @ceph_fill_inode.__already_done.54, align 1
  br i1 %.b917921, label %land.end106.cleanup652_crit_edge, label %if.then113, !prof !474

land.end106.cleanup652_crit_edge:                 ; preds = %land.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup652

if.then113:                                       ; preds = %land.end106
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_fill_inode.__already_done.54, align 1
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr.i, align 8
  %snap123 = getelementptr i8, ptr %inode, i32 -944
  %43 = ptrtoint ptr %snap123 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %snap123, align 8
  %shr = lshr i32 %40, 20
  %and126 = and i32 %40, 1048575
  %shr127 = lshr i32 %18, 20
  %and128 = and i32 %18, 1048575
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i64 noundef %42, i64 noundef %44, i32 noundef %shr, i32 noundef %and126, i32 noundef %shr127, i32 noundef %and128) #17
  br label %cleanup652

if.end139:                                        ; preds = %land.lhs.true.if.end139_crit_edge, %if.end87.if.end139_crit_edge, %if.then48
  %cap = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5
  %45 = ptrtoint ptr %cap to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %cap, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool140.not = icmp eq i32 %46, 0
  br i1 %tobool140.not, label %if.end139.if.end150_crit_edge, label %land.lhs.true141

if.end139.if.end150_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

land.lhs.true141:                                 ; preds = %if.end139
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %48 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %49)
  %cmp143 = icmp eq i64 %49, -2
  br i1 %cmp143, label %if.then145, label %land.lhs.true141.if.end150_crit_edge

land.lhs.true141.if.end150_crit_edge:             ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

if.then145:                                       ; preds = %land.lhs.true141
  %call146 = tail call ptr @ceph_get_cap(ptr noundef %5, ptr noundef %caps_reservation) #14
  %50 = ptrtoint ptr %new_cap to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call146, ptr %new_cap, align 4
  %tobool147.not = icmp eq ptr %call146, null
  br i1 %tobool147.not, label %if.then145.cleanup652_crit_edge, label %if.then145.if.end150_crit_edge

if.then145.if.end150_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end150

if.then145.cleanup652_crit_edge:                  ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup652

if.end150:                                        ; preds = %if.then145.if.end150_crit_edge, %land.lhs.true141.if.end150_crit_edge, %if.end139.if.end150_crit_edge
  %xattr_len = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 4
  %51 = ptrtoint ptr %xattr_len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xattr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp151 = icmp ugt i32 %52, 4
  br i1 %cmp151, label %if.then153, label %if.end150.if.end165_crit_edge

if.end150.if.end165_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then153:                                       ; preds = %if.end150
  %call155 = tail call ptr @ceph_buffer_new(i32 noundef %52, i32 noundef 3136) #14
  %tobool156.not = icmp eq ptr %call155, null
  br i1 %tobool156.not, label %do.end160, label %if.then153.if.end165_crit_edge

if.then153.if.end165_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

do.end160:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %xattr_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xattr_len, align 4
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef %54) #17
  br label %if.end165

if.end165:                                        ; preds = %do.end160, %if.then153.if.end165_crit_edge, %if.end150.if.end165_crit_edge
  %xattr_blob.0 = phi ptr [ %call155, %if.then153.if.end165_crit_edge ], [ null, %do.end160 ], [ null, %if.end150.if.end165_crit_edge ]
  %pool_ns_len = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 9
  %55 = ptrtoint ptr %pool_ns_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pool_ns_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp166.not = icmp eq i32 %56, 0
  br i1 %cmp166.not, label %if.end165.if.end171_crit_edge, label %if.then168

if.end165.if.end171_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.then168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  %pool_ns_data = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 10
  %57 = ptrtoint ptr %pool_ns_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pool_ns_data, align 4
  %call170 = tail call ptr @ceph_find_or_create_string(ptr noundef %58, i32 noundef %56) #14
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.end165.if.end171_crit_edge
  %pool_ns.0 = phi ptr [ %call170, %if.then168 ], [ null, %if.end165.if.end171_crit_edge ]
  %snap.i956 = getelementptr i8, ptr %inode, i32 -944
  %59 = ptrtoint ptr %snap.i956 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %snap.i956, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %60)
  %cmp173.not = icmp eq i64 %60, -2
  br i1 %cmp173.not, label %if.end171.if.end180_crit_edge, label %land.lhs.true175

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end180

land.lhs.true175:                                 ; preds = %if.end171
  %61 = getelementptr i8, ptr %inode, i32 -108
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %tobool176.not = icmp eq ptr %63, null
  br i1 %tobool176.not, label %if.then177, label %land.lhs.true175.if.end180_crit_edge

land.lhs.true175.if.end180_crit_edge:             ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end180

if.then177:                                       ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #16
  %call179 = tail call ptr @ceph_get_snapid_map(ptr noundef %5, i64 noundef %60) #14
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call179, ptr %61, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %land.lhs.true175.if.end180_crit_edge, %if.end171.if.end180_crit_edge
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %i_version181 = getelementptr i8, ptr %inode, i32 -888
  %65 = ptrtoint ptr %i_version181 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %i_version181, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp182 = icmp eq i64 %66, 0
  br i1 %cmp182, label %if.end180.if.then195_crit_edge, label %lor.lhs.false184

if.end180.if.then195_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then195

lor.lhs.false184:                                 ; preds = %if.end180
  %flags = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 6
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags, align 1
  %69 = and i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool188.not = icmp eq i8 %69, 0
  br i1 %tobool188.not, label %lor.lhs.false184.if.end196_crit_edge, label %land.lhs.true189

lor.lhs.false184.if.end196_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196

land.lhs.true189:                                 ; preds = %lor.lhs.false184
  %version190 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 3
  %70 = ptrtoint ptr %version190 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %version190, align 1
  %72 = tail call i64 @llvm.bswap.i64(i64 %71)
  %and192 = and i64 %66, -2
  call void @__sanitizer_cov_trace_cmp8(i64 %72, i64 %and192)
  %cmp193 = icmp ugt i64 %72, %and192
  br i1 %cmp193, label %land.lhs.true189.if.then195_crit_edge, label %land.lhs.true189.if.end196_crit_edge

land.lhs.true189.if.end196_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end196

land.lhs.true189.if.then195_crit_edge:            ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then195

if.then195:                                       ; preds = %land.lhs.true189.if.then195_crit_edge, %if.end180.if.then195_crit_edge
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %land.lhs.true189.if.end196_crit_edge, %lor.lhs.false184.if.end196_crit_edge
  %new_version.0.off0 = phi i1 [ true, %if.then195 ], [ false, %land.lhs.true189.if.end196_crit_edge ], [ false, %lor.lhs.false184.if.end196_crit_edge ]
  %change_attr = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 17
  %73 = ptrtoint ptr %change_attr to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %change_attr, align 8
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #14
  %call.i.i11.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #14
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.end196
  %cur.0.i = phi i64 [ %call.i.i11.i, %if.end196 ], [ %call.i.i958, %if.end.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %cur.0.i, i64 %74)
  %cmp.i = icmp ugt i64 %cur.0.i, %74
  br i1 %cmp.i, label %for.cond.i.inode_set_max_iversion_raw.exit_crit_edge, label %if.end.i

for.cond.i.inode_set_max_iversion_raw.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_set_max_iversion_raw.exit

if.end.i:                                         ; preds = %for.cond.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #14
  %call.i.i958 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %74) #14
  %cmp2.i = icmp eq i64 %call.i.i958, %cur.0.i
  br i1 %cmp2.i, label %if.end.i.inode_set_max_iversion_raw.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !474

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.end.i.inode_set_max_iversion_raw.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inode_set_max_iversion_raw.exit

inode_set_max_iversion_raw.exit:                  ; preds = %if.end.i.inode_set_max_iversion_raw.exit_crit_edge, %for.cond.i.inode_set_max_iversion_raw.exit_crit_edge
  %call197 = call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef nonnull %issued) #14
  %i_dirty_caps.i = getelementptr i8, ptr %inode, i32 -512
  %75 = ptrtoint ptr %i_dirty_caps.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i_dirty_caps.i, align 8
  %i_flushing_caps.i = getelementptr i8, ptr %inode, i32 -508
  %77 = ptrtoint ptr %i_flushing_caps.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_flushing_caps.i, align 4
  %or.i = or i32 %78, %76
  %79 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %issued, align 4
  %or = or i32 %or.i, %80
  store i32 %or, ptr %issued, align 4
  %neg = xor i32 %or, -1
  %and199 = and i32 %47, %neg
  %layout = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 6
  %81 = ptrtoint ptr %layout to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %layout, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool200.not = icmp eq i32 %82, 0
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %84 = call i32 @llvm.ctlz.i32(i32 %83, i1 false) #14, !range !498
  %85 = trunc i32 %84 to i8
  %conv205 = sub nsw i8 31, %85
  %conv205.sink = select i1 %tobool200.not, i8 22, i8 %conv205
  %86 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv205.sink, ptr %86, align 2
  %max_bytes = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 11
  %88 = ptrtoint ptr %max_bytes to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %max_bytes, align 8
  %max_files = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 12
  %90 = ptrtoint ptr %max_files to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %max_files, align 8
  %i_max_files.i.i = getelementptr i8, ptr %inode, i32 -680
  %92 = ptrtoint ptr %i_max_files.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %i_max_files.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %93)
  %tobool.not.i.i = icmp eq i64 %93, 0
  %i_max_bytes.i.i = getelementptr i8, ptr %inode, i32 -688
  br i1 %tobool.not.i.i, label %__ceph_has_any_quota.exit.i, label %__ceph_has_any_quota.exit.thread.i

__ceph_has_any_quota.exit.i:                      ; preds = %inode_set_max_iversion_raw.exit
  %94 = ptrtoint ptr %i_max_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %i_max_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool1.i.i = icmp ne i64 %95, 0
  %96 = ptrtoint ptr %i_max_bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %89, ptr %i_max_bytes.i.i, align 8
  %97 = ptrtoint ptr %i_max_files.i.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %91, ptr %i_max_files.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %91)
  %tobool.not.i13.i = icmp eq i64 %91, 0
  br i1 %tobool.not.i13.i, label %__ceph_has_any_quota.exit17.i, label %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i

__ceph_has_any_quota.exit.thread.i:               ; preds = %inode_set_max_iversion_raw.exit
  %98 = ptrtoint ptr %i_max_bytes.i.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %89, ptr %i_max_bytes.i.i, align 8
  %99 = ptrtoint ptr %i_max_files.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %91, ptr %i_max_files.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool1.i1520.i = icmp ne i64 %89, 0
  %100 = or i64 %91, %89
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %100)
  %.not.i = icmp eq i64 %100, 0
  br i1 %.not.i, label %__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge, label %__ceph_has_any_quota.exit.thread.i.__ceph_update_quota.exit_crit_edge

__ceph_has_any_quota.exit.thread.i.__ceph_update_quota.exit_crit_edge: ; preds = %__ceph_has_any_quota.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ceph_update_quota.exit

__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge: ; preds = %__ceph_has_any_quota.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i: ; preds = %__ceph_has_any_quota.exit.i
  br i1 %tobool1.i.i, label %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.__ceph_update_quota.exit_crit_edge, label %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge

__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge: ; preds = %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.__ceph_update_quota.exit_crit_edge: ; preds = %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ceph_update_quota.exit

__ceph_has_any_quota.exit17.i:                    ; preds = %__ceph_has_any_quota.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool1.i15.i = icmp ne i64 %89, 0
  %101 = xor i1 %tobool1.i15.i, %tobool1.i.i
  br i1 %101, label %__ceph_has_any_quota.exit17.i.if.then.i_crit_edge, label %__ceph_has_any_quota.exit17.i.__ceph_update_quota.exit_crit_edge

__ceph_has_any_quota.exit17.i.__ceph_update_quota.exit_crit_edge: ; preds = %__ceph_has_any_quota.exit17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ceph_update_quota.exit

__ceph_has_any_quota.exit17.i.if.then.i_crit_edge: ; preds = %__ceph_has_any_quota.exit17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %__ceph_has_any_quota.exit17.i.if.then.i_crit_edge, %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge, %__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge
  %102 = phi i1 [ true, %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.if.then.i_crit_edge ], [ %tobool1.i15.i, %__ceph_has_any_quota.exit17.i.if.then.i_crit_edge ], [ %tobool1.i1520.i, %__ceph_has_any_quota.exit.thread.i.if.then.i_crit_edge ]
  call void @ceph_adjust_quota_realms_count(ptr noundef %inode, i1 noundef zeroext %102) #14
  br label %__ceph_update_quota.exit

__ceph_update_quota.exit:                         ; preds = %if.then.i, %__ceph_has_any_quota.exit17.i.__ceph_update_quota.exit_crit_edge, %__ceph_has_any_quota.exit.__ceph_has_any_quota.exit17_crit_edge.i.__ceph_update_quota.exit_crit_edge, %__ceph_has_any_quota.exit.thread.i.__ceph_update_quota.exit_crit_edge
  %new_version.0.off0.not = xor i1 %new_version.0.off0, true
  %and212 = and i32 %and199, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  %or.cond = select i1 %new_version.0.off0.not, i1 %tobool213.not, i1 false
  br i1 %or.cond, label %__ceph_update_quota.exit.if.end250_crit_edge, label %land.lhs.true214

__ceph_update_quota.exit.if.end250_crit_edge:     ; preds = %__ceph_update_quota.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end250

land.lhs.true214:                                 ; preds = %__ceph_update_quota.exit
  %103 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %issued, align 4
  %and215 = and i32 %104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %cmp216 = icmp eq i32 %and215, 0
  br i1 %cmp216, label %if.then218, label %land.lhs.true214.if.end250_crit_edge

land.lhs.true214.if.end250_crit_edge:             ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end250

if.then218:                                       ; preds = %land.lhs.true214
  %105 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv, ptr %inode, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %uid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 16
  %106 = ptrtoint ptr %uid to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %107 = load i32, ptr %uid, align 1
  %108 = call i32 @llvm.bswap.i32(i32 %107)
  %call221 = call i32 @make_kuid(ptr noundef nonnull @init_user_ns, i32 noundef %108) #14
  %109 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call221, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %gid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 17
  %110 = ptrtoint ptr %gid to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %gid, align 1
  %112 = call i32 @llvm.bswap.i32(i32 %111)
  %call223 = call i32 @make_kgid(ptr noundef nonnull @init_user_ns, i32 noundef %112) #14
  %113 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call223, ptr %i_gid, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_inode.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_inode, %if.then237)) #14
          to label %do.end249 [label %if.then237], !srcloc !475

if.then237:                                       ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #16
  %114 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %inode, align 8
  %conv240 = zext i16 %115 to i32
  %116 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack = load i32, ptr %i_uid, align 4
  %117 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call243 = call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %117) #14
  %118 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack920 = load i32, ptr %i_gid, align 8
  %119 = insertvalue [1 x i32] undef, i32 %.unpack920, 0
  %call246 = call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %119) #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_inode.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.62, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 869, ptr noundef %inode, i32 noundef %conv240, i32 noundef %call243, i32 noundef %call246) #14
  br label %do.end249

do.end249:                                        ; preds = %if.then237, %if.then218
  %i_btime = getelementptr i8, ptr %inode, i32 -88
  %btime = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 14
  %120 = ptrtoint ptr %btime to i32
  call void @__asan_loadN_noabort(i32 %120, i32 4)
  %121 = load i32, ptr %btime, align 1
  %122 = call i32 @llvm.bswap.i32(i32 %121) #14
  %conv.i = zext i32 %122 to i64
  %123 = ptrtoint ptr %i_btime to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %conv.i, ptr %i_btime, align 8
  %tv_nsec.i = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 14, i32 1
  %124 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 4)
  %125 = load i32, ptr %tv_nsec.i, align 1
  %126 = call i32 @llvm.bswap.i32(i32 %125) #14
  %tv_nsec2.i = getelementptr i8, ptr %inode, i32 -80
  %127 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %tv_nsec2.i, align 8
  %i_snap_btime = getelementptr i8, ptr %inode, i32 -72
  %snap_btime = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 15
  %128 = ptrtoint ptr %snap_btime to i32
  call void @__asan_loadN_noabort(i32 %128, i32 4)
  %129 = load i32, ptr %snap_btime, align 1
  %130 = call i32 @llvm.bswap.i32(i32 %129) #14
  %conv.i960 = zext i32 %130 to i64
  %131 = ptrtoint ptr %i_snap_btime to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv.i960, ptr %i_snap_btime, align 8
  %tv_nsec.i961 = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 15, i32 1
  %132 = ptrtoint ptr %tv_nsec.i961 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %tv_nsec.i961, align 1
  %134 = call i32 @llvm.bswap.i32(i32 %133) #14
  %tv_nsec2.i962 = getelementptr i8, ptr %inode, i32 -64
  %135 = ptrtoint ptr %tv_nsec2.i962 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %tv_nsec2.i962, align 8
  br label %if.end250

if.end250:                                        ; preds = %do.end249, %land.lhs.true214.if.end250_crit_edge, %__ceph_update_quota.exit.if.end250_crit_edge
  %and254 = and i32 %and199, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  %or.cond924 = select i1 %new_version.0.off0.not, i1 %tobool255.not, i1 false
  br i1 %or.cond924, label %if.end250.if.end261_crit_edge, label %land.lhs.true256

if.end250.if.end261_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end261

land.lhs.true256:                                 ; preds = %if.end250
  %136 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %issued, align 4
  %and257 = and i32 %137, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %cmp258 = icmp eq i32 %and257, 0
  br i1 %cmp258, label %if.then260, label %land.lhs.true256.if.end261_crit_edge

land.lhs.true256.if.end261_crit_edge:             ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end261

if.then260:                                       ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #16
  %nlink = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 18
  %138 = ptrtoint ptr %nlink to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %nlink, align 1
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  call void @set_nlink(ptr noundef %inode, i32 noundef %140) #14
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %land.lhs.true256.if.end261_crit_edge, %if.end250.if.end261_crit_edge
  %and265 = and i32 %and199, 3412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  %or.cond926 = select i1 %new_version.0.off0.not, i1 %tobool266.not, i1 false
  br i1 %or.cond926, label %if.end261.if.end272_crit_edge, label %if.then267

if.end261.if.end272_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end272

if.then267:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #16
  %atime268 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 9
  %141 = ptrtoint ptr %atime268 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 4)
  %142 = load i32, ptr %atime268, align 1
  %143 = call i32 @llvm.bswap.i32(i32 %142) #14
  %conv.i963 = zext i32 %143 to i64
  %144 = ptrtoint ptr %atime to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv.i963, ptr %atime, align 8
  %tv_nsec.i964 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 9, i32 1
  %145 = ptrtoint ptr %tv_nsec.i964 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %tv_nsec.i964, align 1
  %147 = call i32 @llvm.bswap.i32(i32 %146) #14
  %tv_nsec2.i965 = getelementptr inbounds %struct.timespec64, ptr %atime, i32 0, i32 1
  %148 = ptrtoint ptr %tv_nsec2.i965 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %tv_nsec2.i965, align 8
  %mtime269 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 8
  %149 = ptrtoint ptr %mtime269 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 4)
  %150 = load i32, ptr %mtime269, align 1
  %151 = call i32 @llvm.bswap.i32(i32 %150) #14
  %conv.i966 = zext i32 %151 to i64
  %152 = ptrtoint ptr %mtime to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %conv.i966, ptr %mtime, align 8
  %tv_nsec.i967 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 8, i32 1
  %153 = ptrtoint ptr %tv_nsec.i967 to i32
  call void @__asan_loadN_noabort(i32 %153, i32 4)
  %154 = load i32, ptr %tv_nsec.i967, align 1
  %155 = call i32 @llvm.bswap.i32(i32 %154) #14
  %tv_nsec2.i968 = getelementptr inbounds %struct.timespec64, ptr %mtime, i32 0, i32 1
  %156 = ptrtoint ptr %tv_nsec2.i968 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %tv_nsec2.i968, align 8
  %ctime270 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 7
  %157 = ptrtoint ptr %ctime270 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %ctime270, align 1
  %159 = call i32 @llvm.bswap.i32(i32 %158) #14
  %conv.i969 = zext i32 %159 to i64
  %160 = ptrtoint ptr %ctime to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %conv.i969, ptr %ctime, align 8
  %tv_nsec.i970 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 7, i32 1
  %161 = ptrtoint ptr %tv_nsec.i970 to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %tv_nsec.i970, align 1
  %163 = call i32 @llvm.bswap.i32(i32 %162) #14
  %tv_nsec2.i971 = getelementptr inbounds %struct.timespec64, ptr %ctime, i32 0, i32 1
  %164 = ptrtoint ptr %tv_nsec2.i971 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %tv_nsec2.i971, align 8
  %165 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %issued, align 4
  %time_warp_seq = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 10
  %167 = ptrtoint ptr %time_warp_seq to i32
  call void @__asan_loadN_noabort(i32 %167, i32 4)
  %168 = load i32, ptr %time_warp_seq, align 1
  %169 = call i32 @llvm.bswap.i32(i32 %168)
  %conv271 = zext i32 %169 to i64
  call void @ceph_fill_file_time(ptr noundef %inode, i32 noundef %166, i64 noundef %conv271, ptr noundef nonnull %ctime, ptr noundef nonnull %mtime, ptr noundef nonnull %atime)
  br label %if.end272

if.end272:                                        ; preds = %if.then267, %if.end261.if.end272_crit_edge
  %and276 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool277.not = icmp eq i32 %and276, 0
  %or.cond928 = select i1 %new_version.0.off0.not, i1 %tobool277.not, i1 false
  br i1 %or.cond928, label %if.end272.if.end279_crit_edge, label %if.then278

if.end272.if.end279_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end279

if.then278:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #16
  %files = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 19
  %170 = ptrtoint ptr %files to i32
  call void @__asan_loadN_noabort(i32 %170, i32 8)
  %171 = load i64, ptr %files, align 1
  %172 = call i64 @llvm.bswap.i64(i64 %171)
  %i_files = getelementptr i8, ptr %inode, i32 -704
  %173 = ptrtoint ptr %i_files to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %i_files, align 8
  %subdirs = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 20
  %174 = ptrtoint ptr %subdirs to i32
  call void @__asan_loadN_noabort(i32 %174, i32 8)
  %175 = load i64, ptr %subdirs, align 1
  %176 = call i64 @llvm.bswap.i64(i64 %175)
  %i_subdirs = getelementptr i8, ptr %inode, i32 -696
  %177 = ptrtoint ptr %i_subdirs to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %176, ptr %i_subdirs, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.then278, %if.end272.if.end279_crit_edge
  %and283 = and i32 %and199, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  %or.cond930 = select i1 %new_version.0.off0.not, i1 %tobool284.not, i1 false
  br i1 %or.cond930, label %if.end279.if.end392_crit_edge, label %if.then285

if.end279.if.end392_crit_edge:                    ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end392

if.then285:                                       ; preds = %if.end279
  %i_layout = getelementptr i8, ptr %inode, i32 -824
  %pool_id = getelementptr i8, ptr %inode, i32 -808
  %178 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %pool_id, align 8
  call void @ceph_file_layout_from_legacy(ptr noundef %i_layout, ptr noundef %layout) #14
  %dep_map290 = getelementptr i8, ptr %inode, i32 -920
  %call.i972 = call i32 @lock_is_held_type(ptr noundef %dep_map290, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i972)
  %tobool292.not = icmp eq i32 %call.i972, 0
  br i1 %tobool292.not, label %land.lhs.true293, label %if.then285.do.end301_crit_edge

if.then285.do.end301_crit_edge:                   ; preds = %if.then285
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end301

land.lhs.true293:                                 ; preds = %if.then285
  %call294 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %land.lhs.true293.do.end301_crit_edge, label %land.lhs.true296

land.lhs.true293.do.end301_crit_edge:             ; preds = %land.lhs.true293
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end301

land.lhs.true296:                                 ; preds = %land.lhs.true293
  %.b918919 = load i1, ptr @ceph_fill_inode.__warned, align 1
  br i1 %.b918919, label %land.lhs.true296.do.end301_crit_edge, label %if.then298

land.lhs.true296.do.end301_crit_edge:             ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end301

if.then298:                                       ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_fill_inode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 900, ptr noundef nonnull @.str.63) #14
  br label %do.end301

do.end301:                                        ; preds = %if.then298, %land.lhs.true296.do.end301_crit_edge, %land.lhs.true293.do.end301_crit_edge, %if.then285.do.end301_crit_edge
  %pool_ns304 = getelementptr i8, ptr %inode, i32 -800
  %180 = ptrtoint ptr %pool_ns304 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %pool_ns304, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !499
  %182 = ptrtoint ptr %pool_ns304 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile ptr %pool_ns.0, ptr %pool_ns304, align 8
  %183 = ptrtoint ptr %pool_id to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %pool_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %184, i64 %179)
  %cmp350.not = icmp eq i64 %184, %179
  %cmp353.not = icmp eq ptr %pool_ns.0, %181
  %or.cond931 = select i1 %cmp350.not, i1 %cmp353.not, i1 false
  br i1 %or.cond931, label %do.end301.if.end357_crit_edge, label %if.then355

do.end301.if.end357_crit_edge:                    ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end357

if.then355:                                       ; preds = %do.end301
  call void @__sanitizer_cov_trace_pc() #16
  %i_ceph_flags = getelementptr i8, ptr %inode, i32 -868
  %185 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %i_ceph_flags, align 4
  %and356 = and i32 %186, -9
  store i32 %and356, ptr %i_ceph_flags, align 4
  br label %if.end357

if.end357:                                        ; preds = %if.then355, %do.end301.if.end357_crit_edge
  %187 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %issued, align 4
  %truncate_seq = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 14
  %189 = ptrtoint ptr %truncate_seq to i32
  call void @__asan_loadN_noabort(i32 %189, i32 4)
  %190 = load i32, ptr %truncate_seq, align 1
  %191 = call i32 @llvm.bswap.i32(i32 %190)
  %truncate_size = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 13
  %192 = ptrtoint ptr %truncate_size to i32
  call void @__asan_loadN_noabort(i32 %192, i32 8)
  %193 = load i64, ptr %truncate_size, align 1
  %194 = call i64 @llvm.bswap.i64(i64 %193)
  %size = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 11
  %195 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %195, i32 8)
  %196 = load i64, ptr %size, align 1
  %197 = call i64 @llvm.bswap.i64(i64 %196)
  %call358 = call i32 @ceph_fill_file_size(ptr noundef %inode, i32 noundef %188, i32 noundef %191, i64 noundef %194, i64 noundef %197)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359 = icmp ne i32 %call358, 0
  %flags362 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 6
  %198 = ptrtoint ptr %flags362 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %flags362, align 1
  %200 = and i8 %199, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool365.not = icmp eq i8 %200, 0
  br i1 %tobool365.not, label %if.end357.if.end392_crit_edge, label %land.lhs.true366

if.end357.if.end392_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end392

land.lhs.true366:                                 ; preds = %if.end357
  %i_max_size = getelementptr i8, ptr %inode, i32 -248
  %201 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %i_max_size, align 8
  %max_size = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 12
  %203 = ptrtoint ptr %max_size to i32
  call void @__asan_loadN_noabort(i32 %203, i32 8)
  %204 = load i64, ptr %max_size, align 1
  %205 = call i64 @llvm.bswap.i64(i64 %204)
  call void @__sanitizer_cov_trace_cmp8(i64 %202, i64 %205)
  %cmp367.not = icmp eq i64 %202, %205
  br i1 %cmp367.not, label %land.lhs.true366.if.end392_crit_edge, label %do.body370

land.lhs.true366.if.end392_crit_edge:             ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end392

do.body370:                                       ; preds = %land.lhs.true366
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_inode.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_inode, %if.then382)) #14
          to label %do.end388 [label %if.then382], !srcloc !475

if.then382:                                       ; preds = %do.body370
  call void @__sanitizer_cov_trace_pc() #16
  %206 = ptrtoint ptr %i_max_size to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %i_max_size, align 8
  %208 = ptrtoint ptr %max_size to i32
  call void @__asan_loadN_noabort(i32 %208, i32 8)
  %209 = load i64, ptr %max_size, align 1
  %210 = call i64 @llvm.bswap.i64(i64 %209)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_inode.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.65, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 916, i64 noundef %207, i64 noundef %210) #14
  br label %do.end388

do.end388:                                        ; preds = %if.then382, %do.body370
  %211 = ptrtoint ptr %max_size to i32
  call void @__asan_loadN_noabort(i32 %211, i32 8)
  %212 = load i64, ptr %max_size, align 1
  %213 = call i64 @llvm.bswap.i64(i64 %212)
  %214 = ptrtoint ptr %i_max_size to i32
  call void @__asan_store8_noabort(i32 %214)
  store i64 %213, ptr %i_max_size, align 8
  br label %if.end392

if.end392:                                        ; preds = %do.end388, %land.lhs.true366.if.end392_crit_edge, %if.end357.if.end392_crit_edge, %if.end279.if.end392_crit_edge
  %queue_trunc.0.off0 = phi i1 [ false, %if.end279.if.end392_crit_edge ], [ %tobool359, %do.end388 ], [ %tobool359, %land.lhs.true366.if.end392_crit_edge ], [ %tobool359, %if.end357.if.end392_crit_edge ]
  %pool_ns.1 = phi ptr [ %pool_ns.0, %if.end279.if.end392_crit_edge ], [ %181, %do.end388 ], [ %181, %land.lhs.true366.if.end392_crit_edge ], [ %181, %if.end357.if.end392_crit_edge ]
  br i1 %new_version.0.off0, label %if.end392.if.then401_crit_edge, label %lor.lhs.false395

if.end392.if.then401_crit_edge:                   ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then401

lor.lhs.false395:                                 ; preds = %if.end392
  %flags397 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 6
  %215 = ptrtoint ptr %flags397 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %flags397, align 1
  %217 = and i8 %216, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool400.not = icmp eq i8 %217, 0
  br i1 %tobool400.not, label %lor.lhs.false395.if.end409_crit_edge, label %lor.lhs.false395.if.then401_crit_edge

lor.lhs.false395.if.then401_crit_edge:            ; preds = %lor.lhs.false395
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then401

lor.lhs.false395.if.end409_crit_edge:             ; preds = %lor.lhs.false395
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end409

if.then401:                                       ; preds = %lor.lhs.false395.if.then401_crit_edge, %if.end392.if.then401_crit_edge
  %218 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %inode, align 8
  %220 = and i16 %219, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %220)
  %cmp405 = icmp eq i16 %220, 16384
  br i1 %cmp405, label %if.then407, label %if.then401.if.end409_crit_edge

if.then401.if.end409_crit_edge:                   ; preds = %if.then401
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end409

if.then407:                                       ; preds = %if.then401
  call void @__sanitizer_cov_trace_pc() #16
  %i_dir_layout = getelementptr i8, ptr %inode, i32 -832
  %dir_layout = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 1
  %221 = ptrtoint ptr %dir_layout to i32
  call void @__asan_loadN_noabort(i32 %221, i32 8)
  %222 = load i64, ptr %dir_layout, align 4
  %223 = ptrtoint ptr %i_dir_layout to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %222, ptr %i_dir_layout, align 8
  %rbytes = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 21
  %224 = ptrtoint ptr %rbytes to i32
  call void @__asan_loadN_noabort(i32 %224, i32 8)
  %225 = load i64, ptr %rbytes, align 1
  %226 = call i64 @llvm.bswap.i64(i64 %225)
  %i_rbytes = getelementptr i8, ptr %inode, i32 -736
  %227 = ptrtoint ptr %i_rbytes to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %226, ptr %i_rbytes, align 8
  %rfiles = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 22
  %228 = ptrtoint ptr %rfiles to i32
  call void @__asan_loadN_noabort(i32 %228, i32 8)
  %229 = load i64, ptr %rfiles, align 1
  %230 = call i64 @llvm.bswap.i64(i64 %229)
  %i_rfiles = getelementptr i8, ptr %inode, i32 -728
  %231 = ptrtoint ptr %i_rfiles to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %230, ptr %i_rfiles, align 8
  %rsubdirs = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 23
  %232 = ptrtoint ptr %rsubdirs to i32
  call void @__asan_loadN_noabort(i32 %232, i32 8)
  %233 = load i64, ptr %rsubdirs, align 1
  %234 = call i64 @llvm.bswap.i64(i64 %233)
  %i_rsubdirs = getelementptr i8, ptr %inode, i32 -720
  %235 = ptrtoint ptr %i_rsubdirs to i32
  call void @__asan_store8_noabort(i32 %235)
  store i64 %234, ptr %i_rsubdirs, align 8
  %dir_pin = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 13
  %236 = ptrtoint ptr %dir_pin to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %dir_pin, align 8
  %i_dir_pin = getelementptr i8, ptr %inode, i32 -672
  %238 = ptrtoint ptr %i_dir_pin to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %i_dir_pin, align 8
  %rsnaps = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 16
  %239 = ptrtoint ptr %rsnaps to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %rsnaps, align 8
  %i_rsnaps = getelementptr i8, ptr %inode, i32 -712
  %241 = ptrtoint ptr %i_rsnaps to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %240, ptr %i_rsnaps, align 8
  %i_rctime = getelementptr i8, ptr %inode, i32 -752
  %rctime = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 24
  %242 = ptrtoint ptr %rctime to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %243 = load i32, ptr %rctime, align 1
  %244 = call i32 @llvm.bswap.i32(i32 %243) #14
  %conv.i973 = zext i32 %244 to i64
  %245 = ptrtoint ptr %i_rctime to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %conv.i973, ptr %i_rctime, align 8
  %tv_nsec.i974 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 24, i32 1
  %246 = ptrtoint ptr %tv_nsec.i974 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 4)
  %247 = load i32, ptr %tv_nsec.i974, align 1
  %248 = call i32 @llvm.bswap.i32(i32 %247) #14
  %tv_nsec2.i975 = getelementptr i8, ptr %inode, i32 -744
  %249 = ptrtoint ptr %tv_nsec2.i975 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %tv_nsec2.i975, align 8
  br label %if.end409

if.end409:                                        ; preds = %if.then407, %if.then401.if.end409_crit_edge, %lor.lhs.false395.if.end409_crit_edge
  %i_xattrs = getelementptr i8, ptr %inode, i32 -568
  %version410 = getelementptr i8, ptr %inode, i32 -536
  %250 = ptrtoint ptr %version410 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %version410, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %251)
  %cmp411 = icmp eq i64 %251, 0
  br i1 %cmp411, label %if.end409.land.lhs.true416_crit_edge, label %lor.lhs.false413

if.end409.land.lhs.true416_crit_edge:             ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true416

lor.lhs.false413:                                 ; preds = %if.end409
  %252 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %issued, align 4
  %and414 = and i32 %253, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414)
  %tobool415.not = icmp eq i32 %and414, 0
  br i1 %tobool415.not, label %lor.lhs.false413.land.lhs.true416_crit_edge, label %lor.lhs.false413.if.end439_crit_edge

lor.lhs.false413.if.end439_crit_edge:             ; preds = %lor.lhs.false413
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end439

lor.lhs.false413.land.lhs.true416_crit_edge:      ; preds = %lor.lhs.false413
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true416

land.lhs.true416:                                 ; preds = %lor.lhs.false413.land.lhs.true416_crit_edge, %if.end409.land.lhs.true416_crit_edge
  %xattr_version = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 4
  %254 = ptrtoint ptr %xattr_version to i32
  call void @__asan_loadN_noabort(i32 %254, i32 8)
  %255 = load i64, ptr %xattr_version, align 1
  %256 = call i64 @llvm.bswap.i64(i64 %255)
  call void @__sanitizer_cov_trace_cmp8(i64 %256, i64 %251)
  %cmp419 = icmp ugt i64 %256, %251
  br i1 %cmp419, label %if.then421, label %land.lhs.true416.if.end439_crit_edge

land.lhs.true416.if.end439_crit_edge:             ; preds = %land.lhs.true416
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end439

if.then421:                                       ; preds = %land.lhs.true416
  %257 = ptrtoint ptr %i_xattrs to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %i_xattrs, align 8
  store ptr %xattr_blob.0, ptr %i_xattrs, align 8
  %tobool430.not = icmp eq ptr %xattr_blob.0, null
  br i1 %tobool430.not, label %if.then421.if.end435_crit_edge, label %if.then431

if.then421.if.end435_crit_edge:                   ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end435

if.then431:                                       ; preds = %if.then421
  call void @__sanitizer_cov_trace_pc() #16
  %vec = getelementptr inbounds %struct.ceph_buffer, ptr %xattr_blob.0, i32 0, i32 1
  %259 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %vec, align 4
  %xattr_data = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 5
  %261 = ptrtoint ptr %xattr_data to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %xattr_data, align 8
  %263 = ptrtoint ptr %xattr_len to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %xattr_len, align 4
  %265 = call ptr @memcpy(ptr %260, ptr %262, i32 %264)
  br label %if.end435

if.end435:                                        ; preds = %if.then431, %if.then421.if.end435_crit_edge
  %266 = ptrtoint ptr %xattr_version to i32
  call void @__asan_loadN_noabort(i32 %266, i32 8)
  %267 = load i64, ptr %xattr_version, align 1
  %268 = call i64 @llvm.bswap.i64(i64 %267)
  %269 = ptrtoint ptr %version410 to i32
  call void @__asan_store8_noabort(i32 %269)
  store i64 %268, ptr %version410, align 8
  call void @forget_all_cached_acls(ptr noundef %inode) #14
  call void @security_inode_invalidate_secctx(ptr noundef %inode) #14
  br label %if.end439

if.end439:                                        ; preds = %if.end435, %land.lhs.true416.if.end439_crit_edge, %lor.lhs.false413.if.end439_crit_edge
  %old_blob.1 = phi ptr [ %258, %if.end435 ], [ null, %land.lhs.true416.if.end439_crit_edge ], [ null, %lor.lhs.false413.if.end439_crit_edge ]
  %xattr_blob.1 = phi ptr [ null, %if.end435 ], [ %xattr_blob.0, %land.lhs.true416.if.end439_crit_edge ], [ %xattr_blob.0, %lor.lhs.false413.if.end439_crit_edge ]
  %version440 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 3
  %270 = ptrtoint ptr %version440 to i32
  call void @__asan_loadN_noabort(i32 %270, i32 8)
  %271 = load i64, ptr %version440, align 1
  %272 = call i64 @llvm.bswap.i64(i64 %271)
  %273 = ptrtoint ptr %i_version181 to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %i_version181, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %272, i64 %274)
  %cmp442 = icmp ugt i64 %272, %274
  br i1 %cmp442, label %if.then444, label %if.end439.if.end447_crit_edge

if.end439.if.end447_crit_edge:                    ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end447

if.then444:                                       ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #16
  %275 = ptrtoint ptr %i_version181 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %272, ptr %i_version181, align 8
  br label %if.end447

if.end447:                                        ; preds = %if.then444, %if.end439.if.end447_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %276 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %277, i32 0, i32 9
  %278 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr @ceph_aops, ptr %a_ops, align 4
  %279 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %inode, align 8
  %281 = and i16 %280, -4096
  %and450 = zext i16 %281 to i32
  %282 = add nsw i32 %and450, -4096
  %283 = lshr exact i32 %282, 12
  %284 = zext i32 %283 to i64
  call void @__sanitizer_cov_trace_switch(i64 %284, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %283, label %do.end499 [
    i32 0, label %if.end447.sw.bb_crit_edge
    i32 5, label %if.end447.sw.bb_crit_edge1013
    i32 1, label %if.end447.sw.bb_crit_edge1014
    i32 11, label %if.end447.sw.bb_crit_edge1015
    i32 7, label %sw.bb453
    i32 9, label %sw.bb455
    i32 3, label %sw.bb495
  ]

if.end447.sw.bb_crit_edge1015:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end447.sw.bb_crit_edge1014:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end447.sw.bb_crit_edge1013:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end447.sw.bb_crit_edge:                        ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

sw.bb:                                            ; preds = %if.end447.sw.bb_crit_edge, %if.end447.sw.bb_crit_edge1013, %if.end447.sw.bb_crit_edge1014, %if.end447.sw.bb_crit_edge1015
  %285 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 12, ptr %86, align 2
  call void @init_special_inode(ptr noundef %inode, i16 noundef zeroext %280, i32 noundef %18) #14
  %i_op = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %286 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr @ceph_file_iops, ptr %i_op, align 8
  br label %sw.epilog

sw.bb453:                                         ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  %i_op454 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %287 = ptrtoint ptr %i_op454 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr @ceph_file_iops, ptr %i_op454, align 8
  %288 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr @ceph_file_fops, ptr %288, align 8
  br label %sw.epilog

sw.bb455:                                         ; preds = %if.end447
  %i_op456 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %290 = ptrtoint ptr %i_op456 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr @ceph_symlink_iops, ptr %i_op456, align 8
  %i_symlink = getelementptr i8, ptr %inode, i32 -760
  %291 = ptrtoint ptr %i_symlink to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %i_symlink, align 8
  %tobool457.not = icmp eq ptr %292, null
  br i1 %tobool457.not, label %if.then458, label %sw.bb455.if.end493_crit_edge

sw.bb455.if.end493_crit_edge:                     ; preds = %sw.bb455
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end493

if.then458:                                       ; preds = %sw.bb455
  %symlink_len = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 2
  %293 = ptrtoint ptr %symlink_len to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %symlink_len, align 4
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  %conv460 = zext i32 %294 to i64
  %call461 = call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %call461, i64 %conv460)
  %cmp462.not = icmp eq i64 %call461, %conv460
  br i1 %cmp462.not, label %if.then458.if.end480_crit_edge, label %do.end467

if.then458.if.end480_crit_edge:                   ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end480

do.end467:                                        ; preds = %if.then458
  call void @__sanitizer_cov_trace_pc() #16
  %295 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %295)
  %296 = load i64, ptr %add.ptr.i, align 8
  %297 = ptrtoint ptr %snap.i956 to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %snap.i956, align 8
  %call475 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %call476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.50, i64 noundef %296, i64 noundef %298, i64 noundef %call475) #17
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %conv460)
  %sub.i978 = add nuw nsw i64 %conv460, 511
  %shr.i = lshr i64 %sub.i978, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %299 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %shr.i, ptr %i_blocks, align 8
  br label %if.end480

if.end480:                                        ; preds = %do.end467, %if.then458.if.end480_crit_edge
  %symlink = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 3
  %300 = ptrtoint ptr %symlink to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %symlink, align 8
  %call481 = call ptr @kstrndup(ptr noundef %301, i32 noundef %294, i32 noundef 3136) #14
  %tobool482.not = icmp eq ptr %call481, null
  br i1 %tobool482.not, label %if.end480.out_crit_edge, label %if.end484

if.end480.out_crit_edge:                          ; preds = %if.end480
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end484:                                        ; preds = %if.end480
  call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %302 = ptrtoint ptr %i_symlink to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %i_symlink, align 8
  %tobool487.not = icmp eq ptr %303, null
  br i1 %tobool487.not, label %if.then488, label %if.else490

if.then488:                                       ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #16
  %304 = ptrtoint ptr %i_symlink to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %call481, ptr %i_symlink, align 8
  br label %if.end493

if.else490:                                       ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree(ptr noundef nonnull %call481) #14
  br label %if.end493

if.end493:                                        ; preds = %if.else490, %if.then488, %sw.bb455.if.end493_crit_edge
  %305 = ptrtoint ptr %i_symlink to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %i_symlink, align 8
  %307 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %306, ptr %307, align 4
  br label %sw.epilog

sw.bb495:                                         ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  %i_op496 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 7
  %309 = ptrtoint ptr %i_op496 to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr @ceph_dir_iops, ptr %i_op496, align 8
  %310 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 44
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr @ceph_dir_fops, ptr %310, align 8
  br label %sw.epilog

do.end499:                                        ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #16
  %312 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %312)
  %313 = load i64, ptr %add.ptr.i, align 8
  %314 = ptrtoint ptr %snap.i956 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %snap.i956, align 8
  %conv508 = zext i16 %280 to i32
  %call509 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.50, i64 noundef %313, i64 noundef %315, i32 noundef %conv508) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end499, %sw.bb495, %if.end493, %sw.bb453, %sw.bb
  br i1 %tobool140.not, label %sw.epilog.if.end588_crit_edge, label %if.then511

sw.epilog.if.end588_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end588

if.then511:                                       ; preds = %sw.epilog
  %316 = ptrtoint ptr %snap.i956 to i32
  call void @__asan_load8_noabort(i32 %316)
  %317 = load i64, ptr %snap.i956, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %317)
  %cmp513 = icmp eq i64 %317, -2
  br i1 %cmp513, label %if.then515, label %do.body568

if.then515:                                       ; preds = %if.then511
  %cap_id = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 2
  %318 = ptrtoint ptr %cap_id to i32
  call void @__asan_loadN_noabort(i32 %318, i32 8)
  %319 = load i64, ptr %cap_id, align 1
  %320 = call i64 @llvm.bswap.i64(i64 %319)
  %wanted = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 1
  %321 = ptrtoint ptr %wanted to i32
  call void @__asan_loadN_noabort(i32 %321, i32 4)
  %322 = load i32, ptr %wanted, align 1
  %323 = call i32 @llvm.bswap.i32(i32 %322)
  %seq = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 3
  %324 = ptrtoint ptr %seq to i32
  call void @__asan_loadN_noabort(i32 %324, i32 4)
  %325 = load i32, ptr %seq, align 1
  %326 = call i32 @llvm.bswap.i32(i32 %325)
  %mseq = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 4
  %327 = ptrtoint ptr %mseq to i32
  call void @__asan_loadN_noabort(i32 %327, i32 4)
  %328 = load i32, ptr %mseq, align 1
  %329 = call i32 @llvm.bswap.i32(i32 %328)
  %realm = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 5
  %330 = ptrtoint ptr %realm to i32
  call void @__asan_loadN_noabort(i32 %330, i32 8)
  %331 = load i64, ptr %realm, align 1
  %332 = call i64 @llvm.bswap.i64(i64 %331)
  %flags522 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 5, i32 6
  %333 = ptrtoint ptr %flags522 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %flags522, align 1
  %conv523 = zext i8 %334 to i32
  call void @ceph_add_cap(ptr noundef %inode, ptr noundef %session, i64 noundef %320, i32 noundef %47, i32 noundef %323, i32 noundef %326, i32 noundef %329, i64 noundef %332, i32 noundef %conv523, ptr noundef nonnull %new_cap) #14
  %335 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %inode, align 8
  %337 = and i16 %336, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %337)
  %cmp527 = icmp eq i16 %337, 16384
  br i1 %cmp527, label %land.lhs.true529, label %if.then515.if.end588_crit_edge

if.then515.if.end588_crit_edge:                   ; preds = %if.then515
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end588

land.lhs.true529:                                 ; preds = %if.then515
  %i_files530 = getelementptr i8, ptr %inode, i32 -704
  %338 = ptrtoint ptr %i_files530 to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %i_files530, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %339)
  %cmp531 = icmp eq i64 %339, 0
  br i1 %cmp531, label %land.lhs.true533, label %land.lhs.true529.if.end588_crit_edge

land.lhs.true529.if.end588_crit_edge:             ; preds = %land.lhs.true529
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end588

land.lhs.true533:                                 ; preds = %land.lhs.true529
  %i_subdirs534 = getelementptr i8, ptr %inode, i32 -696
  %340 = ptrtoint ptr %i_subdirs534 to i32
  call void @__asan_load8_noabort(i32 %340)
  %341 = load i64, ptr %i_subdirs534, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %341)
  %cmp535 = icmp ne i64 %341, 0
  %or.cond932 = select i1 %cmp535, i1 true, i1 %tobool277.not
  br i1 %or.cond932, label %land.lhs.true533.if.end588_crit_edge, label %land.lhs.true540

land.lhs.true533.if.end588_crit_edge:             ; preds = %land.lhs.true533
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end588

land.lhs.true540:                                 ; preds = %land.lhs.true533
  %342 = ptrtoint ptr %issued to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %issued, align 4
  %and541 = and i32 %343, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and541)
  %cmp542 = icmp eq i32 %and541, 0
  br i1 %cmp542, label %land.lhs.true544, label %land.lhs.true540.if.end588_crit_edge

land.lhs.true540.if.end588_crit_edge:             ; preds = %land.lhs.true540
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end588

land.lhs.true544:                                 ; preds = %land.lhs.true540
  %call545 = call fastcc zeroext i1 @__ceph_dir_is_complete(ptr noundef %add.ptr.i)
  br i1 %call545, label %land.lhs.true544.if.end588_crit_edge, label %do.body547

land.lhs.true544.if.end588_crit_edge:             ; preds = %land.lhs.true544
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end588

do.body547:                                       ; preds = %land.lhs.true544
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_inode.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_inode, %if.then559)) #14
          to label %do.end563 [label %if.then559], !srcloc !475

if.then559:                                       ; preds = %do.body547
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_inode.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.73, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1027, ptr noundef %inode) #14
  br label %do.end563

do.end563:                                        ; preds = %if.then559, %do.body547
  call fastcc void @i_size_write(ptr noundef %inode, i64 noundef 0)
  %i_release_count = getelementptr i8, ptr %inode, i32 -864
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count, i32 noundef 8) #14
  %call.i = call i64 @generic_atomic64_read(ptr noundef %i_release_count) #14
  %i_ordered_count = getelementptr i8, ptr %inode, i32 -856
  %call.i.i944 = call zeroext i1 @__kasan_check_read(ptr noundef %i_ordered_count, i32 noundef 8) #14
  %call.i945 = call i64 @generic_atomic64_read(ptr noundef %i_ordered_count) #14
  call fastcc void @__ceph_dir_set_complete(ptr noundef %add.ptr.i, i64 noundef %call.i, i64 noundef %call.i945)
  br label %if.end588

do.body568:                                       ; preds = %if.then511
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_inode.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_inode, %if.then580)) #14
          to label %do.end585 [label %if.then580], !srcloc !475

if.then580:                                       ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #16
  %call582 = call ptr @ceph_cap_string(i32 noundef %47) #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_inode.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.75, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1037, ptr noundef %inode, ptr noundef %call582) #14
  br label %do.end585

do.end585:                                        ; preds = %if.then580, %do.body568
  %i_snap_caps = getelementptr i8, ptr %inode, i32 -392
  %344 = ptrtoint ptr %i_snap_caps to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %i_snap_caps, align 8
  %or586 = or i32 %345, %47
  store i32 %or586, ptr %i_snap_caps, align 8
  br label %if.end588

if.end588:                                        ; preds = %do.end585, %do.end563, %land.lhs.true544.if.end588_crit_edge, %land.lhs.true540.if.end588_crit_edge, %land.lhs.true533.if.end588_crit_edge, %land.lhs.true529.if.end588_crit_edge, %if.then515.if.end588_crit_edge, %sw.epilog.if.end588_crit_edge
  %wake.0.off0 = phi i1 [ false, %do.end585 ], [ false, %sw.epilog.if.end588_crit_edge ], [ true, %do.end563 ], [ true, %land.lhs.true544.if.end588_crit_edge ], [ true, %land.lhs.true540.if.end588_crit_edge ], [ true, %land.lhs.true533.if.end588_crit_edge ], [ true, %land.lhs.true529.if.end588_crit_edge ], [ true, %if.then515.if.end588_crit_edge ]
  %inline_version = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 6
  %346 = ptrtoint ptr %inline_version to i32
  call void @__asan_load8_noabort(i32 %346)
  %347 = load i64, ptr %inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %347)
  %cmp589.not = icmp eq i64 %347, 0
  br i1 %cmp589.not, label %if.end588.if.end608_crit_edge, label %land.lhs.true591

if.end588.if.end608_crit_edge:                    ; preds = %if.end588
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end608

land.lhs.true591:                                 ; preds = %if.end588
  %i_inline_version = getelementptr i8, ptr %inode, i32 -880
  %348 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %347, i64 %349)
  %cmp593.not = icmp ult i64 %347, %349
  br i1 %cmp593.not, label %land.lhs.true591.if.end608_crit_edge, label %if.then595

land.lhs.true591.if.end608_crit_edge:             ; preds = %land.lhs.true591
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end608

if.then595:                                       ; preds = %land.lhs.true591
  %350 = ptrtoint ptr %i_inline_version to i32
  call void @__asan_store8_noabort(i32 %350)
  store i64 %347, ptr %i_inline_version, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %347)
  %cmp599.not = icmp eq i64 %347, -1
  br i1 %cmp599.not, label %if.then595.if.end608_crit_edge, label %land.lhs.true601

if.then595.if.end608_crit_edge:                   ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end608

land.lhs.true601:                                 ; preds = %if.then595
  call void @__sanitizer_cov_trace_pc() #16
  %tobool602.not = icmp ne ptr %locked_page, null
  %and604 = and i32 %47, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and604)
  %tobool605.not = icmp ne i32 %and604, 0
  %or.cond933 = select i1 %tobool602.not, i1 true, i1 %tobool605.not
  br label %if.end608

if.end608:                                        ; preds = %land.lhs.true601, %if.then595.if.end608_crit_edge, %land.lhs.true591.if.end608_crit_edge, %if.end588.if.end608_crit_edge
  %fill_inline.1.off0 = phi i1 [ false, %land.lhs.true591.if.end608_crit_edge ], [ false, %if.end588.if.end608_crit_edge ], [ false, %if.then595.if.end608_crit_edge ], [ %or.cond933, %land.lhs.true601 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cap_fmode)
  %cmp609 = icmp sgt i32 %cap_fmode, -1
  br i1 %cmp609, label %if.then611, label %if.end608.if.end626_crit_edge

if.end608.if.end626_crit_edge:                    ; preds = %if.end608
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end626

if.then611:                                       ; preds = %if.end608
  br i1 %tobool140.not, label %do.end616, label %if.then611.if.end625_crit_edge

if.then611.if.end625_crit_edge:                   ; preds = %if.then611
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end625

do.end616:                                        ; preds = %if.then611
  call void @__sanitizer_cov_trace_pc() #16
  %351 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %351)
  %352 = load i64, ptr %add.ptr.i, align 8
  %353 = ptrtoint ptr %snap.i956 to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %snap.i956, align 8
  %call624 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i64 noundef %352, i64 noundef %354) #17
  br label %if.end625

if.end625:                                        ; preds = %do.end616, %if.then611.if.end625_crit_edge
  call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %5, i32 noundef %cap_fmode) #14
  br label %if.end626

if.end626:                                        ; preds = %if.end625, %if.end608.if.end626_crit_edge
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  call void @ceph_fscache_register_inode_cookie(ptr noundef %inode) #14
  br i1 %fill_inline.1.off0, label %if.then629, label %if.end626.if.end630_crit_edge

if.end626.if.end630_crit_edge:                    ; preds = %if.end626
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end630

if.then629:                                       ; preds = %if.end626
  call void @__sanitizer_cov_trace_pc() #16
  %inline_data = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 8
  %355 = ptrtoint ptr %inline_data to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %inline_data, align 4
  %inline_len = getelementptr inbounds %struct.ceph_mds_reply_info_in, ptr %iinfo, i32 0, i32 7
  %357 = ptrtoint ptr %inline_len to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %inline_len, align 8
  call void @ceph_fill_inline_data(ptr noundef %inode, ptr noundef %locked_page, ptr noundef %356, i32 noundef %358) #14
  br label %if.end630

if.end630:                                        ; preds = %if.then629, %if.end626.if.end630_crit_edge
  br i1 %wake.0.off0, label %if.then632, label %if.end630.if.end633_crit_edge

if.end630.if.end633_crit_edge:                    ; preds = %if.end630
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end633

if.then632:                                       ; preds = %if.end630
  call void @__sanitizer_cov_trace_pc() #16
  %i_cap_wq = getelementptr i8, ptr %inode, i32 -476
  call void @__wake_up(ptr noundef %i_cap_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %if.end633

if.end633:                                        ; preds = %if.then632, %if.end630.if.end633_crit_edge
  br i1 %queue_trunc.0.off0, label %if.then635, label %if.end633.if.end636_crit_edge

if.end633.if.end636_crit_edge:                    ; preds = %if.end633
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end636

if.then635:                                       ; preds = %if.end633
  call void @__sanitizer_cov_trace_pc() #16
  call void @ceph_queue_inode_work(ptr noundef %inode, i32 noundef 2) #14
  br label %if.end636

if.end636:                                        ; preds = %if.then635, %if.end633.if.end636_crit_edge
  %359 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %inode, align 8
  %361 = and i16 %360, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %361)
  %cmp640 = icmp eq i16 %361, 16384
  br i1 %cmp640, label %if.then642, label %if.end636.if.end644_crit_edge

if.end636.if.end644_crit_edge:                    ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end644

if.then642:                                       ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #16
  %fragtree = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %7, i32 0, i32 25
  call fastcc void @ceph_fill_fragtree(ptr noundef %inode, ptr noundef %fragtree, ptr noundef %dirinfo)
  br label %if.end644

if.end644:                                        ; preds = %if.then642, %if.end636.if.end644_crit_edge
  %tobool645.not = icmp eq ptr %dirinfo, null
  br i1 %tobool645.not, label %if.end644.out_crit_edge, label %if.then646

if.end644.out_crit_edge:                          ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then646:                                       ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ceph_fill_dirfrag(ptr noundef %inode, ptr noundef nonnull %dirinfo)
  br label %out

out:                                              ; preds = %if.then646, %if.end644.out_crit_edge, %if.end480.out_crit_edge
  %err.0 = phi i32 [ 0, %if.then646 ], [ 0, %if.end644.out_crit_edge ], [ -12, %if.end480.out_crit_edge ]
  %362 = ptrtoint ptr %new_cap to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %new_cap, align 4
  %tobool649.not = icmp eq ptr %363, null
  br i1 %tobool649.not, label %out.if.end651_crit_edge, label %if.then650

out.if.end651_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end651

if.then650:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void @ceph_put_cap(ptr noundef %5, ptr noundef nonnull %363) #14
  br label %if.end651

if.end651:                                        ; preds = %if.then650, %out.if.end651_crit_edge
  %tobool.not.i = icmp eq ptr %old_blob.1, null
  br i1 %tobool.not.i, label %if.end651.ceph_buffer_put.exit_crit_edge, label %if.then.i984

if.end651.ceph_buffer_put.exit_crit_edge:         ; preds = %if.end651
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_buffer_put.exit

if.then.i984:                                     ; preds = %if.end651
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old_blob.1, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  call void @llvm.prefetch.p0(ptr nonnull %old_blob.1, i32 1, i32 3, i32 1) #14
  %364 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %old_blob.1, ptr nonnull %old_blob.1, i32 1, ptr nonnull elementtype(i32) %old_blob.1) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %364, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !474

if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_buffer_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef nonnull %old_blob.1, i32 noundef 3) #14
  br label %ceph_buffer_put.exit

if.then.i.i:                                      ; preds = %if.then.i984
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  call void @ceph_buffer_release(ptr noundef nonnull %old_blob.1) #14, !callees !481
  br label %ceph_buffer_put.exit

ceph_buffer_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, %if.end651.ceph_buffer_put.exit_crit_edge
  %tobool.not.i986 = icmp eq ptr %xattr_blob.1, null
  br i1 %tobool.not.i986, label %ceph_buffer_put.exit.ceph_buffer_put.exit996_crit_edge, label %if.then.i990

ceph_buffer_put.exit.ceph_buffer_put.exit996_crit_edge: ; preds = %ceph_buffer_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_buffer_put.exit996

if.then.i990:                                     ; preds = %ceph_buffer_put.exit
  %call.i.i.i.i.i.i.i987 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %xattr_blob.1, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  call void @llvm.prefetch.p0(ptr nonnull %xattr_blob.1, i32 1, i32 3, i32 1) #14
  %365 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %xattr_blob.1, ptr nonnull %xattr_blob.1, i32 1, ptr nonnull elementtype(i32) %xattr_blob.1) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i988 = extractvalue { i32, i32, i32 } %365, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i988)
  %cmp.i.i.i.i.i989 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i988, 1
  br i1 %cmp.i.i.i.i.i989, label %if.then.i.i994, label %if.end5.i.i.i.i.i992

if.end5.i.i.i.i.i992:                             ; preds = %if.then.i990
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i988)
  %.not.i.i.i.i.i991 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i988, 0
  br i1 %.not.i.i.i.i.i991, label %if.end5.i.i.i.i.i992.ceph_buffer_put.exit996_crit_edge, label %if.then10.i.i.i.i.i993, !prof !474

if.end5.i.i.i.i.i992.ceph_buffer_put.exit996_crit_edge: ; preds = %if.end5.i.i.i.i.i992
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_buffer_put.exit996

if.then10.i.i.i.i.i993:                           ; preds = %if.end5.i.i.i.i.i992
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef nonnull %xattr_blob.1, i32 noundef 3) #14
  br label %ceph_buffer_put.exit996

if.then.i.i994:                                   ; preds = %if.then.i990
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  call void @ceph_buffer_release(ptr noundef nonnull %xattr_blob.1) #14, !callees !481
  br label %ceph_buffer_put.exit996

ceph_buffer_put.exit996:                          ; preds = %if.then.i.i994, %if.then10.i.i.i.i.i993, %if.end5.i.i.i.i.i992.ceph_buffer_put.exit996_crit_edge, %ceph_buffer_put.exit.ceph_buffer_put.exit996_crit_edge
  %tobool.not.i997 = icmp eq ptr %pool_ns.1, null
  br i1 %tobool.not.i997, label %ceph_buffer_put.exit996.cleanup652_crit_edge, label %if.end.i1001

ceph_buffer_put.exit996.cleanup652_crit_edge:     ; preds = %ceph_buffer_put.exit996
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup652

if.end.i1001:                                     ; preds = %ceph_buffer_put.exit996
  %call.i.i.i.i.i.i.i998 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pool_ns.1, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  call void @llvm.prefetch.p0(ptr nonnull %pool_ns.1, i32 1, i32 3, i32 1) #14
  %366 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pool_ns.1, ptr nonnull %pool_ns.1, i32 1, ptr nonnull elementtype(i32) %pool_ns.1) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i999 = extractvalue { i32, i32, i32 } %366, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i999)
  %cmp.i.i.i.i.i1000 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i999, 1
  br i1 %cmp.i.i.i.i.i1000, label %if.then.i.i1005, label %if.end5.i.i.i.i.i1003

if.end5.i.i.i.i.i1003:                            ; preds = %if.end.i1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i999)
  %.not.i.i.i.i.i1002 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i999, 0
  br i1 %.not.i.i.i.i.i1002, label %if.end5.i.i.i.i.i1003.cleanup652_crit_edge, label %if.then10.i.i.i.i.i1004, !prof !474

if.end5.i.i.i.i.i1003.cleanup652_crit_edge:       ; preds = %if.end5.i.i.i.i.i1003
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup652

if.then10.i.i.i.i.i1004:                          ; preds = %if.end5.i.i.i.i.i1003
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef nonnull %pool_ns.1, i32 noundef 3) #14
  br label %cleanup652

if.then.i.i1005:                                  ; preds = %if.end.i1001
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  call void @ceph_release_string(ptr noundef nonnull %pool_ns.1) #14, !callees !481
  br label %cleanup652

cleanup652:                                       ; preds = %if.then.i.i1005, %if.then10.i.i.i.i.i1004, %if.end5.i.i.i.i.i1003.cleanup652_crit_edge, %ceph_buffer_put.exit996.cleanup652_crit_edge, %if.then145.cleanup652_crit_edge, %if.then113, %land.end106.cleanup652_crit_edge, %if.then64, %land.end57.cleanup652_crit_edge
  %retval.0 = phi i32 [ -116, %if.then64 ], [ -116, %land.end57.cleanup652_crit_edge ], [ -116, %if.then113 ], [ -116, %land.end106.cleanup652_crit_edge ], [ -12, %if.then145.cleanup652_crit_edge ], [ %err.0, %ceph_buffer_put.exit996.cleanup652_crit_edge ], [ %err.0, %if.end5.i.i.i.i.i1003.cleanup652_crit_edge ], [ %err.0, %if.then10.i.i.i.i.i1004 ], [ %err.0, %if.then.i.i1005 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_cap) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctime) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %atime) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mtime) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %issued) #14
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_buffer_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_find_or_create_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_snapid_map(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_file_layout_from_legacy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_add_cap(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__ceph_dir_is_complete(ptr noundef %ci) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_complete_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_complete_seq, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %i_complete_seq) #14
  %i_release_count = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 6
  %call.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count, i32 noundef 8) #14
  %call.i4 = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i4)
  %cmp = icmp eq i64 %call.i, %call.i4
  ret i1 %cmp
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ceph_dir_set_complete(ptr noundef %ci, i64 noundef %release_count, i64 noundef %ordered_count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !500
  %i_complete_seq = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_complete_seq, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %i_complete_seq, i64 noundef %release_count) #14
  %arrayidx4 = getelementptr %struct.ceph_inode_info, ptr %ci, i32 0, i32 8, i32 1
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4, i32 noundef 8) #14
  tail call void @generic_atomic64_set(ptr noundef %arrayidx4, i64 noundef %ordered_count) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_touch_fmode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_register_inode_cookie(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fill_inline_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_fill_fragtree(ptr noundef %inode, ptr noundef %fragtree, ptr noundef readonly %dirinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_fragtree_mutex = getelementptr i8, ptr %inode, i32 -660
  tail call void @mutex_lock_nested(ptr noundef %i_fragtree_mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %fragtree to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %fragtree, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %i_fragtree_nsplits = getelementptr i8, ptr %inode, i32 -664
  %3 = ptrtoint ptr %i_fragtree_nsplits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_fragtree_nsplits, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp eq i32 %2, %4
  br i1 %cmp.not, label %if.else, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %call3 = tail call i32 @prandom_u32() #14
  %rem = urem i32 %call3, %2
  %arrayidx = getelementptr %struct.ceph_frag_tree_head, ptr %fragtree, i32 0, i32 1, i32 %rem
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %i_fragtree.i = getelementptr i8, ptr %inode, i32 -668
  %8 = ptrtoint ptr %i_fragtree.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %n.016.i = load ptr, ptr %i_fragtree.i, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.then2.__ceph_find_frag.exit_crit_edge, label %if.then2.while.body.i_crit_edge

if.then2.while.body.i_crit_edge:                  ; preds = %if.then2
  br label %while.body.i

if.then2.__ceph_find_frag.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ceph_find_frag.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then2.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.016.i, %if.then2.while.body.i_crit_edge ]
  %frag1.i = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 1
  %9 = ptrtoint ptr %frag1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frag1.i, align 4
  %call.i = tail call i32 @ceph_frag_compare(i32 noundef %7, i32 noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.else.i.__ceph_find_frag.exit_crit_edge, label %if.then3.i

if.else.i.__ceph_find_frag.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ceph_find_frag.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %11 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.__ceph_find_frag.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.__ceph_find_frag.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__ceph_find_frag.exit

__ceph_find_frag.exit:                            ; preds = %cleanup.i.__ceph_find_frag.exit_crit_edge, %if.else.i.__ceph_find_frag.exit_crit_edge, %if.then2.__ceph_find_frag.exit_crit_edge
  %n.0.lcssa.i = phi ptr [ null, %if.then2.__ceph_find_frag.exit_crit_edge ], [ null, %cleanup.i.__ceph_find_frag.exit_crit_edge ], [ %n.018.i, %if.else.i.__ceph_find_frag.exit_crit_edge ]
  %tobool6.not = icmp eq ptr %n.0.lcssa.i, null
  br label %if.end24

do.end:                                           ; preds = %if.else
  %i_fragtree = getelementptr i8, ptr %inode, i32 -668
  %12 = ptrtoint ptr %i_fragtree to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %i_fragtree, align 4
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %do.end.if.end24_crit_edge, label %if.then11

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then11:                                        ; preds = %do.end
  %call13 = tail call ptr @rb_first(ptr noundef %i_fragtree) #14
  %frag15 = getelementptr inbounds %struct.ceph_inode_frag, ptr %call13, i32 0, i32 1
  %14 = ptrtoint ptr %frag15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frag15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17.not = icmp eq i32 %15, 0
  br i1 %cmp17.not, label %lor.lhs.false, label %if.then11.if.end36_crit_edge

if.then11.if.end36_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

lor.lhs.false:                                    ; preds = %if.then11
  %call18 = tail call ptr @rb_next(ptr noundef %call13) #14
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %lor.lhs.false.if.end24_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %lor.lhs.false.if.end24_crit_edge, %do.end.if.end24_crit_edge, %__ceph_find_frag.exit
  %update.0.off0 = phi i1 [ false, %do.end.if.end24_crit_edge ], [ false, %lor.lhs.false.if.end24_crit_edge ], [ %tobool6.not, %__ceph_find_frag.exit ]
  %tobool26.not = icmp eq ptr %dirinfo, null
  %or.cond = or i1 %tobool26.not, %update.0.off0
  br i1 %or.cond, label %if.end33, label %if.then27

if.then27:                                        ; preds = %if.end24
  %16 = ptrtoint ptr %dirinfo to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %dirinfo, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %call29 = tail call fastcc i32 @__ceph_choose_frag(ptr noundef %add.ptr.i, i32 noundef %18, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %call29)
  %cmp30.not.not = icmp eq i32 %18, %call29
  br i1 %cmp30.not.not, label %if.then27.out_unlock_crit_edge, label %if.then27.if.end36_crit_edge

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then27.out_unlock_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end33:                                         ; preds = %if.end24
  br i1 %update.0.off0, label %if.end33.if.end36_crit_edge, label %if.end33.out_unlock_crit_edge

if.end33.out_unlock_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.end36:                                         ; preds = %if.end33.if.end36_crit_edge, %if.then27.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge, %if.then11.if.end36_crit_edge, %entry.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp37 = icmp ugt i32 %2, 1
  br i1 %cmp37, label %if.then38, label %if.end36.do.body41_crit_edge

if.end36.do.body41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body41

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %splits39 = getelementptr inbounds %struct.ceph_frag_tree_head, ptr %fragtree, i32 0, i32 1
  tail call void @sort(ptr noundef %splits39, i32 noundef %2, i32 noundef 8, ptr noundef nonnull @frag_tree_split_cmp, ptr noundef null) #14
  br label %do.body41

do.body41:                                        ; preds = %if.then38, %if.end36.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_fragtree.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_fragtree, %if.then47)) #14
          to label %do.end54 [label %if.then47], !srcloc !475

if.then47:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %21 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_fragtree.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.183, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 382, i64 noundef %20, i64 noundef %22) #14
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %do.body41
  %i_fragtree55 = getelementptr i8, ptr %inode, i32 -668
  %call56 = tail call ptr @rb_first(ptr noundef %i_fragtree55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5753.not = icmp eq i32 %1, 0
  br i1 %cmp5753.not, label %do.end54.while.cond142.preheader_crit_edge, label %for.body.lr.ph

do.end54.while.cond142.preheader_crit_edge:       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond142.preheader

for.body.lr.ph:                                   ; preds = %do.end54
  %snap77 = getelementptr i8, ptr %inode, i32 -944
  %umax = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %for.body

while.cond142.preheader:                          ; preds = %for.inc.while.cond142.preheader_crit_edge, %do.end54.while.cond142.preheader_crit_edge
  %rb_node.0.lcssa = phi ptr [ %call56, %do.end54.while.cond142.preheader_crit_edge ], [ %rb_node.3, %for.inc.while.cond142.preheader_crit_edge ]
  %prev_frag.0.lcssa = phi ptr [ null, %do.end54.while.cond142.preheader_crit_edge ], [ %prev_frag.1, %for.inc.while.cond142.preheader_crit_edge ]
  %tobool143.not62 = icmp eq ptr %rb_node.0.lcssa, null
  br i1 %tobool143.not62, label %while.cond142.preheader.out_unlock_crit_edge, label %while.body144.lr.ph

while.cond142.preheader.out_unlock_crit_edge:     ; preds = %while.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

while.body144.lr.ph:                              ; preds = %while.cond142.preheader
  %tobool.not.i16 = icmp eq ptr %prev_frag.0.lcssa, null
  %frag2.i20 = getelementptr inbounds %struct.ceph_inode_frag, ptr %prev_frag.0.lcssa, i32 0, i32 1
  %split_by.i22 = getelementptr inbounds %struct.ceph_inode_frag, ptr %prev_frag.0.lcssa, i32 0, i32 2
  br label %while.body144

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %prev_frag.057 = phi ptr [ null, %for.body.lr.ph ], [ %prev_frag.1, %for.inc.for.body_crit_edge ]
  %rb_node.056 = phi ptr [ %call56, %for.body.lr.ph ], [ %rb_node.3, %for.inc.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc141, %for.inc.for.body_crit_edge ]
  %arrayidx59 = getelementptr %struct.ceph_frag_tree_head, ptr %fragtree, i32 0, i32 1, i32 %i.054
  %23 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %arrayidx59, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %by = getelementptr %struct.ceph_frag_tree_head, ptr %fragtree, i32 0, i32 1, i32 %i.054, i32 1
  %26 = ptrtoint ptr %by to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %by, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp63 = icmp eq i32 %27, 0
  %shr.i = lshr i32 %25, 24
  %add = add i32 %shr.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %add)
  %cmp66 = icmp ugt i32 %add, 24
  %or.cond48 = select i1 %cmp63, i1 true, i1 %cmp66
  br i1 %or.cond48, label %do.end70, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  %tobool80.not51 = icmp eq ptr %rb_node.056, null
  br i1 %tobool80.not51, label %while.cond.preheader.if.then110_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.then110_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool.not.i11 = icmp eq ptr %prev_frag.057, null
  %frag2.i = getelementptr inbounds %struct.ceph_inode_frag, ptr %prev_frag.057, i32 0, i32 1
  %split_by.i = getelementptr inbounds %struct.ceph_inode_frag, ptr %prev_frag.057, i32 0, i32 2
  br label %while.body

do.end70:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i, align 8
  %31 = ptrtoint ptr %snap77 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %snap77, align 8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i64 noundef %30, i64 noundef %32, i32 noundef %i.054, i32 noundef %2, i32 noundef %25, i32 noundef %28) #17
  br label %for.inc

while.body:                                       ; preds = %if.end108.while.body_crit_edge, %while.body.lr.ph
  %rb_node.152 = phi ptr [ %rb_node.056, %while.body.lr.ph ], [ %call95, %if.end108.while.body_crit_edge ]
  %frag84 = getelementptr inbounds %struct.ceph_inode_frag, ptr %rb_node.152, i32 0, i32 1
  %33 = ptrtoint ptr %frag84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frag84, align 4
  %call85 = tail call i32 @ceph_frag_compare(i32 noundef %34, i32 noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call85)
  %cmp86 = icmp sgt i32 %call85, -1
  br i1 %cmp86, label %if.then87, label %if.end94

if.then87:                                        ; preds = %while.body
  %35 = ptrtoint ptr %frag84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %frag84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %25)
  %cmp89.not = icmp eq i32 %36, %25
  br i1 %cmp89.not, label %while.end, label %if.then87.if.then110_crit_edge

if.then87.if.then110_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

if.end94:                                         ; preds = %while.body
  %call95 = tail call ptr @rb_next(ptr noundef nonnull %rb_node.152) #14
  %split_by96 = getelementptr inbounds %struct.ceph_inode_frag, ptr %rb_node.152, i32 0, i32 2
  %37 = ptrtoint ptr %split_by96 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %split_by96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp97 = icmp sgt i32 %38, 0
  br i1 %cmp97, label %if.end94.if.then101_crit_edge, label %lor.lhs.false98

if.end94.if.then101_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

lor.lhs.false98:                                  ; preds = %if.end94
  %39 = ptrtoint ptr %frag84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %frag84, align 4
  br i1 %tobool.not.i11, label %is_frag_child.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false98
  %shr.i.i = lshr i32 %40, 24
  %41 = ptrtoint ptr %frag2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %frag2.i, align 4
  %shr.i15.i = lshr i32 %42, 24
  %43 = ptrtoint ptr %split_by.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %split_by.i, align 4
  %add.i = add i32 %shr.i15.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %add.i)
  %cmp4.not.i = icmp eq i32 %shr.i.i, %add.i
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.if.then101_crit_edge

if.end.i.if.then101_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

if.end6.i:                                        ; preds = %if.end.i
  %and.i.i = and i32 %40, 16777215
  %sub.i.i.i = sub nsw i32 24, %shr.i15.i
  %shl.i.i.i = shl i32 16777215, %sub.i.i.i
  %and.i16.i = and i32 %and.i.i, %shl.i.i.i
  %and.i3.i.i = and i32 %42, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i16.i, i32 %and.i3.i.i)
  %cmp.i.i = icmp eq i32 %and.i16.i, %and.i3.i.i
  br i1 %cmp.i.i, label %if.end6.i.if.end108_crit_edge, label %if.end6.i.if.then101_crit_edge

if.end6.i.if.then101_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

if.end6.i.if.end108_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

is_frag_child.exit:                               ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i12 = icmp eq i32 %40, 0
  br i1 %cmp.i12, label %is_frag_child.exit.if.end108_crit_edge, label %is_frag_child.exit.if.then101_crit_edge

is_frag_child.exit.if.then101_crit_edge:          ; preds = %is_frag_child.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

is_frag_child.exit.if.end108_crit_edge:           ; preds = %is_frag_child.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.then101:                                       ; preds = %is_frag_child.exit.if.then101_crit_edge, %if.end6.i.if.then101_crit_edge, %if.end.i.if.then101_crit_edge, %if.end94.if.then101_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %rb_node.152, ptr noundef %i_fragtree55) #14
  %45 = ptrtoint ptr %split_by96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %split_by96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp104 = icmp sgt i32 %46, 0
  br i1 %cmp104, label %if.then105, label %if.then101.if.end107_crit_edge

if.then101.if.end107_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end107

if.then105:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %i_fragtree_nsplits to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_fragtree_nsplits, align 8
  %dec = add i32 %48, -1
  store i32 %dec, ptr %i_fragtree_nsplits, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.then101.if.end107_crit_edge
  tail call void @kfree(ptr noundef nonnull %rb_node.152) #14
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %is_frag_child.exit.if.end108_crit_edge, %if.end6.i.if.end108_crit_edge
  %tobool80.not = icmp eq ptr %call95, null
  br i1 %tobool80.not, label %if.end108.if.then110_crit_edge, label %if.end108.while.body_crit_edge

if.end108.while.body_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end108.if.then110_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then110

while.end:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  %call92 = tail call ptr @rb_next(ptr noundef nonnull %rb_node.152) #14
  br label %if.end115

if.then110:                                       ; preds = %if.end108.if.then110_crit_edge, %if.then87.if.then110_crit_edge, %while.cond.preheader.if.then110_crit_edge
  %rb_node.150 = phi ptr [ %rb_node.152, %if.then87.if.then110_crit_edge ], [ null, %while.cond.preheader.if.then110_crit_edge ], [ null, %if.end108.if.then110_crit_edge ]
  %call111 = tail call fastcc ptr @__get_or_create_frag(ptr noundef %add.ptr.i, i32 noundef %25)
  %cmp.i15 = icmp ugt ptr %call111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.then110.for.inc_crit_edge, label %if.then110.if.end115_crit_edge

if.then110.if.end115_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then110.for.inc_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end115:                                        ; preds = %if.then110.if.end115_crit_edge, %while.end
  %rb_node.245 = phi ptr [ %call92, %while.end ], [ %rb_node.150, %if.then110.if.end115_crit_edge ]
  %frag.2 = phi ptr [ %rb_node.152, %while.end ], [ %call111, %if.then110.if.end115_crit_edge ]
  %split_by116 = getelementptr inbounds %struct.ceph_inode_frag, ptr %frag.2, i32 0, i32 2
  %49 = ptrtoint ptr %split_by116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %split_by116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp117 = icmp eq i32 %50, 0
  br i1 %cmp117, label %if.then118, label %if.end115.if.end120_crit_edge

if.end115.if.end120_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  %51 = ptrtoint ptr %i_fragtree_nsplits to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_fragtree_nsplits, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %i_fragtree_nsplits, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end115.if.end120_crit_edge
  %53 = ptrtoint ptr %split_by116 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %28, ptr %split_by116, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_fragtree.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_fragtree, %if.then134)) #14
          to label %for.inc [label %if.then134], !srcloc !475

if.then134:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  %frag136 = getelementptr inbounds %struct.ceph_inode_frag, ptr %frag.2, i32 0, i32 1
  %54 = ptrtoint ptr %frag136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %frag136, align 4
  %56 = ptrtoint ptr %split_by116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %split_by116, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_fragtree.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.186, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 422, i32 noundef %55, i32 noundef %57) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then134, %if.end120, %if.then110.for.inc_crit_edge, %do.end70
  %rb_node.3 = phi ptr [ %rb_node.056, %do.end70 ], [ %rb_node.150, %if.then110.for.inc_crit_edge ], [ %rb_node.245, %if.then134 ], [ %rb_node.245, %if.end120 ]
  %prev_frag.1 = phi ptr [ %prev_frag.057, %do.end70 ], [ %prev_frag.057, %if.then110.for.inc_crit_edge ], [ %frag.2, %if.then134 ], [ %frag.2, %if.end120 ]
  %inc141 = add nuw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc141, %umax
  br i1 %exitcond.not, label %for.inc.while.cond142.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.while.cond142.preheader_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond142.preheader

while.body144:                                    ; preds = %if.end163.while.body144_crit_edge, %while.body144.lr.ph
  %rb_node.463 = phi ptr [ %rb_node.0.lcssa, %while.body144.lr.ph ], [ %call148, %if.end163.while.body144_crit_edge ]
  %call148 = tail call ptr @rb_next(ptr noundef nonnull %rb_node.463) #14
  %split_by149 = getelementptr inbounds %struct.ceph_inode_frag, ptr %rb_node.463, i32 0, i32 2
  %58 = ptrtoint ptr %split_by149 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %split_by149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp150 = icmp sgt i32 %59, 0
  br i1 %cmp150, label %while.body144.if.then154_crit_edge, label %lor.lhs.false151

while.body144.if.then154_crit_edge:               ; preds = %while.body144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

lor.lhs.false151:                                 ; preds = %while.body144
  %frag152 = getelementptr inbounds %struct.ceph_inode_frag, ptr %rb_node.463, i32 0, i32 1
  %60 = ptrtoint ptr %frag152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %frag152, align 4
  br i1 %tobool.not.i16, label %is_frag_child.exit34, label %if.end.i25

if.end.i25:                                       ; preds = %lor.lhs.false151
  %shr.i.i19 = lshr i32 %61, 24
  %62 = ptrtoint ptr %frag2.i20 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %frag2.i20, align 4
  %shr.i15.i21 = lshr i32 %63, 24
  %64 = ptrtoint ptr %split_by.i22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %split_by.i22, align 4
  %add.i23 = add i32 %shr.i15.i21, %65
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i19, i32 %add.i23)
  %cmp4.not.i24 = icmp eq i32 %shr.i.i19, %add.i23
  br i1 %cmp4.not.i24, label %if.end6.i32, label %if.end.i25.if.then154_crit_edge

if.end.i25.if.then154_crit_edge:                  ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

if.end6.i32:                                      ; preds = %if.end.i25
  %and.i.i26 = and i32 %61, 16777215
  %sub.i.i.i27 = sub nsw i32 24, %shr.i15.i21
  %shl.i.i.i28 = shl i32 16777215, %sub.i.i.i27
  %and.i16.i29 = and i32 %and.i.i26, %shl.i.i.i28
  %and.i3.i.i30 = and i32 %63, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i16.i29, i32 %and.i3.i.i30)
  %cmp.i.i31 = icmp eq i32 %and.i16.i29, %and.i3.i.i30
  br i1 %cmp.i.i31, label %if.end6.i32.if.end163_crit_edge, label %if.end6.i32.if.then154_crit_edge

if.end6.i32.if.then154_crit_edge:                 ; preds = %if.end6.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

if.end6.i32.if.end163_crit_edge:                  ; preds = %if.end6.i32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end163

is_frag_child.exit34:                             ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i17 = icmp eq i32 %61, 0
  br i1 %cmp.i17, label %is_frag_child.exit34.if.end163_crit_edge, label %is_frag_child.exit34.if.then154_crit_edge

is_frag_child.exit34.if.then154_crit_edge:        ; preds = %is_frag_child.exit34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then154

is_frag_child.exit34.if.end163_crit_edge:         ; preds = %is_frag_child.exit34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end163

if.then154:                                       ; preds = %is_frag_child.exit34.if.then154_crit_edge, %if.end6.i32.if.then154_crit_edge, %if.end.i25.if.then154_crit_edge, %while.body144.if.then154_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %rb_node.463, ptr noundef %i_fragtree55) #14
  %66 = ptrtoint ptr %split_by149 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %split_by149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp158 = icmp sgt i32 %67, 0
  br i1 %cmp158, label %if.then159, label %if.then154.if.end162_crit_edge

if.then154.if.end162_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then159:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %i_fragtree_nsplits to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_fragtree_nsplits, align 8
  %dec161 = add i32 %69, -1
  store i32 %dec161, ptr %i_fragtree_nsplits, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then159, %if.then154.if.end162_crit_edge
  tail call void @kfree(ptr noundef nonnull %rb_node.463) #14
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %is_frag_child.exit34.if.end163_crit_edge, %if.end6.i32.if.end163_crit_edge
  %tobool143.not = icmp eq ptr %call148, null
  br i1 %tobool143.not, label %if.end163.out_unlock_crit_edge, label %if.end163.while.body144_crit_edge

if.end163.while.body144_crit_edge:                ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body144

if.end163.out_unlock_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

out_unlock:                                       ; preds = %if.end163.out_unlock_crit_edge, %while.cond142.preheader.out_unlock_crit_edge, %if.end33.out_unlock_crit_edge, %if.then27.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %i_fragtree_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_fill_dirfrag(ptr noundef %inode, ptr nocapture noundef readonly %dirinfo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %dirinfo to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %dirinfo, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %auth = getelementptr inbounds %struct.ceph_mds_reply_dirfrag, ptr %dirinfo, i32 0, i32 1
  %3 = ptrtoint ptr %auth to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %auth, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %ndist2 = getelementptr inbounds %struct.ceph_mds_reply_dirfrag, ptr %dirinfo, i32 0, i32 2
  %6 = ptrtoint ptr %ndist2 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %ndist2, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %i_auth_cap = getelementptr i8, ptr %inode, i32 -516
  %9 = ptrtoint ptr %i_auth_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_auth_cap, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mds4 = getelementptr inbounds %struct.ceph_cap, ptr %10, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %mds4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mds4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %diri_auth.0 = phi i32 [ %12, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %spec.select = select i1 %cmp, i32 %diri_auth.0, i32 %5
  %i_fragtree_mutex = getelementptr i8, ptr %inode, i32 -660
  tail call void @mutex_lock_nested(ptr noundef %i_fragtree_mutex, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %diri_auth.0)
  %cmp9 = icmp eq i32 %spec.select, %diri_auth.0
  %or.cond = select i1 %cmp8, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %if.end53

if.then10:                                        ; preds = %if.end
  %i_fragtree.i = getelementptr i8, ptr %inode, i32 -668
  %13 = ptrtoint ptr %i_fragtree.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.016.i = load ptr, ptr %i_fragtree.i, align 4
  %tobool.not17.i = icmp eq ptr %n.016.i, null
  br i1 %tobool.not17.i, label %if.then10.out_crit_edge, label %if.then10.while.body.i_crit_edge

if.then10.while.body.i_crit_edge:                 ; preds = %if.then10
  br label %while.body.i

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then10.while.body.i_crit_edge
  %n.018.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.016.i, %if.then10.while.body.i_crit_edge ]
  %frag1.i = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 1
  %14 = ptrtoint ptr %frag1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frag1.i, align 4
  %call.i = tail call i32 @ceph_frag_compare(i32 noundef %2, i32 noundef %15) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end14, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.018.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then3.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %16 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.out_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.out_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end14:                                         ; preds = %if.else.i
  %split_by = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 2
  %17 = ptrtoint ptr %split_by to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %split_by, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp15 = icmp eq i32 %18, 0
  br i1 %cmp15, label %do.body, label %do.body27

do.body:                                          ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_dirfrag.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_dirfrag, %if.then21)) #14
          to label %do.end [label %if.then21], !srcloc !475

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %21 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_dirfrag.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.192, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 289, i64 noundef %20, i64 noundef %22, i32 noundef %2) #14
  br label %do.end

do.end:                                           ; preds = %if.then21, %do.body
  tail call void @rb_erase(ptr noundef nonnull %n.018.i, ptr noundef %i_fragtree.i) #14
  tail call void @kfree(ptr noundef nonnull %n.018.i) #14
  br label %out

do.body27:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_dirfrag.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_dirfrag, %if.then39)) #14
          to label %do.end49 [label %if.then39], !srcloc !475

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.i, align 8
  %snap46 = getelementptr i8, ptr %inode, i32 -944
  %25 = ptrtoint ptr %snap46 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %snap46, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_dirfrag.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.194, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 295, i64 noundef %24, i64 noundef %26, i32 noundef %2) #14
  br label %do.end49

do.end49:                                         ; preds = %if.then39, %do.body27
  %mds50 = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 3
  %27 = ptrtoint ptr %mds50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %mds50, align 4
  %ndist51 = getelementptr inbounds %struct.ceph_inode_frag, ptr %n.018.i, i32 0, i32 4
  %28 = ptrtoint ptr %ndist51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %ndist51, align 4
  br label %out

if.end53:                                         ; preds = %if.end
  %call54 = tail call fastcc ptr @__get_or_create_frag(ptr noundef %add.ptr.i, i32 noundef %2)
  %cmp.i11 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %do.end59, label %if.end69

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i, align 8
  %snap66 = getelementptr i8, ptr %inode, i32 -944
  %31 = ptrtoint ptr %snap66 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %snap66, align 8
  %33 = ptrtoint ptr %dirinfo to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %dirinfo, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, i64 noundef %30, i64 noundef %32, i32 noundef %35) #17
  br label %out

if.end69:                                         ; preds = %if.end53
  %mds70 = getelementptr inbounds %struct.ceph_inode_frag, ptr %call54, i32 0, i32 3
  %36 = ptrtoint ptr %mds70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %mds70, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %8, i32 4)
  %ndist73 = getelementptr inbounds %struct.ceph_inode_frag, ptr %call54, i32 0, i32 4
  %38 = ptrtoint ptr %ndist73 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ndist73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp7522.not = icmp eq i32 %37, 0
  br i1 %cmp7522.not, label %if.end69.do.body78_crit_edge, label %if.end69.for.body_crit_edge

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  br label %for.body

if.end69.do.body78_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body78

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end69.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end69.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ceph_mds_reply_dirfrag, ptr %dirinfo, i32 0, i32 3, i32 %i.023
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %arrayidx, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %arrayidx77 = getelementptr %struct.ceph_inode_frag, ptr %call54, i32 0, i32 5, i32 %i.023
  %42 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx77, align 4
  %inc = add nuw nsw i32 %i.023, 1
  %43 = ptrtoint ptr %ndist73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ndist73, align 4
  %cmp75 = icmp slt i32 %inc, %44
  br i1 %cmp75, label %for.body.for.body_crit_edge, label %for.body.do.body78_crit_edge

for.body.do.body78_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body78

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body78:                                        ; preds = %for.body.do.body78_crit_edge, %if.end69.do.body78_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_dirfrag.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_dirfrag, %if.then90)) #14
          to label %out [label %if.then90], !srcloc !475

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i, align 8
  %snap97 = getelementptr i8, ptr %inode, i32 -944
  %47 = ptrtoint ptr %snap97 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %snap97, align 8
  %frag98 = getelementptr inbounds %struct.ceph_inode_frag, ptr %call54, i32 0, i32 1
  %49 = ptrtoint ptr %frag98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frag98, align 4
  %51 = ptrtoint ptr %ndist73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ndist73, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_dirfrag.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.197, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 319, i64 noundef %46, i64 noundef %48, i32 noundef %50, i32 noundef %52) #14
  br label %out

out:                                              ; preds = %if.then90, %do.body78, %do.end59, %do.end49, %do.end, %cleanup.i.out_crit_edge, %if.then10.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %i_fragtree_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_cap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_fill_trace(ptr nocapture noundef readonly %sb, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  %old_lease_session.i = alloca ptr, align 4
  %tvino = alloca %struct.ceph_vino, align 8
  %dname = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %r_session = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 50
  %0 = ptrtoint ptr %r_session to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_session, align 4
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tvino) #14
  %2 = getelementptr inbounds %struct.ceph_vino, ptr %tvino, i32 0, i32 1
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %3 = call ptr @memset(ptr %tvino, i32 255, i32 16)
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !475

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_reply_info, align 8
  %is_dentry = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %is_dentry to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_dentry, align 1
  %conv = zext i8 %9 to i32
  %is_target = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %is_target to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_target, align 1
  %conv6 = zext i8 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.81, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1281, ptr noundef %req, i32 noundef %conv, i32 noundef %conv6) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r_reply_info, align 8
  %is_target8 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %is_target8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_target8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %land.lhs.true, label %do.end.if.end37_crit_edge

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

land.lhs.true:                                    ; preds = %do.end
  %is_dentry11 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %is_dentry11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_dentry11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool12.not = icmp eq i8 %17, 0
  br i1 %tobool12.not, label %do.body14, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.body14:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then26)) #14
          to label %do.end30 [label %if.then26], !srcloc !475

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.83, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1284) #14
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %18 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %r_reply_info, align 8
  %result = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %result to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %result, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %land.lhs.true33, label %do.end30.cleanup899_crit_edge

do.end30.cleanup899_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup899

land.lhs.true33:                                  ; preds = %do.end30
  %r_parent = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 13
  %22 = ptrtoint ptr %r_parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %r_parent, align 8
  %tobool34.not = icmp eq ptr %23, null
  br i1 %tobool34.not, label %land.lhs.true33.cleanup899_crit_edge, label %if.then35

land.lhs.true33.cleanup899_crit_edge:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup899

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_invalidate_dir_request(ptr noundef %req) #14
  br label %cleanup899

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %do.end.if.end37_crit_edge
  %is_dentry39 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %13, i32 0, i32 4
  %24 = ptrtoint ptr %is_dentry39 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_dentry39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool40.not = icmp eq i8 %25, 0
  br i1 %tobool40.not, label %if.end37.if.end264_crit_edge, label %if.then41

if.end37.if.end264_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

if.then41:                                        ; preds = %if.end37
  %r_parent42 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 13
  %26 = ptrtoint ptr %r_parent42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %r_parent42, align 8
  %tobool43.not = icmp eq ptr %27, null
  br i1 %tobool43.not, label %land.end, label %if.then44

if.then44:                                        ; preds = %if.then41
  %diri = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 1
  %dirfrag = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 3
  %28 = ptrtoint ptr %dirfrag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dirfrag, align 8
  %r_caps_reservation = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 65
  %call45 = tail call i32 @ceph_fill_inode(ptr noundef nonnull %27, ptr noundef null, ptr noundef %diri, ptr noundef %29, ptr noundef %1, i32 noundef -1, ptr noundef %r_caps_reservation)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then44.do.body882_crit_edge, label %land.lhs.true97

if.then44.do.body882_crit_edge:                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body882

land.end:                                         ; preds = %if.then41
  %.b1087 = load i1, ptr @ceph_fill_trace.__already_done, align 1
  br i1 %.b1087, label %land.end.if.end264_crit_edge, label %if.then61, !prof !474

land.end.if.end264_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

if.then61:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_fill_trace.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1300, i32 noundef 9, ptr noundef null) #14
  br label %if.end264

land.lhs.true97:                                  ; preds = %if.then44
  %r_op = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 4
  %30 = ptrtoint ptr %r_op to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %r_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 261, i32 %31)
  %cmp98 = icmp eq i32 %31, 261
  br i1 %cmp98, label %land.lhs.true100, label %land.lhs.true97.if.end264_crit_edge

land.lhs.true97.if.end264_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 15
  %32 = ptrtoint ptr %r_req_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %r_req_flags, align 4
  %34 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool102.not = icmp eq i32 %34, 0
  br i1 %tobool102.not, label %land.lhs.true100.if.end264_crit_edge, label %land.lhs.true103

land.lhs.true100.if.end264_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

land.lhs.true103:                                 ; preds = %land.lhs.true100
  %35 = ptrtoint ptr %r_req_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %r_req_flags, align 4
  %37 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool106.not = icmp eq i32 %37, 0
  br i1 %tobool106.not, label %if.then107, label %land.lhs.true103.if.end264_crit_edge

land.lhs.true103.if.end264_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end264

if.then107:                                       ; preds = %land.lhs.true103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dname) #14
  %38 = call ptr @memset(ptr %dname, i32 255, i32 16)
  %39 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %r_reply_info, align 8
  %is_target110 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %is_target110 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_target110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool111.not = icmp eq i8 %42, 0
  br i1 %tobool111.not, label %do.body121, label %do.body130, !prof !476

do.body121:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1309, 0\0A.popsection", ""() #14, !srcloc !501
  unreachable

do.body130:                                       ; preds = %if.then107
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %43 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %r_dentry, align 4
  %tobool131.not = icmp eq ptr %44, null
  br i1 %tobool131.not, label %do.end147, label %do.body139, !prof !474

do.body139:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1310, 0\0A.popsection", ""() #14, !srcloc !502
  unreachable

do.end147:                                        ; preds = %do.body130
  %call148 = tail call ptr @d_find_any_alias(ptr noundef nonnull %27) #14
  %tobool150.not = icmp eq ptr %call148, null
  br i1 %tobool150.not, label %do.body160, label %do.end168, !prof !476

do.body160:                                       ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1313, 0\0A.popsection", ""() #14, !srcloc !503
  unreachable

do.end168:                                        ; preds = %do.end147
  %dname169 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 4
  %45 = ptrtoint ptr %dname169 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dname169, align 4
  %name = getelementptr inbounds %struct.qstr, ptr %dname, i32 0, i32 1
  %47 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %name, align 8
  %dname_len = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 5
  %48 = ptrtoint ptr %dname_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dname_len, align 8
  %50 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dname, align 8
  %call172 = tail call i32 @full_name_hash(ptr noundef nonnull %call148, ptr noundef %46, i32 noundef %49) #18
  %hash = getelementptr inbounds %struct.anon.4, ptr %dname, i32 0, i32 1
  %51 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call172, ptr %hash, align 4
  %targeti = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 2
  %52 = ptrtoint ptr %targeti to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %targeti, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %53, align 1
  %56 = tail call i64 @llvm.bswap.i64(i64 %55)
  %57 = ptrtoint ptr %tvino to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %tvino, align 8
  %snapid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %snapid to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %59 = load i64, ptr %snapid, align 1
  %60 = tail call i64 @llvm.bswap.i64(i64 %59)
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %2, align 8
  %i_ordered_count.i.i = getelementptr i8, ptr %27, i32 -856
  br label %retry_lookup

retry_lookup:                                     ; preds = %do.end254, %do.end168
  %call177 = call ptr @d_lookup(ptr noundef nonnull %call148, ptr noundef nonnull %dname) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then190)) #14
          to label %do.end196 [label %if.then190], !srcloc !475

if.then190:                                       ; preds = %retry_lookup
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dname, align 8
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1323, ptr noundef nonnull %call148, i32 noundef %63, ptr noundef %65, ptr noundef %call177) #14
  br label %do.end196

do.end196:                                        ; preds = %if.then190, %retry_lookup
  %tobool197.not = icmp eq ptr %call177, null
  br i1 %tobool197.not, label %if.then198, label %if.else222

if.then198:                                       ; preds = %do.end196
  %call199 = call ptr @d_alloc(ptr noundef nonnull %call148, ptr noundef nonnull %dname) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then212)) #14
          to label %do.end218 [label %if.then212], !srcloc !475

if.then212:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #16
  %66 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dname, align 8
  %68 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1328, ptr noundef nonnull %call148, i32 noundef %67, ptr noundef %69, ptr noundef %call199) #14
  br label %do.end218

do.end218:                                        ; preds = %if.then212, %if.then198
  %tobool219.not = icmp eq ptr %call199, null
  br i1 %tobool219.not, label %cleanup, label %do.end218.cleanup.thread_crit_edge

do.end218.cleanup.thread_crit_edge:               ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.else222:                                       ; preds = %do.end196
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call177, i32 0, i32 5
  %70 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %71, null
  br i1 %cmp.i.not, label %if.else222.cleanup.thread_crit_edge, label %land.lhs.true225

if.else222.cleanup.thread_crit_edge:              ; preds = %if.else222
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

land.lhs.true225:                                 ; preds = %if.else222
  %add.ptr.i.i = getelementptr i8, ptr %71, i32 -952
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr.i.i, align 8
  %74 = ptrtoint ptr %tvino to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %tvino, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %75)
  %cmp229.not = icmp eq i64 %73, %75
  br i1 %cmp229.not, label %lor.lhs.false, label %land.lhs.true225.do.body237_crit_edge

land.lhs.true225.do.body237_crit_edge:            ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body237

lor.lhs.false:                                    ; preds = %land.lhs.true225
  %snap.i = getelementptr i8, ptr %71, i32 -944
  %76 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %snap.i, align 8
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %79)
  %cmp234.not = icmp eq i64 %77, %79
  br i1 %cmp234.not, label %lor.lhs.false.cleanup.thread_crit_edge, label %lor.lhs.false.do.body237_crit_edge

lor.lhs.false.do.body237_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body237

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

do.body237:                                       ; preds = %lor.lhs.false.do.body237_crit_edge, %land.lhs.true225.do.body237_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then249)) #14
          to label %do.end254 [label %if.then249], !srcloc !475

if.then249:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #16
  %80 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %d_inode.i, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.89, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1339, ptr noundef nonnull %call177, ptr noundef %81) #14
  br label %do.end254

do.end254:                                        ; preds = %if.then249, %do.body237
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i.i) #14
  call void @d_delete(ptr noundef nonnull %call177) #14
  call void @dput(ptr noundef nonnull %call177) #14
  br label %retry_lookup

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.else222.cleanup.thread_crit_edge, %do.end218.cleanup.thread_crit_edge
  %dn.0 = phi ptr [ %call199, %do.end218.cleanup.thread_crit_edge ], [ %call177, %if.else222.cleanup.thread_crit_edge ], [ %call177, %lor.lhs.false.cleanup.thread_crit_edge ]
  %err.1 = phi i32 [ 0, %do.end218.cleanup.thread_crit_edge ], [ %call45, %if.else222.cleanup.thread_crit_edge ], [ %call45, %lor.lhs.false.cleanup.thread_crit_edge ]
  %82 = ptrtoint ptr %r_dentry to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %dn.0, ptr %r_dentry, align 4
  call void @dput(ptr noundef nonnull %call148) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dname) #14
  br label %if.end264

cleanup:                                          ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #16
  call void @dput(ptr noundef nonnull %call148) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dname) #14
  br label %do.body882

if.end264:                                        ; preds = %cleanup.thread, %land.lhs.true103.if.end264_crit_edge, %land.lhs.true100.if.end264_crit_edge, %land.lhs.true97.if.end264_crit_edge, %if.then61, %land.end.if.end264_crit_edge, %if.end37.if.end264_crit_edge
  %err.5 = phi i32 [ 0, %if.end37.if.end264_crit_edge ], [ %err.1, %cleanup.thread ], [ %call45, %land.lhs.true97.if.end264_crit_edge ], [ %call45, %land.lhs.true100.if.end264_crit_edge ], [ %call45, %land.lhs.true103.if.end264_crit_edge ], [ 0, %land.end.if.end264_crit_edge ], [ 0, %if.then61 ]
  %83 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %r_reply_info, align 8
  %is_target266 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %is_target266 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_target266, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool267.not = icmp eq i8 %86, 0
  br i1 %tobool267.not, label %if.end264.if.end329_crit_edge, label %do.body269

if.end264.if.end329_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end329

do.body269:                                       ; preds = %if.end264
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 14
  %87 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %r_target_inode, align 4
  %tobool270.not = icmp eq ptr %88, null
  br i1 %tobool270.not, label %do.body280, label %do.end288, !prof !476

do.body280:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1353, 0\0A.popsection", ""() #14, !srcloc !504
  unreachable

do.end288:                                        ; preds = %do.body269
  %r_locked_page = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 38
  %89 = ptrtoint ptr %r_locked_page to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %r_locked_page, align 4
  %targeti290 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 2
  %r_req_flags291 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 15
  %91 = ptrtoint ptr %r_req_flags291 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %r_req_flags291, align 4
  %93 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool293.not = icmp eq i32 %93, 0
  br i1 %tobool293.not, label %land.lhs.true294, label %do.end288.cond.end_crit_edge

do.end288.cond.end_crit_edge:                     ; preds = %do.end288
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true294:                                 ; preds = %do.end288
  %94 = ptrtoint ptr %r_req_flags291 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %r_req_flags291, align 4
  %96 = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool297.not = icmp eq i32 %96, 0
  br i1 %tobool297.not, label %land.lhs.true298, label %land.lhs.true294.cond.end_crit_edge

land.lhs.true294.cond.end_crit_edge:              ; preds = %land.lhs.true294
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

land.lhs.true298:                                 ; preds = %land.lhs.true294
  %result300 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %84, i32 0, i32 1
  %97 = ptrtoint ptr %result300 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %result300, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp301 = icmp eq i32 %98, 0
  br i1 %cmp301, label %cond.true, label %land.lhs.true298.cond.end_crit_edge

land.lhs.true298.cond.end_crit_edge:              ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #16
  %r_fmode = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 18
  %99 = ptrtoint ptr %r_fmode to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %r_fmode, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true298.cond.end_crit_edge, %land.lhs.true294.cond.end_crit_edge, %do.end288.cond.end_crit_edge
  %cond = phi i32 [ %100, %cond.true ], [ -1, %land.lhs.true298.cond.end_crit_edge ], [ -1, %land.lhs.true294.cond.end_crit_edge ], [ -1, %do.end288.cond.end_crit_edge ]
  %r_caps_reservation303 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 65
  %call304 = call i32 @ceph_fill_inode(ptr noundef nonnull %88, ptr noundef %90, ptr noundef %targeti290, ptr noundef null, ptr noundef %1, i32 noundef %cond, ptr noundef %r_caps_reservation303)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call304)
  %cmp305 = icmp slt i32 %call304, 0
  br i1 %cmp305, label %do.end310, label %if.end323

do.end310:                                        ; preds = %cond.end
  %add.ptr.i = getelementptr i8, ptr %88, i32 -952
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %add.ptr.i, align 8
  %snap316 = getelementptr i8, ptr %88, i32 -944
  %103 = ptrtoint ptr %snap316 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %snap316, align 8
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull %88, i64 noundef %102, i64 noundef %104) #17
  %105 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %r_target_inode, align 4
  %i_state = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 24
  %106 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_state, align 8
  %and = and i32 %107, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool319.not = icmp eq i32 %and, 0
  br i1 %tobool319.not, label %if.else321, label %if.then320

if.then320:                                       ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #16
  call void @discard_new_inode(ptr noundef nonnull %88) #14
  br label %do.body882

if.else321:                                       ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #16
  call void @iput(ptr noundef nonnull %88) #14
  br label %do.body882

if.end323:                                        ; preds = %cond.end
  %i_state324 = getelementptr inbounds %struct.inode, ptr %88, i32 0, i32 24
  %108 = ptrtoint ptr %i_state324 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %i_state324, align 8
  %and325 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.end323.if.end329_crit_edge, label %if.then327

if.end323.if.end329_crit_edge:                    ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end329

if.then327:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #16
  call void @unlock_new_inode(ptr noundef nonnull %88) #14
  br label %if.end329

if.end329:                                        ; preds = %if.then327, %if.end323.if.end329_crit_edge, %if.end264.if.end329_crit_edge
  %err.6 = phi i32 [ %call304, %if.then327 ], [ %call304, %if.end323.if.end329_crit_edge ], [ %err.5, %if.end264.if.end329_crit_edge ]
  %in.0 = phi ptr [ %88, %if.then327 ], [ %88, %if.end323.if.end329_crit_edge ], [ null, %if.end264.if.end329_crit_edge ]
  %110 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %r_reply_info, align 8
  %is_dentry331 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %is_dentry331 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_dentry331, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool333.not = icmp eq i8 %113, 0
  br i1 %tobool333.not, label %if.end329.if.else737_crit_edge, label %land.lhs.true334

if.end329.if.else737_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else737

land.lhs.true334:                                 ; preds = %if.end329
  %r_req_flags335 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 15
  %114 = ptrtoint ptr %r_req_flags335 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %r_req_flags335, align 4
  %116 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool337.not = icmp eq i32 %116, 0
  br i1 %tobool337.not, label %land.lhs.true338, label %land.lhs.true334.if.else737_crit_edge

land.lhs.true334.if.else737_crit_edge:            ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else737

land.lhs.true338:                                 ; preds = %land.lhs.true334
  %117 = ptrtoint ptr %r_req_flags335 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %r_req_flags335, align 4
  %119 = and i32 %118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool341.not = icmp eq i32 %119, 0
  br i1 %tobool341.not, label %land.lhs.true338.if.else737_crit_edge, label %land.lhs.true342

land.lhs.true338.if.else737_crit_edge:            ; preds = %land.lhs.true338
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else737

land.lhs.true342:                                 ; preds = %land.lhs.true338
  %is_target344 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %111, i32 0, i32 5
  %120 = ptrtoint ptr %is_target344 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %is_target344, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool346.not = icmp eq i8 %121, 0
  br i1 %tobool346.not, label %lor.lhs.false347, label %land.lhs.true342.if.then355_crit_edge

land.lhs.true342.if.then355_crit_edge:            ; preds = %land.lhs.true342
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then355

lor.lhs.false347:                                 ; preds = %land.lhs.true342
  %r_dentry348 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %122 = ptrtoint ptr %r_dentry348 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %r_dentry348, align 4
  %d_name = getelementptr inbounds %struct.dentry, ptr %123, i32 0, i32 4
  %name349 = getelementptr inbounds %struct.dentry, ptr %123, i32 0, i32 4, i32 1
  %124 = ptrtoint ptr %name349 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name349, align 8
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 2
  %126 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mount_options, align 4
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %127, i32 0, i32 11
  %128 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %snapdir_name, align 4
  %130 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %d_name, align 8
  %call353 = call i32 @strncmp(ptr noundef %125, ptr noundef %129, i32 noundef %131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %lor.lhs.false347.if.else737_crit_edge, label %lor.lhs.false347.if.then355_crit_edge

lor.lhs.false347.if.then355_crit_edge:            ; preds = %lor.lhs.false347
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then355

lor.lhs.false347.if.else737_crit_edge:            ; preds = %lor.lhs.false347
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else737

if.then355:                                       ; preds = %lor.lhs.false347.if.then355_crit_edge, %land.lhs.true342.if.then355_crit_edge
  %r_parent357 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 13
  %132 = ptrtoint ptr %r_parent357 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %r_parent357, align 8
  %r_dentry359 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %134 = ptrtoint ptr %r_dentry359 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %r_dentry359, align 4
  %tobool361.not = icmp eq ptr %135, null
  br i1 %tobool361.not, label %do.body371, label %do.body380, !prof !476

do.body371:                                       ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1395, 0\0A.popsection", ""() #14, !srcloc !505
  unreachable

do.body380:                                       ; preds = %if.then355
  %tobool381.not = icmp eq ptr %133, null
  br i1 %tobool381.not, label %do.body391, label %do.body400, !prof !476

do.body391:                                       ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1396, 0\0A.popsection", ""() #14, !srcloc !506
  unreachable

do.body400:                                       ; preds = %do.body380
  %d_parent = getelementptr inbounds %struct.dentry, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %d_parent, align 8
  %d_inode.i1151 = getelementptr inbounds %struct.dentry, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %d_inode.i1151 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %d_inode.i1151, align 8
  %cmp402.not = icmp eq ptr %139, %133
  br i1 %cmp402.not, label %do.end419, label %do.body411, !prof !474

do.body411:                                       ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1397, 0\0A.popsection", ""() #14, !srcloc !507
  unreachable

do.end419:                                        ; preds = %do.body400
  %diri420 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 1
  %140 = ptrtoint ptr %diri420 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %diri420, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 8)
  %143 = load i64, ptr %141, align 1
  %144 = call i64 @llvm.bswap.i64(i64 %143)
  %add.ptr.i.i1152 = getelementptr i8, ptr %133, i32 -952
  %145 = ptrtoint ptr %add.ptr.i.i1152 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %add.ptr.i.i1152, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %144)
  %cmp431.not = icmp eq i64 %146, %144
  br i1 %cmp431.not, label %do.body449, label %do.body440, !prof !474

do.body440:                                       ; preds = %do.end419
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1402, 0\0A.popsection", ""() #14, !srcloc !508
  unreachable

do.body449:                                       ; preds = %do.end419
  %snapid426 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %141, i32 0, i32 1
  %147 = ptrtoint ptr %snapid426 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %snapid426, align 1
  %149 = call i64 @llvm.bswap.i64(i64 %148)
  %snap.i1153 = getelementptr i8, ptr %133, i32 -944
  %150 = ptrtoint ptr %snap.i1153 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %snap.i1153, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %151, i64 %149)
  %cmp452.not = icmp eq i64 %151, %149
  br i1 %cmp452.not, label %do.end469, label %do.body461, !prof !474

do.body461:                                       ; preds = %do.body449
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1403, 0\0A.popsection", ""() #14, !srcloc !509
  unreachable

do.end469:                                        ; preds = %do.body449
  %cap = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %141, i32 0, i32 5
  %152 = ptrtoint ptr %cap to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %cap, align 1
  %154 = and i32 %153, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool473.not = icmp eq i32 %154, 0
  br i1 %tobool473.not, label %lor.end, label %do.end469.if.end498_crit_edge

do.end469.if.end498_crit_edge:                    ; preds = %do.end469
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end498

lor.end:                                          ; preds = %do.end469
  %dlease = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 6
  %155 = ptrtoint ptr %dlease to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dlease, align 4
  %duration_ms = getelementptr inbounds %struct.ceph_mds_reply_lease, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %duration_ms to i32
  call void @__asan_loadN_noabort(i32 %157, i32 4)
  %158 = load i32, ptr %duration_ms, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool477.not = icmp eq i32 %158, 0
  br i1 %tobool477.not, label %do.body481, label %lor.end.if.end498_crit_edge

lor.end.if.end498_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end498

do.body481:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then493)) #14
          to label %if.end498 [label %if.then493], !srcloc !475

if.then493:                                       ; preds = %do.body481
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.92, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1414) #14
  br label %if.end498

if.end498:                                        ; preds = %if.then493, %do.body481, %lor.end.if.end498_crit_edge, %do.end469.if.end498_crit_edge
  %159 = phi i1 [ false, %if.then493 ], [ true, %lor.end.if.end498_crit_edge ], [ false, %do.body481 ], [ true, %do.end469.if.end498_crit_edge ]
  %r_old_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 7
  %160 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %r_old_dentry, align 8
  %tobool499.not = icmp eq ptr %161, null
  br i1 %tobool499.not, label %if.end498.if.end606_crit_edge, label %land.lhs.true500

if.end498.if.end606_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end606

land.lhs.true500:                                 ; preds = %if.end498
  %r_op501 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 4
  %162 = ptrtoint ptr %r_op501 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %r_op501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4612, i32 %163)
  %cmp502 = icmp eq i32 %163, 4612
  br i1 %cmp502, label %if.then504, label %land.lhs.true500.if.end606_crit_edge

land.lhs.true500.if.end606_crit_edge:             ; preds = %land.lhs.true500
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end606

if.then504:                                       ; preds = %land.lhs.true500
  %r_old_dentry_dir = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 8
  %164 = ptrtoint ptr %r_old_dentry_dir to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %r_old_dentry_dir, align 4
  %tobool506.not = icmp eq ptr %165, null
  br i1 %tobool506.not, label %do.body516, label %do.body525, !prof !476

do.body516:                                       ; preds = %if.then504
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1419, 0\0A.popsection", ""() #14, !srcloc !510
  unreachable

do.body525:                                       ; preds = %if.then504
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then537)) #14
          to label %do.body544 [label %if.then537], !srcloc !475

if.then537:                                       ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #16
  %166 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %r_old_dentry, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.94, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1424, ptr noundef %167, ptr noundef %167, ptr noundef nonnull %135, ptr noundef nonnull %135) #14
  br label %do.body544

do.body544:                                       ; preds = %if.then537, %do.body525
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then556)) #14
          to label %do.end561 [label %if.then556], !srcloc !475

if.then556:                                       ; preds = %do.body544
  call void @__sanitizer_cov_trace_pc() #16
  %168 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %r_old_dentry, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.96, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1426, ptr noundef %169, ptr noundef nonnull %135) #14
  br label %do.end561

do.end561:                                        ; preds = %if.then556, %do.body544
  %i_ordered_count.i.i1154 = getelementptr i8, ptr %133, i32 -856
  %call.i.i.i.i1155 = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i.i1154, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i.i1154) #14
  %i_ordered_count.i.i1156 = getelementptr i8, ptr %165, i32 -856
  %call.i.i.i.i1157 = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i.i1156, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i.i1156) #14
  %170 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %r_old_dentry, align 8
  call void @d_move(ptr noundef %171, ptr noundef nonnull %135) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then575)) #14
          to label %do.end581 [label %if.then575], !srcloc !475

if.then575:                                       ; preds = %do.end561
  call void @__sanitizer_cov_trace_pc() #16
  %172 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %r_old_dentry, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.94, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1436, ptr noundef %173, ptr noundef %173, ptr noundef nonnull %135, ptr noundef nonnull %135) #14
  br label %do.end581

do.end581:                                        ; preds = %if.then575, %do.end561
  call void @ceph_invalidate_dentry_lease(ptr noundef nonnull %135) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then594)) #14
          to label %do.end601 [label %if.then594], !srcloc !475

if.then594:                                       ; preds = %do.end581
  call void @__sanitizer_cov_trace_pc() #16
  %174 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %r_old_dentry, align 8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %175, i32 0, i32 11
  %176 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %d_fsdata.i, align 4
  %offset = getelementptr inbounds %struct.ceph_dentry_info, ptr %177, i32 0, i32 10
  %178 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %offset, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.98, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1443, ptr noundef %175, i64 noundef %179) #14
  br label %do.end601

do.end601:                                        ; preds = %if.then594, %do.end581
  %180 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %r_old_dentry, align 8
  %182 = ptrtoint ptr %r_dentry359 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %r_dentry359, align 4
  store ptr %135, ptr %r_old_dentry, align 8
  br label %if.end606

if.end606:                                        ; preds = %do.end601, %land.lhs.true500.if.end606_crit_edge, %if.end498.if.end606_crit_edge
  %dn358.0 = phi ptr [ %181, %do.end601 ], [ %135, %land.lhs.true500.if.end606_crit_edge ], [ %135, %if.end498.if.end606_crit_edge ]
  %183 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %r_reply_info, align 8
  %is_target608 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %is_target608 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %is_target608, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool609.not = icmp eq i8 %186, 0
  br i1 %tobool609.not, label %do.body611, label %if.end657

do.body611:                                       ; preds = %if.end606
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then623)) #14
          to label %do.end627 [label %if.then623], !srcloc !475

if.then623:                                       ; preds = %do.body611
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.100, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1455) #14
  br label %do.end627

do.end627:                                        ; preds = %if.then623, %do.body611
  %d_inode.i1158 = getelementptr inbounds %struct.dentry, ptr %dn358.0, i32 0, i32 5
  %187 = ptrtoint ptr %d_inode.i1158 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %d_inode.i1158, align 8
  %cmp.i1159.not = icmp eq ptr %188, null
  br i1 %cmp.i1159.not, label %if.else647, label %do.body630

do.body630:                                       ; preds = %do.end627
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then642)) #14
          to label %do.end646 [label %if.then642], !srcloc !475

if.then642:                                       ; preds = %do.body630
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.102, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1457, ptr noundef %dn358.0) #14
  br label %do.end646

do.end646:                                        ; preds = %if.then642, %do.body630
  call fastcc void @ceph_dir_clear_ordered(ptr noundef nonnull %133)
  call void @d_delete(ptr noundef %dn358.0) #14
  br label %do.body882

if.else647:                                       ; preds = %do.end627
  br i1 %159, label %if.then649, label %if.else647.do.body882_crit_edge

if.else647.do.body882_crit_edge:                  ; preds = %if.else647
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body882

if.then649:                                       ; preds = %if.else647
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dn358.0, i32 0, i32 2, i32 1
  %189 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %190, null
  br i1 %tobool.not.i.i.not, label %if.then652, label %if.then649.if.end653_crit_edge

if.then649.if.end653_crit_edge:                   ; preds = %if.then649
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end653

if.then652:                                       ; preds = %if.then649
  call void @__sanitizer_cov_trace_pc() #16
  call void @d_add(ptr noundef %dn358.0, ptr noundef null) #14
  br label %if.end653

if.end653:                                        ; preds = %if.then652, %if.then649.if.end653_crit_edge
  %dlease654 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 6
  %191 = ptrtoint ptr %dlease654 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dlease654, align 4
  %r_request_started = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 46
  %193 = ptrtoint ptr %r_request_started to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %r_request_started, align 4
  call fastcc void @update_dentry_lease(ptr noundef nonnull %133, ptr noundef %dn358.0, ptr noundef %192, ptr noundef %1, i32 noundef %194)
  br label %do.body882

if.end657:                                        ; preds = %if.end606
  %d_inode.i1160 = getelementptr inbounds %struct.dentry, ptr %dn358.0, i32 0, i32 5
  %195 = ptrtoint ptr %d_inode.i1160 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %d_inode.i1160, align 8
  %cmp.i1161 = icmp eq ptr %196, null
  br i1 %cmp.i1161, label %if.then659, label %land.lhs.true670

if.then659:                                       ; preds = %if.end657
  %i_ordered_count.i.i1162 = getelementptr i8, ptr %133, i32 -856
  %call.i.i.i.i1163 = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i.i1162, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i.i1162) #14
  call void @ihold(ptr noundef %in.0) #14
  %call661 = call fastcc i32 @splice_dentry(ptr noundef %r_dentry359, ptr noundef %in.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call661)
  %cmp662 = icmp slt i32 %call661, 0
  br i1 %cmp662, label %if.then659.do.body882_crit_edge, label %if.end665

if.then659.do.body882_crit_edge:                  ; preds = %if.then659
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body882

if.end665:                                        ; preds = %if.then659
  %197 = ptrtoint ptr %r_dentry359 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %r_dentry359, align 4
  br i1 %159, label %if.end665.if.then710_crit_edge, label %if.end665.do.body714_crit_edge

if.end665.do.body714_crit_edge:                   ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body714

if.end665.if.then710_crit_edge:                   ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then710

land.lhs.true670:                                 ; preds = %if.end657
  %cmp672.not = icmp eq ptr %196, %in.0
  br i1 %cmp672.not, label %if.end708, label %do.body675

do.body675:                                       ; preds = %land.lhs.true670
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then687)) #14
          to label %if.end708.thread [label %if.then687], !srcloc !475

if.then687:                                       ; preds = %do.body675
  call void @__sanitizer_cov_trace_pc() #16
  %199 = ptrtoint ptr %d_inode.i1160 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %d_inode.i1160, align 8
  %add.ptr.i1169 = getelementptr i8, ptr %200, i32 -952
  %201 = ptrtoint ptr %add.ptr.i1169 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %add.ptr.i1169, align 8
  %snap697 = getelementptr i8, ptr %200, i32 -944
  %203 = ptrtoint ptr %snap697 to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %snap697, align 8
  %add.ptr.i1172 = getelementptr i8, ptr %in.0, i32 -952
  %205 = ptrtoint ptr %add.ptr.i1172 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %add.ptr.i1172, align 8
  %snap703 = getelementptr i8, ptr %in.0, i32 -944
  %207 = ptrtoint ptr %snap703 to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %snap703, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.104, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1481, ptr noundef %dn358.0, ptr noundef %200, i64 noundef %202, i64 noundef %204, i64 noundef %206, i64 noundef %208) #14
  br label %if.end708.thread

if.end708.thread:                                 ; preds = %if.then687, %do.body675
  call void @d_invalidate(ptr noundef %dn358.0) #14
  br label %do.body714

if.end708:                                        ; preds = %land.lhs.true670
  br i1 %159, label %if.end708.if.then710_crit_edge, label %if.end708.do.body714_crit_edge

if.end708.do.body714_crit_edge:                   ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body714

if.end708.if.then710_crit_edge:                   ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then710

if.then710:                                       ; preds = %if.end708.if.then710_crit_edge, %if.end665.if.then710_crit_edge
  %err.71204 = phi i32 [ %call661, %if.end665.if.then710_crit_edge ], [ %err.6, %if.end708.if.then710_crit_edge ]
  %dn358.11203 = phi ptr [ %198, %if.end665.if.then710_crit_edge ], [ %dn358.0, %if.end708.if.then710_crit_edge ]
  %dlease711 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 6
  %209 = ptrtoint ptr %dlease711 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dlease711, align 4
  %r_request_started712 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 46
  %211 = ptrtoint ptr %r_request_started712 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %r_request_started712, align 4
  call fastcc void @update_dentry_lease(ptr noundef nonnull %133, ptr noundef %dn358.11203, ptr noundef %210, ptr noundef %1, i32 noundef %212)
  br label %do.body714

do.body714:                                       ; preds = %if.then710, %if.end708.do.body714_crit_edge, %if.end708.thread, %if.end665.do.body714_crit_edge
  %err.71202 = phi i32 [ %err.6, %if.end708.thread ], [ %err.6, %if.end708.do.body714_crit_edge ], [ %err.71204, %if.then710 ], [ %call661, %if.end665.do.body714_crit_edge ]
  %dn358.11201 = phi ptr [ %dn358.0, %if.end708.thread ], [ %dn358.0, %if.end708.do.body714_crit_edge ], [ %dn358.11203, %if.then710 ], [ %198, %if.end665.do.body714_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then726)) #14
          to label %do.body882 [label %if.then726], !srcloc !475

if.then726:                                       ; preds = %do.body714
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.106, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1491, ptr noundef %dn358.11201) #14
  br label %do.body882

if.else737:                                       ; preds = %lor.lhs.false347.if.else737_crit_edge, %land.lhs.true338.if.else737_crit_edge, %land.lhs.true334.if.else737_crit_edge, %if.end329.if.else737_crit_edge
  %r_op738 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 4
  %213 = ptrtoint ptr %r_op738 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %r_op738, align 4
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %214, label %if.else737.if.else844_crit_edge [
    i32 1024, label %if.else737.land.lhs.true745_crit_edge
    i32 5120, label %if.else737.land.lhs.true745_crit_edge1216
  ]

if.else737.land.lhs.true745_crit_edge1216:        ; preds = %if.else737
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true745

if.else737.land.lhs.true745_crit_edge:            ; preds = %if.else737
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true745

if.else737.if.else844_crit_edge:                  ; preds = %if.else737
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else844

land.lhs.true745:                                 ; preds = %if.else737.land.lhs.true745_crit_edge, %if.else737.land.lhs.true745_crit_edge1216
  %r_req_flags746 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 15
  %216 = ptrtoint ptr %r_req_flags746 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %r_req_flags746, align 4
  %218 = and i32 %217, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool748.not = icmp eq i32 %218, 0
  br i1 %tobool748.not, label %land.lhs.true745.if.else844_crit_edge, label %land.lhs.true749

land.lhs.true745.if.else844_crit_edge:            ; preds = %land.lhs.true745
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else844

land.lhs.true749:                                 ; preds = %land.lhs.true745
  %219 = ptrtoint ptr %r_req_flags746 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %r_req_flags746, align 4
  %221 = and i32 %220, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool752.not = icmp eq i32 %221, 0
  br i1 %tobool752.not, label %if.then753, label %land.lhs.true749.if.else844_crit_edge

land.lhs.true749.if.else844_crit_edge:            ; preds = %land.lhs.true749
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else844

if.then753:                                       ; preds = %land.lhs.true749
  %r_parent755 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 13
  %222 = ptrtoint ptr %r_parent755 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %r_parent755, align 8
  %tobool757.not = icmp eq ptr %223, null
  br i1 %tobool757.not, label %do.body767, label %do.body776, !prof !476

do.body767:                                       ; preds = %if.then753
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1499, 0\0A.popsection", ""() #14, !srcloc !511
  unreachable

do.body776:                                       ; preds = %if.then753
  %snap.i1174 = getelementptr i8, ptr %223, i32 -944
  %224 = ptrtoint ptr %snap.i1174 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %snap.i1174, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %225)
  %cmp778.not = icmp eq i64 %225, -1
  br i1 %cmp778.not, label %do.body796, label %do.body787, !prof !474

do.body787:                                       ; preds = %do.body776
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1500, 0\0A.popsection", ""() #14, !srcloc !512
  unreachable

do.body796:                                       ; preds = %do.body776
  %r_dentry797 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %226 = ptrtoint ptr %r_dentry797 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %r_dentry797, align 4
  %tobool798.not = icmp eq ptr %227, null
  br i1 %tobool798.not, label %do.body808, label %do.body817, !prof !476

do.body808:                                       ; preds = %do.body796
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1501, 0\0A.popsection", ""() #14, !srcloc !513
  unreachable

do.body817:                                       ; preds = %do.body796
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then829)) #14
          to label %do.end834 [label %if.then829], !srcloc !475

if.then829:                                       ; preds = %do.body817
  call void @__sanitizer_cov_trace_pc() #16
  %228 = ptrtoint ptr %r_dentry797 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %r_dentry797, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.108, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1502, ptr noundef %in.0, ptr noundef %229) #14
  br label %do.end834

do.end834:                                        ; preds = %if.then829, %do.body817
  %i_ordered_count.i.i1175 = getelementptr i8, ptr %223, i32 -856
  %call.i.i.i.i1176 = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i.i1175, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i.i1175) #14
  call void @ihold(ptr noundef %in.0) #14
  %call836 = call fastcc i32 @splice_dentry(ptr noundef %r_dentry797, ptr noundef %in.0)
  br label %do.body882

if.else844:                                       ; preds = %land.lhs.true749.if.else844_crit_edge, %land.lhs.true745.if.else844_crit_edge, %if.else737.if.else844_crit_edge
  br i1 %tobool333.not, label %if.else844.do.body882_crit_edge, label %land.lhs.true849

if.else844.do.body882_crit_edge:                  ; preds = %if.else844
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body882

land.lhs.true849:                                 ; preds = %if.else844
  %r_dentry850 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %230 = ptrtoint ptr %r_dentry850 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %r_dentry850, align 4
  %tobool851.not = icmp eq ptr %231, null
  br i1 %tobool851.not, label %land.lhs.true849.do.body882_crit_edge, label %if.then852

land.lhs.true849.do.body882_crit_edge:            ; preds = %land.lhs.true849
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body882

if.then852:                                       ; preds = %land.lhs.true849
  %diri853 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 1
  %232 = ptrtoint ptr %diri853 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %diri853, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_loadN_noabort(i32 %234, i32 8)
  %235 = load i64, ptr %233, align 1
  %236 = call i64 @llvm.bswap.i64(i64 %235)
  %snapid859 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %233, i32 0, i32 1
  %237 = ptrtoint ptr %snapid859 to i32
  call void @__asan_loadN_noabort(i32 %237, i32 8)
  %238 = load i64, ptr %snapid859, align 1
  %239 = call i64 @llvm.bswap.i64(i64 %238)
  %is_target862 = getelementptr inbounds %struct.ceph_mds_reply_head, ptr %111, i32 0, i32 5
  %240 = ptrtoint ptr %is_target862 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %is_target862, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool863.not = icmp eq i8 %241, 0
  br i1 %tobool863.not, label %if.then852.if.end873_crit_edge, label %if.then864

if.then852.if.end873_crit_edge:                   ; preds = %if.then852
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end873

if.then864:                                       ; preds = %if.then852
  call void @__sanitizer_cov_trace_pc() #16
  %targeti865 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 2
  %242 = ptrtoint ptr %targeti865 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %targeti865, align 8
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_loadN_noabort(i32 %244, i32 8)
  %245 = load i64, ptr %243, align 1
  %246 = call i64 @llvm.bswap.i64(i64 %245)
  %247 = ptrtoint ptr %tvino to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %246, ptr %tvino, align 8
  %snapid871 = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %243, i32 0, i32 1
  %248 = ptrtoint ptr %snapid871 to i32
  call void @__asan_loadN_noabort(i32 %248, i32 8)
  %249 = load i64, ptr %snapid871, align 1
  %250 = call i64 @llvm.bswap.i64(i64 %249)
  %251 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %251)
  store i64 %250, ptr %2, align 8
  br label %if.end873

if.end873:                                        ; preds = %if.then864, %if.then852.if.end873_crit_edge
  %ptvino.0 = phi ptr [ %tvino, %if.then864 ], [ null, %if.then852.if.end873_crit_edge ]
  %dlease875 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 6
  %252 = ptrtoint ptr %dlease875 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dlease875, align 4
  %r_request_started876 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 46
  %254 = ptrtoint ptr %r_request_started876 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %r_request_started876, align 4
  %dname877 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 4
  %256 = ptrtoint ptr %dname877 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dname877, align 4
  %dname_len878 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 5
  %258 = ptrtoint ptr %dname_len878 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %dname_len878, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_lease_session.i) #14
  %260 = ptrtoint ptr %old_lease_session.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %old_lease_session.i, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %231, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #14
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %231, i32 0, i32 4
  %261 = ptrtoint ptr %d_name.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %d_name.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %259)
  %cmp.not.i = icmp eq i32 %262, %259
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end873.update_dentry_lease_careful.exit_crit_edge

if.end873.update_dentry_lease_careful.exit_crit_edge: ; preds = %if.end873
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

lor.lhs.false.i:                                  ; preds = %if.end873
  %name.i = getelementptr inbounds %struct.dentry, ptr %231, i32 0, i32 4, i32 1
  %263 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %name.i, align 8
  %bcmp.i = call i32 @bcmp(ptr %264, ptr %257, i32 %259) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.update_dentry_lease_careful.exit_crit_edge

lor.lhs.false.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %d_parent.i = getelementptr inbounds %struct.dentry, ptr %231, i32 0, i32 3
  %265 = ptrtoint ptr %d_parent.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %d_parent.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %266, i32 0, i32 5
  %267 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %d_inode.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %268, i32 -952
  %269 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %270, i64 %236)
  %cmp.i.i = icmp eq i64 %270, %236
  br i1 %cmp.i.i, label %ceph_ino_compare.exit.i, label %if.end.i.update_dentry_lease_careful.exit_crit_edge

if.end.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

ceph_ino_compare.exit.i:                          ; preds = %if.end.i
  %snap.i.i = getelementptr i8, ptr %268, i32 -944
  %271 = ptrtoint ptr %snap.i.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %snap.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %272, i64 %239)
  %cmp4.i.not.i = icmp eq i64 %272, %239
  br i1 %cmp4.i.not.i, label %if.end6.i, label %ceph_ino_compare.exit.i.update_dentry_lease_careful.exit_crit_edge

ceph_ino_compare.exit.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %ceph_ino_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

if.end6.i:                                        ; preds = %ceph_ino_compare.exit.i
  %tobool7.not.i = icmp eq ptr %ptvino.0, null
  %d_inode.i45.i = getelementptr inbounds %struct.dentry, ptr %231, i32 0, i32 5
  %273 = ptrtoint ptr %d_inode.i45.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %d_inode.i45.i, align 8
  %cmp.i46.not.i = icmp eq ptr %274, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  br i1 %cmp.i46.not.i, label %if.then8.i.update_dentry_lease_careful.exit_crit_edge, label %if.end11.i

if.then8.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

if.end11.i:                                       ; preds = %if.then8.i
  %add.ptr.i.i37.i = getelementptr i8, ptr %274, i32 -952
  %275 = ptrtoint ptr %add.ptr.i.i37.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %add.ptr.i.i37.i, align 8
  %277 = ptrtoint ptr %ptvino.0 to i32
  call void @__asan_load8_noabort(i32 %277)
  %278 = load i64, ptr %ptvino.0, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %276, i64 %278)
  %cmp.i38.i = icmp eq i64 %276, %278
  br i1 %cmp.i38.i, label %ceph_ino_compare.exit44.i, label %if.end11.i.update_dentry_lease_careful.exit_crit_edge

if.end11.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

ceph_ino_compare.exit44.i:                        ; preds = %if.end11.i
  %snap.i39.i = getelementptr i8, ptr %274, i32 -944
  %279 = ptrtoint ptr %snap.i39.i to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %snap.i39.i, align 8
  %snap3.i40.i = getelementptr inbounds %struct.ceph_vino, ptr %ptvino.0, i32 0, i32 1
  %281 = ptrtoint ptr %snap3.i40.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %snap3.i40.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %280, i64 %282)
  %cmp4.i41.not.i = icmp eq i64 %280, %282
  br i1 %cmp4.i41.not.i, label %ceph_ino_compare.exit44.i.if.end20.i_crit_edge, label %ceph_ino_compare.exit44.i.update_dentry_lease_careful.exit_crit_edge

ceph_ino_compare.exit44.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %ceph_ino_compare.exit44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

ceph_ino_compare.exit44.i.if.end20.i_crit_edge:   ; preds = %ceph_ino_compare.exit44.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end6.i
  br i1 %cmp.i46.not.i, label %if.else.i.if.end20.i_crit_edge, label %if.else.i.update_dentry_lease_careful.exit_crit_edge

if.else.i.update_dentry_lease_careful.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %update_dentry_lease_careful.exit

if.else.i.if.end20.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i.if.end20.i_crit_edge, %ceph_ino_compare.exit44.i.if.end20.i_crit_edge
  call fastcc void @__update_dentry_lease(ptr noundef %268, ptr noundef nonnull %231, ptr noundef %253, ptr noundef %1, i32 noundef %255, ptr noundef nonnull %old_lease_session.i) #14
  br label %update_dentry_lease_careful.exit

update_dentry_lease_careful.exit:                 ; preds = %if.end20.i, %if.else.i.update_dentry_lease_careful.exit_crit_edge, %ceph_ino_compare.exit44.i.update_dentry_lease_careful.exit_crit_edge, %if.end11.i.update_dentry_lease_careful.exit_crit_edge, %if.then8.i.update_dentry_lease_careful.exit_crit_edge, %ceph_ino_compare.exit.i.update_dentry_lease_careful.exit_crit_edge, %if.end.i.update_dentry_lease_careful.exit_crit_edge, %lor.lhs.false.i.update_dentry_lease_careful.exit_crit_edge, %if.end873.update_dentry_lease_careful.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #14
  %283 = ptrtoint ptr %old_lease_session.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %old_lease_session.i, align 4
  call void @ceph_put_mds_session(ptr noundef %284) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_lease_session.i) #14
  br label %do.body882

do.body882:                                       ; preds = %update_dentry_lease_careful.exit, %land.lhs.true849.do.body882_crit_edge, %if.else844.do.body882_crit_edge, %do.end834, %if.then726, %do.body714, %if.then659.do.body882_crit_edge, %if.end653, %if.else647.do.body882_crit_edge, %do.end646, %if.else321, %if.then320, %cleanup, %if.then44.do.body882_crit_edge
  %err.9 = phi i32 [ %call304, %if.then320 ], [ %call304, %if.else321 ], [ %err.6, %update_dentry_lease_careful.exit ], [ %err.6, %land.lhs.true849.do.body882_crit_edge ], [ %err.6, %if.else844.do.body882_crit_edge ], [ %call836, %do.end834 ], [ -12, %cleanup ], [ %call45, %if.then44.do.body882_crit_edge ], [ %err.71202, %do.body714 ], [ %err.71202, %if.then726 ], [ %call661, %if.then659.do.body882_crit_edge ], [ %err.6, %do.end646 ], [ %err.6, %if.end653 ], [ %err.6, %if.else647.do.body882_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fill_trace.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fill_trace, %if.then894)) #14
          to label %cleanup899 [label %if.then894], !srcloc !475

if.then894:                                       ; preds = %do.body882
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fill_trace.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.110, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1524, i32 noundef %err.9) #14
  br label %cleanup899

cleanup899:                                       ; preds = %if.then894, %do.body882, %if.then35, %land.lhs.true33.cleanup899_crit_edge, %do.end30.cleanup899_crit_edge
  %retval.0 = phi i32 [ 0, %if.then35 ], [ 0, %land.lhs.true33.cleanup899_crit_edge ], [ 0, %do.end30.cleanup899_crit_edge ], [ %err.9, %if.then894 ], [ %err.9, %do.body882 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tvino) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_invalidate_dir_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_dir_clear_ordered(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %i_ordered_count.i = getelementptr i8, ptr %inode, i32 -856
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_invalidate_dentry_lease(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_dentry_lease(ptr noundef %dir, ptr noundef %dentry, ptr nocapture noundef readonly %lease, ptr noundef %session, i32 noundef %from_time) unnamed_addr #5 align 64 {
entry:
  %old_lease_session = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_lease_session) #14
  %0 = ptrtoint ptr %old_lease_session to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %old_lease_session, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  call fastcc void @__update_dentry_lease(ptr noundef %dir, ptr noundef %dentry, ptr noundef %lease, ptr noundef %session, i32 noundef %from_time, ptr noundef nonnull %old_lease_session)
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  %1 = ptrtoint ptr %old_lease_session to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %old_lease_session, align 4
  tail call void @ceph_put_mds_session(ptr noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_lease_session) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @splice_dentry(ptr nocapture noundef %pdn, ptr noundef %in) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdn, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !474

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1211, 0\0A.popsection", ""() #14, !srcloc !514
  unreachable

do.end8:                                          ; preds = %entry
  %4 = ptrtoint ptr %in to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %in, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  br i1 %cmp, label %if.then10, label %do.end8.if.end18_crit_edge

do.end8.if.end18_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then10:                                        ; preds = %do.end8
  %call11 = tail call ptr @d_find_any_alias(ptr noundef %in) #14
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then10.if.end18_crit_edge, label %if.then13

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 11
  %7 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_fsdata.i, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %d_op = getelementptr inbounds %struct.dentry, ptr %call11, i32 0, i32 8
  %9 = ptrtoint ptr %d_op to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_op, align 8
  %d_prune = getelementptr inbounds %struct.dentry_operations, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %d_prune to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_prune, align 4
  tail call void %12(ptr noundef nonnull %call11) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.ceph_dentry_info, ptr %8, i32 0, i32 9
  %14 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %time, align 8
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %lease_shared_gen, align 4
  %offset = getelementptr inbounds %struct.ceph_dentry_info, ptr %8, i32 0, i32 10
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %offset, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #14
  tail call void @dput(ptr noundef nonnull %call11) #14
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then10.if.end18_crit_edge, %do.end8.if.end18_crit_edge
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @d_drop(ptr noundef %1) #14
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge
  %call23 = tail call ptr @d_splice_alias(ptr noundef %in, ptr noundef %1) #14
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end28, label %if.end35

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %call23 to i32
  %add.ptr.i = getelementptr i8, ptr %in, i32 -952
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %in, i32 -944
  %22 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %snap, align 8
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, i32 noundef %19, ptr noundef %1, ptr noundef %in, i64 noundef %21, i64 noundef %23) #17
  br label %cleanup

if.end35:                                         ; preds = %if.end22
  %tobool36.not = icmp eq ptr %call23, null
  br i1 %tobool36.not, label %do.body64, label %do.body38

do.body38:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @splice_dentry.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@splice_dentry, %if.then48)) #14
          to label %do.end63 [label %if.then48], !srcloc !475

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #16
  %count.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  %count.i153 = getelementptr inbounds %struct.dentry, ptr %call23, i32 0, i32 7, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %count.i153 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count.i153, align 4
  %d_inode.i154 = getelementptr inbounds %struct.dentry, ptr %call23, i32 0, i32 5
  %28 = ptrtoint ptr %d_inode.i154 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %d_inode.i154, align 8
  %add.ptr.i156 = getelementptr i8, ptr %29, i32 -952
  %30 = ptrtoint ptr %add.ptr.i156 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i156, align 8
  %snap60 = getelementptr i8, ptr %29, i32 -944
  %32 = ptrtoint ptr %snap60 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %snap60, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @splice_dentry.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.204, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1249, ptr noundef %1, i32 noundef %25, ptr noundef nonnull %call23, i32 noundef %27, ptr noundef %29, i64 noundef %31, i64 noundef %33) #14
  br label %do.end63

do.end63:                                         ; preds = %if.then48, %do.body38
  tail call void @dput(ptr noundef %1) #14
  %34 = ptrtoint ptr %pdn to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call23, ptr %pdn, align 4
  br label %cleanup

do.body64:                                        ; preds = %if.end35
  %d_fsdata.i159 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %d_fsdata.i159 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d_fsdata.i159, align 4
  %tobool66.not = icmp eq ptr %36, null
  br i1 %tobool66.not, label %do.body76, label %do.body85, !prof !476

do.body76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1253, 0\0A.popsection", ""() #14, !srcloc !515
  unreachable

do.body85:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @splice_dentry.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@splice_dentry, %if.then97)) #14
          to label %cleanup [label %if.then97], !srcloc !475

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i162 = getelementptr i8, ptr %38, i32 -952
  %39 = ptrtoint ptr %add.ptr.i162 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.i162, align 8
  %snap107 = getelementptr i8, ptr %38, i32 -944
  %41 = ptrtoint ptr %snap107 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %snap107, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @splice_dentry.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.206, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1255, ptr noundef %1, ptr noundef %38, i64 noundef %40, i64 noundef %42) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %do.body85, %do.end63, %do.end28
  %retval.0 = phi i32 [ %19, %do.end28 ], [ 0, %if.then97 ], [ 0, %do.end63 ], [ 0, %do.body85 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_readdir_cache_release(ptr nocapture noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.207, i32 noundef 55) #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %shr.i.i, label %if.then.kunmap.exit_crit_edge [
    i32 2, label %if.then.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.kunmap.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %1) #14
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then.kunmap.exit_crit_edge
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl, align 4
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !474

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !476

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.208) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !516
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !517
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !518
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !519
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ceph_readdir_cache_release, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !475

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %12) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %16 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ctl, align 4
  br label %if.end

if.end:                                           ; preds = %put_page.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_readdir_prepopulate(ptr noundef %req, ptr noundef %session) local_unnamed_addr #0 align 64 {
entry:
  %old_lease_session.i = alloca ptr, align 4
  %dname = alloca %struct.qstr, align 8
  %dn = alloca ptr, align 4
  %cache_ctl = alloca %struct.ceph_readdir_cache_control, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %0 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %r_reply_info = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dname) #14
  %4 = call ptr @memset(ptr %dname, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dn) #14
  %5 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %dn, align 4, !annotation !497
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 17
  %6 = ptrtoint ptr %r_args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_args, align 8
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cache_ctl) #14
  %9 = call ptr @memset(ptr %cache_ctl, i32 0, i32 12)
  %r_req_flags = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 15
  %10 = ptrtoint ptr %r_req_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %r_req_flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call fastcc i32 @readdir_prepopulate_inodes_only(ptr noundef %req, ptr noundef %session)
  br label %cleanup427

if.end:                                           ; preds = %entry
  %13 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7
  %hash_order = getelementptr inbounds %struct.anon.146, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %hash_order to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hash_order, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end.if.end59_crit_edge, label %if.then6

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then6:                                         ; preds = %if.end
  %r_path2 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 10
  %16 = ptrtoint ptr %r_path2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r_path2, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %i_dir_layout = getelementptr i8, ptr %3, i32 -832
  %18 = ptrtoint ptr %i_dir_layout to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i_dir_layout, align 8
  %conv = zext i8 %19 to i32
  %call11 = tail call i32 @strlen(ptr noundef nonnull %17) #20
  %call12 = tail call i32 @ceph_str_hash(i32 noundef %conv, ptr noundef nonnull %17, i32 noundef %call11) #14
  %and.i = and i32 %call12, 16777215
  br label %if.end59

if.else:                                          ; preds = %if.then6
  %offset_hash = getelementptr inbounds %struct.anon.146, ptr %13, i32 0, i32 6
  %20 = ptrtoint ptr %offset_hash to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %offset_hash, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %if.else.if.end59_crit_edge, label %if.then15

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then15:                                        ; preds = %if.else
  %r_readdir_offset = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 41
  %22 = ptrtoint ptr %r_readdir_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %r_readdir_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not = icmp eq i32 %23, 2
  br i1 %cmp.not, label %if.then15.if.end47_crit_edge, label %land.rhs

if.then15.if.end47_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

land.rhs:                                         ; preds = %if.then15
  %.b545 = load i1, ptr @ceph_readdir_prepopulate.__already_done, align 1
  br i1 %.b545, label %land.rhs.if.end47_crit_edge, label %if.then25, !prof !474

land.rhs.if.end47_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.then25:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ceph_readdir_prepopulate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1646, i32 noundef 9, ptr noundef null) #14
  br label %if.end47

if.end47:                                         ; preds = %if.then25, %land.rhs.if.end47_crit_edge, %if.then15.if.end47_crit_edge
  %offset_hash56 = getelementptr inbounds %struct.anon.137, ptr %r_args, i32 0, i32 4
  %24 = ptrtoint ptr %offset_hash56 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %offset_hash56, align 2
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  br label %if.end59

if.end59:                                         ; preds = %if.end47, %if.else.if.end59_crit_edge, %if.then8, %if.end.if.end59_crit_edge
  %last_hash.0 = phi i32 [ %and.i, %if.then8 ], [ %26, %if.end47 ], [ 0, %if.else.if.end59_crit_edge ], [ 0, %if.end.if.end59_crit_edge ]
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %13, align 8
  %tobool60.not = icmp eq ptr %28, null
  br i1 %tobool60.not, label %if.end59.if.end91_crit_edge, label %land.lhs.true

if.end59.if.end91_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end59
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %28, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %7)
  %cmp63.not = icmp eq i32 %30, %7
  br i1 %cmp63.not, label %land.lhs.true.if.end91_crit_edge, label %do.body66

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

do.body66:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then77)) #14
          to label %do.end83 [label %if.then77], !srcloc !475

if.then77:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #16
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %13, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %32, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.113, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1654, i32 noundef %8, i32 noundef %35) #14
  br label %do.end83

do.end83:                                         ; preds = %if.then77, %do.body66
  %36 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %13, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %37, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %hash_order to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hash_order, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool87.not = icmp eq i8 %42, 0
  br i1 %tobool87.not, label %if.then88, label %do.end83.if.end91_crit_edge

do.end83.if.end91_crit_edge:                      ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then88:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #16
  %r_readdir_offset89 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 41
  %43 = ptrtoint ptr %r_readdir_offset89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %r_readdir_offset89, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %do.end83.if.end91_crit_edge, %land.lhs.true.if.end91_crit_edge, %if.end59.if.end91_crit_edge
  %frag.0 = phi i32 [ %40, %do.end83.if.end91_crit_edge ], [ %40, %if.then88 ], [ %8, %land.lhs.true.if.end91_crit_edge ], [ %8, %if.end59.if.end91_crit_edge ]
  %44 = ptrtoint ptr %r_reply_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %r_reply_info, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33816576, i32 %47)
  %cmp92 = icmp eq i32 %47, 33816576
  br i1 %cmp92, label %do.body95, label %do.body113

do.body95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then107)) #14
          to label %if.end154 [label %if.then107], !srcloc !475

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #16
  %dir_nr = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7, i32 0, i32 1
  %48 = ptrtoint ptr %dir_nr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dir_nr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.115, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1662, i32 noundef %49, ptr noundef %1) #14
  br label %if.end154

do.body113:                                       ; preds = %if.end91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then125)) #14
          to label %do.end130 [label %if.then125], !srcloc !475

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #16
  %dir_nr127 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7, i32 0, i32 1
  %50 = ptrtoint ptr %dir_nr127 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dir_nr127, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.117, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1665, i32 noundef %51, ptr noundef %1) #14
  br label %do.end130

do.end130:                                        ; preds = %if.then125, %do.body113
  %52 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %13, align 8
  %tobool132.not = icmp eq ptr %53, null
  br i1 %tobool132.not, label %do.end130.if.end137_crit_edge, label %if.then133

do.end130.if.end137_crit_edge:                    ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end137

if.then133:                                       ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d_inode.i, align 8
  tail call fastcc void @ceph_fill_dirfrag(ptr noundef %55, ptr noundef nonnull %53)
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %do.end130.if.end137_crit_edge
  %and.i.i = and i32 %frag.0, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i, label %land.lhs.true140, label %if.end137.if.end154_crit_edge

if.end137.if.end154_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

land.lhs.true140:                                 ; preds = %if.end137
  %r_readdir_offset141 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 41
  %56 = ptrtoint ptr %r_readdir_offset141 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %r_readdir_offset141, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp142 = icmp eq i32 %57, 2
  br i1 %cmp142, label %land.lhs.true144, label %land.lhs.true140.if.end154_crit_edge

land.lhs.true140.if.end154_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

land.lhs.true144:                                 ; preds = %land.lhs.true140
  %58 = ptrtoint ptr %hash_order to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hash_order, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool146.not = icmp eq i8 %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_hash.0)
  %tobool149.not = icmp eq i32 %last_hash.0, 0
  %or.cond = select i1 %tobool146.not, i1 true, i1 %tobool149.not
  br i1 %or.cond, label %if.then150, label %land.lhs.true144.if.end154_crit_edge

land.lhs.true144.if.end154_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

if.then150:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #16
  %i_release_count = getelementptr i8, ptr %3, i32 -864
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count) #14
  %r_dir_release_cnt = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 62
  %60 = ptrtoint ptr %r_dir_release_cnt to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %call.i, ptr %r_dir_release_cnt, align 8
  %i_ordered_count = getelementptr i8, ptr %3, i32 -856
  %call.i.i554 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ordered_count, i32 noundef 8) #14
  %call.i555 = tail call i64 @generic_atomic64_read(ptr noundef %i_ordered_count) #14
  %r_dir_ordered_cnt = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 63
  %61 = ptrtoint ptr %r_dir_ordered_cnt to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %call.i555, ptr %r_dir_ordered_cnt, align 8
  %r_readdir_cache_idx = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 64
  %62 = ptrtoint ptr %r_readdir_cache_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %r_readdir_cache_idx, align 8
  br label %if.end154

if.end154:                                        ; preds = %if.then150, %land.lhs.true144.if.end154_crit_edge, %land.lhs.true140.if.end154_crit_edge, %if.end137.if.end154_crit_edge, %if.then107, %do.body95
  %r_readdir_cache_idx155 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 64
  %63 = ptrtoint ptr %r_readdir_cache_idx155 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %r_readdir_cache_idx155, align 8
  %index = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %cache_ctl, i32 0, i32 2
  %65 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %index, align 4
  %dir_nr157 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7, i32 0, i32 1
  %66 = ptrtoint ptr %dir_nr157 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dir_nr157, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp158626 = icmp sgt i32 %67, 0
  br i1 %cmp158626, label %for.body.lr.ph, label %if.end154.out_crit_edge

if.end154.out_crit_edge:                          ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %if.end154
  %r_readdir_offset156 = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 41
  %68 = ptrtoint ptr %r_readdir_offset156 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %r_readdir_offset156, align 8
  %dir_entries = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7, i32 1
  %name160 = getelementptr inbounds %struct.qstr, ptr %dname, i32 0, i32 1
  %hash = getelementptr inbounds %struct.anon.4, ptr %dname, i32 0, i32 1
  %i_dir_layout172 = getelementptr i8, ptr %3, i32 -832
  %i_shared_gen = getelementptr i8, ptr %3, i32 -180
  %i_ordered_count.i = getelementptr i8, ptr %3, i32 -856
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %r_caps_reservation = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 65
  %r_session = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 50
  %r_request_started = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 46
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %err.0634 = phi i32 [ 0, %for.body.lr.ph ], [ %err.2, %for.inc.for.body_crit_edge ]
  %skipped.0632 = phi i32 [ 0, %for.body.lr.ph ], [ %skipped.1, %for.inc.for.body_crit_edge ]
  %i.0629 = phi i32 [ 0, %for.body.lr.ph ], [ %inc399, %for.inc.for.body_crit_edge ]
  %last_hash.1628 = phi i32 [ %last_hash.0, %for.body.lr.ph ], [ %last_hash.2, %for.inc.for.body_crit_edge ]
  %fpos_offset.0627 = phi i32 [ %69, %for.body.lr.ph ], [ %fpos_offset.2, %for.inc.for.body_crit_edge ]
  %70 = ptrtoint ptr %dir_entries to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dir_entries, align 8
  %add.ptr = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %71, i32 %i.0629
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %74 = ptrtoint ptr %name160 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %name160, align 8
  %name_len = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %71, i32 %i.0629, i32 1
  %75 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %name_len, align 4
  %77 = ptrtoint ptr %dname to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %dname, align 8
  %call163 = call i32 @full_name_hash(ptr noundef %1, ptr noundef %73, i32 noundef %76) #18
  %78 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call163, ptr %hash, align 4
  %inode = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %71, i32 %i.0629, i32 3
  %79 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %inode, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %80, align 1
  %83 = call i64 @llvm.bswap.i64(i64 %82)
  %snapid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %80, i32 0, i32 1
  %84 = ptrtoint ptr %snapid to i32
  call void @__asan_loadN_noabort(i32 %84, i32 8)
  %85 = load i64, ptr %snapid, align 1
  %86 = call i64 @llvm.bswap.i64(i64 %85)
  %87 = ptrtoint ptr %hash_order to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %hash_order, align 2, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool169.not = icmp eq i8 %88, 0
  br i1 %tobool169.not, label %if.else184, label %if.then170

if.then170:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %89 = ptrtoint ptr %i_dir_layout172 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %i_dir_layout172, align 8
  %conv174 = zext i8 %90 to i32
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 8
  %93 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %name_len, align 4
  %call177 = call i32 @ceph_str_hash(i32 noundef %conv174, ptr noundef %92, i32 noundef %94) #14
  %and.i579 = and i32 %call177, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i579, i32 %last_hash.1628)
  %cmp179.not = icmp eq i32 %and.i579, %last_hash.1628
  %spec.select = select i1 %cmp179.not, i32 %fpos_offset.0627, i32 2
  %call183 = call i64 @ceph_make_fpos(i32 noundef %and.i579, i32 noundef %spec.select, i1 noundef zeroext true) #14
  br label %if.end188

if.else184:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call186 = call i64 @ceph_make_fpos(i32 noundef %frag.0, i32 noundef %fpos_offset.0627, i1 noundef zeroext false) #14
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then170
  %call183.sink = phi i64 [ %call186, %if.else184 ], [ %call183, %if.then170 ]
  %fpos_offset.2.in = phi i32 [ %fpos_offset.0627, %if.else184 ], [ %spec.select, %if.then170 ]
  %last_hash.2 = phi i32 [ %last_hash.1628, %if.else184 ], [ %and.i579, %if.then170 ]
  %95 = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %71, i32 %i.0629, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call183.sink, ptr %95, align 8
  %fpos_offset.2 = add i32 %fpos_offset.2.in, 1
  br label %retry_lookup

retry_lookup:                                     ; preds = %if.end294, %if.end188
  %call189 = call ptr @d_lookup(ptr noundef %1, ptr noundef nonnull %dname) #14
  %97 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call189, ptr %dn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then202)) #14
          to label %do.end208 [label %if.then202], !srcloc !475

if.then202:                                       ; preds = %retry_lookup
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dname, align 8
  %100 = ptrtoint ptr %name160 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %name160, align 8
  %102 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dn, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1712, ptr noundef %1, i32 noundef %99, ptr noundef %101, ptr noundef %103) #14
  br label %do.end208

do.end208:                                        ; preds = %if.then202, %retry_lookup
  %104 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dn, align 4
  %tobool209.not = icmp eq ptr %105, null
  br i1 %tobool209.not, label %if.then210, label %if.else251

if.then210:                                       ; preds = %do.end208
  %call211 = call ptr @d_alloc(ptr noundef %1, ptr noundef nonnull %dname) #14
  %106 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call211, ptr %dn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then224)) #14
          to label %do.end230 [label %if.then224], !srcloc !475

if.then224:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #16
  %107 = ptrtoint ptr %dname to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dname, align 8
  %109 = ptrtoint ptr %name160 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %name160, align 8
  %111 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dn, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1717, ptr noundef %1, i32 noundef %108, ptr noundef %110, ptr noundef %112) #14
  br label %do.end230

do.end230:                                        ; preds = %if.then224, %if.then210
  %113 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dn, align 4
  %tobool231.not = icmp eq ptr %114, null
  br i1 %tobool231.not, label %do.body233, label %do.end230.if.end298_crit_edge

do.end230.if.end298_crit_edge:                    ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end298

do.body233:                                       ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %out.thread)) #14
          to label %out [label %out.thread], !srcloc !475

out.thread:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.119, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1719) #14
  br label %if.end409

if.else251:                                       ; preds = %do.end208
  %d_inode.i580 = getelementptr inbounds %struct.dentry, ptr %105, i32 0, i32 5
  %115 = ptrtoint ptr %d_inode.i580 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %d_inode.i580, align 8
  %cmp.i581.not = icmp eq ptr %116, null
  br i1 %cmp.i581.not, label %if.else251.if.end298_crit_edge, label %land.lhs.true254

if.else251.if.end298_crit_edge:                   ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end298

land.lhs.true254:                                 ; preds = %if.else251
  %add.ptr.i.i = getelementptr i8, ptr %116, i32 -952
  %117 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %118, i64 %83)
  %cmp258.not = icmp eq i64 %118, %83
  br i1 %cmp258.not, label %lor.lhs.false, label %land.lhs.true254.if.then265_crit_edge

land.lhs.true254.if.then265_crit_edge:            ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then265

lor.lhs.false:                                    ; preds = %land.lhs.true254
  %snap.i = getelementptr i8, ptr %116, i32 -944
  %119 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %86)
  %cmp263.not = icmp eq i64 %120, %86
  br i1 %cmp263.not, label %lor.lhs.false.if.end298_crit_edge, label %lor.lhs.false.if.then265_crit_edge

lor.lhs.false.if.then265_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then265

lor.lhs.false.if.end298_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end298

if.then265:                                       ; preds = %lor.lhs.false.if.then265_crit_edge, %land.lhs.true254.if.then265_crit_edge
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %105, i32 0, i32 11
  %121 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %d_fsdata.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then279)) #14
          to label %do.end284 [label %if.then279], !srcloc !475

if.then279:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dn, align 4
  %d_inode.i584 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %d_inode.i584 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %d_inode.i584, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.89, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1728, ptr noundef %124, ptr noundef %126) #14
  br label %do.end284

do.end284:                                        ; preds = %if.then279, %if.then265
  %127 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dn, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %128, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref) #14
  %offset285 = getelementptr inbounds %struct.ceph_dentry_info, ptr %122, i32 0, i32 10
  %129 = ptrtoint ptr %offset285 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %offset285, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %130)
  %cmp286.not = icmp eq i64 %130, 0
  br i1 %cmp286.not, label %do.end284.if.end294_crit_edge, label %land.lhs.true288

do.end284.if.end294_crit_edge:                    ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end294

land.lhs.true288:                                 ; preds = %do.end284
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %122, i32 0, i32 4
  %131 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %lease_shared_gen, align 4
  %call.i.i568 = call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %133 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %i_shared_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %134)
  %cmp290 = icmp eq i32 %132, %134
  br i1 %cmp290, label %if.then292, label %land.lhs.true288.if.end294_crit_edge

land.lhs.true288.if.end294_crit_edge:             ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end294

if.then292:                                       ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_ordered_count.i, i32 noundef 8) #14
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %i_ordered_count.i) #14
  %135 = ptrtoint ptr %offset285 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 0, ptr %offset285, align 8
  br label %if.end294

if.end294:                                        ; preds = %if.then292, %land.lhs.true288.if.end294_crit_edge, %do.end284.if.end294_crit_edge
  %136 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dn, align 4
  %d_lockref295 = getelementptr inbounds %struct.dentry, ptr %137, i32 0, i32 7
  call void @_raw_spin_unlock(ptr noundef %d_lockref295) #14
  %138 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dn, align 4
  call void @d_delete(ptr noundef %139) #14
  %140 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dn, align 4
  call void @dput(ptr noundef %141) #14
  br label %retry_lookup

if.end298:                                        ; preds = %lor.lhs.false.if.end298_crit_edge, %if.else251.if.end298_crit_edge, %do.end230.if.end298_crit_edge
  %142 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dn, align 4
  %d_inode.i585 = getelementptr inbounds %struct.dentry, ptr %143, i32 0, i32 5
  %144 = ptrtoint ptr %d_inode.i585 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %d_inode.i585, align 8
  %cmp.i586.not = icmp eq ptr %145, null
  br i1 %cmp.i586.not, label %if.else302, label %if.end298.if.end325_crit_edge

if.end298.if.end325_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end325

if.else302:                                       ; preds = %if.end298
  %146 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %d_sb, align 4
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %83, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %86, 1
  %call303 = call ptr @ceph_get_inode(ptr noundef %147, [2 x i64] %.fca.1.insert)
  %cmp.i588 = icmp ugt ptr %call303, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i588, label %do.body306, label %if.else302.if.end325_crit_edge

if.else302.if.end325_crit_edge:                   ; preds = %if.else302
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end325

do.body306:                                       ; preds = %if.else302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then318)) #14
          to label %do.end322 [label %if.then318], !srcloc !475

if.then318:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.121, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1750) #14
  br label %do.end322

do.end322:                                        ; preds = %if.then318, %do.body306
  %148 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dn, align 4
  call void @d_drop(ptr noundef %149) #14
  %150 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dn, align 4
  call void @dput(ptr noundef %151) #14
  %152 = ptrtoint ptr %call303 to i32
  br label %out

if.end325:                                        ; preds = %if.else302.if.end325_crit_edge, %if.end298.if.end325_crit_edge
  %in.0 = phi ptr [ %call303, %if.else302.if.end325_crit_edge ], [ %145, %if.end298.if.end325_crit_edge ]
  %call327 = call i32 @ceph_fill_inode(ptr noundef %in.0, ptr noundef null, ptr noundef %inode, ptr noundef null, ptr noundef %session, i32 noundef -1, ptr noundef %r_caps_reservation)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %cmp328 = icmp slt i32 %call327, 0
  br i1 %cmp328, label %do.end333, label %if.end342

do.end333:                                        ; preds = %if.end325
  %call335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %in.0) #17
  %153 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dn, align 4
  %d_inode.i589 = getelementptr inbounds %struct.dentry, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %d_inode.i589 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %d_inode.i589, align 8
  %cmp.i590 = icmp eq ptr %156, null
  br i1 %cmp.i590, label %if.then337, label %do.end333.if.end341_crit_edge

do.end333.if.end341_crit_edge:                    ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end341

if.then337:                                       ; preds = %do.end333
  %i_state = getelementptr inbounds %struct.inode, ptr %in.0, i32 0, i32 24
  %157 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %i_state, align 8
  %and = and i32 %158, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool338.not = icmp eq i32 %and, 0
  br i1 %tobool338.not, label %if.then337.if.end340_crit_edge, label %if.then339

if.then337.if.end340_crit_edge:                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end340

if.then339:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #16
  call void @ihold(ptr noundef %in.0) #14
  call void @discard_new_inode(ptr noundef %in.0) #14
  br label %if.end340

if.end340:                                        ; preds = %if.then339, %if.then337.if.end340_crit_edge
  call void @iput(ptr noundef %in.0) #14
  br label %if.end341

if.end341:                                        ; preds = %if.end340, %do.end333.if.end341_crit_edge
  %159 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dn, align 4
  call void @d_drop(ptr noundef %160) #14
  br label %for.inc

if.end342:                                        ; preds = %if.end325
  %i_state343 = getelementptr inbounds %struct.inode, ptr %in.0, i32 0, i32 24
  %161 = ptrtoint ptr %i_state343 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %i_state343, align 8
  %and344 = and i32 %162, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344)
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %if.end342.if.end347_crit_edge, label %if.then346

if.end342.if.end347_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end347

if.then346:                                       ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #16
  call void @unlock_new_inode(ptr noundef %in.0) #14
  br label %if.end347

if.end347:                                        ; preds = %if.then346, %if.end342.if.end347_crit_edge
  %163 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dn, align 4
  %d_inode.i591 = getelementptr inbounds %struct.dentry, ptr %164, i32 0, i32 5
  %165 = ptrtoint ptr %d_inode.i591 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %d_inode.i591, align 8
  %cmp.i592 = icmp eq ptr %166, null
  br i1 %cmp.i592, label %if.then349, label %if.end347.if.end376_crit_edge

if.end347.if.end376_crit_edge:                    ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end376

if.then349:                                       ; preds = %if.end347
  %call350 = call zeroext i1 @ceph_security_xattr_deadlock(ptr noundef %in.0) #14
  br i1 %call350, label %do.body352, label %if.end370

do.body352:                                       ; preds = %if.then349
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then364)) #14
          to label %do.end368 [label %if.then364], !srcloc !475

if.then364:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #16
  %167 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dn, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.124, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1779, ptr noundef %168, ptr noundef %in.0) #14
  br label %do.end368

do.end368:                                        ; preds = %if.then364, %do.body352
  call void @iput(ptr noundef %in.0) #14
  %inc369 = add i32 %skipped.0632, 1
  br label %for.inc

if.end370:                                        ; preds = %if.then349
  %call371 = call fastcc i32 @splice_dentry(ptr noundef nonnull %dn, ptr noundef %in.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %cmp372 = icmp slt i32 %call371, 0
  br i1 %cmp372, label %if.end370.for.inc_crit_edge, label %if.end370.if.end376_crit_edge

if.end370.if.end376_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end376

if.end370.for.inc_crit_edge:                      ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end376:                                        ; preds = %if.end370.if.end376_crit_edge, %if.end347.if.end376_crit_edge
  %err.1 = phi i32 [ %call371, %if.end370.if.end376_crit_edge ], [ %err.0634, %if.end347.if.end376_crit_edge ]
  %169 = ptrtoint ptr %95 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %95, align 8
  %171 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dn, align 4
  %d_fsdata.i593 = getelementptr inbounds %struct.dentry, ptr %172, i32 0, i32 11
  %173 = ptrtoint ptr %d_fsdata.i593 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %d_fsdata.i593, align 4
  %offset379 = getelementptr inbounds %struct.ceph_dentry_info, ptr %174, i32 0, i32 10
  %175 = ptrtoint ptr %offset379 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %170, ptr %offset379, align 8
  %176 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %d_inode.i, align 8
  %lease = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %71, i32 %i.0629, i32 2
  %178 = ptrtoint ptr %lease to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %lease, align 8
  %180 = ptrtoint ptr %r_session to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %r_session, align 4
  %182 = ptrtoint ptr %r_request_started to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %r_request_started, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_lease_session.i) #14
  %184 = ptrtoint ptr %old_lease_session.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %old_lease_session.i, align 4
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %172, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #14
  call fastcc void @__update_dentry_lease(ptr noundef %177, ptr noundef %172, ptr noundef %179, ptr noundef %181, i32 noundef %183, ptr noundef nonnull %old_lease_session.i) #14
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #14
  %185 = ptrtoint ptr %old_lease_session.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %old_lease_session.i, align 4
  call void @ceph_put_mds_session(ptr noundef %186) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_lease_session.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp381 = icmp eq i32 %err.1, 0
  br i1 %cmp381, label %land.lhs.true383, label %if.end376.for.inc_crit_edge

if.end376.for.inc_crit_edge:                      ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true383:                                 ; preds = %if.end376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped.0632)
  %cmp384 = icmp eq i32 %skipped.0632, 0
  br i1 %cmp384, label %land.lhs.true386, label %land.lhs.true383.for.inc_crit_edge

land.lhs.true383.for.inc_crit_edge:               ; preds = %land.lhs.true383
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true386:                                 ; preds = %land.lhs.true383
  %187 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %188)
  %cmp388 = icmp sgt i32 %188, -1
  br i1 %cmp388, label %if.then390, label %land.lhs.true386.for.inc_crit_edge

land.lhs.true386.for.inc_crit_edge:               ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then390:                                       ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #16
  %189 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %d_inode.i, align 8
  %191 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dn, align 4
  %call392 = call fastcc i32 @fill_readdir_cache(ptr noundef %190, ptr noundef %192, ptr noundef nonnull %cache_ctl, ptr noundef %req)
  %193 = call i32 @llvm.smin.i32(i32 %call392, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then390, %land.lhs.true386.for.inc_crit_edge, %land.lhs.true383.for.inc_crit_edge, %if.end376.for.inc_crit_edge, %if.end370.for.inc_crit_edge, %do.end368, %if.end341
  %skipped.1 = phi i32 [ %skipped.0632, %if.end341 ], [ %inc369, %do.end368 ], [ %skipped.0632, %if.end370.for.inc_crit_edge ], [ 0, %land.lhs.true386.for.inc_crit_edge ], [ %skipped.0632, %land.lhs.true383.for.inc_crit_edge ], [ %skipped.0632, %if.end376.for.inc_crit_edge ], [ 0, %if.then390 ]
  %err.2 = phi i32 [ %call327, %if.end341 ], [ %err.0634, %do.end368 ], [ %call371, %if.end370.for.inc_crit_edge ], [ 0, %land.lhs.true386.for.inc_crit_edge ], [ 0, %land.lhs.true383.for.inc_crit_edge ], [ %err.1, %if.end376.for.inc_crit_edge ], [ %193, %if.then390 ]
  %194 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dn, align 4
  call void @dput(ptr noundef %195) #14
  %inc399 = add nuw nsw i32 %i.0629, 1
  %196 = ptrtoint ptr %dir_nr157 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %dir_nr157, align 8
  %cmp158 = icmp slt i32 %inc399, %197
  br i1 %cmp158, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %do.end322, %do.body233, %if.end154.out_crit_edge
  %skipped.0625 = phi i32 [ %skipped.0632, %do.body233 ], [ %skipped.0632, %do.end322 ], [ 0, %if.end154.out_crit_edge ], [ %skipped.1, %for.inc.out_crit_edge ]
  %err.4 = phi i32 [ -12, %do.body233 ], [ %152, %do.end322 ], [ 0, %if.end154.out_crit_edge ], [ %err.2, %for.inc.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %cmp400 = icmp eq i32 %err.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skipped.0625)
  %cmp403 = icmp eq i32 %skipped.0625, 0
  %or.cond547 = select i1 %cmp400, i1 %cmp403, i1 false
  br i1 %or.cond547, label %if.then405, label %out.if.end409_crit_edge

out.if.end409_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end409

if.then405:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 6, ptr noundef %r_req_flags) #14
  %198 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %index, align 4
  %200 = ptrtoint ptr %r_readdir_cache_idx155 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %r_readdir_cache_idx155, align 8
  br label %if.end409

if.end409:                                        ; preds = %if.then405, %out.if.end409_crit_edge, %out.thread
  %err.4620 = phi i32 [ -12, %out.thread ], [ 0, %if.then405 ], [ %err.4, %out.if.end409_crit_edge ]
  call void @ceph_readdir_cache_release(ptr noundef nonnull %cache_ctl)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_readdir_prepopulate, %if.then422)) #14
          to label %cleanup427 [label %if.then422], !srcloc !475

if.then422:                                       ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.126, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1811) #14
  br label %cleanup427

cleanup427:                                       ; preds = %if.then422, %if.end409, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %err.4620, %if.then422 ], [ %err.4620, %if.end409 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cache_ctl) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dn) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dname) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @readdir_prepopulate_inodes_only(ptr noundef %req, ptr noundef %session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dir_nr = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7, i32 0, i32 1
  %0 = ptrtoint ptr %dir_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp57 = icmp sgt i32 %1, 0
  br i1 %cmp57, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dir_entries = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 36, i32 7, i32 1
  %r_dentry = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 6
  %r_caps_reservation = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 65
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.059 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %err.058 = phi i32 [ 0, %for.body.lr.ph ], [ %err.2, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %dir_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir_entries, align 8
  %inode = getelementptr %struct.ceph_mds_reply_dir_entry, ptr %3, i32 %i.059, i32 3
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %snapid = getelementptr inbounds %struct.ceph_mds_reply_inode, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %snapid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %snapid, align 1
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r_dentry, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %d_sb, align 4
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %8, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %11, 1
  %call = tail call ptr @ceph_get_inode(ptr noundef %15, [2 x i64] %.fca.1.insert)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %call to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @readdir_prepopulate_inodes_only.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@readdir_prepopulate_inodes_only, %if.then10)) #14
          to label %cleanup [label %if.then10], !srcloc !475

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @readdir_prepopulate_inodes_only.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.211, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1549, i32 noundef %16) #14
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %call14 = tail call i32 @ceph_fill_inode(ptr noundef %call, ptr noundef null, ptr noundef %inode, ptr noundef null, ptr noundef %session, i32 noundef -1, ptr noundef %r_caps_reservation)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.else

do.end19:                                         ; preds = %if.end12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %call, i32 noundef %call14) #17
  %i_state = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %17 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_state, align 8
  %and = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.end19.if.end30_crit_edge, label %if.then23

do.end19.if.end30_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then23:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ihold(ptr noundef %call) #14
  tail call void @discard_new_inode(ptr noundef %call) #14
  br label %if.end30

if.else:                                          ; preds = %if.end12
  %i_state25 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 24
  %19 = ptrtoint ptr %i_state25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_state25, align 8
  %and26 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else.if.end30_crit_edge, label %if.then28

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unlock_new_inode(ptr noundef %call) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else.if.end30_crit_edge, %if.then23, %do.end19.if.end30_crit_edge
  %err.1 = phi i32 [ %call14, %if.then23 ], [ %call14, %do.end19.if.end30_crit_edge ], [ %err.058, %if.then28 ], [ %err.058, %if.else.if.end30_crit_edge ]
  tail call void @iput(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then10, %if.then
  %err.2 = phi i32 [ %err.1, %if.end30 ], [ %16, %if.then10 ], [ %16, %if.then ]
  %inc = add nuw nsw i32 %i.059, 1
  %21 = ptrtoint ptr %dir_nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dir_nr, align 8
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %err.2, %cleanup.for.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_str_hash(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ceph_make_fpos(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_security_xattr_deadlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_readdir_cache(ptr noundef %dir, ptr noundef %dn, ptr nocapture noundef %ctl, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %ctl, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %rem = and i32 %1, 1023
  %div91 = lshr i32 %1, 10
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !474

if.then.i.i.i:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i.i = add i32 %6, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %7, %if.end.i.i.i ]
  %8 = inttoptr i32 %retval.0.i.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !474

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.218) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !521
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !474

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.218) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #14, !srcloc !521
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !474

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call i32 @__page_file_index(ptr noundef nonnull %3) #14
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i98 = phi i32 [ %call2.i, %if.then.i ], [ %21, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div91, i32 %retval.0.i98)
  %cmp.not = icmp eq i32 %div91, %retval.0.i98
  br i1 %cmp.not, label %page_index.exit.if.end24_crit_edge, label %page_index.exit.if.then_crit_edge

page_index.exit.if.then_crit_edge:                ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

page_index.exit.if.end24_crit_edge:               ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then:                                          ; preds = %page_index.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @ceph_readdir_cache_release(ptr noundef %ctl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4 = icmp eq i32 %rem, 0
  %i_data = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 46
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %gfp_mask.i.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 46, i32 3
  %22 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i99 = tail call ptr @pagecache_get_page(ptr noundef %i_data, i32 noundef %div91, i32 noundef 7, i32 noundef %23) #14
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call.i100 = tail call ptr @pagecache_get_page(ptr noundef %i_data, i32 noundef %div91, i32 noundef 2, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %storemerge = phi ptr [ %call.i100, %if.else ], [ %call.i.i99, %if.then5 ]
  %24 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %storemerge, ptr %ctl, align 4
  %tobool12.not = icmp eq ptr %storemerge, null
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %index, align 4
  %cond = select i1 %cmp4, i32 -12, i32 0
  br label %cleanup

if.end16:                                         ; preds = %if.end
  tail call void @unlock_page(ptr noundef nonnull %storemerge) #14
  %26 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.207, i32 noundef 44) #14
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %shr.i.i = lshr i32 %29, 30
  %30 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %shr.i.i, label %if.end16.if.then.i101_crit_edge [
    i32 2, label %if.end16.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end16.if.else.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.end16.if.then.i101_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i101

is_highmem_idx.exit.i:                            ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %31 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp2.i.not.i = icmp eq i32 %31, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i101_crit_edge

is_highmem_idx.exit.i.if.then.i101_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i101

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then.i101:                                     ; preds = %is_highmem_idx.exit.i.if.then.i101_crit_edge, %if.end16.if.then.i101_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %27) #14
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end16.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %27) #14
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i101
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i101 ]
  %dentries = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %ctl, i32 0, i32 1
  %32 = ptrtoint ptr %dentries to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %addr.0.i, ptr %dentries, align 4
  br i1 %cmp4, label %if.then21, label %kmap.exit.if.end24_crit_edge

kmap.exit.if.end24_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then21:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #16
  %33 = call ptr @memset(ptr %addr.0.i, i32 0, i32 4096)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %kmap.exit.if.end24_crit_edge, %page_index.exit.if.end24_crit_edge
  %r_dir_release_cnt = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 62
  %34 = ptrtoint ptr %r_dir_release_cnt to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %r_dir_release_cnt, align 8
  %i_release_count = getelementptr i8, ptr %dir, i32 -864
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_release_count, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %i_release_count) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %call.i)
  %cmp26 = icmp eq i64 %35, %call.i
  br i1 %cmp26, label %land.lhs.true, label %if.end24.do.body41_crit_edge

if.end24.do.body41_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body41

land.lhs.true:                                    ; preds = %if.end24
  %r_dir_ordered_cnt = getelementptr inbounds %struct.ceph_mds_request, ptr %req, i32 0, i32 63
  %36 = ptrtoint ptr %r_dir_ordered_cnt to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %r_dir_ordered_cnt, align 8
  %i_ordered_count = getelementptr i8, ptr %dir, i32 -856
  %call.i.i93 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_ordered_count, i32 noundef 8) #14
  %call.i94 = tail call i64 @generic_atomic64_read(ptr noundef %i_ordered_count) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %call.i94)
  %cmp28 = icmp eq i64 %37, %call.i94
  br i1 %cmp28, label %do.body, label %land.lhs.true.do.body41_crit_edge

land.lhs.true.do.body41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body41

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_readdir_cache.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_readdir_cache, %if.then34)) #14
          to label %do.end [label %if.then34], !srcloc !475

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_readdir_cache.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.215, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1610, ptr noundef %dn, i32 noundef %39) #14
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %dentries38 = getelementptr inbounds %struct.ceph_readdir_cache_control, ptr %ctl, i32 0, i32 1
  %40 = ptrtoint ptr %dentries38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dentries38, align 4
  %arrayidx = getelementptr ptr, ptr %41, i32 %rem
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dn, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index, align 4
  %inc = add i32 %44, 1
  br label %if.end59

do.body41:                                        ; preds = %land.lhs.true.do.body41_crit_edge, %if.end24.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fill_readdir_cache.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fill_readdir_cache, %if.then53)) #14
          to label %if.end59 [label %if.then53], !srcloc !475

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fill_readdir_cache.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.217, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1614) #14
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %do.body41, %do.end
  %storemerge92 = phi i32 [ %inc, %do.end ], [ -1, %if.then53 ], [ -1, %do.body41 ]
  %45 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge92, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then13
  %retval.0 = phi i32 [ 0, %if.end59 ], [ %cond, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_inode_set_size(ptr noundef %inode, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_inode_set_size.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_inode_set_size, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !475

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_inode_set_size.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.129, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1821, ptr noundef %inode, i64 noundef %call5, i64 noundef %size) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %size)
  tail call void @ceph_fscache_update(ptr noundef %inode) #14
  %sub.i = add i64 %size, 511
  %shr.i = lshr i64 %sub.i, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %0 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %shr.i, ptr %i_blocks, align 8
  %call7 = tail call zeroext i1 @__ceph_should_report_size(ptr noundef %add.ptr.i) #14
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  ret i1 %call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__ceph_should_report_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_queue_inode_work(ptr noundef %inode, i32 noundef %work_bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_work_mask = getelementptr i8, ptr %inode, i32 -12
  tail call void @_set_bit(i32 noundef %work_bit, ptr noundef %i_work_mask) #14
  tail call void @ihold(ptr noundef %inode) #14
  %inode_wq = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %inode_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode_wq, align 8
  %i_work = getelementptr i8, ptr %inode, i32 -56
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %i_work) #14
  br i1 %call.i, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_inode_work.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_inode_work, %if.then6)) #14
          to label %if.end27 [label %if.then6], !srcloc !475

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %i_work_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_work_mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_inode_work.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.132, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1841, ptr noundef %inode, i32 noundef %7) #14
  br label %if.end27

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_queue_inode_work.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_queue_inode_work, %if.then21)) #14
          to label %do.end26 [label %if.then21], !srcloc !475

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %i_work_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_work_mask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_queue_inode_work.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.134, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1844, ptr noundef %inode, i32 noundef %9) #14
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body9
  tail call void @iput(ptr noundef %inode) #14
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %if.then6, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__ceph_do_pending_vmtruncate(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_truncate_mutex = getelementptr i8, ptr %inode, i32 -364
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %i_truncate_pending = getelementptr i8, ptr %inode, i32 -256
  %0 = ptrtoint ptr %i_truncate_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_truncate_pending, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp163 = icmp eq i32 %1, 0
  br i1 %cmp163, label %entry.do.body_crit_edge, label %if.end8.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end8.lr.ph:                                    ; preds = %entry
  %i_wrbuffer_ref_head = getelementptr i8, ptr %inode, i32 -188
  %i_wrbuffer_ref = getelementptr i8, ptr %inode, i32 -192
  %i_rd_ref = getelementptr i8, ptr %inode, i32 -212
  %i_wr_ref = getelementptr i8, ptr %inode, i32 -204
  %i_truncate_size = getelementptr i8, ptr %inode, i32 -264
  %fscache.i.i = getelementptr i8, ptr %inode, i32 -8
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  br label %if.end8

retry.critedge:                                   ; preds = %ceph_fscache_resize.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  br label %retry.backedge

do.body:                                          ; preds = %retry.backedge.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_do_pending_vmtruncate, %if.then4)) #14
          to label %do.end [label %if.then4], !srcloc !475

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.137, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1922, ptr noundef %inode) #14
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br label %cleanup

if.end8:                                          ; preds = %retry.backedge.if.end8_crit_edge, %if.end8.lr.ph
  %2 = ptrtoint ptr %i_wrbuffer_ref_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_wrbuffer_ref_head, align 4
  %4 = ptrtoint ptr %i_wrbuffer_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_wrbuffer_ref, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp9 = icmp slt i32 %3, %5
  br i1 %cmp9, label %if.then10, label %if.end30

if.then10:                                        ; preds = %if.end8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_do_pending_vmtruncate, %if.then24)) #14
          to label %do.end28 [label %if.then24], !srcloc !475

if.then24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.139, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1935, ptr noundef %inode) #14
  br label %do.end28

do.end28:                                         ; preds = %if.then24, %if.then10
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %s_maxbytes, align 8
  %call29 = tail call i32 @filemap_write_and_wait_range(ptr noundef %i_data, i64 noundef 0, i64 noundef %9) #14
  br label %retry.backedge

retry.backedge:                                   ; preds = %do.end28, %retry.critedge
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %10 = ptrtoint ptr %i_truncate_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_truncate_pending, align 8
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %retry.backedge.do.body_crit_edge, label %retry.backedge.if.end8_crit_edge

retry.backedge.if.end8_crit_edge:                 ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

retry.backedge.do.body_crit_edge:                 ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end30:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %i_rd_ref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_rd_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool31.not = icmp eq i32 %13, 0
  br i1 %tobool31.not, label %lor.rhs, label %if.end30.land.rhs_crit_edge

if.end30.land.rhs_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

lor.rhs:                                          ; preds = %if.end30
  %14 = ptrtoint ptr %i_wr_ref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_wr_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool32.not = icmp eq i32 %15, 0
  br i1 %tobool32.not, label %lor.rhs.if.end74_crit_edge, label %lor.rhs.land.rhs_crit_edge

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

lor.rhs.if.end74_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %if.end30.land.rhs_crit_edge
  %.b151 = load i1, ptr @__ceph_do_pending_vmtruncate.__already_done, align 1
  br i1 %.b151, label %land.rhs.if.end74_crit_edge, label %if.then48, !prof !474

land.rhs.if.end74_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end74

if.then48:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__ceph_do_pending_vmtruncate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1942, i32 noundef 9, ptr noundef null) #14
  br label %if.end74

if.end74:                                         ; preds = %if.then48, %land.rhs.if.end74_crit_edge, %lor.rhs.if.end74_crit_edge
  %16 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_truncate_size, align 8
  %18 = ptrtoint ptr %i_wrbuffer_ref to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_wrbuffer_ref, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_do_pending_vmtruncate, %if.then95)) #14
          to label %do.end100 [label %if.then95], !srcloc !475

if.then95:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %i_truncate_pending to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_truncate_pending, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.141, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1947, ptr noundef %inode, i32 noundef %21, i64 noundef %17) #14
  br label %do.end100

do.end100:                                        ; preds = %if.then95, %if.end74
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  %22 = ptrtoint ptr %fscache.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fscache.i.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.end100.ceph_fscache_resize.exit_crit_edge, label %land.lhs.true.i.i

do.end100.ceph_fscache_resize.exit_crit_edge:     ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_fscache_resize.exit

land.lhs.true.i.i:                                ; preds = %do.end100
  tail call void @ceph_fscache_use_cookie(ptr noundef %inode, i1 noundef zeroext true) #14
  %flags.i.i = getelementptr inbounds %struct.fscache_cookie, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i.i, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.fscache_resize_cookie.exit.i_crit_edge

land.lhs.true.i.i.fscache_resize_cookie.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fscache_resize_cookie.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__fscache_resize_cookie(ptr noundef nonnull %23, i64 noundef %17) #14
  br label %fscache_resize_cookie.exit.i

fscache_resize_cookie.exit.i:                     ; preds = %if.then.i.i, %land.lhs.true.i.i.fscache_resize_cookie.exit.i_crit_edge
  tail call void @ceph_fscache_unuse_cookie(ptr noundef %inode, i1 noundef zeroext true) #14
  br label %ceph_fscache_resize.exit

ceph_fscache_resize.exit:                         ; preds = %fscache_resize_cookie.exit.i, %do.end100.ceph_fscache_resize.exit_crit_edge
  tail call void @truncate_pagecache(ptr noundef %inode, i64 noundef %17) #14
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %27 = ptrtoint ptr %i_truncate_size to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_truncate_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %28)
  %cmp104 = icmp eq i64 %17, %28
  br i1 %cmp104, label %if.then105, label %retry.critedge

if.then105:                                       ; preds = %ceph_fscache_resize.exit
  %29 = ptrtoint ptr %i_truncate_pending to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %i_truncate_pending, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp113 = icmp eq i32 %19, 0
  br i1 %cmp113, label %if.then114, label %if.then105.if.end115_crit_edge

if.then105.if.end115_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end115

if.then114:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef null) #14
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.then105.if.end115_crit_edge
  %i_cap_wq = getelementptr i8, ptr %inode, i32 -476
  tail call void @__wake_up(ptr noundef %i_cap_wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_check_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ceph_setattr(ptr noundef %inode, ptr noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %prealloc_cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc3 = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %mdsc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsc3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prealloc_cf) #14
  %call4 = tail call ptr @ceph_alloc_cap_flush() #14
  %8 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %prealloc_cf, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @ceph_mdsc_create_request(ptr noundef %7, i32 noundef 4360, i32 noundef 2) #14
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prealloc_cf, align 4
  tail call void @ceph_free_cap_flush(ptr noundef %10) #14
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %call10 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #14
  %i_head_snapc = getelementptr i8, ptr %inode, i32 -396
  %12 = ptrtoint ptr %i_head_snapc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_head_snapc, align 4
  %tobool11.not = icmp ne ptr %13, null
  %and = and i32 %call10, 4776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end9.do.body_crit_edge, label %if.then13

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then13:                                        ; preds = %if.end9
  %snap_rwsem = getelementptr inbounds %struct.ceph_mds_client, ptr %7, i32 0, i32 15
  %call14 = tail call i32 @down_read_trylock(ptr noundef %snap_rwsem) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.do.body_crit_edge

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @down_read(ptr noundef %snap_rwsem) #14
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %call20 = tail call i32 @__ceph_caps_issued(ptr noundef %add.ptr.i, ptr noundef null) #14
  br label %do.body

do.body:                                          ; preds = %if.then16, %if.then13.do.body_crit_edge, %if.end9.do.body_crit_edge
  %issued.0 = phi i32 [ %call10, %if.end9.do.body_crit_edge ], [ %call10, %if.then13.do.body_crit_edge ], [ %call20, %if.then16 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then27)) #14
          to label %do.end [label %if.then27], !srcloc !475

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call ptr @ceph_cap_string(i32 noundef %issued.0) #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.144, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2044, ptr noundef %inode, ptr noundef %call29) #14
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %and31 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.end.if.end73_crit_edge, label %do.body34

do.end.if.end73_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

do.body34:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then46)) #14
          to label %do.end53 [label %if.then46], !srcloc !475

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  %i_uid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %14 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack672 = load i32, ptr %i_uid, align 4
  %15 = insertvalue [1 x i32] undef, i32 %.unpack672, 0
  %call48 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %15) #14
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %16 = ptrtoint ptr %ia_uid to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack673 = load i32, ptr %ia_uid, align 8
  %17 = insertvalue [1 x i32] undef, i32 %.unpack673, 0
  %call50 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %17) #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.146, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2049, ptr noundef %inode, i32 noundef %call48, i32 noundef %call50) #14
  br label %do.end53

do.end53:                                         ; preds = %if.then46, %do.body34
  %and54 = and i32 %issued.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #16
  %i_uid57 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %ia_uid58 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %18 = ptrtoint ptr %ia_uid58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ia_uid58, align 8
  %20 = ptrtoint ptr %i_uid57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i_uid57, align 4
  br label %if.end73

if.else:                                          ; preds = %do.end53
  %and59 = and i32 %issued.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp = icmp eq i32 %and59, 0
  br i1 %cmp, label %if.else.if.then65_crit_edge, label %lor.lhs.false

if.else.if.then65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

lor.lhs.false:                                    ; preds = %if.else
  %ia_uid60 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %i_uid61 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %21 = ptrtoint ptr %ia_uid60 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack669 = load i32, ptr %ia_uid60, align 8
  %22 = ptrtoint ptr %i_uid61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack670 = load i32, ptr %i_uid61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack669, i32 %.unpack670)
  %cmp.i702 = icmp eq i32 %.unpack669, %.unpack670
  br i1 %cmp.i702, label %lor.lhs.false.if.end73_crit_edge, label %lor.lhs.false.if.then65_crit_edge

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then65

lor.lhs.false.if.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end73

if.then65:                                        ; preds = %lor.lhs.false.if.then65_crit_edge, %if.else.if.then65_crit_edge
  %ia_uid66 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 2
  %23 = ptrtoint ptr %ia_uid66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack671 = load i32, ptr %ia_uid66, align 8
  %24 = insertvalue [1 x i32] undef, i32 %.unpack671, 0
  %call68 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %24) #14
  %25 = tail call i32 @llvm.bswap.i32(i32 %call68)
  %uid = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 1
  %26 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %uid, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then65, %lor.lhs.false.if.end73_crit_edge, %if.then56, %do.end.if.end73_crit_edge
  %mask.0 = phi i32 [ 0, %if.then56 ], [ 2, %if.then65 ], [ 0, %lor.lhs.false.if.end73_crit_edge ], [ 0, %do.end.if.end73_crit_edge ]
  %dirtied.0 = phi i32 [ 8, %if.then56 ], [ 0, %if.then65 ], [ 0, %lor.lhs.false.if.end73_crit_edge ], [ 0, %do.end.if.end73_crit_edge ]
  %release.0 = phi i32 [ 0, %if.then56 ], [ 4, %if.then65 ], [ 0, %lor.lhs.false.if.end73_crit_edge ], [ 0, %do.end.if.end73_crit_edge ]
  %and74 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end122_crit_edge, label %do.body77

if.end73.if.end122_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

do.body77:                                        ; preds = %if.end73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then89)) #14
          to label %do.end97 [label %if.then89], !srcloc !475

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #16
  %i_gid = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %27 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %27)
  %.unpack667 = load i32, ptr %i_gid, align 8
  %28 = insertvalue [1 x i32] undef, i32 %.unpack667, 0
  %call92 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %28) #14
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %29 = ptrtoint ptr %ia_gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack668 = load i32, ptr %ia_gid, align 4
  %30 = insertvalue [1 x i32] undef, i32 %.unpack668, 0
  %call94 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %30) #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.148, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2064, ptr noundef %inode, i32 noundef %call92, i32 noundef %call94) #14
  br label %do.end97

do.end97:                                         ; preds = %if.then89, %do.body77
  %and98 = and i32 %issued.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else104, label %if.then100

if.then100:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #16
  %i_gid101 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %ia_gid102 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %31 = ptrtoint ptr %ia_gid102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ia_gid102, align 4
  %33 = ptrtoint ptr %i_gid101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %i_gid101, align 8
  br label %if.end122

if.else104:                                       ; preds = %do.end97
  %and105 = and i32 %issued.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %cmp106 = icmp eq i32 %and105, 0
  br i1 %cmp106, label %if.else104.if.then113_crit_edge, label %lor.lhs.false107

if.else104.if.then113_crit_edge:                  ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113

lor.lhs.false107:                                 ; preds = %if.else104
  %ia_gid108 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %i_gid109 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %34 = ptrtoint ptr %ia_gid108 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack = load i32, ptr %ia_gid108, align 4
  %35 = ptrtoint ptr %i_gid109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack665 = load i32, ptr %i_gid109, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack665)
  %cmp.i703 = icmp eq i32 %.unpack, %.unpack665
  br i1 %cmp.i703, label %lor.lhs.false107.if.end122_crit_edge, label %lor.lhs.false107.if.then113_crit_edge

lor.lhs.false107.if.then113_crit_edge:            ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then113

lor.lhs.false107.if.end122_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

if.then113:                                       ; preds = %lor.lhs.false107.if.then113_crit_edge, %if.else104.if.then113_crit_edge
  %ia_gid114 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 3
  %36 = ptrtoint ptr %ia_gid114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.unpack666 = load i32, ptr %ia_gid114, align 4
  %37 = insertvalue [1 x i32] undef, i32 %.unpack666, 0
  %call116 = tail call i32 @from_kgid(ptr noundef nonnull @init_user_ns, [1 x i32] %37) #14
  %38 = tail call i32 @llvm.bswap.i32(i32 %call116)
  %gid = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 2
  %39 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %gid, align 8
  %or118 = or i32 %mask.0, 4
  br label %if.end122

if.end122:                                        ; preds = %if.then113, %lor.lhs.false107.if.end122_crit_edge, %if.then100, %if.end73.if.end122_crit_edge
  %mask.1 = phi i32 [ %mask.0, %if.then100 ], [ %or118, %if.then113 ], [ %mask.0, %lor.lhs.false107.if.end122_crit_edge ], [ %mask.0, %if.end73.if.end122_crit_edge ]
  %dirtied.1 = phi i32 [ 8, %if.then100 ], [ %dirtied.0, %if.then113 ], [ %dirtied.0, %lor.lhs.false107.if.end122_crit_edge ], [ %dirtied.0, %if.end73.if.end122_crit_edge ]
  %release.1 = phi i32 [ %release.0, %if.then100 ], [ 4, %if.then113 ], [ %release.0, %lor.lhs.false107.if.end122_crit_edge ], [ %release.0, %if.end73.if.end122_crit_edge ]
  %and123 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end122.if.end171_crit_edge, label %do.body126

if.end122.if.end171_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

do.body126:                                       ; preds = %if.end122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then138)) #14
          to label %do.end143 [label %if.then138], !srcloc !475

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %inode, align 8
  %conv = zext i16 %41 to i32
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %42 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ia_mode, align 4
  %conv140 = zext i16 %43 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.150, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2078, ptr noundef %inode, i32 noundef %conv, i32 noundef %conv140) #14
  br label %do.end143

do.end143:                                        ; preds = %if.then138, %do.body126
  %and144 = and i32 %issued.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.else150, label %if.then146

if.then146:                                       ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #16
  %ia_mode147 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %44 = ptrtoint ptr %ia_mode147 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ia_mode147, align 4
  %46 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %inode, align 8
  br label %if.end171

if.else150:                                       ; preds = %do.end143
  %and151 = and i32 %issued.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %cmp152 = icmp eq i32 %and151, 0
  br i1 %cmp152, label %if.else150.if.then161_crit_edge, label %lor.lhs.false154

if.else150.if.then161_crit_edge:                  ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

lor.lhs.false154:                                 ; preds = %if.else150
  %ia_mode155 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %47 = ptrtoint ptr %ia_mode155 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ia_mode155, align 4
  %49 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %inode, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %50)
  %cmp159.not = icmp eq i16 %48, %50
  br i1 %cmp159.not, label %lor.lhs.false154.if.end171_crit_edge, label %lor.lhs.false154.if.then161_crit_edge

lor.lhs.false154.if.then161_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then161

lor.lhs.false154.if.end171_crit_edge:             ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.then161:                                       ; preds = %lor.lhs.false154.if.then161_crit_edge, %if.else150.if.then161_crit_edge
  %ia_mode162 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 1
  %51 = ptrtoint ptr %ia_mode162 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ia_mode162, align 4
  %53 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %inode, align 8
  %54 = load i16, ptr %ia_mode162, align 4
  %conv165 = zext i16 %54 to i32
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv165)
  %r_args166 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17
  %56 = ptrtoint ptr %r_args166 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %r_args166, align 8
  %or167 = or i32 %mask.1, 1
  br label %if.end171

if.end171:                                        ; preds = %if.then161, %lor.lhs.false154.if.end171_crit_edge, %if.then146, %if.end122.if.end171_crit_edge
  %mask.2 = phi i32 [ %mask.1, %if.then146 ], [ %or167, %if.then161 ], [ %mask.1, %lor.lhs.false154.if.end171_crit_edge ], [ %mask.1, %if.end122.if.end171_crit_edge ]
  %dirtied.2 = phi i32 [ 8, %if.then146 ], [ %dirtied.1, %if.then161 ], [ %dirtied.1, %lor.lhs.false154.if.end171_crit_edge ], [ %dirtied.1, %if.end122.if.end171_crit_edge ]
  %release.2 = phi i32 [ %release.1, %if.then146 ], [ 4, %if.then161 ], [ %release.1, %lor.lhs.false154.if.end171_crit_edge ], [ %release.1, %if.end122.if.end171_crit_edge ]
  %and172 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end171.if.end232_crit_edge, label %do.body175

if.end171.if.end232_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232

do.body175:                                       ; preds = %if.end171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then187)) #14
          to label %do.end195 [label %if.then187], !srcloc !475

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #16
  %i_atime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %57 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %i_atime, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %59 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tv_nsec, align 8
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %61 = ptrtoint ptr %ia_atime to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %ia_atime, align 8
  %tv_nsec192 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %63 = ptrtoint ptr %tv_nsec192 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tv_nsec192, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.152, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2094, ptr noundef %inode, i64 noundef %58, i32 noundef %60, i64 noundef %62, i32 noundef %64) #14
  br label %do.end195

do.end195:                                        ; preds = %if.then187, %do.body175
  %and196 = and i32 %issued.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.else202, label %if.then198

if.then198:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #16
  %i_time_warp_seq = getelementptr i8, ptr %inode, i32 -872
  %65 = ptrtoint ptr %i_time_warp_seq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_time_warp_seq, align 8
  %inc = add i32 %66, 1
  store i32 %inc, ptr %i_time_warp_seq, align 8
  %i_atime199 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %ia_atime200 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %67 = call ptr @memcpy(ptr %i_atime199, ptr %ia_atime200, i32 16)
  %or201 = or i32 %dirtied.2, 512
  br label %if.end232

if.else202:                                       ; preds = %do.end195
  %and203 = and i32 %issued.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %if.else202.if.else215_crit_edge, label %land.lhs.true205

if.else202.if.else215_crit_edge:                  ; preds = %if.else202
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else215

land.lhs.true205:                                 ; preds = %if.else202
  %i_atime206 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %ia_atime207 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %68 = ptrtoint ptr %i_atime206 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_atime206, align 8
  %70 = ptrtoint ptr %ia_atime207 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ia_atime207, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %71)
  %cmp.i704 = icmp slt i64 %69, %71
  br i1 %cmp.i704, label %land.lhs.true205.if.then211_crit_edge, label %if.end.i

land.lhs.true205.if.then211_crit_edge:            ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then211

if.end.i:                                         ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %71)
  %cmp4.i = icmp sgt i64 %69, %71
  br i1 %cmp4.i, label %if.end.i.if.else215_crit_edge, label %timespec64_compare.exit

if.end.i.if.else215_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else215

timespec64_compare.exit:                          ; preds = %if.end.i
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %72 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tv_nsec.i, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tv_nsec7.i, align 8
  %sub.i = sub i32 %73, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp209 = icmp slt i32 %sub.i, 0
  br i1 %cmp209, label %timespec64_compare.exit.if.then211_crit_edge, label %timespec64_compare.exit.if.else215_crit_edge

timespec64_compare.exit.if.else215_crit_edge:     ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else215

timespec64_compare.exit.if.then211_crit_edge:     ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then211

if.then211:                                       ; preds = %timespec64_compare.exit.if.then211_crit_edge, %land.lhs.true205.if.then211_crit_edge
  %76 = call ptr @memcpy(ptr %i_atime206, ptr %ia_atime207, i32 16)
  %or214 = or i32 %dirtied.2, 4096
  br label %if.end232

if.else215:                                       ; preds = %timespec64_compare.exit.if.else215_crit_edge, %if.end.i.if.else215_crit_edge, %if.else202.if.else215_crit_edge
  %and216 = and i32 %issued.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216)
  %cmp217 = icmp eq i32 %and216, 0
  br i1 %cmp217, label %if.else215.if.then224_crit_edge, label %lor.lhs.false219

if.else215.if.then224_crit_edge:                  ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then224

lor.lhs.false219:                                 ; preds = %if.else215
  %i_atime220 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %ia_atime221 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %77 = ptrtoint ptr %i_atime220 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %i_atime220, align 8
  %79 = ptrtoint ptr %ia_atime221 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %ia_atime221, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %78, i64 %80)
  %cmp.i706 = icmp eq i64 %78, %80
  br i1 %cmp.i706, label %timespec64_equal.exit, label %lor.lhs.false219.if.then224_crit_edge

lor.lhs.false219.if.then224_crit_edge:            ; preds = %lor.lhs.false219
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then224

timespec64_equal.exit:                            ; preds = %lor.lhs.false219
  %tv_nsec.i707 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15, i32 1
  %81 = ptrtoint ptr %tv_nsec.i707 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tv_nsec.i707, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tv_nsec2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp3.i.not = icmp eq i32 %82, %84
  br i1 %cmp3.i.not, label %timespec64_equal.exit.if.end232_crit_edge, label %timespec64_equal.exit.if.then224_crit_edge

timespec64_equal.exit.if.then224_crit_edge:       ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then224

timespec64_equal.exit.if.end232_crit_edge:        ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232

if.then224:                                       ; preds = %timespec64_equal.exit.if.then224_crit_edge, %lor.lhs.false219.if.then224_crit_edge, %if.else215.if.then224_crit_edge
  %atime = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 5
  %ia_atime226 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5
  %85 = ptrtoint ptr %ia_atime226 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %ia_atime226, align 8
  %conv.i = trunc i64 %86 to i32
  %87 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #14
  %88 = ptrtoint ptr %atime to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %atime, align 1
  %tv_nsec.i708 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %tv_nsec.i708 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tv_nsec.i708, align 8
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #14
  %tv_nsec2.i709 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 6
  %92 = ptrtoint ptr %tv_nsec2.i709 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %91, ptr %tv_nsec2.i709, align 1
  %or227 = or i32 %mask.2, 16
  %or228 = or i32 %release.2, 6400
  br label %if.end232

if.end232:                                        ; preds = %if.then224, %timespec64_equal.exit.if.end232_crit_edge, %if.then211, %if.then198, %if.end171.if.end232_crit_edge
  %mask.3 = phi i32 [ %mask.2, %if.then198 ], [ %mask.2, %if.then211 ], [ %or227, %if.then224 ], [ %mask.2, %timespec64_equal.exit.if.end232_crit_edge ], [ %mask.2, %if.end171.if.end232_crit_edge ]
  %dirtied.3 = phi i32 [ %or201, %if.then198 ], [ %or214, %if.then211 ], [ %dirtied.2, %if.then224 ], [ %dirtied.2, %timespec64_equal.exit.if.end232_crit_edge ], [ %dirtied.2, %if.end171.if.end232_crit_edge ]
  %release.3 = phi i32 [ %release.2, %if.then198 ], [ %release.2, %if.then211 ], [ %or228, %if.then224 ], [ %release.2, %timespec64_equal.exit.if.end232_crit_edge ], [ %release.2, %if.end171.if.end232_crit_edge ]
  %and233 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end232.if.end288_crit_edge, label %if.then235

if.end232.if.end288_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end288

if.then235:                                       ; preds = %if.end232
  %call236 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then249)) #14
          to label %do.end253 [label %if.then249], !srcloc !475

if.then249:                                       ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #16
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %93 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %ia_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.154, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2116, ptr noundef %inode, i64 noundef %call236, i64 noundef %94) #14
  br label %do.end253

do.end253:                                        ; preds = %if.then249, %if.then235
  %and254 = and i32 %issued.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %do.end253.if.else272_crit_edge, label %land.lhs.true256

do.end253.if.else272_crit_edge:                   ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else272

land.lhs.true256:                                 ; preds = %do.end253
  %ia_size257 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %95 = ptrtoint ptr %ia_size257 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ia_size257, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %call236)
  %cmp258.not = icmp slt i64 %96, %call236
  br i1 %cmp258.not, label %land.lhs.true256.if.else272_crit_edge, label %if.then260

land.lhs.true256.if.else272_crit_edge:            ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else272

if.then260:                                       ; preds = %land.lhs.true256
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %call236)
  %cmp262 = icmp sgt i64 %96, %call236
  br i1 %cmp262, label %if.then264, label %if.then260.if.end288_crit_edge

if.then260.if.end288_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end288

if.then264:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %96)
  %97 = ptrtoint ptr %ia_size257 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %ia_size257, align 8
  %sub.i710 = add i64 %98, 511
  %shr.i = lshr i64 %sub.i710, 9
  %i_blocks = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %99 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %shr.i, ptr %i_blocks, align 8
  %100 = load i64, ptr %ia_size257, align 8
  %i_reported_size = getelementptr i8, ptr %inode, i32 -240
  %101 = ptrtoint ptr %i_reported_size to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %i_reported_size, align 8
  %or269 = or i32 %dirtied.3, 512
  %or270 = or i32 %1, 32
  br label %if.end288

if.else272:                                       ; preds = %land.lhs.true256.if.else272_crit_edge, %do.end253.if.else272_crit_edge
  %and273 = and i32 %issued.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %cmp274 = icmp eq i32 %and273, 0
  br i1 %cmp274, label %if.else272.if.then280_crit_edge, label %lor.lhs.false276

if.else272.if.then280_crit_edge:                  ; preds = %if.else272
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then280

lor.lhs.false276:                                 ; preds = %if.else272
  %ia_size277 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %102 = ptrtoint ptr %ia_size277 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %ia_size277, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %103, i64 %call236)
  %cmp278.not = icmp eq i64 %103, %call236
  br i1 %cmp278.not, label %lor.lhs.false276.if.end288_crit_edge, label %lor.lhs.false276.if.then280_crit_edge

lor.lhs.false276.if.then280_crit_edge:            ; preds = %lor.lhs.false276
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then280

lor.lhs.false276.if.end288_crit_edge:             ; preds = %lor.lhs.false276
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end288

if.then280:                                       ; preds = %lor.lhs.false276.if.then280_crit_edge, %if.else272.if.then280_crit_edge
  %ia_size281 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %104 = ptrtoint ptr %ia_size281 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %ia_size281, align 8
  %106 = tail call i64 @llvm.bswap.i64(i64 %105)
  %size = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 7
  %107 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %size, align 4
  %108 = tail call i64 @llvm.bswap.i64(i64 %call236)
  %old_size = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 1, i32 4
  %109 = ptrtoint ptr %old_size to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 %108, ptr %old_size, align 4
  %or284 = or i32 %mask.3, 32
  %or285 = or i32 %release.3, 6912
  br label %if.end288

if.end288:                                        ; preds = %if.then280, %lor.lhs.false276.if.end288_crit_edge, %if.then264, %if.then260.if.end288_crit_edge, %if.end232.if.end288_crit_edge
  %mask.5 = phi i32 [ %mask.3, %if.end232.if.end288_crit_edge ], [ %mask.3, %if.then264 ], [ %mask.3, %if.then260.if.end288_crit_edge ], [ %or284, %if.then280 ], [ %mask.3, %lor.lhs.false276.if.end288_crit_edge ]
  %dirtied.5 = phi i32 [ %dirtied.3, %if.end232.if.end288_crit_edge ], [ %or269, %if.then264 ], [ %dirtied.3, %if.then260.if.end288_crit_edge ], [ %dirtied.3, %if.then280 ], [ %dirtied.3, %lor.lhs.false276.if.end288_crit_edge ]
  %release.5 = phi i32 [ %release.3, %if.end232.if.end288_crit_edge ], [ %release.3, %if.then264 ], [ %release.3, %if.then260.if.end288_crit_edge ], [ %or285, %if.then280 ], [ %release.3, %lor.lhs.false276.if.end288_crit_edge ]
  %ia_valid.1 = phi i32 [ %1, %if.end232.if.end288_crit_edge ], [ %or270, %if.then264 ], [ %1, %if.then260.if.end288_crit_edge ], [ %1, %if.then280 ], [ %1, %lor.lhs.false276.if.end288_crit_edge ]
  %and289 = and i32 %ia_valid.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %if.end288.if.end353_crit_edge, label %do.body292

if.end288.if.end353_crit_edge:                    ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end353

do.body292:                                       ; preds = %if.end288
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then304)) #14
          to label %do.end314 [label %if.then304], !srcloc !475

if.then304:                                       ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #16
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %110 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %i_mtime, align 8
  %tv_nsec308 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %112 = ptrtoint ptr %tv_nsec308 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tv_nsec308, align 8
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %114 = ptrtoint ptr %ia_mtime to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %ia_mtime, align 8
  %tv_nsec311 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %tv_nsec311 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tv_nsec311, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.156, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2137, ptr noundef %inode, i64 noundef %111, i32 noundef %113, i64 noundef %115, i32 noundef %117) #14
  br label %do.end314

do.end314:                                        ; preds = %if.then304, %do.body292
  %and315 = and i32 %issued.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and315)
  %tobool316.not = icmp eq i32 %and315, 0
  br i1 %tobool316.not, label %if.else323, label %if.then317

if.then317:                                       ; preds = %do.end314
  call void @__sanitizer_cov_trace_pc() #16
  %i_time_warp_seq318 = getelementptr i8, ptr %inode, i32 -872
  %118 = ptrtoint ptr %i_time_warp_seq318 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %i_time_warp_seq318, align 8
  %inc319 = add i32 %119, 1
  store i32 %inc319, ptr %i_time_warp_seq318, align 8
  %i_mtime320 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %ia_mtime321 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %120 = call ptr @memcpy(ptr %i_mtime320, ptr %ia_mtime321, i32 16)
  %or322 = or i32 %dirtied.5, 512
  br label %if.end353

if.else323:                                       ; preds = %do.end314
  %and324 = and i32 %issued.0, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %if.else323.if.else336_crit_edge, label %land.lhs.true326

if.else323.if.else336_crit_edge:                  ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else336

land.lhs.true326:                                 ; preds = %if.else323
  %i_mtime327 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %ia_mtime328 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %121 = ptrtoint ptr %i_mtime327 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %i_mtime327, align 8
  %123 = ptrtoint ptr %ia_mtime328 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %ia_mtime328, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %122, i64 %124)
  %cmp.i711 = icmp slt i64 %122, %124
  br i1 %cmp.i711, label %land.lhs.true326.if.then332_crit_edge, label %if.end.i713

land.lhs.true326.if.then332_crit_edge:            ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then332

if.end.i713:                                      ; preds = %land.lhs.true326
  call void @__sanitizer_cov_trace_cmp8(i64 %122, i64 %124)
  %cmp4.i712 = icmp sgt i64 %122, %124
  br i1 %cmp4.i712, label %if.end.i713.if.else336_crit_edge, label %timespec64_compare.exit719

if.end.i713.if.else336_crit_edge:                 ; preds = %if.end.i713
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else336

timespec64_compare.exit719:                       ; preds = %if.end.i713
  %tv_nsec.i714 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %125 = ptrtoint ptr %tv_nsec.i714 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tv_nsec.i714, align 8
  %tv_nsec7.i715 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %127 = ptrtoint ptr %tv_nsec7.i715 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tv_nsec7.i715, align 8
  %sub.i716 = sub i32 %126, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i716)
  %cmp330 = icmp slt i32 %sub.i716, 0
  br i1 %cmp330, label %timespec64_compare.exit719.if.then332_crit_edge, label %timespec64_compare.exit719.if.else336_crit_edge

timespec64_compare.exit719.if.else336_crit_edge:  ; preds = %timespec64_compare.exit719
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else336

timespec64_compare.exit719.if.then332_crit_edge:  ; preds = %timespec64_compare.exit719
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then332

if.then332:                                       ; preds = %timespec64_compare.exit719.if.then332_crit_edge, %land.lhs.true326.if.then332_crit_edge
  %129 = call ptr @memcpy(ptr %i_mtime327, ptr %ia_mtime328, i32 16)
  %or335 = or i32 %dirtied.5, 4096
  br label %if.end353

if.else336:                                       ; preds = %timespec64_compare.exit719.if.else336_crit_edge, %if.end.i713.if.else336_crit_edge, %if.else323.if.else336_crit_edge
  %and337 = and i32 %issued.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and337)
  %cmp338 = icmp eq i32 %and337, 0
  br i1 %cmp338, label %if.else336.if.then345_crit_edge, label %lor.lhs.false340

if.else336.if.then345_crit_edge:                  ; preds = %if.else336
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then345

lor.lhs.false340:                                 ; preds = %if.else336
  %i_mtime341 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %ia_mtime342 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %130 = ptrtoint ptr %i_mtime341 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %i_mtime341, align 8
  %132 = ptrtoint ptr %ia_mtime342 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %ia_mtime342, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %131, i64 %133)
  %cmp.i720 = icmp eq i64 %131, %133
  br i1 %cmp.i720, label %timespec64_equal.exit726, label %lor.lhs.false340.if.then345_crit_edge

lor.lhs.false340.if.then345_crit_edge:            ; preds = %lor.lhs.false340
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then345

timespec64_equal.exit726:                         ; preds = %lor.lhs.false340
  %tv_nsec.i721 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16, i32 1
  %134 = ptrtoint ptr %tv_nsec.i721 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tv_nsec.i721, align 8
  %tv_nsec2.i722 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %136 = ptrtoint ptr %tv_nsec2.i722 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tv_nsec2.i722, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp3.i723.not = icmp eq i32 %135, %137
  br i1 %cmp3.i723.not, label %timespec64_equal.exit726.if.end353_crit_edge, label %timespec64_equal.exit726.if.then345_crit_edge

timespec64_equal.exit726.if.then345_crit_edge:    ; preds = %timespec64_equal.exit726
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then345

timespec64_equal.exit726.if.end353_crit_edge:     ; preds = %timespec64_equal.exit726
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end353

if.then345:                                       ; preds = %timespec64_equal.exit726.if.then345_crit_edge, %lor.lhs.false340.if.then345_crit_edge, %if.else336.if.then345_crit_edge
  %mtime = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 3
  %ia_mtime347 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6
  %138 = ptrtoint ptr %ia_mtime347 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %ia_mtime347, align 8
  %conv.i727 = trunc i64 %139 to i32
  %140 = tail call i32 @llvm.bswap.i32(i32 %conv.i727) #14
  %141 = ptrtoint ptr %mtime to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 %140, ptr %mtime, align 1
  %tv_nsec.i728 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 6, i32 1
  %142 = ptrtoint ptr %tv_nsec.i728 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tv_nsec.i728, align 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #14
  %tv_nsec2.i729 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 0, i32 4
  %145 = ptrtoint ptr %tv_nsec2.i729 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 4)
  store i32 %144, ptr %tv_nsec2.i729, align 1
  %or348 = or i32 %mask.5, 8
  %or349 = or i32 %release.5, 6400
  br label %if.end353

if.end353:                                        ; preds = %if.then345, %timespec64_equal.exit726.if.end353_crit_edge, %if.then332, %if.then317, %if.end288.if.end353_crit_edge
  %mask.6 = phi i32 [ %mask.5, %if.then317 ], [ %mask.5, %if.then332 ], [ %or348, %if.then345 ], [ %mask.5, %timespec64_equal.exit726.if.end353_crit_edge ], [ %mask.5, %if.end288.if.end353_crit_edge ]
  %dirtied.6 = phi i32 [ %or322, %if.then317 ], [ %or335, %if.then332 ], [ %dirtied.5, %if.then345 ], [ %dirtied.5, %timespec64_equal.exit726.if.end353_crit_edge ], [ %dirtied.5, %if.end288.if.end353_crit_edge ]
  %release.6 = phi i32 [ %release.5, %if.then317 ], [ %release.5, %if.then332 ], [ %or349, %if.then345 ], [ %release.5, %timespec64_equal.exit726.if.end353_crit_edge ], [ %release.5, %if.end288.if.end353_crit_edge ]
  %and354 = and i32 %ia_valid.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and354)
  %tobool355.not = icmp eq i32 %and354, 0
  br i1 %tobool355.not, label %if.end353.if.end408_crit_edge, label %if.then356

if.end353.if.end408_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end408

if.then356:                                       ; preds = %if.end353
  %and357 = and i32 %ia_valid.1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357)
  %cmp358 = icmp eq i32 %and357, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then373)) #14
          to label %do.end385 [label %if.then373], !srcloc !475

if.then373:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %146 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %i_ctime, align 8
  %tv_nsec377 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %148 = ptrtoint ptr %tv_nsec377 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tv_nsec377, align 8
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %150 = ptrtoint ptr %ia_ctime to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %ia_ctime, align 8
  %tv_nsec380 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7, i32 1
  %152 = ptrtoint ptr %tv_nsec380 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tv_nsec380, align 8
  %cond = select i1 %cmp358, ptr @.str.159, ptr @.str.160
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.158, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2164, ptr noundef %inode, i64 noundef %147, i32 noundef %149, i64 noundef %151, i32 noundef %153, ptr noundef nonnull %cond) #14
  br label %do.end385

do.end385:                                        ; preds = %if.then373, %if.then356
  br i1 %cmp358, label %if.then387, label %do.end385.if.end408_crit_edge

do.end385.if.end408_crit_edge:                    ; preds = %do.end385
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end408

if.then387:                                       ; preds = %do.end385
  %and388 = and i32 %issued.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and388)
  %tobool389.not = icmp eq i32 %and388, 0
  br i1 %tobool389.not, label %if.else392, label %if.then390

if.then390:                                       ; preds = %if.then387
  call void @__sanitizer_cov_trace_pc() #16
  %or391 = or i32 %dirtied.6, 8
  br label %if.end408

if.else392:                                       ; preds = %if.then387
  %and393 = and i32 %issued.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and393)
  %tobool394.not = icmp eq i32 %and393, 0
  br i1 %tobool394.not, label %if.else397, label %if.then395

if.then395:                                       ; preds = %if.else392
  call void @__sanitizer_cov_trace_pc() #16
  %or396 = or i32 %dirtied.6, 512
  br label %if.end408

if.else397:                                       ; preds = %if.else392
  %and398 = and i32 %issued.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and398)
  %tobool399.not = icmp eq i32 %and398, 0
  br i1 %tobool399.not, label %if.else402, label %if.then400

if.then400:                                       ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #16
  %or401 = or i32 %dirtied.6, 128
  br label %if.end408

if.else402:                                       ; preds = %if.else397
  call void @__sanitizer_cov_trace_pc() #16
  %or403 = or i32 %mask.6, 64
  br label %if.end408

if.end408:                                        ; preds = %if.else402, %if.then400, %if.then395, %if.then390, %do.end385.if.end408_crit_edge, %if.end353.if.end408_crit_edge
  %mask.8 = phi i32 [ %mask.6, %if.end353.if.end408_crit_edge ], [ %mask.6, %if.then390 ], [ %mask.6, %if.then395 ], [ %mask.6, %if.then400 ], [ %or403, %if.else402 ], [ %mask.6, %do.end385.if.end408_crit_edge ]
  %dirtied.8 = phi i32 [ %dirtied.6, %if.end353.if.end408_crit_edge ], [ %or391, %if.then390 ], [ %or396, %if.then395 ], [ %or401, %if.then400 ], [ %dirtied.6, %if.else402 ], [ %dirtied.6, %do.end385.if.end408_crit_edge ]
  %and409 = and i32 %ia_valid.1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %if.end408.if.end429_crit_edge, label %do.body412

if.end408.if.end429_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end429

do.body412:                                       ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then424)) #14
          to label %if.end429 [label %if.then424], !srcloc !475

if.then424:                                       ; preds = %do.body412
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.162, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2182, ptr noundef %inode) #14
  br label %if.end429

if.end429:                                        ; preds = %if.then424, %do.body412, %if.end408.if.end429_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirtied.8)
  %tobool430.not = icmp eq i32 %dirtied.8, 0
  br i1 %tobool430.not, label %if.end429.if.end435_crit_edge, label %if.then431

if.end429.if.end435_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end435

if.then431:                                       ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #16
  %call432 = call i32 @__ceph_mark_dirty_caps(ptr noundef %add.ptr.i, i32 noundef %dirtied.8, ptr noundef nonnull %prealloc_cf) #14
  %i_ctime433 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %ia_ctime434 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %154 = call ptr @memcpy(ptr %i_ctime433, ptr %ia_ctime434, i32 16)
  br label %if.end435

if.end435:                                        ; preds = %if.then431, %if.end429.if.end435_crit_edge
  %inode_dirty_flags.0 = phi i32 [ %call432, %if.then431 ], [ 0, %if.end429.if.end435_crit_edge ]
  %and436 = and i32 %release.6, %issued.0
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  br i1 %or.cond, label %if.end435.if.end441_crit_edge, label %if.then439

if.end435.if.end441_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end441

if.then439:                                       ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #16
  %snap_rwsem440 = getelementptr inbounds %struct.ceph_mds_client, ptr %7, i32 0, i32 15
  call void @up_read(ptr noundef %snap_rwsem440) #14
  br label %if.end441

if.end441:                                        ; preds = %if.then439, %if.end435.if.end441_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inode_dirty_flags.0)
  %tobool442.not = icmp eq i32 %inode_dirty_flags.0, 0
  br i1 %tobool442.not, label %if.end441.if.end444_crit_edge, label %if.then443

if.end441.if.end444_crit_edge:                    ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end444

if.then443:                                       ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #16
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef %inode_dirty_flags.0) #14
  br label %if.end444

if.end444:                                        ; preds = %if.then443, %if.end441.if.end444_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.8)
  %tobool445.not = icmp eq i32 %mask.8, 0
  br i1 %tobool445.not, label %if.end444.do.body452_crit_edge, label %if.then446

if.end444.do.body452_crit_edge:                   ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body452

if.then446:                                       ; preds = %if.end444
  call void @__sanitizer_cov_trace_pc() #16
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 5
  %155 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %inode, ptr %r_inode, align 8
  call void @ihold(ptr noundef %inode) #14
  %r_inode_drop = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 25
  %156 = ptrtoint ptr %r_inode_drop to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %and436, ptr %r_inode_drop, align 4
  %157 = call i32 @llvm.bswap.i32(i32 %mask.8)
  %mask448 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17, i32 1, i32 12
  %158 = ptrtoint ptr %mask448 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %mask448, align 4
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 40
  %159 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %r_num_caps, align 4
  %r_stamp = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 21
  %ia_ctime449 = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 7
  %160 = call ptr @memcpy(ptr %r_stamp, ptr %ia_ctime449, i32 16)
  %call450 = call i32 @ceph_mdsc_do_request(ptr noundef %7, ptr noundef null, ptr noundef %call5) #14
  br label %do.body452

do.body452:                                       ; preds = %if.then446, %if.end444.do.body452_crit_edge
  %err.0 = phi i32 [ %call450, %if.then446 ], [ 0, %if.end444.do.body452_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_setattr.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_setattr, %if.then464)) #14
          to label %do.end469 [label %if.then464], !srcloc !475

if.then464:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #16
  %call466 = call ptr @ceph_cap_string(i32 noundef %dirtied.8) #14
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_setattr.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.164, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2208, ptr noundef %inode, i32 noundef %err.0, ptr noundef %call466, i32 noundef %mask.8) #14
  br label %do.end469

do.end469:                                        ; preds = %if.then464, %do.body452
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %161, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end469
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !474

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %do.end469
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14, !callees !481
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  %162 = ptrtoint ptr %prealloc_cf to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %prealloc_cf, align 4
  call void @ceph_free_cap_flush(ptr noundef %163) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp470 = icmp slt i32 %err.0, 0
  %and473 = and i32 %mask.8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and473)
  %tobool474.not = icmp eq i32 %and473, 0
  %or.cond674 = select i1 %cmp470, i1 true, i1 %tobool474.not
  br i1 %or.cond674, label %ceph_mdsc_put_request.exit.cleanup_crit_edge, label %if.then475

ceph_mdsc_put_request.exit.cleanup_crit_edge:     ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then475:                                       ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__ceph_do_pending_vmtruncate(ptr noundef %inode)
  br label %cleanup

cleanup:                                          ; preds = %if.then475, %ceph_mdsc_put_request.exit.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then7 ], [ -12, %entry.cleanup_crit_edge ], [ %err.0, %if.then475 ], [ %err.0, %ceph_mdsc_put_request.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prealloc_cf) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_cap_flush() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_free_cap_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_mark_dirty_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_is_max_bytes_exceeded(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_chmod(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ceph_do_getattr(ptr noundef %inode, ptr noundef %locked_page, i32 noundef %mask, i1 noundef zeroext %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
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
  %snap.i = getelementptr i8, ptr %inode, i32 -944
  %6 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %do.body, label %do.body10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_do_getattr.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_do_getattr, %if.then7)) #14
          to label %cleanup [label %if.then7], !srcloc !475

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_do_getattr.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.167, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2269, ptr noundef %inode) #14
  br label %cleanup

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_do_getattr.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_do_getattr, %if.then22)) #14
          to label %do.end27 [label %if.then22], !srcloc !475

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %call24 = tail call ptr @ceph_cap_string(i32 noundef %mask) #14
  %8 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %inode, align 8
  %conv = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_do_getattr.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.169, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2274, ptr noundef %inode, ptr noundef %call24, i32 noundef %conv) #14
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  br i1 %force, label %do.end27.if.end33_crit_edge, label %land.lhs.true

do.end27.if.end33_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true:                                    ; preds = %do.end27
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  %i_ceph_lock.i = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock.i) #14
  %call.i = tail call i32 @__ceph_caps_issued_mask_metric(ptr noundef %add.ptr.i, i32 noundef %mask, i32 noundef 1) #14
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool31.not = icmp eq i32 %call.i, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %do.end27.if.end33_crit_edge
  %and = lshr i32 %mask, 13
  %10 = and i32 %and, 2
  %call35 = tail call ptr @ceph_mdsc_create_request(ptr noundef %5, i32 noundef 257, i32 noundef %10) #14
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %r_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 5
  %12 = ptrtoint ptr %r_inode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %inode, ptr %r_inode, align 8
  tail call void @ihold(ptr noundef %inode) #14
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 40
  %13 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %r_num_caps, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %mask)
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 17
  %15 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %r_args, align 8
  %r_locked_page = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 38
  %16 = ptrtoint ptr %r_locked_page to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %locked_page, ptr %r_locked_page, align 4
  %call41 = tail call i32 @ceph_mdsc_do_request(ptr noundef %5, ptr noundef null, ptr noundef %call35) #14
  %tobool42.not = icmp ne ptr %locked_page, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp44 = icmp eq i32 %call41, 0
  %or.cond = select i1 %tobool42.not, i1 %cmp44, i1 false
  br i1 %or.cond, label %if.then46, label %if.end39.if.end59_crit_edge

if.end39.if.end59_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then46:                                        ; preds = %if.end39
  %inline_version47 = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 36, i32 2, i32 6
  %17 = ptrtoint ptr %inline_version47 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %inline_version47, align 8
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.237)
  switch i64 %18, label %if.else54 [
    i64 0, label %if.then46.if.end59_crit_edge
    i64 -1, label %if.then53
  ]

if.then46.if.end59_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.then53:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59

if.else54:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #16
  %inline_len = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 36, i32 2, i32 7
  %19 = ptrtoint ptr %inline_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inline_len, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else54, %if.then53, %if.then46.if.end59_crit_edge, %if.end39.if.end59_crit_edge
  %err.1 = phi i32 [ %call41, %if.end39.if.end59_crit_edge ], [ -61, %if.then53 ], [ %20, %if.else54 ], [ -22, %if.then46.if.end59_crit_edge ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call35, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !478
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #14
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #14, !srcloc !479
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !474

if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ceph_mdsc_put_request.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #14
  br label %ceph_mdsc_put_request.exit

if.then.i.i:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !480
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #14, !callees !481
  br label %ceph_mdsc_put_request.exit

ceph_mdsc_put_request.exit:                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_mdsc_put_request.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_do_getattr.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_do_getattr, %if.then72)) #14
          to label %cleanup [label %if.then72], !srcloc !475

if.then72:                                        ; preds = %ceph_mdsc_put_request.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_do_getattr.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.171, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 2300, i32 noundef %err.1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %ceph_mdsc_put_request.exit, %if.then37, %land.lhs.true.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ %11, %if.then37 ], [ 0, %if.then7 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %err.1, %if.then72 ], [ 0, %do.body ], [ %err.1, %ceph_mdsc_put_request.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_inode_shutdown(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %invalidate = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %invalidate) #14
  %0 = ptrtoint ptr %invalidate to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %invalidate, align 1
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %i_ceph_flags = getelementptr i8, ptr %inode, i32 -868
  %1 = ptrtoint ptr %i_ceph_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_ceph_flags, align 4
  %or = or i32 %2, 8192
  store i32 %or, ptr %i_ceph_flags, align 4
  %i_caps = getelementptr i8, ptr %inode, i32 -520
  %call1 = tail call ptr @rb_first(ptr noundef %i_caps) #14
  %tobool.not19 = icmp eq ptr %call1, null
  br i1 %tobool.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %p.021 = phi ptr [ %call2, %while.body.while.body_crit_edge ], [ %call1, %entry.while.body_crit_edge ]
  %iputs.020 = phi i32 [ %add, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %p.021, i32 -4
  %call2 = call ptr @rb_next(ptr noundef nonnull %p.021) #14
  %call3 = call i32 @ceph_purge_inode_cap(ptr noundef %inode, ptr noundef %add.ptr, ptr noundef nonnull %invalidate) #14
  %add = add i32 %call3, %iputs.020
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %iputs.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  %3 = ptrtoint ptr %invalidate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %invalidate, align 1, !range !520
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool5.not = icmp eq i8 %4, 0
  br i1 %tobool5.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @ceph_queue_inode_work(ptr noundef %inode, i32 noundef 1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iputs.0.lcssa)
  %tobool7.not22 = icmp eq i32 %iputs.0.lcssa, 0
  br i1 %tobool7.not22, label %if.end.while.end9_crit_edge, label %if.end.while.body8_crit_edge

if.end.while.body8_crit_edge:                     ; preds = %if.end
  br label %while.body8

if.end.while.end9_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end9

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %if.end.while.body8_crit_edge
  %iputs.123 = phi i32 [ %dec, %while.body8.while.body8_crit_edge ], [ %iputs.0.lcssa, %if.end.while.body8_crit_edge ]
  %dec = add i32 %iputs.123, -1
  call void @iput(ptr noundef %inode) #14
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.body8.while.end9_crit_edge, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body8

while.body8.while.end9_crit_edge:                 ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end9

while.end9:                                       ; preds = %while.body8.while.end9_crit_edge, %if.end.while.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %invalidate) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_purge_inode_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_buffer_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_inode_invalidate_secctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frag_tree_split_cmp(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %l, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %r to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %r, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %call = tail call i32 @ceph_frag_compare(i32 noundef %2, i32 noundef %5) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_or_create_frag(ptr noundef %ci, i32 noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_fragtree = getelementptr inbounds %struct.ceph_inode_info, ptr %ci, i32 0, i32 23
  %0 = ptrtoint ptr %i_fragtree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_fragtree, align 4
  %tobool.not54 = icmp eq ptr %1, null
  br i1 %tobool.not54, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end5.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %10, %if.end5.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %p.055 = phi ptr [ %p.1, %if.end5.while.body_crit_edge ], [ %i_fragtree, %entry.while.body_crit_edge ]
  %frag1 = getelementptr inbounds %struct.ceph_inode_frag, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %frag1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %frag1, align 4
  %call = tail call i32 @ceph_frag_compare(i32 noundef %f, i32 noundef %4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %p.055 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.055, align 4
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %if.end5

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2.not = icmp eq i32 %call, 0
  br i1 %cmp2.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %p.055 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.055, align 4
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %9 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %i_fragtree, %entry.while.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3136, i32 noundef 44) #21
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %while.end.cleanup_crit_edge, label %if.end10

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %frag11 = getelementptr inbounds %struct.ceph_inode_frag, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %frag11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %f, ptr %frag11, align 4
  %split_by = getelementptr inbounds %struct.ceph_inode_frag, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %split_by to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %split_by, align 8
  %mds = getelementptr inbounds %struct.ceph_inode_frag, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %mds to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %mds, align 4
  %ndist = getelementptr inbounds %struct.ceph_inode_frag, ptr %call7.i, i32 0, i32 4
  %15 = ptrtoint ptr %ndist to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ndist, align 8
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parent.0.lcssa, ptr %call7.i, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call7.i, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.i, align 8
  %19 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call7.i, ptr noundef %i_fragtree) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__get_or_create_frag.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__get_or_create_frag, %if.then19)) #14
          to label %cleanup [label %if.then19], !srcloc !475

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %ci to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ci, align 8
  %snap = getelementptr inbounds %struct.ceph_vino, ptr %ci, i32 0, i32 1
  %22 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__get_or_create_frag.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.189, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 173, i64 noundef %21, i64 noundef %23, i32 noundef %f) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end10, %while.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.then19 ], [ inttoptr (i32 -12 to ptr), %while.end.cleanup_crit_edge ], [ %call7.i, %if.end10 ], [ %2, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__update_dentry_lease(ptr noundef %dir, ptr noundef %dentry, ptr nocapture noundef readonly %lease, ptr noundef %session, i32 noundef %from_time, ptr nocapture noundef writeonly %old_lease_session) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata.i, align 4
  %2 = ptrtoint ptr %lease to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %lease, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %duration_ms = getelementptr inbounds %struct.ceph_mds_reply_lease, ptr %lease, i32 0, i32 1
  %5 = ptrtoint ptr %duration_ms to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %duration_ms, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %mul = mul i32 %7, 100
  %div = udiv i32 %mul, 1000
  %add = add i32 %div, %from_time
  %div4 = udiv i32 %mul, 2000
  %add5 = add i32 %div4, %from_time
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__update_dentry_lease.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__update_dentry_lease, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !475

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__update_dentry_lease.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.200, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1107, ptr noundef %dentry, i32 noundef %7, i32 noundef %add) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %snap.i = getelementptr i8, ptr %dir, i32 -944
  %8 = ptrtoint ptr %snap.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %snap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %9)
  %cmp.not = icmp eq i64 %9, -2
  br i1 %cmp.not, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %flags16 = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags16, align 8
  %and17 = and i32 %11, -9
  %and = shl nuw nsw i32 %conv, 1
  %12 = and i32 %and, 8
  %and17.sink = or i32 %and17, %12
  store i32 %and17.sink, ptr %flags16, align 8
  %i_shared_gen = getelementptr i8, ptr %dir, i32 -180
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_shared_gen, i32 noundef 4) #14
  %13 = ptrtoint ptr %i_shared_gen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_shared_gen, align 4
  %lease_shared_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %lease_shared_gen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %lease_shared_gen, align 4
  %and21 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__ceph_dentry_dir_lease_touch(ptr noundef %1) #14
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  %lease_gen = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %lease_gen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %lease_gen, align 8
  %s_cap_gen = getelementptr inbounds %struct.ceph_mds_session, ptr %session, i32 0, i32 10
  %call.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_cap_gen, i32 noundef 4) #14
  %18 = ptrtoint ptr %s_cap_gen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %s_cap_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp26 = icmp eq i32 %17, %19
  br i1 %cmp26, label %land.lhs.true, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end24
  %time = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %time, align 8
  %sub = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp28 = icmp slt i32 %sub, 0
  br i1 %cmp28, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %lease_session = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %lease_session to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lease_session, align 4
  %tobool32.not = icmp eq ptr %23, null
  %cmp35.not = icmp eq ptr %23, %session
  %or.cond = or i1 %tobool32.not, %cmp35.not
  br i1 %or.cond, label %if.end40, label %if.end40.thread

if.end40.thread:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %old_lease_session to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %old_lease_session, align 4
  %25 = ptrtoint ptr %lease_session to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %lease_session, align 4
  br label %if.then43

if.end40:                                         ; preds = %if.end31
  br i1 %tobool32.not, label %if.end40.if.then43_crit_edge, label %if.end40.if.end46_crit_edge

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end40.if.then43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then43

if.then43:                                        ; preds = %if.end40.if.then43_crit_edge, %if.end40.thread
  %call44 = tail call ptr @ceph_get_mds_session(ptr noundef %session) #14
  %26 = ptrtoint ptr %lease_session to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call44, ptr %lease_session, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  %call.i.i87 = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_cap_gen, i32 noundef 4) #14
  %27 = ptrtoint ptr %s_cap_gen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %s_cap_gen, align 4
  %29 = ptrtoint ptr %lease_gen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %lease_gen, align 8
  %seq = getelementptr inbounds %struct.ceph_mds_reply_lease, ptr %lease, i32 0, i32 2
  %30 = ptrtoint ptr %seq to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %seq, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %lease_seq = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %lease_seq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %lease_seq, align 4
  %lease_renew_after = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %lease_renew_after to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add5, ptr %lease_renew_after, align 8
  %lease_renew_from = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %lease_renew_from to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %lease_renew_from, align 4
  %time50 = getelementptr inbounds %struct.ceph_dentry_info, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %time50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %time50, align 8
  tail call void @__ceph_dentry_lease_touch(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %land.lhs.true.cleanup_crit_edge, %if.then23, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_dentry_dir_lease_touch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_get_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_dentry_lease_touch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_use_cookie(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_resize_cookie(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_do_invalidate_pages(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -952
  tail call void @ceph_fscache_invalidate(ptr noundef %inode, i1 noundef zeroext false) #14
  %i_truncate_mutex = getelementptr i8, ptr %inode, i32 -364
  tail call void @mutex_lock_nested(ptr noundef %i_truncate_mutex, i32 noundef 0) #14
  %i_ceph_flags.i = getelementptr i8, ptr %inode, i32 -868
  %0 = ptrtoint ptr %i_ceph_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %i_ceph_flags.i, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mount_state.i, align 4
  %and.i = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp sgt i32 %7, 3
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @ceph_do_invalidate_pages._rs, ptr noundef nonnull @__func__.ceph_do_invalidate_pages) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %inode, i32 -944
  %10 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %snap, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef nonnull @__func__.ceph_do_invalidate_pages, i64 noundef %9, i64 noundef %11) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %12 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_mapping, align 8
  tail call void @__filemap_set_wb_err(ptr noundef %13, i32 noundef -5) #14
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %if.end.mapping_set_error.exit_crit_edge, label %if.then5.i

if.end.mapping_set_error.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %mapping_set_error.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef -5) #14
  br label %mapping_set_error.exit

mapping_set_error.exit:                           ; preds = %if.then5.i, %if.end.mapping_set_error.exit_crit_edge
  %flags9.i = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags9.i) #14
  tail call void @truncate_pagecache(ptr noundef %inode, i64 noundef 0) #14
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br label %if.end102

if.end9:                                          ; preds = %entry
  %i_ceph_lock = getelementptr i8, ptr %inode, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_do_invalidate_pages, %if.then16)) #14
          to label %do.end20 [label %if.then16], !srcloc !475

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %i_rdcache_gen = getelementptr i8, ptr %inode, i32 -176
  %18 = ptrtoint ptr %i_rdcache_gen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_rdcache_gen, align 8
  %i_rdcache_revoking = getelementptr i8, ptr %inode, i32 -172
  %20 = ptrtoint ptr %i_rdcache_revoking to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_rdcache_revoking, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.225, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1870, ptr noundef %inode, i32 noundef %19, i32 noundef %21) #14
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %if.end9
  %i_rdcache_revoking21 = getelementptr i8, ptr %inode, i32 -172
  %22 = ptrtoint ptr %i_rdcache_revoking21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_rdcache_revoking21, align 4
  %i_rdcache_gen22 = getelementptr i8, ptr %inode, i32 -176
  %24 = ptrtoint ptr %i_rdcache_gen22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_rdcache_gen22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not = icmp eq i32 %23, %25
  br i1 %cmp.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %do.end20
  %call24 = tail call i32 @__ceph_caps_revoking_other(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 1024) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br i1 %tobool25.not, label %if.then23.if.end102_crit_edge, label %if.then23.if.then101_crit_edge

if.then23.if.then101_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

if.then23.if.end102_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.end30:                                         ; preds = %do.end20
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @ceph_fscache_invalidate(ptr noundef %inode, i1 noundef zeroext false) #14
  %i_mapping33 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping33, align 8
  %call34 = tail call i32 @invalidate_inode_pages2(ptr noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end30.if.end48_crit_edge

if.end30.if.end48_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.i, align 8
  %snap46 = getelementptr i8, ptr %inode, i32 -944
  %30 = ptrtoint ptr %snap46 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %snap46, align 8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i64 noundef %29, i64 noundef %31) #17
  br label %if.end48

if.end48:                                         ; preds = %do.end39, %if.end30.if.end48_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #14
  %32 = ptrtoint ptr %i_rdcache_gen22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_rdcache_gen22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %33)
  %cmp51 = icmp eq i32 %23, %33
  br i1 %cmp51, label %land.lhs.true, label %if.end48.do.body74_crit_edge

if.end48.do.body74_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body74

land.lhs.true:                                    ; preds = %if.end48
  %34 = ptrtoint ptr %i_rdcache_revoking21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_rdcache_revoking21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %35)
  %cmp53 = icmp eq i32 %23, %35
  br i1 %cmp53, label %do.body55, label %land.lhs.true.do.body74_crit_edge

land.lhs.true.do.body74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body74

do.body55:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_do_invalidate_pages, %if.then67)) #14
          to label %do.end72 [label %if.then67], !srcloc !475

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %i_rdcache_gen22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_rdcache_gen22, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.230, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1891, ptr noundef %inode, i32 noundef %37) #14
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.body55
  %38 = ptrtoint ptr %i_rdcache_revoking21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_rdcache_revoking21, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %i_rdcache_revoking21, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br label %if.then101

do.body74:                                        ; preds = %land.lhs.true.do.body74_crit_edge, %if.end48.do.body74_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_do_invalidate_pages, %if.then86)) #14
          to label %do.end92 [label %if.then86], !srcloc !475

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %i_rdcache_gen22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_rdcache_gen22, align 8
  %42 = ptrtoint ptr %i_rdcache_revoking21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_rdcache_revoking21, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.232, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1897, ptr noundef %inode, i32 noundef %23, i32 noundef %41, i32 noundef %43) #14
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %do.body74
  %call93 = tail call i32 @__ceph_caps_revoking_other(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 1024) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not.not = icmp eq i32 %call93, 0
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #14
  tail call void @mutex_unlock(ptr noundef %i_truncate_mutex) #14
  br i1 %tobool94.not.not, label %do.end92.if.end102_crit_edge, label %do.end92.if.then101_crit_edge

do.end92.if.then101_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then101

do.end92.if.end102_crit_edge:                     ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.then101:                                       ; preds = %do.end92.if.then101_crit_edge, %do.end72, %if.then23.if.then101_crit_edge
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef null) #14
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %do.end92.if.end102_crit_edge, %if.then23.if.end102_crit_edge, %mapping_set_error.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_flush_snaps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_invalidate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_revoking_other(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_caps_issued_mask_metric(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 236)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 236)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !231, !233, !234, !235, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !280, !281, !282, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !343, !344, !346, !347, !348, !349, !351, !352, !353, !355, !356, !358, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !374, !376, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !396, !398, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !413, !415, !416, !417, !418, !420, !421, !422, !424, !425, !426, !427, !429, !430, !431, !433, !435, !437, !438, !439, !440, !442, !443, !444, !445, !446, !448, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462}
!llvm.named.register.sp = !{!464}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470, !471, !472}
!llvm.ident = !{!473}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/inode.c", i32 67, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_get_inode.__UNIQUE_ID_ddebug314, !1, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/ceph/inode.c", i32 88, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ceph_get_snapdir._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ceph_get_snapdir._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/ceph/inode.c", i32 94, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ceph_get_snapdir._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @ceph_get_snapdir._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @ceph_file_iops, !20, !"ceph_file_iops", i1 false, i1 false}
!20 = !{!"../fs/ceph/inode.c", i32 118, i32 31}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ceph/inode.c", i32 454, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ceph_alloc_inode.__UNIQUE_ID_ddebug326, !22, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ceph_alloc_inode.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../fs/ceph/inode.c", i32 456, i32 2}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ceph_alloc_inode.__key.16, !30, !"__key", i1 false, i1 false}
!30 = !{!"../fs/ceph/inode.c", i32 476, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ceph_alloc_inode.__key.18, !33, !"__key", i1 false, i1 false}
!33 = !{!"../fs/ceph/inode.c", i32 496, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ceph_alloc_inode.__key.20, !36, !"__key", i1 false, i1 false}
!36 = !{!"../fs/ceph/inode.c", i32 507, i32 2}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ceph_alloc_inode.__key.22, !39, !"__key", i1 false, i1 false}
!39 = !{!"../fs/ceph/inode.c", i32 532, i32 2}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ceph_alloc_inode.__key.24, !42, !"__key", i1 false, i1 false}
!42 = !{!"../fs/ceph/inode.c", i32 538, i32 2}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ceph/inode.c", i32 562, i32 2}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ceph_evict_inode.__UNIQUE_ID_ddebug328, !45, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!48 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/ceph/inode.c", i32 584, i32 4}
!51 = !{ptr @ceph_evict_inode.__UNIQUE_ID_ddebug329, !50, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!52 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ceph/inode.c", i32 632, i32 3}
!55 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ceph_fill_file_size.__UNIQUE_ID_ddebug334, !54, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!57 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ceph/inode.c", i32 634, i32 4}
!60 = !{ptr @ceph_fill_file_size._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ceph_fill_file_size._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ceph/inode.c", i32 647, i32 4}
!64 = !{ptr @ceph_fill_file_size.__UNIQUE_ID_ddebug335, !63, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!65 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../fs/ceph/inode.c", i32 652, i32 4}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ceph/inode.c", i32 673, i32 3}
!70 = !{ptr @ceph_fill_file_size.__UNIQUE_ID_ddebug336, !69, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!71 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ceph/inode.c", i32 694, i32 4}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug337, !73, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!76 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ceph/inode.c", i32 702, i32 4}
!79 = !{ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug338, !78, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!80 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ceph/inode.c", i32 714, i32 5}
!83 = !{ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug339, !82, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!84 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ceph/inode.c", i32 721, i32 5}
!87 = !{ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug340, !86, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!88 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ceph/inode.c", i32 744, i32 3}
!91 = !{ptr @ceph_fill_file_time.__UNIQUE_ID_ddebug341, !90, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!92 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ceph/inode.c", i32 777, i32 2}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ceph_fill_inode.__UNIQUE_ID_ddebug342, !94, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!97 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../fs/ceph/inode.c", i32 786, i32 4}
!100 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ceph_fill_inode._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @ceph_fill_inode._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../fs/ceph/inode.c", i32 792, i32 4}
!105 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ceph_fill_inode._entry.55, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @ceph_fill_inode._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ceph/inode.c", i32 817, i32 4}
!110 = !{ptr @ceph_fill_inode._entry.58, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ceph_fill_inode._entry_ptr.60, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ceph/inode.c", i32 867, i32 3}
!114 = !{ptr @ceph_fill_inode.__UNIQUE_ID_ddebug343, !113, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!115 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../fs/ceph/inode.c", i32 899, i32 12}
!118 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ceph/inode.c", i32 915, i32 4}
!121 = !{ptr @ceph_fill_inode.__UNIQUE_ID_ddebug347, !120, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!122 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ceph/inode.c", i32 979, i32 5}
!125 = !{ptr @ceph_fill_inode._entry.66, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @ceph_fill_inode._entry_ptr.68, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/ceph/inode.c", i32 1005, i32 3}
!129 = !{ptr @ceph_fill_inode._entry.69, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ceph_fill_inode._entry_ptr.71, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.72, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ceph/inode.c", i32 1027, i32 5}
!133 = !{ptr @ceph_fill_inode.__UNIQUE_ID_ddebug348, !132, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!134 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ceph/inode.c", i32 1036, i32 4}
!137 = !{ptr @ceph_fill_inode.__UNIQUE_ID_ddebug349, !136, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!138 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/ceph/inode.c", i32 1053, i32 4}
!141 = !{ptr @ceph_fill_inode._entry.76, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ceph_fill_inode._entry_ptr.78, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../fs/ceph/inode.c", i32 1280, i32 2}
!145 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug353, !144, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!147 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ceph/inode.c", i32 1284, i32 3}
!150 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug354, !149, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!151 = !{ptr @.str.83, !149, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../fs/ceph/inode.c", i32 1300, i32 4}
!154 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ceph/inode.c", i32 1322, i32 4}
!156 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug355, !155, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!157 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../fs/ceph/inode.c", i32 1327, i32 5}
!160 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug356, !159, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!161 = !{ptr @.str.87, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ceph/inode.c", i32 1338, i32 5}
!164 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug357, !163, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!165 = !{ptr @.str.89, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ceph/inode.c", i32 1363, i32 4}
!168 = !{ptr @ceph_fill_trace._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @ceph_fill_trace._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/ceph/inode.c", i32 1414, i32 4}
!172 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug358, !171, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!173 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/ceph/inode.c", i32 1421, i32 4}
!176 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug359, !175, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!177 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/ceph/inode.c", i32 1425, i32 4}
!180 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug360, !179, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!181 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug361, !183, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!183 = !{!"../fs/ceph/inode.c", i32 1433, i32 4}
!184 = !{ptr @.str.97, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ceph/inode.c", i32 1442, i32 4}
!186 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug362, !185, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!187 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../fs/ceph/inode.c", i32 1455, i32 4}
!190 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug363, !189, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!191 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../fs/ceph/inode.c", i32 1457, i32 5}
!194 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug364, !193, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!195 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../fs/ceph/inode.c", i32 1479, i32 4}
!198 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug365, !197, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!199 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.105, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../fs/ceph/inode.c", i32 1491, i32 3}
!202 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug366, !201, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!203 = !{ptr @.str.106, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../fs/ceph/inode.c", i32 1502, i32 3}
!206 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug367, !205, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!207 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../fs/ceph/inode.c", i32 1524, i32 2}
!210 = !{ptr @ceph_fill_trace.__UNIQUE_ID_ddebug368, !209, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!211 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!212 = distinct !{null, !213, !"__already_done", i1 false, i1 false}
!213 = !{!"../fs/ceph/inode.c", i32 1646, i32 4}
!214 = !{ptr @.str.111, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../fs/ceph/inode.c", i32 1653, i32 3}
!216 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug372, !215, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!218 = !{ptr @.str.113, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.114, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ceph/inode.c", i32 1661, i32 3}
!221 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug373, !220, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!222 = !{ptr @.str.115, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ceph/inode.c", i32 1664, i32 3}
!225 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug374, !224, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!226 = !{ptr @.str.117, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug375, !228, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!228 = !{!"../fs/ceph/inode.c", i32 1711, i32 3}
!229 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug376, !230, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!230 = !{!"../fs/ceph/inode.c", i32 1716, i32 4}
!231 = !{ptr @.str.118, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ceph/inode.c", i32 1719, i32 5}
!233 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug377, !232, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!234 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug378, !236, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!236 = !{!"../fs/ceph/inode.c", i32 1727, i32 4}
!237 = !{ptr @.str.120, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../fs/ceph/inode.c", i32 1750, i32 5}
!239 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug379, !238, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!240 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../fs/ceph/inode.c", i32 1761, i32 4}
!243 = !{ptr @ceph_readdir_prepopulate._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ceph_readdir_prepopulate._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.123, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../fs/ceph/inode.c", i32 1778, i32 5}
!247 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug380, !246, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!248 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../fs/ceph/inode.c", i32 1811, i32 2}
!251 = !{ptr @ceph_readdir_prepopulate.__UNIQUE_ID_ddebug381, !250, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!252 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../fs/ceph/inode.c", i32 1821, i32 2}
!255 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @ceph_inode_set_size.__UNIQUE_ID_ddebug382, !254, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!257 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../fs/ceph/inode.c", i32 1841, i32 3}
!260 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @ceph_queue_inode_work.__UNIQUE_ID_ddebug383, !259, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!262 = !{ptr @.str.132, !259, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.133, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../fs/ceph/inode.c", i32 1843, i32 3}
!265 = !{ptr @ceph_queue_inode_work.__UNIQUE_ID_ddebug384, !264, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!266 = !{ptr @.str.134, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../fs/ceph/inode.c", i32 1922, i32 3}
!269 = !{ptr @.str.136, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug388, !268, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!271 = !{ptr @.str.137, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.138, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../fs/ceph/inode.c", i32 1934, i32 3}
!274 = !{ptr @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug389, !273, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!275 = !{ptr @.str.139, !273, !"<string literal>", i1 false, i1 false}
!276 = distinct !{null, !277, !"__already_done", i1 false, i1 false}
!277 = !{!"../fs/ceph/inode.c", i32 1942, i32 2}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ceph/inode.c", i32 1946, i32 2}
!280 = !{ptr @__ceph_do_pending_vmtruncate.__UNIQUE_ID_ddebug390, !279, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!281 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ceph/inode.c", i32 2044, i32 2}
!284 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug392, !283, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!286 = !{ptr @.str.144, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../fs/ceph/inode.c", i32 2047, i32 3}
!289 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug393, !288, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!290 = !{ptr @.str.146, !288, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @.str.147, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../fs/ceph/inode.c", i32 2062, i32 3}
!293 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug394, !292, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!294 = !{ptr @.str.148, !292, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../fs/ceph/inode.c", i32 2077, i32 3}
!297 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug395, !296, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!298 = !{ptr @.str.150, !296, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../fs/ceph/inode.c", i32 2092, i32 3}
!301 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug396, !300, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!302 = !{ptr @.str.152, !300, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../fs/ceph/inode.c", i32 2116, i32 3}
!305 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug397, !304, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!306 = !{ptr @.str.154, !304, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.155, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../fs/ceph/inode.c", i32 2135, i32 3}
!309 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug398, !308, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!310 = !{ptr @.str.156, !308, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.157, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../fs/ceph/inode.c", i32 2161, i32 3}
!313 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug399, !312, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!314 = !{ptr @.str.158, !312, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.159, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @.str.160, !312, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.161, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../fs/ceph/inode.c", i32 2182, i32 3}
!319 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug400, !318, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!320 = !{ptr @.str.162, !318, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.163, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../fs/ceph/inode.c", i32 2207, i32 2}
!323 = !{ptr @__ceph_setattr.__UNIQUE_ID_ddebug401, !322, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!324 = !{ptr @.str.164, !322, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.165, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../fs/ceph/inode.c", i32 2269, i32 3}
!327 = !{ptr @.str.166, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @__ceph_do_getattr.__UNIQUE_ID_ddebug404, !326, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!329 = !{ptr @.str.167, !326, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.168, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../fs/ceph/inode.c", i32 2273, i32 2}
!332 = !{ptr @__ceph_do_getattr.__UNIQUE_ID_ddebug405, !331, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!333 = !{ptr @.str.169, !331, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.170, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../fs/ceph/inode.c", i32 2300, i32 2}
!336 = !{ptr @__ceph_do_getattr.__UNIQUE_ID_ddebug406, !335, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!337 = !{ptr @.str.171, !335, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @.str.172, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../fs/ceph/super.h", i32 552, i32 2}
!340 = !{ptr @ceph_vino_is_reserved._rs, !339, !"_rs", i1 false, i1 false}
!341 = !{ptr @__func__.ceph_vino_is_reserved, !339, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.173, !339, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.174, !339, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../fs/ceph/inode.c", i32 229, i32 3}
!346 = !{ptr @.str.176, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @__ceph_choose_frag.__UNIQUE_ID_ddebug316, !345, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!348 = !{ptr @.str.177, !345, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @.str.178, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../fs/ceph/inode.c", i32 240, i32 2}
!351 = !{ptr @__ceph_choose_frag.__UNIQUE_ID_ddebug317, !350, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!352 = !{ptr @.str.179, !350, !"<string literal>", i1 false, i1 false}
!353 = distinct !{null, !354, !"__already_done", i1 false, i1 false}
!354 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!355 = !{ptr @.str.180, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.181, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../fs/ceph/inode.c", i32 382, i32 2}
!358 = !{ptr @.str.182, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @ceph_fill_fragtree.__UNIQUE_ID_ddebug324, !357, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!360 = !{ptr @.str.183, !357, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @.str.184, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../fs/ceph/inode.c", i32 388, i32 4}
!363 = !{ptr @ceph_fill_fragtree._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @ceph_fill_fragtree._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.185, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../fs/ceph/inode.c", i32 422, i32 3}
!367 = !{ptr @ceph_fill_fragtree.__UNIQUE_ID_ddebug325, !366, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!368 = !{ptr @.str.186, !366, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.187, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../fs/ceph/inode.c", i32 172, i32 2}
!371 = !{ptr @.str.188, !370, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @__get_or_create_frag.__UNIQUE_ID_ddebug315, !370, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!373 = !{ptr @.str.189, !370, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.190, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../fs/ceph/inode.c", i32 288, i32 4}
!376 = !{ptr @.str.191, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @ceph_fill_dirfrag.__UNIQUE_ID_ddebug318, !375, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!378 = !{ptr @.str.192, !375, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @.str.193, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../fs/ceph/inode.c", i32 294, i32 4}
!381 = !{ptr @ceph_fill_dirfrag.__UNIQUE_ID_ddebug319, !380, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!382 = !{ptr @.str.194, !380, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.195, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../fs/ceph/inode.c", i32 308, i32 3}
!385 = !{ptr @ceph_fill_dirfrag._entry, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @ceph_fill_dirfrag._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.196, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../fs/ceph/inode.c", i32 318, i32 2}
!389 = !{ptr @ceph_fill_dirfrag.__UNIQUE_ID_ddebug322, !388, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!390 = !{ptr @.str.197, !388, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.198, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../fs/ceph/inode.c", i32 1106, i32 2}
!393 = !{ptr @.str.199, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @__update_dentry_lease.__UNIQUE_ID_ddebug350, !392, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!395 = !{ptr @.str.200, !392, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @.str.201, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../fs/ceph/inode.c", i32 1239, i32 3}
!398 = !{ptr @.str.202, !397, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @splice_dentry._entry, !397, !"_entry", i1 false, i1 false}
!400 = !{ptr @splice_dentry._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.203, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/ceph/inode.c", i32 1245, i32 3}
!403 = !{ptr @splice_dentry.__UNIQUE_ID_ddebug351, !402, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!404 = !{ptr @.str.204, !402, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.205, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/ceph/inode.c", i32 1254, i32 3}
!407 = !{ptr @splice_dentry.__UNIQUE_ID_ddebug352, !406, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!408 = !{ptr @.str.206, !406, !"<string literal>", i1 false, i1 false}
!409 = !{ptr @.str.207, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"./../include/linux/highmem-internal.h", i32 55, i32 2}
!411 = !{ptr @.str.208, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../include/linux/mm.h", i32 717, i32 2}
!413 = !{ptr @.str.209, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../fs/ceph/inode.c", i32 1549, i32 4}
!415 = !{ptr @.str.210, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @readdir_prepopulate_inodes_only.__UNIQUE_ID_ddebug369, !414, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!417 = !{ptr @.str.211, !414, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @.str.212, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../fs/ceph/inode.c", i32 1555, i32 4}
!420 = !{ptr @readdir_prepopulate_inodes_only._entry, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @readdir_prepopulate_inodes_only._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.213, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../fs/ceph/inode.c", i32 1610, i32 3}
!424 = !{ptr @.str.214, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @fill_readdir_cache.__UNIQUE_ID_ddebug370, !423, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!426 = !{ptr @.str.215, !423, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @.str.216, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../fs/ceph/inode.c", i32 1614, i32 3}
!429 = !{ptr @fill_readdir_cache.__UNIQUE_ID_ddebug371, !428, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!430 = !{ptr @.str.217, !428, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @.str.218, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!433 = distinct !{null, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!435 = !{ptr @.str.220, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../fs/ceph/inode.c", i32 1977, i32 3}
!437 = !{ptr @.str.221, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @ceph_inode_work.__UNIQUE_ID_ddebug391, !436, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!439 = !{ptr @.str.222, !436, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @ceph_do_invalidate_pages._rs, !441, !"_rs", i1 false, i1 false}
!441 = !{!"../fs/ceph/inode.c", i32 1860, i32 3}
!442 = !{ptr @__func__.ceph_do_invalidate_pages, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @.str.223, !441, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @ceph_do_invalidate_pages._entry, !441, !"_entry", i1 false, i1 false}
!445 = !{ptr @ceph_do_invalidate_pages._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!446 = !{ptr @.str.224, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../fs/ceph/inode.c", i32 1869, i32 2}
!448 = !{ptr @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug385, !447, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!449 = !{ptr @.str.225, !447, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @.str.227, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../fs/ceph/inode.c", i32 1883, i32 3}
!452 = !{ptr @ceph_do_invalidate_pages._entry.226, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @ceph_do_invalidate_pages._entry_ptr.228, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.229, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../fs/ceph/inode.c", i32 1890, i32 3}
!456 = !{ptr @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug386, !455, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!457 = !{ptr @.str.230, !455, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @.str.231, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../fs/ceph/inode.c", i32 1895, i32 3}
!460 = !{ptr @ceph_do_invalidate_pages.__UNIQUE_ID_ddebug387, !459, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!461 = !{ptr @.str.232, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @ceph_symlink_iops, !463, !"ceph_symlink_iops", i1 false, i1 false}
!463 = !{!"../fs/ceph/inode.c", i32 1998, i32 38}
!464 = !{!"sp"}
!465 = !{i32 1, !"wchar_size", i32 2}
!466 = !{i32 1, !"min_enum_size", i32 4}
!467 = !{i32 8, !"branch-target-enforcement", i32 0}
!468 = !{i32 8, !"sign-return-address", i32 0}
!469 = !{i32 8, !"sign-return-address-all", i32 0}
!470 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!471 = !{i32 7, !"uwtable", i32 1}
!472 = !{i32 7, !"frame-pointer", i32 2}
!473 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!474 = !{!"branch_weights", i32 2000, i32 1}
!475 = !{i64 2149035819, i64 2149035824, i64 2149035837, i64 2149035881, i64 2149035915, i64 2149035936}
!476 = !{!"branch_weights", i32 1, i32 2000}
!477 = !{i64 2155970031, i64 2155970511, i64 2155970068, i64 2155970124, i64 2155970158, i64 2155970182, i64 2155970223, i64 2155970244, i64 2155970272, i64 2155970306}
!478 = !{i64 2148512311}
!479 = !{i64 2148426751, i64 2148426783, i64 2148426812, i64 2148426846, i64 2148426877, i64 2148426900}
!480 = !{i64 2149372762}
!481 = !{ptr @ceph_buffer_release, ptr @ceph_mdsc_release_request, ptr @ceph_release_string}
!482 = !{i64 826456, i64 826517}
!483 = !{i64 829188}
!484 = !{i64 829473}
!485 = !{i64 2152770316}
!486 = !{i64 2152770158}
!487 = !{i64 2152770486}
!488 = !{i64 2150038919}
!489 = !{i64 2152772247}
!490 = !{i64 2149931251}
!491 = !{i64 2149936183}
!492 = !{i64 2149957895}
!493 = !{i64 2149962787}
!494 = !{i64 2150039244}
!495 = !{i64 2150039569}
!496 = !{i64 2152784109}
!497 = !{!"auto-init"}
!498 = !{i32 0, i32 33}
!499 = !{i64 2156089670}
!500 = !{i64 2155892987}
!501 = !{i64 2156135444, i64 2156135925, i64 2156135481, i64 2156135537, i64 2156135571, i64 2156135595, i64 2156135636, i64 2156135657, i64 2156135685, i64 2156135719}
!502 = !{i64 2156137017, i64 2156137498, i64 2156137054, i64 2156137110, i64 2156137144, i64 2156137168, i64 2156137209, i64 2156137230, i64 2156137258, i64 2156137292}
!503 = !{i64 2156138578, i64 2156139059, i64 2156138615, i64 2156138671, i64 2156138705, i64 2156138729, i64 2156138770, i64 2156138791, i64 2156138819, i64 2156138853}
!504 = !{i64 2156150055, i64 2156150536, i64 2156150092, i64 2156150148, i64 2156150182, i64 2156150206, i64 2156150247, i64 2156150268, i64 2156150296, i64 2156150330}
!505 = !{i64 2156153569, i64 2156154050, i64 2156153606, i64 2156153662, i64 2156153696, i64 2156153720, i64 2156153761, i64 2156153782, i64 2156153810, i64 2156153844}
!506 = !{i64 2156155124, i64 2156155605, i64 2156155161, i64 2156155217, i64 2156155251, i64 2156155275, i64 2156155316, i64 2156155337, i64 2156155365, i64 2156155399}
!507 = !{i64 2156160788, i64 2156161269, i64 2156160825, i64 2156160881, i64 2156160915, i64 2156160939, i64 2156160980, i64 2156161001, i64 2156161029, i64 2156161063}
!508 = !{i64 2156162703, i64 2156163184, i64 2156162740, i64 2156162796, i64 2156162830, i64 2156162854, i64 2156162895, i64 2156162916, i64 2156162944, i64 2156162978}
!509 = !{i64 2156164306, i64 2156164787, i64 2156164343, i64 2156164399, i64 2156164433, i64 2156164457, i64 2156164498, i64 2156164519, i64 2156164547, i64 2156164581}
!510 = !{i64 2156169348, i64 2156169829, i64 2156169385, i64 2156169441, i64 2156169475, i64 2156169499, i64 2156169540, i64 2156169561, i64 2156169589, i64 2156169623}
!511 = !{i64 2156196264, i64 2156196745, i64 2156196301, i64 2156196357, i64 2156196391, i64 2156196415, i64 2156196456, i64 2156196477, i64 2156196505, i64 2156196539}
!512 = !{i64 2156197887, i64 2156198368, i64 2156197924, i64 2156197980, i64 2156198014, i64 2156198038, i64 2156198079, i64 2156198100, i64 2156198128, i64 2156198162}
!513 = !{i64 2156199462, i64 2156199943, i64 2156199499, i64 2156199555, i64 2156199589, i64 2156199613, i64 2156199654, i64 2156199675, i64 2156199703, i64 2156199737}
!514 = !{i64 2156115459, i64 2156115940, i64 2156115496, i64 2156115552, i64 2156115586, i64 2156115610, i64 2156115651, i64 2156115672, i64 2156115700, i64 2156115734}
!515 = !{i64 2156123081, i64 2156123562, i64 2156123118, i64 2156123174, i64 2156123208, i64 2156123232, i64 2156123273, i64 2156123294, i64 2156123322, i64 2156123356}
!516 = !{i64 2153506054, i64 2153506537, i64 2153506091, i64 2153506147, i64 2153506181, i64 2153506205, i64 2153506246, i64 2153506267, i64 2153506295, i64 2153506329}
!517 = !{i64 2148511232}
!518 = !{i64 2148425941, i64 2148425973, i64 2148426002, i64 2148426036, i64 2148426067, i64 2148426090}
!519 = !{i64 2148511461}
!520 = !{i8 0, i8 2}
!521 = !{i64 2150229048, i64 2150229539, i64 2150229085, i64 2150229141, i64 2150229175, i64 2150229199, i64 2150229240, i64 2150229261, i64 2150229289, i64 2150229323}
