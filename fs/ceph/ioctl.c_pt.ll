; ModuleID = '/llk/IR_all_yes/fs/ceph/ioctl.c_pt.bc'
source_filename = "../fs/ceph/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ceph_ioctl_dataloc = type { i64, i64, i64, i64, [64 x i8], i64, i64, i64, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.113 }
%union.anon.113 = type { ptr, [124 x i8] }
%struct.ceph_object_locator = type { i64, ptr }
%struct.ceph_object_id = type { ptr, [52 x i8], i32 }
%struct.ceph_pg = type { i64, i32 }
%struct.ceph_ioctl_layout = type { i64, i64, i64, i64, i64 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.101, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.102, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.103, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.102 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.103 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.ceph_fs_client = type { ptr, %struct.list_head, ptr, ptr, i32, i8, i8, i32, i64, ptr, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ceph_mds_client = type { ptr, %struct.mutex, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, i32, ptr, %struct.atomic_t, i32, i32, %struct.atomic64_t, %struct.rb_root, %struct.mutex, i64, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, i32, %struct.spinlock, i64, i64, %struct.rb_root, %struct.delayed_work, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i32, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.ceph_client_metric, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.rw_semaphore, %struct.rb_root, [65 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_client_metric = type { %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, [4 x %struct.ceph_metric], %struct.atomic64_t, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.delayed_work }
%struct.ceph_metric = type { %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ceph_mdsmap = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, ptr, i64, i8, i8, i32 }
%struct.ceph_mds_request = type { i64, %struct.rb_node, ptr, %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ceph_vino, %struct.ceph_vino, ptr, ptr, i32, %struct.mutex, %union.ceph_mds_request_args, i32, ptr, i32, %struct.timespec64, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.ceph_mds_reply_info_parsed, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i32, i64, %struct.list_head, %struct.completion, %struct.completion, ptr, ptr, %struct.list_head, i64, i64, i32, %struct.ceph_cap_reservation }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ceph_vino = type { i64, i64 }
%union.ceph_mds_request_args = type { %struct.anon.140, [16 x i8] }
%struct.anon.140 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_reply_info_parsed = type { ptr, %struct.ceph_mds_reply_info_in, %struct.ceph_mds_reply_info_in, ptr, ptr, i32, ptr, %union.anon.145, ptr, i32 }
%struct.ceph_mds_reply_info_in = type { ptr, %struct.ceph_dir_layout, i32, ptr, i32, ptr, i64, i32, ptr, i32, ptr, i64, i64, i32, %struct.ceph_timespec, %struct.ceph_timespec, i64, i64 }
%struct.ceph_dir_layout = type { i8, i8, i16, i32 }
%struct.ceph_timespec = type { i32, i32 }
%union.anon.145 = type { %struct.anon.147, [8 x i8] }
%struct.anon.147 = type { i8, i64 }
%struct.ceph_cap_reservation = type { i32, i32 }
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.128], i32, ptr }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.124 }>
%union.anon.124 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.125 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.92, %union.anon.93 }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
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
%struct.anon.128 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.ceph_osdmap = type { %struct.ceph_fsid, i32, %struct.ceph_timespec, %struct.ceph_timespec, i32, i32, ptr, ptr, ptr, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, ptr, %struct.rb_root, i32, ptr, %struct.workspace_manager }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }
%struct.ceph_file_info = type { i16, i16, %struct.spinlock, %struct.list_head, i32, %struct.atomic_t }

@ceph_ioctl.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ceph\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ceph_ioctl\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ceph/ioctl.c\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : ioctl file %p cmd %u arg %lu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ceph: %.*s %12.12s:%-4d : ioctl file %p cmd %u arg %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%llx.%08llx\00", [20 x i8] zeroinitializer }, align 32
@ceph_ioctl_get_dataloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ceph_ioctl_lazyio.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_ioctl_lazyio\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : ioctl_layzio: file %p marked lazy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ceph: %.*s %12.12s:%-4d : ioctl_layzio: file %p marked lazy\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_ioctl_lazyio.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : ioctl_layzio: file %p already lazy\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ceph: %.*s %12.12s:%-4d : ioctl_layzio: file %p already lazy\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 38660, i64 38661, i64 1076401922, i64 1076401925, i64 2150143745, i64 3237517059]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 273, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 174, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 208, i32 51 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 212, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 213, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 254, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [19 x i8] c"../fs/ceph/ioctl.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 258, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %dl.i = alloca %struct.ceph_ioctl_dataloc, align 8
  %oloc.i = alloca %struct.ceph_object_locator, align 8
  %oid.i = alloca %struct.ceph_object_id, align 4
  %xlen.i = alloca i32, align 4
  %pgid.i = alloca %struct.ceph_pg, align 8
  %l.i37 = alloca %struct.ceph_ioctl_layout, align 8
  %l.i27 = alloca %struct.ceph_ioctl_layout, align 8
  %l.i = alloca %struct.ceph_ioctl_layout, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_ioctl.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_ioctl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_ioctl.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.4, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 273, ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.return_crit_edge [
    i32 -2144823551, label %sw.bb
    i32 1076401922, label %sw.bb5
    i32 1076401925, label %sw.bb7
    i32 -1057450237, label %sw.bb9
    i32 38660, label %sw.bb11
    i32 38661, label %sw.bb13
  ]

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %do.end
  %1 = inttoptr i32 %arg to ptr
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %l.i) #8
  %call.i.i = tail call i32 @__ceph_do_getattr(ptr noundef %3, ptr noundef null, i32 noundef 256, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.if.end15.i_crit_edge

sw.bb.if.end15.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then.i:                                        ; preds = %sw.bb
  %4 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i, i32 0, i32 1
  %i_layout.i = getelementptr i8, ptr %3, i32 -824
  %8 = ptrtoint ptr %i_layout.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_layout.i, align 8
  %conv.i = zext i32 %9 to i64
  %10 = ptrtoint ptr %l.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %l.i, align 8
  %stripe_count.i = getelementptr i8, ptr %3, i32 -820
  %11 = ptrtoint ptr %stripe_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stripe_count.i, align 4
  %conv6.i = zext i32 %12 to i64
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv6.i, ptr %7, align 8
  %object_size.i = getelementptr i8, ptr %3, i32 -816
  %14 = ptrtoint ptr %object_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %object_size.i, align 8
  %conv9.i = zext i32 %15 to i64
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv9.i, ptr %6, align 8
  %pool_id.i = getelementptr i8, ptr %3, i32 -808
  %17 = ptrtoint ptr %pool_id.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %pool_id.i, align 8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %5, align 8
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %4, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.then.i.ceph_ioctl_get_layout.exit_crit_edge, label %if.end.i.i.i

if.then.i.ceph_ioctl_get_layout.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_get_layout.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 40, i32 -1226833920) #11, !srcloc !49
  %asmresult.i.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.ceph_ioctl_get_layout.exit_crit_edge

if.end.i.i.i.ceph_ioctl_get_layout.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_get_layout.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %l.i, i32 noundef 40) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %l.i, i32 noundef 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool13.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool13.not.i, label %copy_to_user.exit.i.if.end15.i_crit_edge, label %copy_to_user.exit.i.ceph_ioctl_get_layout.exit_crit_edge

copy_to_user.exit.i.ceph_ioctl_get_layout.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_get_layout.exit

copy_to_user.exit.i.if.end15.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %copy_to_user.exit.i.if.end15.i_crit_edge, %sw.bb.if.end15.i_crit_edge
  br label %ceph_ioctl_get_layout.exit

ceph_ioctl_get_layout.exit:                       ; preds = %if.end15.i, %copy_to_user.exit.i.ceph_ioctl_get_layout.exit_crit_edge, %if.end.i.i.i.ceph_ioctl_get_layout.exit_crit_edge, %if.then.i.ceph_ioctl_get_layout.exit_crit_edge
  %retval.0.i26 = phi i32 [ %call.i.i, %if.end15.i ], [ -14, %copy_to_user.exit.i.ceph_ioctl_get_layout.exit_crit_edge ], [ -14, %if.then.i.ceph_ioctl_get_layout.exit_crit_edge ], [ -14, %if.end.i.i.i.ceph_ioctl_get_layout.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %l.i) #8
  br label %return

sw.bb5:                                           ; preds = %do.end
  %22 = inttoptr i32 %arg to ptr
  %f_inode.i.i28 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %23 = ptrtoint ptr %f_inode.i.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_inode.i.i28, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %27 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_fs_info.i.i, align 16
  %mdsc2.i = getelementptr inbounds %struct.ceph_fs_client, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %mdsc2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdsc2.i, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %l.i27) #8
  %31 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i27, i32 0, i32 1
  %32 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i27, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i27, i32 0, i32 3
  %34 = call ptr @memset(ptr %l.i27, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #8
  %call.i.i.i29 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i29, label %sw.bb5.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb5.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb5
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %22, i32 40, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i.i30 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i30)
  %cmp.i6.i.i31 = icmp eq i32 %asmresult.i.i.i30, 0
  br i1 %cmp.i6.i.i31, label %if.end.i.i.i33, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !51

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i33:                                   ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i32 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l.i27, i32 noundef 40) #8
  %36 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !52
  %and.i.i.i.i.i = and i32 %38, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %l.i27, ptr noundef %22, i32 noundef 40) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i33.if.then11.i.i.i_crit_edge, !prof !51

if.end.i.i.i33.if.then11.i.i.i_crit_edge:         ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i33.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb5.if.then11.i.i.i_crit_edge
  %res.0.i.i115.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i33.if.then11.i.i.i_crit_edge ], [ 40, %sw.bb5.if.then11.i.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 40, %res.0.i.i115.i
  %add.ptr.i.i.i = getelementptr i8, ptr %l.i27, i32 %sub.i.i.i
  %39 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i115.i)
  br label %ceph_ioctl_set_layout.exit

if.end.i:                                         ; preds = %if.end.i.i.i33
  %40 = ptrtoint ptr %f_inode.i.i28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %f_inode.i.i28, align 8
  %call.i.i34 = call i32 @__ceph_do_getattr(ptr noundef %41, ptr noundef null, i32 noundef 256, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %tobool8.not.i = icmp eq i32 %call.i.i34, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.ceph_ioctl_set_layout.exit_crit_edge

if.end.i.ceph_ioctl_set_layout.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout.exit

if.end10.i:                                       ; preds = %if.end.i
  %42 = ptrtoint ptr %l.i27 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %l.i27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool18.not.i = icmp eq i64 %43, 0
  br i1 %tobool18.not.i, label %if.else22.i, label %if.end10.i.if.end27.i_crit_edge

if.end10.i.if.end27.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

if.else22.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_layout23.i = getelementptr i8, ptr %24, i32 -824
  %44 = ptrtoint ptr %i_layout23.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %i_layout23.i, align 8
  %conv25.i = zext i32 %45 to i64
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.else22.i, %if.end10.i.if.end27.i_crit_edge
  %storemerge102.i = phi i64 [ %conv25.i, %if.else22.i ], [ %43, %if.end10.i.if.end27.i_crit_edge ]
  %46 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool28.not.i = icmp eq i64 %47, 0
  br i1 %tobool28.not.i, label %if.else32.i, label %if.end27.i.if.end37.i_crit_edge

if.end27.i.if.end37.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

if.else32.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %object_size34.i = getelementptr i8, ptr %24, i32 -816
  %48 = ptrtoint ptr %object_size34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %object_size34.i, align 8
  %conv35.i = zext i32 %49 to i64
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else32.i, %if.end27.i.if.end37.i_crit_edge
  %storemerge103.i = phi i64 [ %conv35.i, %if.else32.i ], [ %47, %if.end27.i.if.end37.i_crit_edge ]
  %50 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %33, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool38.not.i = icmp eq i64 %51, 0
  br i1 %tobool38.not.i, label %if.else42.i, label %if.end37.i.if.end45.i_crit_edge

if.end37.i.if.end45.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.else42.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  %pool_id.i35 = getelementptr i8, ptr %24, i32 -808
  %52 = ptrtoint ptr %pool_id.i35 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %pool_id.i35, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else42.i, %if.end37.i.if.end45.i_crit_edge
  %storemerge104.i = phi i64 [ %53, %if.else42.i ], [ %51, %if.end37.i.if.end45.i_crit_edge ]
  %and.i.i = and i64 %storemerge103.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %and1.i.i = and i64 %storemerge102.i, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.not.i.i = icmp eq i64 %and1.i.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 %tobool2.not.i.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false3.i.i, label %if.end45.i.ceph_ioctl_set_layout.exit_crit_edge

if.end45.i.ceph_ioctl_set_layout.exit_crit_edge:  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout.exit

lor.lhs.false3.i.i:                               ; preds = %if.end45.i
  %conv.i.i = trunc i64 %storemerge102.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false3.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

lor.lhs.false3.i.i.if.end.i.i_crit_edge:          ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false3.i.i
  %conv7.i.i = trunc i64 %storemerge103.i to i32
  %rem.i.i = urem i32 %conv7.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool10.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.ceph_ioctl_set_layout.exit_crit_edge

land.lhs.true.i.i.ceph_ioctl_set_layout.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %lor.lhs.false3.i.i.if.end.i.i_crit_edge
  %mutex.i.i = getelementptr inbounds %struct.ceph_mds_client, ptr %30, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  %mdsmap.i.i = getelementptr inbounds %struct.ceph_mds_client, ptr %30, i32 0, i32 2
  %54 = ptrtoint ptr %mdsmap.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdsmap.i.i, align 8
  %m_num_data_pg_pools.i.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %m_num_data_pg_pools.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_num_data_pg_pools.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp1134.i.i = icmp sgt i32 %57, 0
  br i1 %cmp1134.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.__validate_layout.exit.thread121.i_crit_edge

if.end.i.i.__validate_layout.exit.thread121.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_layout.exit.thread121.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %m_data_pg_pools.i.i = getelementptr inbounds %struct.ceph_mdsmap, ptr %55, i32 0, i32 12
  %58 = ptrtoint ptr %m_data_pg_pools.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %m_data_pg_pools.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.035.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %57
  br i1 %exitcond.not.i.i, label %for.cond.i.i.__validate_layout.exit.thread121.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.__validate_layout.exit.thread121.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_layout.exit.thread121.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.035.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %59, i32 %i.035.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %storemerge104.i)
  %cmp14.i.i = icmp eq i64 %61, %storemerge104.i
  br i1 %cmp14.i.i, label %if.end49.i, label %for.cond.i.i

__validate_layout.exit.thread121.i:               ; preds = %for.cond.i.i.__validate_layout.exit.thread121.i_crit_edge, %if.end.i.i.__validate_layout.exit.thread121.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i) #8
  br label %ceph_ioctl_set_layout.exit

if.end49.i:                                       ; preds = %for.body.i.i
  call void @mutex_unlock(ptr noundef %mutex.i.i) #8
  %call50.i = call ptr @ceph_mdsc_create_request(ptr noundef %30, i32 noundef 4359, i32 noundef 2) #8
  %cmp.i.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then52.i, label %if.end54.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %call50.i to i32
  br label %ceph_ioctl_set_layout.exit

if.end54.i:                                       ; preds = %if.end49.i
  %r_inode.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 5
  %63 = ptrtoint ptr %r_inode.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %24, ptr %r_inode.i, align 8
  call void @ihold(ptr noundef %24) #8
  %r_num_caps.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 40
  %64 = ptrtoint ptr %r_num_caps.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %r_num_caps.i, align 4
  %r_inode_drop.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 25
  %65 = ptrtoint ptr %r_inode_drop.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 768, ptr %r_inode_drop.i, align 4
  %66 = ptrtoint ptr %l.i27 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %l.i27, align 8
  %conv56.i = trunc i64 %67 to i32
  %68 = call i32 @llvm.bswap.i32(i32 %conv56.i) #8
  %r_args.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 17
  %69 = ptrtoint ptr %r_args.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %r_args.i, align 8
  %70 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %31, align 8
  %conv58.i = trunc i64 %71 to i32
  %72 = call i32 @llvm.bswap.i32(i32 %conv58.i) #8
  %fl_stripe_count.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 17, i32 0, i32 1
  %73 = ptrtoint ptr %fl_stripe_count.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %fl_stripe_count.i, align 4
  %74 = ptrtoint ptr %32 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %32, align 8
  %conv62.i = trunc i64 %75 to i32
  %76 = call i32 @llvm.bswap.i32(i32 %conv62.i) #8
  %fl_object_size.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 17, i32 0, i32 2
  %77 = ptrtoint ptr %fl_object_size.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %fl_object_size.i, align 8
  %78 = ptrtoint ptr %33 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %33, align 8
  %conv66.i = trunc i64 %79 to i32
  %80 = call i32 @llvm.bswap.i32(i32 %conv66.i) #8
  %fl_pg_pool.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 17, i32 0, i32 6
  %81 = ptrtoint ptr %fl_pg_pool.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %fl_pg_pool.i, align 8
  %call69.i = call i32 @ceph_mdsc_do_request(ptr noundef %30, ptr noundef null, ptr noundef %call50.i) #8
  %r_kref.i.i = getelementptr inbounds %struct.ceph_mds_request, ptr %call50.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @llvm.prefetch.p0(ptr %r_kref.i.i, i32 1, i32 3, i32 1) #8
  %82 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i.i, ptr %r_kref.i.i, i32 1, ptr elementtype(i32) %r_kref.i.i) #8, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i107.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.ceph_ioctl_set_layout.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !51

if.end5.i.i.i.i.i.i.ceph_ioctl_set_layout.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %r_kref.i.i, i32 noundef 3) #8
  br label %ceph_ioctl_set_layout.exit

if.then.i.i107.i:                                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i.i) #8
  br label %ceph_ioctl_set_layout.exit

ceph_ioctl_set_layout.exit:                       ; preds = %if.then.i.i107.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.ceph_ioctl_set_layout.exit_crit_edge, %if.then52.i, %__validate_layout.exit.thread121.i, %land.lhs.true.i.i.ceph_ioctl_set_layout.exit_crit_edge, %if.end45.i.ceph_ioctl_set_layout.exit_crit_edge, %if.end.i.ceph_ioctl_set_layout.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i36 = phi i32 [ %62, %if.then52.i ], [ %call.i.i34, %if.end.i.ceph_ioctl_set_layout.exit_crit_edge ], [ -22, %__validate_layout.exit.thread121.i ], [ %call69.i, %if.end5.i.i.i.i.i.i.ceph_ioctl_set_layout.exit_crit_edge ], [ %call69.i, %if.then10.i.i.i.i.i.i ], [ %call69.i, %if.then.i.i107.i ], [ -14, %if.then11.i.i.i ], [ -22, %land.lhs.true.i.i.ceph_ioctl_set_layout.exit_crit_edge ], [ -22, %if.end45.i.ceph_ioctl_set_layout.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %l.i27) #8
  br label %return

sw.bb7:                                           ; preds = %do.end
  %83 = inttoptr i32 %arg to ptr
  %f_inode.i.i38 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %84 = ptrtoint ptr %f_inode.i.i38 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %f_inode.i.i38, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %l.i37) #8
  %86 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i37, i32 0, i32 1
  %87 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i37, i32 0, i32 2
  %88 = getelementptr inbounds %struct.ceph_ioctl_layout, ptr %l.i37, i32 0, i32 3
  %i_sb.i39 = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 8
  %89 = call ptr @memset(ptr %l.i37, i32 255, i32 40)
  %90 = ptrtoint ptr %i_sb.i39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i39, align 4
  %s_fs_info.i.i40 = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 33
  %92 = ptrtoint ptr %s_fs_info.i.i40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %s_fs_info.i.i40, align 16
  %mdsc2.i41 = getelementptr inbounds %struct.ceph_fs_client, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %mdsc2.i41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mdsc2.i41, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #8
  %call.i.i.i42 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i42, label %sw.bb7.if.then11.i.i.i56_crit_edge, label %land.lhs.true.i.i.i45

sw.bb7.if.then11.i.i.i56_crit_edge:               ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i56

land.lhs.true.i.i.i45:                            ; preds = %sw.bb7
  %96 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %83, i32 40, i32 -1226833920) #11, !srcloc !50
  %asmresult.i.i.i43 = extractvalue { i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i43)
  %cmp.i6.i.i44 = icmp eq i32 %asmresult.i.i.i43, 0
  br i1 %cmp.i6.i.i44, label %if.end.i.i.i53, label %land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge, !prof !51

land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge: ; preds = %land.lhs.true.i.i.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i56

if.end.i.i.i53:                                   ; preds = %land.lhs.true.i.i.i45
  %call.i.i.i.i46 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %l.i37, i32 noundef 40) #8
  %97 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i.i47 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i.i.i.i.i47 to ptr
  %cpu_domain.i.i.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 4
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i48) #4, !srcloc !52
  %and.i.i.i.i.i49 = and i32 %99, -13
  %or.i.i.i.i.i50 = or i32 %and.i.i.i.i.i49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i50) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i.i51 = call i32 @arm_copy_from_user(ptr noundef nonnull %l.i37, ptr noundef %83, i32 noundef 40) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i51)
  %tobool4.not.i.i.i52 = icmp eq i32 %call1.i.i.i.i51, 0
  br i1 %tobool4.not.i.i.i52, label %if.end.i59, label %if.end.i.i.i53.if.then11.i.i.i56_crit_edge, !prof !51

if.end.i.i.i53.if.then11.i.i.i56_crit_edge:       ; preds = %if.end.i.i.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i56

if.then11.i.i.i56:                                ; preds = %if.end.i.i.i53.if.then11.i.i.i56_crit_edge, %land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge, %sw.bb7.if.then11.i.i.i56_crit_edge
  %res.0.i.i46.i = phi i32 [ %call1.i.i.i.i51, %if.end.i.i.i53.if.then11.i.i.i56_crit_edge ], [ 40, %sw.bb7.if.then11.i.i.i56_crit_edge ], [ 40, %land.lhs.true.i.i.i45.if.then11.i.i.i56_crit_edge ]
  %sub.i.i.i54 = sub i32 40, %res.0.i.i46.i
  %add.ptr.i.i.i55 = getelementptr i8, ptr %l.i37, i32 %sub.i.i.i54
  %100 = call ptr @memset(ptr %add.ptr.i.i.i55, i32 0, i32 %res.0.i.i46.i)
  br label %ceph_ioctl_set_layout_policy.exit

if.end.i59:                                       ; preds = %if.end.i.i.i53
  %101 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %87, align 8
  %and.i.i57 = and i64 %102, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i57)
  %tobool.not.i.i58 = icmp eq i64 %and.i.i57, 0
  br i1 %tobool.not.i.i58, label %lor.lhs.false.i.i, label %if.end.i59.ceph_ioctl_set_layout_policy.exit_crit_edge

if.end.i59.ceph_ioctl_set_layout_policy.exit_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout_policy.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i59
  %103 = ptrtoint ptr %l.i37 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %l.i37, align 8
  %and1.i.i60 = and i64 %104, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i60)
  %tobool2.not.i.i61 = icmp eq i64 %and1.i.i60, 0
  br i1 %tobool2.not.i.i61, label %lor.lhs.false3.i.i64, label %lor.lhs.false.i.i.ceph_ioctl_set_layout_policy.exit_crit_edge

lor.lhs.false.i.i.ceph_ioctl_set_layout_policy.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout_policy.exit

lor.lhs.false3.i.i64:                             ; preds = %lor.lhs.false.i.i
  %conv.i.i62 = trunc i64 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i62)
  %cmp.not.i.i63 = icmp eq i32 %conv.i.i62, 0
  br i1 %cmp.not.i.i63, label %lor.lhs.false3.i.i64.if.end.i.i73_crit_edge, label %land.lhs.true.i.i68

lor.lhs.false3.i.i64.if.end.i.i73_crit_edge:      ; preds = %lor.lhs.false3.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i73

land.lhs.true.i.i68:                              ; preds = %lor.lhs.false3.i.i64
  %conv7.i.i65 = trunc i64 %102 to i32
  %rem.i.i66 = urem i32 %conv7.i.i65, %conv.i.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i66)
  %tobool10.not.i.i67 = icmp eq i32 %rem.i.i66, 0
  br i1 %tobool10.not.i.i67, label %land.lhs.true.i.i68.if.end.i.i73_crit_edge, label %land.lhs.true.i.i68.ceph_ioctl_set_layout_policy.exit_crit_edge

land.lhs.true.i.i68.ceph_ioctl_set_layout_policy.exit_crit_edge: ; preds = %land.lhs.true.i.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout_policy.exit

land.lhs.true.i.i68.if.end.i.i73_crit_edge:       ; preds = %land.lhs.true.i.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i73

if.end.i.i73:                                     ; preds = %land.lhs.true.i.i68.if.end.i.i73_crit_edge, %lor.lhs.false3.i.i64.if.end.i.i73_crit_edge
  %mutex.i.i69 = getelementptr inbounds %struct.ceph_mds_client, ptr %95, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i.i69, i32 noundef 0) #8
  %mdsmap.i.i70 = getelementptr inbounds %struct.ceph_mds_client, ptr %95, i32 0, i32 2
  %105 = ptrtoint ptr %mdsmap.i.i70 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mdsmap.i.i70, align 8
  %m_num_data_pg_pools.i.i71 = getelementptr inbounds %struct.ceph_mdsmap, ptr %106, i32 0, i32 11
  %107 = ptrtoint ptr %m_num_data_pg_pools.i.i71 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %m_num_data_pg_pools.i.i71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp1134.i.i72 = icmp sgt i32 %108, 0
  br i1 %cmp1134.i.i72, label %for.body.lr.ph.i.i75, label %if.end.i.i73.__validate_layout.exit.thread52.i_crit_edge

if.end.i.i73.__validate_layout.exit.thread52.i_crit_edge: ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_layout.exit.thread52.i

for.body.lr.ph.i.i75:                             ; preds = %if.end.i.i73
  %m_data_pg_pools.i.i74 = getelementptr inbounds %struct.ceph_mdsmap, ptr %106, i32 0, i32 12
  %109 = ptrtoint ptr %m_data_pg_pools.i.i74 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %m_data_pg_pools.i.i74, align 4
  %111 = ptrtoint ptr %88 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %88, align 8
  br label %for.body.i.i82

for.cond.i.i78:                                   ; preds = %for.body.i.i82
  %inc.i.i76 = add nuw nsw i32 %i.035.i.i79, 1
  %exitcond.not.i.i77 = icmp eq i32 %inc.i.i76, %108
  br i1 %exitcond.not.i.i77, label %for.cond.i.i78.__validate_layout.exit.thread52.i_crit_edge, label %for.cond.i.i78.for.body.i.i82_crit_edge

for.cond.i.i78.for.body.i.i82_crit_edge:          ; preds = %for.cond.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i82

for.cond.i.i78.__validate_layout.exit.thread52.i_crit_edge: ; preds = %for.cond.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %__validate_layout.exit.thread52.i

for.body.i.i82:                                   ; preds = %for.cond.i.i78.for.body.i.i82_crit_edge, %for.body.lr.ph.i.i75
  %i.035.i.i79 = phi i32 [ 0, %for.body.lr.ph.i.i75 ], [ %inc.i.i76, %for.cond.i.i78.for.body.i.i82_crit_edge ]
  %arrayidx.i.i80 = getelementptr i64, ptr %110, i32 %i.035.i.i79
  %113 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx.i.i80, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %112)
  %cmp14.i.i81 = icmp eq i64 %114, %112
  br i1 %cmp14.i.i81, label %if.end7.i, label %for.cond.i.i78

__validate_layout.exit.thread52.i:                ; preds = %for.cond.i.i78.__validate_layout.exit.thread52.i_crit_edge, %if.end.i.i73.__validate_layout.exit.thread52.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i69) #8
  br label %ceph_ioctl_set_layout_policy.exit

if.end7.i:                                        ; preds = %for.body.i.i82
  call void @mutex_unlock(ptr noundef %mutex.i.i69) #8
  %call8.i = call ptr @ceph_mdsc_create_request(ptr noundef %95, i32 noundef 4362, i32 noundef 2) #8
  %cmp.i.i83 = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i83, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %call8.i to i32
  br label %ceph_ioctl_set_layout_policy.exit

if.end12.i:                                       ; preds = %if.end7.i
  %r_inode.i84 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 5
  %116 = ptrtoint ptr %r_inode.i84 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %85, ptr %r_inode.i84, align 8
  call void @ihold(ptr noundef %85) #8
  %r_num_caps.i85 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 40
  %117 = ptrtoint ptr %r_num_caps.i85 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %r_num_caps.i85, align 4
  %118 = ptrtoint ptr %l.i37 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %l.i37, align 8
  %conv.i86 = trunc i64 %119 to i32
  %120 = call i32 @llvm.bswap.i32(i32 %conv.i86) #8
  %r_args.i87 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 17
  %121 = ptrtoint ptr %r_args.i87 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %r_args.i87, align 8
  %122 = ptrtoint ptr %86 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %86, align 8
  %conv13.i = trunc i64 %123 to i32
  %124 = call i32 @llvm.bswap.i32(i32 %conv13.i) #8
  %fl_stripe_count.i88 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 17, i32 0, i32 1
  %125 = ptrtoint ptr %fl_stripe_count.i88 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %fl_stripe_count.i88, align 4
  %126 = ptrtoint ptr %87 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %87, align 8
  %conv16.i = trunc i64 %127 to i32
  %128 = call i32 @llvm.bswap.i32(i32 %conv16.i) #8
  %fl_object_size.i89 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 17, i32 0, i32 2
  %129 = ptrtoint ptr %fl_object_size.i89 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %fl_object_size.i89, align 8
  %130 = ptrtoint ptr %88 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %88, align 8
  %conv19.i = trunc i64 %131 to i32
  %132 = call i32 @llvm.bswap.i32(i32 %conv19.i) #8
  %fl_pg_pool.i90 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 17, i32 0, i32 6
  %133 = ptrtoint ptr %fl_pg_pool.i90 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %fl_pg_pool.i90, align 8
  %call22.i = call i32 @ceph_mdsc_do_request(ptr noundef %95, ptr noundef %85, ptr noundef %call8.i) #8
  %r_kref.i.i91 = getelementptr inbounds %struct.ceph_mds_request, ptr %call8.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i92 = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref.i.i91, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @llvm.prefetch.p0(ptr %r_kref.i.i91, i32 1, i32 3, i32 1) #8
  %134 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref.i.i91, ptr %r_kref.i.i91, i32 1, ptr elementtype(i32) %r_kref.i.i91) #8, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i.i93 = extractvalue { i32, i32, i32 } %134, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i93)
  %cmp.i.i.i.i.i.i94 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i93, 1
  br i1 %cmp.i.i.i.i.i.i94, label %if.then.i.i43.i, label %if.end5.i.i.i.i.i.i96

if.end5.i.i.i.i.i.i96:                            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i93)
  %.not.i.i.i.i.i.i95 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i93, 0
  br i1 %.not.i.i.i.i.i.i95, label %if.end5.i.i.i.i.i.i96.ceph_ioctl_set_layout_policy.exit_crit_edge, label %if.then10.i.i.i.i.i.i97, !prof !51

if.end5.i.i.i.i.i.i96.ceph_ioctl_set_layout_policy.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_set_layout_policy.exit

if.then10.i.i.i.i.i.i97:                          ; preds = %if.end5.i.i.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %r_kref.i.i91, i32 noundef 3) #8
  br label %ceph_ioctl_set_layout_policy.exit

if.then.i.i43.i:                                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  call void @ceph_mdsc_release_request(ptr noundef %r_kref.i.i91) #8
  br label %ceph_ioctl_set_layout_policy.exit

ceph_ioctl_set_layout_policy.exit:                ; preds = %if.then.i.i43.i, %if.then10.i.i.i.i.i.i97, %if.end5.i.i.i.i.i.i96.ceph_ioctl_set_layout_policy.exit_crit_edge, %if.then10.i, %__validate_layout.exit.thread52.i, %land.lhs.true.i.i68.ceph_ioctl_set_layout_policy.exit_crit_edge, %lor.lhs.false.i.i.ceph_ioctl_set_layout_policy.exit_crit_edge, %if.end.i59.ceph_ioctl_set_layout_policy.exit_crit_edge, %if.then11.i.i.i56
  %retval.0.i98 = phi i32 [ %115, %if.then10.i ], [ -22, %__validate_layout.exit.thread52.i ], [ %call22.i, %if.end5.i.i.i.i.i.i96.ceph_ioctl_set_layout_policy.exit_crit_edge ], [ %call22.i, %if.then10.i.i.i.i.i.i97 ], [ %call22.i, %if.then.i.i43.i ], [ -14, %if.then11.i.i.i56 ], [ -22, %land.lhs.true.i.i68.ceph_ioctl_set_layout_policy.exit_crit_edge ], [ -22, %lor.lhs.false.i.i.ceph_ioctl_set_layout_policy.exit_crit_edge ], [ -22, %if.end.i59.ceph_ioctl_set_layout_policy.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %l.i37) #8
  br label %return

sw.bb9:                                           ; preds = %do.end
  %135 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %dl.i) #8
  %136 = call ptr @memset(ptr %dl.i, i32 255, i32 248)
  %f_inode.i.i99 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %137 = ptrtoint ptr %f_inode.i.i99 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %f_inode.i.i99, align 8
  %add.ptr.i.i = getelementptr i8, ptr %138, i32 -952
  %i_sb.i100 = getelementptr inbounds %struct.inode, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %i_sb.i100 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %i_sb.i100, align 4
  %s_fs_info.i.i101 = getelementptr inbounds %struct.super_block, ptr %140, i32 0, i32 33
  %141 = ptrtoint ptr %s_fs_info.i.i101 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %s_fs_info.i.i101, align 16
  %client.i = getelementptr inbounds %struct.ceph_fs_client, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %client.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %oloc.i) #8
  %145 = call ptr @memset(ptr %oloc.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %oid.i) #8
  %146 = getelementptr inbounds i8, ptr %oid.i, i32 4
  %147 = call ptr @memset(ptr %146, i32 0, i32 56)
  %148 = ptrtoint ptr %oid.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %146, ptr %oid.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xlen.i) #8
  %149 = ptrtoint ptr %xlen.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %xlen.i, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pgid.i) #8
  %150 = call ptr @memset(ptr %pgid.i, i32 255, i32 16)
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #8
  %call.i.i.i102 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i102, label %sw.bb9.if.then11.i.i.i116_crit_edge, label %land.lhs.true.i.i.i105

sw.bb9.if.then11.i.i.i116_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i116

land.lhs.true.i.i.i105:                           ; preds = %sw.bb9
  %151 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %135, i32 248, i32 -1226833920) #11
  %asmresult.i.i.i103 = extractvalue { i32, i32 } %151, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i103)
  %cmp.i6.i.i104 = icmp eq i32 %asmresult.i.i.i103, 0
  br i1 %cmp.i6.i.i104, label %if.end.i.i.i113, label %land.lhs.true.i.i.i105.if.then11.i.i.i116_crit_edge, !prof !51

land.lhs.true.i.i.i105.if.then11.i.i.i116_crit_edge: ; preds = %land.lhs.true.i.i.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i116

if.end.i.i.i113:                                  ; preds = %land.lhs.true.i.i.i105
  %call.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dl.i, i32 noundef 248) #8
  %152 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i.i107 = and i32 %152, -16384
  %153 = inttoptr i32 %and.i.i.i.i.i.i.i107 to ptr
  %cpu_domain.i.i.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %153, i32 0, i32 4
  %154 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i108) #4, !srcloc !52
  %and.i.i.i.i.i109 = and i32 %154, -13
  %or.i.i.i.i.i110 = or i32 %and.i.i.i.i.i109, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i110) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i.i111 = call i32 @arm_copy_from_user(ptr noundef nonnull %dl.i, ptr noundef %135, i32 noundef 248) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #8, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i111)
  %tobool4.not.i.i.i112 = icmp eq i32 %call1.i.i.i.i111, 0
  br i1 %tobool4.not.i.i.i112, label %if.end.i122, label %if.end.i.i.i113.if.then11.i.i.i116_crit_edge, !prof !51

if.end.i.i.i113.if.then11.i.i.i116_crit_edge:     ; preds = %if.end.i.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i116

if.then11.i.i.i116:                               ; preds = %if.end.i.i.i113.if.then11.i.i.i116_crit_edge, %land.lhs.true.i.i.i105.if.then11.i.i.i116_crit_edge, %sw.bb9.if.then11.i.i.i116_crit_edge
  %res.0.i.i396.i = phi i32 [ %call1.i.i.i.i111, %if.end.i.i.i113.if.then11.i.i.i116_crit_edge ], [ 248, %sw.bb9.if.then11.i.i.i116_crit_edge ], [ 248, %land.lhs.true.i.i.i105.if.then11.i.i.i116_crit_edge ]
  %sub.i.i.i114 = sub i32 248, %res.0.i.i396.i
  %add.ptr.i.i.i115 = getelementptr i8, ptr %dl.i, i32 %sub.i.i.i114
  %155 = call ptr @memset(ptr %add.ptr.i.i.i115, i32 0, i32 %res.0.i.i396.i)
  br label %ceph_ioctl_get_dataloc.exit

if.end.i122:                                      ; preds = %if.end.i.i.i113
  %lock.i = getelementptr inbounds %struct.ceph_client, ptr %144, i32 0, i32 12, i32 2
  call void @down_read(ptr noundef %lock.i) #8
  %i_layout.i117 = getelementptr i8, ptr %138, i32 -824
  %156 = ptrtoint ptr %dl.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %dl.i, align 8
  %object_no.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 2
  %object_offset.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 1
  call void @ceph_calc_file_object_mapping(ptr noundef %i_layout.i117, i64 noundef %157, i64 noundef 1, ptr noundef %object_no.i, ptr noundef %object_offset.i, ptr noundef nonnull %xlen.i) #8
  %158 = ptrtoint ptr %object_offset.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %object_offset.i, align 8
  %160 = ptrtoint ptr %dl.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %dl.i, align 8
  %sub.i = sub i64 %161, %159
  store i64 %sub.i, ptr %dl.i, align 8
  %object_size.i118 = getelementptr i8, ptr %138, i32 -816
  %162 = ptrtoint ptr %object_size.i118 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %object_size.i118, align 8
  %conv.i119 = zext i32 %163 to i64
  %object_size9.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 3
  %164 = ptrtoint ptr %object_size9.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %conv.i119, ptr %object_size9.i, align 8
  %165 = ptrtoint ptr %i_layout.i117 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %i_layout.i117, align 8
  %conv11.i = zext i32 %166 to i64
  %block_size.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 6
  %167 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %conv11.i, ptr %block_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %159)
  %cmp186.i = icmp ult i64 %159, 4294967296
  br i1 %cmp186.i, label %if.then190.i, label %if.else196.i, !prof !51

if.then190.i:                                     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  %conv191.i = trunc i64 %159 to i32
  %rem192.i = urem i32 %conv191.i, %166
  br label %if.end200.i

if.else196.i:                                     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  %168 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %166, i64 %159) #11, !srcloc !59
  %asmresult.i378.i = extractvalue { i64, i64 } %168, 0
  %shr.i.i = lshr i64 %asmresult.i378.i, 32
  %conv.i.i124 = trunc i64 %shr.i.i to i32
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.else196.i, %if.then190.i
  %__rem.0.i = phi i32 [ %rem192.i, %if.then190.i ], [ %conv.i.i124, %if.else196.i ]
  %conv202.i = zext i32 %__rem.0.i to i64
  %block_offset.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 5
  %169 = ptrtoint ptr %block_offset.i to i32
  call void @__asan_store8_noabort(i32 %169)
  store i64 %conv202.i, ptr %block_offset.i, align 8
  %object_name.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 4
  %170 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %add.ptr.i.i, align 8
  %172 = ptrtoint ptr %object_no.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %object_no.i, align 8
  %call206.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %object_name.i, i32 noundef 64, ptr noundef nonnull @.str.9, i64 noundef %171, i64 noundef %173) #8
  %pool_id.i125 = getelementptr i8, ptr %138, i32 -808
  %174 = ptrtoint ptr %pool_id.i125 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %pool_id.i125, align 8
  %176 = ptrtoint ptr %oloc.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %oloc.i, align 8
  %177 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %180, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i126 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i126, label %if.end200.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i128

if.end200.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i128:                             ; preds = %if.end200.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i127 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i127, label %land.lhs.true.i.i128.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i128.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i128
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 696, ptr noundef nonnull @.str.13) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i128.rcu_read_lock.exit.i_crit_edge, %if.end200.i.rcu_read_lock.exit.i_crit_edge
  %pool_ns.i = getelementptr i8, ptr %138, i32 -800
  br label %for.cond.i

for.cond.i:                                       ; preds = %kref_get_unless_zero.exit.i.for.cond.i_crit_edge, %rcu_read_lock.exit.i
  %181 = ptrtoint ptr %pool_ns.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load volatile ptr, ptr %pool_ns.i, align 8
  %call211.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211.i)
  %tobool212.not.i = icmp eq i32 %call211.i, 0
  br i1 %tobool212.not.i, label %land.lhs.true213.i, label %for.cond.i.do.end221.i_crit_edge

for.cond.i.do.end221.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end221.i

land.lhs.true213.i:                               ; preds = %for.cond.i
  %call214.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214.i)
  %tobool215.not.i = icmp eq i32 %call214.i, 0
  br i1 %tobool215.not.i, label %land.lhs.true213.i.do.end221.i_crit_edge, label %land.lhs.true216.i

land.lhs.true213.i.do.end221.i_crit_edge:         ; preds = %land.lhs.true213.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end221.i

land.lhs.true216.i:                               ; preds = %land.lhs.true213.i
  %.b364.i = load i1, ptr @ceph_ioctl_get_dataloc.__warned, align 1
  br i1 %.b364.i, label %land.lhs.true216.i.do.end221.i_crit_edge, label %if.then218.i

land.lhs.true216.i.do.end221.i_crit_edge:         ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end221.i

if.then218.i:                                     ; preds = %land.lhs.true216.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ceph_ioctl_get_dataloc.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 212, ptr noundef nonnull @.str.10) #8
  br label %do.end221.i

do.end221.i:                                      ; preds = %if.then218.i, %land.lhs.true216.i.do.end221.i_crit_edge, %land.lhs.true213.i.do.end221.i_crit_edge, %for.cond.i.do.end221.i_crit_edge
  %tobool223.not.i = icmp eq ptr %182, null
  br i1 %tobool223.not.i, label %do.end221.i.for.end.i_crit_edge, label %lor.lhs.false.i

do.end221.i.for.end.i_crit_edge:                  ; preds = %do.end221.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %do.end221.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  %call.i.i.i.i.i.i.i.i129 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %182, i32 noundef 4) #8
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %182, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %lor.lhs.false.i
  %185 = phi i32 [ %184, %lor.lhs.false.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %186 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i.i.i.i.i = icmp eq i32 %185, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %185, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %182, i32 noundef 4) #8
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #8
  %187 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %182, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %189 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %182, ptr nonnull %182, i32 %188, i32 %add.i.i.i.i.i, ptr nonnull elementtype(i32) %182) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %189, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %189, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %188
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !51

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %190 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %191, 1
  %192 = or i32 %add5.i.i.i.i.i, %191
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %192)
  %.not.i.i.i.i.i = icmp sgt i32 %192, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !51

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef nonnull %182, i32 noundef 0) #8
  %193 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %194 = phi i32 [ %191, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i = icmp eq i32 %194, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.cond.i_crit_edge, label %kref_get_unless_zero.exit.i.for.end.i_crit_edge

kref_get_unless_zero.exit.i.for.end.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

kref_get_unless_zero.exit.i.for.cond.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.end.i:                                        ; preds = %kref_get_unless_zero.exit.i.for.end.i_crit_edge, %do.end221.i.for.end.i_crit_edge
  %call.i381.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i381.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i384.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i384.i:                             ; preds = %for.end.i
  %call1.i382.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i382.i)
  %tobool.not.i383.i = icmp eq i32 %call1.i382.i, 0
  br i1 %tobool.not.i383.i, label %land.lhs.true.i384.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i386.i

land.lhs.true.i384.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i384.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i386.i:                            ; preds = %land.lhs.true.i384.i
  %.b4.i385.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i385.i, label %land.lhs.true2.i386.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i387.i

land.lhs.true2.i386.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i386.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i387.i:                                   ; preds = %land.lhs.true2.i386.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 724, ptr noundef nonnull @.str.14) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i387.i, %land.lhs.true2.i386.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i384.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !62
  %195 = call i32 @llvm.read_register.i32(metadata !38) #8
  %and.i.i.i.i.i388.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i.i.i.i.i388.i to ptr
  %preempt_count.i.i.i.i389.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %preempt_count.i.i.i.i389.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %preempt_count.i.i.i.i389.i, align 4
  %sub.i.i.i.i = add i32 %198, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i389.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %pool_ns229.i = getelementptr inbounds %struct.ceph_object_locator, ptr %oloc.i, i32 0, i32 1
  %199 = ptrtoint ptr %pool_ns229.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %182, ptr %pool_ns229.i, align 8
  call void (ptr, ptr, ...) @ceph_oid_printf(ptr noundef nonnull %oid.i, ptr noundef nonnull @.str.11, ptr noundef %object_name.i) #8
  %osdmap.i = getelementptr inbounds %struct.ceph_client, ptr %144, i32 0, i32 12, i32 1
  %200 = ptrtoint ptr %osdmap.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %osdmap.i, align 4
  %call232.i = call i32 @ceph_object_locator_to_pg(ptr noundef %201, ptr noundef nonnull %oid.i, ptr noundef nonnull %oloc.i, ptr noundef nonnull %pgid.i) #8
  call void @ceph_oloc_destroy(ptr noundef nonnull %oloc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232.i)
  %cmp233.i = icmp slt i32 %call232.i, 0
  br i1 %cmp233.i, label %if.then235.i, label %if.end237.i

if.then235.i:                                     ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %lock.i) #8
  br label %ceph_ioctl_get_dataloc.exit

if.end237.i:                                      ; preds = %rcu_read_unlock.exit.i
  %202 = ptrtoint ptr %osdmap.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %osdmap.i, align 4
  %call239.i = call i32 @ceph_pg_to_acting_primary(ptr noundef %203, ptr noundef nonnull %pgid.i) #8
  %conv240.i = sext i32 %call239.i to i64
  %osd.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 7
  %204 = ptrtoint ptr %osd.i to i32
  call void @__asan_store8_noabort(i32 %204)
  store i64 %conv240.i, ptr %osd.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call239.i)
  %cmp242.i = icmp sgt i32 %call239.i, -1
  br i1 %cmp242.i, label %if.then244.i, label %if.else252.i

if.then244.i:                                     ; preds = %if.end237.i
  %205 = ptrtoint ptr %osdmap.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %osdmap.i, align 4
  %max_osd.i.i = getelementptr inbounds %struct.ceph_osdmap, ptr %206, i32 0, i32 5
  %207 = ptrtoint ptr %max_osd.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %max_osd.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %call239.i)
  %cmp.not.i390.i = icmp ugt i32 %208, %call239.i
  br i1 %cmp.not.i390.i, label %ceph_osd_addr.exit.i, label %if.then244.i.if.end254.i_crit_edge

if.then244.i.if.end254.i_crit_edge:               ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254.i

ceph_osd_addr.exit.i:                             ; preds = %if.then244.i
  %osd_addr.i.i = getelementptr inbounds %struct.ceph_osdmap, ptr %206, i32 0, i32 8
  %209 = ptrtoint ptr %osd_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %osd_addr.i.i, align 4
  %arrayidx.i.i130 = getelementptr %struct.ceph_entity_addr, ptr %210, i32 %call239.i
  %tobool249.not.i = icmp eq ptr %arrayidx.i.i130, null
  br i1 %tobool249.not.i, label %ceph_osd_addr.exit.i.if.end254.i_crit_edge, label %if.then250.i

ceph_osd_addr.exit.i.if.end254.i_crit_edge:       ; preds = %ceph_osd_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254.i

if.then250.i:                                     ; preds = %ceph_osd_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %osd_addr.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 8
  %in_addr.i = getelementptr %struct.ceph_entity_addr, ptr %210, i32 %call239.i, i32 2
  %211 = call ptr @memcpy(ptr %osd_addr.i, ptr %in_addr.i, i32 128)
  br label %if.end254.i

if.else252.i:                                     ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #10
  %osd_addr253.i = getelementptr inbounds %struct.ceph_ioctl_dataloc, ptr %dl.i, i32 0, i32 8
  %212 = call ptr @memset(ptr %osd_addr253.i, i32 0, i32 128)
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.else252.i, %if.then250.i, %ceph_osd_addr.exit.i.if.end254.i_crit_edge, %if.then244.i.if.end254.i_crit_edge
  call void @up_read(ptr noundef %lock.i) #8
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #8
  %call.i.i370.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i370.i, label %if.end254.i.ceph_ioctl_get_dataloc.exit_crit_edge, label %copy_to_user.exit.i132

if.end254.i.ceph_ioctl_get_dataloc.exit_crit_edge: ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ceph_ioctl_get_dataloc.exit

copy_to_user.exit.i132:                           ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i375.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %dl.i, i32 noundef 248) #8
  %call.i12.i.i.i131 = call i32 @arm_copy_to_user(ptr noundef %135, ptr noundef nonnull %dl.i, i32 noundef 248) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i131)
  %tobool257.not.i = icmp eq i32 %call.i12.i.i.i131, 0
  %spec.select.i = select i1 %tobool257.not.i, i32 0, i32 -14
  br label %ceph_ioctl_get_dataloc.exit

ceph_ioctl_get_dataloc.exit:                      ; preds = %copy_to_user.exit.i132, %if.end254.i.ceph_ioctl_get_dataloc.exit_crit_edge, %if.then235.i, %if.then11.i.i.i116
  %retval.0.i133 = phi i32 [ %call232.i, %if.then235.i ], [ -14, %if.then11.i.i.i116 ], [ -14, %if.end254.i.ceph_ioctl_get_dataloc.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i132 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pgid.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xlen.i) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %oid.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %oloc.i) #8
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %dl.i) #8
  br label %return

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ceph_ioctl_lazyio(ptr noundef %file)
  br label %return

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %213 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %private_data.i, align 4
  %flags.i = getelementptr inbounds %struct.ceph_file_info, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %flags.i, align 2
  %217 = or i16 %216, 1
  store i16 %217, ptr %flags.i, align 2
  br label %return

return:                                           ; preds = %sw.bb13, %sw.bb11, %ceph_ioctl_get_dataloc.exit, %ceph_ioctl_set_layout_policy.exit, %ceph_ioctl_set_layout.exit, %ceph_ioctl_get_layout.exit, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ %retval.0.i133, %ceph_ioctl_get_dataloc.exit ], [ %retval.0.i98, %ceph_ioctl_set_layout_policy.exit ], [ %retval.0.i36, %ceph_ioctl_set_layout.exit ], [ %retval.0.i26, %ceph_ioctl_get_layout.exit ], [ -25, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_ioctl_lazyio(ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %6 = and i16 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %if.then, label %do.body16

if.then:                                          ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %mdsc3 = getelementptr inbounds %struct.ceph_fs_client, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %mdsc3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdsc3, align 8
  %i_ceph_lock = getelementptr i8, ptr %3, i32 -936
  tail call void @_raw_spin_lock(ptr noundef %i_ceph_lock) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %15 = or i16 %14, 4
  store i16 %15, ptr %1, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 -368
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %arrayidx, align 4
  %18 = load i16, ptr %1, align 4
  %conv9 = sext i16 %18 to i32
  tail call void @__ceph_touch_fmode(ptr noundef %add.ptr.i, ptr noundef %12, i32 noundef %conv9) #8
  tail call void @_raw_spin_unlock(ptr noundef %i_ceph_lock) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_ioctl_lazyio.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_ioctl_lazyio, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !48

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_ioctl_lazyio.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 254, ptr noundef %file) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.then
  tail call void @ceph_check_caps(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef null) #8
  br label %if.end33

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_ioctl_lazyio.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_ioctl_lazyio, %if.then28)) #8
          to label %if.end33 [label %if.then28], !srcloc !48

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_ioctl_lazyio.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.19, i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.2, i32 0, i32 8), i32 noundef 258, ptr noundef %file) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %do.body16, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ceph_do_getattr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_mdsc_create_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_mdsc_do_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_mdsc_release_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_calc_file_object_mapping(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oid_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_object_locator_to_pg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_oloc_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_pg_to_acting_primary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ceph_touch_fmode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_check_caps(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ceph/ioctl.c", i32 273, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ceph_ioctl.__UNIQUE_ID_ddebug318, !1, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/ceph/ioctl.c", i32 208, i32 51}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../fs/ceph/ioctl.c", i32 212, i32 17}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ceph/ioctl.c", i32 213, i32 24}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ceph/ioctl.c", i32 254, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ceph_ioctl_lazyio.__UNIQUE_ID_ddebug316, !30, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!33 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ceph/ioctl.c", i32 258, i32 3}
!36 = !{ptr @ceph_ioctl_lazyio.__UNIQUE_ID_ddebug317, !35, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!37 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!38 = !{!"sp"}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148770629, i64 2148770634, i64 2148770647, i64 2148770691, i64 2148770725, i64 2148770746}
!49 = !{i64 2152296279, i64 2152296304}
!50 = !{i64 2152295598, i64 2152295623}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 4803661}
!53 = !{i64 4803858}
!54 = !{i64 2152289091}
!55 = !{i64 2148378345}
!56 = !{i64 2148292809, i64 2148292841, i64 2148292870, i64 2148292904, i64 2148292935, i64 2148292958}
!57 = !{i64 2149300814}
!58 = !{!"auto-init"}
!59 = !{i64 2148679348, i64 2148679628, i64 2148679962, i64 2148680296}
!60 = !{i64 2149351304}
!61 = !{i64 772550, i64 772574, i64 772595, i64 772612, i64 772629}
!62 = !{i64 2149351570}
