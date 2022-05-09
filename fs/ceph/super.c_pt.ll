; ModuleID = '/llk/IR_all_yes/fs/ceph/super.c_pt.bc'
source_filename = "../fs/ceph/super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.113 }
%union.anon.113 = type { ptr, [124 x i8] }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.128], i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.124 }>
%struct.timespec64 = type { i64, i32 }
%union.anon.124 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.125 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.95, %union.anon.96 }
%union.anon.95 = type { ptr }
%union.anon.96 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.119 }
%union.anon.119 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.125 = type { i8, %union.anon.126 }
%union.anon.126 = type <{ %struct.anon.127, [3 x i8] }>
%struct.anon.127 = type { i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.128 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.106, %struct.list_head, %struct.list_head, %union.anon.107 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.104 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.spinlock, i32 }
%union.anon.106 = type { %struct.list_head }
%union.anon.107 = type { %struct.hlist_node }
%struct.ceph_parse_opts_ctx = type { ptr, ptr }
%struct.ceph_mount_options = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parse_result = type { i8, %union.anon.108 }
%union.anon.108 = type { i64 }
%struct.fs_parameter = type { ptr, i8, %union.anon, i32, i32 }
%union.anon = type { ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.60 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ceph_options = type { i32, %struct.ceph_fsid, %struct.ceph_entity_addr, i32, i32, i32, i32, i32, [2 x i32], ptr, i32, ptr, ptr, %struct.rb_root }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%struct.ceph_statfs = type { i64, i64, i64, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.98, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.99, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.100, ptr, %struct.address_space, %struct.list_head, %union.anon.103, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.98 = type { i32 }
%union.anon.99 = type { %struct.callback_head }
%union.anon.100 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.103 = type { ptr }
%struct.ceph_mdsmap = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, ptr, i64, i8, i8, i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%struct.ceph_vino = type { i64, i64 }
%union.ceph_mds_request_args = type { %struct.anon.142, [16 x i8] }
%struct.anon.142 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.147, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.147 = type { %struct.anon.149, [8 x i8] }
%struct.anon.149 = type { i8, i64 }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.ceph_inode_info = type { %struct.ceph_vino, %struct.spinlock, i64, i64, i32, i32, %struct.atomic64_t, %struct.atomic64_t, [2 x %struct.atomic64_t], %struct.ceph_dir_layout, %struct.ceph_file_layout, %struct.ceph_file_layout, ptr, %struct.timespec64, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.rb_root, i32, %struct.mutex, %struct.ceph_inode_xattrs_info, %struct.rb_root, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.wait_queue_head, i32, %struct.list_head, %struct.ceph_cap_reservation, %struct.list_head, ptr, i32, i32, i32, [4 x i32], %struct.mutex, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %union.anon.130, %struct.list_head, %struct.list_head, %struct.timespec64, %struct.timespec64, %struct.work_struct, i32, ptr, %struct.inode }
%struct.ceph_file_layout = type { i32, i32, i32, i64, ptr }
%struct.ceph_inode_xattrs_info = type { ptr, ptr, %struct.rb_root, i8, i32, i32, i32, i64, i64 }
%union.anon.130 = type { ptr }

@ceph_umount_begin.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_umount_begin\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/super.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : ceph_umount_begin - starting forced umount\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_umount_begin - starting forced umount\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias351 = internal constant [19 x i8] c"ceph.alias=fs-ceph\00", section ".modinfo", align 1
@exit_ceph.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 1, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exit_ceph\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%.*s %12.12s:%-4d : exit_ceph\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ceph: %.*s %12.12s:%-4d : exit_ceph\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_fs_type = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 32768, ptr @ceph_init_fs_context, ptr null, ptr null, ptr @ceph_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@disable_send_metrics = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_str_disable_send_metrics = internal constant [26 x i8] c"ceph.disable_send_metrics\00", align 1
@param_ops_metrics = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @param_set_metrics, ptr @param_get_bool, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_disable_send_metrics = internal constant %struct.kernel_param { ptr @__param_str_disable_send_metrics, ptr null, ptr @param_ops_metrics, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @disable_send_metrics } }, section "__param", align 4
@__UNIQUE_ID_disable_send_metrics353 = internal constant [89 x i8] c"ceph.parm=disable_send_metrics:Enable sending perf metrics to ceph cluster (default: on)\00", section ".modinfo", align 1
@__param_str_mount_syntax_v1 = internal constant [21 x i8] c"ceph.mount_syntax_v1\00", align 1
@param_ops_mount_syntax = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr null, ptr @param_get_bool, ptr null }, [16 x i8] zeroinitializer }, align 32
@mount_support = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_mount_syntax_v1 = internal constant %struct.kernel_param { ptr @__param_str_mount_syntax_v1, ptr null, ptr @param_ops_mount_syntax, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @mount_support } }, section "__param", align 4
@__param_str_mount_syntax_v2 = internal constant [21 x i8] c"ceph.mount_syntax_v2\00", align 1
@__param_mount_syntax_v2 = internal constant %struct.kernel_param { ptr @__param_str_mount_syntax_v2, ptr null, ptr @param_ops_mount_syntax, i16 292, i8 -1, i8 0, %union.anon.83 { ptr @mount_support } }, section "__param", align 4
@__initcall__kmod_ceph__354_1477_init_ceph6 = internal global ptr @init_ceph, section ".initcall6.init", align 4
@__exitcall_exit_ceph = internal global ptr @exit_ceph, section ".exitcall.exit", align 4
@__UNIQUE_ID_author355 = internal constant [42 x i8] c"ceph.author=Sage Weil <sage@newdream.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [50 x i8] c"ceph.author=Yehuda Sadeh <yehuda@hq.newdream.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [53 x i8] c"ceph.author=Patience Warnick <patience@newdream.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description358 = internal constant [43 x i8] c"ceph.description=Ceph filesystem for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [23 x i8] c"ceph.file=fs/ceph/ceph\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [17 x i8] c"ceph.license=GPL\00", section ".modinfo", align 1
@ceph_inode_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_cap_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_cap_flush_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_dentry_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_file_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_dir_file_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_mds_request_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_wb_pagevec_pool = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c".snap\00", [26 x i8] zeroinitializer }, align 32
@ceph_context_ops = internal constant { %struct.fs_context_operations, [40 x i8] } { %struct.fs_context_operations { ptr @ceph_free_fc, ptr null, ptr @ceph_parse_mount_param, ptr null, ptr @ceph_get_tree, ptr @ceph_reconfigure_fc }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@ceph_mount_parameters = internal constant { [29 x %struct.fs_parameter_spec], [112 x i8] } { [29 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.16, ptr null, i8 22, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.17, ptr null, i8 16, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.18, ptr @fs_param_is_s32, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.19, ptr @fs_param_is_u32, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.20, ptr @fs_param_is_u32, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.21, ptr @fs_param_is_u32, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.22, ptr null, i8 24, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.23, ptr null, i8 17, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.24, ptr null, i8 14, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.25, ptr null, i8 19, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.25, ptr @fs_param_is_string, i8 19, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.26, ptr null, i8 18, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.27, ptr @fs_param_is_string, i8 10, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.28, ptr null, i8 20, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.29, ptr null, i8 23, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.30, ptr @fs_param_is_u32, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.31, ptr null, i8 15, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.32, ptr @fs_param_is_u32, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.33, ptr @fs_param_is_u32, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.34, ptr @fs_param_is_enum, i8 11, i16 0, ptr @ceph_param_recover }, %struct.fs_parameter_spec { ptr @.str.35, ptr null, i8 21, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.36, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.37, ptr @fs_param_is_string, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.38, ptr @fs_param_is_string, i8 12, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.39, ptr @fs_param_is_string, i8 13, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.40, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.41, ptr null, i8 25, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.42, ptr null, i8 26, i16 2, ptr null }, %struct.fs_parameter_spec zeroinitializer], [112 x i8] zeroinitializer }, align 32
@ceph_parse_mount_param.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_parse_mount_param\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : %s fs_parse '%s' token %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : %s fs_parse '%s' token %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mismatching mds_namespace\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Multiple sources specified\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s out of range\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acl\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"asyncreaddir\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"caps_max\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"caps_wanted_delay_max\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"caps_wanted_delay_min\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write_congestion_kb\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"copyfrom\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcache\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dirstat\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fsc\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ino32\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mds_namespace\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"poolperm\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"quotadf\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rasize\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rbytes\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"readdir_max_bytes\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"readdir_max_entries\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"recover_session\00", [16 x i8] zeroinitializer }, align 32
@ceph_param_recover = internal constant { [3 x %struct.constant_table], [40 x i8] } { [3 x %struct.constant_table] [%struct.constant_table { ptr @.str.43, i32 0 }, %struct.constant_table { ptr @.str.44, i32 1 }, %struct.constant_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"require_active_mds\00", [45 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rsize\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snapdirname\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mon_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wsize\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"wsync\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pagecache\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clean\00", [26 x i8] zeroinitializer }, align 32
@ceph_parse_source.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_parse_source\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%.*s %12.12s:%-4d : %s '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ceph: %.*s %12.12s:%-4d : %s '%s'\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Empty source\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Path missing in source\00", [41 x i8] zeroinitializer }, align 32
@ceph_parse_source.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.50, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : device name '%.*s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ceph: %.*s %12.12s:%-4d : device name '%.*s'\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_parse_source.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.52, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%.*s %12.12s:%-4d : server path '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ceph: %.*s %12.12s:%-4d : server path '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@ceph_parse_source.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.54, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : trying new device syntax\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : trying new device syntax\00", [45 x i8] zeroinitializer }, align 32
@ceph_parse_source.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.56, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : trying old device syntax\00", [51 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : trying old device syntax\00", [45 x i8] zeroinitializer }, align 32
@ceph_parse_new_source.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_parse_new_source\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : separator '=' missing in source\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : separator '=' missing in source\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing cluster fsid\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing file system name\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid FSID\00", [19 x i8] zeroinitializer }, align 32
@ceph_parse_new_source.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.64, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%.*s %12.12s:%-4d : file system (mds namespace) '%s'\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"ceph: %.*s %12.12s:%-4d : file system (mds namespace) '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"separator ':' missing in source\00", [32 x i8] zeroinitializer }, align 32
@ceph_get_tree.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_get_tree\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d : ceph_get_tree\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_get_tree\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No source\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No monitor address\00", [45 x i8] zeroinitializer }, align 32
@ceph_get_tree.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.72, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%.*s %12.12s:%-4d : get_sb got existing client %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ceph: %.*s %12.12s:%-4d : get_sb got existing client %p\0A\00", [39 x i8] zeroinitializer }, align 32
@ceph_get_tree.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.74, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%.*s %12.12s:%-4d : get_sb using new client %p\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ceph: %.*s %12.12s:%-4d : get_sb using new client %p\0A\00", [42 x i8] zeroinitializer }, align 32
@ceph_get_tree.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.76, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : root %p inode %p ino %llx.%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ceph: %.*s %12.12s:%-4d : root %p inode %p ino %llx.%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_get_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016ceph: No mds server is up or the cluster is laggy\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_get_tree._entry_ptr = internal global ptr @ceph_get_tree._entry, section ".printk_index", align 4
@ceph_get_tree.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.79, i8 1, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : ceph_get_tree fail %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_get_tree fail %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_compare_super.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 1, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_compare_super\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%.*s %12.12s:%-4d : ceph_compare_super %p\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ceph: %.*s %12.12s:%-4d : ceph_compare_super %p\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_compare_super.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.84, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : monitor(s)/mount options don't match\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ceph: %.*s %12.12s:%-4d : monitor(s)/mount options don't match\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_compare_super.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.86, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : fsid doesn't match\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ceph: %.*s %12.12s:%-4d : fsid doesn't match\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_compare_super.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.88, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : flags differ\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d : flags differ\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_compare_super.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.90, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%.*s %12.12s:%-4d : client is blocklisted (and CLEANRECOVER is not set)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ceph: %.*s %12.12s:%-4d : client is blocklisted (and CLEANRECOVER is not set)\0A\00", [49 x i8] zeroinitializer }, align 32
@ceph_compare_super.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.2, ptr @.str.92, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : client has been forcibly unmounted\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : client has been forcibly unmounted\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ceph-inode\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ceph-cap\00", [23 x i8] zeroinitializer }, align 32
@ceph_fsc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.96, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ceph_fsc_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ceph_fsc_list, ptr @ceph_fsc_list }, [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_fsc_lock\00", [18 x i8] zeroinitializer }, align 32
@ceph_set_super.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.98, i8 1, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_set_super\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : set_super %p\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ceph: %.*s %12.12s:%-4d : set_super %p\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_xattr_handlers = external dso_local global [0 x ptr], align 4
@ceph_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @ceph_alloc_inode, ptr null, ptr @ceph_free_inode, ptr null, ptr @ceph_write_inode, ptr @generic_delete_inode, ptr @ceph_evict_inode, ptr @ceph_put_super, ptr @ceph_sync_fs, ptr null, ptr null, ptr null, ptr null, ptr @ceph_statfs, ptr null, ptr @ceph_umount_begin, ptr @ceph_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ceph_dentry_ops = external dso_local constant %struct.dentry_operations, align 128
@ceph_export_ops = external dso_local constant %struct.export_operations, align 4
@ceph_put_super.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_put_super\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%.*s %12.12s:%-4d : put_super\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ceph: %.*s %12.12s:%-4d : put_super\0A\00", [59 x i8] zeroinitializer }, align 32
@ceph_sync_fs.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_sync_fs\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : sync_fs (non-blocking)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ceph: %.*s %12.12s:%-4d : sync_fs (non-blocking)\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_sync_fs.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.106, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : sync_fs (non-blocking) done\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ceph: %.*s %12.12s:%-4d : sync_fs (non-blocking) done\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_sync_fs.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.108, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : sync_fs (blocking)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ceph: %.*s %12.12s:%-4d : sync_fs (blocking)\0A\00", [50 x i8] zeroinitializer }, align 32
@ceph_sync_fs.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.110, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : sync_fs (blocking) done\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : sync_fs (blocking) done\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_statfs.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ceph_statfs\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%.*s %12.12s:%-4d : statfs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ceph: %.*s %12.12s:%-4d : statfs\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",dirstat\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c",rbytes\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c",noasyncreaddir\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",nodcache\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",ino32\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c",nopoolperm\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",noquotadf\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c",acl\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",noacl\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",copyfrom\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",mon_addr=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",wsync\00", [25 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",nopagecache\00", [19 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",wsize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",rsize=%u\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c",rasize=%u\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",write_congestion_kb=%u\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c",caps_max=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",caps_wanted_delay_min=%u\00", [38 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c",caps_wanted_delay_max=%u\00", [38 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c",readdir_max_entries=%u\00", [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c",readdir_max_bytes=%u\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c",= \09\0A\\\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@destroy_fs_client.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.140, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"destroy_fs_client\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : destroy_fs_client %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ceph: %.*s %12.12s:%-4d : destroy_fs_client %p\0A\00", [48 x i8] zeroinitializer }, align 32
@destroy_fs_client.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.139, ptr @.str.2, ptr @.str.142, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : destroy_fs_client %p done\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ceph: %.*s %12.12s:%-4d : destroy_fs_client %p done\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ceph-%ld\00", [23 x i8] zeroinitializer }, align 32
@bdi_seq = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ceph_real_mount.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.2, ptr @.str.146, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_real_mount\00", [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : mount start %p\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ceph: %.*s %12.12s:%-4d : mount start %p\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ceph_real_mount.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.2, ptr @.str.149, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : mount opening path '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : mount opening path '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_real_mount.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.145, ptr @.str.2, ptr @.str.151, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d : mount success\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ceph: %.*s %12.12s:%-4d : mount success\0A\00", [55 x i8] zeroinitializer }, align 32
@open_root_dentry.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.154, i8 0, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"open_root_dentry\00", [47 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : open_root_inode opening '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : open_root_inode opening '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@open_root_dentry.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.156, i8 1, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.156 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : open_root_inode success\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ceph: %.*s %12.12s:%-4d : open_root_inode success\0A\00", [45 x i8] zeroinitializer }, align 32
@open_root_dentry.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.2, ptr @.str.158, i8 1, i8 2, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%.*s %12.12s:%-4d : open_root_inode success, root dentry is %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ceph: %.*s %12.12s:%-4d : open_root_inode success, root dentry is %p\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_reconfigure_fc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015ceph: ceph: monitor addresses recorded, but not used for reconnection\00", [56 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_reconfigure_fc\00", [44 x i8] zeroinitializer }, align 32
@ceph_reconfigure_fc._entry_ptr = internal global ptr @ceph_reconfigure_fc._entry, section ".printk_index", align 4
@destroy_mount_options.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.162, ptr @.str.2, ptr @.str.163, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"destroy_mount_options\00", [42 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : destroy_mount_options %p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ceph: %.*s %12.12s:%-4d : destroy_mount_options %p\0A\00", [44 x i8] zeroinitializer }, align 32
@ceph_kill_sb.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.165, ptr @.str.2, ptr @.str.166, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_kill_sb\00", [19 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%.*s %12.12s:%-4d : kill_sb %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ceph: %.*s %12.12s:%-4d : kill_sb %p\0A\00", [58 x i8] zeroinitializer }, align 32
@param_set_metrics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ceph: Failed to parse sending metrics switch value '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"param_set_metrics\00", [46 x i8] zeroinitializer }, align 32
@param_set_metrics._entry_ptr = internal global ptr @param_set_metrics._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@init_ceph._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ceph: loaded (mds proto %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_ceph\00", [22 x i8] zeroinitializer }, align 32
@init_ceph._entry_ptr = internal global ptr @init_ceph._entry, section ".printk_index", align 4
@.str.172 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_inode_info\00", [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ceph_cap\00", [23 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_cap_flush\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_dentry_info\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_file_info\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_dir_file_info\00", [45 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_mds_request\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [29 x i64] [i64 27, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 16, i64 21, i64 103]
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 973, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1433, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [13 x i8] c"ceph_fs_type\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1373, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"disable_send_metrics\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1465, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"param_ops_metrics\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1460, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant [23 x i8] c"param_ops_mount_syntax\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1471, i32 38 }
@___asan_gen_.222 = private unnamed_addr constant [14 x i8] c"mount_support\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1470, i32 13 }
@___asan_gen_.225 = private unnamed_addr constant [18 x i8] c"ceph_inode_cachep\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 865, i32 20 }
@___asan_gen_.228 = private unnamed_addr constant [16 x i8] c"ceph_cap_cachep\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 866, i32 20 }
@___asan_gen_.231 = private unnamed_addr constant [22 x i8] c"ceph_cap_flush_cachep\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 867, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant [19 x i8] c"ceph_dentry_cachep\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 868, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"ceph_file_cachep\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 869, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant [21 x i8] c"ceph_dir_file_cachep\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 870, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"ceph_mds_request_cachep\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 871, i32 20 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"ceph_wb_pagevec_pool\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 872, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1329, i32 32 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"ceph_context_ops\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1296, i32 43 }
@___asan_gen_.255 = private unnamed_addr constant [22 x i8] c"ceph_mount_parameters\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 179, i32 39 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 407, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 419, i32 11 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 435, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 583, i32 9 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 180, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 181, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 182, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 183, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 184, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 185, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 186, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 187, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 188, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 189, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 191, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 192, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 193, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 194, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 195, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 196, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 197, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 198, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 199, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant [19 x i8] c"ceph_param_recover\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 173, i32 36 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 200, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 201, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 202, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 203, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 204, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 205, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 206, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 207, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 174, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 175, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 335, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 337, i32 10 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 357, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 359, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 361, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 363, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 368, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 279, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 285, i32 10 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 290, i32 10 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 293, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 304, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 258, i32 10 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1194, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1197, i32 10 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1199, i32 10 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1228, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1230, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1241, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1248, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1259, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1131, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1134, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1139, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1143, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1148, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1153, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 811, i32 34 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 814, i32 32 }
@___asan_gen_.522 = private unnamed_addr constant [14 x i8] c"ceph_fsc_lock\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [14 x i8] c"ceph_fsc_list\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 33, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 32, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1099, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [15 x i8] c"ceph_super_ops\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 980, i32 38 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 48, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 120, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 122, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 126, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 129, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 66, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 672, i32 15 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 674, i32 15 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 676, i32 15 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 678, i32 15 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 680, i32 15 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 685, i32 15 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 687, i32 15 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 691, i32 15 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 693, i32 15 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 697, i32 15 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 704, i32 17 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 710, i32 15 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 713, i32 15 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 716, i32 17 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 718, i32 17 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 720, i32 17 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 722, i32 17 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 724, i32 17 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 726, i32 17 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 729, i32 17 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 732, i32 17 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 734, i32 17 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 242, i32 22 }
@___asan_gen_.658 = private unnamed_addr constant [28 x i8] c"../include/linux/seq_file.h\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.658, i32 245, i32 24 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 844, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 859, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1169, i32 33 }
@___asan_gen_.678 = private unnamed_addr constant [8 x i8] c"bdi_seq\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1163, i32 22 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1052, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1057, i32 48 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1070, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1085, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1007, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1027, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1033, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1289, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 588, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1358, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1445, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 1421, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 884, i32 40 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 892, i32 20 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 895, i32 26 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 900, i32 23 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 905, i32 21 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 909, i32 25 }
@___asan_gen_.789 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.790 = private constant [19 x i8] c"../fs/ceph/super.c\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.790, i32 913, i32 28 }
@llvm.compiler.used = appending global [221 x ptr] [ptr @__UNIQUE_ID_alias351, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description358, ptr @__UNIQUE_ID_disable_send_metrics353, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__exitcall_exit_ceph, ptr @__initcall__kmod_ceph__354_1477_init_ceph6, ptr @__param_disable_send_metrics, ptr @__param_mount_syntax_v1, ptr @__param_mount_syntax_v2, ptr @ceph_get_tree._entry, ptr @ceph_get_tree._entry_ptr, ptr @ceph_reconfigure_fc._entry, ptr @ceph_reconfigure_fc._entry_ptr, ptr @exit_ceph, ptr @init_ceph._entry, ptr @init_ceph._entry_ptr, ptr @param_set_metrics._entry, ptr @param_set_metrics._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ceph_fs_type, ptr @disable_send_metrics, ptr @param_ops_metrics, ptr @param_ops_mount_syntax, ptr @mount_support, ptr @ceph_inode_cachep, ptr @ceph_cap_cachep, ptr @ceph_cap_flush_cachep, ptr @ceph_dentry_cachep, ptr @ceph_file_cachep, ptr @ceph_dir_file_cachep, ptr @ceph_mds_request_cachep, ptr @ceph_wb_pagevec_pool, ptr @.str.9, ptr @ceph_context_ops, ptr @ceph_mount_parameters, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ceph_param_recover, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @ceph_fsc_lock, ptr @ceph_fsc_list, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @ceph_super_ops, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @bdi_seq, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178], section "llvm.metadata"
@0 = internal global [203 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_send_metrics to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_metrics to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_mount_syntax to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mount_support to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_inode_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_cap_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_cap_flush_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_dentry_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_file_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_dir_file_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_mds_request_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_wb_pagevec_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_context_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_mount_parameters to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_param_recover to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_get_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fsc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_fsc_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bdi_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_reconfigure_fc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_metrics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ceph._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_umount_begin(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_umount_begin.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_umount_begin, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_umount_begin.__UNIQUE_ID_ddebug331, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 973) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %mount_state = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mount_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %mount_state, align 4
  %client.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 8
  %osdc.i = getelementptr inbounds %struct.ceph_client, ptr %4, i32 0, i32 12
  tail call void @ceph_osdc_abort_requests(ptr noundef %osdc.i, i32 noundef -5) #11
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdsc.i, align 8
  tail call void @ceph_mdsc_force_umount(ptr noundef %6) #11
  %filp_gen.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %filp_gen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filp_gen.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %filp_gen.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_force_reconnect(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %mount_state = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mount_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %mount_state, align 4
  %client.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 8
  %osdc.i = getelementptr inbounds %struct.ceph_client, ptr %4, i32 0, i32 12
  tail call void @ceph_osdc_abort_requests(ptr noundef %osdc.i, i32 noundef -5) #11
  %mdsc.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %mdsc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdsc.i, align 8
  tail call void @ceph_mdsc_force_umount(ptr noundef %6) #11
  %filp_gen.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %filp_gen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filp_gen.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %filp_gen.i, align 4
  %inode_wq = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %inode_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode_wq, align 8
  tail call void @flush_workqueue(ptr noundef %10) #11
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 8
  tail call void @ceph_reset_client_addr(ptr noundef %12) #11
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %14, i32 0, i32 12
  tail call void @ceph_osdc_clear_abort_err(ptr noundef %osdc) #11
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %blocklisted to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %blocklisted, align 8
  %16 = ptrtoint ptr %mount_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %mount_state, align 4
  %s_root = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 13
  %17 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_root, align 64
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d_inode.i, align 8
  %call5 = tail call i32 @__ceph_do_getattr(ptr noundef %20, ptr noundef null, i32 noundef 1, i1 noundef zeroext true) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_reset_client_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_clear_abort_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ceph() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_ceph.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_ceph, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_ceph.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1433) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @unregister_filesystem(ptr noundef nonnull @ceph_fs_type) #11
  tail call fastcc void @destroy_caches()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_caches() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rcu_barrier() #11
  %0 = load ptr, ptr @ceph_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  %1 = load ptr, ptr @ceph_cap_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  %2 = load ptr, ptr @ceph_cap_flush_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  %3 = load ptr, ptr @ceph_dentry_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #11
  %4 = load ptr, ptr @ceph_file_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  %5 = load ptr, ptr @ceph_dir_file_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  %6 = load ptr, ptr @ceph_mds_request_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #11
  %7 = load ptr, ptr @ceph_wb_pagevec_pool, align 4
  tail call void @mempool_destroy(ptr noundef %7) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ceph() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_caches() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ceph_flock_init() #15
  %call1 = tail call i32 @register_filesystem(ptr noundef nonnull @ceph_fs_type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end, label %out_caches

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, i32 noundef 32) #15
  br label %cleanup

out_caches:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @destroy_caches()
  br label %cleanup

cleanup:                                          ; preds = %out_caches, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %out_caches ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_abort_requests(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_force_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_init_fs_context(ptr nocapture noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @ceph_alloc_options() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.nomem_crit_edge, label %if.end5

if.end.nomem_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #16
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i42, ptr %opts, align 4
  %tobool8.not = icmp eq ptr %call7.i.i42, null
  br i1 %tobool8.not, label %if.end5.nomem_crit_edge, label %if.end10

if.end5.nomem_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

if.end10:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %call7.i.i42 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 49664, ptr %call7.i.i42, align 8
  %wsize = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 1
  %5 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 67108864, ptr %wsize, align 4
  %rsize = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 2
  %6 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108864, ptr %rsize, align 8
  %rasize = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 3
  %7 = ptrtoint ptr %rasize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8388608, ptr %rasize, align 4
  %call12 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.9, i32 noundef 3264) #11
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 11
  %8 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %snapdir_name, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.nomem_crit_edge, label %if.end16

if.end10.nomem_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %nomem

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %caps_wanted_delay_min = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 5
  %9 = ptrtoint ptr %caps_wanted_delay_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %caps_wanted_delay_min, align 4
  %caps_wanted_delay_max = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 6
  %10 = ptrtoint ptr %caps_wanted_delay_max to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 60, ptr %caps_wanted_delay_max, align 8
  %max_readdir = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 8
  %11 = ptrtoint ptr %max_readdir to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1024, ptr %max_readdir, align 8
  %max_readdir_bytes = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 9
  %12 = ptrtoint ptr %max_readdir_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 524288, ptr %max_readdir_bytes, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %13 = load volatile i32, ptr @_totalram_pages, align 4
  %call1.i = tail call i32 @int_sqrt(i32 noundef %13) #11
  %mul.i = shl i32 %call1.i, 6
  %14 = tail call i32 @llvm.smin.i32(i32 %mul.i, i32 262144) #11
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %call7.i.i42, i32 0, i32 4
  %15 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %congestion_kb, align 8
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %16 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_flags, align 4
  %or = or i32 %17, 65536
  store i32 %or, ptr %sb_flags, align 4
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %18 = ptrtoint ptr %fs_private to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %fs_private, align 4
  %19 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ceph_context_ops, ptr %fc, align 4
  br label %cleanup

nomem:                                            ; preds = %if.end10.nomem_crit_edge, %if.end5.nomem_crit_edge, %if.end.nomem_crit_edge
  %opts18 = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %opts18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %opts18, align 4
  tail call fastcc void @destroy_mount_options(ptr noundef %21)
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  tail call void @ceph_destroy_options(ptr noundef %23) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %nomem, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -12, %nomem ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_kill_sb(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_kill_sb.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_kill_sb, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_kill_sb.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.167, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1358, ptr noundef %s) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  tail call void @ceph_mdsc_pre_umount(ptr noundef %3) #11
  %inode_wq.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %inode_wq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inode_wq.i, align 8
  tail call void @flush_workqueue(ptr noundef %5) #11
  %cap_wq.i = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %cap_wq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap_wq.i, align 4
  tail call void @flush_workqueue(ptr noundef %7) #11
  tail call void @kill_anon_super(ptr noundef %s) #11
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 8
  %extra_mon_dispatch = getelementptr inbounds %struct.ceph_client, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %extra_mon_dispatch to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %extra_mon_dispatch, align 8
  tail call void @ceph_fs_debugfs_cleanup(ptr noundef %1) #11
  tail call void @ceph_fscache_unregister_fs(ptr noundef %1) #11
  tail call fastcc void @destroy_fs_client(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_options() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_mount_options(ptr noundef %args) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_mount_options.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_mount_options, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @destroy_mount_options.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.164, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 588, ptr noundef %args) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %args, null
  br i1 %tobool4.not, label %do.end.return_crit_edge, label %if.end6

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %args, i32 0, i32 11
  %0 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snapdir_name, align 4
  tail call void @kfree(ptr noundef %1) #11
  %mds_namespace = getelementptr inbounds %struct.ceph_mount_options, ptr %args, i32 0, i32 12
  %2 = ptrtoint ptr %mds_namespace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mds_namespace, align 4
  tail call void @kfree(ptr noundef %3) #11
  %server_path = getelementptr inbounds %struct.ceph_mount_options, ptr %args, i32 0, i32 13
  %4 = ptrtoint ptr %server_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %server_path, align 4
  tail call void @kfree(ptr noundef %5) #11
  %fscache_uniq = getelementptr inbounds %struct.ceph_mount_options, ptr %args, i32 0, i32 14
  %6 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fscache_uniq, align 4
  tail call void @kfree(ptr noundef %7) #11
  %mon_addr = getelementptr inbounds %struct.ceph_mount_options, ptr %args, i32 0, i32 15
  %8 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mon_addr, align 4
  tail call void @kfree(ptr noundef %9) #11
  tail call void @kfree(ptr noundef nonnull %args) #11
  br label %return

return:                                           ; preds = %if.end6, %do.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_destroy_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_free_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 4
  tail call fastcc void @destroy_mount_options(ptr noundef %3)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @ceph_destroy_options(ptr noundef %5) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_parse_mount_param(ptr noundef %fc, ptr noundef %param) #0 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #11
  %4 = call ptr @memset(ptr %result, i32 255, i32 16)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log1 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log1, align 4
  %call = tail call i32 @ceph_parse_param(ptr noundef %param, ptr noundef %6, ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -519, i32 %call)
  %cmp.not = icmp eq i32 %call, -519
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @__fs_parse(ptr noundef %log, ptr noundef nonnull @ceph_mount_parameters, ptr noundef %param, ptr noundef nonnull %result) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_mount_param.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_mount_param, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !420

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_mount_param.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 407, ptr noundef nonnull @.str.10, ptr noundef %10, i32 noundef %call.i) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %do.body221 [
    i32 9, label %sw.bb
    i32 10, label %sw.bb13
    i32 11, label %sw.bb23
    i32 12, label %sw.bb38
    i32 13, label %sw.bb47
    i32 0, label %sw.bb49
    i32 1, label %sw.bb55
    i32 2, label %sw.bb63
    i32 3, label %sw.bb66
    i32 4, label %sw.bb70
    i32 5, label %sw.bb74
    i32 6, label %sw.bb78
    i32 7, label %sw.bb82
    i32 8, label %sw.bb87
    i32 14, label %sw.bb91
    i32 15, label %sw.bb100
    i32 16, label %sw.bb110
    i32 17, label %sw.bb120
    i32 18, label %sw.bb130
    i32 19, label %sw.bb140
    i32 20, label %sw.bb152
    i32 21, label %sw.bb162
    i32 23, label %sw.bb172
    i32 24, label %sw.bb182
    i32 22, label %sw.bb192
    i32 25, label %sw.bb201
    i32 26, label %sw.bb211
  ]

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %snapdir_name, align 4
  call void @kfree(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %snapdir_name, align 4
  store ptr null, ptr %14, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end11
  %18 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call14 = call i32 @strlen(ptr noundef %20) #17
  %call15 = call fastcc i32 @namespace_equals(ptr noundef %3, ptr noundef %20, i32 noundef %call14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end21

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log1, align 4
  %23 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %22, ptr noundef %24, i8 noundef zeroext 101, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end21:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %mds_namespace = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 12
  %25 = ptrtoint ptr %mds_namespace to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mds_namespace, align 4
  call void @kfree(ptr noundef %26) #11
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 4
  %29 = ptrtoint ptr %mds_namespace to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %mds_namespace, align 4
  store ptr null, ptr %18, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end11
  %30 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %32, label %do.body30 [
    i32 0, label %if.then25
    i32 1, label %if.then27
  ]

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %and = and i32 %35, -3
  store i32 %and, ptr %3, align 4
  br label %cleanup

if.then27:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %or = or i32 %37, 2
  store i32 %or, ptr %3, align 4
  br label %cleanup

do.body30:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 431, 0\0A.popsection", ""() #11, !srcloc !421
  unreachable

sw.bb38:                                          ; preds = %if.end11
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %38 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %source, align 4
  %tobool39.not = icmp eq ptr %39, null
  br i1 %tobool39.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %log1, align 4
  %42 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %41, ptr noundef %43, i8 noundef zeroext 101, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end45:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = call fastcc i32 @ceph_parse_source(ptr noundef %param, ptr noundef %fc)
  br label %cleanup

sw.bb47:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = call fastcc i32 @ceph_parse_mon_addr(ptr noundef %param, ptr noundef %fc)
  br label %cleanup

sw.bb49:                                          ; preds = %if.end11
  %44 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %47 = add i32 %46, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67104769, i32 %47)
  %48 = icmp ult i32 %47, -67104769
  br i1 %48, label %sw.bb49.out_of_range_crit_edge, label %if.end53

sw.bb49.out_of_range_crit_edge:                   ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end53:                                         ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #13
  %add = add nuw nsw i32 %46, 4095
  %and54 = and i32 %add, -4096
  %wsize = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 1
  %49 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and54, ptr %wsize, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end11
  %50 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %53 = add i32 %52, -67108865
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67104769, i32 %53)
  %54 = icmp ult i32 %53, -67104769
  br i1 %54, label %sw.bb55.out_of_range_crit_edge, label %if.end60

sw.bb55.out_of_range_crit_edge:                   ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end60:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  %add61 = add nuw nsw i32 %52, 4095
  %and62 = and i32 %add61, -4096
  %rsize = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and62, ptr %rsize, align 4
  br label %cleanup

sw.bb63:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %56 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %add64 = add i32 %58, 4095
  %and65 = and i32 %add64, -4096
  %rasize = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 3
  %59 = ptrtoint ptr %rasize to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and65, ptr %rasize, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %if.end11
  %60 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp67 = icmp eq i32 %62, 0
  br i1 %cmp67, label %sw.bb66.out_of_range_crit_edge, label %if.end69

sw.bb66.out_of_range_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end69:                                         ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #13
  %caps_wanted_delay_min = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 5
  %63 = ptrtoint ptr %caps_wanted_delay_min to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %caps_wanted_delay_min, align 4
  br label %cleanup

sw.bb70:                                          ; preds = %if.end11
  %64 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp71 = icmp eq i32 %66, 0
  br i1 %cmp71, label %sw.bb70.out_of_range_crit_edge, label %if.end73

sw.bb70.out_of_range_crit_edge:                   ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end73:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #13
  %caps_wanted_delay_max = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 6
  %67 = ptrtoint ptr %caps_wanted_delay_max to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %caps_wanted_delay_max, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %if.end11
  %68 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp75 = icmp slt i32 %70, 0
  br i1 %cmp75, label %sw.bb74.out_of_range_crit_edge, label %if.end77

sw.bb74.out_of_range_crit_edge:                   ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end77:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  %caps_max = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 7
  %71 = ptrtoint ptr %caps_max to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %caps_max, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %if.end11
  %72 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp79 = icmp eq i32 %74, 0
  br i1 %cmp79, label %sw.bb78.out_of_range_crit_edge, label %if.end81

sw.bb78.out_of_range_crit_edge:                   ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end81:                                         ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #13
  %max_readdir = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 8
  %75 = ptrtoint ptr %max_readdir to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %max_readdir, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %if.end11
  %76 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %79 = add i32 %78, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %79)
  %80 = icmp ult i32 %79, -4095
  br i1 %80, label %if.end86, label %sw.bb82.out_of_range_crit_edge

sw.bb82.out_of_range_crit_edge:                   ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end86:                                         ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #13
  %max_readdir_bytes = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 9
  %81 = ptrtoint ptr %max_readdir_bytes to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %max_readdir_bytes, align 4
  br label %cleanup

sw.bb87:                                          ; preds = %if.end11
  %82 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %84)
  %cmp88 = icmp ult i32 %84, 1024
  br i1 %cmp88, label %sw.bb87.out_of_range_crit_edge, label %if.end90

sw.bb87.out_of_range_crit_edge:                   ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_of_range

if.end90:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #13
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 4
  %85 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %congestion_kb, align 4
  br label %cleanup

sw.bb91:                                          ; preds = %if.end11
  %86 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool92.not = icmp eq i8 %87, 0
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %3, align 4
  br i1 %tobool92.not, label %if.then93, label %if.else96

if.then93:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #13
  %or95 = or i32 %89, 16
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %or95, ptr %3, align 4
  br label %cleanup

if.else96:                                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #13
  %and98 = and i32 %89, -17
  %91 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %and98, ptr %3, align 4
  br label %cleanup

sw.bb100:                                         ; preds = %if.end11
  %92 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool102.not = icmp eq i8 %93, 0
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %3, align 4
  br i1 %tobool102.not, label %if.then103, label %if.else106

if.then103:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #13
  %or105 = or i32 %95, 32
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or105, ptr %3, align 4
  br label %cleanup

if.else106:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #13
  %and108 = and i32 %95, -33
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and108, ptr %3, align 4
  br label %cleanup

sw.bb110:                                         ; preds = %if.end11
  %98 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool112.not = icmp eq i8 %99, 0
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %3, align 4
  br i1 %tobool112.not, label %if.then113, label %if.else116

if.then113:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #13
  %and115 = and i32 %101, -129
  %102 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %and115, ptr %3, align 4
  br label %cleanup

if.else116:                                       ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #13
  %or118 = or i32 %101, 128
  %103 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %or118, ptr %3, align 4
  br label %cleanup

sw.bb120:                                         ; preds = %if.end11
  %104 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool122.not = icmp eq i8 %105, 0
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %3, align 4
  br i1 %tobool122.not, label %if.then123, label %if.else126

if.then123:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #13
  %or125 = or i32 %107, 512
  %108 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or125, ptr %3, align 4
  br label %cleanup

if.else126:                                       ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #13
  %and128 = and i32 %107, -513
  %109 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and128, ptr %3, align 4
  br label %cleanup

sw.bb130:                                         ; preds = %if.end11
  %110 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool132.not = icmp eq i8 %111, 0
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %3, align 4
  br i1 %tobool132.not, label %if.then133, label %if.else136

if.then133:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  %or135 = or i32 %113, 256
  %114 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or135, ptr %3, align 4
  br label %cleanup

if.else136:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #13
  %and138 = and i32 %113, -257
  %115 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and138, ptr %3, align 4
  br label %cleanup

sw.bb140:                                         ; preds = %if.end11
  %fscache_uniq = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 14
  %116 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fscache_uniq, align 4
  call void @kfree(ptr noundef %117) #11
  %118 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %fscache_uniq, align 4
  %119 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool143.not = icmp eq i8 %120, 0
  %121 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %3, align 4
  br i1 %tobool143.not, label %if.else147, label %if.then144

if.then144:                                       ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #13
  %and146 = and i32 %122, -1025
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %and146, ptr %3, align 4
  br label %cleanup

if.else147:                                       ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #13
  %or149 = or i32 %122, 1024
  %124 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or149, ptr %3, align 4
  %125 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %fscache_uniq, align 4
  store ptr null, ptr %125, align 4
  br label %cleanup

sw.bb152:                                         ; preds = %if.end11
  %129 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool154.not = icmp eq i8 %130, 0
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %3, align 4
  br i1 %tobool154.not, label %if.then155, label %if.else158

if.then155:                                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #13
  %and157 = and i32 %132, -2049
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and157, ptr %3, align 4
  br label %cleanup

if.else158:                                       ; preds = %sw.bb152
  call void @__sanitizer_cov_trace_pc() #13
  %or160 = or i32 %132, 2048
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or160, ptr %3, align 4
  br label %cleanup

sw.bb162:                                         ; preds = %if.end11
  %135 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool164.not = icmp eq i8 %136, 0
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %3, align 4
  br i1 %tobool164.not, label %if.then165, label %if.else168

if.then165:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #13
  %and167 = and i32 %138, -4097
  %139 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %and167, ptr %3, align 4
  br label %cleanup

if.else168:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #13
  %or170 = or i32 %138, 4096
  %140 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %or170, ptr %3, align 4
  br label %cleanup

sw.bb172:                                         ; preds = %if.end11
  %141 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool174.not = icmp eq i8 %142, 0
  %143 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %3, align 4
  br i1 %tobool174.not, label %if.then175, label %if.else178

if.then175:                                       ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #13
  %and177 = and i32 %144, -8193
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %and177, ptr %3, align 4
  br label %cleanup

if.else178:                                       ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #13
  %or180 = or i32 %144, 8192
  %146 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %or180, ptr %3, align 4
  br label %cleanup

sw.bb182:                                         ; preds = %if.end11
  %147 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool184.not = icmp eq i8 %148, 0
  %149 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %3, align 4
  br i1 %tobool184.not, label %if.then185, label %if.else188

if.then185:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #13
  %and187 = and i32 %150, -16385
  %151 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %and187, ptr %3, align 4
  br label %cleanup

if.else188:                                       ; preds = %sw.bb182
  call void @__sanitizer_cov_trace_pc() #13
  %or190 = or i32 %150, 16384
  %152 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or190, ptr %3, align 4
  br label %cleanup

sw.bb192:                                         ; preds = %if.end11
  %153 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool194.not = icmp eq i8 %154, 0
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %155 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sb_flags, align 4
  br i1 %tobool194.not, label %if.then195, label %if.else197

if.then195:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #13
  %or196 = or i32 %156, 65536
  %157 = ptrtoint ptr %sb_flags to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or196, ptr %sb_flags, align 4
  br label %cleanup

if.else197:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #13
  %and199 = and i32 %156, -65537
  %158 = ptrtoint ptr %sb_flags to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %and199, ptr %sb_flags, align 4
  br label %cleanup

sw.bb201:                                         ; preds = %if.end11
  %159 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool203.not = icmp eq i8 %160, 0
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %3, align 4
  br i1 %tobool203.not, label %if.then204, label %if.else207

if.then204:                                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #13
  %and206 = and i32 %162, -32769
  %163 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %and206, ptr %3, align 4
  br label %cleanup

if.else207:                                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #13
  %or209 = or i32 %162, 32768
  %164 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %or209, ptr %3, align 4
  br label %cleanup

sw.bb211:                                         ; preds = %if.end11
  %165 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %result, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool213.not = icmp eq i8 %166, 0
  %167 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %3, align 4
  br i1 %tobool213.not, label %if.else217, label %if.then214

if.then214:                                       ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #13
  %or216 = or i32 %168, 65536
  %169 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %or216, ptr %3, align 4
  br label %cleanup

if.else217:                                       ; preds = %sw.bb211
  call void @__sanitizer_cov_trace_pc() #13
  %and219 = and i32 %168, -65537
  %170 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %and219, ptr %3, align 4
  br label %cleanup

do.body221:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ceph/super.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 578, 0\0A.popsection", ""() #11, !srcloc !423
  unreachable

out_of_range:                                     ; preds = %sw.bb87.out_of_range_crit_edge, %sw.bb82.out_of_range_crit_edge, %sw.bb78.out_of_range_crit_edge, %sw.bb74.out_of_range_crit_edge, %sw.bb70.out_of_range_crit_edge, %sw.bb66.out_of_range_crit_edge, %sw.bb55.out_of_range_crit_edge, %sw.bb49.out_of_range_crit_edge
  %171 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %log1, align 4
  %173 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %log, align 4
  %175 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %172, ptr noundef %174, i8 noundef zeroext 101, ptr noundef nonnull @.str.15, ptr noundef %176) #11
  br label %cleanup

cleanup:                                          ; preds = %out_of_range, %if.else217, %if.then214, %if.else207, %if.then204, %if.else197, %if.then195, %if.else188, %if.then185, %if.else178, %if.then175, %if.else168, %if.then165, %if.else158, %if.then155, %if.else147, %if.then144, %if.else136, %if.then133, %if.else126, %if.then123, %if.else116, %if.then113, %if.else106, %if.then103, %if.else96, %if.then93, %if.end90, %if.end86, %if.end81, %if.end77, %if.end73, %if.end69, %sw.bb63, %if.end60, %if.end53, %sw.bb47, %if.end45, %if.then40, %if.then27, %if.then25, %if.end21, %if.then17, %sw.bb, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %out_of_range ], [ %call48, %sw.bb47 ], [ -22, %if.then40 ], [ %call46, %if.end45 ], [ -22, %if.then17 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %do.end.cleanup_crit_edge ], [ 0, %if.then214 ], [ 0, %if.else217 ], [ 0, %if.then204 ], [ 0, %if.else207 ], [ 0, %if.then195 ], [ 0, %if.else197 ], [ 0, %if.then185 ], [ 0, %if.else188 ], [ 0, %if.then175 ], [ 0, %if.else178 ], [ 0, %if.then165 ], [ 0, %if.else168 ], [ 0, %if.then155 ], [ 0, %if.else158 ], [ 0, %if.then144 ], [ 0, %if.else147 ], [ 0, %if.then133 ], [ 0, %if.else136 ], [ 0, %if.then123 ], [ 0, %if.else126 ], [ 0, %if.then113 ], [ 0, %if.else116 ], [ 0, %if.then103 ], [ 0, %if.else106 ], [ 0, %if.then93 ], [ 0, %if.else96 ], [ 0, %if.then25 ], [ 0, %if.then27 ], [ 0, %if.end90 ], [ 0, %if.end86 ], [ 0, %if.end81 ], [ 0, %if.end77 ], [ 0, %if.end73 ], [ 0, %if.end69 ], [ 0, %sw.bb63 ], [ 0, %if.end60 ], [ 0, %if.end53 ], [ 0, %if.end21 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_get_tree(ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_tree.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_tree, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_tree.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.69, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1194) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %4 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %source, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log6 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %log6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log6, align 4
  %8 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %7, ptr noundef %9, i8 noundef zeroext 101, ptr noundef nonnull @.str.70) #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %new_dev_syntax = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %new_dev_syntax to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %new_dev_syntax, align 4, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %mon_addr = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mon_addr, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %log12 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log13 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %log13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log13, align 4
  %16 = ptrtoint ptr %log12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %log12, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %15, ptr noundef %17, i8 noundef zeroext 101, ptr noundef nonnull @.str.71) #11
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %18 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %opts, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 96) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end16.fail.i_crit_edge, label %if.end.i

if.end16.fail.i_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.i

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call ptr @ceph_create_client(ptr noundef %21, ptr noundef nonnull %call7.i.i.i) #11
  %client.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i, ptr %client.i, align 8
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %call1.i to i32
  br label %fail.i

if.end7.i:                                        ; preds = %if.end.i
  %extra_mon_dispatch.i = getelementptr inbounds %struct.ceph_client, ptr %call1.i, i32 0, i32 7
  %25 = ptrtoint ptr %extra_mon_dispatch.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @extra_mon_dispatch, ptr %extra_mon_dispatch.i, align 8
  %26 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i, align 8
  %options.i = getelementptr inbounds %struct.ceph_client, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %options.i, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or.i = or i32 %31, 64
  store i32 %or.i, ptr %29, align 4
  %mds_namespace.i = getelementptr inbounds %struct.ceph_mount_options, ptr %19, i32 0, i32 12
  %32 = ptrtoint ptr %mds_namespace.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mds_namespace.i, align 4
  %tobool10.not.i = icmp eq ptr %33, null
  %34 = load ptr, ptr %client.i, align 8
  %monc.i = getelementptr inbounds %struct.ceph_client, ptr %34, i32 0, i32 11
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i = tail call zeroext i1 @ceph_monc_want_map(ptr noundef %monc.i, i32 noundef 3, i32 noundef 0, i1 noundef zeroext true) #11
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call zeroext i1 @ceph_monc_want_map(ptr noundef %monc.i, i32 noundef 2, i32 noundef 0, i1 noundef zeroext false) #11
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i, %if.then11.i
  %mount_options.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %mount_options.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %19, ptr %mount_options.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %call7.i.i.i, align 8
  %mount_state.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %mount_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mount_state.i, align 4
  %filp_gen.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %filp_gen.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %filp_gen.i, align 4
  %have_copy_from2.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %have_copy_from2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %have_copy_from2.i, align 1
  %writeback_count.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %writeback_count.i, i32 noundef 4) #11
  %40 = ptrtoint ptr %writeback_count.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %writeback_count.i, align 4
  %call18.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.94, i32 noundef 2, i32 noundef 0) #11
  %inode_wq.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 11
  %41 = ptrtoint ptr %inode_wq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call18.i, ptr %inode_wq.i, align 8
  %tobool20.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool20.not.i, label %if.end17.i.fail.thread.i_crit_edge, label %if.end22.i

if.end17.i.fail.thread.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.thread.i

if.end22.i:                                       ; preds = %if.end17.i
  %call23.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef 1) #11
  %cap_wq.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 12
  %42 = ptrtoint ptr %cap_wq.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call23.i, ptr %cap_wq.i, align 4
  %tobool25.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool25.not.i, label %fail_inode_wq.i, label %if.end27.i

if.end27.i:                                       ; preds = %if.end22.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @ceph_fsc_lock) #11
  %metric_wakeup.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 1
  %43 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ceph_fsc_list, i32 0, i32 1), align 4
  %call.i.i62.i = tail call zeroext i1 @__list_add_valid(ptr noundef %metric_wakeup.i, ptr noundef %43, ptr noundef nonnull @ceph_fsc_list) #11
  br i1 %call.i.i62.i, label %if.end.i.i.i, label %if.end27.i.list_add_tail.exit.i_crit_edge

if.end27.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %metric_wakeup.i, ptr getelementptr inbounds (%struct.list_head, ptr @ceph_fsc_list, i32 0, i32 1), align 4
  %44 = ptrtoint ptr %metric_wakeup.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @ceph_fsc_list, ptr %metric_wakeup.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev3.i.i.i, align 8
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %metric_wakeup.i, ptr %43, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end27.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ceph_fsc_lock) #11
  br label %create_fs_client.exit

fail_inode_wq.i:                                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %inode_wq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %inode_wq.i, align 8
  tail call void @destroy_workqueue(ptr noundef %48) #11
  br label %fail.thread.i

fail.thread.i:                                    ; preds = %fail_inode_wq.i, %if.end17.i.fail.thread.i_crit_edge
  %49 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client.i, align 8
  tail call void @ceph_destroy_client(ptr noundef %50) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end32.i

fail.i:                                           ; preds = %if.then4.i, %if.end16.fail.i_crit_edge
  %err.0.i = phi i32 [ %24, %if.then4.i ], [ -12, %if.end16.fail.i_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #11
  %tobool30.not.i = icmp eq ptr %21, null
  br i1 %tobool30.not.i, label %fail.i.if.end32.i_crit_edge, label %if.then31.i

fail.i.if.end32.i_crit_edge:                      ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.then31.i:                                      ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ceph_destroy_options(ptr noundef nonnull %21) #11
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then31.i, %fail.i.if.end32.i_crit_edge, %fail.thread.i
  %err.066.i = phi i32 [ -12, %fail.thread.i ], [ %err.0.i, %if.then31.i ], [ %err.0.i, %fail.i.if.end32.i_crit_edge ]
  tail call fastcc void @destroy_mount_options(ptr noundef %19) #11
  %51 = inttoptr i32 %err.066.i to ptr
  br label %create_fs_client.exit

create_fs_client.exit:                            ; preds = %if.end32.i, %list_add_tail.exit.i
  %retval.0.i195 = phi ptr [ %51, %if.end32.i ], [ %call7.i.i.i, %list_add_tail.exit.i ]
  %52 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %opts, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %1, align 4
  %cmp.i = icmp ugt ptr %retval.0.i195, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %create_fs_client.exit
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %retval.0.i195 to i32
  br label %do.body118

if.end24:                                         ; preds = %create_fs_client.exit
  %call25 = tail call i32 @ceph_mdsc_init(ptr noundef %retval.0.i195) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.end24.out_crit_edge, label %if.end27

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end27:                                         ; preds = %if.end24
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %retval.0.i195, i32 0, i32 3
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 8
  %options = getelementptr inbounds %struct.ceph_client, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %options, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %and = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool28.not, ptr @ceph_compare_super, ptr null
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %61 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.0.i195, ptr %s_fs_info, align 4
  %call31 = tail call ptr @sget_fc(ptr noundef %fc, ptr noundef %spec.select, ptr noundef nonnull @ceph_set_super) #11
  %62 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %s_fs_info, align 4
  %cmp.i196 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %call31 to i32
  br label %out

if.end36:                                         ; preds = %if.end27
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %call31, i32 0, i32 33
  %64 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %s_fs_info.i, align 16
  %cmp38.not = icmp eq ptr %65, %retval.0.i195
  br i1 %cmp38.not, label %do.body58, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @destroy_fs_client(ptr noundef %retval.0.i195)
  %66 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_tree.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_tree, %if.then53)) #11
          to label %if.end79 [label %if.then53], !srcloc !420

if.then53:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_tree.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.73, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1228, ptr noundef %67) #11
  br label %if.end79

do.body58:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_tree.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_tree, %if.then70)) #11
          to label %do.end74 [label %if.then70], !srcloc !420

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_tree.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.75, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1230, ptr noundef %retval.0.i195) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then70, %do.body58
  %call.i.i.i198 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @bdi_seq, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @llvm.prefetch.p0(ptr nonnull @bdi_seq, i32 1, i32 3, i32 1) #11
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @bdi_seq, ptr nonnull @bdi_seq, i32 1, ptr nonnull elementtype(i32) @bdi_seq) #11, !srcloc !425
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !426
  %call1.i199 = tail call i32 (ptr, ptr, ...) @super_setup_bdi_name(ptr noundef %call31, ptr noundef nonnull @.str.144, i32 noundef %asmresult.i.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i199)
  %tobool.not.i200 = icmp eq i32 %call1.i199, 0
  br i1 %tobool.not.i200, label %ceph_setup_bdi.exit.thread, label %ceph_setup_bdi.exit

ceph_setup_bdi.exit.thread:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #13
  %mount_options.i201 = getelementptr inbounds %struct.ceph_fs_client, ptr %retval.0.i195, i32 0, i32 2
  %69 = ptrtoint ptr %mount_options.i201 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mount_options.i201, align 4
  %rasize.i = getelementptr inbounds %struct.ceph_mount_options, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %rasize.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rasize.i, align 4
  %shr.i = lshr i32 %72, 12
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %call31, i32 0, i32 27
  %73 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %s_bdi.i, align 8
  %ra_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ra_pages.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %shr.i, ptr %ra_pages.i, align 4
  %76 = load ptr, ptr %mount_options.i201, align 4
  %rsize.i = getelementptr inbounds %struct.ceph_mount_options, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %rsize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rsize.i, align 4
  %shr3.i = lshr i32 %78, 12
  %79 = load ptr, ptr %s_bdi.i, align 8
  %io_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %io_pages.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %shr3.i, ptr %io_pages.i, align 8
  br label %if.end79

ceph_setup_bdi.exit:                              ; preds = %do.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i199)
  %cmp76 = icmp slt i32 %call1.i199, 0
  br i1 %cmp76, label %ceph_setup_bdi.exit.out_splat_crit_edge, label %ceph_setup_bdi.exit.if.end79_crit_edge

ceph_setup_bdi.exit.if.end79_crit_edge:           ; preds = %ceph_setup_bdi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

ceph_setup_bdi.exit.out_splat_crit_edge:          ; preds = %ceph_setup_bdi.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_splat

if.end79:                                         ; preds = %ceph_setup_bdi.exit.if.end79_crit_edge, %ceph_setup_bdi.exit.thread, %if.then53, %if.then39
  %fsc.0 = phi ptr [ %67, %if.then53 ], [ %retval.0.i195, %ceph_setup_bdi.exit.if.end79_crit_edge ], [ %67, %if.then39 ], [ %retval.0.i195, %ceph_setup_bdi.exit.thread ]
  %call80 = tail call fastcc ptr @ceph_real_mount(ptr noundef %fsc.0, ptr noundef %fc)
  %cmp.i203 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then82, label %do.body85

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %call80 to i32
  br label %out_splat

do.body85:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_tree.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_tree, %if.then97)) #11
          to label %do.end107 [label %if.then97], !srcloc !420

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #13
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call80, i32 0, i32 5
  %82 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %83, i32 -952
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %add.ptr.i, align 8
  %snap = getelementptr i8, ptr %83, i32 -944
  %86 = ptrtoint ptr %snap to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %snap, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_tree.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.77, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1242, ptr noundef %call80, ptr noundef %83, i64 noundef %85, i64 noundef %87) #11
  br label %do.end107

do.end107:                                        ; preds = %if.then97, %do.body85
  %88 = ptrtoint ptr %fsc.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fsc.0, align 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %s_root, align 64
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %92 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %root, align 4
  br label %cleanup

out_splat:                                        ; preds = %if.then82, %ceph_setup_bdi.exit.out_splat_crit_edge
  %err.0 = phi i32 [ %81, %if.then82 ], [ %call1.i199, %ceph_setup_bdi.exit.out_splat_crit_edge ]
  %fsc.1 = phi ptr [ %fsc.0, %if.then82 ], [ %retval.0.i195, %ceph_setup_bdi.exit.out_splat_crit_edge ]
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc.1, i32 0, i32 9
  %93 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mdsc, align 8
  %mdsmap = getelementptr inbounds %struct.ceph_mds_client, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %mdsmap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mdsmap, align 8
  %call109 = tail call zeroext i1 @ceph_mdsmap_is_cluster_available(ptr noundef %96) #11
  br i1 %call109, label %out_splat.if.end116_crit_edge, label %do.end113

out_splat.if.end116_crit_edge:                    ; preds = %out_splat
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

do.end113:                                        ; preds = %out_splat
  call void @__sanitizer_cov_trace_pc() #13
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #15
  br label %if.end116

if.end116:                                        ; preds = %do.end113, %out_splat.if.end116_crit_edge
  %err.1 = phi i32 [ %err.0, %out_splat.if.end116_crit_edge ], [ -113, %do.end113 ]
  %97 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mdsc, align 8
  tail call void @ceph_mdsc_close_sessions(ptr noundef %98) #11
  tail call void @deactivate_locked_super(ptr noundef %call31) #11
  br label %do.body118

out:                                              ; preds = %if.then34, %if.end24.out_crit_edge
  %err.2 = phi i32 [ %call25, %if.end24.out_crit_edge ], [ %63, %if.then34 ]
  tail call fastcc void @destroy_fs_client(ptr noundef %retval.0.i195)
  br label %do.body118

do.body118:                                       ; preds = %out, %if.end116, %if.then22
  %err.3 = phi i32 [ %54, %if.then22 ], [ %err.2, %out ], [ %err.1, %if.end116 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_get_tree.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_get_tree, %if.then130)) #11
          to label %cleanup [label %if.then130], !srcloc !420

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_get_tree.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.80, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1259, i32 noundef %err.3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then130, %do.body118, %do.end107, %if.then11, %if.then5
  %retval.0 = phi i32 [ 0, %do.end107 ], [ -22, %if.then11 ], [ -22, %if.then5 ], [ %err.3, %if.then130 ], [ %err.3, %do.body118 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_reconfigure_fc(ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 4
  %root = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 5
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %and = and i32 %11, 32768
  %mount_options2 = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %mount_options2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mount_options2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and4 = and i32 %15, -32769
  %and4.sink = or i32 %and4, %and
  store i32 %and4.sink, ptr %13, align 4
  %mount_options5 = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %mount_options5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mount_options5, align 4
  %mon_addr = getelementptr inbounds %struct.ceph_mount_options, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mon_addr, align 4
  %mon_addr6 = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 15
  %20 = ptrtoint ptr %mon_addr6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mon_addr6, align 4
  %tobool.not.i = icmp eq ptr %19, null
  %tobool1.not.i = icmp eq ptr %21, null
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %entry.if.end17_crit_edge, label %if.end.i

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end.i:                                         ; preds = %entry
  %22 = xor i1 %tobool.not.i, %tobool1.not.i
  br i1 %22, label %if.end.i.if.then9_crit_edge, label %strcmp_null.exit

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

strcmp_null.exit:                                 ; preds = %if.end.i
  %call.i = tail call i32 @strcmp(ptr noundef %19, ptr noundef %21) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %strcmp_null.exit.if.end17_crit_edge, label %strcmp_null.exit.if.then9_crit_edge

strcmp_null.exit.if.then9_crit_edge:              ; preds = %strcmp_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

strcmp_null.exit.if.end17_crit_edge:              ; preds = %strcmp_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then9:                                         ; preds = %strcmp_null.exit.if.then9_crit_edge, %if.end.i.if.then9_crit_edge
  tail call void @kfree(ptr noundef %19) #11
  %23 = ptrtoint ptr %mon_addr6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mon_addr6, align 4
  %25 = ptrtoint ptr %mount_options5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mount_options5, align 4
  %mon_addr14 = getelementptr inbounds %struct.ceph_mount_options, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %mon_addr14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %mon_addr14, align 4
  store ptr null, ptr %mon_addr6, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #15
  br label %if.end17

if.end17:                                         ; preds = %if.then9, %strcmp_null.exit.if.end17_crit_edge, %entry.if.end17_crit_edge
  %28 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root, align 4
  %d_sb19 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %d_sb19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %d_sb19, align 4
  %call20 = tail call i32 @sync_filesystem(ptr noundef %31) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_parse_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @namespace_equals(ptr nocapture noundef readonly %fsopt, ptr nocapture noundef readonly %namespace, i32 noundef %len) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mds_namespace = getelementptr inbounds %struct.ceph_mount_options, ptr %fsopt, i32 0, i32 12
  %0 = ptrtoint ptr %mds_namespace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mds_namespace, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %1) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %len)
  %cmp.not = icmp eq i32 %call, %len
  br i1 %cmp.not, label %lor.rhs, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef %namespace, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4 = icmp eq i32 %call3, 0
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %entry.land.end_crit_edge
  %2 = phi i32 [ 1, %entry.land.end_crit_edge ], [ 0, %land.rhs.land.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_parse_source(ptr nocapture noundef %param, ptr nocapture noundef %fc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 4
  %4 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_source.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_source, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_source.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.47, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 335, ptr noundef nonnull @.str.45, ptr noundef %6) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.if.then6_crit_edge, label %lor.lhs.false

do.end.if.then6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

lor.lhs.false:                                    ; preds = %do.end
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %if.end9

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %do.end.if.then6_crit_edge
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log7 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %log7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log7, align 4
  %11 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %10, ptr noundef %12, i8 noundef zeroext 101, ptr noundef nonnull @.str.48) #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr @strchr(ptr noundef nonnull %6, i32 noundef 47)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  %server_path = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 13
  %13 = ptrtoint ptr %server_path to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %server_path, align 4
  tail call void @kfree(ptr noundef %14) #11
  %call13 = tail call noalias ptr @kstrdup(ptr noundef nonnull %call10, i32 noundef 3264) #11
  %15 = ptrtoint ptr %server_path to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %server_path, align 4
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %if.then12.cleanup_crit_edge, label %if.then12.for.cond.i_crit_edge

if.then12.for.cond.i_crit_edge:                   ; preds = %if.then12
  br label %for.cond.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.i:                                       ; preds = %for.inc.i, %if.then12.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %inc15.i, %for.inc.i ], [ 0, %if.then12.for.cond.i_crit_edge ]
  %j.0.i = phi i32 [ %j.1.i, %for.inc.i ], [ 0, %if.then12.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call13, i32 %i.0.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.180)
  switch i8 %17, label %for.cond.i.if.then.i_crit_edge [
    i8 0, label %for.end.i
    i8 47, label %lor.lhs.false.i
  ]

for.cond.i.if.then.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.0.i)
  %cmp6.i = icmp slt i32 %j.0.i, 1
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %sub.i = add nsw i32 %j.0.i, -1
  %arrayidx9.i = getelementptr i8, ptr %call13, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %20)
  %cmp11.not.i = icmp eq i8 %20, 47
  br i1 %cmp11.not.i, label %lor.lhs.false8.i.for.inc.i_crit_edge, label %lor.lhs.false8.i.if.then.i_crit_edge

lor.lhs.false8.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false8.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %lor.lhs.false8.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %for.cond.i.if.then.i_crit_edge
  %inc.i = add i32 %j.0.i, 1
  %arrayidx14.i = getelementptr i8, ptr %call13, i32 %j.0.i
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %17, ptr %arrayidx14.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lor.lhs.false8.i.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %inc.i, %if.then.i ], [ %j.0.i, %lor.lhs.false8.i.for.inc.i_crit_edge ]
  %inc15.i = add i32 %i.0.i, 1
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %j.0.i)
  %cmp16.i = icmp sgt i32 %j.0.i, 1
  br i1 %cmp16.i, label %land.lhs.true.i, label %for.end.i.canonicalize_path.exit_crit_edge

for.end.i.canonicalize_path.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %canonicalize_path.exit

land.lhs.true.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub18.i = add nsw i32 %j.0.i, -1
  %arrayidx19.i = getelementptr i8, ptr %call13, i32 %sub18.i
  %22 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %23)
  %cmp21.i = icmp eq i8 %23, 47
  %spec.select.i = select i1 %cmp21.i, i32 %sub18.i, i32 %j.0.i
  br label %canonicalize_path.exit

canonicalize_path.exit:                           ; preds = %land.lhs.true.i, %for.end.i.canonicalize_path.exit_crit_edge
  %j.2.i = phi i32 [ %j.0.i, %for.end.i.canonicalize_path.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %arrayidx25.i = getelementptr i8, ptr %call13, i32 %j.2.i
  %24 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx25.i, align 1
  br label %if.end21

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @strlen(ptr noundef nonnull %6) #17
  %add.ptr = getelementptr i8, ptr %6, i32 %call20
  br label %if.end21

if.end21:                                         ; preds = %if.else, %canonicalize_path.exit
  %dev_name_end.0 = phi ptr [ %call10, %canonicalize_path.exit ], [ %add.ptr, %if.else ]
  %incdec.ptr = getelementptr i8, ptr %dev_name_end.0, i32 -1
  %cmp = icmp ult ptr %incdec.ptr, %6
  br i1 %cmp, label %if.then22, label %do.body28

if.then22:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %log23 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log24 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %log24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %log24, align 4
  %27 = ptrtoint ptr %log23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %log23, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %26, ptr noundef %28, i8 noundef zeroext 101, ptr noundef nonnull @.str.49) #11
  br label %cleanup

do.body28:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_source.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_source, %if.then40)) #11
          to label %do.end44 [label %if.then40], !srcloc !420

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_source.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.51, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 359, i32 noundef %sub.ptr.sub, ptr noundef nonnull %6) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body28
  %server_path45 = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 13
  %29 = ptrtoint ptr %server_path45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %server_path45, align 4
  %tobool46.not = icmp eq ptr %30, null
  br i1 %tobool46.not, label %do.end44.do.body67_crit_edge, label %do.body48

do.end44.do.body67_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body67

do.body48:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_source.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_source, %if.then60)) #11
          to label %do.body67 [label %if.then60], !srcloc !420

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %server_path45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %server_path45, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_source.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.53, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 361, ptr noundef %32) #11
  br label %do.body67

do.body67:                                        ; preds = %if.then60, %do.body48, %do.end44.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_source.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_source, %if.then79)) #11
          to label %do.end83 [label %if.then79], !srcloc !420

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_source.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.55, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 363) #11
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  %call84 = tail call fastcc i32 @ceph_parse_new_source(ptr noundef nonnull %6, ptr noundef %incdec.ptr, ptr noundef %fc)
  %33 = zext i32 %call84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call84, label %do.end83.cleanup_crit_edge [
    i32 0, label %do.end83.if.end111_crit_edge
    i32 -22, label %do.body90
  ]

do.end83.if.end111_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body90:                                        ; preds = %do.end83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_source.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_source, %if.then102)) #11
          to label %do.end106 [label %if.then102], !srcloc !420

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_source.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.57, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 368) #11
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body90
  %34 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fs_private, align 4
  %opts.i = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %opts.i, align 4
  %38 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %39)
  %cmp.not.i = icmp eq i8 %39, 58
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i162

if.then.i162:                                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #13
  %log.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log2.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %log2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %log2.i, align 4
  %42 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %log.i, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %41, ptr noundef %43, i8 noundef zeroext 101, ptr noundef nonnull @.str.66) #11
  br label %cleanup

if.end.i:                                         ; preds = %do.end106
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %44 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %35, align 4
  %log5.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %log5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %log5.i, align 4
  %call.i = tail call i32 @ceph_parse_mon_ips(ptr noundef nonnull %6, i32 noundef %sub.ptr.sub.i, ptr noundef %45, ptr noundef %47, i8 noundef zeroext 44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ceph_parse_old_source.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ceph_parse_old_source.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %new_dev_syntax.i = getelementptr inbounds %struct.ceph_mount_options, ptr %37, i32 0, i32 10
  %48 = ptrtoint ptr %new_dev_syntax.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %new_dev_syntax.i, align 4
  br label %if.end111

if.end111:                                        ; preds = %ceph_parse_old_source.exit, %do.end83.if.end111_crit_edge
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %4, align 4
  %source = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %51 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %source, align 4
  store ptr null, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %if.end.i.cleanup_crit_edge, %if.then.i162, %do.end83.cleanup_crit_edge, %if.then22, %if.then12.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ -22, %if.then22 ], [ 0, %if.end111 ], [ -22, %if.then6 ], [ -12, %if.then12.cleanup_crit_edge ], [ %call84, %do.end83.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.then.i162 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_parse_mon_addr(ptr nocapture noundef %param, ptr nocapture noundef readonly %fc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private, align 4
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opts, align 4
  %mon_addr = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mon_addr, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = ptrtoint ptr %mon_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %mon_addr, align 4
  store ptr null, ptr %6, align 4
  %10 = load ptr, ptr %mon_addr, align 4
  %call = tail call i32 @strlen(ptr noundef %10) #17
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %log4 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %log4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log4, align 4
  %call5 = tail call i32 @ceph_parse_mon_ips(ptr noundef %10, i32 noundef %call, ptr noundef %12, ptr noundef %14, i8 noundef zeroext 47) #11
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_s32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ceph_parse_new_source(ptr noundef %dev_name, ptr noundef %dev_name_end, ptr nocapture noundef readonly %fc) unnamed_addr #0 align 64 {
entry:
  %fsid = alloca %struct.ceph_fsid, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fsid) #11
  %fs_private = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = call ptr @memset(ptr %fsid, i32 255, i32 16)
  %1 = ptrtoint ptr %fs_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fs_private, align 4
  %opts = getelementptr inbounds %struct.ceph_parse_opts_ctx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opts, align 4
  %5 = ptrtoint ptr %dev_name_end to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dev_name_end, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %6)
  %cmp.not = icmp eq i8 %6, 61
  br i1 %cmp.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_new_source.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_new_source, %if.then4)) #11
          to label %cleanup [label %if.then4], !srcloc !420

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_new_source.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.60, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 279) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call ptr @strchr(ptr noundef %dev_name, i32 noundef 64)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %log = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log10 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %log10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log10, align 4
  %9 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %8, ptr noundef %10, i8 noundef zeroext 101, ptr noundef nonnull @.str.61) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %incdec.ptr = getelementptr i8, ptr %call7, i32 1
  %call13 = tail call ptr @strchr(ptr noundef %incdec.ptr, i32 noundef 46)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %log16 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log17 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %log17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %log17, align 4
  %13 = ptrtoint ptr %log16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %log16, align 4
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %12, ptr noundef %14, i8 noundef zeroext 101, ptr noundef nonnull @.str.62) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call21 = call i32 @ceph_parse_fsid(ptr noundef %incdec.ptr, ptr noundef nonnull %fsid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %log24 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log25 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %log25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %log25, align 4
  %17 = ptrtoint ptr %log24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %log24, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %16, ptr noundef %18, i8 noundef zeroext 101, ptr noundef nonnull @.str.63) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %incdec.ptr29 = getelementptr i8, ptr %call13, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %dev_name_end to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr29 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mds_namespace.i = getelementptr inbounds %struct.ceph_mount_options, ptr %4, i32 0, i32 12
  %19 = ptrtoint ptr %mds_namespace.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mds_namespace.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end28.if.end37_crit_edge, label %land.rhs.i

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

land.rhs.i:                                       ; preds = %if.end28
  %call.i = call i32 @strlen(ptr noundef nonnull %20) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.ptr.sub)
  %cmp.not.i = icmp eq i32 %call.i, %sub.ptr.sub
  br i1 %cmp.not.i, label %namespace_equals.exit, label %land.rhs.i.if.then32_crit_edge

land.rhs.i.if.then32_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

namespace_equals.exit:                            ; preds = %land.rhs.i
  %call3.i = call i32 @strncmp(ptr noundef nonnull %20, ptr noundef %incdec.ptr29, i32 noundef %sub.ptr.sub) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %namespace_equals.exit.if.end37_crit_edge, label %namespace_equals.exit.if.then32_crit_edge

namespace_equals.exit.if.then32_crit_edge:        ; preds = %namespace_equals.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

namespace_equals.exit.if.end37_crit_edge:         ; preds = %namespace_equals.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then32:                                        ; preds = %namespace_equals.exit.if.then32_crit_edge, %land.rhs.i.if.then32_crit_edge
  %log33 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9
  %log34 = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %log34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %log34, align 4
  %23 = ptrtoint ptr %log33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log33, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %22, ptr noundef %24, i8 noundef zeroext 101, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end37:                                         ; preds = %namespace_equals.exit.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  call void @kfree(ptr noundef %20) #11
  %call38 = call ptr @kstrndup(ptr noundef %incdec.ptr29, i32 noundef %sub.ptr.sub, i32 noundef 3264) #11
  %25 = ptrtoint ptr %mds_namespace.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38, ptr %mds_namespace.i, align 4
  %tobool41.not = icmp eq ptr %call38, null
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %do.body44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body44:                                        ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_new_source.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_new_source, %if.then56)) #11
          to label %do.end61 [label %if.then56], !srcloc !420

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %mds_namespace.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mds_namespace.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_new_source.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.65, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 304, ptr noundef %27) #11
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %do.body44
  %new_dev_syntax = getelementptr inbounds %struct.ceph_mount_options, ptr %4, i32 0, i32 10
  %28 = ptrtoint ptr %new_dev_syntax to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %new_dev_syntax, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end61, %if.end37.cleanup_crit_edge, %if.then32, %if.then23, %if.then15, %if.then9, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then23 ], [ 0, %do.end61 ], [ -22, %if.then32 ], [ -22, %if.then15 ], [ -22, %if.then9 ], [ -22, %if.then4 ], [ -12, %if.end37.cleanup_crit_edge ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fsid) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_parse_fsid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_parse_mon_ips(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_compare_super(ptr noundef %sb, ptr nocapture noundef readonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 12
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 4
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mount_options, align 4
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %options = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %options, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_compare_super.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_compare_super, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_compare_super.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.83, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1131, ptr noundef %sb) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mount_options.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mount_options.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mount_options.i, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(44) %3, ptr noundef dereferenceable(44) %11, i32 44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not.i = icmp eq i32 %bcmp, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.do.body8_crit_edge

do.end.do.body8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

if.end.i:                                         ; preds = %do.end
  %snapdir_name.i = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %snapdir_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %snapdir_name.i, align 4
  %snapdir_name1.i = getelementptr inbounds %struct.ceph_mount_options, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %snapdir_name1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %snapdir_name1.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  %tobool1.not.i.i = icmp eq ptr %15, null
  %or.cond.i.i = and i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.if.end5.i_crit_edge, label %if.end.i.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.end.i
  %16 = xor i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %16, label %if.end.i.i.do.body8_crit_edge, label %strcmp_null.exit.i

if.end.i.i.do.body8_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit.i:                               ; preds = %if.end.i.i
  %call.i.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %strcmp_null.exit.i.if.end5.i_crit_edge, label %strcmp_null.exit.i.do.body8_crit_edge

strcmp_null.exit.i.do.body8_crit_edge:            ; preds = %strcmp_null.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit.i.if.end5.i_crit_edge:           ; preds = %strcmp_null.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %strcmp_null.exit.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %mds_namespace.i = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %mds_namespace.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mds_namespace.i, align 4
  %mds_namespace6.i = getelementptr inbounds %struct.ceph_mount_options, ptr %11, i32 0, i32 12
  %19 = ptrtoint ptr %mds_namespace6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mds_namespace6.i, align 4
  %tobool.not.i52.i = icmp eq ptr %18, null
  %tobool1.not.i53.i = icmp eq ptr %20, null
  %or.cond.i54.i = and i1 %tobool.not.i52.i, %tobool1.not.i53.i
  br i1 %or.cond.i54.i, label %if.end5.i.if.end10.i_crit_edge, label %if.end.i57.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end.i57.i:                                     ; preds = %if.end5.i
  %21 = xor i1 %tobool.not.i52.i, %tobool1.not.i53.i
  br i1 %21, label %if.end.i57.i.do.body8_crit_edge, label %strcmp_null.exit63.i

if.end.i57.i.do.body8_crit_edge:                  ; preds = %if.end.i57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit63.i:                             ; preds = %if.end.i57.i
  %call.i60.i = tail call i32 @strcmp(ptr noundef %18, ptr noundef %20) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool8.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool8.not.i, label %strcmp_null.exit63.i.if.end10.i_crit_edge, label %strcmp_null.exit63.i.do.body8_crit_edge

strcmp_null.exit63.i.do.body8_crit_edge:          ; preds = %strcmp_null.exit63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit63.i.if.end10.i_crit_edge:        ; preds = %strcmp_null.exit63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %strcmp_null.exit63.i.if.end10.i_crit_edge, %if.end5.i.if.end10.i_crit_edge
  %server_path.i = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %server_path.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %server_path.i, align 4
  %server_path11.i = getelementptr inbounds %struct.ceph_mount_options, ptr %11, i32 0, i32 13
  %24 = ptrtoint ptr %server_path11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %server_path11.i, align 4
  %tobool.not.i64.i = icmp eq ptr %23, null
  %tobool1.not.i65.i = icmp eq ptr %25, null
  %or.cond.i66.i = and i1 %tobool.not.i64.i, %tobool1.not.i65.i
  br i1 %or.cond.i66.i, label %if.end10.i.if.end15.i_crit_edge, label %if.end.i69.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.end.i69.i:                                     ; preds = %if.end10.i
  %26 = xor i1 %tobool.not.i64.i, %tobool1.not.i65.i
  br i1 %26, label %if.end.i69.i.do.body8_crit_edge, label %strcmp_null.exit75.i

if.end.i69.i.do.body8_crit_edge:                  ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit75.i:                             ; preds = %if.end.i69.i
  %call.i72.i = tail call i32 @strcmp(ptr noundef %23, ptr noundef %25) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72.i)
  %tobool13.not.i = icmp eq i32 %call.i72.i, 0
  br i1 %tobool13.not.i, label %strcmp_null.exit75.i.if.end15.i_crit_edge, label %strcmp_null.exit75.i.do.body8_crit_edge

strcmp_null.exit75.i.do.body8_crit_edge:          ; preds = %strcmp_null.exit75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit75.i.if.end15.i_crit_edge:        ; preds = %strcmp_null.exit75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.end15.i:                                       ; preds = %strcmp_null.exit75.i.if.end15.i_crit_edge, %if.end10.i.if.end15.i_crit_edge
  %fscache_uniq.i = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 14
  %27 = ptrtoint ptr %fscache_uniq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fscache_uniq.i, align 4
  %fscache_uniq16.i = getelementptr inbounds %struct.ceph_mount_options, ptr %11, i32 0, i32 14
  %29 = ptrtoint ptr %fscache_uniq16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fscache_uniq16.i, align 4
  %tobool.not.i149 = icmp eq ptr %28, null
  %tobool1.not.i150 = icmp eq ptr %30, null
  %or.cond.i151 = and i1 %tobool.not.i149, %tobool1.not.i150
  br i1 %or.cond.i151, label %if.end15.i.if.end20.i_crit_edge, label %if.end.i154

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end.i154:                                      ; preds = %if.end15.i
  %31 = xor i1 %tobool.not.i149, %tobool1.not.i150
  br i1 %31, label %if.end.i154.do.body8_crit_edge, label %strcmp_null.exit160

if.end.i154.do.body8_crit_edge:                   ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit160:                              ; preds = %if.end.i154
  %call.i157 = tail call i32 @strcmp(ptr noundef %28, ptr noundef %30) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool18.not.i = icmp eq i32 %call.i157, 0
  br i1 %tobool18.not.i, label %strcmp_null.exit160.if.end20.i_crit_edge, label %strcmp_null.exit160.do.body8_crit_edge

strcmp_null.exit160.do.body8_crit_edge:           ; preds = %strcmp_null.exit160
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit160.if.end20.i_crit_edge:         ; preds = %strcmp_null.exit160
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

if.end20.i:                                       ; preds = %strcmp_null.exit160.if.end20.i_crit_edge, %if.end15.i.if.end20.i_crit_edge
  %mon_addr.i = getelementptr inbounds %struct.ceph_mount_options, ptr %3, i32 0, i32 15
  %32 = ptrtoint ptr %mon_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mon_addr.i, align 4
  %mon_addr21.i = getelementptr inbounds %struct.ceph_mount_options, ptr %11, i32 0, i32 15
  %34 = ptrtoint ptr %mon_addr21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mon_addr21.i, align 4
  %tobool.not.i145 = icmp eq ptr %33, null
  %tobool1.not.i = icmp eq ptr %35, null
  %or.cond.i = and i1 %tobool.not.i145, %tobool1.not.i
  br i1 %or.cond.i, label %if.end20.i.compare_mount_options.exit_crit_edge, label %if.end.i146

if.end20.i.compare_mount_options.exit_crit_edge:  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %compare_mount_options.exit

if.end.i146:                                      ; preds = %if.end20.i
  %36 = xor i1 %tobool.not.i145, %tobool1.not.i
  br i1 %36, label %if.end.i146.do.body8_crit_edge, label %strcmp_null.exit

if.end.i146.do.body8_crit_edge:                   ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit:                                 ; preds = %if.end.i146
  %call.i147 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %35) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %tobool23.not.i = icmp eq i32 %call.i147, 0
  br i1 %tobool23.not.i, label %strcmp_null.exit.compare_mount_options.exit_crit_edge, label %strcmp_null.exit.do.body8_crit_edge

strcmp_null.exit.do.body8_crit_edge:              ; preds = %strcmp_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

strcmp_null.exit.compare_mount_options.exit_crit_edge: ; preds = %strcmp_null.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %compare_mount_options.exit

compare_mount_options.exit:                       ; preds = %strcmp_null.exit.compare_mount_options.exit_crit_edge, %if.end20.i.compare_mount_options.exit_crit_edge
  %client.i = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 3
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i, align 8
  %call26.i = tail call i32 @ceph_compare_options(ptr noundef %7, ptr noundef %38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool6.not = icmp eq i32 %call26.i, 0
  br i1 %tobool6.not, label %if.end25, label %compare_mount_options.exit.do.body8_crit_edge

compare_mount_options.exit.do.body8_crit_edge:    ; preds = %compare_mount_options.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

do.body8:                                         ; preds = %compare_mount_options.exit.do.body8_crit_edge, %strcmp_null.exit.do.body8_crit_edge, %if.end.i146.do.body8_crit_edge, %strcmp_null.exit160.do.body8_crit_edge, %if.end.i154.do.body8_crit_edge, %strcmp_null.exit75.i.do.body8_crit_edge, %if.end.i69.i.do.body8_crit_edge, %strcmp_null.exit63.i.do.body8_crit_edge, %if.end.i57.i.do.body8_crit_edge, %strcmp_null.exit.i.do.body8_crit_edge, %if.end.i.i.do.body8_crit_edge, %do.end.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_compare_super.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_compare_super, %if.then20)) #11
          to label %cleanup [label %if.then20], !srcloc !420

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_compare_super.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.85, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1134) #11
  br label %cleanup

if.end25:                                         ; preds = %compare_mount_options.exit
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %7, align 4
  %and = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end25.if.end49_crit_edge, label %land.lhs.true

if.end25.if.end49_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end25
  %fsid = getelementptr inbounds %struct.ceph_options, ptr %7, i32 0, i32 1
  %41 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client.i, align 8
  %bcmp183 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %fsid, ptr noundef dereferenceable(16) %42, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp183)
  %tobool30.not = icmp eq i32 %bcmp183, 0
  br i1 %tobool30.not, label %land.lhs.true.if.end49_crit_edge, label %do.body32

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

do.body32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_compare_super.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_compare_super, %if.then44)) #11
          to label %cleanup [label %if.then44], !srcloc !420

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_compare_super.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.87, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1139) #11
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end25.if.end49_crit_edge
  %sb_flags = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 13
  %43 = ptrtoint ptr %sb_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sb_flags, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %45 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %s_flags, align 4
  %and50 = and i32 %46, -536870913
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %and50)
  %cmp.not = icmp eq i32 %44, %and50
  br i1 %cmp.not, label %if.end69, label %do.body52

do.body52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_compare_super.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_compare_super, %if.then64)) #11
          to label %cleanup [label %if.then64], !srcloc !420

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_compare_super.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.89, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1143) #11
  br label %cleanup

if.end69:                                         ; preds = %if.end49
  %blocklisted = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 5
  %47 = ptrtoint ptr %blocklisted to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %blocklisted, align 8, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool70.not = icmp eq i8 %48, 0
  br i1 %tobool70.not, label %if.end69.if.end94_crit_edge, label %land.lhs.true71

if.end69.if.end94_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

land.lhs.true71:                                  ; preds = %if.end69
  %49 = ptrtoint ptr %mount_options.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mount_options.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %and74 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body77, label %land.lhs.true71.if.end94_crit_edge

land.lhs.true71.if.end94_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.body77:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_compare_super.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_compare_super, %if.then89)) #11
          to label %cleanup [label %if.then89], !srcloc !420

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_compare_super.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.91, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1148) #11
  br label %cleanup

if.end94:                                         ; preds = %land.lhs.true71.if.end94_crit_edge, %if.end69.if.end94_crit_edge
  %mount_state = getelementptr inbounds %struct.ceph_fs_client, ptr %9, i32 0, i32 4
  %53 = ptrtoint ptr %mount_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mount_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %cmp95 = icmp eq i32 %54, 4
  br i1 %cmp95, label %do.body97, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_compare_super.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_compare_super, %if.then109)) #11
          to label %cleanup [label %if.then109], !srcloc !420

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_compare_super.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.93, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1153) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %do.body97, %if.end94.cleanup_crit_edge, %if.then89, %do.body77, %if.then64, %do.body52, %if.then44, %do.body32, %if.then20, %do.body8
  %retval.0 = phi i32 [ 0, %if.then20 ], [ 0, %if.then44 ], [ 0, %if.then64 ], [ 0, %if.then89 ], [ 0, %if.then109 ], [ 1, %if.end94.cleanup_crit_edge ], [ 0, %do.body8 ], [ 0, %do.body32 ], [ 0, %do.body52 ], [ 0, %do.body77 ], [ 0, %do.body97 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget_fc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_set_super(ptr noundef %s, ptr noundef %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_set_super.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_set_super, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_set_super.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.99, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1099, ptr noundef %s) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 17592186040320, ptr %s_maxbytes, align 8
  %s_xattr = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 18
  %3 = ptrtoint ptr %s_xattr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ceph_xattr_handlers, ptr %s_xattr, align 16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %s, ptr %1, align 8
  %max_file_size = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %max_file_size to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1099511627776, ptr %max_file_size, align 8
  %s_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 6
  %6 = ptrtoint ptr %s_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ceph_super_ops, ptr %s_op, align 4
  %s_d_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 45
  %7 = ptrtoint ptr %s_d_op to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ceph_dentry_ops, ptr %s_d_op, align 8
  %s_export_op = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 9
  %8 = ptrtoint ptr %s_export_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ceph_export_ops, ptr %s_export_op, align 16
  %s_time_gran = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 34
  %9 = ptrtoint ptr %s_time_gran to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %s_time_gran, align 4
  %s_time_min = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 35
  %10 = ptrtoint ptr %s_time_min to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %s_time_min, align 8
  %s_time_max = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 36
  %11 = ptrtoint ptr %s_time_max to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 4294967295, ptr %s_time_max, align 64
  %call4 = tail call i32 @set_anon_super_fc(ptr noundef %s, ptr noundef %fc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %1, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_fs_client(ptr noundef %fsc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_fs_client.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_fs_client, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @destroy_fs_client.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.141, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 844, ptr noundef %fsc) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @ceph_fsc_lock) #11
  %metric_wakeup = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %metric_wakeup) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %metric_wakeup to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %metric_wakeup, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %metric_wakeup to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %metric_wakeup, align 4
  %prev.i = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ceph_fsc_lock) #11
  tail call void @ceph_mdsc_destroy(ptr noundef %fsc) #11
  %inode_wq = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 11
  %8 = ptrtoint ptr %inode_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %inode_wq, align 8
  tail call void @destroy_workqueue(ptr noundef %9) #11
  %cap_wq = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 12
  %10 = ptrtoint ptr %cap_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cap_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %11) #11
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 2
  %12 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mount_options, align 4
  tail call fastcc void @destroy_mount_options(ptr noundef %13)
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 3
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 8
  tail call void @ceph_destroy_client(ptr noundef %15) #11
  tail call void @kfree(ptr noundef %fsc) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @destroy_fs_client.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@destroy_fs_client, %if.then16)) #11
          to label %do.end19 [label %if.then16], !srcloc !420

if.then16:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @destroy_fs_client.__UNIQUE_ID_ddebug330, ptr noundef nonnull @.str.143, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 859, ptr noundef %fsc) #11
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %list_del.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ceph_real_mount(ptr noundef %fsc, ptr noundef %fc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_real_mount.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_real_mount, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_real_mount.__UNIQUE_ID_ddebug335, ptr noundef nonnull @.str.147, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1052, ptr noundef %fsc) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 3
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 8
  %mount_mutex = getelementptr inbounds %struct.ceph_client, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mount_mutex, i32 noundef 0) #11
  %3 = ptrtoint ptr %fsc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fsc, align 8
  %s_root = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_root, align 64
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then5, label %dget.exit107

if.then5:                                         ; preds = %do.end
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 2
  %7 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mount_options, align 4
  %server_path = getelementptr inbounds %struct.ceph_mount_options, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %server_path to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %server_path, align 4
  %tobool6.not = icmp eq ptr %10, null
  %add.ptr = getelementptr i8, ptr %10, i32 1
  %spec.select = select i1 %tobool6.not, ptr @.str.148, ptr %add.ptr
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 8
  %call10 = tail call i32 @__ceph_open_session(ptr noundef %12, i32 noundef %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.then5.out_crit_edge, label %if.end12

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end12:                                         ; preds = %if.then5
  %13 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mount_options, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end12.do.body21_crit_edge, label %if.then15

if.end12.do.body21_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @ceph_fscache_register_fs(ptr noundef %fsc, ptr noundef %fc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.out_crit_edge, label %if.then15.do.body21_crit_edge

if.then15.do.body21_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body21:                                        ; preds = %if.then15.do.body21_crit_edge, %if.end12.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_real_mount.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_real_mount, %if.then33)) #11
          to label %do.end37 [label %if.then33], !srcloc !420

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_real_mount.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.150, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1070, ptr noundef %spec.select) #11
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  tail call void @ceph_fs_debugfs_init(ptr noundef %fsc) #11
  %call38 = tail call fastcc ptr @open_root_dentry(ptr noundef %fsc, ptr noundef %spec.select, i32 noundef %0)
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call38 to i32
  br label %out

if.end42:                                         ; preds = %do.end37
  %tobool.not.i = icmp eq ptr %call38, null
  br i1 %tobool.not.i, label %if.end42.cleanup_crit_edge, label %if.then.i

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call38, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end42.cleanup_crit_edge
  %18 = ptrtoint ptr %fsc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fsc, align 8
  %s_root45 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %s_root45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %s_root45, align 64
  br label %if.end49

dget.exit107:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %d_lockref.i105 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i105) #11
  br label %if.end49

if.end49:                                         ; preds = %dget.exit107, %cleanup
  %root.1 = phi ptr [ %6, %dget.exit107 ], [ %call38, %cleanup ]
  %mount_state = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 4
  %21 = ptrtoint ptr %mount_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %mount_state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_real_mount.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_real_mount, %if.then62)) #11
          to label %do.end66 [label %if.then62], !srcloc !420

if.then62:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_real_mount.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.152, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1085) #11
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %if.end49
  %22 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client, align 8
  %mount_mutex68 = getelementptr inbounds %struct.ceph_client, ptr %23, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mount_mutex68) #11
  br label %cleanup72

out:                                              ; preds = %if.then40, %if.then15.out_crit_edge, %if.then5.out_crit_edge
  %err.1.ph = phi i32 [ %call16, %if.then15.out_crit_edge ], [ %call10, %if.then5.out_crit_edge ], [ %17, %if.then40 ]
  %24 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client, align 8
  %mount_mutex70 = getelementptr inbounds %struct.ceph_client, ptr %25, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %mount_mutex70) #11
  %26 = inttoptr i32 %err.1.ph to ptr
  br label %cleanup72

cleanup72:                                        ; preds = %out, %do.end66
  %retval.0 = phi ptr [ %root.1, %do.end66 ], [ %26, %out ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_mdsmap_is_cluster_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_close_sessions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_compare_options(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_create_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @extra_mon_dispatch(ptr nocapture noundef readonly %client, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 2
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %type1 = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type1, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.182)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 21, label %sw.bb
    i16 103, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsc, align 8
  tail call void @ceph_mdsc_handle_mdsmap(ptr noundef %7, ptr noundef %msg) #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mdsc3 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %mdsc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdsc3, align 8
  tail call void @ceph_mdsc_handle_fsmap(ptr noundef %9, ptr noundef %msg) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 0, %sw.bb ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_monc_want_map(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_destroy_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_handle_mdsmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_handle_fsmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super_fc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_alloc_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_free_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_write_inode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_evict_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_put_super(ptr nocapture noundef readonly %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_put_super.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_put_super, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_put_super.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.102, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 48) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  tail call void @ceph_mdsc_close_sessions(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_sync_fs(ptr nocapture noundef readonly %sb, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  br i1 %tobool.not, label %do.body, label %do.body25

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_fs.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_fs, %if.then5)) #11
          to label %do.end [label %if.then5], !srcloc !420

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_fs.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.105, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 120) #11
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  tail call void @ceph_flush_dirty_caps(ptr noundef %3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_fs.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_fs, %if.then19)) #11
          to label %cleanup [label %if.then19], !srcloc !420

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_fs.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.107, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 122) #11
  br label %cleanup

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_fs.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_fs, %if.then37)) #11
          to label %do.end41 [label %if.then37], !srcloc !420

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_fs.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.109, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 126) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 8
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %5, i32 0, i32 12
  tail call void @ceph_osdc_sync(ptr noundef %osdc) #11
  %mdsc42 = getelementptr inbounds %struct.ceph_fs_client, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %mdsc42 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdsc42, align 8
  tail call void @ceph_mdsc_sync(ptr noundef %7) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sync_fs.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sync_fs, %if.then55)) #11
          to label %cleanup [label %if.then55], !srcloc !420

if.then55:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sync_fs.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.111, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 129) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.end41, %if.then19, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_statfs(ptr nocapture noundef readonly %dentry, ptr noundef %buf) #0 align 64 {
entry:
  %st = alloca %struct.ceph_statfs, align 8
  call void @__sanitizer_cov_trace_pc() #13
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
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  %monc2 = getelementptr inbounds %struct.ceph_client, ptr %7, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %st) #11
  %8 = getelementptr inbounds %struct.ceph_statfs, ptr %st, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ceph_statfs, ptr %st, i32 0, i32 3
  %mdsc = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 9
  %10 = call ptr @memset(ptr %st, i32 255, i32 32)
  %11 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdsc, align 8
  %mdsmap = getelementptr inbounds %struct.ceph_mds_client, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %mdsmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdsmap, align 8
  %m_num_data_pg_pools = getelementptr inbounds %struct.ceph_mdsmap, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %m_num_data_pg_pools to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_num_data_pg_pools, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp = icmp eq i32 %16, 1
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %m_data_pg_pools = getelementptr inbounds %struct.ceph_mdsmap, ptr %14, i32 0, i32 12
  %17 = ptrtoint ptr %m_data_pg_pools to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_data_pg_pools, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %18, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %data_pool.0 = phi i64 [ %20, %if.then ], [ -1, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_statfs.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_statfs, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !420

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_statfs.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.114, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 66) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call11 = call i32 @ceph_monc_do_statfs(ptr noundef %monc2, i64 noundef %data_pool.0, ptr noundef nonnull %st) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 12805120, ptr %buf, align 8
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %22 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4194304, ptr %f_bsize, align 4
  %f_frsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 9
  %23 = ptrtoint ptr %f_frsize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4194304, ptr %f_frsize, align 4
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mount_options, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end14
  %call16 = call zeroext i1 @ceph_quota_update_statfs(ptr noundef %5, ptr noundef %buf) #11
  br i1 %call16, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %28 = ptrtoint ptr %st to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %st, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  %shr = lshr i64 %30, 12
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %31 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shr, ptr %f_blocks, align 8
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %8, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33)
  %shr18 = lshr i64 %34, 12
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %35 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shr18, ptr %f_bfree, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %36 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shr18, ptr %f_bavail, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %lor.lhs.false.if.end21_crit_edge
  %37 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %9, align 8
  %39 = call i64 @llvm.bswap.i64(i64 %38)
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %40 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %f_files, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %41 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %f_ffree, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %42 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 255, ptr %f_namelen, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %43 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %f_fsid, align 8
  %mutex = getelementptr inbounds %struct.ceph_client, ptr %7, i32 0, i32 11, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %monmap = getelementptr inbounds %struct.ceph_client, ptr %7, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %monmap, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47)
  %49 = ptrtoint ptr %f_fsid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %f_fsid, align 8
  %xor = xor i32 %50, %48
  store i32 %xor, ptr %f_fsid, align 8
  %51 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %monmap, align 4
  %arrayidx24.1 = getelementptr i32, ptr %52, i32 1
  %53 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx24.1, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %xor.1 = xor i32 %xor, %55
  %56 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %xor.1, ptr %f_fsid, align 8
  %57 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %monmap, align 4
  %arrayidx24.2 = getelementptr i32, ptr %58, i32 2
  %59 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx24.2, align 4
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %xor.2 = xor i32 %xor.1, %61
  %62 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %xor.2, ptr %f_fsid, align 8
  %63 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %monmap, align 4
  %arrayidx24.3 = getelementptr i32, ptr %64, i32 3
  %65 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx24.3, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %xor.3 = xor i32 %xor.2, %67
  %68 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %xor.3, ptr %f_fsid, align 8
  call void @mutex_unlock(ptr noundef %mutex) #11
  %fs_cluster_id = getelementptr inbounds %struct.ceph_client, ptr %7, i32 0, i32 11, i32 20
  %69 = ptrtoint ptr %fs_cluster_id to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fs_cluster_id, align 8
  %arrayidx31 = getelementptr %struct.kstatfs, ptr %buf, i32 0, i32 7, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx31, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ %call11, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %st) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceph_show_options(ptr noundef %m, ptr nocapture noundef readonly %root) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %root, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %mount_options = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mount_options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mount_options, align 4
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  %count = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 8
  %call1 = tail call i32 @ceph_print_client_options(ptr noundef %m, ptr noundef %9, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp = icmp eq i32 %11, %7
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i32 %7, -1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %count, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %and = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.115) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %and10 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end13_crit_edge, label %if.then12

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.116) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end8.if.end13_crit_edge
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %and15 = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.if.end18_crit_edge, label %if.then17

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.117) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %and20 = and i32 %20, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %if.then22, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.118) #11
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %5, align 4
  %and25 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end28_crit_edge, label %if.then27

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.119) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23.if.end28_crit_edge
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %and30 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end33_crit_edge, label %if.then32

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.end28
  %fscache_uniq = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 14
  %25 = ptrtoint ptr %fscache_uniq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fscache_uniq, align 4
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef 3, i32 noundef 8, ptr noundef nonnull @.str.137) #11
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then32.if.end33_crit_edge, label %if.then.i

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #11
  %call.i.i5.i = tail call i32 @strlen(ptr noundef nonnull %26) #18
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %26, i32 noundef %call.i.i5.i, i32 noundef 8, ptr noundef nonnull @.str.138) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then.i, %if.then32.if.end33_crit_edge, %if.end28.if.end33_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %5, align 4
  %and35 = and i32 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end38_crit_edge, label %if.then37

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.120) #11
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33.if.end38_crit_edge
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %and40 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end43_crit_edge, label %if.then42

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.121) #11
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end38.if.end43_crit_edge
  %31 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags, align 4
  %and45 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %.str.123..str.122 = select i1 %tobool46.not, ptr @.str.123, ptr @.str.122
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.123..str.122) #11
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %5, align 4
  %and50 = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 0
  br i1 %cmp51, label %if.then52, label %if.end43.if.end53_crit_edge

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.124) #11
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end43.if.end53_crit_edge
  %mds_namespace = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 12
  %37 = ptrtoint ptr %mds_namespace to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mds_namespace, align 4
  %tobool54.not = icmp eq ptr %38, null
  br i1 %tobool54.not, label %if.end53.if.end58_crit_edge, label %land.lhs.true

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end53
  %new_dev_syntax = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 10
  %39 = ptrtoint ptr %new_dev_syntax to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %new_dev_syntax, align 4, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool55.not = icmp eq i8 %40, 0
  br i1 %tobool55.not, label %seq_show_option.exit207, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

seq_show_option.exit207:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 13, i32 noundef 8, ptr noundef nonnull @.str.137) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #11
  %call.i.i5.i205 = tail call i32 @strlen(ptr noundef nonnull %38) #18
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %38, i32 noundef %call.i.i5.i205, i32 noundef 8, ptr noundef nonnull @.str.138) #11
  br label %if.end58

if.end58:                                         ; preds = %seq_show_option.exit207, %land.lhs.true.if.end58_crit_edge, %if.end53.if.end58_crit_edge
  %mon_addr = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 15
  %41 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mon_addr, align 4
  %tobool59.not = icmp eq ptr %42, null
  br i1 %tobool59.not, label %if.end58.if.end62_crit_edge, label %if.then60

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.125, ptr noundef nonnull %42) #11
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end58.if.end62_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  %and64 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end67_crit_edge, label %if.then66

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef 15, i32 noundef 8, ptr noundef nonnull @.str.137) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #11
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef 5, i32 noundef 8, ptr noundef nonnull @.str.138) #11
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end62.if.end67_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 4
  %and69 = and i32 %46, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then71, label %if.end67.if.end72_crit_edge

if.end67.if.end72_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.126) #11
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end67.if.end72_crit_edge
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %5, align 4
  %and74 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end72.if.end77_crit_edge, label %if.then76

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.127) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end72.if.end77_crit_edge
  %wsize = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 1
  %49 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %50)
  %cmp78.not = icmp eq i32 %50, 67108864
  br i1 %cmp78.not, label %if.end77.if.end81_crit_edge, label %if.then79

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.128, i32 noundef %50) #11
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end77.if.end81_crit_edge
  %rsize = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 2
  %51 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %52)
  %cmp82.not = icmp eq i32 %52, 67108864
  br i1 %cmp82.not, label %if.end81.if.end85_crit_edge, label %if.then83

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.129, i32 noundef %52) #11
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end81.if.end85_crit_edge
  %rasize = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 3
  %53 = ptrtoint ptr %rasize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rasize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %54)
  %cmp86.not = icmp eq i32 %54, 8388608
  br i1 %cmp86.not, label %if.end85.if.end89_crit_edge, label %if.then87

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.130, i32 noundef %54) #11
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end85.if.end89_crit_edge
  %congestion_kb = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 4
  %55 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %congestion_kb, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %57 = load volatile i32, ptr @_totalram_pages, align 4
  %call1.i = tail call i32 @int_sqrt(i32 noundef %57) #11
  %mul.i = shl i32 %call1.i, 6
  %58 = tail call i32 @llvm.smin.i32(i32 %mul.i, i32 262144) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp91.not = icmp eq i32 %56, %58
  br i1 %cmp91.not, label %if.end89.if.end94_crit_edge, label %if.then92

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %congestion_kb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %congestion_kb, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.131, i32 noundef %60) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89.if.end94_crit_edge
  %caps_max = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 7
  %61 = ptrtoint ptr %caps_max to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %caps_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool95.not = icmp eq i32 %62, 0
  br i1 %tobool95.not, label %if.end94.if.end98_crit_edge, label %if.then96

if.end94.if.end98_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.132, i32 noundef %62) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %if.end94.if.end98_crit_edge
  %caps_wanted_delay_min = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 5
  %63 = ptrtoint ptr %caps_wanted_delay_min to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %caps_wanted_delay_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %cmp99.not = icmp eq i32 %64, 5
  br i1 %cmp99.not, label %if.end98.if.end102_crit_edge, label %if.then100

if.end98.if.end102_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.133, i32 noundef %64) #11
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end98.if.end102_crit_edge
  %caps_wanted_delay_max = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 6
  %65 = ptrtoint ptr %caps_wanted_delay_max to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %caps_wanted_delay_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %66)
  %cmp103.not = icmp eq i32 %66, 60
  br i1 %cmp103.not, label %if.end102.if.end106_crit_edge, label %if.then104

if.end102.if.end106_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.134, i32 noundef %66) #11
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end102.if.end106_crit_edge
  %max_readdir = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 8
  %67 = ptrtoint ptr %max_readdir to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_readdir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %68)
  %cmp107.not = icmp eq i32 %68, 1024
  br i1 %cmp107.not, label %if.end106.if.end110_crit_edge, label %if.then108

if.end106.if.end110_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.135, i32 noundef %68) #11
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end106.if.end110_crit_edge
  %max_readdir_bytes = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 9
  %69 = ptrtoint ptr %max_readdir_bytes to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_readdir_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %70)
  %cmp111.not = icmp eq i32 %70, 524288
  br i1 %cmp111.not, label %if.end110.if.end114_crit_edge, label %if.then112

if.end110.if.end114_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.136, i32 noundef %70) #11
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end110.if.end114_crit_edge
  %snapdir_name = getelementptr inbounds %struct.ceph_mount_options, ptr %5, i32 0, i32 11
  %71 = ptrtoint ptr %snapdir_name to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %snapdir_name, align 4
  %call115 = tail call i32 @strcmp(ptr noundef %72, ptr noundef nonnull dereferenceable(6) @.str.9) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.cleanup_crit_edge, label %if.then117

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then117:                                       ; preds = %if.end114
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull @.str.37, i32 noundef 11, i32 noundef 8, ptr noundef nonnull @.str.137) #11
  %tobool.not.i212 = icmp eq ptr %72, null
  br i1 %tobool.not.i212, label %if.then117.cleanup_crit_edge, label %if.then.i214

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i214:                                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 61) #11
  %call.i.i5.i213 = tail call i32 @strlen(ptr noundef nonnull %72) #18
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef nonnull %72, i32 noundef %call.i.i5.i213, i32 noundef 8, ptr noundef nonnull @.str.138) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i214, %if.then117.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_flush_dirty_caps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_monc_do_statfs(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_quota_update_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_print_client_options(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_open_session(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_fscache_register_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fs_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @open_root_dentry(ptr nocapture noundef readonly %fsc, ptr noundef %path, i32 noundef %started) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdsc1 = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 9
  %0 = ptrtoint ptr %mdsc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdsc1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @open_root_dentry.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@open_root_dentry, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !420

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @open_root_dentry.__UNIQUE_ID_ddebug332, ptr noundef nonnull @.str.155, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1007, ptr noundef %path) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @ceph_mdsc_create_request(ptr noundef %1, i32 noundef 257, i32 noundef 0) #11
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.cleanup61_crit_edge, label %if.end9

do.end.cleanup61_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.end9:                                          ; preds = %do.end
  %call10 = tail call noalias ptr @kstrdup(ptr noundef %path, i32 noundef 3136) #11
  %r_path1 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 9
  %2 = ptrtoint ptr %r_path1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %r_path1, align 8
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end9.out_crit_edge, label %if.end15

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end15:                                         ; preds = %if.end9
  %r_ino1 = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 11
  %3 = ptrtoint ptr %r_ino1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1, ptr %r_ino1, align 8
  %snap = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %snap to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -2, ptr %snap, align 8
  %r_started = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 43
  %5 = ptrtoint ptr %r_started to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %started, ptr %r_started, align 8
  %client = getelementptr inbounds %struct.ceph_fs_client, ptr %fsc, i32 0, i32 3
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 8
  %options = getelementptr inbounds %struct.ceph_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %options, align 8
  %mount_timeout = getelementptr inbounds %struct.ceph_options, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mount_timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mount_timeout, align 4
  %r_timeout = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 42
  %12 = ptrtoint ptr %r_timeout to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %r_timeout, align 4
  %r_args = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 17
  %13 = ptrtoint ptr %r_args to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %r_args, align 8
  %r_num_caps = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 40
  %14 = ptrtoint ptr %r_num_caps to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %r_num_caps, align 4
  %call17 = tail call i32 @ceph_mdsc_do_request(ptr noundef %1, ptr noundef null, ptr noundef %call5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp eq i32 %call17, 0
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %r_target_inode = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 14
  %15 = ptrtoint ptr %r_target_inode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %r_target_inode, align 4
  store ptr null, ptr %r_target_inode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @open_root_dentry.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@open_root_dentry, %if.then32)) #11
          to label %do.end36 [label %if.then32], !srcloc !420

if.then32:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @open_root_dentry.__UNIQUE_ID_ddebug333, ptr noundef nonnull @.str.157, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1027) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %if.then18
  %call37 = tail call ptr @d_make_root(ptr noundef %16) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end36.out_crit_edge, label %do.body42

do.end36.out_crit_edge:                           ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body42:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @open_root_dentry.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@open_root_dentry, %if.then54)) #11
          to label %out [label %if.then54], !srcloc !420

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @open_root_dentry.__UNIQUE_ID_ddebug334, ptr noundef nonnull @.str.159, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 1033, ptr noundef nonnull %call37) #11
  br label %out

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %17 = inttoptr i32 %call17 to ptr
  br label %out

out:                                              ; preds = %if.else, %if.then54, %do.body42, %do.end36.out_crit_edge, %if.end9.out_crit_edge
  %root.1 = phi ptr [ %17, %if.else ], [ %call37, %if.then54 ], [ inttoptr (i32 -12 to ptr), %if.end9.out_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end36.out_crit_edge ], [ %call37, %do.body42 ]
  %r_kref.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call5, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !427
  tail call void @llvm.prefetch.p0(ptr %r_kref.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i, ptr %r_kref.i, i32 1, ptr elementtype(i32) %r_kref.i) #11, !srcloc !428
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup61_crit_edge, label %if.then10.i.i.i.i.i, !prof !429

if.end5.i.i.i.i.i.cleanup61_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %r_kref.i, i32 noundef 3) #11
  br label %cleanup61

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !430
  tail call void @ceph_mdsc_release_request(ptr noundef %r_kref.i) #11
  br label %cleanup61

cleanup61:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup61_crit_edge, %do.end.cleanup61_crit_edge
  %retval.0 = phi ptr [ %call5, %do.end.cleanup61_crit_edge ], [ %root.1, %if.end5.i.i.i.i.i.cleanup61_crit_edge ], [ %root.1, %if.then10.i.i.i.i.i ], [ %root.1, %if.then.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_pre_umount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fs_debugfs_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_fscache_unregister_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_metrics(ptr noundef %val, ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %val) #15
  br label %cleanup

if.else:                                          ; preds = %entry
  %0 = load i8, ptr @disable_send_metrics, align 1, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool2.not = icmp eq i8 %0, 0
  br i1 %tobool2.not, label %if.then3, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.else
  tail call void @_raw_spin_lock(ptr noundef nonnull @ceph_fsc_lock) #11
  %.pn15 = load ptr, ptr @ceph_fsc_list, align 4
  %cmp.not16 = icmp eq ptr %.pn15, @ceph_fsc_list
  br i1 %cmp.not16, label %if.then3.for.end_crit_edge, label %if.then3.for.body_crit_edge

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

if.then3.for.end_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %metric_schedule_delayed.exit.for.body_crit_edge, %if.then3.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %metric_schedule_delayed.exit.for.body_crit_edge ], [ %.pn15, %if.then3.for.body_crit_edge ]
  %1 = load i8, ptr @disable_send_metrics, align 1, !range !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.metric_schedule_delayed.exit_crit_edge

for.body.metric_schedule_delayed.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %metric_schedule_delayed.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %mdsc = getelementptr i8, ptr %.pn17, i32 36
  %2 = ptrtoint ptr %mdsc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdsc, align 8
  %delayed_work.i = getelementptr inbounds %struct.ceph_mds_client, ptr %3, i32 0, i32 49, i32 11
  %call.i = tail call i32 @round_jiffies_relative(i32 noundef 100) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %delayed_work.i, i32 noundef %call.i) #11
  br label %metric_schedule_delayed.exit

metric_schedule_delayed.exit:                     ; preds = %if.end.i, %for.body.metric_schedule_delayed.exit_crit_edge
  %5 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, @ceph_fsc_list
  br i1 %cmp.not, label %metric_schedule_delayed.exit.for.end_crit_edge, label %metric_schedule_delayed.exit.for.body_crit_edge

metric_schedule_delayed.exit.for.body_crit_edge:  ; preds = %metric_schedule_delayed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

metric_schedule_delayed.exit.for.end_crit_edge:   ; preds = %metric_schedule_delayed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %metric_schedule_delayed.exit.for.end_crit_edge, %if.then3.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ceph_fsc_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_bool(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_bool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_caches() unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.172, i32 noundef 1736, i32 noundef 8, i32 noundef 68288512, ptr noundef nonnull @ceph_inode_init_once) #11
  store ptr %call, ptr @ceph_inode_cachep, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.173, i32 noundef 88, i32 noundef 8, i32 noundef 1048576, ptr noundef null) #11
  store ptr %call1, ptr @ceph_cap_cachep, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.bad_cap_crit_edge, label %if.end4

if.end.bad_cap_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_cap

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.174, i32 noundef 32, i32 noundef 8, i32 noundef 1179648, ptr noundef null) #11
  store ptr %call5, ptr @ceph_cap_flush_cachep, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.bad_cap_flush_crit_edge, label %if.end8

if.end4.bad_cap_flush_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_cap_flush

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.175, i32 noundef 56, i32 noundef 8, i32 noundef 1179648, ptr noundef null) #11
  store ptr %call9, ptr @ceph_dentry_cachep, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.bad_dentry_crit_edge, label %if.end12

if.end8.bad_dentry_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_dentry

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.176, i32 noundef 64, i32 noundef 4, i32 noundef 1048576, ptr noundef null) #11
  store ptr %call13, ptr @ceph_file_cachep, align 4
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.bad_file_crit_edge, label %if.end16

if.end12.bad_file_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_file

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.177, i32 noundef 112, i32 noundef 8, i32 noundef 1048576, ptr noundef null) #11
  store ptr %call17, ptr @ceph_dir_file_cachep, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end16.bad_dir_file_crit_edge, label %if.end20

if.end16.bad_dir_file_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_dir_file

if.end20:                                         ; preds = %if.end16
  %call21 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.178, i32 noundef 864, i32 noundef 8, i32 noundef 1048576, ptr noundef null) #11
  store ptr %call21, ptr @ceph_mds_request_cachep, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.bad_mds_req_crit_edge, label %if.end24

if.end20.bad_mds_req_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad_mds_req

if.end24:                                         ; preds = %if.end20
  %call.i = tail call ptr @mempool_create(i32 noundef 10, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 16384 to ptr)) #11
  store ptr %call.i, ptr @ceph_wb_pagevec_pool, align 4
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %bad_pagevec_pool, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

bad_pagevec_pool:                                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @ceph_mds_request_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  br label %bad_mds_req

bad_mds_req:                                      ; preds = %bad_pagevec_pool, %if.end20.bad_mds_req_crit_edge
  %1 = load ptr, ptr @ceph_dir_file_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  br label %bad_dir_file

bad_dir_file:                                     ; preds = %bad_mds_req, %if.end16.bad_dir_file_crit_edge
  %2 = load ptr, ptr @ceph_file_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #11
  br label %bad_file

bad_file:                                         ; preds = %bad_dir_file, %if.end12.bad_file_crit_edge
  %3 = load ptr, ptr @ceph_dentry_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #11
  br label %bad_dentry

bad_dentry:                                       ; preds = %bad_file, %if.end8.bad_dentry_crit_edge
  %4 = load ptr, ptr @ceph_cap_flush_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  br label %bad_cap_flush

bad_cap_flush:                                    ; preds = %bad_dentry, %if.end4.bad_cap_flush_crit_edge
  %5 = load ptr, ptr @ceph_cap_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  br label %bad_cap

bad_cap:                                          ; preds = %bad_cap_flush, %if.end.bad_cap_crit_edge
  %6 = load ptr, ptr @ceph_inode_cachep, align 4
  tail call void @kmem_cache_destroy(ptr noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %bad_cap, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %bad_cap ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ceph_flock_init() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_inode_init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ceph_inode_info, ptr %foo, i32 0, i32 76
  tail call void @inode_init_once(ptr noundef %vfs_inode) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 203)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 203)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !142, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !169, !171, !173, !174, !175, !177, !179, !180, !181, !182, !184, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !235, !237, !238, !240, !242, !243, !244, !245, !247, !249, !250, !251, !252, !254, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !335, !337, !338, !339, !340, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !368, !370, !371, !372, !373, !375, !376, !377, !378, !379, !381, !383, !384, !385, !386, !387, !389, !391, !392, !394, !395, !396, !397, !399, !401, !403, !405, !407, !409}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/super.c", i32 973, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_umount_begin.__UNIQUE_ID_ddebug331, !1, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias351, !9, !"__UNIQUE_ID_alias351", i1 false, i1 false}
!9 = !{!"../fs/ceph/super.c", i32 1380, i32 1}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ceph/super.c", i32 1433, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @exit_ceph.__UNIQUE_ID_ddebug352, !11, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!14 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @disable_send_metrics, !16, !"disable_send_metrics", i1 false, i1 false}
!16 = !{!"../fs/ceph/super.c", i32 1465, i32 6}
!17 = !{ptr @__param_disable_send_metrics, !18, !"__param_disable_send_metrics", i1 false, i1 false}
!18 = !{!"../fs/ceph/super.c", i32 1466, i32 1}
!19 = !{ptr @__UNIQUE_ID_disable_send_metrics353, !20, !"__UNIQUE_ID_disable_send_metrics353", i1 false, i1 false}
!20 = !{!"../fs/ceph/super.c", i32 1467, i32 1}
!21 = !{ptr @__param_mount_syntax_v1, !22, !"__param_mount_syntax_v1", i1 false, i1 false}
!22 = !{!"../fs/ceph/super.c", i32 1474, i32 1}
!23 = !{ptr @__param_mount_syntax_v2, !24, !"__param_mount_syntax_v2", i1 false, i1 false}
!24 = !{!"../fs/ceph/super.c", i32 1475, i32 1}
!25 = !{ptr @__initcall__kmod_ceph__354_1477_init_ceph6, !26, !"__initcall__kmod_ceph__354_1477_init_ceph6", i1 false, i1 false}
!26 = !{!"../fs/ceph/super.c", i32 1477, i32 1}
!27 = !{ptr @__exitcall_exit_ceph, !28, !"__exitcall_exit_ceph", i1 false, i1 false}
!28 = !{!"../fs/ceph/super.c", i32 1478, i32 1}
!29 = !{ptr @__UNIQUE_ID_author355, !30, !"__UNIQUE_ID_author355", i1 false, i1 false}
!30 = !{!"../fs/ceph/super.c", i32 1480, i32 1}
!31 = !{ptr @__UNIQUE_ID_author356, !32, !"__UNIQUE_ID_author356", i1 false, i1 false}
!32 = !{!"../fs/ceph/super.c", i32 1481, i32 1}
!33 = !{ptr @__UNIQUE_ID_author357, !34, !"__UNIQUE_ID_author357", i1 false, i1 false}
!34 = !{!"../fs/ceph/super.c", i32 1482, i32 1}
!35 = !{ptr @__UNIQUE_ID_description358, !36, !"__UNIQUE_ID_description358", i1 false, i1 false}
!36 = !{!"../fs/ceph/super.c", i32 1483, i32 1}
!37 = !{ptr @__UNIQUE_ID_file359, !38, !"__UNIQUE_ID_file359", i1 false, i1 false}
!38 = !{!"../fs/ceph/super.c", i32 1484, i32 1}
!39 = !{ptr @__UNIQUE_ID_license360, !38, !"__UNIQUE_ID_license360", i1 false, i1 false}
!40 = !{ptr @ceph_inode_cachep, !41, !"ceph_inode_cachep", i1 false, i1 false}
!41 = !{!"../fs/ceph/super.c", i32 865, i32 20}
!42 = !{ptr @ceph_cap_cachep, !43, !"ceph_cap_cachep", i1 false, i1 false}
!43 = !{!"../fs/ceph/super.c", i32 866, i32 20}
!44 = !{ptr @ceph_cap_flush_cachep, !45, !"ceph_cap_flush_cachep", i1 false, i1 false}
!45 = !{!"../fs/ceph/super.c", i32 867, i32 20}
!46 = !{ptr @ceph_dentry_cachep, !47, !"ceph_dentry_cachep", i1 false, i1 false}
!47 = !{!"../fs/ceph/super.c", i32 868, i32 20}
!48 = !{ptr @ceph_file_cachep, !49, !"ceph_file_cachep", i1 false, i1 false}
!49 = !{!"../fs/ceph/super.c", i32 869, i32 20}
!50 = !{ptr @ceph_dir_file_cachep, !51, !"ceph_dir_file_cachep", i1 false, i1 false}
!51 = !{!"../fs/ceph/super.c", i32 870, i32 20}
!52 = !{ptr @ceph_mds_request_cachep, !53, !"ceph_mds_request_cachep", i1 false, i1 false}
!53 = !{!"../fs/ceph/super.c", i32 871, i32 20}
!54 = !{ptr @ceph_wb_pagevec_pool, !55, !"ceph_wb_pagevec_pool", i1 false, i1 false}
!55 = !{!"../fs/ceph/super.c", i32 872, i32 12}
!56 = !{ptr @ceph_fs_type, !57, !"ceph_fs_type", i1 false, i1 false}
!57 = !{!"../fs/ceph/super.c", i32 1373, i32 32}
!58 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ceph/super.c", i32 1329, i32 32}
!60 = !{ptr @ceph_context_ops, !61, !"ceph_context_ops", i1 false, i1 false}
!61 = !{!"../fs/ceph/super.c", i32 1296, i32 43}
!62 = !{ptr @.str.10, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ceph/super.c", i32 407, i32 2}
!64 = !{ptr @.str.11, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ceph_parse_mount_param.__UNIQUE_ID_ddebug327, !63, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!66 = !{ptr @.str.12, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../fs/ceph/super.c", i32 419, i32 11}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ceph/super.c", i32 435, i32 11}
!71 = !{ptr @.str.15, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/ceph/super.c", i32 583, i32 9}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../fs/ceph/super.c", i32 180, i32 2}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ceph/super.c", i32 181, i32 2}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../fs/ceph/super.c", i32 182, i32 2}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/ceph/super.c", i32 183, i32 2}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/ceph/super.c", i32 184, i32 2}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/ceph/super.c", i32 185, i32 2}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/ceph/super.c", i32 186, i32 2}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/ceph/super.c", i32 187, i32 2}
!89 = !{ptr @.str.24, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/ceph/super.c", i32 188, i32 2}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../fs/ceph/super.c", i32 189, i32 2}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/ceph/super.c", i32 191, i32 2}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../fs/ceph/super.c", i32 192, i32 2}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ceph/super.c", i32 193, i32 2}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../fs/ceph/super.c", i32 194, i32 2}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../fs/ceph/super.c", i32 195, i32 2}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/ceph/super.c", i32 196, i32 2}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/ceph/super.c", i32 197, i32 2}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ceph/super.c", i32 198, i32 2}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../fs/ceph/super.c", i32 199, i32 2}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/ceph/super.c", i32 200, i32 2}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ceph/super.c", i32 201, i32 2}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/ceph/super.c", i32 202, i32 2}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/ceph/super.c", i32 203, i32 2}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/ceph/super.c", i32 204, i32 2}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ceph/super.c", i32 205, i32 2}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/ceph/super.c", i32 206, i32 2}
!125 = !{ptr @.str.42, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/ceph/super.c", i32 207, i32 2}
!127 = !{ptr @ceph_mount_parameters, !128, !"ceph_mount_parameters", i1 false, i1 false}
!128 = !{!"../fs/ceph/super.c", i32 179, i32 39}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/ceph/super.c", i32 174, i32 4}
!131 = !{ptr @.str.44, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/ceph/super.c", i32 175, i32 4}
!133 = !{ptr @ceph_param_recover, !134, !"ceph_param_recover", i1 false, i1 false}
!134 = !{!"../fs/ceph/super.c", i32 173, i32 36}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/ceph/super.c", i32 335, i32 2}
!137 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ceph_parse_source.__UNIQUE_ID_ddebug322, !136, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!139 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/ceph/super.c", i32 337, i32 10}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/ceph/super.c", i32 357, i32 10}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/ceph/super.c", i32 359, i32 2}
!146 = !{ptr @ceph_parse_source.__UNIQUE_ID_ddebug323, !145, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!147 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/ceph/super.c", i32 361, i32 3}
!150 = !{ptr @ceph_parse_source.__UNIQUE_ID_ddebug324, !149, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!151 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/ceph/super.c", i32 363, i32 2}
!154 = !{ptr @ceph_parse_source.__UNIQUE_ID_ddebug325, !153, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!155 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/ceph/super.c", i32 368, i32 3}
!158 = !{ptr @ceph_parse_source.__UNIQUE_ID_ddebug326, !157, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!159 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/ceph/super.c", i32 279, i32 3}
!162 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ceph_parse_new_source.__UNIQUE_ID_ddebug320, !161, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!164 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../fs/ceph/super.c", i32 285, i32 10}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../fs/ceph/super.c", i32 290, i32 10}
!169 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../fs/ceph/super.c", i32 293, i32 10}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../fs/ceph/super.c", i32 304, i32 2}
!173 = !{ptr @ceph_parse_new_source.__UNIQUE_ID_ddebug321, !172, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!174 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.66, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../fs/ceph/super.c", i32 258, i32 10}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../fs/ceph/super.c", i32 1194, i32 2}
!179 = !{ptr @.str.68, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @ceph_get_tree.__UNIQUE_ID_ddebug345, !178, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!181 = !{ptr @.str.69, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @.str.70, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/ceph/super.c", i32 1197, i32 10}
!184 = !{ptr @.str.71, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/ceph/super.c", i32 1199, i32 10}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/ceph/super.c", i32 1228, i32 3}
!188 = !{ptr @ceph_get_tree.__UNIQUE_ID_ddebug346, !187, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!189 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.74, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../fs/ceph/super.c", i32 1230, i32 3}
!192 = !{ptr @ceph_get_tree.__UNIQUE_ID_ddebug347, !191, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!193 = !{ptr @.str.75, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.76, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../fs/ceph/super.c", i32 1241, i32 2}
!196 = !{ptr @ceph_get_tree.__UNIQUE_ID_ddebug348, !195, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!197 = !{ptr @.str.77, !195, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.78, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../fs/ceph/super.c", i32 1248, i32 3}
!200 = !{ptr @ceph_get_tree._entry, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @ceph_get_tree._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.79, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../fs/ceph/super.c", i32 1259, i32 2}
!204 = !{ptr @ceph_get_tree.__UNIQUE_ID_ddebug349, !203, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!205 = !{ptr @.str.80, !203, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.81, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../fs/ceph/super.c", i32 1131, i32 2}
!208 = !{ptr @.str.82, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @ceph_compare_super.__UNIQUE_ID_ddebug339, !207, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!210 = !{ptr @.str.83, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.84, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../fs/ceph/super.c", i32 1134, i32 3}
!213 = !{ptr @ceph_compare_super.__UNIQUE_ID_ddebug340, !212, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!214 = !{ptr @.str.85, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.86, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../fs/ceph/super.c", i32 1139, i32 3}
!217 = !{ptr @ceph_compare_super.__UNIQUE_ID_ddebug341, !216, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!218 = !{ptr @.str.87, !216, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../fs/ceph/super.c", i32 1143, i32 3}
!221 = !{ptr @ceph_compare_super.__UNIQUE_ID_ddebug342, !220, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!222 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.90, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../fs/ceph/super.c", i32 1148, i32 3}
!225 = !{ptr @ceph_compare_super.__UNIQUE_ID_ddebug343, !224, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!226 = !{ptr @.str.91, !224, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.92, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../fs/ceph/super.c", i32 1153, i32 3}
!229 = !{ptr @ceph_compare_super.__UNIQUE_ID_ddebug344, !228, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!230 = !{ptr @.str.93, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.94, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../fs/ceph/super.c", i32 811, i32 34}
!233 = !{ptr @.str.95, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../fs/ceph/super.c", i32 814, i32 32}
!235 = !{ptr @.str.96, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/ceph/super.c", i32 32, i32 8}
!237 = !{ptr @ceph_fsc_lock, !236, !"ceph_fsc_lock", i1 false, i1 false}
!238 = !{ptr @ceph_fsc_list, !239, !"ceph_fsc_list", i1 false, i1 false}
!239 = !{!"../fs/ceph/super.c", i32 33, i32 8}
!240 = !{ptr @.str.97, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../fs/ceph/super.c", i32 1099, i32 2}
!242 = !{ptr @.str.98, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @ceph_set_super.__UNIQUE_ID_ddebug338, !241, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!244 = !{ptr @.str.99, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @ceph_super_ops, !246, !"ceph_super_ops", i1 false, i1 false}
!246 = !{!"../fs/ceph/super.c", i32 980, i32 38}
!247 = !{ptr @.str.100, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../fs/ceph/super.c", i32 48, i32 2}
!249 = !{ptr @.str.101, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @ceph_put_super.__UNIQUE_ID_ddebug314, !248, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!251 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @.str.103, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../fs/ceph/super.c", i32 120, i32 3}
!254 = !{ptr @.str.104, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @ceph_sync_fs.__UNIQUE_ID_ddebug316, !253, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!256 = !{ptr @.str.105, !253, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.106, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../fs/ceph/super.c", i32 122, i32 3}
!259 = !{ptr @ceph_sync_fs.__UNIQUE_ID_ddebug317, !258, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!260 = !{ptr @.str.107, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @.str.108, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../fs/ceph/super.c", i32 126, i32 2}
!263 = !{ptr @ceph_sync_fs.__UNIQUE_ID_ddebug318, !262, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!264 = !{ptr @.str.109, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.110, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../fs/ceph/super.c", i32 129, i32 2}
!267 = !{ptr @ceph_sync_fs.__UNIQUE_ID_ddebug319, !266, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!268 = !{ptr @.str.111, !266, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.112, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../fs/ceph/super.c", i32 66, i32 2}
!271 = !{ptr @.str.113, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @ceph_statfs.__UNIQUE_ID_ddebug315, !270, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!273 = !{ptr @.str.114, !270, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.115, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../fs/ceph/super.c", i32 672, i32 15}
!276 = !{ptr @.str.116, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../fs/ceph/super.c", i32 674, i32 15}
!278 = !{ptr @.str.117, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../fs/ceph/super.c", i32 676, i32 15}
!280 = !{ptr @.str.118, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../fs/ceph/super.c", i32 678, i32 15}
!282 = !{ptr @.str.119, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../fs/ceph/super.c", i32 680, i32 15}
!284 = !{ptr @.str.120, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../fs/ceph/super.c", i32 685, i32 15}
!286 = !{ptr @.str.121, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../fs/ceph/super.c", i32 687, i32 15}
!288 = !{ptr @.str.122, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../fs/ceph/super.c", i32 691, i32 15}
!290 = !{ptr @.str.123, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../fs/ceph/super.c", i32 693, i32 15}
!292 = !{ptr @.str.124, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../fs/ceph/super.c", i32 697, i32 15}
!294 = !{ptr @.str.125, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../fs/ceph/super.c", i32 704, i32 17}
!296 = !{ptr @.str.126, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../fs/ceph/super.c", i32 710, i32 15}
!298 = !{ptr @.str.127, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../fs/ceph/super.c", i32 713, i32 15}
!300 = !{ptr @.str.128, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../fs/ceph/super.c", i32 716, i32 17}
!302 = !{ptr @.str.129, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../fs/ceph/super.c", i32 718, i32 17}
!304 = !{ptr @.str.130, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../fs/ceph/super.c", i32 720, i32 17}
!306 = !{ptr @.str.131, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../fs/ceph/super.c", i32 722, i32 17}
!308 = !{ptr @.str.132, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../fs/ceph/super.c", i32 724, i32 17}
!310 = !{ptr @.str.133, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../fs/ceph/super.c", i32 726, i32 17}
!312 = !{ptr @.str.134, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../fs/ceph/super.c", i32 729, i32 17}
!314 = !{ptr @.str.135, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../fs/ceph/super.c", i32 732, i32 17}
!316 = !{ptr @.str.136, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../fs/ceph/super.c", i32 734, i32 17}
!318 = !{ptr @.str.137, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../include/linux/seq_file.h", i32 242, i32 22}
!320 = !{ptr @.str.138, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../include/linux/seq_file.h", i32 245, i32 24}
!322 = !{ptr @.str.139, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../fs/ceph/super.c", i32 844, i32 2}
!324 = !{ptr @.str.140, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @destroy_fs_client.__UNIQUE_ID_ddebug329, !323, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!326 = !{ptr @.str.141, !323, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.142, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../fs/ceph/super.c", i32 859, i32 2}
!329 = !{ptr @destroy_fs_client.__UNIQUE_ID_ddebug330, !328, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!330 = !{ptr @.str.143, !328, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.144, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../fs/ceph/super.c", i32 1169, i32 33}
!333 = !{ptr @bdi_seq, !334, !"bdi_seq", i1 false, i1 false}
!334 = !{!"../fs/ceph/super.c", i32 1163, i32 22}
!335 = !{ptr @.str.145, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../fs/ceph/super.c", i32 1052, i32 2}
!337 = !{ptr @.str.146, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @ceph_real_mount.__UNIQUE_ID_ddebug335, !336, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!339 = !{ptr @.str.147, !336, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @.str.148, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../fs/ceph/super.c", i32 1057, i32 48}
!342 = !{ptr @.str.149, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../fs/ceph/super.c", i32 1070, i32 3}
!344 = !{ptr @ceph_real_mount.__UNIQUE_ID_ddebug336, !343, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!345 = !{ptr @.str.150, !343, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @.str.151, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../fs/ceph/super.c", i32 1085, i32 2}
!348 = !{ptr @ceph_real_mount.__UNIQUE_ID_ddebug337, !347, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!349 = !{ptr @.str.152, !347, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.153, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../fs/ceph/super.c", i32 1007, i32 2}
!352 = !{ptr @.str.154, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @open_root_dentry.__UNIQUE_ID_ddebug332, !351, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!354 = !{ptr @.str.155, !351, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @.str.156, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../fs/ceph/super.c", i32 1027, i32 3}
!357 = !{ptr @open_root_dentry.__UNIQUE_ID_ddebug333, !356, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!358 = !{ptr @.str.157, !356, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.158, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../fs/ceph/super.c", i32 1033, i32 3}
!361 = !{ptr @open_root_dentry.__UNIQUE_ID_ddebug334, !360, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!362 = !{ptr @.str.159, !360, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @.str.160, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../fs/ceph/super.c", i32 1289, i32 3}
!365 = !{ptr @.str.161, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @ceph_reconfigure_fc._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @ceph_reconfigure_fc._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.162, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../fs/ceph/super.c", i32 588, i32 2}
!370 = !{ptr @.str.163, !369, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @destroy_mount_options.__UNIQUE_ID_ddebug328, !369, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!372 = !{ptr @.str.164, !369, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.165, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../fs/ceph/super.c", i32 1358, i32 2}
!375 = !{ptr @.str.166, !374, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @ceph_kill_sb.__UNIQUE_ID_ddebug350, !374, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!377 = !{ptr @.str.167, !374, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @__param_str_disable_send_metrics, !18, !"__param_str_disable_send_metrics", i1 false, i1 false}
!379 = !{ptr @param_ops_metrics, !380, !"param_ops_metrics", i1 false, i1 false}
!380 = !{!"../fs/ceph/super.c", i32 1460, i32 38}
!381 = !{ptr @.str.168, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../fs/ceph/super.c", i32 1445, i32 3}
!383 = !{ptr @.str.169, !382, !"<string literal>", i1 false, i1 false}
!384 = !{ptr @param_set_metrics._entry, !382, !"_entry", i1 false, i1 false}
!385 = !{ptr @param_set_metrics._entry_ptr, !382, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @__param_str_mount_syntax_v1, !22, !"__param_str_mount_syntax_v1", i1 false, i1 false}
!387 = !{ptr @param_ops_mount_syntax, !388, !"param_ops_mount_syntax", i1 false, i1 false}
!388 = !{!"../fs/ceph/super.c", i32 1471, i32 38}
!389 = !{ptr @mount_support, !390, !"mount_support", i1 false, i1 false}
!390 = !{!"../fs/ceph/super.c", i32 1470, i32 13}
!391 = !{ptr @__param_str_mount_syntax_v2, !24, !"__param_str_mount_syntax_v2", i1 false, i1 false}
!392 = !{ptr @.str.170, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../fs/ceph/super.c", i32 1421, i32 2}
!394 = !{ptr @.str.171, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @init_ceph._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @init_ceph._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.172, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../fs/ceph/super.c", i32 884, i32 40}
!399 = !{ptr @.str.173, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../fs/ceph/super.c", i32 892, i32 20}
!401 = !{ptr @.str.174, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../fs/ceph/super.c", i32 895, i32 26}
!403 = !{ptr @.str.175, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../fs/ceph/super.c", i32 900, i32 23}
!405 = !{ptr @.str.176, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../fs/ceph/super.c", i32 905, i32 21}
!407 = !{ptr @.str.177, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../fs/ceph/super.c", i32 909, i32 25}
!409 = !{ptr @.str.178, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../fs/ceph/super.c", i32 913, i32 28}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!420 = !{i64 2148755728, i64 2148755733, i64 2148755746, i64 2148755790, i64 2148755824, i64 2148755845}
!421 = !{i64 2156009260, i64 2156009740, i64 2156009297, i64 2156009353, i64 2156009387, i64 2156009411, i64 2156009452, i64 2156009473, i64 2156009501, i64 2156009535}
!422 = !{i8 0, i8 2}
!423 = !{i64 2156012644, i64 2156013124, i64 2156012681, i64 2156012737, i64 2156012771, i64 2156012795, i64 2156012836, i64 2156012857, i64 2156012885, i64 2156012919}
!424 = !{i64 2148359324}
!425 = !{i64 2148274633, i64 2148274665, i64 2148274694, i64 2148274728, i64 2148274759, i64 2148274782}
!426 = !{i64 2148359553}
!427 = !{i64 2148363444}
!428 = !{i64 2148277908, i64 2148277940, i64 2148277969, i64 2148278003, i64 2148278034, i64 2148278057}
!429 = !{!"branch_weights", i32 2000, i32 1}
!430 = !{i64 2150411743}
