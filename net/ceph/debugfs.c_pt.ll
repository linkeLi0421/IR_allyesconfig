; ModuleID = '/llk/IR_all_yes/net/ceph/debugfs.c_pt.bc'
source_filename = "../net/ceph/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.110 }
%union.anon.110 = type { ptr, [124 x i8] }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.125], i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.121 }>
%struct.timespec64 = type { i64, i32 }
%union.anon.121 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.122 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.91, %union.anon.92 }
%union.anon.91 = type { ptr }
%union.anon.92 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.116 }
%union.anon.116 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.122 = type { i8, %union.anon.123 }
%union.anon.123 = type <{ %struct.anon.124, [3 x i8] }>
%struct.anon.124 = type { i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.125 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.ceph_auth_client = type { i32, ptr, ptr, i8, ptr, i64, ptr, i32, i32, i32, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.102, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.103, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.104, ptr, %struct.address_space, %struct.list_head, %union.anon.105, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.102 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.103 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.104 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.105 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%struct.ceph_osd_request = type { i64, %struct.rb_node, %struct.rb_node, %struct.work_struct, ptr, %struct.ceph_osd_request_target, ptr, ptr, i32, i32, i32, ptr, %struct.kref, i8, %struct.completion, ptr, ptr, %struct.list_head, ptr, i64, ptr, %struct.timespec64, i64, i8, i32, i32, i64, i64, i32, i32, [0 x %struct.ceph_osd_req_op] }
%struct.ceph_osd_request_target = type { %struct.ceph_object_id, %struct.ceph_object_locator, %struct.ceph_object_id, %struct.ceph_object_locator, %struct.ceph_pg, %struct.ceph_spg, i32, i32, %struct.ceph_osds, %struct.ceph_osds, i32, i32, i8, i8, i32, i8, i8, i32, i32, i32 }
%struct.ceph_object_id = type { ptr, [52 x i8], i32 }
%struct.ceph_object_locator = type { i64, ptr }
%struct.ceph_pg = type { i64, i32 }
%struct.ceph_spg = type { %struct.ceph_pg, i8 }
%struct.ceph_osds = type { [32 x i32], i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.ceph_osd_req_op = type { i16, i32, i32, i32, i32, %union.anon.129 }
%union.anon.129 = type { %struct.anon.136 }
%struct.anon.136 = type { ptr, ptr, %struct.ceph_osd_data, %struct.ceph_osd_data, %struct.ceph_osd_data, i8, i8, i32 }
%struct.ceph_osd_data = type { i32, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131, [8 x i8] }
%struct.anon.131 = type { ptr, i64, i32, i8, i8 }
%struct.ceph_string = type { %struct.kref, %union.anon.128, i32, [0 x i8] }
%union.anon.128 = type { %struct.rb_node }
%struct.ceph_hobject_id = type { ptr, i32, ptr, i32, i64, i32, i8, ptr, i32, i64, i32 }
%struct.ceph_monmap = type { %struct.ceph_fsid, i32, i32, [0 x %struct.ceph_entity_inst] }
%struct.ceph_osdmap = type { %struct.ceph_fsid, i32, %struct.ceph_timespec, %struct.ceph_timespec, i32, i32, ptr, ptr, ptr, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, ptr, %struct.rb_root, i32, ptr, %struct.workspace_manager }
%struct.ceph_timespec = type { i32, i32 }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.ceph_pg_pool_info = type { %struct.rb_node, i64, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i64, i64, i64, ptr, i8 }
%struct.ceph_options = type { i32, %struct.ceph_fsid, %struct.ceph_entity_addr, i32, i32, i32, i32, i32, [2 x i32], ptr, i32, ptr, ptr, %struct.rb_root }
%struct.ceph_pg_mapping = type { %struct.rb_node, %struct.ceph_pg, %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, [0 x i32] }
%struct.anon.146 = type { i32, [0 x [2 x i32]] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@ceph_debugfs_dir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%pU.client%lld\00", [17 x i8] zeroinitializer }, align 32
@ceph_debugfs_client_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_debugfs_client_init\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ceph/debugfs.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : ceph_debugfs_client_init %p %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_debugfs_client_init %p %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"monc\00", [27 x i8] zeroinitializer }, align 32
@monc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @monc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"osdc\00", [27 x i8] zeroinitializer }, align 32
@osdc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @osdc_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"monmap\00", [25 x i8] zeroinitializer }, align 32
@monmap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @monmap_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osdmap\00", [25 x i8] zeroinitializer }, align 32
@osdmap_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @osdmap_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"client_options\00", [17 x i8] zeroinitializer }, align 32
@client_options_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @client_options_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ceph_debugfs_client_cleanup.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ceph_debugfs_client_cleanup\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : ceph_debugfs_client_cleanup %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_debugfs_client_cleanup %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"have %s %u\00", [21 x i8] zeroinitializer }, align 32
@ceph_sub_str = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" want %llu%s\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs_cluster_id %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%llu statfs\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%llu mon_get_version\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%llu unknown\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"REQUESTS %d homeless %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LINGER REQUESTS\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BACKOFFS\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\09\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\09%d\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"-%s\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-%s/%s\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"osd%d\09%llu.%x\09\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09[\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"]/%d\09[\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"]/%d\09e%u\09\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%*pE/%*pE\090x%x\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%*pE\090x%x\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09P\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%llu.%x\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s%d\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09%u\09%s%s/%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"N\00", [30 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osd%d\09\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09%llu\09\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIN\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAX\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%lld:%08x:\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%%%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"head\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snapdir\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%llx\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epoch %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09%s%lld\09%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"epoch %u barrier %u flags 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"pool %lld '%s' type %d size %d min_size %d pg_num %u pg_num_mask %d flags 0x%llx lfor %u read_tier %lld write_tier %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"osd%d\09%s\09%3d%%\09(%s)\09%3d%%\09%2d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pg_temp %llu.%x [\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"primary_temp %llu.%x %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pg_upmap %llu.%x [\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pg_upmap_items %llu.%x [\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s%d->%d\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 5121, i64 8719]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 37, i64 47, i64 58]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 37, i64 47, i64 58]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 37, i64 47, i64 58]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 64, i64 -2, i64 -1]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 399, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"ceph_debugfs_dir\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 32, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 411, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 414, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 418, i32 50 }
@___asan_gen_.102 = private unnamed_addr constant [10 x i8] c"monc_fops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 393, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 424, i32 50 }
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"osdc_fops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 394, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 430, i32 47 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"monmap_fops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 391, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 436, i32 47 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"osdmap_fops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 392, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 442, i32 48 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"client_options_fops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 395, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 451, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 149, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 152, i32 18 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 155, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 155, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 158, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 165, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 167, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 169, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 349, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 359, i32 14 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 367, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 213, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 216, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 221, i32 17 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 221, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 221, i32 42 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 224, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 227, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 187, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 189, i32 14 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 191, i32 17 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 192, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 195, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 197, i32 17 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 202, i32 17 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 206, i32 15 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 178, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 180, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 255, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 256, i32 23 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 256, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 256, i32 52 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 330, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 332, i32 17 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 304, i32 15 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 308, i32 15 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 311, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 293, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 278, i32 15 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 280, i32 15 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 282, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 42, i32 16 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 47, i32 17 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 66, i32 16 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 73, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 84, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 96, i32 17 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 101, i32 17 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 107, i32 17 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 114, i32 17 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 125, i32 17 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [22 x i8] c"../net/ceph/debugfs.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 128, i32 18 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @.str, ptr @ceph_debugfs_dir, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @monc_fops, ptr @.str.9, ptr @osdc_fops, ptr @.str.10, ptr @monmap_fops, ptr @.str.11, ptr @osdmap_fops, ptr @.str.12, ptr @client_options_fops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_debugfs_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osdc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monmap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osdmap_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_options_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_debugfs_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #6
  store ptr %call, ptr @ceph_debugfs_dir, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_debugfs_cleanup() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ceph_debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_debugfs_client_init(ptr noundef %client) local_unnamed_addr #2 align 64 {
entry:
  %name = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %name) #6
  %0 = call ptr @memset(ptr %name, i32 255, i32 80)
  %auth = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 4
  %1 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %auth, align 8
  %global_id = getelementptr inbounds %struct.ceph_auth_client, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %global_id to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %global_id, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 80, ptr noundef nonnull @.str.1, ptr noundef %client, i64 noundef %4)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_debugfs_client_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_debugfs_client_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_debugfs_client_init.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.4, i32 0, i32 9), i32 noundef 414, ptr noundef %client, ptr noundef nonnull %name) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr @ceph_debugfs_dir, align 4
  %call7 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef %5) #6
  %debugfs_dir = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 13
  %6 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %debugfs_dir, align 8
  %call9 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 256, ptr noundef %call7, ptr noundef %client, ptr noundef nonnull @monc_fops) #6
  %debugfs_file = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 21
  %7 = ptrtoint ptr %debugfs_file to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %debugfs_file, align 4
  %8 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_dir, align 8
  %call12 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 256, ptr noundef %9, ptr noundef %client, ptr noundef nonnull @osdc_fops) #6
  %debugfs_file13 = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12, i32 19
  %10 = ptrtoint ptr %debugfs_file13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %debugfs_file13, align 8
  %11 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_dir, align 8
  %call15 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %client, ptr noundef nonnull @monmap_fops) #6
  %debugfs_monmap = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 14
  %13 = ptrtoint ptr %debugfs_monmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15, ptr %debugfs_monmap, align 4
  %14 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_dir, align 8
  %call17 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 256, ptr noundef %15, ptr noundef %client, ptr noundef nonnull @osdmap_fops) #6
  %debugfs_osdmap = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 15
  %16 = ptrtoint ptr %debugfs_osdmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %debugfs_osdmap, align 8
  %17 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %debugfs_dir, align 8
  %call19 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %client, ptr noundef nonnull @client_options_fops) #6
  %debugfs_options = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 16
  %19 = ptrtoint ptr %debugfs_options to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19, ptr %debugfs_options, align 4
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %name) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_debugfs_client_cleanup(ptr noundef %client) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_debugfs_client_cleanup.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_debugfs_client_cleanup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_debugfs_client_cleanup.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.4, i32 0, i32 9), i32 noundef 451, ptr noundef %client) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %debugfs_options = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 16
  %0 = ptrtoint ptr %debugfs_options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_options, align 4
  tail call void @debugfs_remove(ptr noundef %1) #6
  %debugfs_osdmap = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 15
  %2 = ptrtoint ptr %debugfs_osdmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_osdmap, align 8
  tail call void @debugfs_remove(ptr noundef %3) #6
  %debugfs_monmap = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 14
  %4 = ptrtoint ptr %debugfs_monmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_monmap, align 4
  tail call void @debugfs_remove(ptr noundef %5) #6
  %debugfs_file = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12, i32 19
  %6 = ptrtoint ptr %debugfs_file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_file, align 8
  tail call void @debugfs_remove(ptr noundef %7) #6
  %debugfs_file4 = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 21
  %8 = ptrtoint ptr %debugfs_file4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_file4, align 4
  tail call void @debugfs_remove(ptr noundef %9) #6
  %debugfs_dir = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 13
  %10 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_dir, align 8
  tail call void @debugfs_remove(ptr noundef %11) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @monc_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monc_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mutex = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 11, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ceph_sub_str to i32))
  %2 = load ptr, ptr @ceph_sub_str, align 4
  %have = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 0, i32 2
  %3 = ptrtoint ptr %have to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %have, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef %2, i32 noundef %4) #6
  %want = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 0, i32 1
  %5 = ptrtoint ptr %want to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %want, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 0
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx2, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %flags = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 8
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool10.not, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i64 noundef %9, ptr noundef nonnull %cond) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ceph_sub_str, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ceph_sub_str, i32 0, i32 1), align 4
  %have.1 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 1, i32 2
  %14 = ptrtoint ptr %have.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %have.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef %13, i32 noundef %15) #6
  %want.1 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 1, i32 1
  %16 = ptrtoint ptr %want.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %want.1, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.1 = icmp eq i8 %17, 0
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.1 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 1
  %18 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx2.1, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %flags.1 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.1, align 8
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool10.not.1 = icmp eq i8 %23, 0
  %cond.1 = select i1 %tobool10.not.1, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i64 noundef %20, ptr noundef nonnull %cond.1) #6
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ceph_sub_str, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ceph_sub_str, i32 0, i32 2), align 4
  %have.2 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 2, i32 2
  %25 = ptrtoint ptr %have.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %have.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef %24, i32 noundef %26) #6
  %want.2 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 2, i32 1
  %27 = ptrtoint ptr %want.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %want.2, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.2 = icmp eq i8 %28, 0
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.2 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 2
  %29 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx2.2, align 8
  %31 = tail call i64 @llvm.bswap.i64(i64 %30)
  %flags.2 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 2, i32 0, i32 1
  %32 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags.2, align 8
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool10.not.2 = icmp eq i8 %34, 0
  %cond.2 = select i1 %tobool10.not.2, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i64 noundef %31, ptr noundef nonnull %cond.2) #6
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ceph_sub_str, i32 0, i32 3) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ceph_sub_str, i32 0, i32 3), align 4
  %have.3 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 3, i32 2
  %36 = ptrtoint ptr %have.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %have.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef %35, i32 noundef %37) #6
  %want.3 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 3, i32 1
  %38 = ptrtoint ptr %want.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %want.3, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.3 = icmp eq i8 %39, 0
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.3 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 3
  %40 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx2.3, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %41)
  %flags.3 = getelementptr %struct.ceph_client, ptr %1, i32 0, i32 11, i32 19, i32 3, i32 0, i32 1
  %43 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags.3, align 8
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool10.not.3 = icmp eq i8 %45, 0
  %cond.3 = select i1 %tobool10.not.3, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i64 noundef %42, ptr noundef nonnull %cond.3) #6
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  %fs_cluster_id = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 11, i32 20
  %46 = ptrtoint ptr %fs_cluster_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fs_cluster_id, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %47) #6
  %generic_request_tree = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 11, i32 17
  %call = tail call ptr @rb_first(ptr noundef %generic_request_tree) #6
  %tobool12.not59 = icmp eq ptr %call, null
  br i1 %tobool12.not59, label %if.end.3.for.end29_crit_edge, label %if.end.3.for.body13_crit_edge

if.end.3.for.body13_crit_edge:                    ; preds = %if.end.3
  br label %for.body13

if.end.3.for.end29_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %if.end.3.for.body13_crit_edge
  %rp.060 = phi ptr [ %call28, %for.body13.for.body13_crit_edge ], [ %call, %if.end.3.for.body13_crit_edge ]
  %request = getelementptr i8, ptr %rp.060, i32 88
  %48 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %request, align 8
  %type = getelementptr inbounds %struct.ceph_msg_header, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4864, i16 %51)
  %switch.selectcmp = icmp eq i16 %51, 4864
  %switch.select = select i1 %switch.selectcmp, ptr @.str.22, ptr @.str.23
  call void @__sanitizer_cov_trace_const_cmp2(i16 3328, i16 %51)
  %switch.selectcmp62 = icmp eq i16 %51, 3328
  %switch.select63 = select i1 %switch.selectcmp62, ptr @.str.21, ptr %switch.select
  %tid22 = getelementptr i8, ptr %rp.060, i32 -8
  %52 = ptrtoint ptr %tid22 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tid22, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %switch.select63, i64 noundef %53) #6
  %call28 = tail call ptr @rb_next(ptr noundef nonnull %rp.060) #6
  %tobool12.not = icmp eq ptr %call28, null
  br i1 %tobool12.not, label %for.body13.for.end29_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.body13.for.end29_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.end29:                                        ; preds = %for.body13.for.end29_crit_edge, %if.end.3.for.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osdc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @osdc_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osdc_show(ptr noundef %s, ptr nocapture noundef readnone %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %lock = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 2
  tail call void @down_read(ptr noundef %lock) #6
  %num_requests = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_requests, i32 noundef 4) #6
  %2 = ptrtoint ptr %num_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %num_requests, align 4
  %num_homeless = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 15
  %call.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %num_homeless, i32 noundef 4) #6
  %4 = ptrtoint ptr %num_homeless to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %num_homeless, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %5) #6
  %osds = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 3
  %call3 = tail call ptr @rb_first(ptr noundef %osds) #6
  %tobool.not56 = icmp eq ptr %call3, null
  br i1 %tobool.not56, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %n.057 = phi ptr [ %call4, %for.body.for.body_crit_edge ], [ %call3, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.057, i32 -16
  tail call fastcc void @dump_requests(ptr noundef %s, ptr noundef %add.ptr)
  %call4 = tail call ptr @rb_next(ptr noundef nonnull %n.057) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %homeless_osd = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 8
  tail call fastcc void @dump_requests(ptr noundef %s, ptr noundef %homeless_osd)
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.25) #6
  %call6 = tail call ptr @rb_first(ptr noundef %osds) #6
  %tobool8.not58 = icmp eq ptr %call6, null
  br i1 %tobool8.not58, label %for.end.for.end16_crit_edge, label %for.end.for.body9_crit_edge

for.end.for.body9_crit_edge:                      ; preds = %for.end
  br label %for.body9

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.end.for.body9_crit_edge
  %n.159 = phi ptr [ %call15, %for.body9.for.body9_crit_edge ], [ %call6, %for.end.for.body9_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %n.159, i32 -16
  tail call fastcc void @dump_linger_requests(ptr noundef %s, ptr noundef %add.ptr13)
  %call15 = tail call ptr @rb_next(ptr noundef nonnull %n.159) #6
  %tobool8.not = icmp eq ptr %call15, null
  br i1 %tobool8.not, label %for.body9.for.end16_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.body9.for.end16_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.end16:                                        ; preds = %for.body9.for.end16_crit_edge, %for.end.for.end16_crit_edge
  tail call fastcc void @dump_linger_requests(ptr noundef %s, ptr noundef %homeless_osd)
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.26) #6
  %call19 = tail call ptr @rb_first(ptr noundef %osds) #6
  %tobool21.not60 = icmp eq ptr %call19, null
  br i1 %tobool21.not60, label %for.end16.for.end29_crit_edge, label %for.end16.for.body22_crit_edge

for.end16.for.body22_crit_edge:                   ; preds = %for.end16
  br label %for.body22

for.end16.for.end29_crit_edge:                    ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.body22:                                       ; preds = %dump_backoffs.exit.for.body22_crit_edge, %for.end16.for.body22_crit_edge
  %n.261 = phi ptr [ %call28, %dump_backoffs.exit.for.body22_crit_edge ], [ %call19, %for.end16.for.body22_crit_edge ]
  %lock.i = getelementptr i8, ptr %n.261, i32 1464
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %o_backoffs_by_id.i = getelementptr i8, ptr %n.261, i32 1412
  %call.i = tail call ptr @rb_first(ptr noundef %o_backoffs_by_id.i) #6
  %tobool.not17.i = icmp eq ptr %call.i, null
  br i1 %tobool.not17.i, label %for.body22.dump_backoffs.exit_crit_edge, label %for.body.lr.ph.i

for.body22.dump_backoffs.exit_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_backoffs.exit

for.body.lr.ph.i:                                 ; preds = %for.body22
  %o_osd.i = getelementptr i8, ptr %n.261, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %dump_spgid.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.018.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call1.i, %dump_spgid.exit.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %o_osd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %o_osd.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %7) #6
  %spgid.i = getelementptr i8, ptr %n.018.i, i32 12
  %8 = ptrtoint ptr %spgid.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %spgid.i, align 8
  %seed.i.i = getelementptr i8, ptr %n.018.i, i32 20
  %10 = ptrtoint ptr %seed.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seed.i.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i64 noundef %9, i32 noundef %11) #6
  %shard.i.i = getelementptr i8, ptr %n.018.i, i32 28
  %12 = ptrtoint ptr %shard.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shard.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp.not.i.i = icmp eq i8 %13, -1
  br i1 %cmp.not.i.i, label %for.body.i.dump_spgid.exit.i_crit_edge, label %if.then.i.i

for.body.i.dump_spgid.exit.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_spgid.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = sext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %conv.i.i) #6
  br label %dump_spgid.exit.i

dump_spgid.exit.i:                                ; preds = %if.then.i.i, %for.body.i.dump_spgid.exit.i_crit_edge
  %id.i = getelementptr i8, ptr %n.018.i, i32 36
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %id.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i64 noundef %15) #6
  %begin.i = getelementptr i8, ptr %n.018.i, i32 44
  %16 = ptrtoint ptr %begin.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %begin.i, align 8
  tail call fastcc void @dump_hoid(ptr noundef %s, ptr noundef %17) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 9) #6
  %end.i = getelementptr i8, ptr %n.018.i, i32 48
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  tail call fastcc void @dump_hoid(ptr noundef %s, ptr noundef %19) #6
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  %call1.i = tail call ptr @rb_next(ptr noundef nonnull %n.018.i) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %dump_spgid.exit.i.dump_backoffs.exit_crit_edge, label %dump_spgid.exit.i.for.body.i_crit_edge

dump_spgid.exit.i.for.body.i_crit_edge:           ; preds = %dump_spgid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dump_spgid.exit.i.dump_backoffs.exit_crit_edge:   ; preds = %dump_spgid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_backoffs.exit

dump_backoffs.exit:                               ; preds = %dump_spgid.exit.i.dump_backoffs.exit_crit_edge, %for.body22.dump_backoffs.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %call28 = tail call ptr @rb_next(ptr noundef nonnull %n.261) #6
  %tobool21.not = icmp eq ptr %call28, null
  br i1 %tobool21.not, label %dump_backoffs.exit.for.end29_crit_edge, label %dump_backoffs.exit.for.body22_crit_edge

dump_backoffs.exit.for.body22_crit_edge:          ; preds = %dump_backoffs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22

dump_backoffs.exit.for.end29_crit_edge:           ; preds = %dump_backoffs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end29

for.end29:                                        ; preds = %dump_backoffs.exit.for.end29_crit_edge, %for.end16.for.end29_crit_edge
  tail call void @up_read(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_requests(ptr noundef %s, ptr noundef %osd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ceph_osd, ptr %osd, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %o_requests = getelementptr inbounds %struct.ceph_osd, ptr %osd, i32 0, i32 7
  %call = tail call ptr @rb_first(ptr noundef %o_requests) #6
  %tobool.not7 = icmp eq ptr %call, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %dump_request.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %n.08 = phi ptr [ %call1, %dump_request.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.08, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i64 noundef %1) #6
  %r_t.i = getelementptr i8, ptr %n.08, i32 72
  tail call fastcc void @dump_target(ptr noundef %s, ptr noundef %r_t.i) #6
  %r_attempts.i = getelementptr i8, ptr %n.08, i32 768
  %2 = ptrtoint ptr %r_attempts.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_attempts.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, i32 noundef %3) #6
  %r_num_ops.i = getelementptr i8, ptr %n.08, i32 596
  %4 = ptrtoint ptr %r_num_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_num_ops.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.not.i = icmp eq i32 %5, 0
  br i1 %cmp34.not.i, label %for.body.dump_request.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.dump_request.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_request.exit

for.body.i:                                       ; preds = %if.end15.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.035.i = phi i32 [ %inc.i, %if.end15.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ceph_osd_request, ptr %add.ptr, i32 0, i32 30, i32 %i.035.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.035.i)
  %cmp1.i = icmp eq i32 %i.035.i, 0
  %cond.i = select i1 %cmp1.i, ptr @.str.30, ptr @.str.31
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 8
  %conv.i = zext i16 %7 to i32
  %call.i = tail call ptr @ceph_osd_op_name(i32 noundef %conv.i) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond.i, ptr noundef %call.i) #6
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %for.body.i.if.end15.i_crit_edge [
    i16 8719, label %if.then.i
    i16 5121, label %if.then14.i
  ]

for.body.i.if.end15.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %op7.i = getelementptr %struct.ceph_osd_request, ptr %add.ptr, i32 0, i32 30, i32 %i.035.i, i32 5, i32 0, i32 2
  %11 = ptrtoint ptr %op7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %op7.i, align 8
  %conv8.i = zext i8 %12 to i32
  %call9.i = tail call ptr @ceph_osd_watch_op_name(i32 noundef %conv8.i) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, ptr noundef %call9.i) #6
  br label %if.end15.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = getelementptr %struct.ceph_osd_request, ptr %add.ptr, i32 0, i32 30, i32 %i.035.i, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %method_name.i = getelementptr inbounds %struct.anon.136, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %method_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %method_name.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, ptr noundef %15, ptr noundef %17) #6
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.then.i, %for.body.i.if.end15.i_crit_edge
  %inc.i = add nuw i32 %i.035.i, 1
  %18 = ptrtoint ptr %r_num_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %r_num_ops.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %if.end15.i.for.body.i_crit_edge, label %if.end15.i.dump_request.exit_crit_edge

if.end15.i.dump_request.exit_crit_edge:           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_request.exit

if.end15.i.for.body.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dump_request.exit:                                ; preds = %if.end15.i.dump_request.exit_crit_edge, %for.body.dump_request.exit_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %n.08) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %dump_request.exit.for.end_crit_edge, label %dump_request.exit.for.body_crit_edge

dump_request.exit.for.body_crit_edge:             ; preds = %dump_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

dump_request.exit.for.end_crit_edge:              ; preds = %dump_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %dump_request.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_linger_requests(ptr noundef %s, ptr noundef %osd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ceph_osd, ptr %osd, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %o_linger_requests = getelementptr inbounds %struct.ceph_osd, ptr %osd, i32 0, i32 8
  %call = tail call ptr @rb_first(ptr noundef %o_linger_requests) #6
  %tobool.not7 = icmp eq ptr %call, null
  br i1 %tobool.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %n.08 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %linger_id.i = getelementptr i8, ptr %n.08, i32 -672
  %0 = ptrtoint ptr %linger_id.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %linger_id.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i64 noundef %1) #6
  %t.i = getelementptr i8, ptr %n.08, i32 -632
  tail call fastcc void @dump_target(ptr noundef %s, ptr noundef %t.i) #6
  %register_gen.i = getelementptr i8, ptr %n.08, i32 168
  %2 = ptrtoint ptr %register_gen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %register_gen.i, align 8
  %is_watch.i = getelementptr i8, ptr %n.08, i32 -663
  %4 = ptrtoint ptr %is_watch.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_watch.i, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.46, ptr @.str.45
  %committed.i = getelementptr i8, ptr %n.08, i32 -664
  %6 = ptrtoint ptr %committed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %committed.i, align 8, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  %cond2.i = select i1 %tobool1.not.i, ptr @.str.18, ptr @.str.47
  %last_error.i = getelementptr i8, ptr %n.08, i32 164
  %8 = ptrtoint ptr %last_error.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_error.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %3, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond2.i, i32 noundef %9) #6
  %call1 = tail call ptr @rb_next(ptr noundef nonnull %n.08) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_target(ptr noundef %s, ptr nocapture noundef readonly %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %osd = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 19
  %0 = ptrtoint ptr %osd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %osd, align 4
  %pgid = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 4
  %2 = ptrtoint ptr %pgid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pgid, align 8
  %seed = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seed, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %1, i64 noundef %3, i32 noundef %5) #6
  %spgid = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 5
  %6 = ptrtoint ptr %spgid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %spgid, align 8
  %seed.i = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %seed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seed.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i64 noundef %7, i32 noundef %9) #6
  %shard.i = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %shard.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shard.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp.not.i = icmp eq i8 %11, -1
  br i1 %cmp.not.i, label %entry.dump_spgid.exit_crit_edge, label %if.then.i

entry.dump_spgid.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_spgid.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i8 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %conv.i) #6
  br label %dump_spgid.exit

dump_spgid.exit:                                  ; preds = %if.then.i, %entry.dump_spgid.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.35) #6
  %size = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp69 = icmp sgt i32 %13, 0
  br i1 %cmp69, label %for.body.lr.ph, label %dump_spgid.exit.for.end_crit_edge

dump_spgid.exit.for.end_crit_edge:                ; preds = %dump_spgid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %dump_spgid.exit
  %up = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.070)
  %tobool.not = icmp eq i32 %i.070, 0
  %cond = select i1 %tobool.not, ptr @.str.18, ptr @.str.31
  %arrayidx = getelementptr [32 x i32], ptr %up, i32 0, i32 %i.070
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond, i32 noundef %15) #6
  %inc = add nuw nsw i32 %i.070, 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 8
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dump_spgid.exit.for.end_crit_edge
  %primary = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %primary, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, i32 noundef %19) #6
  %size5 = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp671 = icmp sgt i32 %21, 0
  br i1 %cmp671, label %for.body7.lr.ph, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.body7.lr.ph:                                  ; preds = %for.end
  %acting = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 8
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %i.172 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc15, %for.body7.for.body7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.172)
  %tobool8.not = icmp eq i32 %i.172, 0
  %cond10 = select i1 %tobool8.not, ptr @.str.18, ptr @.str.31
  %arrayidx13 = getelementptr [32 x i32], ptr %acting, i32 0, i32 %i.172
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond10, i32 noundef %23) #6
  %inc15 = add nuw nsw i32 %i.172, 1
  %24 = ptrtoint ptr %size5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size5, align 8
  %cmp6 = icmp slt i32 %inc15, %25
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end16_crit_edge

for.body7.for.end16_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end16

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end16:                                        ; preds = %for.body7.for.end16_crit_edge, %for.end.for.end16_crit_edge
  %primary18 = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %primary18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %primary18, align 4
  %epoch = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 17
  %28 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %epoch, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, i32 noundef %27, i32 noundef %29) #6
  %pool_ns = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %pool_ns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pool_ns, align 8
  %tobool19.not = icmp eq ptr %31, null
  br i1 %tobool19.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.ceph_string, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %str = getelementptr inbounds %struct.ceph_string, ptr %31, i32 0, i32 3
  %target_oid = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 2
  %name_len = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 2, i32 2
  %34 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %name_len, align 8
  %36 = ptrtoint ptr %target_oid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %target_oid, align 8
  %flags = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 14
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.39, i32 noundef %33, ptr noundef %str, i32 noundef %35, ptr noundef %37, i32 noundef %39) #6
  br label %if.end

if.else:                                          ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  %target_oid25 = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 2
  %name_len26 = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %name_len26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %name_len26, align 8
  %42 = ptrtoint ptr %target_oid25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %target_oid25, align 8
  %flags29 = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 14
  %44 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags29, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %41, ptr noundef %43, i32 noundef %45) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %paused = getelementptr inbounds %struct.ceph_osd_request_target, ptr %t, i32 0, i32 16
  %46 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %paused, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool30.not = icmp eq i8 %47, 0
  br i1 %tobool30.not, label %if.end.if.end32_crit_edge, label %if.then31

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.41) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osd_op_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osd_watch_op_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_hoid(ptr noundef %s, ptr nocapture noundef readonly %hoid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %snapid = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 4
  %0 = ptrtoint ptr %snapid to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %snapid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hash = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 5
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %is_max = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 6
  %4 = ptrtoint ptr %is_max to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_max, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true2
  %pool = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 9
  %6 = ptrtoint ptr %pool to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pool, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %7)
  %cmp4 = icmp eq i64 %7, -9223372036854775808
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.50) #6
  br label %return

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %is_max5 = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 6
  %8 = ptrtoint ptr %is_max5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_max5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.51) #6
  br label %return

if.end8:                                          ; preds = %if.end
  %pool9 = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 9
  %10 = ptrtoint ptr %pool9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pool9, align 8
  %hash_reverse_bits = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 10
  %12 = ptrtoint ptr %hash_reverse_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hash_reverse_bits, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, i64 noundef %11, i32 noundef %13) #6
  %nspace = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 7
  %14 = ptrtoint ptr %nspace to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nspace, align 8
  %nspace_len = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 8
  %16 = ptrtoint ptr %nspace_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nspace_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp40.not.i = icmp eq i32 %17, 0
  br i1 %cmp40.not.i, label %if.end8.dump_name_escaped.exit_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.dump_name_escaped.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_name_escaped.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %15, i32 %i.041.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %19, label %lor.lhs.false12.i [
    i8 37, label %for.body.i.if.then.i_crit_edge
    i8 58, label %for.body.i.if.then.i_crit_edge58
    i8 47, label %for.body.i.if.then.i_crit_edge59
  ]

for.body.i.if.then.i_crit_edge59:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.body.i.if.then.i_crit_edge58:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false12.i:                                ; preds = %for.body.i
  %21 = add i8 %19, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %21)
  %22 = icmp ult i8 %21, -95
  br i1 %22, label %lor.lhs.false12.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false12.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false12.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge58, %for.body.i.if.then.i_crit_edge59
  %conv23.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %conv23.i) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext %19) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc.i = add nuw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.i.dump_name_escaped.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dump_name_escaped.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_name_escaped.exit

dump_name_escaped.exit:                           ; preds = %for.inc.i.dump_name_escaped.exit_crit_edge, %if.end8.dump_name_escaped.exit_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 58) #6
  %23 = ptrtoint ptr %hoid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hoid, align 8
  %key_len = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 1
  %25 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp40.not.i33 = icmp eq i32 %26, 0
  br i1 %cmp40.not.i33, label %dump_name_escaped.exit.dump_name_escaped.exit44_crit_edge, label %dump_name_escaped.exit.for.body.i36_crit_edge

dump_name_escaped.exit.for.body.i36_crit_edge:    ; preds = %dump_name_escaped.exit
  br label %for.body.i36

dump_name_escaped.exit.dump_name_escaped.exit44_crit_edge: ; preds = %dump_name_escaped.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_name_escaped.exit44

for.body.i36:                                     ; preds = %for.inc.i43.for.body.i36_crit_edge, %dump_name_escaped.exit.for.body.i36_crit_edge
  %i.041.i34 = phi i32 [ %inc.i41, %for.inc.i43.for.body.i36_crit_edge ], [ 0, %dump_name_escaped.exit.for.body.i36_crit_edge ]
  %arrayidx.i35 = getelementptr i8, ptr %24, i32 %i.041.i34
  %27 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i35, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %28, label %lor.lhs.false12.i37 [
    i8 37, label %for.body.i36.if.then.i39_crit_edge
    i8 58, label %for.body.i36.if.then.i39_crit_edge60
    i8 47, label %for.body.i36.if.then.i39_crit_edge61
  ]

for.body.i36.if.then.i39_crit_edge61:             ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i39

for.body.i36.if.then.i39_crit_edge60:             ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i39

for.body.i36.if.then.i39_crit_edge:               ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i39

lor.lhs.false12.i37:                              ; preds = %for.body.i36
  %30 = add i8 %28, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %30)
  %31 = icmp ult i8 %30, -95
  br i1 %31, label %lor.lhs.false12.i37.if.then.i39_crit_edge, label %if.else.i40

lor.lhs.false12.i37.if.then.i39_crit_edge:        ; preds = %lor.lhs.false12.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i39

if.then.i39:                                      ; preds = %lor.lhs.false12.i37.if.then.i39_crit_edge, %for.body.i36.if.then.i39_crit_edge, %for.body.i36.if.then.i39_crit_edge60, %for.body.i36.if.then.i39_crit_edge61
  %conv23.i38 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %conv23.i38) #6
  br label %for.inc.i43

if.else.i40:                                      ; preds = %lor.lhs.false12.i37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext %28) #6
  br label %for.inc.i43

for.inc.i43:                                      ; preds = %if.else.i40, %if.then.i39
  %inc.i41 = add nuw i32 %i.041.i34, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, %26
  br i1 %exitcond.not.i42, label %for.inc.i43.dump_name_escaped.exit44_crit_edge, label %for.inc.i43.for.body.i36_crit_edge

for.inc.i43.for.body.i36_crit_edge:               ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i36

for.inc.i43.dump_name_escaped.exit44_crit_edge:   ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_name_escaped.exit44

dump_name_escaped.exit44:                         ; preds = %for.inc.i43.dump_name_escaped.exit44_crit_edge, %dump_name_escaped.exit.dump_name_escaped.exit44_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 58) #6
  %oid = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 2
  %32 = ptrtoint ptr %oid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %oid, align 8
  %oid_len = getelementptr inbounds %struct.ceph_hobject_id, ptr %hoid, i32 0, i32 3
  %34 = ptrtoint ptr %oid_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oid_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp40.not.i45 = icmp eq i32 %35, 0
  br i1 %cmp40.not.i45, label %dump_name_escaped.exit44.dump_name_escaped.exit56_crit_edge, label %dump_name_escaped.exit44.for.body.i48_crit_edge

dump_name_escaped.exit44.for.body.i48_crit_edge:  ; preds = %dump_name_escaped.exit44
  br label %for.body.i48

dump_name_escaped.exit44.dump_name_escaped.exit56_crit_edge: ; preds = %dump_name_escaped.exit44
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_name_escaped.exit56

for.body.i48:                                     ; preds = %for.inc.i55.for.body.i48_crit_edge, %dump_name_escaped.exit44.for.body.i48_crit_edge
  %i.041.i46 = phi i32 [ %inc.i53, %for.inc.i55.for.body.i48_crit_edge ], [ 0, %dump_name_escaped.exit44.for.body.i48_crit_edge ]
  %arrayidx.i47 = getelementptr i8, ptr %33, i32 %i.041.i46
  %36 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i47, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %37, label %lor.lhs.false12.i49 [
    i8 37, label %for.body.i48.if.then.i51_crit_edge
    i8 58, label %for.body.i48.if.then.i51_crit_edge62
    i8 47, label %for.body.i48.if.then.i51_crit_edge63
  ]

for.body.i48.if.then.i51_crit_edge63:             ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i51

for.body.i48.if.then.i51_crit_edge62:             ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i51

for.body.i48.if.then.i51_crit_edge:               ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i51

lor.lhs.false12.i49:                              ; preds = %for.body.i48
  %39 = add i8 %37, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %39)
  %40 = icmp ult i8 %39, -95
  br i1 %40, label %lor.lhs.false12.i49.if.then.i51_crit_edge, label %if.else.i52

lor.lhs.false12.i49.if.then.i51_crit_edge:        ; preds = %lor.lhs.false12.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i51

if.then.i51:                                      ; preds = %lor.lhs.false12.i49.if.then.i51_crit_edge, %for.body.i48.if.then.i51_crit_edge, %for.body.i48.if.then.i51_crit_edge62, %for.body.i48.if.then.i51_crit_edge63
  %conv23.i50 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %conv23.i50) #6
  br label %for.inc.i55

if.else.i52:                                      ; preds = %lor.lhs.false12.i49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext %37) #6
  br label %for.inc.i55

for.inc.i55:                                      ; preds = %if.else.i52, %if.then.i51
  %inc.i53 = add nuw i32 %i.041.i46, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i53, %35
  br i1 %exitcond.not.i54, label %for.inc.i55.dump_name_escaped.exit56_crit_edge, label %for.inc.i55.for.body.i48_crit_edge

for.inc.i55.for.body.i48_crit_edge:               ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i48

for.inc.i55.dump_name_escaped.exit56_crit_edge:   ; preds = %for.inc.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_name_escaped.exit56

dump_name_escaped.exit56:                         ; preds = %for.inc.i55.dump_name_escaped.exit56_crit_edge, %dump_name_escaped.exit44.dump_name_escaped.exit56_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 58) #6
  %41 = ptrtoint ptr %snapid to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %snapid, align 8
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.71)
  switch i64 %42, label %if.else3.i [
    i64 -2, label %if.then.i57
    i64 -1, label %if.then2.i
  ]

if.then.i57:                                      ; preds = %dump_name_escaped.exit56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.54) #6
  br label %return

if.then2.i:                                       ; preds = %dump_name_escaped.exit56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.55) #6
  br label %return

if.else3.i:                                       ; preds = %dump_name_escaped.exit56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i64 noundef %42) #6
  br label %return

return:                                           ; preds = %if.else3.i, %if.then2.i, %if.then.i57, %if.then7, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monmap_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @monmap_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @monmap_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %monmap = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %monmap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %epoch = getelementptr inbounds %struct.ceph_monmap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %epoch, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %5) #6
  %6 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %monmap, align 4
  %num_mon20 = getelementptr inbounds %struct.ceph_monmap, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %num_mon20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_mon20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp521.not = icmp eq i32 %9, 0
  br i1 %cmp521.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %10 = phi ptr [ %17, %for.body.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ceph_monmap, ptr %10, i32 0, i32 3, i32 %i.022
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %call = tail call ptr @ceph_entity_type_name(i32 noundef %conv) #6
  %num = getelementptr inbounds %struct.ceph_entity_name, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %num, align 1
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %addr = getelementptr %struct.ceph_monmap, ptr %10, i32 0, i32 3, i32 %i.022, i32 1
  %call9 = tail call ptr @ceph_pr_addr(ptr noundef %addr) #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.58, ptr noundef %call, i64 noundef %15, ptr noundef %call9) #6
  %inc = add nuw i32 %i.022, 1
  %16 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %monmap, align 4
  %num_mon = getelementptr inbounds %struct.ceph_monmap, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %num_mon to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_mon, align 4
  %cmp5 = icmp ult i32 %inc, %19
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_entity_type_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_pr_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osdmap_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @osdmap_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osdmap_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  %sb = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %osdmap = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %osdmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %osdmap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 2
  tail call void @down_read(ptr noundef %lock) #6
  %epoch = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %epoch, align 4
  %epoch_barrier = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 12, i32 6
  %6 = ptrtoint ptr %epoch_barrier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %epoch_barrier, align 8
  %flags = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %5, i32 noundef %7, i32 noundef %9) #6
  %pg_pools = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 14
  %call = tail call ptr @rb_first(ptr noundef %pg_pools) #6
  %tobool.not206 = icmp eq ptr %call, null
  br i1 %tobool.not206, label %if.end.for.cond6.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond6.preheader_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.body.for.cond6.preheader_crit_edge, %if.end.for.cond6.preheader_crit_edge
  %max_osd = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %max_osd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_osd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp7208.not = icmp eq i32 %11, 0
  br i1 %cmp7208.not, label %for.cond6.preheader.for.end19_crit_edge, label %for.body9.lr.ph

for.cond6.preheader.for.end19_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %osd_addr = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 8
  %osd_state = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 6
  %osd_weight = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 7
  %options = getelementptr inbounds %struct.ceph_client, ptr %1, i32 0, i32 3
  br label %for.body9

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.0207 = phi ptr [ %call5, %for.body.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %id, align 8
  %name = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 15
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 8
  %type = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 2
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type, align 8
  %conv = zext i8 %17 to i32
  %size = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 3
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %size, align 1
  %conv2 = zext i8 %19 to i32
  %min_size = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 4
  %20 = ptrtoint ptr %min_size to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %min_size, align 2
  %conv3 = zext i8 %21 to i32
  %pg_num = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 8
  %22 = ptrtoint ptr %pg_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pg_num, align 4
  %pg_num_mask = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 10
  %24 = ptrtoint ptr %pg_num_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pg_num_mask, align 4
  %flags4 = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 14
  %26 = ptrtoint ptr %flags4 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flags4, align 8
  %last_force_request_resend = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 7
  %28 = ptrtoint ptr %last_force_request_resend to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_force_request_resend, align 8
  %read_tier = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 12
  %30 = ptrtoint ptr %read_tier to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %read_tier, align 8
  %write_tier = getelementptr inbounds %struct.ceph_pg_pool_info, ptr %n.0207, i32 0, i32 13
  %32 = ptrtoint ptr %write_tier to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %write_tier, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, i64 noundef %13, ptr noundef %15, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %23, i32 noundef %25, i64 noundef %27, i32 noundef %29, i64 noundef %31, i64 noundef %33) #6
  %call5 = tail call ptr @rb_next(ptr noundef nonnull %n.0207) #6
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.body.for.cond6.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.cond6.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond6.preheader

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %i.0209 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9.for.body9_crit_edge ]
  %34 = ptrtoint ptr %osd_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %osd_addr, align 4
  %arrayidx = getelementptr %struct.ceph_entity_addr, ptr %35, i32 %i.0209
  %36 = ptrtoint ptr %osd_state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %osd_state, align 4
  %arrayidx10 = getelementptr i32, ptr %37, i32 %i.0209
  %38 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sb) #6
  %40 = call ptr @memset(ptr %sb, i32 255, i32 64)
  %call11 = call ptr @ceph_pr_addr(ptr noundef %arrayidx) #6
  %41 = ptrtoint ptr %osd_weight to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %osd_weight, align 4
  %arrayidx12 = getelementptr i32, ptr %42, i32 %i.0209
  %43 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx12, align 4
  %mul = mul i32 %44, 100
  %shr = lshr i32 %mul, 16
  %call13 = call ptr @ceph_osdmap_state_str(ptr noundef nonnull %sb, i32 noundef 64, i32 noundef %39) #6
  %call14 = call i32 @ceph_get_primary_affinity(ptr noundef nonnull %3, i32 noundef %i.0209) #6
  %mul15 = mul i32 %call14, 100
  %shr16 = lshr i32 %mul15, 16
  %45 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %options, align 8
  %crush_locs = getelementptr inbounds %struct.ceph_options, ptr %46, i32 0, i32 13
  %call17 = call i32 @ceph_get_crush_locality(ptr noundef nonnull %3, i32 noundef %i.0209, ptr noundef %crush_locs) #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, i32 noundef %i.0209, ptr noundef %call11, i32 noundef %shr, ptr noundef %call13, i32 noundef %shr16, i32 noundef %call17) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sb) #6
  %inc = add nuw i32 %i.0209, 1
  %47 = ptrtoint ptr %max_osd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_osd, align 4
  %cmp7 = icmp ult i32 %inc, %48
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.for.end19_crit_edge

for.body9.for.end19_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.end19:                                        ; preds = %for.body9.for.end19_crit_edge, %for.cond6.preheader.for.end19_crit_edge
  %pg_temp = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 9
  %call20 = call ptr @rb_first(ptr noundef %pg_temp) #6
  %tobool22.not212 = icmp eq ptr %call20, null
  br i1 %tobool22.not212, label %for.end19.for.end40_crit_edge, label %for.end19.for.body23_crit_edge

for.end19.for.body23_crit_edge:                   ; preds = %for.end19
  br label %for.body23

for.end19.for.end40_crit_edge:                    ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40

for.body23:                                       ; preds = %for.end37.for.body23_crit_edge, %for.end19.for.body23_crit_edge
  %n.1213 = phi ptr [ %call39, %for.end37.for.body23_crit_edge ], [ %call20, %for.end19.for.body23_crit_edge ]
  %pgid = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.1213, i32 0, i32 1
  %49 = ptrtoint ptr %pgid to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pgid, align 8
  %seed = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.1213, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %seed to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %seed, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, i64 noundef %50, i32 noundef %52) #6
  %53 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.1213, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp29210 = icmp sgt i32 %55, 0
  br i1 %cmp29210, label %for.body23.for.body31_crit_edge, label %for.body23.for.end37_crit_edge

for.body23.for.end37_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.body23.for.body31_crit_edge:                  ; preds = %for.body23
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body23.for.body31_crit_edge
  %i.1211 = phi i32 [ %inc36, %for.body31.for.body31_crit_edge ], [ 0, %for.body23.for.body31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1211)
  %cmp32 = icmp eq i32 %i.1211, 0
  %cond = select i1 %cmp32, ptr @.str.18, ptr @.str.31
  %arrayidx34 = getelementptr %struct.anon.144, ptr %53, i32 0, i32 1, i32 %i.1211
  %56 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx34, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond, i32 noundef %57) #6
  %inc36 = add nuw nsw i32 %i.1211, 1
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %53, align 8
  %cmp29 = icmp slt i32 %inc36, %59
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.for.end37_crit_edge

for.body31.for.end37_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31

for.end37:                                        ; preds = %for.body31.for.end37_crit_edge, %for.body23.for.end37_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63) #6
  %call39 = call ptr @rb_next(ptr noundef nonnull %n.1213) #6
  %tobool22.not = icmp eq ptr %call39, null
  br i1 %tobool22.not, label %for.end37.for.end40_crit_edge, label %for.end37.for.body23_crit_edge

for.end37.for.body23_crit_edge:                   ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

for.end37.for.end40_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end40

for.end40:                                        ; preds = %for.end37.for.end40_crit_edge, %for.end19.for.end40_crit_edge
  %primary_temp = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 10
  %call41 = call ptr @rb_first(ptr noundef %primary_temp) #6
  %tobool43.not214 = icmp eq ptr %call41, null
  br i1 %tobool43.not214, label %for.end40.for.end55_crit_edge, label %for.end40.for.body44_crit_edge

for.end40.for.body44_crit_edge:                   ; preds = %for.end40
  br label %for.body44

for.end40.for.end55_crit_edge:                    ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.end40.for.body44_crit_edge
  %n.2215 = phi ptr [ %call54, %for.body44.for.body44_crit_edge ], [ %call41, %for.end40.for.body44_crit_edge ]
  %pgid49 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.2215, i32 0, i32 1
  %60 = ptrtoint ptr %pgid49 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %pgid49, align 8
  %seed52 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.2215, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %seed52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %seed52, align 8
  %64 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.2215, i32 0, i32 2
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i64 noundef %61, i32 noundef %63, i32 noundef %66) #6
  %call54 = call ptr @rb_next(ptr noundef nonnull %n.2215) #6
  %tobool43.not = icmp eq ptr %call54, null
  br i1 %tobool43.not, label %for.body44.for.end55_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body44

for.body44.for.end55_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end55

for.end55:                                        ; preds = %for.body44.for.end55_crit_edge, %for.end40.for.end55_crit_edge
  %pg_upmap = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 11
  %call56 = call ptr @rb_first(ptr noundef %pg_upmap) #6
  %tobool58.not218 = icmp eq ptr %call56, null
  br i1 %tobool58.not218, label %for.end55.for.end83_crit_edge, label %for.end55.for.body59_crit_edge

for.end55.for.body59_crit_edge:                   ; preds = %for.end55
  br label %for.body59

for.end55.for.end83_crit_edge:                    ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end83

for.body59:                                       ; preds = %for.end80.for.body59_crit_edge, %for.end55.for.body59_crit_edge
  %n.3219 = phi ptr [ %call82, %for.end80.for.body59_crit_edge ], [ %call56, %for.end55.for.body59_crit_edge ]
  %pgid64 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.3219, i32 0, i32 1
  %67 = ptrtoint ptr %pgid64 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %pgid64, align 8
  %seed67 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.3219, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %seed67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %seed67, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i64 noundef %68, i32 noundef %70) #6
  %71 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.3219, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp70216 = icmp sgt i32 %73, 0
  br i1 %cmp70216, label %for.body59.for.body72_crit_edge, label %for.body59.for.end80_crit_edge

for.body59.for.end80_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.body59.for.body72_crit_edge:                  ; preds = %for.body59
  br label %for.body72

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.body59.for.body72_crit_edge
  %i.2217 = phi i32 [ %inc79, %for.body72.for.body72_crit_edge ], [ 0, %for.body59.for.body72_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2217)
  %cmp73 = icmp eq i32 %i.2217, 0
  %cond75 = select i1 %cmp73, ptr @.str.18, ptr @.str.31
  %arrayidx77 = getelementptr %struct.anon.144, ptr %71, i32 0, i32 1, i32 %i.2217
  %74 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx77, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond75, i32 noundef %75) #6
  %inc79 = add nuw nsw i32 %i.2217, 1
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %71, align 8
  %cmp70 = icmp slt i32 %inc79, %77
  br i1 %cmp70, label %for.body72.for.body72_crit_edge, label %for.body72.for.end80_crit_edge

for.body72.for.end80_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72

for.end80:                                        ; preds = %for.body72.for.end80_crit_edge, %for.body59.for.end80_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63) #6
  %call82 = call ptr @rb_next(ptr noundef nonnull %n.3219) #6
  %tobool58.not = icmp eq ptr %call82, null
  br i1 %tobool58.not, label %for.end80.for.end83_crit_edge, label %for.end80.for.body59_crit_edge

for.end80.for.body59_crit_edge:                   ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body59

for.end80.for.end83_crit_edge:                    ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end83

for.end83:                                        ; preds = %for.end80.for.end83_crit_edge, %for.end55.for.end83_crit_edge
  %pg_upmap_items = getelementptr inbounds %struct.ceph_osdmap, ptr %3, i32 0, i32 12
  %call84 = call ptr @rb_first(ptr noundef %pg_upmap_items) #6
  %tobool86.not222 = icmp eq ptr %call84, null
  br i1 %tobool86.not222, label %for.end83.for.end114_crit_edge, label %for.end83.for.body87_crit_edge

for.end83.for.body87_crit_edge:                   ; preds = %for.end83
  br label %for.body87

for.end83.for.end114_crit_edge:                   ; preds = %for.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

for.body87:                                       ; preds = %for.end111.for.body87_crit_edge, %for.end83.for.body87_crit_edge
  %n.4223 = phi ptr [ %call113, %for.end111.for.body87_crit_edge ], [ %call84, %for.end83.for.body87_crit_edge ]
  %pgid92 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.4223, i32 0, i32 1
  %78 = ptrtoint ptr %pgid92 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %pgid92, align 8
  %seed95 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.4223, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %seed95 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %seed95, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i64 noundef %79, i32 noundef %81) #6
  %82 = getelementptr inbounds %struct.ceph_pg_mapping, ptr %n.4223, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp98220 = icmp sgt i32 %84, 0
  br i1 %cmp98220, label %for.body87.for.body100_crit_edge, label %for.body87.for.end111_crit_edge

for.body87.for.end111_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end111

for.body87.for.body100_crit_edge:                 ; preds = %for.body87
  br label %for.body100

for.body100:                                      ; preds = %for.body100.for.body100_crit_edge, %for.body87.for.body100_crit_edge
  %i.3221 = phi i32 [ %inc110, %for.body100.for.body100_crit_edge ], [ 0, %for.body87.for.body100_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3221)
  %cmp101 = icmp eq i32 %i.3221, 0
  %cond103 = select i1 %cmp101, ptr @.str.18, ptr @.str.31
  %arrayidx104 = getelementptr %struct.anon.146, ptr %82, i32 0, i32 1, i32 %i.3221
  %85 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx104, align 4
  %arrayidx108 = getelementptr %struct.anon.146, ptr %82, i32 0, i32 1, i32 %i.3221, i32 1
  %87 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx108, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, ptr noundef nonnull %cond103, i32 noundef %86, i32 noundef %88) #6
  %inc110 = add nuw nsw i32 %i.3221, 1
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %82, align 8
  %cmp98 = icmp slt i32 %inc110, %90
  br i1 %cmp98, label %for.body100.for.body100_crit_edge, label %for.body100.for.end111_crit_edge

for.body100.for.end111_crit_edge:                 ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end111

for.body100.for.body100_crit_edge:                ; preds = %for.body100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body100

for.end111:                                       ; preds = %for.body100.for.end111_crit_edge, %for.body87.for.end111_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63) #6
  %call113 = call ptr @rb_next(ptr noundef nonnull %n.4223) #6
  %tobool86.not = icmp eq ptr %call113, null
  br i1 %tobool86.not, label %for.end111.for.end114_crit_edge, label %for.end111.for.body87_crit_edge

for.end111.for.body87_crit_edge:                  ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body87

for.end111.for.end114_crit_edge:                  ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

for.end114:                                       ; preds = %for.end111.for.end114_crit_edge, %for.end83.for.end114_crit_edge
  call void @up_read(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end114, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_osdmap_state_str(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_get_primary_affinity(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_get_crush_locality(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @client_options_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @client_options_show, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @client_options_show(ptr noundef %s, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call i32 @ceph_print_client_options(ptr noundef %s, ptr noundef %1, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_print_client_options(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/debugfs.c", i32 399, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/debugfs.c", i32 411, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/debugfs.c", i32 414, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ceph_debugfs_client_init.__UNIQUE_ID_ddebug308, !5, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!10 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ceph/debugfs.c", i32 418, i32 50}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ceph/debugfs.c", i32 424, i32 50}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ceph/debugfs.c", i32 430, i32 47}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ceph/debugfs.c", i32 436, i32 47}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ceph/debugfs.c", i32 442, i32 48}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ceph/debugfs.c", i32 451, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ceph_debugfs_client_cleanup.__UNIQUE_ID_ddebug309, !23, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!26 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ceph_debugfs_dir, !28, !"ceph_debugfs_dir", i1 false, i1 false}
!28 = !{!"../net/ceph/debugfs.c", i32 32, i32 23}
!29 = !{ptr @monc_fops, !30, !"monc_fops", i1 false, i1 false}
!30 = !{!"../net/ceph/debugfs.c", i32 393, i32 1}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ceph/debugfs.c", i32 149, i32 17}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ceph/debugfs.c", i32 152, i32 18}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ceph/debugfs.c", i32 155, i32 32}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/ceph/debugfs.c", i32 155, i32 37}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ceph/debugfs.c", i32 158, i32 16}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ceph/debugfs.c", i32 165, i32 18}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ceph/debugfs.c", i32 167, i32 18}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ceph/debugfs.c", i32 169, i32 18}
!47 = !{ptr @osdc_fops, !48, !"osdc_fops", i1 false, i1 false}
!48 = !{!"../net/ceph/debugfs.c", i32 394, i32 1}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ceph/debugfs.c", i32 349, i32 16}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ceph/debugfs.c", i32 359, i32 14}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/ceph/debugfs.c", i32 367, i32 14}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/ceph/debugfs.c", i32 213, i32 16}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ceph/debugfs.c", i32 216, i32 16}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ceph/debugfs.c", i32 221, i32 17}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ceph/debugfs.c", i32 221, i32 35}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/ceph/debugfs.c", i32 221, i32 42}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/ceph/debugfs.c", i32 224, i32 18}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ceph/debugfs.c", i32 227, i32 18}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ceph/debugfs.c", i32 187, i32 16}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/ceph/debugfs.c", i32 189, i32 14}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/ceph/debugfs.c", i32 191, i32 17}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/ceph/debugfs.c", i32 192, i32 16}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/ceph/debugfs.c", i32 195, i32 16}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/ceph/debugfs.c", i32 197, i32 17}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/ceph/debugfs.c", i32 202, i32 17}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ceph/debugfs.c", i32 206, i32 15}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/ceph/debugfs.c", i32 178, i32 16}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/ceph/debugfs.c", i32 180, i32 17}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/ceph/debugfs.c", i32 255, i32 16}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/ceph/debugfs.c", i32 256, i32 23}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/ceph/debugfs.c", i32 256, i32 29}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/ceph/debugfs.c", i32 256, i32 52}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/ceph/debugfs.c", i32 330, i32 17}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/ceph/debugfs.c", i32 332, i32 17}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/ceph/debugfs.c", i32 304, i32 15}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/ceph/debugfs.c", i32 308, i32 15}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/ceph/debugfs.c", i32 311, i32 16}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/ceph/debugfs.c", i32 293, i32 18}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/ceph/debugfs.c", i32 278, i32 15}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/ceph/debugfs.c", i32 280, i32 15}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/ceph/debugfs.c", i32 282, i32 17}
!115 = !{ptr @monmap_fops, !116, !"monmap_fops", i1 false, i1 false}
!116 = !{!"../net/ceph/debugfs.c", i32 391, i32 1}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/ceph/debugfs.c", i32 42, i32 16}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/ceph/debugfs.c", i32 47, i32 17}
!121 = !{ptr @osdmap_fops, !122, !"osdmap_fops", i1 false, i1 false}
!122 = !{!"../net/ceph/debugfs.c", i32 392, i32 1}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/ceph/debugfs.c", i32 66, i32 16}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/ceph/debugfs.c", i32 73, i32 17}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/ceph/debugfs.c", i32 84, i32 17}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/ceph/debugfs.c", i32 96, i32 17}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/ceph/debugfs.c", i32 101, i32 17}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/ceph/debugfs.c", i32 107, i32 17}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/ceph/debugfs.c", i32 114, i32 17}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/ceph/debugfs.c", i32 125, i32 17}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/ceph/debugfs.c", i32 128, i32 18}
!141 = !{ptr @client_options_fops, !142, !"client_options_fops", i1 false, i1 false}
!142 = !{!"../net/ceph/debugfs.c", i32 395, i32 1}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2148311624, i64 2148311629, i64 2148311642, i64 2148311686, i64 2148311720, i64 2148311741}
!153 = !{i8 0, i8 2}
