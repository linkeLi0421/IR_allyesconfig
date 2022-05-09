; ModuleID = '/llk/IR_all_yes/fs/ceph/debugfs.c_pt.bc'
source_filename = "../fs/ceph/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.111 }
%union.anon.111 = type { ptr, [124 x i8] }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.126], i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.122 }>
%struct.timespec64 = type { i64, i32 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.123 = type { i8, %union.anon.124 }
%union.anon.124 = type <{ %struct.anon.125, [3 x i8] }>
%struct.anon.125 = type { i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.126 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.102 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ceph_mdsmap = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, ptr, i64, i8, i8, i32 }
%struct.ceph_mds_info = type { i64, %struct.ceph_entity_addr, i32, i32, i8, ptr }
%struct.ceph_auth_client = type { i32, ptr, ptr, i8, ptr, i64, ptr, i32, i32, i32, %struct.mutex }
%struct.ceph_options = type { i32, %struct.ceph_fsid, %struct.ceph_entity_addr, i32, i32, i32, i32, i32, [2 x i32], ptr, i32, ptr, ptr, %struct.rb_root }
%struct.ceph_mds_session = type { ptr, i32, i32, i32, i32, i64, %struct.mutex, [4 x i8], %struct.ceph_connection, %struct.ceph_auth_handshake, %struct.atomic_t, i32, %struct.spinlock, %struct.refcount_struct, %struct.list_head, ptr, i32, i32, i32, i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.list_head, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.105, %struct.list_head, %struct.list_head, %union.anon.106 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.spinlock, i32 }
%union.anon.105 = type { %struct.list_head }
%union.anon.106 = type { %struct.hlist_node }
%struct.cap_wait = type { %struct.list_head, i64, i32, i32, i32 }
%struct.ceph_cap = type { ptr, %struct.rb_node, ptr, %struct.list_head, i64, %union.anon.131, i32, i32, i32, i32, i32, %struct.list_head }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i64, i32 }
%struct.anon.132 = type { i32, i32, i32, i32 }

@ceph_fs_debugfs_cleanup.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ceph_fs_debugfs_cleanup\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/ceph/debugfs.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : ceph_fs_debugfs_cleanup\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_fs_debugfs_cleanup\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@ceph_fs_debugfs_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_fs_debugfs_init\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : ceph_fs_debugfs_init\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_fs_debugfs_init\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"writeback_congestion_kb\00", [40 x i8] zeroinitializer }, align 32
@congestion_kb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @simple_attr_read, ptr @simple_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @congestion_kb_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"../../bdi/%s\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bdi\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mdsmap\00", [25 x i8] zeroinitializer }, align 32
@mdsmap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mdsmap_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mds_sessions\00", [19 x i8] zeroinitializer }, align 32
@mds_sessions_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mds_sessions_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdsc\00", [27 x i8] zeroinitializer }, align 32
@mdsc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mdsc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caps\00", [27 x i8] zeroinitializer }, align 32
@caps_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @caps_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"metrics\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"file\00", [27 x i8] zeroinitializer }, align 32
@metrics_file_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @metrics_file_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"latency\00", [24 x i8] zeroinitializer }, align 32
@metrics_latency_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @metrics_latency_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@metrics_size_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @metrics_size_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@metrics_caps_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @metrics_caps_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epoch %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"root %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max_mds %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"session_timeout %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"session_autoclose %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09mds%d\09%s\09(%s)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"global_id %llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"name \22%s\22\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mds.%d %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%lld\09mds%d\09\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%lld\09(no request)\09\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%lld\09(no session)\09\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09(unsafe)\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" #%llx\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" #%llx/%pd (%s)\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" #%llx/%s\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"total\09\09%d\0Aavail\09\09%d\0Aused\09\09%d\0Areserved\09%d\0Amin\09\09%d\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ino              mds  issued           implemented\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"--------------------------------------------------\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0A\0AWaiters:\0A--------\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"tgid         ino                need             want\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"-----------------------------------------------------\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%-13d0x%-17llx%-17s%-17s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0x%-17llx%-3d%-17s%-17s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"instance: %s.%lld %s/%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"blocklisted: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"item                               total\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"------------------------------------------\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%-35s%lld\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"total inodes\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"opened files\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinned i_caps\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"opened inodes\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"item          total       avg_lat(us)     min_lat(us)     max_lat(us)     stdev(us)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"-----------------------------------------------------------------------------------\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%-14s%-12lld%-16lld%-16lld%-16lld%lld\0A\00", [57 x i8] zeroinitializer }, align 32
@metric_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"metadata\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"copyfrom\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"item          total       avg_sz(bytes)   min_sz(bytes)   max_sz(bytes)  total_sz(bytes)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"----------------------------------------------------------------------------------------\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%-14s%-12lld%-16llu%-16llu%-16llu%llu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"item          total           miss            hit\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"-------------------------------------------------\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%-14s%-16lld%-16lld%lld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"d_lease\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%-14s%-16d%-16lld%lld\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 396, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 411, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 413, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"congestion_kb_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 419, i32 31 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 422, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 426, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant [12 x i8] c"mdsmap_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 360, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 432, i32 50 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"mds_sessions_fops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 363, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 438, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"mdsc_fops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 361, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 444, i32 42 }
@___asan_gen_.137 = private unnamed_addr constant [10 x i8] c"caps_fops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 362, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 450, i32 44 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"status_fops\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 364, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 456, i32 48 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 459, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"metrics_file_fops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 365, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 461, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"metrics_latency_fops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 366, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 463, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"metrics_size_fops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 367, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"metrics_caps_fops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 368, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 390, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 34, i32 16 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 35, i32 16 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 36, i32 16 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 37, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 38, i32 16 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 42, i32 17 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 322, i32 16 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 325, i32 16 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 325, i32 57 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 335, i32 17 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 67, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 70, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 72, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 74, i32 17 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 77, i32 16 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 79, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 82, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 89, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 96, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 120, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 123, i32 15 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 271, i32 16 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 277, i32 16 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 278, i32 16 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 296, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 297, i32 16 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 298, i32 16 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 302, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 256, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 353, i32 16 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 355, i32 16 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 355, i32 56 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 355, i32 65 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 154, i32 16 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 155, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 156, i32 16 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 156, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 158, i32 31 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 160, i32 31 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 162, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 181, i32 16 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 182, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 194, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [11 x i8] c"metric_str\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 167, i32 27 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 168, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 169, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 170, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 171, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 209, i32 16 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 210, i32 16 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 224, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 236, i32 16 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 237, i32 16 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 239, i32 16 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 239, i32 45 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private constant [21 x i8] c"../fs/ceph/debugfs.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 245, i32 16 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @congestion_kb_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mdsmap_fops, ptr @.str.13, ptr @mds_sessions_fops, ptr @.str.14, ptr @mdsc_fops, ptr @.str.15, ptr @caps_fops, ptr @.str.16, ptr @status_fops, ptr @.str.17, ptr @.str.18, ptr @metrics_file_fops, ptr @.str.19, ptr @metrics_latency_fops, ptr @.str.20, ptr @metrics_size_fops, ptr @metrics_caps_fops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @metric_str, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @congestion_kb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdsmap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mds_sessions_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdsc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caps_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metrics_file_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metrics_latency_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metrics_size_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metrics_caps_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @metric_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fs_debugfs_cleanup(ptr nocapture noundef readonly %fsc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fs_debugfs_cleanup.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fs_debugfs_cleanup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fs_debugfs_cleanup.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 396) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %debugfs_bdi = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 16
  %0 = ptrtoint ptr %debugfs_bdi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_bdi, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  %debugfs_congestion_kb = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 15
  %2 = ptrtoint ptr %debugfs_congestion_kb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_congestion_kb, align 8
  tail call void @debugfs_remove(ptr noundef %3) #6
  %debugfs_mdsmap = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 18
  %4 = ptrtoint ptr %debugfs_mdsmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_mdsmap, align 4
  tail call void @debugfs_remove(ptr noundef %5) #6
  %debugfs_mds_sessions = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 20
  %6 = ptrtoint ptr %debugfs_mds_sessions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_mds_sessions, align 4
  tail call void @debugfs_remove(ptr noundef %7) #6
  %debugfs_caps = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 14
  %8 = ptrtoint ptr %debugfs_caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_caps, align 4
  tail call void @debugfs_remove(ptr noundef %9) #6
  %debugfs_status = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 19
  %10 = ptrtoint ptr %debugfs_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_status, align 8
  tail call void @debugfs_remove(ptr noundef %11) #6
  %debugfs_mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 17
  %12 = ptrtoint ptr %debugfs_mdsc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_mdsc, align 8
  tail call void @debugfs_remove(ptr noundef %13) #6
  %debugfs_metrics_dir = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 21
  %14 = ptrtoint ptr %debugfs_metrics_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_metrics_dir, align 8
  tail call void @debugfs_remove(ptr noundef %15) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_fs_debugfs_init(ptr noundef %fsc) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 100)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_fs_debugfs_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_fs_debugfs_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_fs_debugfs_init.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 411) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 3
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 8
  %debugfs_dir = getelementptr inbounds %struct.ceph_client, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_dir, align 8
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %4, ptr noundef %fsc, ptr noundef nonnull @congestion_kb_fops) #6
  %debugfs_congestion_kb = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 15
  %5 = ptrtoint ptr %debugfs_congestion_kb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %debugfs_congestion_kb, align 8
  %6 = ptrtoint ptr %fsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsc, align 8
  %s_bdi = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %s_bdi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdi, align 8
  %call5 = tail call ptr @bdi_dev_name(ptr noundef %9) #6
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 100, ptr noundef nonnull @.str.10, ptr noundef %call5)
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 8
  %debugfs_dir8 = getelementptr inbounds %struct.ceph_client, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %debugfs_dir8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_dir8, align 8
  %call10 = call ptr @debugfs_create_symlink(ptr noundef nonnull @.str.11, ptr noundef %13, ptr noundef nonnull %name) #6
  %debugfs_bdi = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 16
  %14 = ptrtoint ptr %debugfs_bdi to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %debugfs_bdi, align 4
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 8
  %debugfs_dir12 = getelementptr inbounds %struct.ceph_client, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %debugfs_dir12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs_dir12, align 8
  %call13 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %fsc, ptr noundef nonnull @mdsmap_fops) #6
  %debugfs_mdsmap = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 18
  %19 = ptrtoint ptr %debugfs_mdsmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %debugfs_mdsmap, align 4
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 8
  %debugfs_dir15 = getelementptr inbounds %struct.ceph_client, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %debugfs_dir15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %debugfs_dir15, align 8
  %call16 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 256, ptr noundef %23, ptr noundef %fsc, ptr noundef nonnull @mds_sessions_fops) #6
  %debugfs_mds_sessions = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 20
  %24 = ptrtoint ptr %debugfs_mds_sessions to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16, ptr %debugfs_mds_sessions, align 4
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 8
  %debugfs_dir18 = getelementptr inbounds %struct.ceph_client, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %debugfs_dir18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debugfs_dir18, align 8
  %call19 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.14, i16 noundef zeroext 256, ptr noundef %28, ptr noundef %fsc, ptr noundef nonnull @mdsc_fops) #6
  %debugfs_mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 17
  %29 = ptrtoint ptr %debugfs_mdsc to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call19, ptr %debugfs_mdsc, align 8
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 8
  %debugfs_dir21 = getelementptr inbounds %struct.ceph_client, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %debugfs_dir21 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %debugfs_dir21, align 8
  %call22 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %33, ptr noundef %fsc, ptr noundef nonnull @caps_fops) #6
  %debugfs_caps = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 14
  %34 = ptrtoint ptr %debugfs_caps to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call22, ptr %debugfs_caps, align 4
  %35 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client, align 8
  %debugfs_dir24 = getelementptr inbounds %struct.ceph_client, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %debugfs_dir24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %debugfs_dir24, align 8
  %call25 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 256, ptr noundef %38, ptr noundef %fsc, ptr noundef nonnull @status_fops) #6
  %debugfs_status = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 19
  %39 = ptrtoint ptr %debugfs_status to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call25, ptr %debugfs_status, align 8
  %40 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client, align 8
  %debugfs_dir27 = getelementptr inbounds %struct.ceph_client, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %debugfs_dir27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %debugfs_dir27, align 8
  %call28 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.17, ptr noundef %43) #6
  %debugfs_metrics_dir = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 21
  %44 = ptrtoint ptr %debugfs_metrics_dir to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call28, ptr %debugfs_metrics_dir, align 8
  %call30 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 256, ptr noundef %call28, ptr noundef %fsc, ptr noundef nonnull @metrics_file_fops) #6
  %45 = ptrtoint ptr %debugfs_metrics_dir to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %debugfs_metrics_dir, align 8
  %call32 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.19, i16 noundef zeroext 256, ptr noundef %46, ptr noundef %fsc, ptr noundef nonnull @metrics_latency_fops) #6
  %47 = ptrtoint ptr %debugfs_metrics_dir to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debugfs_metrics_dir, align 8
  %call34 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.20, i16 noundef zeroext 256, ptr noundef %48, ptr noundef %fsc, ptr noundef nonnull @metrics_size_fops) #6
  %49 = ptrtoint ptr %debugfs_metrics_dir to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %debugfs_metrics_dir, align 8
  %call36 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 256, ptr noundef %50, ptr noundef %fsc, ptr noundef nonnull @metrics_caps_fops) #6
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %name) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @congestion_kb_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @congestion_kb_get, ptr noundef nonnull @congestion_kb_set, ptr noundef nonnull @.str.21) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @congestion_kb_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mount_options, align 4
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %congestion_kb, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @congestion_kb_set(ptr nocapture noundef readonly %data, i64 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mount_options, align 4
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %congestion_kb, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdsmap_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mdsmap_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdsmap_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mdsmap2 = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mdsmap2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdsmap2, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, i32 noundef %7) #6
  %m_root = getelementptr inbounds %struct.ceph_mdsmap, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %m_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m_root, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %9) #6
  %m_max_mds = getelementptr inbounds %struct.ceph_mdsmap, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %m_max_mds to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_max_mds, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %11) #6
  %m_session_timeout = getelementptr inbounds %struct.ceph_mdsmap, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %m_session_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_session_timeout, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %13) #6
  %m_session_autoclose = getelementptr inbounds %struct.ceph_mdsmap, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %m_session_autoclose to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_session_autoclose, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26, i32 noundef %15) #6
  %possible_max_rank = getelementptr inbounds %struct.ceph_mdsmap, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %possible_max_rank, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33.not = icmp eq i32 %17, 0
  br i1 %cmp33.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %m_info = getelementptr inbounds %struct.ceph_mdsmap, ptr %5, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %m_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_info, align 4
  %addr6 = getelementptr %struct.ceph_mds_info, ptr %19, i32 %i.034, i32 1
  %state9 = getelementptr %struct.ceph_mds_info, ptr %19, i32 %i.034, i32 2
  %20 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state9, align 8
  %call = tail call ptr @ceph_pr_addr(ptr noundef %addr6) #6
  %call10 = tail call ptr @ceph_mds_state_name(i32 noundef %21) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %i.034, ptr noundef %call, ptr noundef %call10) #6
  %inc = add nuw i32 %i.034, 1
  %22 = ptrtoint ptr %possible_max_rank to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %possible_max_rank, align 8
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pr_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mds_state_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mds_sessions_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mds_sessions_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mds_sessions_show(ptr noundef %s, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc1, align 8
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %auth = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %auth, align 8
  %options = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %options, align 8
  %mutex = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %global_id = getelementptr inbounds %struct.ceph_auth_client, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %global_id to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %global_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i64 noundef %11) #6
  %name = getelementptr inbounds %struct.ceph_options, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %13, null
  %spec.select = select i1 %tobool.not, ptr @.str.30, ptr %13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, ptr noundef nonnull %spec.select) #6
  %max_sessions = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %max_sessions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_sessions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30 = icmp sgt i32 %15, 0
  br i1 %cmp30, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %mds.031 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call ptr @__ceph_lookup_mds_session(ptr noundef %3, i32 noundef %mds.031) #6
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %s_mds = getelementptr inbounds %struct.ceph_mds_session, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %s_mds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_mds, align 4
  %s_state = getelementptr inbounds %struct.ceph_mds_session, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %s_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_state, align 8
  %call6 = tail call ptr @ceph_session_state_name(i32 noundef %19) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, i32 noundef %17, ptr noundef %call6) #6
  tail call void @ceph_put_mds_session(ptr noundef nonnull %call) #6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %mds.031, 1
  %20 = ptrtoint ptr %max_sessions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_sessions, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ceph_lookup_mds_session(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_session_state_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_put_mds_session(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdsc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mdsc_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdsc_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %pathlen = alloca i32, align 4
  %pathbase = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pathlen) #6
  %4 = ptrtoint ptr %pathlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pathlen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pathbase) #6
  %5 = ptrtoint ptr %pathbase to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %pathbase, align 8, !annotation !180
  %mutex = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %request_tree = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 22
  %call = tail call ptr @rb_first(ptr noundef %request_tree) #6
  %tobool.not168 = icmp eq ptr %call, null
  br i1 %tobool.not168, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end90.for.body_crit_edge, %entry.for.body_crit_edge
  %rp.0169 = phi ptr [ %call91, %if.end90.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %rp.0169, i32 -8
  %r_request = getelementptr i8, ptr %rp.0169, i32 312
  %6 = ptrtoint ptr %r_request to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %r_request, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then7, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %r_session = getelementptr i8, ptr %rp.0169, i32 660
  %8 = ptrtoint ptr %r_session to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %r_session, align 4
  %tobool3.not = icmp eq ptr %9, null
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr, align 8
  br i1 %tobool3.not, label %if.else9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %s_mds = getelementptr inbounds %struct.ceph_mds_session, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %s_mds to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mds, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i64 noundef %11, i32 noundef %13) #6
  br label %if.end11

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i64 noundef %15) #6
  br label %if.end11

if.else9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i64 noundef %11) #6
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7, %if.then
  %r_op = getelementptr i8, ptr %rp.0169, i32 20
  %16 = ptrtoint ptr %r_op to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r_op, align 4
  %call12 = call ptr @ceph_mds_op_name(i32 noundef %17) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef %call12) #6
  %r_req_flags = getelementptr i8, ptr %rp.0169, i32 88
  %18 = ptrtoint ptr %r_req_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %r_req_flags, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  %.str.37..str.36 = select i1 %tobool14.not, ptr @.str.37, ptr @.str.36
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.37..str.36) #6
  %r_inode = getelementptr i8, ptr %rp.0169, i32 24
  %21 = ptrtoint ptr %r_inode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %r_inode, align 8
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %if.else22, label %if.then19

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 -952
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i64 noundef %24) #6
  br label %if.end48

if.else22:                                        ; preds = %if.end11
  %r_dentry = getelementptr i8, ptr %rp.0169, i32 28
  %25 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %r_dentry, align 4
  %tobool23.not = icmp eq ptr %26, null
  br i1 %tobool23.not, label %if.else39, label %if.then24

if.then24:                                        ; preds = %if.else22
  %call26 = call ptr @ceph_mdsc_build_path(ptr noundef nonnull %26, ptr noundef nonnull %pathlen, ptr noundef nonnull %pathbase, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %call26
  %27 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %r_dentry, align 4
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref) #6
  %29 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %r_dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i.i160 = getelementptr i8, ptr %34, i32 -952
  %35 = ptrtoint ptr %add.ptr.i.i160 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i.i160, align 8
  %tobool35.not = icmp eq ptr %spec.select, null
  %cond = select i1 %tobool35.not, ptr @.str.30, ptr %spec.select
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i64 noundef %36, ptr noundef %30, ptr noundef nonnull %cond) #6
  %37 = ptrtoint ptr %r_dentry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %r_dentry, align 4
  %d_lockref37 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 7
  call void @_raw_spin_unlock(ptr noundef %d_lockref37) #6
  br i1 %tobool35.not, label %if.then24.if.end48_crit_edge, label %if.then.i

if.then24.if.end48_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %pathlen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pathlen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %41 = load ptr, ptr @names_cachep, align 4
  %sub.neg.i = add i32 %40, -4095
  %add.ptr.i = getelementptr i8, ptr %spec.select, i32 %sub.neg.i
  call void @kmem_cache_free(ptr noundef %41, ptr noundef %add.ptr.i) #6
  br label %if.end48

if.else39:                                        ; preds = %if.else22
  %r_path1 = getelementptr i8, ptr %rp.0169, i32 40
  %42 = ptrtoint ptr %r_path1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %r_path1, align 8
  %tobool40.not = icmp eq ptr %43, null
  %r_ino144 = getelementptr i8, ptr %rp.0169, i32 48
  %44 = ptrtoint ptr %r_ino144 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %r_ino144, align 8
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i64 noundef %45, ptr noundef nonnull %43) #6
  br label %if.end48

if.else43:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i64 noundef %45) #6
  br label %if.end48

if.end48:                                         ; preds = %if.else43, %if.then41, %if.then.i, %if.then24.if.end48_crit_edge, %if.then19
  %r_old_dentry = getelementptr i8, ptr %rp.0169, i32 32
  %46 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %r_old_dentry, align 8
  %tobool49.not = icmp eq ptr %47, null
  br i1 %tobool49.not, label %if.else75, label %if.then50

if.then50:                                        ; preds = %if.end48
  %call52 = call ptr @ceph_mdsc_build_path(ptr noundef nonnull %47, ptr noundef nonnull %pathlen, ptr noundef nonnull %pathbase, i32 noundef 0) #6
  %cmp.i161 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  %spec.select158 = select i1 %cmp.i161, ptr null, ptr %call52
  %48 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %r_old_dentry, align 8
  %d_lockref57 = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref57) #6
  %r_old_dentry_dir = getelementptr i8, ptr %rp.0169, i32 36
  %50 = ptrtoint ptr %r_old_dentry_dir to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %r_old_dentry_dir, align 4
  %tobool59.not = icmp eq ptr %51, null
  br i1 %tobool59.not, label %if.then50.cond.end64_crit_edge, label %cond.true60

if.then50.cond.end64_crit_edge:                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end64

cond.true60:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i162 = getelementptr i8, ptr %51, i32 -952
  %52 = ptrtoint ptr %add.ptr.i.i162 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr.i.i162, align 8
  br label %cond.end64

cond.end64:                                       ; preds = %cond.true60, %if.then50.cond.end64_crit_edge
  %cond65 = phi i64 [ %53, %cond.true60 ], [ 0, %if.then50.cond.end64_crit_edge ]
  %54 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %r_old_dentry, align 8
  %tobool67.not = icmp eq ptr %spec.select158, null
  %spec.select159 = select i1 %tobool67.not, ptr @.str.30, ptr %spec.select158
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i64 noundef %cond65, ptr noundef %55, ptr noundef nonnull %spec.select159) #6
  %56 = ptrtoint ptr %r_old_dentry to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %r_old_dentry, align 8
  %d_lockref73 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 7
  call void @_raw_spin_unlock(ptr noundef %d_lockref73) #6
  br i1 %tobool67.not, label %cond.end64.if.end90_crit_edge, label %if.then.i166

cond.end64.if.end90_crit_edge:                    ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then.i166:                                     ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %pathlen to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pathlen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %60 = load ptr, ptr @names_cachep, align 4
  %sub.neg.i164 = add i32 %59, -4095
  %add.ptr.i165 = getelementptr i8, ptr %spec.select158, i32 %sub.neg.i164
  call void @kmem_cache_free(ptr noundef %60, ptr noundef %add.ptr.i165) #6
  br label %if.end90

if.else75:                                        ; preds = %if.end48
  %r_path2 = getelementptr i8, ptr %rp.0169, i32 44
  %61 = ptrtoint ptr %r_path2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %r_path2, align 4
  %tobool76.not = icmp eq ptr %62, null
  br i1 %tobool76.not, label %if.else75.if.end90_crit_edge, label %land.lhs.true77

if.else75.if.end90_crit_edge:                     ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

land.lhs.true77:                                  ; preds = %if.else75
  %63 = ptrtoint ptr %r_op to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %r_op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4642, i32 %64)
  %cmp.not = icmp eq i32 %64, 4642
  br i1 %cmp.not, label %land.lhs.true77.if.end90_crit_edge, label %if.then79

land.lhs.true77.if.end90_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then79:                                        ; preds = %land.lhs.true77
  %r_ino2 = getelementptr i8, ptr %rp.0169, i32 64
  %65 = ptrtoint ptr %r_ino2 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %r_ino2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %tobool81.not = icmp eq i64 %66, 0
  br i1 %tobool81.not, label %if.else86, label %if.then82

if.then82:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i64 noundef %66, ptr noundef nonnull %62) #6
  br label %if.end90

if.else86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, ptr noundef nonnull %62) #6
  br label %if.end90

if.end90:                                         ; preds = %if.else86, %if.then82, %land.lhs.true77.if.end90_crit_edge, %if.else75.if.end90_crit_edge, %if.then.i166, %cond.end64.if.end90_crit_edge
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.42) #6
  %call91 = call ptr @rb_next(ptr noundef nonnull %rp.0169) #6
  %tobool.not = icmp eq ptr %call91, null
  br i1 %tobool.not, label %if.end90.for.end_crit_edge, label %if.end90.for.body_crit_edge

if.end90.for.body_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end90.for.end_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end90.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pathbase) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pathlen) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mds_op_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_build_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caps_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @caps_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caps_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  %total = alloca i32, align 4
  %avail = alloca i32, align 4
  %used = alloca i32, align 4
  %reserved = alloca i32, align 4
  %min = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %total) #6
  %4 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %total, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail) #6
  %5 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %avail, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used) #6
  %6 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %used, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved) #6
  %7 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reserved, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min) #6
  %8 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %min, align 4, !annotation !180
  call void @ceph_reservation_status(ptr noundef %1, ptr noundef nonnull %total, ptr noundef nonnull %avail, ptr noundef nonnull %used, ptr noundef nonnull %reserved, ptr noundef nonnull %min) #6
  %9 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total, align 4
  %11 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %avail, align 4
  %13 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used, align 4
  %15 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reserved, align 4
  %17 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45) #6
  %mutex = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %max_sessions = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 9
  %19 = ptrtoint ptr %max_sessions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_sessions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp59 = icmp sgt i32 %20, 0
  br i1 %cmp59, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = call ptr @__ceph_lookup_mds_session(ptr noundef %3, i32 noundef %i.060) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %mutex) #6
  %s_mutex = getelementptr inbounds %struct.ceph_mds_session, ptr %call, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %s_mutex, i32 noundef 0) #6
  %call3 = call i32 @ceph_iterate_session_caps(ptr noundef nonnull %call, ptr noundef nonnull @caps_show_cb, ptr noundef %s) #6
  call void @mutex_unlock(ptr noundef %s_mutex) #6
  call void @ceph_put_mds_session(ptr noundef nonnull %call) #6
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %21 = ptrtoint ptr %max_sessions to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_sessions, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48) #6
  %caps_list_lock = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 37
  call void @_raw_spin_lock(ptr noundef %caps_list_lock) #6
  %cap_wait_list = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 39
  %23 = ptrtoint ptr %cap_wait_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %cw.061 = load ptr, ptr %cap_wait_list, align 8
  %cmp9.not62 = icmp eq ptr %cw.061, %cap_wait_list
  br i1 %cmp9.not62, label %for.end.for.end19_crit_edge, label %for.end.for.body10_crit_edge

for.end.for.body10_crit_edge:                     ; preds = %for.end
  br label %for.body10

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.end.for.body10_crit_edge
  %cw.063 = phi ptr [ %cw.0, %for.body10.for.body10_crit_edge ], [ %cw.061, %for.end.for.body10_crit_edge ]
  %tgid = getelementptr inbounds %struct.cap_wait, ptr %cw.063, i32 0, i32 2
  %24 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tgid, align 8
  %ino = getelementptr inbounds %struct.cap_wait, ptr %cw.063, i32 0, i32 1
  %26 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %ino, align 8
  %need = getelementptr inbounds %struct.cap_wait, ptr %cw.063, i32 0, i32 3
  %28 = ptrtoint ptr %need to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %need, align 4
  %call11 = call ptr @ceph_cap_string(i32 noundef %29) #6
  %want = getelementptr inbounds %struct.cap_wait, ptr %cw.063, i32 0, i32 4
  %30 = ptrtoint ptr %want to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %want, align 8
  %call12 = call ptr @ceph_cap_string(i32 noundef %31) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %25, i64 noundef %27, ptr noundef %call11, ptr noundef %call12) #6
  %32 = ptrtoint ptr %cw.063 to i32
  call void @__asan_load4_noabort(i32 %32)
  %cw.0 = load ptr, ptr %cw.063, align 8
  %cmp9.not = icmp eq ptr %cw.0, %cap_wait_list
  br i1 %cmp9.not, label %for.body10.for.end19_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.body10.for.end19_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

for.end19:                                        ; preds = %for.body10.for.end19_crit_edge, %for.end.for.end19_crit_edge
  call void @_raw_spin_unlock(ptr noundef %caps_list_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %total) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_reservation_status(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_iterate_session_caps(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caps_show_cb(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %cap, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -952
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i.i, align 8
  %session = getelementptr inbounds %struct.ceph_cap, ptr %cap, i32 0, i32 2
  %2 = ptrtoint ptr %session to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %session, align 8
  %s_mds = getelementptr inbounds %struct.ceph_mds_session, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %s_mds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_mds, align 4
  %6 = getelementptr inbounds %struct.ceph_cap, ptr %cap, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %call1 = tail call ptr @ceph_cap_string(i32 noundef %8) #6
  %implemented = getelementptr inbounds %struct.anon.132, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %implemented to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %implemented, align 4
  %call2 = tail call ptr @ceph_cap_string(i32 noundef %10) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.50, i64 noundef %1, i32 noundef %5, ptr noundef %call1, ptr noundef %call2) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_cap_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @status_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 8
  %msgr = getelementptr inbounds %struct.ceph_client, ptr %3, i32 0, i32 10
  %call = tail call ptr @ceph_client_addr(ptr noundef %3) #6
  %4 = ptrtoint ptr %msgr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %msgr, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call ptr @ceph_entity_type_name(i32 noundef %conv) #6
  %num = getelementptr inbounds %struct.ceph_client, ptr %3, i32 0, i32 10, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %num, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %call5 = tail call ptr @ceph_pr_addr(ptr noundef %call) #6
  %nonce = getelementptr inbounds %struct.ceph_entity_addr, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %nonce to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %nonce, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %call3, i64 noundef %8, ptr noundef %call5, i32 noundef %11) #6
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %blocklisted to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %blocklisted, align 8, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool.not, ptr @.str.54, ptr @.str.53
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_client_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_entity_type_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_file_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @metrics_file_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_file_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56) #6
  %total_inodes = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 9
  %call.i15 = tail call i64 @__percpu_counter_sum(ptr noundef %total_inodes) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i64 noundef %call.i15) #6
  %opened_files = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %opened_files, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %opened_files) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59, i64 noundef %call.i) #6
  %total_caps = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 3
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_caps, i32 noundef 8) #6
  %call.i14 = tail call i64 @generic_atomic64_read(ptr noundef %total_caps) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.60, i64 noundef %call.i14) #6
  %opened_inodes = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 8
  %call.i16 = tail call i64 @__percpu_counter_sum(ptr noundef %opened_inodes) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.61, i64 noundef %call.i16) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_latency_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @metrics_latency_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_latency_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63) #6
  br label %for.body

for.body:                                         ; preds = %cond.end21.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %cond.end21.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 %i.069
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #6
  %total2 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 %i.069, i32 1
  %4 = ptrtoint ptr %total2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp3 = icmp sgt i64 %5, 0
  br i1 %cmp3, label %cond.true, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %latency_sum = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 %i.069, i32 5
  %6 = ptrtoint ptr %latency_sum to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %latency_sum, align 8
  %div48 = lshr i64 %5, 1
  %add = add i64 %7, %div48
  %call = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %5) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body.cond.end_crit_edge
  %cond = phi i64 [ %call, %cond.true ], [ 0, %for.body.cond.end_crit_edge ]
  %latency_min = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 %i.069, i32 7
  %8 = ptrtoint ptr %latency_min to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %latency_min, align 8
  %latency_max = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 %i.069, i32 8
  %10 = ptrtoint ptr %latency_max to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %latency_max, align 8
  %latency_sq_sum = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 %i.069, i32 6
  %12 = ptrtoint ptr %latency_sq_sum to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %latency_sq_sum, align 8
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond)
  %cmp8.i.i = icmp slt i64 %cond, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %cond, i1 false) #6
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %14, i32 0) #9, !srcloc !182
  %asmresult.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %14, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !183
  %asmresult10.i.i.i = extractvalue { i64, i32 } %16, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %spec.select70 = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %9)
  %cmp6 = icmp eq i64 %9, 9223372036854775807
  %spec.select = select i1 %cmp6, i64 0, i64 %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp8.i.i49 = icmp slt i64 %spec.select, 0
  %17 = tail call i64 @llvm.abs.i64(i64 %spec.select, i1 false) #6
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %17, i32 0) #9, !srcloc !182
  %asmresult.i.i.i50 = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i.i51 = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %17, i64 %asmresult.i.i.i50, i32 %asmresult4.i.i.i51) #9, !srcloc !183
  %asmresult10.i.i.i52 = extractvalue { i64, i32 } %19, 0
  %div1811.i.i53 = lshr i64 %asmresult10.i.i.i52, 9
  %sub210.i.i54 = sub nsw i64 0, %div1811.i.i53
  %cond213.i.i55 = select i1 %cmp8.i.i49, i64 %sub210.i.i54, i64 %div1811.i.i53
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp8.i.i56 = icmp slt i64 %11, 0
  %20 = tail call i64 @llvm.abs.i64(i64 %11, i1 false) #6
  %21 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %20, i32 0) #9, !srcloc !182
  %asmresult.i.i.i57 = extractvalue { i64, i32 } %21, 0
  %asmresult4.i.i.i58 = extractvalue { i64, i32 } %21, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %20, i64 %asmresult.i.i.i57, i32 %asmresult4.i.i.i58) #9, !srcloc !183
  %asmresult10.i.i.i59 = extractvalue { i64, i32 } %22, 0
  %div1811.i.i60 = lshr i64 %asmresult10.i.i.i59, 9
  %sub210.i.i61 = sub nsw i64 0, %div1811.i.i60
  %cond213.i.i62 = select i1 %cmp8.i.i56, i64 %sub210.i.i61, i64 %div1811.i.i60
  %sub = add i64 %5, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp13 = icmp sgt i64 %sub, 0
  br i1 %cmp13, label %cond.true14, label %cond.end.cond.end21_crit_edge

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end21

cond.true14:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %div1747 = lshr i64 %sub, 1
  %add18 = add i64 %13, %div1747
  %call19 = tail call i64 @div64_u64(i64 noundef %add18, i64 noundef %sub) #6
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true14, %cond.end.cond.end21_crit_edge
  %cond22 = phi i64 [ %call19, %cond.true14 ], [ 0, %cond.end.cond.end21_crit_edge ]
  %call23 = tail call i32 @int_sqrt64(i64 noundef %cond22) #6
  %conv = zext i32 %call23 to i64
  %23 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i32 0) #9, !srcloc !182
  %asmresult.i.i.i63 = extractvalue { i64, i32 } %23, 0
  %asmresult4.i.i.i64 = extractvalue { i64, i32 } %23, 1
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %conv, i64 %asmresult.i.i.i63, i32 %asmresult4.i.i.i64) #9, !srcloc !183
  %asmresult10.i.i.i65 = extractvalue { i64, i32 } %24, 0
  %div1811.i.i66 = lshr i64 %asmresult10.i.i.i65, 9
  %arrayidx25 = getelementptr [4 x ptr], ptr @metric_str, i32 0, i32 %i.069
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, ptr noundef %26, i64 noundef %5, i64 noundef %spec.select70, i64 noundef %cond213.i.i55, i64 noundef %cond213.i.i62, i64 noundef %div1811.i.i66) #6
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %cond.end21.for.body_crit_edge

cond.end21.for.body_crit_edge:                    ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt64(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_size_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @metrics_size_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_size_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.69) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.70) #6
  %arrayidx = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 0
  tail call void @_raw_spin_lock(ptr noundef %arrayidx) #6
  %total3 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 0, i32 1
  %4 = ptrtoint ptr %total3 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %total3, align 8
  %size_sum = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %size_sum to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size_sum, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp4 = icmp sgt i64 %5, 0
  br i1 %cmp4, label %cond.true, label %if.end.if.end.1_crit_edge

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div30 = lshr i64 %5, 1
  %add = add i64 %7, %div30
  %call = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %5) #6
  br label %if.end.1

if.end.1:                                         ; preds = %cond.true, %if.end.if.end.1_crit_edge
  %cond = phi i64 [ %call, %cond.true ], [ 0, %if.end.if.end.1_crit_edge ]
  %size_min = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 0, i32 3
  %8 = ptrtoint ptr %size_min to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size_min, align 8
  %size_max = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 0, i32 4
  %10 = ptrtoint ptr %size_max to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size_max, align 8
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp6 = icmp eq i64 %9, -1
  %spec.select = select i1 %cmp6, i64 0, i64 %9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.65, i64 noundef %5, i64 noundef %cond, i64 noundef %spec.select, i64 noundef %11, i64 noundef %7) #6
  %arrayidx.1 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 1
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.1) #6
  %total3.1 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 1, i32 1
  %12 = ptrtoint ptr %total3.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %total3.1, align 8
  %size_sum.1 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 1, i32 2
  %14 = ptrtoint ptr %size_sum.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size_sum.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp4.1 = icmp sgt i64 %13, 0
  br i1 %cmp4.1, label %cond.true.1, label %if.end.1.if.end.3_crit_edge

if.end.1.if.end.3_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

cond.true.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %div30.1 = lshr i64 %13, 1
  %add.1 = add i64 %15, %div30.1
  %call.1 = tail call i64 @div64_u64(i64 noundef %add.1, i64 noundef %13) #6
  br label %if.end.3

if.end.3:                                         ; preds = %cond.true.1, %if.end.1.if.end.3_crit_edge
  %cond.1 = phi i64 [ %call.1, %cond.true.1 ], [ 0, %if.end.1.if.end.3_crit_edge ]
  %size_min.1 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 1, i32 3
  %16 = ptrtoint ptr %size_min.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size_min.1, align 8
  %size_max.1 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 1, i32 4
  %18 = ptrtoint ptr %size_max.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %size_max.1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.1) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp6.1 = icmp eq i64 %17, -1
  %spec.select.1 = select i1 %cmp6.1, i64 0, i64 %17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66, i64 noundef %13, i64 noundef %cond.1, i64 noundef %spec.select.1, i64 noundef %19, i64 noundef %15) #6
  %arrayidx.3 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 3
  tail call void @_raw_spin_lock(ptr noundef %arrayidx.3) #6
  %total3.3 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 3, i32 1
  %20 = ptrtoint ptr %total3.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %total3.3, align 8
  %size_sum.3 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 3, i32 2
  %22 = ptrtoint ptr %size_sum.3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %size_sum.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp4.3 = icmp sgt i64 %21, 0
  br i1 %cmp4.3, label %cond.true.3, label %if.end.3.for.inc.3_crit_edge

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

cond.true.3:                                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  %div30.3 = lshr i64 %21, 1
  %add.3 = add i64 %23, %div30.3
  %call.3 = tail call i64 @div64_u64(i64 noundef %add.3, i64 noundef %21) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.true.3, %if.end.3.for.inc.3_crit_edge
  %cond.3 = phi i64 [ %call.3, %cond.true.3 ], [ 0, %if.end.3.for.inc.3_crit_edge ]
  %size_min.3 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 3, i32 3
  %24 = ptrtoint ptr %size_min.3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %size_min.3, align 8
  %size_max.3 = getelementptr %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 6, i32 3, i32 4
  %26 = ptrtoint ptr %size_max.3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size_max.3, align 8
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx.3) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp6.3 = icmp eq i64 %25, -1
  %spec.select.3 = select i1 %cmp6.3, i64 0, i64 %25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.68, i64 noundef %21, i64 noundef %cond.3, i64 noundef %spec.select.3, i64 noundef %27, i64 noundef %23) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_caps_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @metrics_caps_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @metrics_caps_show(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  %metric = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %metric, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %metric) #6
  %d_lease_mis = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 2
  %call.i17 = tail call i64 @__percpu_counter_sum(ptr noundef %d_lease_mis) #6
  %d_lease_hit = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 1
  %call.i18 = tail call i64 @__percpu_counter_sum(ptr noundef %d_lease_hit) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i64 noundef %call.i, i64 noundef %call.i17, i64 noundef %call.i18) #6
  %total_caps = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 3
  %call.i.i15 = tail call zeroext i1 @__kasan_check_read(ptr noundef %total_caps, i32 noundef 8) #6
  %call.i16 = tail call i64 @generic_atomic64_read(ptr noundef %total_caps) #6
  %conv = trunc i64 %call.i16 to i32
  %i_caps_mis = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 5
  %call.i19 = tail call i64 @__percpu_counter_sum(ptr noundef %i_caps_mis) #6
  %i_caps_hit = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 4
  %call.i20 = tail call i64 @__percpu_counter_sum(ptr noundef %i_caps_hit) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.15, i32 noundef %conv, i64 noundef %call.i19, i64 noundef %call.i20) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/debugfs.c", i32 396, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_fs_debugfs_cleanup.__UNIQUE_ID_ddebug314, !1, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ceph/debugfs.c", i32 411, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ceph_fs_debugfs_init.__UNIQUE_ID_ddebug315, !9, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ceph/debugfs.c", i32 413, i32 23}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ceph/debugfs.c", i32 419, i32 31}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ceph/debugfs.c", i32 422, i32 26}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/ceph/debugfs.c", i32 426, i32 44}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ceph/debugfs.c", i32 432, i32 50}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ceph/debugfs.c", i32 438, i32 42}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/ceph/debugfs.c", i32 444, i32 42}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ceph/debugfs.c", i32 450, i32 44}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ceph/debugfs.c", i32 456, i32 48}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ceph/debugfs.c", i32 459, i32 22}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ceph/debugfs.c", i32 461, i32 22}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ceph/debugfs.c", i32 463, i32 22}
!37 = !{ptr @congestion_kb_fops, !38, !"congestion_kb_fops", i1 false, i1 false}
!38 = !{!"../fs/ceph/debugfs.c", i32 390, i32 1}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mdsmap_fops, !41, !"mdsmap_fops", i1 false, i1 false}
!41 = !{!"../fs/ceph/debugfs.c", i32 360, i32 1}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/ceph/debugfs.c", i32 34, i32 16}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../fs/ceph/debugfs.c", i32 35, i32 16}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/ceph/debugfs.c", i32 36, i32 16}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/ceph/debugfs.c", i32 37, i32 16}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/ceph/debugfs.c", i32 38, i32 16}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../fs/ceph/debugfs.c", i32 42, i32 17}
!54 = !{ptr @mds_sessions_fops, !55, !"mds_sessions_fops", i1 false, i1 false}
!55 = !{!"../fs/ceph/debugfs.c", i32 363, i32 1}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ceph/debugfs.c", i32 322, i32 16}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ceph/debugfs.c", i32 325, i32 16}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ceph/debugfs.c", i32 325, i32 57}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ceph/debugfs.c", i32 335, i32 17}
!64 = !{ptr @mdsc_fops, !65, !"mdsc_fops", i1 false, i1 false}
!65 = !{!"../fs/ceph/debugfs.c", i32 361, i32 1}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ceph/debugfs.c", i32 67, i32 18}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ceph/debugfs.c", i32 70, i32 18}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ceph/debugfs.c", i32 72, i32 18}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ceph/debugfs.c", i32 74, i32 17}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ceph/debugfs.c", i32 77, i32 16}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ceph/debugfs.c", i32 79, i32 16}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ceph/debugfs.c", i32 82, i32 18}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ceph/debugfs.c", i32 89, i32 18}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ceph/debugfs.c", i32 96, i32 18}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ceph/debugfs.c", i32 120, i32 19}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ceph/debugfs.c", i32 123, i32 15}
!88 = !{ptr @caps_fops, !89, !"caps_fops", i1 false, i1 false}
!89 = !{!"../fs/ceph/debugfs.c", i32 362, i32 1}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ceph/debugfs.c", i32 271, i32 16}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ceph/debugfs.c", i32 277, i32 16}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ceph/debugfs.c", i32 278, i32 16}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ceph/debugfs.c", i32 296, i32 16}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ceph/debugfs.c", i32 297, i32 16}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ceph/debugfs.c", i32 298, i32 16}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ceph/debugfs.c", i32 302, i32 17}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ceph/debugfs.c", i32 256, i32 16}
!106 = !{ptr @status_fops, !107, !"status_fops", i1 false, i1 false}
!107 = !{!"../fs/ceph/debugfs.c", i32 364, i32 1}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ceph/debugfs.c", i32 353, i32 16}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../fs/ceph/debugfs.c", i32 355, i32 16}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/ceph/debugfs.c", i32 355, i32 56}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../fs/ceph/debugfs.c", i32 355, i32 65}
!116 = !{ptr @metrics_file_fops, !117, !"metrics_file_fops", i1 false, i1 false}
!117 = !{!"../fs/ceph/debugfs.c", i32 365, i32 1}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../fs/ceph/debugfs.c", i32 154, i32 16}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/ceph/debugfs.c", i32 155, i32 16}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/ceph/debugfs.c", i32 156, i32 16}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../fs/ceph/debugfs.c", i32 156, i32 31}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/ceph/debugfs.c", i32 158, i32 31}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../fs/ceph/debugfs.c", i32 160, i32 31}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/ceph/debugfs.c", i32 162, i32 31}
!132 = !{ptr @metrics_latency_fops, !133, !"metrics_latency_fops", i1 false, i1 false}
!133 = !{!"../fs/ceph/debugfs.c", i32 366, i32 1}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/ceph/debugfs.c", i32 181, i32 16}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/ceph/debugfs.c", i32 182, i32 16}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/ceph/debugfs.c", i32 194, i32 3}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ceph/debugfs.c", i32 168, i32 2}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ceph/debugfs.c", i32 169, i32 2}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ceph/debugfs.c", i32 170, i32 2}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../fs/ceph/debugfs.c", i32 171, i32 2}
!148 = !{ptr @metric_str, !149, !"metric_str", i1 false, i1 false}
!149 = !{!"../fs/ceph/debugfs.c", i32 167, i32 27}
!150 = !{ptr @metrics_size_fops, !151, !"metrics_size_fops", i1 false, i1 false}
!151 = !{!"../fs/ceph/debugfs.c", i32 367, i32 1}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ceph/debugfs.c", i32 209, i32 16}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../fs/ceph/debugfs.c", i32 210, i32 16}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ceph/debugfs.c", i32 224, i32 3}
!158 = !{ptr @metrics_caps_fops, !159, !"metrics_caps_fops", i1 false, i1 false}
!159 = !{!"../fs/ceph/debugfs.c", i32 368, i32 1}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ceph/debugfs.c", i32 236, i32 16}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/ceph/debugfs.c", i32 237, i32 16}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/ceph/debugfs.c", i32 239, i32 16}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/ceph/debugfs.c", i32 239, i32 45}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/ceph/debugfs.c", i32 245, i32 16}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 2148312408, i64 2148312413, i64 2148312426, i64 2148312470, i64 2148312504, i64 2148312525}
!180 = !{!"auto-init"}
!181 = !{i8 0, i8 2}
!182 = !{i64 852051, i64 852078, i64 852100, i64 852128}
!183 = !{i64 852459, i64 852486, i64 852519, i64 852540, i64 852567, i64 852593}
