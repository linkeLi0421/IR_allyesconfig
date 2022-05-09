; ModuleID = '/llk/IR_all_yes/drivers/block/drbd/drbd_debugfs.c_pt.bc'
source_filename = "../drivers/block/drbd/drbd_debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drbd_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, %struct.list_head, %struct.list_head, %struct.res_opts, %struct.mutex, %struct.mutex, %struct.spinlock, i8, i32, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.res_opts = type { [32 x i8], i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drbd_connection = type { %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.idr, i32, %struct.mutex, i32, i32, ptr, %struct.wait_queue_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, %struct.drbd_socket, %struct.drbd_socket, i32, i32, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.blk_plug, %struct.drbd_thread, %struct.drbd_thread, %struct.drbd_thread, ptr, ptr, ptr, ptr, %struct.drbd_work_queue, i32, i32, [16 x %struct.drbd_thread_timing_details], [16 x %struct.drbd_thread_timing_details], %struct.anon.195 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.189 }
%union.anon.189 = type { ptr, [124 x i8] }
%struct.drbd_socket = type { %struct.mutex, ptr, ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.drbd_thread = type { %struct.spinlock, ptr, %struct.completion, i32, ptr, ptr, ptr, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drbd_work_queue = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.drbd_thread_timing_details = type { i32, ptr, ptr, i32, i32 }
%struct.anon.195 = type { i32, i8, i32, i32 }
%struct.drbd_device = type { ptr, %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.kref, i32, ptr, i64, ptr, ptr, i32, %struct.drbd_work, %struct.drbd_work, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %union.drbd_state, %union.drbd_dev_state, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.rb_root, %struct.rb_root, [2 x %struct.list_head], [2 x %struct.list_head], i8, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i64, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.drbd_md_io, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.wait_queue_head, %struct.atomic_t, i32, %struct.spinlock, i32, %struct.bm_io_work, i64, %struct.mutex, ptr, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, %struct.submit_worker }
%struct.drbd_work = type { %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.drbd_state = type { %struct.anon.193 }
%struct.anon.193 = type { i32 }
%union.drbd_dev_state = type { %struct.anon.194 }
%struct.anon.194 = type { i32 }
%struct.rb_root = type { ptr }
%struct.drbd_md_io = type { ptr, i32, i32, ptr, %struct.atomic_t, i32, i32 }
%struct.bm_io_work = type { %struct.drbd_work, ptr, i32, ptr, ptr }
%struct.submit_worker = type { ptr, %struct.work_struct, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.drbd_peer_device = type { %struct.list_head, ptr, ptr, %struct.work_struct, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.162, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.163, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.164, ptr, %struct.address_space, %struct.list_head, %union.anon.165, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.162 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.163 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.164 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.165 = type { ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.168, %struct.list_head, %struct.list_head, %union.anon.169 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.166 }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.spinlock, i32 }
%union.anon.168 = type { %struct.list_head }
%union.anon.169 = type { %struct.hlist_node }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.tcp_sock = type { %struct.inet_connection_sock, i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.tcp_rack, i16, i8, i8, i32, [3 x i32], i16, i8, i8, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, %struct.minmax, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, %struct.tcp_options_received, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrtimer, %struct.hrtimer, ptr, ptr, %struct.rb_root, ptr, [1 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], [4 x %struct.tcp_sack_block], ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i16, i32, i32, %struct.anon.201, %struct.anon.202, %struct.anon.203, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.199, %struct.anon.200, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.79, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.119, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.120, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.71, [0 x i32], %union.anon.72, i16, i16, %union.anon.73, %struct.refcount_struct, [0 x i32], %union.anon.74 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.hlist_node }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.79 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.119 = type { ptr }
%union.anon.120 = type { ptr }
%struct.sk_buff_head = type { %union.anon.77, i32, %struct.spinlock }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.125 }
%union.anon.125 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.199 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.200 = type { i32, i32, i32, i32 }
%struct.tcp_rack = type { i64, i32, i32, i32, i8, i8 }
%struct.minmax = type { [3 x %struct.minmax_sample] }
%struct.minmax_sample = type { i32, i32 }
%struct.tcp_options_received = type { i32, i32, i32, i32, [3 x i8], i8, i16, i16 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.anon.201 = type { i32, i32, i64 }
%struct.anon.202 = type { i32, i32, i64 }
%struct.anon.203 = type { i32, i32 }
%struct.drbd_request = type { %struct.drbd_work, ptr, ptr, %struct.drbd_interval, i32, %struct.list_head, ptr, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.kref, i32 }
%struct.drbd_interval = type { %struct.rb_node, i64, i32, i64, i8 }
%struct.drbd_peer_request = type { %struct.drbd_work, ptr, ptr, ptr, %struct.atomic_t, %struct.drbd_interval, i32, i32, %union.anon.207 }
%union.anon.207 = type { i64 }
%struct.drbd_backing_dev = type { ptr, ptr, %struct.drbd_md, ptr, i64 }
%struct.drbd_md = type { i64, i64, %struct.spinlock, [4 x i64], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@drbd_debugfs_resources = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"volumes\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"connections\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in_flight_summary\00", [46 x i8] zeroinitializer }, align 32
@in_flight_summary_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @in_flight_summary_open, ptr null, ptr @in_flight_summary_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"peer\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"callback_history\00", [47 x i8] zeroinitializer }, align 32
@connection_callback_history_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @callback_history_open, ptr null, ptr @callback_history_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"oldest_requests\00", [16 x i8] zeroinitializer }, align 32
@connection_oldest_requests_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @connection_oldest_requests_open, ptr null, ptr @connection_oldest_requests_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@drbd_debugfs_minors = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"../resources/%s/volumes/%u\00", [37 x i8] zeroinitializer }, align 32
@device_oldest_requests_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_oldest_requests_open, ptr null, ptr @device_oldest_requests_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"act_log_extents\00", [16 x i8] zeroinitializer }, align 32
@device_act_log_extents_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_act_log_extents_open, ptr null, ptr @device_act_log_extents_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resync_extents\00", [17 x i8] zeroinitializer }, align 32
@device_resync_extents_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_resync_extents_open, ptr null, ptr @device_resync_extents_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data_gen_id\00", [20 x i8] zeroinitializer }, align 32
@device_data_gen_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_data_gen_id_open, ptr null, ptr @device_data_gen_id_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ed_gen_id\00", [22 x i8] zeroinitializer }, align 32
@device_ed_gen_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_ed_gen_id_open, ptr null, ptr @device_ed_gen_id_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@drbd_debugfs_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 813, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create debugfs entries\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drbd_debugfs_device_add\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/block/drbd/drbd_debugfs.c\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@drbd_debugfs_device_add._entry_ptr = internal global ptr @drbd_debugfs_device_add._entry, section ".printk_index", align 4
@drbd_debugfs_version = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@drbd_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"drbd\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@drbd_version_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @drbd_version_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resources\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"minors\00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v: %u\0A\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"oldest bitmap IO\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meta data IO\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"socket buffer stats\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unread receive buffer: %u Byte\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unacked send buffer: %u Byte\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"oldest peer requests\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"application requests waiting for activity log\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"oldest application requests\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"generated in %d ms\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"minor\09vnr\09rw\09age\09#in-flight\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%u\09%u\09%c\09%u\09%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"minor\09vnr\09start\09submit\09intent\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u\09%u\09%d\09\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-\09\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\09\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"minor\09vnr\09sector\09size\09rw\09age\09flags\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%u\09%u\09-\09-\09F\09%u\09flush\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u\09%u\09\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%llu\09%u\09%c\09%u\09\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"submitted\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"preparing\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"application\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"in-AL\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set-in-sync\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trim\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zero-out\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write-same\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"minor\09vnr\09age\09#waiting\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\09\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"n\09device\09vnr\09epoch\09sector\09size\09rw\09start\09in AL\09submit\09sent\09acked\09done\09state\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"0x%x\09%llu\09%u\09%s\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"W\00", [30 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\09%d\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09-\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\090x%08x\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09master: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"completed\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09local:\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"postponed\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"suspended\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aborted\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" -\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\09net:\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queued\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sent\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"done\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sis\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" :\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"barr\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"n\09age\09callsite\09fn\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"worker\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"receiver\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%u\09%d\09%s:%u\09%ps\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"epoch\09sector\09size\09rw\09start\09in AL\09submit\09sent\09acked\09done\09state\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@put_ldev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.91, i32 2099, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ASSERT( i >= 0 ) in %s:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"put_ldev\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/drbd/drbd_int.h\00", [34 x i8] zeroinitializer }, align 32
@put_ldev._entry_ptr = internal global ptr @put_ldev._entry, section ".printk_index", align 4
@.str.92 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs_left flags\00", [18 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%5d %s %s %s\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NO_WRITES\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"---------\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOCKED\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"------\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PRIORITY\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"--------\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%016llX\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"# %s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VERSION=%s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.4.11\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"API_VERSION=%u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PRO_VERSION_MIN=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PRO_VERSION_MAX=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.107 = private unnamed_addr constant [23 x i8] c"drbd_debugfs_resources\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 22, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 472, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 475, i32 30 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 478, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [23 x i8] c"in_flight_summary_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 457, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 628, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 631, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant [33 x i8] c"connection_callback_history_fops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 565, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 636, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant [32 x i8] c"connection_oldest_requests_fops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 612, i32 37 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"drbd_debugfs_minors\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 23, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 782, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 787, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"device_oldest_requests_fops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 765, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 804, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [28 x i8] c"device_act_log_extents_fops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 766, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 805, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"device_resync_extents_fops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 767, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 806, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [24 x i8] c"device_data_gen_id_fops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 768, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 807, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [22 x i8] c"device_ed_gen_id_fops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 769, i32 1 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 813, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"drbd_debugfs_version\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 21, i32 23 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"drbd_debugfs_root\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 20, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 880, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 883, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"drbd_version_fops\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 858, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 886, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 889, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 373, i32 16 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 375, i32 14 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 379, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 383, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 390, i32 17 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 393, i32 17 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 398, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 402, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 406, i32 14 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 412, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 221, i32 14 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 208, i32 17 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 133, i32 14 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 143, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 147, i32 17 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 149, i32 19 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 150, i32 18 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 695, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 723, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 274, i32 14 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 281, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 257, i32 18 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 259, i32 17 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 235, i32 54 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 235, i32 67 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 236, i32 56 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 236, i32 71 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 237, i32 62 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 238, i32 57 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 239, i32 58 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 240, i32 47 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 241, i32 50 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 242, i32 53 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 161, i32 14 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 182, i32 19 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 185, i32 18 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 309, i32 14 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 102, i32 16 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 105, i32 20 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 105, i32 26 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 108, i32 16 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 30, i32 17 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 58, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 59, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 59, i32 50 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 59, i32 62 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 62, i32 14 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 64, i32 52 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 65, i32 58 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 69, i32 56 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 70, i32 51 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 72, i32 15 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 75, i32 16 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 78, i32 53 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 79, i32 51 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 80, i32 51 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 81, i32 50 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 86, i32 16 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 88, i32 58 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 90, i32 55 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 93, i32 16 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 545, i32 14 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 546, i32 30 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 547, i32 30 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 511, i32 16 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 701, i32 14 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 684, i32 43 }
@___asan_gen_.416 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [33 x i8] c"../drivers/block/drbd/drbd_int.h\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 2099, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 669, i32 42 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 653, i32 22 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 654, i32 44 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 654, i32 58 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 655, i32 41 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 655, i32 52 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 656, i32 43 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 656, i32 56 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 730, i32 17 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 845, i32 16 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 846, i32 16 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 846, i32 32 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 847, i32 16 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 848, i32 16 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.471 = private constant [37 x i8] c"../drivers/block/drbd/drbd_debugfs.c\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 849, i32 16 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @drbd_debugfs_device_add._entry, ptr @drbd_debugfs_device_add._entry_ptr, ptr @put_ldev._entry, ptr @put_ldev._entry_ptr, ptr @drbd_debugfs_resources, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @in_flight_summary_fops, ptr @.str.3, ptr @.str.4, ptr @connection_callback_history_fops, ptr @.str.5, ptr @connection_oldest_requests_fops, ptr @drbd_debugfs_minors, ptr @.str.6, ptr @.str.7, ptr @device_oldest_requests_fops, ptr @.str.8, ptr @device_act_log_extents_fops, ptr @.str.9, ptr @device_resync_extents_fops, ptr @.str.10, ptr @device_data_gen_id_fops, ptr @.str.11, ptr @device_ed_gen_id_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @drbd_debugfs_version, ptr @drbd_debugfs_root, ptr @.str.17, ptr @.str.18, ptr @drbd_version_fops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_debugfs_resources to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_flight_summary_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connection_callback_history_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connection_oldest_requests_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_debugfs_minors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_oldest_requests_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_act_log_extents_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_resync_extents_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_data_gen_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_ed_gen_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_debugfs_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_debugfs_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drbd_version_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_ldev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_resource_add(ptr noundef %resource) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %2 = load ptr, ptr @drbd_debugfs_resources, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %1, ptr noundef %2) #9
  %debugfs_res = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 1
  %3 = ptrtoint ptr %debugfs_res to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %debugfs_res, align 4
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %call) #9
  %debugfs_res_volumes = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 2
  %4 = ptrtoint ptr %debugfs_res_volumes to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %debugfs_res_volumes, align 4
  %5 = ptrtoint ptr %debugfs_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %debugfs_res, align 4
  %call4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef %6) #9
  %debugfs_res_connections = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 3
  %7 = ptrtoint ptr %debugfs_res_connections to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %debugfs_res_connections, align 4
  %8 = ptrtoint ptr %debugfs_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %debugfs_res, align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 288, ptr noundef %9, ptr noundef %resource, ptr noundef nonnull @in_flight_summary_fops) #9
  %debugfs_res_in_flight_summary = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 4
  %10 = ptrtoint ptr %debugfs_res_in_flight_summary to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %debugfs_res_in_flight_summary, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_resource_cleanup(ptr nocapture noundef %resource) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_res_in_flight_summary = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_res_in_flight_summary to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_res_in_flight_summary, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %debugfs_res_in_flight_summary to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_res_in_flight_summary, align 4
  %debugfs_res_connections = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 3
  %3 = ptrtoint ptr %debugfs_res_connections to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_res_connections, align 4
  tail call void @debugfs_remove(ptr noundef %4) #9
  %5 = ptrtoint ptr %debugfs_res_connections to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %debugfs_res_connections, align 4
  %debugfs_res_volumes = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 2
  %6 = ptrtoint ptr %debugfs_res_volumes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_res_volumes, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  %8 = ptrtoint ptr %debugfs_res_volumes to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_res_volumes, align 4
  %debugfs_res = getelementptr inbounds %struct.drbd_resource, ptr %resource, i32 0, i32 1
  %9 = ptrtoint ptr %debugfs_res to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_res, align 4
  tail call void @debugfs_remove(ptr noundef %10) #9
  %11 = ptrtoint ptr %debugfs_res to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %debugfs_res, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_connection_add(ptr noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 1
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %debugfs_res_connections = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %debugfs_res_connections to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_res_connections, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.3, ptr noundef %3) #9
  %debugfs_conn = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 2
  %4 = ptrtoint ptr %debugfs_conn to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %debugfs_conn, align 4
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 288, ptr noundef %call, ptr noundef %connection, ptr noundef nonnull @connection_callback_history_fops) #9
  %debugfs_conn_callback_history = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 3
  %5 = ptrtoint ptr %debugfs_conn_callback_history to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %debugfs_conn_callback_history, align 4
  %6 = ptrtoint ptr %debugfs_conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_conn, align 4
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 288, ptr noundef %7, ptr noundef %connection, ptr noundef nonnull @connection_oldest_requests_fops) #9
  %debugfs_conn_oldest_requests = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 4
  %8 = ptrtoint ptr %debugfs_conn_oldest_requests to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %debugfs_conn_oldest_requests, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_connection_cleanup(ptr nocapture noundef %connection) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_conn_callback_history = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 3
  %0 = ptrtoint ptr %debugfs_conn_callback_history to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_conn_callback_history, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %debugfs_conn_callback_history to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_conn_callback_history, align 4
  %debugfs_conn_oldest_requests = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 4
  %3 = ptrtoint ptr %debugfs_conn_oldest_requests to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_conn_oldest_requests, align 4
  tail call void @debugfs_remove(ptr noundef %4) #9
  %5 = ptrtoint ptr %debugfs_conn_oldest_requests to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %debugfs_conn_oldest_requests, align 4
  %debugfs_conn = getelementptr inbounds %struct.drbd_connection, ptr %connection, i32 0, i32 2
  %6 = ptrtoint ptr %debugfs_conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_conn, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  %8 = ptrtoint ptr %debugfs_conn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_conn, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_device_add(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  %minor_buf = alloca [8 x i8], align 8
  %vnr_buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %debugfs_res_volumes = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %debugfs_res_volumes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_res_volumes, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minor_buf) #9
  %4 = ptrtoint ptr %minor_buf to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %minor_buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vnr_buf) #9
  %tobool.not = icmp eq ptr %3, null
  %5 = ptrtoint ptr %vnr_buf to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %vnr_buf, align 8
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr @drbd_debugfs_minors, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vnr = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 11
  %7 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vnr, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vnr_buf, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %8)
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %vnr_buf, ptr noundef nonnull %3) #9
  %debugfs_vol = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 5
  %9 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %debugfs_vol, align 4
  %minor = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 12
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 8
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %minor_buf, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %11)
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vnr, align 4
  %call8 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %15, i32 noundef %17) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %fail, label %if.end11

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = load ptr, ptr @drbd_debugfs_minors, align 4
  %call13 = call ptr @debugfs_create_symlink(ptr noundef nonnull %minor_buf, ptr noundef %18, ptr noundef nonnull %call8) #9
  %debugfs_minor = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 4
  %19 = ptrtoint ptr %debugfs_minor to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call13, ptr %debugfs_minor, align 8
  call void @kfree(ptr noundef nonnull %call8) #9
  %20 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_vol, align 4
  %call15 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 288, ptr noundef %21, ptr noundef %device, ptr noundef nonnull @device_oldest_requests_fops) #9
  %debugfs_vol_oldest_requests = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 6
  %22 = ptrtoint ptr %debugfs_vol_oldest_requests to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call15, ptr %debugfs_vol_oldest_requests, align 8
  %23 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs_vol, align 4
  %call18 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 288, ptr noundef %24, ptr noundef %device, ptr noundef nonnull @device_act_log_extents_fops) #9
  %debugfs_vol_act_log_extents = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 7
  %25 = ptrtoint ptr %debugfs_vol_act_log_extents to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call18, ptr %debugfs_vol_act_log_extents, align 4
  %26 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %debugfs_vol, align 4
  %call23 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 288, ptr noundef %27, ptr noundef %device, ptr noundef nonnull @device_resync_extents_fops) #9
  %debugfs_vol_resync_extents = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 8
  %28 = ptrtoint ptr %debugfs_vol_resync_extents to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call23, ptr %debugfs_vol_resync_extents, align 8
  %29 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debugfs_vol, align 4
  %call28 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.10, i16 noundef zeroext 288, ptr noundef %30, ptr noundef %device, ptr noundef nonnull @device_data_gen_id_fops) #9
  %debugfs_vol_data_gen_id = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 9
  %31 = ptrtoint ptr %debugfs_vol_data_gen_id to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call28, ptr %debugfs_vol_data_gen_id, align 4
  %32 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %debugfs_vol, align 4
  %call33 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 288, ptr noundef %33, ptr noundef %device, ptr noundef nonnull @device_ed_gen_id_fops) #9
  %debugfs_vol_ed_gen_id = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 10
  %34 = ptrtoint ptr %debugfs_vol_ed_gen_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call33, ptr %debugfs_vol_ed_gen_id, align 8
  br label %cleanup

fail:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %debugfs_minor.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 4
  %35 = ptrtoint ptr %debugfs_minor.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %debugfs_minor.i, align 4
  call void @debugfs_remove(ptr noundef %36) #9
  %37 = ptrtoint ptr %debugfs_minor.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %debugfs_minor.i, align 4
  %debugfs_vol_oldest_requests.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 6
  %38 = ptrtoint ptr %debugfs_vol_oldest_requests.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %debugfs_vol_oldest_requests.i, align 4
  call void @debugfs_remove(ptr noundef %39) #9
  %40 = ptrtoint ptr %debugfs_vol_oldest_requests.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %debugfs_vol_oldest_requests.i, align 4
  %debugfs_vol_act_log_extents.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 7
  %41 = ptrtoint ptr %debugfs_vol_act_log_extents.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %debugfs_vol_act_log_extents.i, align 4
  call void @debugfs_remove(ptr noundef %42) #9
  %43 = ptrtoint ptr %debugfs_vol_act_log_extents.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %debugfs_vol_act_log_extents.i, align 4
  %debugfs_vol_resync_extents.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 8
  %44 = ptrtoint ptr %debugfs_vol_resync_extents.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %debugfs_vol_resync_extents.i, align 4
  call void @debugfs_remove(ptr noundef %45) #9
  %46 = ptrtoint ptr %debugfs_vol_resync_extents.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %debugfs_vol_resync_extents.i, align 4
  %debugfs_vol_data_gen_id.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 9
  %47 = ptrtoint ptr %debugfs_vol_data_gen_id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %debugfs_vol_data_gen_id.i, align 4
  call void @debugfs_remove(ptr noundef %48) #9
  %49 = ptrtoint ptr %debugfs_vol_data_gen_id.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %debugfs_vol_data_gen_id.i, align 4
  %debugfs_vol_ed_gen_id.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 10
  %50 = ptrtoint ptr %debugfs_vol_ed_gen_id.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %debugfs_vol_ed_gen_id.i, align 4
  call void @debugfs_remove(ptr noundef %51) #9
  %52 = ptrtoint ptr %debugfs_vol_ed_gen_id.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %debugfs_vol_ed_gen_id.i, align 4
  %53 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %debugfs_vol, align 4
  call void @debugfs_remove(ptr noundef %54) #9
  %55 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %debugfs_vol, align 4
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %56 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %59, i32 0, i32 10
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %bd_device, ptr noundef nonnull @.str.12) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end11, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vnr_buf) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minor_buf) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_device_cleanup(ptr nocapture noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_minor = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_minor, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %debugfs_minor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_minor, align 4
  %debugfs_vol_oldest_requests = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 6
  %3 = ptrtoint ptr %debugfs_vol_oldest_requests to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_vol_oldest_requests, align 4
  tail call void @debugfs_remove(ptr noundef %4) #9
  %5 = ptrtoint ptr %debugfs_vol_oldest_requests to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %debugfs_vol_oldest_requests, align 4
  %debugfs_vol_act_log_extents = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 7
  %6 = ptrtoint ptr %debugfs_vol_act_log_extents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_vol_act_log_extents, align 4
  tail call void @debugfs_remove(ptr noundef %7) #9
  %8 = ptrtoint ptr %debugfs_vol_act_log_extents to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_vol_act_log_extents, align 4
  %debugfs_vol_resync_extents = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 8
  %9 = ptrtoint ptr %debugfs_vol_resync_extents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_vol_resync_extents, align 4
  tail call void @debugfs_remove(ptr noundef %10) #9
  %11 = ptrtoint ptr %debugfs_vol_resync_extents to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %debugfs_vol_resync_extents, align 4
  %debugfs_vol_data_gen_id = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 9
  %12 = ptrtoint ptr %debugfs_vol_data_gen_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_vol_data_gen_id, align 4
  tail call void @debugfs_remove(ptr noundef %13) #9
  %14 = ptrtoint ptr %debugfs_vol_data_gen_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %debugfs_vol_data_gen_id, align 4
  %debugfs_vol_ed_gen_id = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 10
  %15 = ptrtoint ptr %debugfs_vol_ed_gen_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %debugfs_vol_ed_gen_id, align 4
  tail call void @debugfs_remove(ptr noundef %16) #9
  %17 = ptrtoint ptr %debugfs_vol_ed_gen_id to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %debugfs_vol_ed_gen_id, align 4
  %debugfs_vol = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 5
  %18 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs_vol, align 4
  tail call void @debugfs_remove(ptr noundef %19) #9
  %20 = ptrtoint ptr %debugfs_vol to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %debugfs_vol, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_peer_device_add(ptr nocapture noundef %peer_device) local_unnamed_addr #0 align 64 {
entry:
  %vnr_buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %connection = getelementptr inbounds %struct.drbd_peer_device, ptr %peer_device, i32 0, i32 2
  %0 = ptrtoint ptr %connection to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connection, align 4
  %debugfs_conn = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %debugfs_conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_conn, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vnr_buf) #9
  %device = getelementptr inbounds %struct.drbd_peer_device, ptr %peer_device, i32 0, i32 1
  %4 = ptrtoint ptr %vnr_buf to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %vnr_buf, align 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %vnr = getelementptr inbounds %struct.drbd_device, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vnr, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vnr_buf, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %8)
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %vnr_buf, ptr noundef %3) #9
  %debugfs_peer_dev = getelementptr inbounds %struct.drbd_peer_device, ptr %peer_device, i32 0, i32 4
  %9 = ptrtoint ptr %debugfs_peer_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %debugfs_peer_dev, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vnr_buf) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_peer_device_cleanup(ptr nocapture noundef %peer_device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_peer_dev = getelementptr inbounds %struct.drbd_peer_device, ptr %peer_device, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_peer_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_peer_dev, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  %2 = ptrtoint ptr %debugfs_peer_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_peer_dev, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @drbd_debugfs_resources, align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  store ptr null, ptr @drbd_debugfs_resources, align 4
  %1 = load ptr, ptr @drbd_debugfs_minors, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  store ptr null, ptr @drbd_debugfs_minors, align 4
  %2 = load ptr, ptr @drbd_debugfs_version, align 4
  tail call void @debugfs_remove(ptr noundef %2) #9
  store ptr null, ptr @drbd_debugfs_version, align 4
  %3 = load ptr, ptr @drbd_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %3) #9
  store ptr null, ptr @drbd_debugfs_root, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @drbd_debugfs_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.17, ptr noundef null) #9
  store ptr %call, ptr @drbd_debugfs_root, align 4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %call, ptr noundef null, ptr noundef nonnull @drbd_version_fops) #9
  store ptr %call1, ptr @drbd_debugfs_version, align 4
  %0 = load ptr, ptr @drbd_debugfs_root, align 4
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.19, ptr noundef %0) #9
  store ptr %call2, ptr @drbd_debugfs_resources, align 4
  %1 = load ptr, ptr @drbd_debugfs_root, align 4
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.20, ptr noundef %1) #9
  store ptr %call3, ptr @drbd_debugfs_minors, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_flight_summary_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 5
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @in_flight_summary_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_resource)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_flight_summary_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_resource(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef %show, ptr noundef %data, ptr noundef %kref, ptr nocapture noundef readonly %release) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #9
  %6 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %9, null
  br i1 %cmp.i.not.i, label %entry.if.end.thread_crit_edge, label %simple_positive.exit

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

simple_positive.exit:                             ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.if.end.thread_crit_edge, label %land.lhs.true

simple_positive.exit.if.end.thread_crit_edge:     ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

land.lhs.true:                                    ; preds = %simple_positive.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #9
  %12 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %14 = phi i32 [ %13, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %14, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %18 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %17, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #9, !srcloc !254
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %17
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !251

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %20, 1
  %21 = or i32 %add5.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end4.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #9
  %22 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %if.end

if.end.thread:                                    ; preds = %simple_positive.exit.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %23 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i2331 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i2331) #9
  br label %if.end14

if.end:                                           ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.if.end_crit_edge
  %25 = phi i32 [ %.pr, %if.then10.i.i.i.i ], [ %20, %if.end4.i.i.i.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i.i.not = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %26 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i23 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i23) #9
  br i1 %tobool12.i.i.i.i.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @single_open(ptr noundef %file, ptr noundef %show, ptr noundef %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end14_crit_edge, label %if.then11

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  %call.i.i.i.i.i.i24 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i25 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i25, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i25)
  %.not.i.i.i.i26 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i26, label %if.end5.i.i.i.i.if.end14_crit_edge, label %if.then10.i.i.i.i27, !prof !251

if.end5.i.i.i.i.if.end14_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10.i.i.i.i27:                              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %if.end14

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void %release(ptr noundef %kref) #9, !callees !253
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then10.i.i.i.i27, %if.end5.i.i.i.i.if.end14_crit_edge, %if.then8.if.end14_crit_edge, %if.end.if.end14_crit_edge, %if.end.thread
  %ret.1 = phi i32 [ -116, %if.end.if.end14_crit_edge ], [ 0, %if.then8.if.end14_crit_edge ], [ -116, %if.end.thread ], [ %call9, %if.end5.i.i.i.i.if.end14_crit_edge ], [ %call9, %if.then10.i.i.i.i27 ], [ %call9, %if.then.i ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_flight_summary_show(ptr noundef %m, ptr nocapture noundef readnone %pos) #0 align 64 {
entry:
  %i.i117 = alloca i32, align 4
  %i.i94 = alloca i32, align 4
  %i.i64 = alloca i32, align 4
  %tmp.i = alloca %struct.drbd_md_io, align 4
  %i.i = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %connections.i = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %connections.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %connections.i, align 4
  %cmp.not.i = icmp eq ptr %4, %connections.i
  %tobool.not162 = icmp eq ptr %4, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not162
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %4, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #9
  %5 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.lhs.false
  %7 = phi i32 [ %6, %lor.lhs.false ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %10, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #9, !srcloc !254
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !251

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #9
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.cleanup_crit_edge, label %if.end

kref_get_unless_zero.exit.cleanup_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %kref_get_unless_zero.exit
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.22) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.31) #9
  %17 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i61 = add i32 %20, 1
  store volatile i32 %add.i.i.i.i61, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %devices.i = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i.i, align 4
  %call13.i = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i) #9
  %cmp.not14.i = icmp eq ptr %call13.i, null
  br i1 %cmp.not14.i, label %rcu_read_lock.exit.i.for.end.i_crit_edge, label %rcu_read_lock.exit.i.for.body.i_crit_edge

rcu_read_lock.exit.i.for.body.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  br label %for.body.i

rcu_read_lock.exit.i.for.end.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %seq_print_device_bitmap_io.exit.i.for.body.i_crit_edge, %rcu_read_lock.exit.i.for.body.i_crit_edge
  %call15.i = phi ptr [ %call.i62, %seq_print_device_bitmap_io.exit.i.for.body.i_crit_edge ], [ %call13.i, %rcu_read_lock.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %call15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call15.i, align 8
  %req_lock.i.i = getelementptr inbounds %struct.drbd_resource, ptr %23, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock.i.i) #9
  %pending_bitmap_io.i.i = getelementptr inbounds %struct.drbd_device, ptr %call15.i, i32 0, i32 2
  %24 = ptrtoint ptr %pending_bitmap_io.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pending_bitmap_io.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %25, %pending_bitmap_io.i.i
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -4
  %tobool.not38.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i2.i = or i1 %cmp.not.i.i, %tobool.not38.i.i
  br i1 %tobool.not.i2.i, label %for.body.i.if.end9.thread.i.i_crit_edge, label %land.lhs.true.i3.i

for.body.i.if.end9.thread.i.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.thread.i.i

land.lhs.true.i3.i:                               ; preds = %for.body.i
  %done.i.i = getelementptr i8, ptr %25, i32 16
  %26 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %done.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool3.not.i.i, label %if.then13.i.i, label %land.lhs.true.i3.i.if.end9.thread.i.i_crit_edge

land.lhs.true.i3.i.if.end9.thread.i.i_crit_edge:  ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.thread.i.i

if.end9.thread.i.i:                               ; preds = %land.lhs.true.i3.i.if.end9.thread.i.i_crit_edge, %for.body.i.if.end9.thread.i.i_crit_edge
  %28 = ptrtoint ptr %call15.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call15.i, align 8
  %req_lock1137.i.i = getelementptr inbounds %struct.drbd_resource, ptr %29, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock1137.i.i) #9
  br label %seq_print_device_bitmap_io.exit.i

if.then13.i.i:                                    ; preds = %land.lhs.true.i3.i
  call void @__sanitizer_cov_trace_pc() #11
  %start_jif6.i.i = getelementptr i8, ptr %25, i32 8
  %30 = ptrtoint ptr %start_jif6.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_jif6.i.i, align 4
  %in_flight7.i.i = getelementptr i8, ptr %25, i32 12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %in_flight7.i.i, i32 noundef 4) #9
  %32 = ptrtoint ptr %in_flight7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %in_flight7.i.i, align 4
  %flags8.i.i = getelementptr i8, ptr %25, i32 20
  %34 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags8.i.i, align 4
  %phi.bo.i.i = and i32 %35, 8
  %36 = ptrtoint ptr %call15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call15.i, align 8
  %req_lock11.i.i = getelementptr inbounds %struct.drbd_resource, ptr %37, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock11.i.i) #9
  %minor.i.i = getelementptr inbounds %struct.drbd_device, ptr %call15.i, i32 0, i32 12
  %38 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %minor.i.i, align 8
  %vnr.i.i = getelementptr inbounds %struct.drbd_device, ptr %call15.i, i32 0, i32 11
  %40 = ptrtoint ptr %vnr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vnr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i.i)
  %tobool14.not.i.i = icmp eq i32 %phi.bo.i.i, 0
  %cond15.i.i = select i1 %tobool14.not.i.i, i32 87, i32 82
  %sub.i.i = sub i32 %2, %31
  %call16.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %39, i32 noundef %41, i32 noundef %cond15.i.i, i32 noundef %call16.i.i, i32 noundef %33) #9
  br label %seq_print_device_bitmap_io.exit.i

seq_print_device_bitmap_io.exit.i:                ; preds = %if.then13.i.i, %if.end9.thread.i.i
  %42 = ptrtoint ptr %i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i.i, align 4
  %add.i = add i32 %43, 1
  store i32 %add.i, ptr %i.i, align 4
  %call.i62 = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i) #9
  %cmp.not.i63 = icmp eq ptr %call.i62, null
  br i1 %cmp.not.i63, label %seq_print_device_bitmap_io.exit.i.for.end.i_crit_edge, label %seq_print_device_bitmap_io.exit.i.for.body.i_crit_edge

seq_print_device_bitmap_io.exit.i.for.body.i_crit_edge: ; preds = %seq_print_device_bitmap_io.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

seq_print_device_bitmap_io.exit.i.for.end.i_crit_edge: ; preds = %seq_print_device_bitmap_io.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %seq_print_device_bitmap_io.exit.i.for.end.i_crit_edge, %rcu_read_lock.exit.i.for.end.i_crit_edge
  %call.i4.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i4.i, label %for.end.i.seq_print_resource_pending_bitmap_io.exit_crit_edge, label %land.lhs.true.i7.i

for.end.i.seq_print_resource_pending_bitmap_io.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_bitmap_io.exit

land.lhs.true.i7.i:                               ; preds = %for.end.i
  %call1.i5.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.seq_print_resource_pending_bitmap_io.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.seq_print_resource_pending_bitmap_io.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_bitmap_io.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.seq_print_resource_pending_bitmap_io.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.seq_print_resource_pending_bitmap_io.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_bitmap_io.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #9
  br label %seq_print_resource_pending_bitmap_io.exit

seq_print_resource_pending_bitmap_io.exit:        ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.seq_print_resource_pending_bitmap_io.exit_crit_edge, %land.lhs.true.i7.i.seq_print_resource_pending_bitmap_io.exit_crit_edge, %for.end.i.seq_print_resource_pending_bitmap_io.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %44 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i11.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i64) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.33) #9
  %48 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i.i65 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i.i66, align 4
  %add.i.i.i.i67 = add i32 %51, 1
  store volatile i32 %add.i.i.i.i67, ptr %preempt_count.i.i.i.i.i66, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i68 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i68, label %seq_print_resource_pending_bitmap_io.exit.rcu_read_lock.exit.i76_crit_edge, label %land.lhs.true.i.i71

seq_print_resource_pending_bitmap_io.exit.rcu_read_lock.exit.i76_crit_edge: ; preds = %seq_print_resource_pending_bitmap_io.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i76

land.lhs.true.i.i71:                              ; preds = %seq_print_resource_pending_bitmap_io.exit
  %call1.i.i69 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %call1.i.i69, 0
  br i1 %tobool.not.i.i70, label %land.lhs.true.i.i71.rcu_read_lock.exit.i76_crit_edge, label %land.lhs.true2.i.i73

land.lhs.true.i.i71.rcu_read_lock.exit.i76_crit_edge: ; preds = %land.lhs.true.i.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i76

land.lhs.true2.i.i73:                             ; preds = %land.lhs.true.i.i71
  %.b4.i.i72 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i72, label %land.lhs.true2.i.i73.rcu_read_lock.exit.i76_crit_edge, label %if.then.i.i74

land.lhs.true2.i.i73.rcu_read_lock.exit.i76_crit_edge: ; preds = %land.lhs.true2.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i76

if.then.i.i74:                                    ; preds = %land.lhs.true2.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_lock.exit.i76

rcu_read_lock.exit.i76:                           ; preds = %if.then.i.i74, %land.lhs.true2.i.i73.rcu_read_lock.exit.i76_crit_edge, %land.lhs.true.i.i71.rcu_read_lock.exit.i76_crit_edge, %seq_print_resource_pending_bitmap_io.exit.rcu_read_lock.exit.i76_crit_edge
  %52 = ptrtoint ptr %i.i64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %i.i64, align 4
  %call27.i = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i64) #9
  %cmp.not28.i = icmp eq ptr %call27.i, null
  br i1 %cmp.not28.i, label %rcu_read_lock.exit.i76.for.end.i83_crit_edge, label %for.body.lr.ph.i

rcu_read_lock.exit.i76.for.end.i83_crit_edge:     ; preds = %rcu_read_lock.exit.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i83

for.body.lr.ph.i:                                 ; preds = %rcu_read_lock.exit.i76
  %53 = getelementptr inbounds %struct.drbd_md_io, ptr %tmp.i, i32 0, i32 1
  %54 = getelementptr inbounds %struct.drbd_md_io, ptr %tmp.i, i32 0, i32 2
  %55 = getelementptr inbounds %struct.drbd_md_io, ptr %tmp.i, i32 0, i32 3
  %56 = getelementptr inbounds %struct.drbd_md_io, ptr %tmp.i, i32 0, i32 4
  br label %for.body.i78

for.body.i78:                                     ; preds = %if.end10.i.for.body.i78_crit_edge, %for.body.lr.ph.i
  %call29.i = phi ptr [ %call27.i, %for.body.lr.ph.i ], [ %call.i81, %if.end10.i.for.body.i78_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tmp.i) #9
  %md_io.i = getelementptr inbounds %struct.drbd_device, ptr %call29.i, i32 0, i32 80
  %57 = call ptr @memcpy(ptr %tmp.i, ptr %md_io.i, i32 28)
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %56, i32 noundef 4) #9
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i77 = icmp eq i32 %59, 0
  br i1 %tobool.not.i77, label %for.body.i78.if.end10.i_crit_edge, label %if.then.i79

for.body.i78.if.end10.i_crit_edge:                ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i79:                                      ; preds = %for.body.i78
  %minor.i = getelementptr inbounds %struct.drbd_device, ptr %call29.i, i32 0, i32 12
  %60 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %minor.i, align 8
  %vnr.i = getelementptr inbounds %struct.drbd_device, ptr %call29.i, i32 0, i32 11
  %62 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vnr.i, align 4
  %64 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %53, align 4
  %sub.i = sub i32 %2, %65
  %call2.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.34, i32 noundef %61, i32 noundef %63, i32 noundef %call2.i) #9
  %66 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %54, align 4
  %68 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %53, align 4
  %sub4.i = sub i32 %67, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp5.i = icmp slt i32 %sub4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #11
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.35) #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i79
  call void @__sanitizer_cov_trace_pc() #11
  %sub8.i = sub i32 %2, %67
  %call9.i = call i32 @jiffies_to_msecs(i32 noundef %sub8.i) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %call9.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then6.i
  %70 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef %71) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %for.body.i78.if.end10.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tmp.i) #9
  %72 = ptrtoint ptr %i.i64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i.i64, align 4
  %add.i80 = add i32 %73, 1
  store i32 %add.i80, ptr %i.i64, align 4
  %call.i81 = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i64) #9
  %cmp.not.i82 = icmp eq ptr %call.i81, null
  br i1 %cmp.not.i82, label %if.end10.i.for.end.i83_crit_edge, label %if.end10.i.for.body.i78_crit_edge

if.end10.i.for.body.i78_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i78

if.end10.i.for.end.i83_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i83

for.end.i83:                                      ; preds = %if.end10.i.for.end.i83_crit_edge, %rcu_read_lock.exit.i76.for.end.i83_crit_edge
  %call.i18.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i18.i, label %for.end.i83.seq_print_resource_pending_meta_io.exit_crit_edge, label %land.lhs.true.i21.i

for.end.i83.seq_print_resource_pending_meta_io.exit_crit_edge: ; preds = %for.end.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_meta_io.exit

land.lhs.true.i21.i:                              ; preds = %for.end.i83
  %call1.i19.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool.not.i20.i, label %land.lhs.true.i21.i.seq_print_resource_pending_meta_io.exit_crit_edge, label %land.lhs.true2.i23.i

land.lhs.true.i21.i.seq_print_resource_pending_meta_io.exit_crit_edge: ; preds = %land.lhs.true.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_meta_io.exit

land.lhs.true2.i23.i:                             ; preds = %land.lhs.true.i21.i
  %.b4.i22.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i, label %land.lhs.true2.i23.i.seq_print_resource_pending_meta_io.exit_crit_edge, label %if.then.i24.i

land.lhs.true2.i23.i.seq_print_resource_pending_meta_io.exit_crit_edge: ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_meta_io.exit

if.then.i24.i:                                    ; preds = %land.lhs.true2.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #9
  br label %seq_print_resource_pending_meta_io.exit

seq_print_resource_pending_meta_io.exit:          ; preds = %if.then.i24.i, %land.lhs.true2.i23.i.seq_print_resource_pending_meta_io.exit_crit_edge, %land.lhs.true.i21.i.seq_print_resource_pending_meta_io.exit_crit_edge, %for.end.i83.seq_print_resource_pending_meta_io.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %74 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i25.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i.i.i25.i to ptr
  %preempt_count.i.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i.i.i26.i, align 4
  %sub.i.i.i.i84 = add i32 %77, -1
  store volatile i32 %sub.i.i.i.i84, ptr %preempt_count.i.i.i.i26.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i64) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.24) #9
  %78 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %81, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %seq_print_resource_pending_meta_io.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

seq_print_resource_pending_meta_io.exit.rcu_read_lock.exit_crit_edge: ; preds = %seq_print_resource_pending_meta_io.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %seq_print_resource_pending_meta_io.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %seq_print_resource_pending_meta_io.exit.rcu_read_lock.exit_crit_edge
  %socket = getelementptr inbounds %struct.drbd_connection, ptr %4, i32 0, i32 17, i32 1
  %82 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %socket, align 4
  %tobool3.not = icmp eq ptr %83, null
  br i1 %tobool3.not, label %rcu_read_lock.exit.if.end9_crit_edge, label %if.then4

rcu_read_lock.exit.if.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sk = getelementptr inbounds %struct.socket, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sk, align 16
  %rcv_nxt = getelementptr inbounds %struct.tcp_sock, ptr %85, i32 0, i32 7
  %86 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rcv_nxt, align 8
  %copied_seq = getelementptr inbounds %struct.tcp_sock, ptr %85, i32 0, i32 8
  %88 = ptrtoint ptr %copied_seq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %copied_seq, align 4
  %sub = sub i32 %87, %89
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %sub) #9
  %write_seq = getelementptr inbounds %struct.tcp_sock, ptr %85, i32 0, i32 80
  %90 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %write_seq, align 4
  %snd_una = getelementptr inbounds %struct.tcp_sock, ptr %85, i32 0, i32 16
  %92 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %snd_una, align 4
  %sub8 = sub i32 %91, %93
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %sub8) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %rcu_read_lock.exit.if.end9_crit_edge
  %call.i85 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i85, label %if.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i88

if.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i88:                                ; preds = %if.end9
  %call1.i86 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86)
  %tobool.not.i87 = icmp eq i32 %call1.i86, 0
  br i1 %tobool.not.i87, label %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i90

land.lhs.true.i88.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i90:                               ; preds = %land.lhs.true.i88
  %.b4.i89 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89, label %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, label %if.then.i91

land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i91:                                      ; preds = %land.lhs.true2.i90
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i91, %land.lhs.true2.i90.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i88.rcu_read_unlock.exit_crit_edge, %if.end9.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %94 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i92 = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i.i.i92 to ptr
  %preempt_count.i.i.i.i93 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %preempt_count.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %preempt_count.i.i.i.i93, align 4
  %sub.i.i.i = add i32 %97, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i93, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.27) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i94) #9
  %98 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i.i95 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i.i.i.i95 to ptr
  %preempt_count.i.i.i.i.i96 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i.i.i.i96, align 4
  %add.i.i.i.i97 = add i32 %101, 1
  store volatile i32 %add.i.i.i.i97, ptr %preempt_count.i.i.i.i.i96, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i98 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i98, label %rcu_read_unlock.exit.rcu_read_lock.exit.i106_crit_edge, label %land.lhs.true.i.i101

rcu_read_unlock.exit.rcu_read_lock.exit.i106_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i106

land.lhs.true.i.i101:                             ; preds = %rcu_read_unlock.exit
  %call1.i.i99 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i99)
  %tobool.not.i.i100 = icmp eq i32 %call1.i.i99, 0
  br i1 %tobool.not.i.i100, label %land.lhs.true.i.i101.rcu_read_lock.exit.i106_crit_edge, label %land.lhs.true2.i.i103

land.lhs.true.i.i101.rcu_read_lock.exit.i106_crit_edge: ; preds = %land.lhs.true.i.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i106

land.lhs.true2.i.i103:                            ; preds = %land.lhs.true.i.i101
  %.b4.i.i102 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i102, label %land.lhs.true2.i.i103.rcu_read_lock.exit.i106_crit_edge, label %if.then.i.i104

land.lhs.true2.i.i103.rcu_read_lock.exit.i106_crit_edge: ; preds = %land.lhs.true2.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i106

if.then.i.i104:                                   ; preds = %land.lhs.true2.i.i103
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_lock.exit.i106

rcu_read_lock.exit.i106:                          ; preds = %if.then.i.i104, %land.lhs.true2.i.i103.rcu_read_lock.exit.i106_crit_edge, %land.lhs.true.i.i101.rcu_read_lock.exit.i106_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit.i106_crit_edge
  %102 = ptrtoint ptr %i.i94 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %i.i94, align 4
  %call12.i = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i94) #9
  %cmp.not13.i = icmp eq ptr %call12.i, null
  br i1 %cmp.not13.i, label %rcu_read_lock.exit.i106.for.end.i115_crit_edge, label %rcu_read_lock.exit.i106.for.body.i108_crit_edge

rcu_read_lock.exit.i106.for.body.i108_crit_edge:  ; preds = %rcu_read_lock.exit.i106
  br label %for.body.i108

rcu_read_lock.exit.i106.for.end.i115_crit_edge:   ; preds = %rcu_read_lock.exit.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i115

for.body.i108:                                    ; preds = %seq_print_device_peer_requests.exit.i.for.body.i108_crit_edge, %rcu_read_lock.exit.i106.for.body.i108_crit_edge
  %call14.i = phi ptr [ %call.i113, %seq_print_device_peer_requests.exit.i.for.body.i108_crit_edge ], [ %call12.i, %rcu_read_lock.exit.i106.for.body.i108_crit_edge ]
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.41) #9
  %103 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %call14.i, align 8
  %req_lock.i.i107 = getelementptr inbounds %struct.drbd_resource, ptr %104, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock.i.i107) #9
  %active_ee.i.i = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 70
  call fastcc void @seq_print_peer_request(ptr noundef %m, ptr noundef nonnull %call14.i, ptr noundef %active_ee.i.i, i32 noundef %2) #9
  %read_ee.i.i = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 73
  call fastcc void @seq_print_peer_request(ptr noundef %m, ptr noundef nonnull %call14.i, ptr noundef %read_ee.i.i, i32 noundef %2) #9
  %sync_ee.i.i = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 71
  call fastcc void @seq_print_peer_request(ptr noundef %m, ptr noundef nonnull %call14.i, ptr noundef %sync_ee.i.i, i32 noundef %2) #9
  %105 = ptrtoint ptr %call14.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call14.i, align 8
  %req_lock2.i.i = getelementptr inbounds %struct.drbd_resource, ptr %106, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock2.i.i) #9
  %flags.i.i = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 14
  %107 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags.i.i, align 4
  %109 = and i32 %108, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i1.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i1.i, label %for.body.i108.seq_print_device_peer_requests.exit.i_crit_edge, label %if.then.i2.i

for.body.i108.seq_print_device_peer_requests.exit.i_crit_edge: ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_device_peer_requests.exit.i

if.then.i2.i:                                     ; preds = %for.body.i108
  call void @__sanitizer_cov_trace_pc() #11
  %minor.i.i109 = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 12
  %110 = ptrtoint ptr %minor.i.i109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %minor.i.i109, align 8
  %vnr.i.i110 = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 11
  %112 = ptrtoint ptr %vnr.i.i110 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vnr.i.i110, align 4
  %flush_jif.i.i = getelementptr inbounds %struct.drbd_device, ptr %call14.i, i32 0, i32 3
  %114 = ptrtoint ptr %flush_jif.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flush_jif.i.i, align 4
  %sub.i.i111 = sub i32 %2, %115
  %call3.i.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i.i111) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %111, i32 noundef %113, i32 noundef %call3.i.i) #9
  br label %seq_print_device_peer_requests.exit.i

seq_print_device_peer_requests.exit.i:            ; preds = %if.then.i2.i, %for.body.i108.seq_print_device_peer_requests.exit.i_crit_edge
  %116 = ptrtoint ptr %i.i94 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %i.i94, align 4
  %add.i112 = add i32 %117, 1
  store i32 %add.i112, ptr %i.i94, align 4
  %call.i113 = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i94) #9
  %cmp.not.i114 = icmp eq ptr %call.i113, null
  br i1 %cmp.not.i114, label %seq_print_device_peer_requests.exit.i.for.end.i115_crit_edge, label %seq_print_device_peer_requests.exit.i.for.body.i108_crit_edge

seq_print_device_peer_requests.exit.i.for.body.i108_crit_edge: ; preds = %seq_print_device_peer_requests.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i108

seq_print_device_peer_requests.exit.i.for.end.i115_crit_edge: ; preds = %seq_print_device_peer_requests.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i115

for.end.i115:                                     ; preds = %seq_print_device_peer_requests.exit.i.for.end.i115_crit_edge, %rcu_read_lock.exit.i106.for.end.i115_crit_edge
  %call.i3.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i3.i, label %for.end.i115.seq_print_resource_pending_peer_requests.exit_crit_edge, label %land.lhs.true.i6.i

for.end.i115.seq_print_resource_pending_peer_requests.exit_crit_edge: ; preds = %for.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_peer_requests.exit

land.lhs.true.i6.i:                               ; preds = %for.end.i115
  %call1.i4.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.seq_print_resource_pending_peer_requests.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.seq_print_resource_pending_peer_requests.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_peer_requests.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.seq_print_resource_pending_peer_requests.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.seq_print_resource_pending_peer_requests.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_pending_peer_requests.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #9
  br label %seq_print_resource_pending_peer_requests.exit

seq_print_resource_pending_peer_requests.exit:    ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.seq_print_resource_pending_peer_requests.exit_crit_edge, %land.lhs.true.i6.i.seq_print_resource_pending_peer_requests.exit_crit_edge, %for.end.i115.seq_print_resource_pending_peer_requests.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %118 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i10.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i116 = add i32 %121, -1
  store volatile i32 %sub.i.i.i.i116, ptr %preempt_count.i.i.i.i11.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i94) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.28) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.i117) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.55) #9
  %122 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i.i118 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i118 to ptr
  %preempt_count.i.i.i.i.i119 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %preempt_count.i.i.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %preempt_count.i.i.i.i.i119, align 4
  %add.i.i.i.i120 = add i32 %125, 1
  store volatile i32 %add.i.i.i.i120, ptr %preempt_count.i.i.i.i.i119, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !255
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i121 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i121, label %seq_print_resource_pending_peer_requests.exit.rcu_read_lock.exit.i129_crit_edge, label %land.lhs.true.i.i124

seq_print_resource_pending_peer_requests.exit.rcu_read_lock.exit.i129_crit_edge: ; preds = %seq_print_resource_pending_peer_requests.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i129

land.lhs.true.i.i124:                             ; preds = %seq_print_resource_pending_peer_requests.exit
  %call1.i.i122 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i122)
  %tobool.not.i.i123 = icmp eq i32 %call1.i.i122, 0
  br i1 %tobool.not.i.i123, label %land.lhs.true.i.i124.rcu_read_lock.exit.i129_crit_edge, label %land.lhs.true2.i.i126

land.lhs.true.i.i124.rcu_read_lock.exit.i129_crit_edge: ; preds = %land.lhs.true.i.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i129

land.lhs.true2.i.i126:                            ; preds = %land.lhs.true.i.i124
  %.b4.i.i125 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i125, label %land.lhs.true2.i.i126.rcu_read_lock.exit.i129_crit_edge, label %if.then.i.i127

land.lhs.true2.i.i126.rcu_read_lock.exit.i129_crit_edge: ; preds = %land.lhs.true2.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i129

if.then.i.i127:                                   ; preds = %land.lhs.true2.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 696, ptr noundef nonnull @.str.39) #9
  br label %rcu_read_lock.exit.i129

rcu_read_lock.exit.i129:                          ; preds = %if.then.i.i127, %land.lhs.true2.i.i126.rcu_read_lock.exit.i129_crit_edge, %land.lhs.true.i.i124.rcu_read_lock.exit.i129_crit_edge, %seq_print_resource_pending_peer_requests.exit.rcu_read_lock.exit.i129_crit_edge
  %126 = ptrtoint ptr %i.i117 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %i.i117, align 4
  %call48.i = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i117) #9
  %cmp.not49.i = icmp eq ptr %call48.i, null
  br i1 %cmp.not49.i, label %rcu_read_lock.exit.i129.for.end.i141_crit_edge, label %rcu_read_lock.exit.i129.for.body.i132_crit_edge

rcu_read_lock.exit.i129.for.body.i132_crit_edge:  ; preds = %rcu_read_lock.exit.i129
  br label %for.body.i132

rcu_read_lock.exit.i129.for.end.i141_crit_edge:   ; preds = %rcu_read_lock.exit.i129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i141

for.body.i132:                                    ; preds = %if.end19.i.for.body.i132_crit_edge, %rcu_read_lock.exit.i129.for.body.i132_crit_edge
  %call50.i = phi ptr [ %call.i139, %if.end19.i.for.body.i132_crit_edge ], [ %call48.i, %rcu_read_lock.exit.i129.for.body.i132_crit_edge ]
  %ap_actlog_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %call50.i, i32 0, i32 37
  %call.i.i.i130 = call zeroext i1 @__kasan_check_read(ptr noundef %ap_actlog_cnt.i, i32 noundef 4) #9
  %127 = ptrtoint ptr %ap_actlog_cnt.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %ap_actlog_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i131 = icmp eq i32 %128, 0
  br i1 %tobool.not.i131, label %for.body.i132.if.end19.i_crit_edge, label %if.then.i133

for.body.i132.if.end19.i_crit_edge:               ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then.i133:                                     ; preds = %for.body.i132
  %129 = ptrtoint ptr %call50.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %call50.i, align 8
  %req_lock.i = getelementptr inbounds %struct.drbd_resource, ptr %130, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock.i) #9
  %arrayidx.i = getelementptr %struct.drbd_device, ptr %call50.i, i32 0, i32 45, i32 1
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp4.not.i = icmp eq ptr %132, %arrayidx.i
  %add.ptr.i = getelementptr i8, ptr %132, i32 -88
  %tobool6.not47.i = icmp eq ptr %add.ptr.i, null
  %tobool6.not.i = or i1 %cmp4.not.i, %tobool6.not47.i
  br i1 %tobool6.not.i, label %if.then.i133.if.then13.i_crit_edge, label %land.lhs.true.i134

if.then.i133.if.then13.i_crit_edge:               ; preds = %if.then.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

land.lhs.true.i134:                               ; preds = %if.then.i133
  %rq_state.i = getelementptr i8, ptr %132, i32 48
  %133 = ptrtoint ptr %rq_state.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rq_state.i, align 8
  %and.i = and i32 %134, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %land.lhs.true.i134.if.then13.i_crit_edge

land.lhs.true.i134.if.then13.i_crit_edge:         ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then8.i:                                       ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #11
  %start_jif.i = getelementptr i8, ptr %132, i32 16
  %135 = ptrtoint ptr %start_jif.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %start_jif.i, align 8
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.then8.i, %land.lhs.true.i134.if.then13.i_crit_edge, %if.then.i133.if.then13.i_crit_edge
  %req.0.i = phi ptr [ %add.ptr.i, %if.then8.i ], [ null, %land.lhs.true.i134.if.then13.i_crit_edge ], [ null, %if.then.i133.if.then13.i_crit_edge ]
  %jif.0.i = phi i32 [ %136, %if.then8.i ], [ -1, %land.lhs.true.i134.if.then13.i_crit_edge ], [ -1, %if.then.i133.if.then13.i_crit_edge ]
  %137 = ptrtoint ptr %call50.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %call50.i, align 8
  %req_lock10.i = getelementptr inbounds %struct.drbd_resource, ptr %138, i32 0, i32 12
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock10.i) #9
  %minor.i135 = getelementptr inbounds %struct.drbd_device, ptr %call50.i, i32 0, i32 12
  %139 = ptrtoint ptr %minor.i135 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %minor.i135, align 8
  %vnr.i136 = getelementptr inbounds %struct.drbd_device, ptr %call50.i, i32 0, i32 11
  %141 = ptrtoint ptr %vnr.i136 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %vnr.i136, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %140, i32 noundef %142) #9
  %tobool14.not.i = icmp eq ptr %req.0.i, null
  br i1 %tobool14.not.i, label %if.else17.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i137 = sub i32 %2, %jif.0.i
  %call16.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i137) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %call16.i) #9
  br label %if.end18.i

if.else17.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.35) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else17.i, %if.then15.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.57, i32 noundef %128) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %for.body.i132.if.end19.i_crit_edge
  %143 = ptrtoint ptr %i.i117 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %i.i117, align 4
  %add.i138 = add i32 %144, 1
  store i32 %add.i138, ptr %i.i117, align 4
  %call.i139 = call ptr @idr_get_next(ptr noundef %devices.i, ptr noundef nonnull %i.i117) #9
  %cmp.not.i140 = icmp eq ptr %call.i139, null
  br i1 %cmp.not.i140, label %if.end19.i.for.end.i141_crit_edge, label %if.end19.i.for.body.i132_crit_edge

if.end19.i.for.body.i132_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i132

if.end19.i.for.end.i141_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i141

for.end.i141:                                     ; preds = %if.end19.i.for.end.i141_crit_edge, %rcu_read_lock.exit.i129.for.end.i141_crit_edge
  %call.i36.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i36.i, label %for.end.i141.seq_print_waiting_for_AL.exit_crit_edge, label %land.lhs.true.i39.i

for.end.i141.seq_print_waiting_for_AL.exit_crit_edge: ; preds = %for.end.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_waiting_for_AL.exit

land.lhs.true.i39.i:                              ; preds = %for.end.i141
  %call1.i37.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call1.i37.i, 0
  br i1 %tobool.not.i38.i, label %land.lhs.true.i39.i.seq_print_waiting_for_AL.exit_crit_edge, label %land.lhs.true2.i41.i

land.lhs.true.i39.i.seq_print_waiting_for_AL.exit_crit_edge: ; preds = %land.lhs.true.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_waiting_for_AL.exit

land.lhs.true2.i41.i:                             ; preds = %land.lhs.true.i39.i
  %.b4.i40.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40.i, label %land.lhs.true2.i41.i.seq_print_waiting_for_AL.exit_crit_edge, label %if.then.i42.i

land.lhs.true2.i41.i.seq_print_waiting_for_AL.exit_crit_edge: ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_waiting_for_AL.exit

if.then.i42.i:                                    ; preds = %land.lhs.true2.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 724, ptr noundef nonnull @.str.40) #9
  br label %seq_print_waiting_for_AL.exit

seq_print_waiting_for_AL.exit:                    ; preds = %if.then.i42.i, %land.lhs.true2.i41.i.seq_print_waiting_for_AL.exit_crit_edge, %land.lhs.true.i39.i.seq_print_waiting_for_AL.exit_crit_edge, %for.end.i141.seq_print_waiting_for_AL.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !256
  %145 = call i32 @llvm.read_register.i32(metadata !239) #9
  %and.i.i.i.i.i43.i = and i32 %145, -16384
  %146 = inttoptr i32 %and.i.i.i.i.i43.i to ptr
  %preempt_count.i.i.i.i44.i = getelementptr inbounds %struct.thread_info, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %preempt_count.i.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %preempt_count.i.i.i.i44.i, align 4
  %sub.i.i.i.i142 = add i32 %148, -1
  store volatile i32 %sub.i.i.i.i142, ptr %preempt_count.i.i.i.i44.i, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.i117) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.29) #9
  call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.58) #9
  %req_lock.i143 = getelementptr inbounds %struct.drbd_resource, ptr %1, i32 0, i32 12
  call void @_raw_spin_lock_irq(ptr noundef %req_lock.i143) #9
  %transfer_log.i = getelementptr inbounds %struct.drbd_connection, ptr %4, i32 0, i32 23
  %149 = ptrtoint ptr %transfer_log.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pn114.i = load ptr, ptr %transfer_log.i, align 4
  %cmp.not116.i = icmp eq ptr %.pn114.i, %transfer_log.i
  br i1 %cmp.not116.i, label %seq_print_waiting_for_AL.exit.seq_print_resource_transfer_log_summary.exit_crit_edge, label %seq_print_waiting_for_AL.exit.for.body.i146_crit_edge

seq_print_waiting_for_AL.exit.for.body.i146_crit_edge: ; preds = %seq_print_waiting_for_AL.exit
  br label %for.body.i146

seq_print_waiting_for_AL.exit.seq_print_resource_transfer_log_summary.exit_crit_edge: ; preds = %seq_print_waiting_for_AL.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_transfer_log_summary.exit

for.body.i146:                                    ; preds = %for.inc.i.for.body.i146_crit_edge, %seq_print_waiting_for_AL.exit.for.body.i146_crit_edge
  %.pn119.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i146_crit_edge ], [ %.pn114.i, %seq_print_waiting_for_AL.exit.for.body.i146_crit_edge ]
  %count.0118.i = phi i32 [ %inc.i, %for.inc.i.for.body.i146_crit_edge ], [ 0, %seq_print_waiting_for_AL.exit.for.body.i146_crit_edge ]
  %show_state.0117.i = phi i32 [ %show_state.1112.i, %for.inc.i.for.body.i146_crit_edge ], [ 0, %seq_print_waiting_for_AL.exit.for.body.i146_crit_edge ]
  %req.0120.i = getelementptr i8, ptr %.pn119.i, i32 -76
  %inc.i = add i32 %count.0118.i, 1
  %and.i144 = and i32 %inc.i, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i144)
  %tobool.not.i145 = icmp eq i32 %and.i144, 0
  br i1 %tobool.not.i145, label %if.then.i149, label %for.body.i146.if.end20.i_crit_edge

for.body.i146.if.end20.i_crit_edge:               ; preds = %for.body.i146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then.i149:                                     ; preds = %for.body.i146
  %kref.i = getelementptr i8, ptr %.pn119.i, i32 56
  %call.i.i.i.i.i.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %150 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !257
  %asmresult.i.i.i.i.i.i.i148 = extractvalue { i32, i32, i32 } %150, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i148)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i148, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i149.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !258

if.then.i149.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i149
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i148, 1
  %151 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %.not.i.i.i.i.i = icmp sgt i32 %151, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !251

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i149.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i149.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock.i143) #9
  call void @__might_resched(ptr noundef nonnull @.str.14, i32 noundef 321, i32 noundef 0) #9
  %call.i.i150 = call i32 @__cond_resched() #9
  call void @_raw_spin_lock_irq(ptr noundef %req_lock.i143) #9
  %152 = ptrtoint ptr %.pn119.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %.pn119.i, align 4
  %call.i.i.i.i.i.i102.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %kref_put.exit.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i103.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i103.i, label %if.end5.i.i.i.i.i._crit_edge, label %if.then10.i.i.i.i.i, !prof !251

if.end5.i.i.i.i.i._crit_edge:                     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %155

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %155

kref_put.exit.i:                                  ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void @drbd_req_destroy(ptr noundef %kref.i) #9, !callees !253
  %add.ptr10.i = getelementptr i8, ptr %153, i32 -76
  br label %155

155:                                              ; preds = %kref_put.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i._crit_edge
  %156 = phi ptr [ %add.ptr10.i, %kref_put.exit.i ], [ %req.0120.i, %if.end5.i.i.i.i.i._crit_edge ], [ %req.0120.i, %if.then10.i.i.i.i.i ]
  %tl_requests15.i = getelementptr inbounds %struct.drbd_request, ptr %156, i32 0, i32 5
  %cmp17.i = icmp eq ptr %tl_requests15.i, %transfer_log.i
  br i1 %cmp17.i, label %.seq_print_resource_transfer_log_summary.exit_crit_edge, label %.if.end20.i_crit_edge

.if.end20.i_crit_edge:                            ; preds = %155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

.seq_print_resource_transfer_log_summary.exit_crit_edge: ; preds = %155
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_transfer_log_summary.exit

if.end20.i:                                       ; preds = %.if.end20.i_crit_edge, %for.body.i146.if.end20.i_crit_edge
  %req.2.i = phi ptr [ %req.0120.i, %for.body.i146.if.end20.i_crit_edge ], [ %156, %.if.end20.i_crit_edge ]
  %rq_state.i151 = getelementptr inbounds %struct.drbd_request, ptr %req.2.i, i32 0, i32 17
  %157 = ptrtoint ptr %rq_state.i151 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rq_state.i151, align 8
  %master_bio.i = getelementptr inbounds %struct.drbd_request, ptr %req.2.i, i32 0, i32 6
  %159 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %master_bio.i, align 4
  %cmp21.i = icmp eq ptr %160, null
  %spec.select.i152 = zext i1 %cmp21.i to i32
  %and26.i = shl i32 %158, 1
  %161 = and i32 %and26.i, 2
  %162 = or i32 %161, %spec.select.i152
  %and31.i = and i32 %158, 1008
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.end20.i.if.end49.i_crit_edge, label %if.then33.i

if.end20.i.if.end49.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then33.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %and34.i = lshr i32 %158, 4
  %163 = and i32 %and34.i, 4
  %and39.i = lshr i32 %158, 1
  %164 = and i32 %and39.i, 8
  %and44.i = lshr i32 %158, 3
  %165 = and i32 %and44.i, 16
  %166 = or i32 %164, %163
  %167 = or i32 %166, %165
  %168 = or i32 %167, %162
  %169 = xor i32 %168, 20
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then33.i, %if.end20.i.if.end49.i_crit_edge
  %tmp2.4.i = phi i32 [ %162, %if.end20.i.if.end49.i_crit_edge ], [ %169, %if.then33.i ]
  %and50.i = and i32 %tmp2.4.i, %show_state.0117.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and50.i, i32 %tmp2.4.i)
  %cmp51.i = icmp eq i32 %and50.i, %tmp2.4.i
  br i1 %cmp51.i, label %if.end49.i.for.inc.i_crit_edge, label %if.end53.i

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end53.i:                                       ; preds = %if.end49.i
  %or54.i = or i32 %tmp2.4.i, %show_state.0117.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.56, i32 noundef %inc.i) #9
  %device.i.i = getelementptr inbounds %struct.drbd_request, ptr %req.2.i, i32 0, i32 1
  %170 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %device.i.i, align 4
  %minor.i.i153 = getelementptr inbounds %struct.drbd_device, ptr %171, i32 0, i32 12
  %172 = ptrtoint ptr %minor.i.i153 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %minor.i.i153, align 8
  %vnr.i.i154 = getelementptr inbounds %struct.drbd_device, ptr %171, i32 0, i32 11
  %174 = ptrtoint ptr %vnr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %vnr.i.i154, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %173, i32 noundef %175) #9
  call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef %req.2.i, i32 noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %or54.i)
  %cmp55.i = icmp eq i32 %or54.i, 31
  br i1 %cmp55.i, label %if.end53.i.seq_print_resource_transfer_log_summary.exit_crit_edge, label %if.end53.i.for.inc.i_crit_edge

if.end53.i.for.inc.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end53.i.seq_print_resource_transfer_log_summary.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_transfer_log_summary.exit

for.inc.i:                                        ; preds = %if.end53.i.for.inc.i_crit_edge, %if.end49.i.for.inc.i_crit_edge
  %show_state.1112.i = phi i32 [ %show_state.0117.i, %if.end49.i.for.inc.i_crit_edge ], [ %or54.i, %if.end53.i.for.inc.i_crit_edge ]
  %tl_requests63.i = getelementptr inbounds %struct.drbd_request, ptr %req.2.i, i32 0, i32 5
  %176 = ptrtoint ptr %tl_requests63.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %.pn.i = load ptr, ptr %tl_requests63.i, align 4
  %cmp.not.i155 = icmp eq ptr %.pn.i, %transfer_log.i
  br i1 %cmp.not.i155, label %for.inc.i.seq_print_resource_transfer_log_summary.exit_crit_edge, label %for.inc.i.for.body.i146_crit_edge

for.inc.i.for.body.i146_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i146

for.inc.i.seq_print_resource_transfer_log_summary.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_resource_transfer_log_summary.exit

seq_print_resource_transfer_log_summary.exit:     ; preds = %for.inc.i.seq_print_resource_transfer_log_summary.exit_crit_edge, %if.end53.i.seq_print_resource_transfer_log_summary.exit_crit_edge, %.seq_print_resource_transfer_log_summary.exit_crit_edge, %seq_print_waiting_for_AL.exit.seq_print_resource_transfer_log_summary.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %req_lock.i143) #9
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %177 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %2)
  %tobool11.not = icmp eq i32 %177, %2
  br i1 %tobool11.not, label %seq_print_resource_transfer_log_summary.exit.if.end14_crit_edge, label %if.then12

seq_print_resource_transfer_log_summary.exit.if.end14_crit_edge: ; preds = %seq_print_resource_transfer_log_summary.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %seq_print_resource_transfer_log_summary.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub10 = sub i32 %177, %2
  %call13 = call i32 @jiffies_to_msecs(i32 noundef %sub10) #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %call13) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %seq_print_resource_transfer_log_summary.exit.if.end14_crit_edge
  %call.i.i.i.i.i.i157 = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %178 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i158 = extractvalue { i32, i32, i32 } %178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i158)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i158, 1
  br i1 %cmp.i.i.i.i, label %if.then.i161, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i158)
  %.not.i.i.i.i159 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i158, 0
  br i1 %.not.i.i.i.i159, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i160, !prof !251

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i160:                             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %cleanup

if.then.i161:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  call void @drbd_destroy_connection(ptr noundef %kref) #9, !callees !253
  br label %cleanup

cleanup:                                          ; preds = %if.then.i161, %if.then10.i.i.i.i160, %if.end5.i.i.i.i.cleanup_crit_edge, %kref_get_unless_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -116, %kref_get_unless_zero.exit.cleanup_crit_edge ], [ -116, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i160 ], [ 0, %if.then.i161 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_resource(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_connection(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seq_print_peer_request(ptr noundef %m, ptr noundef readonly %device, ptr noundef readonly %lh, i32 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %0)
  %peer_req.034 = load ptr, ptr %lh, align 4
  %cmp.not35 = icmp eq ptr %peer_req.034, %lh
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool2.not = icmp eq ptr %device, null
  %minor = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 12
  %vnr = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %peer_req.037 = phi ptr [ %peer_req.034, %for.body.lr.ph ], [ %peer_req.0, %for.inc.for.body_crit_edge ]
  %reported_preparing.0.off036 = phi i1 [ false, %for.body.lr.ph ], [ true, %for.inc.for.body_crit_edge ]
  br i1 %reported_preparing.0.off036, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req.037, i32 0, i32 6
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %minor, align 8
  %5 = ptrtoint ptr %vnr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vnr, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %4, i32 noundef %6) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %sector = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req.037, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req.037, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 8
  %shr = lshr i32 %10, 9
  %flags6 = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req.037, i32 0, i32 6
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags6, align 8
  %and7 = and i32 %12, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %cond = select i1 %tobool8.not, i32 82, i32 87
  %submit_jif = getelementptr inbounds %struct.drbd_peer_request, ptr %peer_req.037, i32 0, i32 7
  %13 = ptrtoint ptr %submit_jif to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %submit_jif, align 4
  %sub = sub i32 %now, %14
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i64 noundef %8, i32 noundef %shr, i32 noundef %cond, i32 noundef %call) #9
  %15 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags6, align 8
  %and.i = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.46, ptr @.str.45
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %spec.select.i) #9
  %and1.i = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %unset_name.sink.i31.i = select i1 %tobool2.not.i, ptr @.str.48, ptr @.str.47
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %unset_name.sink.i31.i) #9
  %and3.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end4.seq_print_rq_state_bit.exit.i_crit_edge, label %if.end6.sink.split.i.i.i

if.end4.seq_print_rq_state_bit.exit.i_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit.i

if.end6.sink.split.i.i.i:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.49) #9
  br label %seq_print_rq_state_bit.exit.i

seq_print_rq_state_bit.exit.i:                    ; preds = %if.end6.sink.split.i.i.i, %if.end4.seq_print_rq_state_bit.exit.i_crit_edge
  %and5.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit35.i_crit_edge, label %if.end6.sink.split.i.i34.i

seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit35.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit35.i

if.end6.sink.split.i.i34.i:                       ; preds = %seq_print_rq_state_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.50) #9
  br label %seq_print_rq_state_bit.exit35.i

seq_print_rq_state_bit.exit35.i:                  ; preds = %if.end6.sink.split.i.i34.i, %seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit35.i_crit_edge
  %and7.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %seq_print_rq_state_bit.exit35.i.seq_print_rq_state_bit.exit37.i_crit_edge, label %if.end6.sink.split.i.i36.i

seq_print_rq_state_bit.exit35.i.seq_print_rq_state_bit.exit37.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit37.i

if.end6.sink.split.i.i36.i:                       ; preds = %seq_print_rq_state_bit.exit35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.51) #9
  br label %seq_print_rq_state_bit.exit37.i

seq_print_rq_state_bit.exit37.i:                  ; preds = %if.end6.sink.split.i.i36.i, %seq_print_rq_state_bit.exit35.i.seq_print_rq_state_bit.exit37.i_crit_edge
  %and9.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %seq_print_rq_state_bit.exit37.i.seq_print_rq_state_bit.exit39.i_crit_edge, label %if.end6.sink.split.i.i38.i

seq_print_rq_state_bit.exit37.i.seq_print_rq_state_bit.exit39.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit39.i

if.end6.sink.split.i.i38.i:                       ; preds = %seq_print_rq_state_bit.exit37.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.52) #9
  br label %seq_print_rq_state_bit.exit39.i

seq_print_rq_state_bit.exit39.i:                  ; preds = %if.end6.sink.split.i.i38.i, %seq_print_rq_state_bit.exit37.i.seq_print_rq_state_bit.exit39.i_crit_edge
  %and11.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %seq_print_rq_state_bit.exit39.i.seq_print_rq_state_bit.exit41.i_crit_edge, label %if.end6.sink.split.i.i40.i

seq_print_rq_state_bit.exit39.i.seq_print_rq_state_bit.exit41.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit41.i

if.end6.sink.split.i.i40.i:                       ; preds = %seq_print_rq_state_bit.exit39.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.53) #9
  br label %seq_print_rq_state_bit.exit41.i

seq_print_rq_state_bit.exit41.i:                  ; preds = %if.end6.sink.split.i.i40.i, %seq_print_rq_state_bit.exit39.i.seq_print_rq_state_bit.exit41.i_crit_edge
  %and13.i = and i32 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %seq_print_rq_state_bit.exit41.i.seq_print_peer_request_flags.exit_crit_edge, label %if.end6.sink.split.i.i42.i

seq_print_rq_state_bit.exit41.i.seq_print_peer_request_flags.exit_crit_edge: ; preds = %seq_print_rq_state_bit.exit41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_peer_request_flags.exit

if.end6.sink.split.i.i42.i:                       ; preds = %seq_print_rq_state_bit.exit41.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.54) #9
  br label %seq_print_peer_request_flags.exit

seq_print_peer_request_flags.exit:                ; preds = %if.end6.sink.split.i.i42.i, %seq_print_rq_state_bit.exit41.i.seq_print_peer_request_flags.exit_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #9
  %17 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags6, align 8
  %and10 = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %seq_print_peer_request_flags.exit.for.inc_crit_edge, label %seq_print_peer_request_flags.exit.for.end_crit_edge

seq_print_peer_request_flags.exit.for.end_crit_edge: ; preds = %seq_print_peer_request_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

seq_print_peer_request_flags.exit.for.inc_crit_edge: ; preds = %seq_print_peer_request_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %seq_print_peer_request_flags.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %19 = ptrtoint ptr %peer_req.037 to i32
  call void @__asan_load4_noabort(i32 %19)
  %peer_req.0 = load ptr, ptr %peer_req.037, align 4
  %cmp.not = icmp eq ptr %peer_req.0, %lh
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %seq_print_peer_request_flags.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_req_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seq_print_one_request(ptr noundef %m, ptr nocapture noundef readonly %req, i32 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_state = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 17
  %0 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq_state, align 8
  %epoch = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %epoch, align 8
  %sector = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sector, align 8
  %size = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %shr = lshr i32 %7, 9
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.61, ptr @.str.60
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %3, i64 noundef %5, i32 noundef %shr, ptr noundef nonnull %cond) #9
  %start_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 9
  %8 = ptrtoint ptr %start_jif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_jif, align 8
  %sub = sub i32 %now, %9
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %call) #9
  %and2 = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %in_actlog_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 10
  %10 = ptrtoint ptr %in_actlog_jif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %in_actlog_jif, align 4
  %sub4 = sub i32 %now, %11
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub4) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %call.i) #9
  br label %seq_print_age_or_dash.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63) #9
  br label %seq_print_age_or_dash.exit

seq_print_age_or_dash.exit:                       ; preds = %if.else.i, %if.then.i
  %and5 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.i49, label %if.then.i48

if.then.i48:                                      ; preds = %seq_print_age_or_dash.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pre_submit_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %pre_submit_jif to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pre_submit_jif, align 8
  %sub7 = sub i32 %now, %13
  %call.i47 = tail call i32 @jiffies_to_msecs(i32 noundef %sub7) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %call.i47) #9
  br label %seq_print_age_or_dash.exit50

if.else.i49:                                      ; preds = %seq_print_age_or_dash.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63) #9
  br label %seq_print_age_or_dash.exit50

seq_print_age_or_dash.exit50:                     ; preds = %if.else.i49, %if.then.i48
  %and8 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %seq_print_age_or_dash.exit54.thread, label %seq_print_age_or_dash.exit54

seq_print_age_or_dash.exit54.thread:              ; preds = %seq_print_age_or_dash.exit50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63) #9
  br label %if.else.i57

seq_print_age_or_dash.exit54:                     ; preds = %seq_print_age_or_dash.exit50
  %pre_send_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 12
  %14 = ptrtoint ptr %pre_send_jif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pre_send_jif, align 4
  %sub10 = sub i32 %now, %15
  %call.i51 = tail call i32 @jiffies_to_msecs(i32 noundef %sub10) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %call.i51) #9
  %and13 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then.i56, label %seq_print_age_or_dash.exit54.if.else.i57_crit_edge

seq_print_age_or_dash.exit54.if.else.i57_crit_edge: ; preds = %seq_print_age_or_dash.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i57

if.then.i56:                                      ; preds = %seq_print_age_or_dash.exit54
  call void @__sanitizer_cov_trace_pc() #11
  %acked_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 13
  %16 = ptrtoint ptr %acked_jif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %acked_jif, align 8
  %sub15 = sub i32 %now, %17
  %call.i55 = tail call i32 @jiffies_to_msecs(i32 noundef %sub15) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %call.i55) #9
  br label %seq_print_age_or_dash.exit58

if.else.i57:                                      ; preds = %seq_print_age_or_dash.exit54.if.else.i57_crit_edge, %seq_print_age_or_dash.exit54.thread
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63) #9
  br label %seq_print_age_or_dash.exit58

seq_print_age_or_dash.exit58:                     ; preds = %if.else.i57, %if.then.i56
  %and16 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else.i61, label %if.then.i60

if.then.i60:                                      ; preds = %seq_print_age_or_dash.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %net_done_jif = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 14
  %18 = ptrtoint ptr %net_done_jif to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %net_done_jif, align 4
  %sub18 = sub i32 %now, %19
  %call.i59 = tail call i32 @jiffies_to_msecs(i32 noundef %sub18) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.62, i32 noundef %call.i59) #9
  br label %seq_print_age_or_dash.exit62

if.else.i61:                                      ; preds = %seq_print_age_or_dash.exit58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63) #9
  br label %seq_print_age_or_dash.exit62

seq_print_age_or_dash.exit62:                     ; preds = %if.else.i61, %if.then.i60
  %20 = ptrtoint ptr %rq_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rq_state, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.64, i32 noundef %21) #9
  %master_bio.i = getelementptr inbounds %struct.drbd_request, ptr %req, i32 0, i32 6
  %22 = ptrtoint ptr %master_bio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master_bio.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.67, ptr @.str.66
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.65, ptr noundef nonnull %cond.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.68) #9
  %and.i = and i32 %21, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %seq_print_age_or_dash.exit62.seq_print_rq_state_bit.exit.i_crit_edge, label %if.end6.sink.split.i.i.i

seq_print_age_or_dash.exit62.seq_print_rq_state_bit.exit.i_crit_edge: ; preds = %seq_print_age_or_dash.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit.i

if.end6.sink.split.i.i.i:                         ; preds = %seq_print_age_or_dash.exit62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.49) #9
  br label %seq_print_rq_state_bit.exit.i

seq_print_rq_state_bit.exit.i:                    ; preds = %if.end6.sink.split.i.i.i, %seq_print_age_or_dash.exit62.seq_print_rq_state_bit.exit.i_crit_edge
  %sep.0.i = phi i8 [ 124, %if.end6.sink.split.i.i.i ], [ 32, %seq_print_age_or_dash.exit62.seq_print_rq_state_bit.exit.i_crit_edge ]
  %and2.i = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit85.i_crit_edge, label %if.end6.sink.split.i.i84.i

seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit85.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit85.i

if.end6.sink.split.i.i84.i:                       ; preds = %seq_print_rq_state_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.0.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.69) #9
  br label %seq_print_rq_state_bit.exit85.i

seq_print_rq_state_bit.exit85.i:                  ; preds = %if.end6.sink.split.i.i84.i, %seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit85.i_crit_edge
  %sep.1.i = phi i8 [ 124, %if.end6.sink.split.i.i84.i ], [ %sep.0.i, %seq_print_rq_state_bit.exit.i.seq_print_rq_state_bit.exit85.i_crit_edge ]
  %and4.i = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %seq_print_rq_state_bit.exit85.i.seq_print_rq_state_bit.exit87.i_crit_edge, label %if.end6.sink.split.i.i86.i

seq_print_rq_state_bit.exit85.i.seq_print_rq_state_bit.exit87.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit87.i

if.end6.sink.split.i.i86.i:                       ; preds = %seq_print_rq_state_bit.exit85.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.1.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.70) #9
  br label %seq_print_rq_state_bit.exit87.i

seq_print_rq_state_bit.exit87.i:                  ; preds = %if.end6.sink.split.i.i86.i, %seq_print_rq_state_bit.exit85.i.seq_print_rq_state_bit.exit87.i_crit_edge
  %and6.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %seq_print_rq_state_bit.exit87.i.seq_print_rq_state_bit.exit89.i_crit_edge, label %if.end6.sink.split.i.i88.i

seq_print_rq_state_bit.exit87.i.seq_print_rq_state_bit.exit89.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit89.i

if.end6.sink.split.i.i88.i:                       ; preds = %seq_print_rq_state_bit.exit87.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.66) #9
  br label %seq_print_rq_state_bit.exit89.i

seq_print_rq_state_bit.exit89.i:                  ; preds = %if.end6.sink.split.i.i88.i, %seq_print_rq_state_bit.exit87.i.seq_print_rq_state_bit.exit89.i_crit_edge
  %sep.2.i = phi i8 [ 124, %if.end6.sink.split.i.i88.i ], [ 32, %seq_print_rq_state_bit.exit87.i.seq_print_rq_state_bit.exit89.i_crit_edge ]
  %and8.i = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %seq_print_rq_state_bit.exit89.i.seq_print_rq_state_bit.exit91.i_crit_edge, label %if.end6.sink.split.i.i90.i

seq_print_rq_state_bit.exit89.i.seq_print_rq_state_bit.exit91.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit91.i

if.end6.sink.split.i.i90.i:                       ; preds = %seq_print_rq_state_bit.exit89.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.2.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.67) #9
  br label %seq_print_rq_state_bit.exit91.i

seq_print_rq_state_bit.exit91.i:                  ; preds = %if.end6.sink.split.i.i90.i, %seq_print_rq_state_bit.exit89.i.seq_print_rq_state_bit.exit91.i_crit_edge
  %sep.3.i = phi i8 [ 124, %if.end6.sink.split.i.i90.i ], [ %sep.2.i, %seq_print_rq_state_bit.exit89.i.seq_print_rq_state_bit.exit91.i_crit_edge ]
  %and10.i = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %seq_print_rq_state_bit.exit93.i, label %seq_print_rq_state_bit.exit93.thread.i

seq_print_rq_state_bit.exit93.i:                  ; preds = %seq_print_rq_state_bit.exit91.i
  %and12.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %seq_print_rq_state_bit.exit95.i, label %seq_print_rq_state_bit.exit93.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge

seq_print_rq_state_bit.exit93.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit95.thread.i

seq_print_rq_state_bit.exit93.thread.i:           ; preds = %seq_print_rq_state_bit.exit91.i
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.3.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.71) #9
  %and12139.i = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12139.i)
  %tobool13.not140.i = icmp eq i32 %and12139.i, 0
  br i1 %tobool13.not140.i, label %seq_print_rq_state_bit.exit93.thread.i.if.end.i_crit_edge, label %seq_print_rq_state_bit.exit93.thread.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge

seq_print_rq_state_bit.exit93.thread.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit93.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit95.thread.i

seq_print_rq_state_bit.exit93.thread.i.if.end.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit93.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

seq_print_rq_state_bit.exit95.thread.i:           ; preds = %seq_print_rq_state_bit.exit93.thread.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge, %seq_print_rq_state_bit.exit93.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge
  %sep.4141.i = phi i8 [ 124, %seq_print_rq_state_bit.exit93.thread.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge ], [ %sep.3.i, %seq_print_rq_state_bit.exit93.i.seq_print_rq_state_bit.exit95.thread.i_crit_edge ]
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.4141.i) #9
  br label %if.end.sink.split.i

seq_print_rq_state_bit.exit95.i:                  ; preds = %seq_print_rq_state_bit.exit93.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %sep.3.i)
  %cmp.i = icmp eq i8 %sep.3.i, 32
  br i1 %cmp.i, label %seq_print_rq_state_bit.exit95.i.if.end.sink.split.i_crit_edge, label %seq_print_rq_state_bit.exit95.i.if.end.i_crit_edge

seq_print_rq_state_bit.exit95.i.if.end.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

seq_print_rq_state_bit.exit95.i.if.end.sink.split.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %seq_print_rq_state_bit.exit95.i.if.end.sink.split.i_crit_edge, %seq_print_rq_state_bit.exit95.thread.i
  %.str.72.sink.i = phi ptr [ @.str.72, %seq_print_rq_state_bit.exit95.thread.i ], [ @.str.73, %seq_print_rq_state_bit.exit95.i.if.end.sink.split.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.72.sink.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %seq_print_rq_state_bit.exit95.i.if.end.i_crit_edge, %seq_print_rq_state_bit.exit93.thread.i.if.end.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.74) #9
  %and15.i = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end.i.seq_print_rq_state_bit.exit97.i_crit_edge, label %if.end6.sink.split.i.i96.i

if.end.i.seq_print_rq_state_bit.exit97.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit97.i

if.end6.sink.split.i.i96.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.66) #9
  br label %seq_print_rq_state_bit.exit97.i

seq_print_rq_state_bit.exit97.i:                  ; preds = %if.end6.sink.split.i.i96.i, %if.end.i.seq_print_rq_state_bit.exit97.i_crit_edge
  %sep.6.i = phi i8 [ 124, %if.end6.sink.split.i.i96.i ], [ 32, %if.end.i.seq_print_rq_state_bit.exit97.i_crit_edge ]
  %and17.i = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %seq_print_rq_state_bit.exit97.i.seq_print_rq_state_bit.exit99.i_crit_edge, label %if.end6.sink.split.i.i98.i

seq_print_rq_state_bit.exit97.i.seq_print_rq_state_bit.exit99.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit99.i

if.end6.sink.split.i.i98.i:                       ; preds = %seq_print_rq_state_bit.exit97.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.6.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.75) #9
  br label %seq_print_rq_state_bit.exit99.i

seq_print_rq_state_bit.exit99.i:                  ; preds = %if.end6.sink.split.i.i98.i, %seq_print_rq_state_bit.exit97.i.seq_print_rq_state_bit.exit99.i_crit_edge
  %sep.7.i = phi i8 [ 124, %if.end6.sink.split.i.i98.i ], [ %sep.6.i, %seq_print_rq_state_bit.exit97.i.seq_print_rq_state_bit.exit99.i_crit_edge ]
  %and19.i = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %seq_print_rq_state_bit.exit99.i.seq_print_rq_state_bit.exit101.i_crit_edge, label %if.end6.sink.split.i.i100.i

seq_print_rq_state_bit.exit99.i.seq_print_rq_state_bit.exit101.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit101.i

if.end6.sink.split.i.i100.i:                      ; preds = %seq_print_rq_state_bit.exit99.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.7.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #9
  br label %seq_print_rq_state_bit.exit101.i

seq_print_rq_state_bit.exit101.i:                 ; preds = %if.end6.sink.split.i.i100.i, %seq_print_rq_state_bit.exit99.i.seq_print_rq_state_bit.exit101.i_crit_edge
  %sep.8.i = phi i8 [ 124, %if.end6.sink.split.i.i100.i ], [ %sep.7.i, %seq_print_rq_state_bit.exit99.i.seq_print_rq_state_bit.exit101.i_crit_edge ]
  %and21.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %seq_print_rq_state_bit.exit101.i.seq_print_rq_state_bit.exit103.i_crit_edge, label %if.end6.sink.split.i.i102.i

seq_print_rq_state_bit.exit101.i.seq_print_rq_state_bit.exit103.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit103.i

if.end6.sink.split.i.i102.i:                      ; preds = %seq_print_rq_state_bit.exit101.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.8.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.77) #9
  br label %seq_print_rq_state_bit.exit103.i

seq_print_rq_state_bit.exit103.i:                 ; preds = %if.end6.sink.split.i.i102.i, %seq_print_rq_state_bit.exit101.i.seq_print_rq_state_bit.exit103.i_crit_edge
  %sep.9.i = phi i8 [ 124, %if.end6.sink.split.i.i102.i ], [ %sep.8.i, %seq_print_rq_state_bit.exit101.i.seq_print_rq_state_bit.exit103.i_crit_edge ]
  %and23.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %seq_print_rq_state_bit.exit105.i, label %seq_print_rq_state_bit.exit105.thread.i

seq_print_rq_state_bit.exit105.i:                 ; preds = %seq_print_rq_state_bit.exit103.i
  %and25.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %seq_print_rq_state_bit.exit107.i, label %seq_print_rq_state_bit.exit105.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge

seq_print_rq_state_bit.exit105.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit107.thread.i

seq_print_rq_state_bit.exit105.thread.i:          ; preds = %seq_print_rq_state_bit.exit103.i
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.9.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.78) #9
  %and25147.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25147.i)
  %tobool26.not148.i = icmp eq i32 %and25147.i, 0
  br i1 %tobool26.not148.i, label %seq_print_rq_state_bit.exit105.thread.i.if.end31.i_crit_edge, label %seq_print_rq_state_bit.exit105.thread.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge

seq_print_rq_state_bit.exit105.thread.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit105.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit107.thread.i

seq_print_rq_state_bit.exit105.thread.i.if.end31.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit105.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

seq_print_rq_state_bit.exit107.thread.i:          ; preds = %seq_print_rq_state_bit.exit105.thread.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge, %seq_print_rq_state_bit.exit105.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge
  %sep.10149.i = phi i8 [ 124, %seq_print_rq_state_bit.exit105.thread.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge ], [ %sep.9.i, %seq_print_rq_state_bit.exit105.i.seq_print_rq_state_bit.exit107.thread.i_crit_edge ]
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.10149.i) #9
  br label %if.end31.sink.split.i

seq_print_rq_state_bit.exit107.i:                 ; preds = %seq_print_rq_state_bit.exit105.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %sep.9.i)
  %cmp28.i = icmp eq i8 %sep.9.i, 32
  br i1 %cmp28.i, label %seq_print_rq_state_bit.exit107.i.if.end31.sink.split.i_crit_edge, label %seq_print_rq_state_bit.exit107.i.if.end31.i_crit_edge

seq_print_rq_state_bit.exit107.i.if.end31.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

seq_print_rq_state_bit.exit107.i.if.end31.sink.split.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.sink.split.i

if.end31.sink.split.i:                            ; preds = %seq_print_rq_state_bit.exit107.i.if.end31.sink.split.i_crit_edge, %seq_print_rq_state_bit.exit107.thread.i
  %.str.72.sink162.i = phi ptr [ @.str.72, %seq_print_rq_state_bit.exit107.thread.i ], [ @.str.73, %seq_print_rq_state_bit.exit107.i.if.end31.sink.split.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.72.sink162.i) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end31.sink.split.i, %seq_print_rq_state_bit.exit107.i.if.end31.i_crit_edge, %seq_print_rq_state_bit.exit105.thread.i.if.end31.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79) #9
  %and32.i = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.end31.i.seq_print_rq_state_bit.exit109.i_crit_edge, label %if.end6.sink.split.i.i108.i

if.end31.i.seq_print_rq_state_bit.exit109.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit109.i

if.end6.sink.split.i.i108.i:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 32) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.80) #9
  br label %seq_print_rq_state_bit.exit109.i

seq_print_rq_state_bit.exit109.i:                 ; preds = %if.end6.sink.split.i.i108.i, %if.end31.i.seq_print_rq_state_bit.exit109.i_crit_edge
  %sep.12.i = phi i8 [ 124, %if.end6.sink.split.i.i108.i ], [ 32, %if.end31.i.seq_print_rq_state_bit.exit109.i_crit_edge ]
  %and34.i = and i32 %21, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %seq_print_rq_state_bit.exit111.i, label %seq_print_rq_state_bit.exit111.thread.i

seq_print_rq_state_bit.exit111.i:                 ; preds = %seq_print_rq_state_bit.exit109.i
  %and36.i = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %seq_print_rq_state_bit.exit113.i, label %seq_print_rq_state_bit.exit111.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge

seq_print_rq_state_bit.exit111.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit113.thread.i

seq_print_rq_state_bit.exit111.thread.i:          ; preds = %seq_print_rq_state_bit.exit109.i
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.12.i) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.50) #9
  %and36155.i = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36155.i)
  %tobool37.not156.i = icmp eq i32 %and36155.i, 0
  br i1 %tobool37.not156.i, label %seq_print_rq_state_bit.exit111.thread.i.seq_print_request_state.exit_crit_edge, label %seq_print_rq_state_bit.exit111.thread.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge

seq_print_rq_state_bit.exit111.thread.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit111.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_rq_state_bit.exit113.thread.i

seq_print_rq_state_bit.exit111.thread.i.seq_print_request_state.exit_crit_edge: ; preds = %seq_print_rq_state_bit.exit111.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_request_state.exit

seq_print_rq_state_bit.exit113.thread.i:          ; preds = %seq_print_rq_state_bit.exit111.thread.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge, %seq_print_rq_state_bit.exit111.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge
  %sep.13157.i = phi i8 [ 124, %seq_print_rq_state_bit.exit111.thread.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge ], [ %sep.12.i, %seq_print_rq_state_bit.exit111.i.seq_print_rq_state_bit.exit113.thread.i_crit_edge ]
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext %sep.13157.i) #9
  br label %if.end42.sink.split.i

seq_print_rq_state_bit.exit113.i:                 ; preds = %seq_print_rq_state_bit.exit111.i
  br i1 %tobool33.not.i, label %seq_print_rq_state_bit.exit113.i.if.end42.sink.split.i_crit_edge, label %seq_print_rq_state_bit.exit113.i.seq_print_request_state.exit_crit_edge

seq_print_rq_state_bit.exit113.i.seq_print_request_state.exit_crit_edge: ; preds = %seq_print_rq_state_bit.exit113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_request_state.exit

seq_print_rq_state_bit.exit113.i.if.end42.sink.split.i_crit_edge: ; preds = %seq_print_rq_state_bit.exit113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.sink.split.i

if.end42.sink.split.i:                            ; preds = %seq_print_rq_state_bit.exit113.i.if.end42.sink.split.i_crit_edge, %seq_print_rq_state_bit.exit113.thread.i
  %.str.81.sink.i = phi ptr [ @.str.81, %seq_print_rq_state_bit.exit113.thread.i ], [ @.str.73, %seq_print_rq_state_bit.exit113.i.if.end42.sink.split.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.81.sink.i) #9
  br label %seq_print_request_state.exit

seq_print_request_state.exit:                     ; preds = %if.end42.sink.split.i, %seq_print_rq_state_bit.exit113.i.seq_print_request_state.exit_crit_edge, %seq_print_rq_state_bit.exit111.thread.i.seq_print_request_state.exit_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.82) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @callback_history_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 5
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @callback_history_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_connection)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @callback_history_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_connection(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @callback_history_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.83) #9
  %w_cb_nr = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %w_cb_nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %w_cb_nr, align 4
  %w_timing_details = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 48
  tail call fastcc void @seq_print_timing_details(ptr noundef %m, ptr noundef nonnull @.str.84, i32 noundef %4, ptr noundef %w_timing_details, i32 noundef %2)
  %r_cb_nr = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 47
  %5 = ptrtoint ptr %r_cb_nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r_cb_nr, align 4
  %r_timing_details = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 49
  tail call fastcc void @seq_print_timing_details(ptr noundef %m, ptr noundef nonnull @.str.85, i32 noundef %6, ptr noundef %r_timing_details, i32 noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seq_print_timing_details(ptr noundef %m, ptr noundef %title, i32 noundef %cb_nr, ptr nocapture noundef readonly %tdp, i32 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.37, ptr noundef %title) #9
  %rem = and i32 %cb_nr, 15
  br label %for.body

for.cond1.preheader:                              ; preds = %seq_print_one_timing_detail.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp233.not = icmp eq i32 %rem, 0
  br i1 %cmp233.not, label %for.cond1.preheader.for.end7_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.end7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end7

for.body:                                         ; preds = %seq_print_one_timing_detail.exit.for.body_crit_edge, %entry
  %i.032 = phi i32 [ %rem, %entry ], [ %inc, %seq_print_one_timing_detail.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %i.032
  %td.sroa.5.0..sroa_idx.le.i = getelementptr inbounds i8, ptr %add.ptr, i32 4
  %0 = ptrtoint ptr %td.sroa.5.0..sroa_idx.le.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %td.sroa.5.0.copyload.le.i = load ptr, ptr %td.sroa.5.0..sroa_idx.le.i, align 4
  %tobool.not.i = icmp eq ptr %td.sroa.5.0.copyload.le.i, null
  br i1 %tobool.not.i, label %for.body.seq_print_one_timing_detail.exit_crit_edge, label %if.end.i

for.body.seq_print_one_timing_detail.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_one_timing_detail.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %td.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr, i32 16
  %1 = ptrtoint ptr %td.sroa.12.0..sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %td.sroa.12.0.copyload.i = load i32, ptr %td.sroa.12.0..sroa_idx.i, align 4
  %td.sroa.10.0..sroa_idx.le.i = getelementptr inbounds i8, ptr %add.ptr, i32 12
  %2 = ptrtoint ptr %td.sroa.10.0..sroa_idx.le.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %td.sroa.10.0.copyload.le.i = load i32, ptr %td.sroa.10.0..sroa_idx.le.i, align 4
  %td.sroa.8.0..sroa_idx.le.i = getelementptr inbounds i8, ptr %add.ptr, i32 8
  %3 = ptrtoint ptr %td.sroa.8.0..sroa_idx.le.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %td.sroa.8.0.copyload.le.i = load ptr, ptr %td.sroa.8.0..sroa_idx.le.i, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %td.sroa.0.0.copyload.le.i = load i32, ptr %add.ptr, align 4
  %sub.i = sub i32 %now, %td.sroa.0.0.copyload.le.i
  %call.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, i32 noundef %td.sroa.12.0.copyload.i, i32 noundef %call.i, ptr noundef %td.sroa.8.0.copyload.le.i, i32 noundef %td.sroa.10.0.copyload.le.i, ptr noundef nonnull %td.sroa.5.0.copyload.le.i) #9
  br label %seq_print_one_timing_detail.exit

seq_print_one_timing_detail.exit:                 ; preds = %if.end.i, %for.body.seq_print_one_timing_detail.exit_crit_edge
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond1.preheader, label %seq_print_one_timing_detail.exit.for.body_crit_edge

seq_print_one_timing_detail.exit.for.body_crit_edge: ; preds = %seq_print_one_timing_detail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body3:                                        ; preds = %seq_print_one_timing_detail.exit31.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.134 = phi i32 [ %inc6, %seq_print_one_timing_detail.exit31.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %add.ptr4 = getelementptr %struct.drbd_thread_timing_details, ptr %tdp, i32 %i.134
  %td.sroa.5.0..sroa_idx.le.i18 = getelementptr inbounds i8, ptr %add.ptr4, i32 4
  %5 = ptrtoint ptr %td.sroa.5.0..sroa_idx.le.i18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %td.sroa.5.0.copyload.le.i19 = load ptr, ptr %td.sroa.5.0..sroa_idx.le.i18, align 4
  %tobool.not.i20 = icmp eq ptr %td.sroa.5.0.copyload.le.i19, null
  br i1 %tobool.not.i20, label %for.body3.seq_print_one_timing_detail.exit31_crit_edge, label %if.end.i30

for.body3.seq_print_one_timing_detail.exit31_crit_edge: ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %seq_print_one_timing_detail.exit31

if.end.i30:                                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  %td.sroa.12.0..sroa_idx.i21 = getelementptr inbounds i8, ptr %add.ptr4, i32 16
  %6 = ptrtoint ptr %td.sroa.12.0..sroa_idx.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %td.sroa.12.0.copyload.i22 = load i32, ptr %td.sroa.12.0..sroa_idx.i21, align 4
  %td.sroa.10.0..sroa_idx.le.i23 = getelementptr inbounds i8, ptr %add.ptr4, i32 12
  %7 = ptrtoint ptr %td.sroa.10.0..sroa_idx.le.i23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %td.sroa.10.0.copyload.le.i24 = load i32, ptr %td.sroa.10.0..sroa_idx.le.i23, align 4
  %td.sroa.8.0..sroa_idx.le.i25 = getelementptr inbounds i8, ptr %add.ptr4, i32 8
  %8 = ptrtoint ptr %td.sroa.8.0..sroa_idx.le.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %td.sroa.8.0.copyload.le.i26 = load ptr, ptr %td.sroa.8.0..sroa_idx.le.i25, align 4
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %td.sroa.0.0.copyload.le.i27 = load i32, ptr %add.ptr4, align 4
  %sub.i28 = sub i32 %now, %td.sroa.0.0.copyload.le.i27
  %call.i29 = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i28) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.86, i32 noundef %td.sroa.12.0.copyload.i22, i32 noundef %call.i29, ptr noundef %td.sroa.8.0.copyload.le.i26, i32 noundef %td.sroa.10.0.copyload.le.i24, ptr noundef nonnull %td.sroa.5.0.copyload.le.i19) #9
  br label %seq_print_one_timing_detail.exit31

seq_print_one_timing_detail.exit31:               ; preds = %if.end.i30, %for.body3.seq_print_one_timing_detail.exit31_crit_edge
  %inc6 = add nuw nsw i32 %i.134, 1
  %exitcond35.not = icmp eq i32 %inc6, %rem
  br i1 %exitcond35.not, label %seq_print_one_timing_detail.exit31.for.end7_crit_edge, label %seq_print_one_timing_detail.exit31.for.body3_crit_edge

seq_print_one_timing_detail.exit31.for.body3_crit_edge: ; preds = %seq_print_one_timing_detail.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

seq_print_one_timing_detail.exit31.for.end7_crit_edge: ; preds = %seq_print_one_timing_detail.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end7

for.end7:                                         ; preds = %seq_print_one_timing_detail.exit31.for.end7_crit_edge, %for.cond1.preheader.for.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connection_oldest_requests_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 5
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @connection_oldest_requests_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_connection)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connection_oldest_requests_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_connection(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connection_oldest_requests_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  %resource = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  %req_next = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 42
  %5 = ptrtoint ptr %req_next to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req_next, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device.i = getelementptr inbounds %struct.drbd_request, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %minor.i = getelementptr inbounds %struct.drbd_device, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %minor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %minor.i, align 8
  %vnr.i = getelementptr inbounds %struct.drbd_device, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %vnr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vnr.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %10, i32 noundef %12) #9
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %6, i32 noundef %2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %req_ack_pending = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 43
  %13 = ptrtoint ptr %req_ack_pending to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req_ack_pending, align 4
  %tobool1.not = icmp eq ptr %14, null
  %cmp.not = icmp eq ptr %14, %6
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %device.i33 = getelementptr inbounds %struct.drbd_request, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %device.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.i33, align 4
  %minor.i34 = getelementptr inbounds %struct.drbd_device, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %minor.i34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %minor.i34, align 8
  %vnr.i35 = getelementptr inbounds %struct.drbd_device, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %vnr.i35 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vnr.i35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %18, i32 noundef %20) #9
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %14, i32 noundef %2) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %r1.0 = phi ptr [ %14, %if.then2 ], [ %6, %if.end.if.end3_crit_edge ]
  %req_not_net_done = getelementptr inbounds %struct.drbd_connection, ptr %1, i32 0, i32 44
  %21 = ptrtoint ptr %req_not_net_done to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req_not_net_done, align 4
  %tobool4.not = icmp eq ptr %22, null
  %cmp6.not = icmp eq ptr %22, %r1.0
  %or.cond32 = select i1 %tobool4.not, i1 true, i1 %cmp6.not
  br i1 %or.cond32, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %device.i36 = getelementptr inbounds %struct.drbd_request, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %device.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device.i36, align 4
  %minor.i37 = getelementptr inbounds %struct.drbd_device, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %minor.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minor.i37, align 8
  %vnr.i38 = getelementptr inbounds %struct.drbd_device, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %vnr.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vnr.i38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %26, i32 noundef %28) #9
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %22, i32 noundef %2) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3.if.end8_crit_edge
  %29 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resource, align 4
  %req_lock10 = getelementptr inbounds %struct.drbd_resource, ptr %30, i32 0, i32 12
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock10) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_oldest_requests_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @device_oldest_requests_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_device)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_oldest_requests_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_device(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_oldest_requests_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.87) #9
  %req_lock = getelementptr inbounds %struct.drbd_resource, ptr %3, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %req_lock) #9
  %arrayidx = getelementptr %struct.drbd_device, ptr %1, i32 0, i32 45, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %cmp3.not = icmp eq ptr %6, %arrayidx
  %add.ptr = getelementptr i8, ptr %6, i32 -88
  %spec.select = select i1 %cmp3.not, ptr null, ptr %add.ptr
  %arrayidx6 = getelementptr %struct.drbd_device, ptr %1, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx6, align 4
  %cmp14.not = icmp eq ptr %8, %arrayidx6
  %add.ptr18 = getelementptr i8, ptr %8, i32 -96
  %cond21 = select i1 %cmp14.not, ptr null, ptr %add.ptr18
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %spec.select, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool22.not = icmp eq ptr %cond21, null
  %cmp23.not = icmp eq ptr %cond21, %spec.select
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.end.for.inc_crit_edge, label %if.then24

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %cond21, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.drbd_device, ptr %1, i32 0, i32 45, i32 0
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.1, align 4
  %cmp3.not.1 = icmp eq ptr %10, %arrayidx.1
  %add.ptr.1 = getelementptr i8, ptr %10, i32 -88
  %spec.select.1 = select i1 %cmp3.not.1, ptr null, ptr %add.ptr.1
  %arrayidx6.1 = getelementptr %struct.drbd_device, ptr %1, i32 0, i32 46, i32 0
  %11 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx6.1, align 4
  %cmp14.not.1 = icmp eq ptr %12, %arrayidx6.1
  %add.ptr18.1 = getelementptr i8, ptr %12, i32 -96
  %cond21.1 = select i1 %cmp14.not.1, ptr null, ptr %add.ptr18.1
  %tobool.not.1 = icmp eq ptr %spec.select.1, null
  br i1 %tobool.not.1, label %for.inc.if.end.1_crit_edge, label %if.then.1

for.inc.if.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %spec.select.1, i32 noundef %4)
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %for.inc.if.end.1_crit_edge
  %tobool22.not.1 = icmp eq ptr %cond21.1, null
  %cmp23.not.1 = icmp eq ptr %cond21.1, %spec.select.1
  %or.cond.1 = select i1 %tobool22.not.1, i1 true, i1 %cmp23.not.1
  br i1 %or.cond.1, label %if.end.1.for.inc.1_crit_edge, label %if.then24.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then24.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @seq_print_one_request(ptr noundef %m, ptr noundef nonnull %cond21.1, i32 noundef %4)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then24.1, %if.end.1.for.inc.1_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %req_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drbd_destroy_device(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_act_log_extents_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @device_act_log_extents_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_device)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_act_log_extents_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_device(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_act_log_extents_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %state.i, align 8
  %3 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #9, !srcloc !259
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %6 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %1) #9
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %act_log = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 83
  %7 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %act_log, align 4
  tail call void @lc_seq_printf_stats(ptr noundef %m, ptr noundef %8) #9
  %9 = ptrtoint ptr %act_log to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %act_log, align 4
  tail call void @lc_seq_dump_details(ptr noundef %m, ptr noundef %10, ptr noundef nonnull @.str.88, ptr noundef null) #9
  tail call fastcc void @put_ldev(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6.i, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_seq_printf_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lc_seq_dump_details(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_ldev(ptr noundef %device) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 27
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %state, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 15
  %local_cnt = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @llvm.prefetch.p0(ptr %local_cnt, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt, ptr %local_cnt, i32 1, ptr elementtype(i32) %local_cnt) #9, !srcloc !261
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, -1
  br i1 %cmp, label %do.end3, label %do.end3.thread

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdisk = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 18
  %2 = ptrtoint ptr %vdisk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdisk, align 4
  %part0 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %5, i32 0, i32 10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.15, ptr noundef %bd_device, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.91, i32 noundef 2099) #12
  br label %if.end15

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp4 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp4, label %if.then5, label %do.end3.if.end15_crit_edge

do.end3.if.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then5:                                         ; preds = %do.end3
  %6 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear, label %if.then5.if.end14_crit_edge [
    i32 0, label %if.then7
    i32 2, label %if.then10
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %if.then5
  %flags.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then7.if.end14_crit_edge

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i:                                        ; preds = %if.then7
  %peer_devices.i.i = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %7 = ptrtoint ptr %peer_devices.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %peer_devices.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %8, %peer_devices.i.i
  %spec.select.i.i = select i1 %cmp.not.i.i, ptr null, ptr %8
  %connection2.i = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %connection2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %connection2.i, align 4
  %flags3.i = getelementptr inbounds %struct.drbd_connection, ptr %10, i32 0, i32 10
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end14.sink.split_crit_edge, label %if.then.i.if.end14_crit_edge

if.then.i.if.end14_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i.if.end14.sink.split_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.then10:                                        ; preds = %if.then5
  %flags = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 14
  %call11 = tail call i32 @_test_and_set_bit(i32 noundef 22, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then12, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  %call.i25 = tail call i32 @_test_and_set_bit(i32 noundef 23, ptr noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %if.then.i34, label %if.then12.if.end14_crit_edge

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i34:                                      ; preds = %if.then12
  %peer_devices.i.i27 = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 1
  %11 = ptrtoint ptr %peer_devices.i.i27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %peer_devices.i.i27, align 4
  %cmp.not.i.i28 = icmp eq ptr %12, %peer_devices.i.i27
  %spec.select.i.i29 = select i1 %cmp.not.i.i28, ptr null, ptr %12
  %connection2.i30 = getelementptr inbounds %struct.drbd_peer_device, ptr %spec.select.i.i29, i32 0, i32 2
  %13 = ptrtoint ptr %connection2.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connection2.i30, align 4
  %flags3.i31 = getelementptr inbounds %struct.drbd_connection, ptr %14, i32 0, i32 10
  %call4.i32 = tail call i32 @_test_and_set_bit(i32 noundef 12, ptr noundef %flags3.i31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i32)
  %tobool5.not.i33 = icmp eq i32 %call4.i32, 0
  br i1 %tobool5.not.i33, label %if.then.i34.if.end14.sink.split_crit_edge, label %if.then.i34.if.end14_crit_edge

if.then.i34.if.end14_crit_edge:                   ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i34.if.end14.sink.split_crit_edge:        ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.then.i34.if.end14.sink.split_crit_edge, %if.then.i.if.end14.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.then.i.if.end14.sink.split_crit_edge ], [ %14, %if.then.i34.if.end14.sink.split_crit_edge ]
  %q_wait.i35 = getelementptr inbounds %struct.drbd_connection, ptr %.sink, i32 0, i32 45, i32 2
  tail call void @__wake_up(ptr noundef %q_wait.i35, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.then.i34.if.end14_crit_edge, %if.then12.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.then.i.if.end14_crit_edge, %if.then7.if.end14_crit_edge, %if.then5.if.end14_crit_edge
  %misc_wait = getelementptr inbounds %struct.drbd_device, ptr %device, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %misc_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %do.end3.if.end15_crit_edge, %do.end3.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_resync_extents_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @device_resync_extents_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_device)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_resync_extents_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_device(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_resync_extents_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef 0) #9
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %state.i, align 8
  %3 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #9, !srcloc !259
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %6 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.then

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %1) #9
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %resync = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 65
  %7 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resync, align 4
  tail call void @lc_seq_printf_stats(ptr noundef %m, ptr noundef %8) #9
  %9 = ptrtoint ptr %resync to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resync, align 4
  tail call void @lc_seq_dump_details(ptr noundef %m, ptr noundef %10, ptr noundef nonnull @.str.92, ptr noundef nonnull @resync_dump_detail) #9
  tail call fastcc void @put_ldev(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6.i, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resync_dump_detail(ptr noundef %m, ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %e, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %flags = getelementptr i8, ptr %e, i32 -4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %cond = select i1 %tobool.not, ptr @.str.95, ptr @.str.94
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %cond4 = select i1 %tobool3.not, ptr @.str.97, ptr @.str.96
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  %cond8 = select i1 %tobool7.not, ptr @.str.99, ptr @.str.98
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.93, i32 noundef %1, ptr noundef nonnull %cond, ptr noundef nonnull %cond4, ptr noundef nonnull %cond8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_data_gen_id_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @device_data_gen_id_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_device)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_data_gen_id_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_device(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_data_gen_id_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %state.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %state.i, align 8
  %3 = and i32 %bf.load.i, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %local_cnt.i = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %local_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %local_cnt.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %local_cnt.i, ptr %local_cnt.i, i32 1, ptr elementtype(i32) %local_cnt.i) #9, !srcloc !259
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load2.i = load i32, ptr %state.i, align 8
  %6 = and i32 %bf.load2.i, 7168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 0
  br i1 %cmp5.not.i, label %if.then6.i, label %if.end

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_ldev(ptr noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ldev = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %ldev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ldev, align 4
  %uuid_lock = getelementptr inbounds %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %uuid_lock) #9
  %arrayidx = getelementptr %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 3, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i64 noundef %10) #9
  %arrayidx.1 = getelementptr %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i64 noundef %12) #9
  %arrayidx.2 = getelementptr %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i64 noundef %14) #9
  %arrayidx.3 = getelementptr %struct.drbd_backing_dev, ptr %8, i32 0, i32 2, i32 3, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i64 noundef %16) #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %uuid_lock) #9
  tail call fastcc void @put_ldev(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_ed_gen_id_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call = tail call fastcc i32 @drbd_single_open(ptr noundef %file, ptr noundef nonnull @device_ed_gen_id_show, ptr noundef %1, ptr noundef %kref, ptr noundef nonnull @drbd_destroy_device)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_ed_gen_id_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %kref = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 13
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !249
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !250
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !251

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void @drbd_destroy_device(ptr noundef %kref) #9, !callees !253
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call1 = tail call i32 @single_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_ed_gen_id_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ed_uuid = getelementptr inbounds %struct.drbd_device, ptr %1, i32 0, i32 92
  %2 = ptrtoint ptr %ed_uuid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ed_uuid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.100, i64 noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbd_version_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @drbd_version_show, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drbd_version_show(ptr noundef %m, ptr nocapture noundef readnone %ignored) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drbd_buildtag() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.101, ptr noundef %call) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.104, i32 noundef 1) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.105, i32 noundef 86) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.106, i32 noundef 101) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drbd_buildtag() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !199, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237}
!llvm.named.register.sp = !{!239}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 472, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 475, i32 30}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 478, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 628, i32 30}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 631, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 636, i32 31}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 782, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 787, i32 37}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 804, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 805, i32 2}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 806, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 807, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 813, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @drbd_debugfs_device_add._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @drbd_debugfs_device_add._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 880, i32 30}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 883, i32 31}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 886, i32 30}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 889, i32 30}
!40 = !{ptr @drbd_debugfs_root, !41, !"drbd_debugfs_root", i1 false, i1 false}
!41 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 20, i32 23}
!42 = !{ptr @drbd_debugfs_version, !43, !"drbd_debugfs_version", i1 false, i1 false}
!43 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 21, i32 23}
!44 = !{ptr @drbd_debugfs_resources, !45, !"drbd_debugfs_resources", i1 false, i1 false}
!45 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 22, i32 23}
!46 = !{ptr @drbd_debugfs_minors, !47, !"drbd_debugfs_minors", i1 false, i1 false}
!47 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 23, i32 23}
!48 = !{ptr @in_flight_summary_fops, !49, !"in_flight_summary_fops", i1 false, i1 false}
!49 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 457, i32 37}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 373, i32 16}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 375, i32 14}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 379, i32 14}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 383, i32 14}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 390, i32 17}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 393, i32 17}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 398, i32 14}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 402, i32 14}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 406, i32 14}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 412, i32 17}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 221, i32 14}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 208, i32 17}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 133, i32 14}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 143, i32 18}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 147, i32 17}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 149, i32 19}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 150, i32 18}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 274, i32 14}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 281, i32 17}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 257, i32 18}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 259, i32 17}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 235, i32 54}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 235, i32 67}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 236, i32 56}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 236, i32 71}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 237, i32 62}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 238, i32 57}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 239, i32 58}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 240, i32 47}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 241, i32 50}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 242, i32 53}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 161, i32 14}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 182, i32 19}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 185, i32 18}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 309, i32 14}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 102, i32 16}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 105, i32 20}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 105, i32 26}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 108, i32 16}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 30, i32 17}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 58, i32 16}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 59, i32 16}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 59, i32 50}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 59, i32 62}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 62, i32 14}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 64, i32 52}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 65, i32 58}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 69, i32 56}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 70, i32 51}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 72, i32 15}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 75, i32 16}
!159 = !{ptr @.str.75, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 78, i32 53}
!161 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 79, i32 51}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 80, i32 51}
!165 = !{ptr @.str.78, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 81, i32 50}
!167 = !{ptr @.str.79, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 86, i32 16}
!169 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 88, i32 58}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 90, i32 55}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 93, i32 16}
!175 = !{ptr @connection_callback_history_fops, !176, !"connection_callback_history_fops", i1 false, i1 false}
!176 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 565, i32 37}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 545, i32 14}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 546, i32 30}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 547, i32 30}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 511, i32 16}
!185 = !{ptr @connection_oldest_requests_fops, !186, !"connection_oldest_requests_fops", i1 false, i1 false}
!186 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 612, i32 37}
!187 = !{ptr @device_oldest_requests_fops, !188, !"device_oldest_requests_fops", i1 false, i1 false}
!188 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 765, i32 1}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 701, i32 14}
!191 = !{ptr @device_act_log_extents_fops, !192, !"device_act_log_extents_fops", i1 false, i1 false}
!192 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 766, i32 1}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 684, i32 43}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/block/drbd/drbd_int.h", i32 2099, i32 2}
!197 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @put_ldev._entry, !196, !"_entry", i1 false, i1 false}
!200 = !{ptr @put_ldev._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @device_resync_extents_fops, !202, !"device_resync_extents_fops", i1 false, i1 false}
!202 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 767, i32 1}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 669, i32 42}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 653, i32 22}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 654, i32 44}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 654, i32 58}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 655, i32 41}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 655, i32 52}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 656, i32 43}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 656, i32 56}
!219 = !{ptr @device_data_gen_id_fops, !220, !"device_data_gen_id_fops", i1 false, i1 false}
!220 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 768, i32 1}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 730, i32 17}
!223 = !{ptr @device_ed_gen_id_fops, !224, !"device_ed_gen_id_fops", i1 false, i1 false}
!224 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 769, i32 1}
!225 = !{ptr @drbd_version_fops, !226, !"drbd_version_fops", i1 false, i1 false}
!226 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 858, i32 37}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 845, i32 16}
!229 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 846, i32 16}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 846, i32 32}
!233 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 847, i32 16}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 848, i32 16}
!237 = !{ptr @.str.106, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/block/drbd/drbd_debugfs.c", i32 849, i32 16}
!239 = !{!"sp"}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i64 2148325027}
!250 = !{i64 2148239491, i64 2148239523, i64 2148239552, i64 2148239586, i64 2148239617, i64 2148239640}
!251 = !{!"branch_weights", i32 2000, i32 1}
!252 = !{i64 2149331475}
!253 = !{ptr @drbd_destroy_connection, ptr @drbd_destroy_device, ptr @drbd_destroy_resource, ptr @drbd_req_destroy}
!254 = !{i64 719232, i64 719256, i64 719277, i64 719294, i64 719311}
!255 = !{i64 2149381965}
!256 = !{i64 2149382231}
!257 = !{i64 2148237026, i64 2148237058, i64 2148237087, i64 2148237121, i64 2148237152, i64 2148237175}
!258 = !{!"branch_weights", i32 1, i32 2000}
!259 = !{i64 2148235496, i64 2148235522, i64 2148235551, i64 2148235585, i64 2148235616, i64 2148235639}
!260 = !{i64 2148323948}
!261 = !{i64 2148238681, i64 2148238713, i64 2148238742, i64 2148238776, i64 2148238807, i64 2148238830}
!262 = !{i64 2148324177}
