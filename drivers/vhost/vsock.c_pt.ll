; ModuleID = '/llk/IR_all_yes/drivers/vhost/vsock.c_pt.bc'
source_filename = "../drivers/vhost/vsock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_transport = type { %struct.vsock_transport, ptr }
%struct.vsock_transport = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vhost_vsock = type { %struct.vhost_dev, [2 x %struct.vhost_virtqueue], %struct.hlist_node, %struct.vhost_work, %struct.spinlock, %struct.list_head, %struct.atomic_t, i32, i8 }
%struct.vhost_dev = type { ptr, %struct.mutex, ptr, i32, ptr, %struct.llist_head, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i64, i8, ptr }
%struct.llist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vhost_virtqueue = type { ptr, %struct.mutex, i32, ptr, ptr, ptr, [3 x ptr], ptr, %struct.vhost_vring_call, ptr, ptr, %struct.vhost_poll, ptr, i16, i16, i16, i16, i16, i8, i8, i64, [1024 x %struct.iovec], [64 x %struct.iovec], ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, [64 x %struct.iovec], i8, i8, i32 }
%struct.vhost_vring_call = type { ptr, %struct.irq_bypass_producer }
%struct.irq_bypass_producer = type { %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr }
%struct.vhost_poll = type { %struct.poll_table_struct, ptr, %struct.wait_queue_entry, %struct.vhost_work, i32, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iovec = type { ptr, i32 }
%struct.vhost_work = type { %struct.llist_node, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.virtio_vsock_pkt = type { %struct.virtio_vsock_hdr, %struct.list_head, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.virtio_vsock_hdr = type <{ i64, i64, i32, i32, i32, i16, i16, i32, i32, i32 }>
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%struct.vsock_sock = type { %struct.sock, ptr, %struct.sockaddr_vm, %struct.sockaddr_vm, %struct.list_head, %struct.list_head, i8, i8, i32, ptr, i32, ptr, %struct.list_head, %struct.list_head, i8, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i8, i32, i8, i8, i64, i64, i64, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.81 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.sockaddr_vm = type { i16, i16, i32, i32, i8, [3 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@vhost_vsock_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 241, ptr @.str, ptr @vhost_vsock_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@vhost_transport = internal global { %struct.virtio_transport, [52 x i8] } { %struct.virtio_transport { %struct.vsock_transport { ptr null, ptr @virtio_transport_do_socket_init, ptr @virtio_transport_destruct, ptr @virtio_transport_release, ptr @vhost_transport_cancel_pkt, ptr @virtio_transport_connect, ptr @virtio_transport_dgram_bind, ptr @virtio_transport_dgram_dequeue, ptr @virtio_transport_dgram_enqueue, ptr @virtio_transport_dgram_allow, ptr @virtio_transport_stream_dequeue, ptr @virtio_transport_stream_enqueue, ptr @virtio_transport_stream_has_data, ptr @virtio_transport_stream_has_space, ptr @virtio_transport_stream_rcvhiwat, ptr @virtio_transport_stream_is_active, ptr @virtio_transport_stream_allow, ptr @virtio_transport_seqpacket_dequeue, ptr @virtio_transport_seqpacket_enqueue, ptr @vhost_transport_seqpacket_allow, ptr @virtio_transport_seqpacket_has_data, ptr @virtio_transport_notify_poll_in, ptr @virtio_transport_notify_poll_out, ptr @virtio_transport_notify_recv_init, ptr @virtio_transport_notify_recv_pre_block, ptr @virtio_transport_notify_recv_pre_dequeue, ptr @virtio_transport_notify_recv_post_dequeue, ptr @virtio_transport_notify_send_init, ptr @virtio_transport_notify_send_pre_block, ptr @virtio_transport_notify_send_pre_enqueue, ptr @virtio_transport_notify_send_post_enqueue, ptr @virtio_transport_notify_buffer_size, ptr @virtio_transport_shutdown, ptr @vhost_transport_get_local_cid }, ptr @vhost_transport_send_pkt }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_vhost_vsock__487_976_vhost_vsock_init6 = internal global ptr @vhost_vsock_init, section ".initcall6.init", align 4
@__exitcall_vhost_vsock_exit = internal global ptr @vhost_vsock_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file488 = internal constant [43 x i8] c"vhost_vsock.file=drivers/vhost/vhost_vsock\00", section ".modinfo", align 1
@__UNIQUE_ID_license489 = internal constant [27 x i8] c"vhost_vsock.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author490 = internal constant [28 x i8] c"vhost_vsock.author=Asias He\00", section ".modinfo", align 1
@__UNIQUE_ID_description491 = internal constant [51 x i8] c"vhost_vsock.description=vhost transport for vsock \00", section ".modinfo", align 1
@__UNIQUE_ID_alias492 = internal constant [36 x i8] c"vhost_vsock.alias=char-major-10-241\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [38 x i8] c"vhost_vsock.alias=devname:vhost-vsock\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vhost-vsock\00", [20 x i8] zeroinitializer }, align 32
@vhost_vsock_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr @vhost_vsock_chr_read_iter, ptr @vhost_vsock_chr_write_iter, ptr null, ptr null, ptr null, ptr @vhost_vsock_chr_poll, ptr @vhost_vsock_dev_ioctl, ptr null, ptr null, i32 0, ptr @vhost_vsock_dev_open, ptr null, ptr @vhost_vsock_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vhost_vsock_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vhost_vsock_mutex, i64 52), ptr getelementptr (i8, ptr @vhost_vsock_mutex, i64 52) }, ptr @vhost_vsock_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@vhost_vsock_hash = internal global [256 x %struct.hlist_head] zeroinitializer, section ".data..read_mostly", align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vhost_vsock_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vhost_vsock_mutex\00", [46 x i8] zeroinitializer }, align 32
@vhost_vsock_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/vhost/vsock.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@vhost_vsock_dev_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&vsock->send_pkt_list_lock\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vhost_vsock_handle_tx_kick.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vhost_vsock\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vhost_vsock_handle_tx_kick\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Faulted on pkt\0A\00", [16 x i8] zeroinitializer }, align 32
@vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.6, ptr @.str.13, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vhost_vsock_alloc_pkt\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Expected 0 input buffers, got %u\0A\00", [62 x i8] zeroinitializer }, align 32
@vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.6, ptr @.str.14, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Expected %zu bytes for pkt->hdr, got %zu bytes\0A\00", [48 x i8] zeroinitializer }, align 32
@vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.6, ptr @.str.15, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Expected %u byte payload, got %zu bytes\0A\00", [55 x i8] zeroinitializer }, align 32
@vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vhost_transport_do_send_pkt\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Expected 0 output buffers, got %u\0A\00", [61 x i8] zeroinitializer }, align 32
@vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str.6, ptr @.str.18, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Buffer len [%zu] too small\0A\00", [36 x i8] zeroinitializer }, align 32
@vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str.6, ptr @.str.19, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Faulted on copying pkt hdr\0A\00", [36 x i8] zeroinitializer }, align 32
@vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.16, ptr @.str.6, ptr @.str.20, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Faulted on copying pkt buf\0A\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1074048865, i64 1074310912, i64 1074310949, i64 1074311008, i64 2148052736, i64 2148052774]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 64, i64 0, i64 1, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"vhost_vsock_misc\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 953, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"vhost_transport\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 429, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 955, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"vhost_vsock_fops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 941, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 230, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 214, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 156, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"vhost_vsock_mutex\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 43, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 75, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 696, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 537, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 365, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 378, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 406, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 157, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 164, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 205, i32 4 }
@___asan_gen_.102 = private constant [25 x i8] c"../drivers/vhost/vsock.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 213, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 695, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 723, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias492, ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_author490, ptr @__UNIQUE_ID_description491, ptr @__UNIQUE_ID_file488, ptr @__UNIQUE_ID_license489, ptr @__exitcall_vhost_vsock_exit, ptr @__initcall__kmod_vhost_vsock__487_976_vhost_vsock_init6, ptr @vhost_vsock_exit, ptr @vhost_vsock_misc, ptr @vhost_transport, ptr @.str, ptr @vhost_vsock_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vhost_vsock_mutex, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vhost_vsock_dev_open.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vsock_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_transport to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vsock_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vsock_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhost_vsock_dev_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vsock_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @misc_deregister(ptr noundef nonnull @vhost_vsock_misc) #11
  tail call void @vsock_core_unregister(ptr noundef nonnull @vhost_transport) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsock_core_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vsock_core_register(ptr noundef nonnull @vhost_transport, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @misc_register(ptr noundef nonnull @vhost_vsock_misc) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_chr_read_iter(ptr nocapture noundef readonly %iocb, ptr noundef %to) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %f_flags = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 2048
  %call = tail call i32 @vhost_chr_read_iter(ptr noundef %3, ptr noundef %to, i32 noundef %and) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_chr_write_iter(ptr nocapture noundef readonly %iocb, ptr noundef %from) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @vhost_chr_write_iter(ptr noundef %3, ptr noundef %from) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_chr_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @vhost_chr_poll(ptr noundef %file, ptr noundef %1, ptr noundef %wait) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_dev_ioctl(ptr nocapture noundef readonly %f, i32 noundef %ioctl, i32 noundef %arg) #2 align 64 {
entry:
  %guest_cid = alloca i64, align 8
  %features = alloca i64, align 8
  %start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %guest_cid) #11
  %3 = ptrtoint ptr %guest_cid to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %guest_cid, align 8, !annotation !88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %features) #11
  %4 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %features, align 8, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #11
  %5 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %start, align 4, !annotation !88
  %6 = zext i32 %ioctl to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ioctl, label %sw.default [
    i32 1074311008, label %if.end8.i.i
    i32 1074048865, label %if.end8.i.i73
    i32 -2146914560, label %sw.bb11
    i32 1074310912, label %if.end8.i.i102
    i32 -2146914522, label %sw.bb22
    i32 1074310949, label %if.end8.i.i138
  ]

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !90

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %guest_cid, i32 noundef 8) #11
  %8 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !91
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %guest_cid, ptr noundef %2, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !90

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i182 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i182
  %add.ptr.i.i = getelementptr i8, ptr %guest_cid, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i182)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %12 = ptrtoint ptr %guest_cid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %guest_cid, align 8
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.24)
  switch i64 %13, label %if.end.i [
    i64 4294967295, label %if.end.cleanup_crit_edge
    i64 2, label %if.end.cleanup_crit_edge205
    i64 1, label %if.end.cleanup_crit_edge206
    i64 0, label %if.end.cleanup_crit_edge207
  ]

if.end.cleanup_crit_edge207:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge206:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge205:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %13)
  %cmp2.i = icmp ugt i64 %13, 4294967295
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = trunc i64 %13 to i32
  %call.i = call zeroext i1 @vsock_find_cid(i32 noundef %conv.i) #11
  br i1 %call.i, label %if.end4.i.cleanup_crit_edge, label %if.end6.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end4.i
  call void @mutex_lock_nested(ptr noundef nonnull @vhost_vsock_mutex, i32 noundef 0) #11
  %call8.i = call fastcc ptr @vhost_vsock_get(i32 noundef %conv.i) #11
  %tobool.not.i = icmp eq ptr %call8.i, null
  %cmp9.not.i = icmp eq ptr %call8.i, %1
  %or.cond33.i = or i1 %tobool.not.i, %cmp9.not.i
  br i1 %or.cond33.i, label %if.end12.i, label %if.end6.i.cleanup.sink.split.i_crit_edge

if.end6.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.end12.i:                                       ; preds = %if.end6.i
  %guest_cid13.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %guest_cid13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %guest_cid13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not.i = icmp eq i32 %15, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end16.i_crit_edge, label %if.then15.i

if.end12.i.if.end16.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then15.i:                                      ; preds = %if.end12.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.not.i.i.i, label %if.then15.i.if.end16.i_crit_edge, label %if.then.i.i.i

if.then15.i.if.end16.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then.i.i.i:                                    ; preds = %if.then15.i
  %hash.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hash.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %17, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %22 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %__hlist_del.exit.i.i.i, %if.then15.i.if.end16.i_crit_edge, %if.end12.i.if.end16.i_crit_edge
  %23 = ptrtoint ptr %guest_cid13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %guest_cid13.i, align 4
  %hash19.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 2
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr [256 x %struct.hlist_head], ptr @vhost_vsock_hash, i32 0, i32 %shr.i.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %hash19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %hash19.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !94
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hash19.i, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end16.i.cleanup.sink.split.i_crit_edge, label %do.body49.i.i

if.end16.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.body49.i.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %hash19.i, ptr %pprev51.i.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.body49.i.i, %if.end16.i.cleanup.sink.split.i_crit_edge, %if.end6.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -98, %if.end6.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end16.i.cleanup.sink.split.i_crit_edge ], [ 0, %do.body49.i.i ]
  call void @mutex_unlock(ptr noundef nonnull @vhost_vsock_mutex) #11
  br label %cleanup

if.end8.i.i73:                                    ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #11
  %call.i.i74 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i74, label %if.end8.i.i73.if.then11.i.i90_crit_edge, label %land.lhs.true.i.i77

if.end8.i.i73.if.then11.i.i90_crit_edge:          ; preds = %if.end8.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i90

land.lhs.true.i.i77:                              ; preds = %if.end8.i.i73
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i75 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i75)
  %cmp.i6.i76 = icmp eq i32 %asmresult.i.i75, 0
  br i1 %cmp.i6.i76, label %if.end.i.i87, label %land.lhs.true.i.i77.if.then11.i.i90_crit_edge, !prof !90

land.lhs.true.i.i77.if.then11.i.i90_crit_edge:    ; preds = %land.lhs.true.i.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i90

if.end.i.i87:                                     ; preds = %land.lhs.true.i.i77
  %call.i.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %start, i32 noundef 4) #11
  %31 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i79 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i79 to ptr
  %cpu_domain.i.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i80) #4, !srcloc !91
  %and.i.i.i.i81 = and i32 %33, -13
  %or.i.i.i.i82 = or i32 %and.i.i.i.i81, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i82) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i83 = call i32 @arm_copy_from_user(ptr noundef nonnull %start, ptr noundef %2, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i83)
  %tobool4.not.i.i86 = icmp eq i32 %call1.i.i.i83, 0
  br i1 %tobool4.not.i.i86, label %if.end6, label %if.end.i.i87.if.then11.i.i90_crit_edge, !prof !90

if.end.i.i87.if.then11.i.i90_crit_edge:           ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i90

if.then11.i.i90:                                  ; preds = %if.end.i.i87.if.then11.i.i90_crit_edge, %land.lhs.true.i.i77.if.then11.i.i90_crit_edge, %if.end8.i.i73.if.then11.i.i90_crit_edge
  %res.0.i.i85187 = phi i32 [ %call1.i.i.i83, %if.end.i.i87.if.then11.i.i90_crit_edge ], [ 4, %if.end8.i.i73.if.then11.i.i90_crit_edge ], [ 4, %land.lhs.true.i.i77.if.then11.i.i90_crit_edge ]
  %sub.i.i88 = sub i32 4, %res.0.i.i85187
  %add.ptr.i.i89 = getelementptr i8, ptr %start, i32 %sub.i.i88
  %34 = call ptr @memset(ptr %add.ptr.i.i89, i32 0, i32 %res.0.i.i85187)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i87
  %35 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not = icmp eq i32 %36, 0
  %mutex.i163 = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i163, i32 noundef 0) #11
  %call.i164 = call i32 @vhost_dev_check_owner(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool2.not.i = icmp eq i32 %call.i164, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  br i1 %tobool2.not.i, label %for.body.preheader.i, label %if.then8.vhost_vsock_start.exit_crit_edge

if.then8.vhost_vsock_start.exit_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhost_vsock_start.exit

for.body.preheader.i:                             ; preds = %if.then8
  %arrayidx.i161 = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0
  %mutex2.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex2.i, i32 noundef 0) #11
  %call3.i = call zeroext i1 @vhost_vq_access_ok(ptr noundef %arrayidx.i161) #11
  br i1 %call3.i, label %if.end5.i, label %for.body.preheader.i.err_vq.i_crit_edge

for.body.preheader.i.err_vq.i_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vq.i

if.end5.i:                                        ; preds = %for.body.preheader.i
  %private_data.i.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 27
  %37 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private_data.i.i, align 8
  %tobool7.not.i = icmp eq ptr %38, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end5.i
  %39 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %private_data.i.i, align 8
  %call9.i = call i32 @vhost_vq_init_access(ptr noundef %arrayidx.i161) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end13.i_crit_edge, label %if.then8.i.err_vq.i_crit_edge

if.then8.i.err_vq.i_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vq.i

if.then8.i.if.end13.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex2.i) #11
  %arrayidx.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1
  %mutex2.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex2.1.i, i32 noundef 0) #11
  %call3.1.i = call zeroext i1 @vhost_vq_access_ok(ptr noundef %arrayidx.1.i) #11
  br i1 %call3.1.i, label %if.end5.1.i, label %if.end13.i.err_vq.i_crit_edge

if.end13.i.err_vq.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vq.i

if.end5.1.i:                                      ; preds = %if.end13.i
  %private_data.i.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 27
  %40 = ptrtoint ptr %private_data.i.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private_data.i.1.i, align 8
  %tobool7.not.1.i = icmp eq ptr %41, null
  br i1 %tobool7.not.1.i, label %if.then8.1.i, label %if.end5.1.i.if.end13.1.i_crit_edge

if.end5.1.i.if.end13.1.i_crit_edge:               ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.1.i

if.then8.1.i:                                     ; preds = %if.end5.1.i
  %42 = ptrtoint ptr %private_data.i.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %private_data.i.1.i, align 8
  %call9.1.i = call i32 @vhost_vq_init_access(ptr noundef %arrayidx.1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1.i)
  %tobool10.not.1.i = icmp eq i32 %call9.1.i, 0
  br i1 %tobool10.not.1.i, label %if.then8.1.i.if.end13.1.i_crit_edge, label %if.then8.1.i.err_vq.i_crit_edge

if.then8.1.i.err_vq.i_crit_edge:                  ; preds = %if.then8.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_vq.i

if.then8.1.i.if.end13.1.i_crit_edge:              ; preds = %if.then8.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.1.i

if.end13.1.i:                                     ; preds = %if.then8.1.i.if.end13.1.i_crit_edge, %if.end5.1.i.if.end13.1.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex2.1.i) #11
  %send_pkt_work.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 3
  call void @vhost_work_queue(ptr noundef %1, ptr noundef %send_pkt_work.i) #11
  br label %vhost_vsock_start.exit

err_vq.i:                                         ; preds = %if.then8.1.i.err_vq.i_crit_edge, %if.end13.i.err_vq.i_crit_edge, %if.then8.i.err_vq.i_crit_edge, %for.body.preheader.i.err_vq.i_crit_edge
  %i.061.lcssa.i = phi i32 [ 0, %for.body.preheader.i.err_vq.i_crit_edge ], [ 0, %if.then8.i.err_vq.i_crit_edge ], [ 1, %if.end13.i.err_vq.i_crit_edge ], [ 1, %if.then8.1.i.err_vq.i_crit_edge ]
  %mutex2.lcssa.i = phi ptr [ %mutex2.i, %for.body.preheader.i.err_vq.i_crit_edge ], [ %mutex2.i, %if.then8.i.err_vq.i_crit_edge ], [ %mutex2.1.i, %if.end13.i.err_vq.i_crit_edge ], [ %mutex2.1.i, %if.then8.1.i.err_vq.i_crit_edge ]
  %ret.0.i = phi i32 [ -14, %for.body.preheader.i.err_vq.i_crit_edge ], [ %call9.i, %if.then8.i.err_vq.i_crit_edge ], [ -14, %if.end13.i.err_vq.i_crit_edge ], [ %call9.1.i, %if.then8.1.i.err_vq.i_crit_edge ]
  %private_data1.i58.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 %i.061.lcssa.i, i32 27
  %43 = ptrtoint ptr %private_data1.i58.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %private_data1.i58.i, align 8
  call void @mutex_unlock(ptr noundef %mutex2.lcssa.i) #11
  call void @mutex_lock_nested(ptr noundef %mutex2.i, i32 noundef 0) #11
  %private_data1.i59.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 27
  %44 = ptrtoint ptr %private_data1.i59.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %private_data1.i59.i, align 8
  call void @mutex_unlock(ptr noundef %mutex2.i) #11
  %mutex24.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex24.1.i, i32 noundef 0) #11
  %private_data1.i59.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 27
  %45 = ptrtoint ptr %private_data1.i59.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %private_data1.i59.1.i, align 8
  call void @mutex_unlock(ptr noundef %mutex24.1.i) #11
  br label %vhost_vsock_start.exit

vhost_vsock_start.exit:                           ; preds = %err_vq.i, %if.end13.1.i, %if.then8.vhost_vsock_start.exit_crit_edge
  %retval.0.i162 = phi i32 [ 0, %if.end13.1.i ], [ %call.i164, %if.then8.vhost_vsock_start.exit_crit_edge ], [ %ret.0.i, %err_vq.i ]
  call void @mutex_unlock(ptr noundef %mutex.i163) #11
  br label %cleanup

if.else:                                          ; preds = %if.end6
  br i1 %tobool2.not.i, label %if.end4.i166, label %if.else.vhost_vsock_stop.exit_crit_edge

if.else.vhost_vsock_stop.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhost_vsock_stop.exit

if.end4.i166:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %mutex5.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex5.i, i32 noundef 0) #11
  %private_data1.i.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 27
  %46 = ptrtoint ptr %private_data1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %private_data1.i.i, align 8
  call void @mutex_unlock(ptr noundef %mutex5.i) #11
  %mutex5.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex5.1.i, i32 noundef 0) #11
  %private_data1.i.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 27
  %47 = ptrtoint ptr %private_data1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %private_data1.i.1.i, align 8
  call void @mutex_unlock(ptr noundef %mutex5.1.i) #11
  br label %vhost_vsock_stop.exit

vhost_vsock_stop.exit:                            ; preds = %if.end4.i166, %if.else.vhost_vsock_stop.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i163) #11
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %48 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 13908312066, ptr %features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #11
  %call.i.i94 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i94, label %sw.bb11.cleanup_crit_edge, label %if.end.i.i96

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i96:                                     ; preds = %sw.bb11
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #14, !srcloc !95
  %asmresult.i.i95 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i95)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i95, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i96.cleanup_crit_edge

if.end.i.i96.cleanup_crit_edge:                   ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i97 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features, i32 noundef 8) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %features, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool13.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %cleanup

if.end8.i.i102:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #11
  %call.i.i103 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i103, label %if.end8.i.i102.if.then11.i.i120_crit_edge, label %land.lhs.true.i.i107

if.end8.i.i102.if.then11.i.i120_crit_edge:        ; preds = %if.end8.i.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i120

land.lhs.true.i.i107:                             ; preds = %if.end8.i.i102
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i105 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i105)
  %cmp.i6.i106 = icmp eq i32 %asmresult.i.i105, 0
  br i1 %cmp.i6.i106, label %if.end.i.i117, label %land.lhs.true.i.i107.if.then11.i.i120_crit_edge, !prof !90

land.lhs.true.i.i107.if.then11.i.i120_crit_edge:  ; preds = %land.lhs.true.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i120

if.end.i.i117:                                    ; preds = %land.lhs.true.i.i107
  %call.i.i.i108 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features, i32 noundef 8) #11
  %51 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i109 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i.i109 to ptr
  %cpu_domain.i.i.i.i.i110 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i110) #4, !srcloc !91
  %and.i.i.i.i111 = and i32 %53, -13
  %or.i.i.i.i112 = or i32 %and.i.i.i.i111, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i112) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i113 = call i32 @arm_copy_from_user(ptr noundef nonnull %features, ptr noundef %2, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i113)
  %tobool4.not.i.i116 = icmp eq i32 %call1.i.i.i113, 0
  br i1 %tobool4.not.i.i116, label %if.end20, label %if.end.i.i117.if.then11.i.i120_crit_edge, !prof !90

if.end.i.i117.if.then11.i.i120_crit_edge:         ; preds = %if.end.i.i117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i120

if.then11.i.i120:                                 ; preds = %if.end.i.i117.if.then11.i.i120_crit_edge, %land.lhs.true.i.i107.if.then11.i.i120_crit_edge, %if.end8.i.i102.if.then11.i.i120_crit_edge
  %res.0.i.i115194 = phi i32 [ %call1.i.i.i113, %if.end.i.i117.if.then11.i.i120_crit_edge ], [ 8, %if.end8.i.i102.if.then11.i.i120_crit_edge ], [ 8, %land.lhs.true.i.i107.if.then11.i.i120_crit_edge ]
  %sub.i.i118 = sub i32 8, %res.0.i.i115194
  %add.ptr.i.i119 = getelementptr i8, ptr %features, i32 %sub.i.i118
  %54 = call ptr @memset(ptr %add.ptr.i.i119, i32 0, i32 %res.0.i.i115194)
  br label %cleanup

if.end20:                                         ; preds = %if.end.i.i117
  %55 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %features, align 8
  %and.i = and i64 %56, -13908312067
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i167 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i167, label %if.end.i170, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i170:                                      ; preds = %if.end20
  %mutex.i168 = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i168, i32 noundef 0) #11
  %and1.i = and i64 %56, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i169 = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i169, label %if.end.i170.if.end5.i173_crit_edge, label %land.lhs.true.i

if.end.i170.if.end5.i173_crit_edge:               ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i173

land.lhs.true.i:                                  ; preds = %if.end.i170
  %call.i171 = call zeroext i1 @vhost_log_access_ok(ptr noundef %1) #11
  br i1 %call.i171, label %land.lhs.true.i.if.end5.i173_crit_edge, label %land.lhs.true.i.cleanup.sink.split.i176_crit_edge

land.lhs.true.i.cleanup.sink.split.i176_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i176

land.lhs.true.i.if.end5.i173_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i173

if.end5.i173:                                     ; preds = %land.lhs.true.i.if.end5.i173_crit_edge, %if.end.i170.if.end5.i173_crit_edge
  %and6.i = and i64 %56, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i)
  %tobool7.not.i172 = icmp eq i64 %and6.i, 0
  br i1 %tobool7.not.i172, label %if.end5.i173.if.end14.i_crit_edge, label %if.then8.i174

if.end5.i173.if.end14.i_crit_edge:                ; preds = %if.end5.i173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then8.i174:                                    ; preds = %if.end5.i173
  %call10.i = call i32 @vhost_init_device_iotlb(ptr noundef %1, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i174.if.end14.i_crit_edge, label %if.then8.i174.cleanup.sink.split.i176_crit_edge

if.then8.i174.cleanup.sink.split.i176_crit_edge:  ; preds = %if.then8.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i176

if.then8.i174.if.end14.i_crit_edge:               ; preds = %if.then8.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then8.i174.if.end14.i_crit_edge, %if.end5.i173.if.end14.i_crit_edge
  %and15.i = and i64 %56, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i)
  %tobool16.not.i = icmp eq i64 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end18.i_crit_edge, label %if.then17.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %seqpacket_allow.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 8
  %57 = ptrtoint ptr %seqpacket_allow.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %seqpacket_allow.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end18.i_crit_edge
  %mutex19.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex19.i, i32 noundef 0) #11
  %acked_features.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 28
  %58 = ptrtoint ptr %acked_features.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %56, ptr %acked_features.i, align 8
  call void @mutex_unlock(ptr noundef %mutex19.i) #11
  %mutex19.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex19.1.i, i32 noundef 0) #11
  %acked_features.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 28
  %59 = ptrtoint ptr %acked_features.1.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %56, ptr %acked_features.1.i, align 8
  call void @mutex_unlock(ptr noundef %mutex19.1.i) #11
  br label %cleanup.sink.split.i176

cleanup.sink.split.i176:                          ; preds = %if.end18.i, %if.then8.i174.cleanup.sink.split.i176_crit_edge, %land.lhs.true.i.cleanup.sink.split.i176_crit_edge
  %retval.0.ph.i175 = phi i32 [ 0, %if.end18.i ], [ -14, %if.then8.i174.cleanup.sink.split.i176_crit_edge ], [ -14, %land.lhs.true.i.cleanup.sink.split.i176_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i168) #11
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  %60 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 2, ptr %features, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #11
  %call.i.i125 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i125, label %sw.bb22.cleanup_crit_edge, label %if.end.i.i129

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i129:                                    ; preds = %sw.bb22
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #14, !srcloc !95
  %asmresult.i.i127 = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i127)
  %cmp.i1.i128 = icmp eq i32 %asmresult.i.i127, 0
  br i1 %cmp.i1.i128, label %copy_to_user.exit134, label %if.end.i.i129.cleanup_crit_edge

if.end.i.i129.cleanup_crit_edge:                  ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit134:                             ; preds = %if.end.i.i129
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i130 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %features, i32 noundef 8) #11
  %call.i1.i.i131 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %features, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i131)
  %tobool24.not = icmp eq i32 %call.i1.i.i131, 0
  %spec.select204 = select i1 %tobool24.not, i32 0, i32 -14
  br label %cleanup

if.end8.i.i138:                                   ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #11
  %call.i.i139 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i139, label %if.end8.i.i138.if.then11.i.i156_crit_edge, label %land.lhs.true.i.i143

if.end8.i.i138.if.then11.i.i156_crit_edge:        ; preds = %if.end8.i.i138
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i156

land.lhs.true.i.i143:                             ; preds = %if.end8.i.i138
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 8, i32 -1226833920) #14, !srcloc !89
  %asmresult.i.i141 = extractvalue { i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i141)
  %cmp.i6.i142 = icmp eq i32 %asmresult.i.i141, 0
  br i1 %cmp.i6.i142, label %if.end.i.i153, label %land.lhs.true.i.i143.if.then11.i.i156_crit_edge, !prof !90

land.lhs.true.i.i143.if.then11.i.i156_crit_edge:  ; preds = %land.lhs.true.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i156

if.end.i.i153:                                    ; preds = %land.lhs.true.i.i143
  %call.i.i.i144 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %features, i32 noundef 8) #11
  %63 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i.i145 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i.i145 to ptr
  %cpu_domain.i.i.i.i.i146 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 4
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i146) #4, !srcloc !91
  %and.i.i.i.i147 = and i32 %65, -13
  %or.i.i.i.i148 = or i32 %and.i.i.i.i147, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i148) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  %call1.i.i.i149 = call i32 @arm_copy_from_user(ptr noundef nonnull %features, ptr noundef %2, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #11, !srcloc !92
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i149)
  %tobool4.not.i.i152 = icmp eq i32 %call1.i.i.i149, 0
  br i1 %tobool4.not.i.i152, label %if.end31, label %if.end.i.i153.if.then11.i.i156_crit_edge, !prof !90

if.end.i.i153.if.then11.i.i156_crit_edge:         ; preds = %if.end.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i156

if.then11.i.i156:                                 ; preds = %if.end.i.i153.if.then11.i.i156_crit_edge, %land.lhs.true.i.i143.if.then11.i.i156_crit_edge, %if.end8.i.i138.if.then11.i.i156_crit_edge
  %res.0.i.i151201 = phi i32 [ %call1.i.i.i149, %if.end.i.i153.if.then11.i.i156_crit_edge ], [ 8, %if.end8.i.i138.if.then11.i.i156_crit_edge ], [ 8, %land.lhs.true.i.i143.if.then11.i.i156_crit_edge ]
  %sub.i.i154 = sub i32 8, %res.0.i.i151201
  %add.ptr.i.i155 = getelementptr i8, ptr %features, i32 %sub.i.i154
  %66 = call ptr @memset(ptr %add.ptr.i.i155, i32 0, i32 %res.0.i.i151201)
  br label %cleanup

if.end31:                                         ; preds = %if.end.i.i153
  %67 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %features, align 8
  %and = and i64 %68, -3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool32.not = icmp eq i64 %and, 0
  br i1 %tobool32.not, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  call void @vhost_set_backend_features(ptr noundef %1, i64 noundef %68) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  %mutex = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %call37 = tail call i32 @vhost_dev_ioctl(ptr noundef %1, i32 noundef %ioctl, ptr noundef %2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call37)
  %cmp = icmp eq i32 %call37, -515
  br i1 %cmp, label %if.then38, label %if.else41

if.then38:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 @vhost_vring_ioctl(ptr noundef %1, i32 noundef %ioctl, ptr noundef %2) #11
  br label %if.end42

if.else41:                                        ; preds = %sw.default
  %handle_kick.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 12
  %69 = ptrtoint ptr %handle_kick.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %handle_kick.i, align 8
  %tobool.not.i178 = icmp eq ptr %70, null
  br i1 %tobool.not.i178, label %if.else41.for.inc.i_crit_edge, label %if.then.i179

if.else41.for.inc.i_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i179:                                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #13
  %poll.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 11
  tail call void @vhost_poll_flush(ptr noundef %poll.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i179, %if.else41.for.inc.i_crit_edge
  %handle_kick.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 12
  %71 = ptrtoint ptr %handle_kick.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %handle_kick.1.i, align 8
  %tobool.not.1.i = icmp eq ptr %72, null
  br i1 %tobool.not.1.i, label %for.inc.i.vhost_vsock_flush.exit_crit_edge, label %if.then.1.i

for.inc.i.vhost_vsock_flush.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhost_vsock_flush.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %poll.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 11
  tail call void @vhost_poll_flush(ptr noundef %poll.1.i) #11
  br label %vhost_vsock_flush.exit

vhost_vsock_flush.exit:                           ; preds = %if.then.1.i, %for.inc.i.vhost_vsock_flush.exit_crit_edge
  tail call void @vhost_work_dev_flush(ptr noundef %1) #11
  br label %if.end42

if.end42:                                         ; preds = %vhost_vsock_flush.exit, %if.then38
  %r.0 = phi i32 [ %call40, %if.then38 ], [ %call37, %vhost_vsock_flush.exit ]
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end34, %if.end31.cleanup_crit_edge, %if.then11.i.i156, %copy_to_user.exit134, %if.end.i.i129.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %cleanup.sink.split.i176, %if.end20.cleanup_crit_edge, %if.then11.i.i120, %copy_to_user.exit, %if.end.i.i96.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %vhost_vsock_stop.exit, %vhost_vsock_start.exit, %if.then11.i.i90, %cleanup.sink.split.i, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge205, %if.end.cleanup_crit_edge206, %if.end.cleanup_crit_edge207, %if.then11.i.i
  %retval.0 = phi i32 [ %r.0, %if.end42 ], [ 0, %if.end34 ], [ %retval.0.i162, %vhost_vsock_start.exit ], [ %call.i164, %vhost_vsock_stop.exit ], [ -95, %if.end31.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -98, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge205 ], [ -22, %if.end.cleanup_crit_edge206 ], [ -22, %if.end.cleanup_crit_edge207 ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -95, %if.end20.cleanup_crit_edge ], [ %retval.0.ph.i175, %cleanup.sink.split.i176 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i90 ], [ -14, %sw.bb11.cleanup_crit_edge ], [ -14, %if.end.i.i96.cleanup_crit_edge ], [ -14, %if.then11.i.i120 ], [ -14, %sw.bb22.cleanup_crit_edge ], [ -14, %if.end.i.i129.cleanup_crit_edge ], [ -14, %if.then11.i.i156 ], [ %spec.select, %copy_to_user.exit ], [ %spec.select204, %copy_to_user.exit134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %features) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %guest_cid) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_dev_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 19392, i32 noundef 19648, i32 noundef -1) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 8) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %guest_cid = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %guest_cid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %guest_cid, align 4
  %queued_replies = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #11
  %2 = ptrtoint ptr %queued_replies to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %queued_replies, align 4
  %vqs5 = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 1
  %arrayidx = getelementptr %struct.vhost_vsock, ptr %call.i, i32 0, i32 1, i32 1
  %arrayidx6 = getelementptr ptr, ptr %call7.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %arrayidx6, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vqs5, ptr %call7.i.i, align 8
  %handle_kick = getelementptr %struct.vhost_vsock, ptr %call.i, i32 0, i32 1, i32 1, i32 12
  %5 = ptrtoint ptr %handle_kick to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vhost_vsock_handle_tx_kick, ptr %handle_kick, align 8
  %handle_kick14 = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 1, i32 0, i32 12
  %6 = ptrtoint ptr %handle_kick14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vhost_vsock_handle_rx_kick, ptr %handle_kick14, align 8
  tail call void @vhost_dev_init(ptr noundef nonnull %call.i, ptr noundef nonnull %call7.i.i, i32 noundef 2, i32 noundef 1024, i32 noundef 256, i32 noundef 524288, i1 noundef zeroext true, ptr noundef null) #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %private_data, align 4
  %send_pkt_list_lock = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %send_pkt_list_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @vhost_vsock_dev_open.__key, i16 noundef signext 3) #11
  %send_pkt_list = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %send_pkt_list, ptr %send_pkt_list, align 4
  %prev.i = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_pkt_list, ptr %prev.i, align 4
  %send_pkt_work = getelementptr inbounds %struct.vhost_vsock, ptr %call.i, i32 0, i32 3
  tail call void @vhost_work_init(ptr noundef %send_pkt_work, ptr noundef nonnull @vhost_transport_send_pkt_work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_vsock_dev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @vhost_vsock_mutex, i32 noundef 0) #11
  %guest_cid = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %guest_cid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %guest_cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.i.i, label %if.then.if.end_crit_edge, label %if.then.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  %hash = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %5, align 4
  %tobool.not.i7.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %5, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %__hlist_del.exit.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vhost_vsock_mutex) #11
  tail call void @synchronize_rcu() #11
  tail call void @vsock_for_each_connected_socket(ptr noundef nonnull @vhost_transport, ptr noundef nonnull @vhost_vsock_reset_orphans) #11
  %mutex.i = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #11
  %mutex5.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex5.i, i32 noundef 0) #11
  %private_data1.i.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 27
  %11 = ptrtoint ptr %private_data1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %private_data1.i.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex5.i) #11
  %mutex5.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex5.1.i, i32 noundef 0) #11
  %private_data1.i.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 27
  %12 = ptrtoint ptr %private_data1.i.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %private_data1.i.1.i, align 8
  tail call void @mutex_unlock(ptr noundef %mutex5.1.i) #11
  tail call void @mutex_unlock(ptr noundef %mutex.i) #11
  %handle_kick.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 12
  %13 = ptrtoint ptr %handle_kick.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle_kick.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.for.inc.i_crit_edge, label %if.then.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %poll.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 0, i32 11
  tail call void @vhost_poll_flush(ptr noundef %poll.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %if.end.for.inc.i_crit_edge
  %handle_kick.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 12
  %15 = ptrtoint ptr %handle_kick.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %handle_kick.1.i, align 8
  %tobool.not.1.i = icmp eq ptr %16, null
  br i1 %tobool.not.1.i, label %for.inc.i.vhost_vsock_flush.exit_crit_edge, label %if.then.1.i

for.inc.i.vhost_vsock_flush.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vhost_vsock_flush.exit

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %poll.1.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 11
  tail call void @vhost_poll_flush(ptr noundef %poll.1.i) #11
  br label %vhost_vsock_flush.exit

vhost_vsock_flush.exit:                           ; preds = %if.then.1.i, %for.inc.i.vhost_vsock_flush.exit_crit_edge
  tail call void @vhost_work_dev_flush(ptr noundef %1) #11
  tail call void @vhost_dev_stop(ptr noundef %1) #11
  %send_pkt_list_lock = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %send_pkt_list = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not19 = icmp eq ptr %18, %send_pkt_list
  br i1 %cmp.i.not19, label %vhost_vsock_flush.exit.while.end_crit_edge, label %vhost_vsock_flush.exit.while.body_crit_edge

vhost_vsock_flush.exit.while.body_crit_edge:      ; preds = %vhost_vsock_flush.exit
  br label %while.body

vhost_vsock_flush.exit.while.end_crit_edge:       ; preds = %vhost_vsock_flush.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %vhost_vsock_flush.exit.while.body_crit_edge
  %19 = phi ptr [ %29, %list_del_init.exit.while.body_crit_edge ], [ %18, %vhost_vsock_flush.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %19, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i, align 4
  tail call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #11
  %28 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %29, %send_pkt_list
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %vhost_vsock_flush.exit.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  tail call void @vhost_dev_cleanup(ptr noundef %1) #11
  %vqs = getelementptr inbounds %struct.vhost_dev, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vqs, align 8
  tail call void @kfree(ptr noundef %31) #11
  tail call void @kvfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_read_iter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_chr_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_set_backend_features(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vring_ioctl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsock_find_cid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vhost_vsock_get(i32 noundef %guest_cid) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @vhost_vsock_get.__warned, align 1
  br i1 %.b45, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @vhost_vsock_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 75, ptr noundef nonnull @.str.7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mul.i.i = mul i32 %guest_cid, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr [256 x %struct.hlist_head], ptr @vhost_vsock_hash, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -19304
  %tobool13.not4953 = icmp eq ptr %add.ptr, null
  %tobool13.not49 = or i1 %tobool11.not, %tobool13.not4953
  br i1 %tobool13.not49, label %do.end.cleanup35_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %retval.051 = phi ptr [ %retval.1, %for.inc.for.body_crit_edge ], [ undef, %do.end.for.body_crit_edge ]
  %vsock.050 = phi ptr [ %add.ptr31, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %guest_cid14 = getelementptr inbounds %struct.vhost_vsock, ptr %vsock.050, i32 0, i32 7
  %2 = ptrtoint ptr %guest_cid14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %guest_cid14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %guest_cid)
  %cmp17 = icmp eq i32 %3, %guest_cid
  %. = zext i1 %cmp17 to i32
  %vsock.0.retval.0 = select i1 %cmp17, ptr %vsock.050, ptr %retval.051
  %cleanup.dest.slot.0 = select i1 %cmp, i32 8, i32 %.
  %retval.1 = select i1 %cmp, ptr %retval.051, ptr %vsock.0.retval.0
  %4 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %cleanup.dest.slot.0, label %for.body.cleanup35_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 8, label %for.body.for.inc_crit_edge55
  ]

for.body.for.inc_crit_edge55:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.cleanup35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge55
  %hash = getelementptr inbounds %struct.vhost_vsock, ptr %vsock.050, i32 0, i32 2
  %5 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %hash, align 8
  %tobool27.not = icmp eq ptr %6, null
  %add.ptr31 = getelementptr i8, ptr %6, i32 -19304
  %tobool13.not54 = icmp eq ptr %add.ptr31, null
  %tobool13.not = or i1 %tobool27.not, %tobool13.not54
  br i1 %tobool13.not, label %for.inc.cleanup35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35

cleanup35:                                        ; preds = %for.inc.cleanup35_crit_edge, %for.body.cleanup35_crit_edge, %do.end.cleanup35_crit_edge
  %retval.2 = phi ptr [ null, %do.end.cleanup35_crit_edge ], [ null, %for.inc.cleanup35_crit_edge ], [ %retval.1, %for.body.cleanup35_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_dev_check_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_vq_access_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_vq_init_access(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_log_access_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_init_device_iotlb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_poll_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_work_dev_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vsock_handle_tx_kick(ptr noundef %work) #2 align 64 {
entry:
  %out = alloca i32, align 4
  %in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #11
  %2 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %out, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #11
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %in, align 4, !annotation !88
  %mutex = getelementptr i8, ptr %work, i32 -200
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %private_data.i = getelementptr i8, ptr %work, i32 8764
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out75_crit_edge, label %if.end

entry.out75_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out75

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @vq_meta_prefetch(ptr noundef %add.ptr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.out75_crit_edge, label %if.end7

if.end.out75_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out75

if.end7:                                          ; preds = %if.end
  tail call void @vhost_disable_notify(ptr noundef %1, ptr noundef %add.ptr) #11
  %iov = getelementptr i8, ptr %work, i32 44
  %queued_replies.i = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 6
  %num.i = getelementptr %struct.vhost_vsock, ptr %1, i32 0, i32 1, i32 1, i32 2
  %num = getelementptr i8, ptr %work, i32 -108
  %guest_cid = getelementptr inbounds %struct.vhost_vsock, ptr %1, i32 0, i32 7
  %error_ctx = getelementptr i8, ptr %work, i32 -40
  br label %do.body

do.body:                                          ; preds = %do.cond60.do.body_crit_edge, %if.end7
  %pkts.0 = phi i32 [ 0, %if.end7 ], [ %inc, %do.cond60.do.body_crit_edge ]
  %total_len.0 = phi i32 [ 0, %if.end7 ], [ %total_len.1, %do.cond60.do.body_crit_edge ]
  %added.0.off0 = phi i1 [ false, %if.end7 ], [ %added.1.off0, %do.cond60.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !96
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %queued_replies.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %queued_replies.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %queued_replies.i, align 4
  %8 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp ult i32 %7, %9
  br i1 %cmp.i, label %if.end11, label %do.body.no_more_replies_crit_edge

do.body.no_more_replies_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_more_replies

if.end11:                                         ; preds = %do.body
  %call12 = call i32 @vhost_get_vq_desc(ptr noundef %add.ptr, ptr noundef %iov, i32 noundef 1024, ptr noundef nonnull %out, ptr noundef nonnull %in, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.no_more_replies_crit_edge, label %if.end14

if.end11.no_more_replies_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_more_replies

if.end14:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %11)
  %cmp15 = icmp eq i32 %call12, %11
  br i1 %cmp15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end14
  %call18 = call zeroext i1 @vhost_enable_notify(ptr noundef %1, ptr noundef %add.ptr) #11
  br i1 %call18, label %if.then21, label %if.then16.no_more_replies_crit_edge, !prof !97

if.then16.no_more_replies_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_more_replies

if.then21:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  call void @vhost_disable_notify(ptr noundef %1, ptr noundef %add.ptr) #11
  br label %do.cond60

if.end24:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out, align 4
  %14 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %in, align 4
  %call25 = call fastcc ptr @vhost_vsock_alloc_pkt(ptr noundef %add.ptr, i32 noundef %13, i32 noundef %15)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.body29, label %if.end48

do.body29:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_vsock_handle_tx_kick.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_vsock_handle_tx_kick, %if.then39)) #11
          to label %do.end [label %if.then39], !srcloc !98

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_vsock_handle_tx_kick.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body29
  %16 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %error_ctx, align 4
  %tobool41.not = icmp eq ptr %17, null
  br i1 %tobool41.not, label %do.end.do.cond60_crit_edge, label %if.then42

do.end.do.cond60_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond60

if.then42:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call i64 @eventfd_signal(ptr noundef nonnull %17, i64 noundef 1) #11
  br label %do.cond60

if.end48:                                         ; preds = %if.end24
  %len = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call25, i32 0, i32 5
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %add = add i32 %total_len.0, 44
  %add49 = add i32 %add, %19
  call void @virtio_transport_deliver_tap_pkt(ptr noundef nonnull %call25) #11
  %20 = ptrtoint ptr %call25 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %call25, align 4
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  %23 = ptrtoint ptr %guest_cid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %guest_cid, align 4
  %conv = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv)
  %cmp50 = icmp eq i64 %22, %conv
  br i1 %cmp50, label %land.lhs.true, label %if.end48.if.else_crit_edge

if.end48.if.else_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end48
  %dst_cid = getelementptr inbounds %struct.virtio_vsock_hdr, ptr %call25, i32 0, i32 1
  %25 = ptrtoint ptr %dst_cid to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %dst_cid, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 144115188075855872, i64 %26)
  %cmp55 = icmp eq i64 %26, 144115188075855872
  br i1 %cmp55, label %if.then57, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtio_transport_recv_pkt(ptr noundef nonnull @vhost_transport, ptr noundef nonnull %call25) #11
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end48.if.else_crit_edge
  call void @virtio_transport_free_pkt(ptr noundef nonnull %call25) #11
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then57
  %call59 = call i32 @vhost_add_used(ptr noundef %add.ptr, i32 noundef %call12, i32 noundef 0) #11
  br label %do.cond60

do.cond60:                                        ; preds = %if.end58, %if.then42, %do.end.do.cond60_crit_edge, %if.then21
  %total_len.1 = phi i32 [ %total_len.0, %if.then21 ], [ %add49, %if.end58 ], [ %total_len.0, %if.then42 ], [ %total_len.0, %do.end.do.cond60_crit_edge ]
  %added.1.off0 = phi i1 [ %added.0.off0, %if.then21 ], [ true, %if.end58 ], [ %added.0.off0, %if.then42 ], [ %added.0.off0, %do.end.do.cond60_crit_edge ]
  %inc = add i32 %pkts.0, 1
  %call61 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %add.ptr, i32 noundef %inc, i32 noundef %total_len.1) #11
  br i1 %call61, label %do.cond60.no_more_replies_crit_edge, label %do.cond60.do.body_crit_edge, !prof !97

do.cond60.do.body_crit_edge:                      ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond60.no_more_replies_crit_edge:              ; preds = %do.cond60
  call void @__sanitizer_cov_trace_pc() #13
  br label %no_more_replies

no_more_replies:                                  ; preds = %do.cond60.no_more_replies_crit_edge, %if.then16.no_more_replies_crit_edge, %if.end11.no_more_replies_crit_edge, %do.body.no_more_replies_crit_edge
  %added.2.off0 = phi i1 [ %added.0.off0, %if.end11.no_more_replies_crit_edge ], [ %added.1.off0, %do.cond60.no_more_replies_crit_edge ], [ %added.0.off0, %if.then16.no_more_replies_crit_edge ], [ %added.0.off0, %do.body.no_more_replies_crit_edge ]
  br i1 %added.2.off0, label %if.then72, label %no_more_replies.out75_crit_edge

no_more_replies.out75_crit_edge:                  ; preds = %no_more_replies
  call void @__sanitizer_cov_trace_pc() #13
  br label %out75

if.then72:                                        ; preds = %no_more_replies
  call void @__sanitizer_cov_trace_pc() #13
  call void @vhost_signal(ptr noundef %1, ptr noundef %add.ptr) #11
  br label %out75

out75:                                            ; preds = %if.then72, %no_more_replies.out75_crit_edge, %if.end.out75_crit_edge, %entry.out75_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vsock_handle_rx_kick(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -204
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @vhost_transport_do_send_pkt(ptr noundef %1, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_work_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_transport_send_pkt_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -19312
  %vqs = getelementptr i8, ptr %work, i32 -19048
  tail call fastcc void @vhost_transport_do_send_pkt(ptr noundef %add.ptr, ptr noundef %vqs)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vq_meta_prefetch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_disable_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_get_vq_desc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_enable_notify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vhost_vsock_alloc_pkt(ptr noundef %vq, i32 noundef %out, i32 noundef %in) unnamed_addr #2 align 64 {
entry:
  %iov_iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov_iter) #11
  %0 = call ptr @memset(ptr %iov_iter, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in)
  %cmp.not = icmp eq i32 %in, 0
  br i1 %cmp.not, label %if.end12, label %do.body1

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_vsock_alloc_pkt, %if.then4)) #11
          to label %do.end [label %if.then4], !srcloc !98

if.then4:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.13, i32 noundef %in) #11
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body1
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %1 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %error_ctx, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.then6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i64 @eventfd_signal(ptr noundef nonnull %2, i64 noundef 1) #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 76) #16
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %iov = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %cmp4.not.i = icmp eq i32 %out, 0
  br i1 %cmp4.not.i, label %if.end16.iov_length.exit_crit_edge, label %if.end16.for.body.i_crit_edge

if.end16.for.body.i_crit_edge:                    ; preds = %if.end16
  br label %for.body.i

if.end16.iov_length.exit_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %iov_length.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end16.for.body.i_crit_edge
  %ret.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %seg.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %iov_len.i = getelementptr %struct.iovec, ptr %iov, i32 %seg.05.i, i32 1
  %4 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %5, %ret.06.i
  %inc.i = add nuw i32 %seg.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %out
  br i1 %exitcond.not.i, label %for.body.i.iov_length.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.iov_length.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iov_length.exit

iov_length.exit:                                  ; preds = %for.body.i.iov_length.exit_crit_edge, %if.end16.iov_length.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %if.end16.iov_length.exit_crit_edge ], [ %add.i, %for.body.i.iov_length.exit_crit_edge ]
  call void @iov_iter_init(ptr noundef nonnull %iov_iter, i32 noundef 1, ptr noundef %iov, i32 noundef %out, i32 noundef %ret.0.lcssa.i) #11
  %call3.i = call i32 @_copy_from_iter(ptr noundef nonnull %call7.i.i, i32 noundef 44, ptr noundef nonnull %iov_iter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call3.i)
  %cmp21.not = icmp eq i32 %call3.i, 44
  br i1 %cmp21.not, label %if.end48, label %do.body24

do.body24:                                        ; preds = %iov_length.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_vsock_alloc_pkt, %if.then36)) #11
          to label %do.end39 [label %if.then36], !srcloc !98

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.14, i32 noundef 44, i32 noundef %call3.i) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %error_ctx40 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %6 = ptrtoint ptr %error_ctx40 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %error_ctx40, align 4
  %tobool41.not = icmp eq ptr %7, null
  br i1 %tobool41.not, label %do.end39.do.end47_crit_edge, label %if.then42

do.end39.do.end47_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

if.then42:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call i64 @eventfd_signal(ptr noundef nonnull %7, i64 noundef 1) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %do.end39.do.end47_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end48:                                         ; preds = %iov_length.exit
  %len50 = getelementptr inbounds %struct.virtio_vsock_hdr, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len50, align 8
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %len51 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %len51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool53.not = icmp eq i32 %9, 0
  br i1 %tobool53.not, label %if.end48.cleanup_crit_edge, label %if.end55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %10)
  %cmp57 = icmp ugt i32 %10, 65536
  br i1 %cmp57, label %if.then58, label %if.end8.i

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end55
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #15
  %buf = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i, ptr %buf, align 8
  %tobool63.not = icmp eq ptr %call9.i, null
  br i1 %tobool63.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end65:                                         ; preds = %if.end8.i
  %13 = ptrtoint ptr %len51 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len51, align 8
  %buf_len = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %buf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end65
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_from_iter.exit150_crit_edge, label %if.then27.i.i, !prof !90

land.rhs16.i.i.copy_from_iter.exit150_crit_edge:  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_iter.exit150

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_from_iter.exit150

if.then.i.i.i:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %14, i1 noundef zeroext false) #11
  %call3.i148 = call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %14, ptr noundef nonnull %iov_iter) #11
  br label %copy_from_iter.exit150

copy_from_iter.exit150:                           ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.copy_from_iter.exit150_crit_edge
  %retval.0.i149 = phi i32 [ %call3.i148, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.copy_from_iter.exit150_crit_edge ]
  %16 = ptrtoint ptr %len51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i149, i32 %17)
  %cmp71.not = icmp eq i32 %retval.0.i149, %17
  br i1 %cmp71.not, label %copy_from_iter.exit150.cleanup_crit_edge, label %do.body74

copy_from_iter.exit150.cleanup_crit_edge:         ; preds = %copy_from_iter.exit150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body74:                                        ; preds = %copy_from_iter.exit150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_vsock_alloc_pkt, %if.then86)) #11
          to label %do.end90 [label %if.then86], !srcloc !98

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %len51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len51, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.15, i32 noundef %19, i32 noundef %retval.0.i149) #11
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %do.body74
  %error_ctx91 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %20 = ptrtoint ptr %error_ctx91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %error_ctx91, align 4
  %tobool92.not = icmp eq ptr %21, null
  br i1 %tobool92.not, label %do.end90.do.end98_crit_edge, label %if.then93

do.end90.do.end98_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end98

if.then93:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #13
  %call95 = call i64 @eventfd_signal(ptr noundef nonnull %21, i64 noundef 1) #11
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.end90.do.end98_crit_edge
  call void @virtio_transport_free_pkt(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %copy_from_iter.exit150.cleanup_crit_edge, %if.then64, %if.then58, %if.end48.cleanup_crit_edge, %do.end47, %if.end12.cleanup_crit_edge, %if.then6, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end47 ], [ null, %if.then58 ], [ null, %do.end98 ], [ null, %if.then64 ], [ null, %if.then6 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end12.cleanup_crit_edge ], [ %call7.i.i, %if.end48.cleanup_crit_edge ], [ %call7.i.i, %copy_from_iter.exit150.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_deliver_tap_pkt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vhost_transport_get_local_cid() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_recv_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_free_pkt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vhost_add_used(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vhost_exceeds_weight(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_signal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vhost_transport_do_send_pkt(ptr noundef %vsock, ptr noundef %vq) unnamed_addr #2 align 64 {
entry:
  %iov_iter = alloca %struct.iov_iter, align 8
  %out = alloca i32, align 4
  %in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #11
  %private_data.i = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 27
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end227.critedge327, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vq_meta_prefetch(ptr noundef %vq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end227.critedge, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @vhost_disable_notify(ptr noundef %vsock, ptr noundef %vq) #11
  %send_pkt_list_lock = getelementptr inbounds %struct.vhost_vsock, ptr %vsock, i32 0, i32 4
  %send_pkt_list = getelementptr inbounds %struct.vhost_vsock, ptr %vsock, i32 0, i32 5
  %iov = getelementptr %struct.vhost_virtqueue, ptr %vq, i32 0, i32 21
  %num = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 2
  %queued_replies = getelementptr inbounds %struct.vhost_vsock, ptr %vsock, i32 0, i32 6
  %num194 = getelementptr %struct.vhost_vsock, ptr %vsock, i32 0, i32 1, i32 1, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond208.do.body_crit_edge, %if.end4
  %restart_tx.0 = phi i8 [ 0, %if.end4 ], [ %restart_tx.4, %do.cond208.do.body_crit_edge ]
  %added.0.off0 = phi i1 [ false, %if.end4 ], [ %added.1.off0, %do.cond208.do.body_crit_edge ]
  %total_len.0 = phi i32 [ 0, %if.end4 ], [ %total_len.1, %do.cond208.do.body_crit_edge ]
  %pkts.0 = phi i32 [ 0, %if.end4 ], [ %inc, %do.cond208.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov_iter) #11
  %2 = call ptr @memset(ptr %iov_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #11
  %3 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %out, align 4, !annotation !88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #11
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %in, align 4, !annotation !88
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %5 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %6, %send_pkt_list
  br i1 %cmp.i.not, label %if.then7, label %if.end11

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  %call10 = call zeroext i1 @vhost_enable_notify(ptr noundef %vsock, ptr noundef %vq) #11
  br label %cleanup.thread

if.end11:                                         ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %6, i32 -44
  %call.i.i345 = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i345, label %if.end.i.i, label %if.end11.list_del_init.exit_crit_edge

if.end11.list_del_init.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end11.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  %call14 = call i32 @vhost_get_vq_desc(ptr noundef %vq, ptr noundef %iov, i32 noundef 1024, ptr noundef nonnull %out, ptr noundef nonnull %in, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.then15, label %if.end20

if.then15:                                        ; preds = %list_del_init.exit
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %15 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %send_pkt_list, align 4
  %call.i.i346 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %send_pkt_list, ptr noundef %16) #11
  br i1 %call.i.i346, label %if.end.i.i347, label %if.then15.list_add.exit_crit_edge

if.then15.list_add.exit_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i347:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %6, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %6, align 4
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %send_pkt_list, ptr %prev.i3.i, align 4
  %20 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %6, ptr %send_pkt_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i347, %if.then15.list_add.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  br label %cleanup.thread

if.end20:                                         ; preds = %list_del_init.exit
  %21 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %22)
  %cmp21 = icmp eq i32 %call14, %22
  br i1 %cmp21, label %if.then22, label %if.end34

if.then22:                                        ; preds = %if.end20
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %23 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %send_pkt_list, align 4
  %call.i.i348 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %send_pkt_list, ptr noundef %24) #11
  br i1 %call.i.i348, label %if.end.i.i351, label %if.then22.list_add.exit352_crit_edge

if.then22.list_add.exit352_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit352

if.end.i.i351:                                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i349 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i349 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %6, ptr %prev1.i.i349, align 4
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %6, align 4
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %send_pkt_list, ptr %prev.i3.i, align 4
  %28 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %6, ptr %send_pkt_list, align 4
  br label %list_add.exit352

list_add.exit352:                                 ; preds = %if.end.i.i351, %if.then22.list_add.exit352_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  %call28 = call zeroext i1 @vhost_enable_notify(ptr noundef %vsock, ptr noundef %vq) #11
  br i1 %call28, label %if.then31, label %list_add.exit352.cleanup.thread_crit_edge, !prof !97

list_add.exit352.cleanup.thread_crit_edge:        ; preds = %list_add.exit352
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then31:                                        ; preds = %list_add.exit352
  call void @__sanitizer_cov_trace_pc() #13
  call void @vhost_disable_notify(ptr noundef %vsock, ptr noundef %vq) #11
  br label %do.cond208

if.end34:                                         ; preds = %if.end20
  %29 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool35.not = icmp eq i32 %30, 0
  br i1 %tobool35.not, label %if.end57, label %if.then36

if.then36:                                        ; preds = %if.end34
  call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_transport_do_send_pkt, %if.then48)) #11
          to label %do.end [label %if.then48], !srcloc !98

if.then48:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %out, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.17, i32 noundef %32) #11
  br label %do.end

do.end:                                           ; preds = %if.then48, %if.then36
  %error_ctx = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %33 = ptrtoint ptr %error_ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %error_ctx, align 4
  %tobool50.not = icmp eq ptr %34, null
  br i1 %tobool50.not, label %do.end.cleanup.thread_crit_edge, label %if.then51

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then51:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call i64 @eventfd_signal(ptr noundef nonnull %34, i64 noundef 1) #11
  br label %cleanup.thread

if.end57:                                         ; preds = %if.end34
  %35 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp4.not.i = icmp eq i32 %36, 0
  br i1 %cmp4.not.i, label %if.end57.if.then62_crit_edge, label %if.end57.for.body.i_crit_edge

if.end57.for.body.i_crit_edge:                    ; preds = %if.end57
  br label %for.body.i

if.end57.if.then62_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end57.for.body.i_crit_edge
  %ret.06.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end57.for.body.i_crit_edge ]
  %seg.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end57.for.body.i_crit_edge ]
  %iov_len.i = getelementptr %struct.iovec, ptr %iov, i32 %seg.05.i, i32 1
  %37 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iov_len.i, align 4
  %add.i = add i32 %38, %ret.06.i
  %inc.i = add nuw i32 %seg.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %36
  br i1 %exitcond.not.i, label %iov_length.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

iov_length.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %add.i)
  %cmp61 = icmp ult i32 %add.i, 44
  br i1 %cmp61, label %iov_length.exit.if.then62_crit_edge, label %if.end88

iov_length.exit.if.then62_crit_edge:              ; preds = %iov_length.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.then62:                                        ; preds = %iov_length.exit.if.then62_crit_edge, %if.end57.if.then62_crit_edge
  %ret.0.lcssa.i361 = phi i32 [ %add.i, %iov_length.exit.if.then62_crit_edge ], [ 0, %if.end57.if.then62_crit_edge ]
  call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_transport_do_send_pkt, %if.then76)) #11
          to label %do.end79 [label %if.then76], !srcloc !98

if.then76:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.18, i32 noundef %ret.0.lcssa.i361) #11
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %if.then62
  %error_ctx80 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %39 = ptrtoint ptr %error_ctx80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %error_ctx80, align 4
  %tobool81.not = icmp eq ptr %40, null
  br i1 %tobool81.not, label %do.end79.cleanup.thread_crit_edge, label %if.then82

do.end79.cleanup.thread_crit_edge:                ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then82:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #13
  %call84 = call i64 @eventfd_signal(ptr noundef nonnull %40, i64 noundef 1) #11
  br label %cleanup.thread

if.end88:                                         ; preds = %iov_length.exit
  call void @iov_iter_init(ptr noundef nonnull %iov_iter, i32 noundef 0, ptr noundef %iov, i32 noundef %36, i32 noundef %add.i) #11
  %len = getelementptr i8, ptr %6, i32 20
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 4
  %off = getelementptr i8, ptr %6, i32 24
  %43 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %off, align 4
  %sub = sub i32 %42, %44
  %sub91 = add i32 %add.i, -44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub91)
  %cmp92 = icmp ugt i32 %sub, %sub91
  br i1 %cmp92, label %if.then93, label %if.end88.if.end111_crit_edge

if.end88.if.end111_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then93:                                        ; preds = %if.end88
  %flags = getelementptr i8, ptr %6, i32 -12
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool95.not = icmp eq i32 %47, 0
  br i1 %tobool95.not, label %if.then93.if.end111_crit_edge, label %if.then96

if.then93.if.end111_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then96:                                        ; preds = %if.then93
  %and99 = and i32 %46, -16777217
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and99, ptr %flags, align 4
  %49 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool103.not = icmp eq i32 %49, 0
  br i1 %tobool103.not, label %if.then96.if.end111_crit_edge, label %if.then104

if.then96.if.end111_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then104:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %and107 = and i32 %46, -50331649
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and107, ptr %flags, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then104, %if.then96.if.end111_crit_edge, %if.then93.if.end111_crit_edge, %if.end88.if.end111_crit_edge
  %flags_to_restore.0 = phi i32 [ 50331648, %if.then104 ], [ 16777216, %if.then96.if.end111_crit_edge ], [ 0, %if.then93.if.end111_crit_edge ], [ 0, %if.end88.if.end111_crit_edge ]
  %payload_len.0 = phi i32 [ %sub91, %if.then104 ], [ %sub91, %if.then96.if.end111_crit_edge ], [ %sub91, %if.then93.if.end111_crit_edge ], [ %sub, %if.end88.if.end111_crit_edge ]
  %51 = call i32 @llvm.bswap.i32(i32 %payload_len.0)
  %len113 = getelementptr i8, ptr %6, i32 -20
  %52 = ptrtoint ptr %len113 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %len113, align 4
  %call3.i = call i32 @_copy_to_iter(ptr noundef %add.ptr, i32 noundef 44, ptr noundef nonnull %iov_iter) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %call3.i)
  %cmp116.not = icmp eq i32 %call3.i, 44
  br i1 %cmp116.not, label %if.end143, label %if.then117

if.then117:                                       ; preds = %if.end111
  call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_transport_do_send_pkt, %if.then131)) #11
          to label %do.end134 [label %if.then131], !srcloc !98

if.then131:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.19) #11
  br label %do.end134

do.end134:                                        ; preds = %if.then131, %if.then117
  %error_ctx135 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %53 = ptrtoint ptr %error_ctx135 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %error_ctx135, align 4
  %tobool136.not = icmp eq ptr %54, null
  br i1 %tobool136.not, label %do.end134.cleanup.thread_crit_edge, label %if.then137

do.end134.cleanup.thread_crit_edge:               ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then137:                                       ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #13
  %call139 = call i64 @eventfd_signal(ptr noundef nonnull %54, i64 noundef 1) #11
  br label %cleanup.thread

if.end143:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_len.0)
  %cmp9.i.i = icmp slt i32 %payload_len.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end143
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit341_crit_edge, label %if.then27.i.i, !prof !90

land.rhs16.i.i.copy_to_iter.exit341_crit_edge:    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_iter.exit341

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %copy_to_iter.exit341

if.then.i.i.i:                                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %buf = getelementptr i8, ptr %6, i32 12
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf, align 4
  %57 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %off, align 4
  %add.ptr145 = getelementptr i8, ptr %56, i32 %58
  call void @__check_object_size(ptr noundef %add.ptr145, i32 noundef %payload_len.0, i1 noundef zeroext true) #11
  %call3.i339 = call i32 @_copy_to_iter(ptr noundef %add.ptr145, i32 noundef %payload_len.0, ptr noundef nonnull %iov_iter) #11
  br label %copy_to_iter.exit341

copy_to_iter.exit341:                             ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit341_crit_edge
  %retval.0.i340 = phi i32 [ %call3.i339, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.copy_to_iter.exit341_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i340, i32 %payload_len.0)
  %cmp147.not = icmp eq i32 %retval.0.i340, %payload_len.0
  br i1 %cmp147.not, label %if.end174, label %if.then148

if.then148:                                       ; preds = %copy_to_iter.exit341
  call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vhost_transport_do_send_pkt, %if.then162)) #11
          to label %do.end165 [label %if.then162], !srcloc !98

if.then162:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.20) #11
  br label %do.end165

do.end165:                                        ; preds = %if.then162, %if.then148
  %error_ctx166 = getelementptr inbounds %struct.vhost_virtqueue, ptr %vq, i32 0, i32 9
  %59 = ptrtoint ptr %error_ctx166 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %error_ctx166, align 4
  %tobool167.not = icmp eq ptr %60, null
  br i1 %tobool167.not, label %do.end165.cleanup.thread_crit_edge, label %if.then168

do.end165.cleanup.thread_crit_edge:               ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then168:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #13
  %call170 = call i64 @eventfd_signal(ptr noundef nonnull %60, i64 noundef 1) #11
  br label %cleanup.thread

if.end174:                                        ; preds = %copy_to_iter.exit341
  call void @virtio_transport_deliver_tap_pkt(ptr noundef %add.ptr) #11
  %add = add i32 %payload_len.0, 44
  %call175 = call i32 @vhost_add_used(ptr noundef %vq, i32 noundef %call14, i32 noundef %add) #11
  %61 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %off, align 4
  %add177 = add i32 %62, %payload_len.0
  store i32 %add177, ptr %off, align 4
  %add178 = add i32 %payload_len.0, %total_len.0
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add177, i32 %64)
  %cmp181 = icmp ult i32 %add177, %64
  br i1 %cmp181, label %if.then182, label %if.else

if.then182:                                       ; preds = %if.end174
  %flags184 = getelementptr i8, ptr %6, i32 -12
  %65 = ptrtoint ptr %flags184 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags184, align 4
  %or185 = or i32 %66, %flags_to_restore.0
  store i32 %or185, ptr %flags184, align 4
  %tap_delivered = getelementptr i8, ptr %6, i32 29
  %67 = ptrtoint ptr %tap_delivered to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %tap_delivered, align 1
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %68 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %send_pkt_list, align 4
  %call.i.i353 = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %send_pkt_list, ptr noundef %69) #11
  br i1 %call.i.i353, label %if.end.i.i356, label %if.then182.list_add.exit357_crit_edge

if.then182.list_add.exit357_crit_edge:            ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit357

if.end.i.i356:                                    ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i354 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i354 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %6, ptr %prev1.i.i354, align 4
  %71 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %6, align 4
  %72 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %send_pkt_list, ptr %prev.i3.i, align 4
  %73 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %6, ptr %send_pkt_list, align 4
  br label %list_add.exit357

list_add.exit357:                                 ; preds = %if.end.i.i356, %if.then182.list_add.exit357_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  br label %do.cond208

if.else:                                          ; preds = %if.end174
  %reply = getelementptr i8, ptr %6, i32 28
  %74 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %reply, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool190.not = icmp eq i8 %75, 0
  br i1 %tobool190.not, label %if.else.if.end198_crit_edge, label %if.then191

if.else.if.end198_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end198

if.then191:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @llvm.prefetch.p0(ptr %queued_replies, i32 1, i32 3, i32 1) #11
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_replies, ptr %queued_replies, i32 1, ptr elementtype(i32) %queued_replies) #11, !srcloc !101
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %76, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  %add193 = add i32 %asmresult.i.i.i.i, 1
  %77 = ptrtoint ptr %num194 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num194, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add193, i32 %78)
  %cmp195 = icmp eq i32 %add193, %78
  %spec.select = select i1 %cmp195, i8 1, i8 %restart_tx.0
  br label %if.end198

if.end198:                                        ; preds = %if.then191, %if.else.if.end198_crit_edge
  %restart_tx.2 = phi i8 [ %spec.select, %if.then191 ], [ %restart_tx.0, %if.else.if.end198_crit_edge ]
  call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #11
  br label %do.cond208

cleanup.thread:                                   ; preds = %if.then168, %do.end165.cleanup.thread_crit_edge, %if.then137, %do.end134.cleanup.thread_crit_edge, %if.then82, %do.end79.cleanup.thread_crit_edge, %if.then51, %do.end.cleanup.thread_crit_edge, %list_add.exit352.cleanup.thread_crit_edge, %list_add.exit, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter) #11
  %79 = and i8 %restart_tx.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %extract.t317375 = icmp ne i8 %79, 0
  br i1 %added.0.off0, label %cleanup.thread.if.then220_crit_edge, label %cleanup.thread.out223_crit_edge

cleanup.thread.out223_crit_edge:                  ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %out223

cleanup.thread.if.then220_crit_edge:              ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then220

do.cond208:                                       ; preds = %if.end198, %list_add.exit357, %if.then31
  %restart_tx.4 = phi i8 [ %restart_tx.0, %if.then31 ], [ %restart_tx.0, %list_add.exit357 ], [ %restart_tx.2, %if.end198 ]
  %added.1.off0 = phi i1 [ %added.0.off0, %if.then31 ], [ true, %list_add.exit357 ], [ true, %if.end198 ]
  %total_len.1 = phi i32 [ %total_len.0, %if.then31 ], [ %add178, %list_add.exit357 ], [ %add178, %if.end198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov_iter) #11
  %inc = add i32 %pkts.0, 1
  %call209 = call zeroext i1 @vhost_exceeds_weight(ptr noundef %vq, i32 noundef %inc, i32 noundef %total_len.1) #11
  br i1 %call209, label %do.end218, label %do.cond208.do.body_crit_edge, !prof !97

do.cond208.do.body_crit_edge:                     ; preds = %do.cond208
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end218:                                        ; preds = %do.cond208
  %80 = and i8 %restart_tx.4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %extract.t317 = icmp ne i8 %80, 0
  br i1 %added.1.off0, label %do.end218.if.then220_crit_edge, label %do.end218.out223_crit_edge

do.end218.out223_crit_edge:                       ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %out223

do.end218.if.then220_crit_edge:                   ; preds = %do.end218
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then220

if.then220:                                       ; preds = %do.end218.if.then220_crit_edge, %cleanup.thread.if.then220_crit_edge
  %extract.t317377 = phi i1 [ %extract.t317375, %cleanup.thread.if.then220_crit_edge ], [ %extract.t317, %do.end218.if.then220_crit_edge ]
  call void @vhost_signal(ptr noundef %vsock, ptr noundef %vq) #11
  call void @mutex_unlock(ptr noundef %mutex) #11
  br i1 %extract.t317377, label %if.then220.if.then226_crit_edge, label %if.then220.if.end227_crit_edge

if.then220.if.end227_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

if.then220.if.then226_crit_edge:                  ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then226

out223:                                           ; preds = %do.end218.out223_crit_edge, %cleanup.thread.out223_crit_edge
  %extract.t317376 = phi i1 [ %extract.t317375, %cleanup.thread.out223_crit_edge ], [ %extract.t317, %do.end218.out223_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #11
  br i1 %extract.t317376, label %out223.if.then226_crit_edge, label %out223.if.end227_crit_edge

out223.if.end227_crit_edge:                       ; preds = %out223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end227

out223.if.then226_crit_edge:                      ; preds = %out223
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then226

if.then226:                                       ; preds = %out223.if.then226_crit_edge, %if.then220.if.then226_crit_edge
  %poll = getelementptr %struct.vhost_vsock, ptr %vsock, i32 0, i32 1, i32 1, i32 11
  call void @vhost_poll_queue(ptr noundef %poll) #11
  br label %if.end227

if.end227.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end227

if.end227.critedge327:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %mutex) #11
  br label %if.end227

if.end227:                                        ; preds = %if.end227.critedge327, %if.end227.critedge, %if.then226, %out223.if.end227_crit_edge, %if.then220.if.end227_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_poll_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsock_for_each_connected_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vhost_vsock_reset_orphans(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %svm_cid = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_cid, align 4
  %call = tail call fastcc ptr @vhost_vsock_get(i32 noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %close_work_scheduled = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 18
  %2 = ptrtoint ptr %close_work_scheduled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %close_work_scheduled, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %or.i.i = or i32 %6, 2
  store i32 %or.i.i, ptr %4, align 4
  %peer_shutdown = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 19
  %7 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %peer_shutdown, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 1, ptr %skc_state, align 2
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %9 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 104, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %sk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vhost_dev_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_do_socket_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_destruct(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_transport_cancel_pkt(ptr noundef readonly %vsk) #2 align 64 {
entry:
  %freeme = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freeme) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %freeme, i32 0, i32 1
  %1 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freeme, ptr %freeme, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freeme, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %svm_cid = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %svm_cid, align 4
  %call = call fastcc ptr @vhost_vsock_get(i32 noundef %8)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.out_crit_edge, label %if.end

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %rcu_read_lock.exit
  %send_pkt_list_lock = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 4
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %send_pkt_list = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %send_pkt_list, align 8
  %cmp.not96 = icmp eq ptr %10, %send_pkt_list
  br i1 %cmp.not96, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in97 = phi ptr [ %.pn99, %for.inc.for.body_crit_edge ], [ %10, %if.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %.pn.in97 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn99 = load ptr, ptr %.pn.in97, align 4
  %vsk8 = getelementptr i8, ptr %.pn.in97, i32 8
  %12 = ptrtoint ptr %vsk8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vsk8, align 4
  %cmp9.not = icmp eq ptr %13, %vsk
  br i1 %cmp9.not, label %if.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %call.i.i80 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in97) #11
  br i1 %call.i.i80, label %if.end.i.i, label %if.end11.__list_del_entry.exit.i_crit_edge

if.end11.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in97, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %.pn.in97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn.in97, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end11.__list_del_entry.exit.i_crit_edge
  %20 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %freeme, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in97, ptr noundef nonnull %freeme, ptr noundef %21) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %.pn.in97, ptr %prev1.i.i2.i, align 4
  %23 = ptrtoint ptr %.pn.in97 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %.pn.in97, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in97, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %freeme, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn.in97, ptr %freeme, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn99, %send_pkt_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  %26 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %freeme, align 4
  %cmp30.not102 = icmp eq ptr %27, %freeme
  br i1 %cmp30.not102, label %for.end.out_crit_edge, label %for.end.for.body32_crit_edge

for.end.for.body32_crit_edge:                     ; preds = %for.end
  br label %for.body32

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body32:                                       ; preds = %list_del.exit.for.body32_crit_edge, %for.end.for.body32_crit_edge
  %.pn77.in104 = phi ptr [ %.pn77107, %list_del.exit.for.body32_crit_edge ], [ %27, %for.end.for.body32_crit_edge ]
  %cnt.0103 = phi i32 [ %spec.select, %list_del.exit.for.body32_crit_edge ], [ 0, %for.end.for.body32_crit_edge ]
  %pkt.1106 = getelementptr i8, ptr %.pn77.in104, i32 -44
  %28 = ptrtoint ptr %.pn77.in104 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn77107 = load ptr, ptr %.pn77.in104, align 4
  %reply = getelementptr i8, ptr %.pn77.in104, i32 28
  %29 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reply, align 4, !range !99
  %31 = zext i8 %30 to i32
  %spec.select = add i32 %cnt.0103, %31
  %call.i.i81 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn77.in104) #11
  br i1 %call.i.i81, label %if.end.i.i84, label %for.body32.list_del.exit_crit_edge

for.body32.list_del.exit_crit_edge:               ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i84:                                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i82 = getelementptr inbounds %struct.list_head, ptr %.pn77.in104, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i82 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i82, align 4
  %34 = ptrtoint ptr %.pn77.in104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn77.in104, align 4
  %prev1.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i83, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i84, %for.body32.list_del.exit_crit_edge
  %38 = ptrtoint ptr %.pn77.in104 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn77.in104, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn77.in104, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @virtio_transport_free_pkt(ptr noundef %pkt.1106) #11
  %cmp30.not = icmp eq ptr %.pn77107, %freeme
  br i1 %cmp30.not, label %for.end43, label %list_del.exit.for.body32_crit_edge

list_del.exit.for.body32_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

for.end43:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool44.not = icmp eq i32 %spec.select, 0
  br i1 %tobool44.not, label %for.end43.out_crit_edge, label %if.then45

for.end43.out_crit_edge:                          ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then45:                                        ; preds = %for.end43
  %queued_replies = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !100
  call void @llvm.prefetch.p0(ptr %queued_replies, i32 1, i32 3, i32 1) #11
  %40 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_replies, ptr %queued_replies, i32 %spec.select, ptr elementtype(i32) %queued_replies) #11, !srcloc !101
  %asmresult.i.i.i = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !102
  %add = add i32 %asmresult.i.i.i, %spec.select
  %num = getelementptr %struct.vhost_vsock, ptr %call, i32 0, i32 1, i32 1, i32 2
  %41 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %42)
  %cmp47.not = icmp uge i32 %add, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %42)
  %cmp49 = icmp ult i32 %asmresult.i.i.i, %42
  %or.cond = and i1 %cmp47.not, %cmp49
  br i1 %or.cond, label %if.then50, label %if.then45.out_crit_edge

if.then45.out_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %poll = getelementptr %struct.vhost_vsock, ptr %call, i32 0, i32 1, i32 1, i32 11
  call void @vhost_poll_queue(ptr noundef %poll) #11
  br label %out

out:                                              ; preds = %if.then50, %if.then45.out_crit_edge, %for.end43.out_crit_edge, %for.end.out_crit_edge, %rcu_read_lock.exit.out_crit_edge
  %ret.0 = phi i32 [ -19, %rcu_read_lock.exit.out_crit_edge ], [ 0, %if.then45.out_crit_edge ], [ 0, %if.then50 ], [ 0, %for.end43.out_crit_edge ], [ 0, %for.end.out_crit_edge ]
  %call.i86 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i86, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i89

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i89:                                ; preds = %out
  %call1.i87 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool.not.i88 = icmp eq i32 %call1.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i91

land.lhs.true.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i91:                               ; preds = %land.lhs.true.i89
  %.b4.i90 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i90, label %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, label %if.then.i92

land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i92:                                      ; preds = %land.lhs.true2.i91
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i92, %land.lhs.true2.i91.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i89.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %43 = call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i93 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i93 to ptr
  %preempt_count.i.i.i.i94 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i94, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i94, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freeme) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_connect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_dgram_bind(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_dgram_dequeue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_dgram_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_transport_dgram_allow(i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_stream_dequeue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_stream_enqueue(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @virtio_transport_stream_has_data(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @virtio_transport_stream_has_space(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @virtio_transport_stream_rcvhiwat(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_transport_stream_is_active(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtio_transport_stream_allow(i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_seqpacket_dequeue(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_seqpacket_enqueue(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vhost_transport_seqpacket_allow(i32 noundef %remote_cid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @vhost_vsock_get(i32 noundef %remote_cid)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %seqpacket_allow1 = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %seqpacket_allow1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %seqpacket_allow1, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2 = icmp ne i8 %5, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %seqpacket_allow.0.off0 = phi i1 [ %tobool2, %if.then ], [ false, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i5 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i5, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.end
  %call1.i6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %6 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i12 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i12 to ptr
  %preempt_count.i.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i13, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i13, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i1 %seqpacket_allow.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_seqpacket_has_data(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_poll_in(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_poll_out(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_init(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_pre_block(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_pre_dequeue(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_recv_post_dequeue(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_pre_block(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_pre_enqueue(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_notify_send_post_enqueue(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_notify_buffer_size(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_shutdown(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vhost_transport_send_pkt(ptr noundef %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 5
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dst_cid = getelementptr inbounds %struct.virtio_vsock_hdr, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %dst_cid to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %dst_cid, align 4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %conv = trunc i64 %8 to i32
  %call = tail call fastcc ptr @vhost_vsock_get(i32 noundef %conv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i17, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.then
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %9 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i24 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @virtio_transport_free_pkt(ptr noundef %pkt) #11
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %reply = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 7
  %13 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reply, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not = icmp eq i8 %14, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %queued_replies = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %queued_replies, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_replies, ptr %queued_replies, i32 1, ptr elementtype(i32) %queued_replies) #11, !srcloc !105
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %send_pkt_list_lock = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #11
  %list = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 1
  %send_pkt_list = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %17, ptr noundef %send_pkt_list) #11
  br i1 %call.i.i26, label %if.end.i.i, label %if.end4.list_add_tail.exit_crit_edge

if.end4.list_add_tail.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list, ptr %prev.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %send_pkt_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end4.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #11
  %send_pkt_work = getelementptr inbounds %struct.vhost_vsock, ptr %call, i32 0, i32 3
  tail call void @vhost_work_queue(ptr noundef nonnull %call, ptr noundef %send_pkt_work) #11
  %call.i27 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i27, label %list_add_tail.exit.rcu_read_unlock.exit37_crit_edge, label %land.lhs.true.i30

list_add_tail.exit.rcu_read_unlock.exit37_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit37

land.lhs.true.i30:                                ; preds = %list_add_tail.exit
  %call1.i28 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool.not.i29, label %land.lhs.true.i30.rcu_read_unlock.exit37_crit_edge, label %land.lhs.true2.i32

land.lhs.true.i30.rcu_read_unlock.exit37_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit37

land.lhs.true2.i32:                               ; preds = %land.lhs.true.i30
  %.b4.i31 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i31, label %land.lhs.true2.i32.rcu_read_unlock.exit37_crit_edge, label %if.then.i33

land.lhs.true2.i32.rcu_read_unlock.exit37_crit_edge: ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit37

if.then.i33:                                      ; preds = %land.lhs.true2.i32
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit37

rcu_read_unlock.exit37:                           ; preds = %if.then.i33, %land.lhs.true2.i32.rcu_read_unlock.exit37_crit_edge, %land.lhs.true.i30.rcu_read_unlock.exit37_crit_edge, %list_add_tail.exit.rcu_read_unlock.exit37_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !104
  %22 = tail call i32 @llvm.read_register.i32(metadata !78) #11
  %and.i.i.i.i.i34 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i34 to ptr
  %preempt_count.i.i.i.i35 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i35, align 4
  %sub.i.i.i36 = add i32 %25, -1
  store volatile i32 %sub.i.i.i36, ptr %preempt_count.i.i.i.i35, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit37, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %1, %rcu_read_unlock.exit37 ], [ -19, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsock_core_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !73, !74, !75, !77}
!llvm.named.register.sp = !{!78}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_vhost_vsock__487_976_vhost_vsock_init6, !1, !"__initcall__kmod_vhost_vsock__487_976_vhost_vsock_init6", i1 false, i1 false}
!1 = !{!"../drivers/vhost/vsock.c", i32 976, i32 1}
!2 = !{ptr @__exitcall_vhost_vsock_exit, !3, !"__exitcall_vhost_vsock_exit", i1 false, i1 false}
!3 = !{!"../drivers/vhost/vsock.c", i32 977, i32 1}
!4 = !{ptr @__UNIQUE_ID_file488, !5, !"__UNIQUE_ID_file488", i1 false, i1 false}
!5 = !{!"../drivers/vhost/vsock.c", i32 978, i32 1}
!6 = !{ptr @__UNIQUE_ID_license489, !5, !"__UNIQUE_ID_license489", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author490, !8, !"__UNIQUE_ID_author490", i1 false, i1 false}
!8 = !{!"../drivers/vhost/vsock.c", i32 979, i32 1}
!9 = !{ptr @__UNIQUE_ID_description491, !10, !"__UNIQUE_ID_description491", i1 false, i1 false}
!10 = !{!"../drivers/vhost/vsock.c", i32 980, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias492, !12, !"__UNIQUE_ID_alias492", i1 false, i1 false}
!12 = !{!"../drivers/vhost/vsock.c", i32 981, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias493, !14, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!14 = !{!"../drivers/vhost/vsock.c", i32 982, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/vhost/vsock.c", i32 955, i32 10}
!17 = !{ptr @vhost_vsock_misc, !18, !"vhost_vsock_misc", i1 false, i1 false}
!18 = !{!"../drivers/vhost/vsock.c", i32 953, i32 26}
!19 = !{ptr @vhost_vsock_fops, !20, !"vhost_vsock_fops", i1 false, i1 false}
!20 = !{!"../drivers/vhost/vsock.c", i32 941, i32 37}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/vhost/vsock.c", i32 43, i32 8}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vhost_vsock_mutex, !29, !"vhost_vsock_mutex", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/vhost/vsock.c", i32 75, i32 2}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @vhost_vsock_hash, !37, !"vhost_vsock_hash", i1 false, i1 false}
!37 = !{!"../drivers/vhost/vsock.c", i32 44, i32 8}
!38 = !{ptr @vhost_vsock_dev_open.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/vhost/vsock.c", i32 696, i32 2}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/vhost/vsock.c", i32 537, i32 4}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vhost_vsock_handle_tx_kick.__UNIQUE_ID_ddebug486, !42, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/vhost/vsock.c", i32 365, i32 3}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug483, !47, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/vhost/vsock.c", i32 378, i32 3}
!52 = !{ptr @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug484, !51, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/vhost/vsock.c", i32 406, i32 3}
!55 = !{ptr @vhost_vsock_alloc_pkt.__UNIQUE_ID_ddebug485, !54, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/vhost/vsock.c", i32 157, i32 4}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug479, !57, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/vhost/vsock.c", i32 164, i32 4}
!62 = !{ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug480, !61, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/vhost/vsock.c", i32 205, i32 4}
!65 = !{ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug481, !64, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/vhost/vsock.c", i32 213, i32 4}
!68 = !{ptr @vhost_transport_do_send_pkt.__UNIQUE_ID_ddebug482, !67, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!69 = !{ptr @vhost_transport, !70, !"vhost_transport", i1 false, i1 false}
!70 = !{!"../drivers/vhost/vsock.c", i32 429, i32 32}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!78 = !{!"sp"}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"auto-init"}
!89 = !{i64 2154002007, i64 2154002032}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i64 6497562}
!92 = !{i64 6497759}
!93 = !{i64 2153982992}
!94 = !{i64 2149424529}
!95 = !{i64 2154002688, i64 2154002713}
!96 = !{i64 2157258345}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2148424898, i64 2148424903, i64 2148424916, i64 2148424960, i64 2148424994, i64 2148425015}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148689559}
!101 = !{i64 2148604268, i64 2148604300, i64 2148604329, i64 2148604363, i64 2148604394, i64 2148604417}
!102 = !{i64 2148689788}
!103 = !{i64 2149322918}
!104 = !{i64 2149323184}
!105 = !{i64 2148601083, i64 2148601109, i64 2148601138, i64 2148601172, i64 2148601203, i64 2148601226}
