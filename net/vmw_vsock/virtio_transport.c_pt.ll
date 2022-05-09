; ModuleID = '/llk/IR_all_yes/net/vmw_vsock/virtio_transport.c_pt.bc'
source_filename = "../net/vmw_vsock/virtio_transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_transport = type { %struct.vsock_transport, ptr }
%struct.vsock_transport = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtio_vsock = type <{ ptr, [3 x ptr], %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mutex, i8, [3 x i8], %struct.work_struct, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.mutex, i8, [3 x i8], i32, i32, %struct.mutex, i8, [8 x %struct.virtio_vsock_event], [3 x i8], i32, i8, [3 x i8] }>
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.virtio_vsock_event = type { i32 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_vsock_pkt = type { %struct.virtio_vsock_hdr, %struct.list_head, ptr, ptr, i32, i32, i32, i8, i8 }
%struct.virtio_vsock_hdr = type <{ i64, i64, i32, i32, i32, i16, i16, i32, i32, i32 }>
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
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@virtio_vsock_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr null, ptr @virtio_vsock_probe, ptr null, ptr @virtio_vsock_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@virtio_transport = internal global { %struct.virtio_transport, [52 x i8] } { %struct.virtio_transport { %struct.vsock_transport { ptr null, ptr @virtio_transport_do_socket_init, ptr @virtio_transport_destruct, ptr @virtio_transport_release, ptr @virtio_transport_cancel_pkt, ptr @virtio_transport_connect, ptr @virtio_transport_dgram_bind, ptr @virtio_transport_dgram_dequeue, ptr @virtio_transport_dgram_enqueue, ptr @virtio_transport_dgram_allow, ptr @virtio_transport_stream_dequeue, ptr @virtio_transport_stream_enqueue, ptr @virtio_transport_stream_has_data, ptr @virtio_transport_stream_has_space, ptr @virtio_transport_stream_rcvhiwat, ptr @virtio_transport_stream_is_active, ptr @virtio_transport_stream_allow, ptr @virtio_transport_seqpacket_dequeue, ptr @virtio_transport_seqpacket_enqueue, ptr @virtio_transport_seqpacket_allow, ptr @virtio_transport_seqpacket_has_data, ptr @virtio_transport_notify_poll_in, ptr @virtio_transport_notify_poll_out, ptr @virtio_transport_notify_recv_init, ptr @virtio_transport_notify_recv_pre_block, ptr @virtio_transport_notify_recv_pre_dequeue, ptr @virtio_transport_notify_recv_post_dequeue, ptr @virtio_transport_notify_send_init, ptr @virtio_transport_notify_send_pre_block, ptr @virtio_transport_notify_send_pre_enqueue, ptr @virtio_transport_notify_send_post_enqueue, ptr @virtio_transport_notify_buffer_size, ptr @virtio_transport_shutdown, ptr @virtio_transport_get_local_cid }, ptr @virtio_transport_send_pkt }, [52 x i8] zeroinitializer }, align 32
@virtio_vsock_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_vmw_vsock_virtio_transport__474_777_virtio_vsock_init6 = internal global ptr @virtio_vsock_init, section ".initcall6.init", align 4
@__exitcall_virtio_vsock_exit = internal global ptr @virtio_vsock_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file475 = internal constant [73 x i8] c"vmw_vsock_virtio_transport.file=net/vmw_vsock/vmw_vsock_virtio_transport\00", section ".modinfo", align 1
@__UNIQUE_ID_license476 = internal constant [42 x i8] c"vmw_vsock_virtio_transport.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author477 = internal constant [43 x i8] c"vmw_vsock_virtio_transport.author=Asias He\00", section ".modinfo", align 1
@__UNIQUE_ID_description478 = internal constant [66 x i8] c"vmw_vsock_virtio_transport.description=virtio transport for vsock\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vmw_vsock_virtio_transport\00", [37 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 19, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@__const.virtio_vsock_probe.callbacks = private unnamed_addr constant [3 x ptr] [ptr @virtio_vsock_rx_done, ptr @virtio_vsock_tx_done, ptr @virtio_vsock_event_done], align 4
@virtio_vsock_probe.names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"event\00", [26 x i8] zeroinitializer }, align 32
@the_virtio_vsock_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @the_virtio_vsock_mutex, i64 52), ptr getelementptr (i8, ptr @the_virtio_vsock_mutex, i64 52) }, ptr @the_virtio_vsock_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/vmw_vsock/virtio_transport.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@the_virtio_vsock = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@virtio_vsock_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vsock->tx_lock\00", [16 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vsock->rx_lock\00", [16 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vsock->event_lock\00", [45 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&vsock->send_pkt_list_lock\00", [37 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&vsock->rx_work)\00", [61 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&vsock->tx_work)\00", [61 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&vsock->event_work)\00", [58 x i8] zeroinitializer }, align 32
@virtio_vsock_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&vsock->send_pkt_work)\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"the_virtio_vsock_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"the_virtio_vsock_mutex\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@virtio_transport_cancel_pkt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@virtio_transport_seqpacket_allow.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@virtio_transport_get_local_cid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@virtio_transport_send_pkt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"virtio_vsock\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"virtio_vsock_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 734, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"virtio_transport\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 454, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"virtio_vsock_workqueue\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 24, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 737, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 725, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 730, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 576, i32 28 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 577, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 578, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 579, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"the_virtio_vsock_mutex\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 589, i32 6 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"the_virtio_vsock\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 25, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 615, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 616, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 617, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 618, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 620, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 621, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 622, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 623, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 26, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 209, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 695, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 723, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [36 x i8] c"../net/vmw_vsock/virtio_transport.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 748, i32 43 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author477, ptr @__UNIQUE_ID_description478, ptr @__UNIQUE_ID_file475, ptr @__UNIQUE_ID_license476, ptr @__exitcall_virtio_vsock_exit, ptr @__initcall__kmod_vmw_vsock_virtio_transport__474_777_virtio_vsock_init6, ptr @virtio_vsock_exit, ptr @virtio_vsock_driver, ptr @virtio_transport, ptr @virtio_vsock_workqueue, ptr @.str, ptr @id_table, ptr @features, ptr @virtio_vsock_probe.names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @the_virtio_vsock_mutex, ptr @.str.4, ptr @.str.5, ptr @the_virtio_vsock, ptr @virtio_vsock_probe.__key, ptr @.str.6, ptr @virtio_vsock_probe.__key.7, ptr @.str.8, ptr @virtio_vsock_probe.__key.9, ptr @.str.10, ptr @virtio_vsock_probe.__key.11, ptr @.str.12, ptr @virtio_vsock_probe.__key.13, ptr @.str.14, ptr @virtio_vsock_probe.__key.15, ptr @.str.16, ptr @virtio_vsock_probe.__key.17, ptr @.str.18, ptr @virtio_vsock_probe.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_transport to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_virtio_vsock_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @the_virtio_vsock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_vsock_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vsock_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_vsock_driver) #9
  tail call void @vsock_core_unregister(ptr noundef nonnull @virtio_transport) #9
  %0 = load ptr, ptr @virtio_vsock_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsock_core_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vsock_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.27, i32 noundef 0, i32 noundef 0) #9
  store ptr %call, ptr @virtio_vsock_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vsock_core_register(ptr noundef nonnull @virtio_transport, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_wq_crit_edge

if.end.out_wq_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wq

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_vsock_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %out_vci

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_vci:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vsock_core_unregister(ptr noundef nonnull @virtio_transport) #9
  br label %out_wq

out_wq:                                           ; preds = %out_vci, %if.end.out_wq_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_wq_crit_edge ], [ %call5, %out_vci ]
  %0 = load ptr, ptr @virtio_vsock_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  br label %cleanup

cleanup:                                          ; preds = %out_wq, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_wq ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_vsock_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %sg.i.i = alloca %struct.scatterlist, align 4
  %guest_cid.i = alloca i64, align 8
  %callbacks = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %callbacks) #9
  %0 = call ptr @memcpy(ptr %callbacks, ptr @__const.virtio_vsock_probe.callbacks, i32 12)
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @the_virtio_vsock_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @the_virtio_vsock_mutex, i32 0, i32 5), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b182 = load i1, ptr @virtio_vsock_probe.__warned, align 1
  br i1 %.b182, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @virtio_vsock_probe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 590, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %1 = load ptr, ptr @the_virtio_vsock, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.end11, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end11:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 584) #12
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %if.end11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vdev, ptr %call7.i.i, align 8
  %vqs = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 1
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %find_vqs.i, align 4
  %call.i183 = call i32 %7(ptr noundef %vdev, i32 noundef 3, ptr noundef %vqs, ptr noundef nonnull %callbacks, ptr noundef nonnull @virtio_vsock_probe.names, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp = icmp slt i32 %call.i183, 0
  br i1 %cmp, label %if.end15.out_crit_edge, label %if.end21

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %guest_cid.i) #9
  %10 = ptrtoint ptr %guest_cid.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %guest_cid.i, align 8, !annotation !93
  %config.i184 = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 8
  %11 = ptrtoint ptr %config.i184 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i184, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get.i, align 4
  call void %14(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %guest_cid.i, i32 noundef 8) #9
  %15 = ptrtoint ptr %guest_cid.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %guest_cid.i, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16) #9
  %conv.i = trunc i64 %17 to i32
  %guest_cid2.i = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 21
  %18 = ptrtoint ptr %guest_cid2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %guest_cid2.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %guest_cid.i) #9
  %rx_buf_nr = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %rx_buf_nr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rx_buf_nr, align 8
  %rx_buf_max_nr = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %rx_buf_max_nr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx_buf_max_nr, align 4
  %queued_replies = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #9
  %21 = ptrtoint ptr %queued_replies to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %queued_replies, align 4
  %tx_lock = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @virtio_vsock_probe.__key) #9
  %rx_lock = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 12
  call void @__mutex_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @virtio_vsock_probe.__key.7) #9
  %event_lock = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 17
  call void @__mutex_init(ptr noundef %event_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @virtio_vsock_probe.__key.9) #9
  %send_pkt_list_lock = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %send_pkt_list_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtio_vsock_probe.__key.11, i16 noundef signext 3) #9
  %send_pkt_list = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %send_pkt_list, ptr %send_pkt_list, align 4
  %prev.i = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %send_pkt_list, ptr %prev.i, align 8
  %rx_work = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %rx_work, i32 noundef 0) #9
  %24 = ptrtoint ptr %rx_work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %rx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.14, ptr noundef nonnull @virtio_vsock_probe.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry39 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry39, ptr %entry39, align 8
  %prev.i185 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i185 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry39, ptr %prev.i185, align 4
  %func = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @virtio_transport_rx_work, ptr %func, align 8
  %tx_work = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 2
  call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #9
  %28 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %tx_work, align 8
  %lockdep_map49 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.16, ptr noundef nonnull @virtio_vsock_probe.__key.15, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry51 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry51, ptr %entry51, align 4
  %prev.i186 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i186 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry51, ptr %prev.i186, align 8
  %func53 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %func53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @virtio_transport_tx_work, ptr %func53, align 4
  %event_work = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 4
  call void @__init_work(ptr noundef %event_work, i32 noundef 0) #9
  %32 = ptrtoint ptr %event_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %event_work, align 8
  %lockdep_map62 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map62, ptr noundef nonnull @.str.18, ptr noundef nonnull @virtio_vsock_probe.__key.17, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry64 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i187 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i187 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry64, ptr %prev.i187, align 8
  %func66 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %func66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @virtio_transport_event_work, ptr %func66, align 4
  %send_pkt_work = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 8
  call void @__init_work(ptr noundef %send_pkt_work, i32 noundef 0) #9
  %36 = ptrtoint ptr %send_pkt_work to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %send_pkt_work, align 4
  %lockdep_map75 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 8, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map75, ptr noundef nonnull @.str.20, ptr noundef nonnull @virtio_vsock_probe.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry77 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %entry77 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %entry77, ptr %entry77, align 8
  %prev.i188 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i188 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %entry77, ptr %prev.i188, align 4
  %func79 = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 8, i32 2
  %39 = ptrtoint ptr %func79 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @virtio_transport_send_pkt_work, ptr %func79, align 8
  call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #9
  %tx_run = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %tx_run to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %tx_run, align 8
  call void @mutex_unlock(ptr noundef %tx_lock) #9
  call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #9
  call fastcc void @virtio_vsock_rx_fill(ptr noundef nonnull %call7.i.i)
  %rx_run = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 13
  %41 = ptrtoint ptr %rx_run to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %rx_run, align 4
  call void @mutex_unlock(ptr noundef %rx_lock) #9
  call void @mutex_lock_nested(ptr noundef %event_lock, i32 noundef 0) #9
  %arrayidx.i.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 1, i32 2
  %arrayidx.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %42 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.i, i32 noundef 4) #9
  %call.i.i189 = call i32 @virtqueue_add_inbuf(ptr noundef %44, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.1.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %45 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.1.i, i32 noundef 4) #9
  %call.i.1.i = call i32 @virtqueue_add_inbuf(ptr noundef %47, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.1.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.2.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %48 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.2.i, i32 noundef 4) #9
  %call.i.2.i = call i32 @virtqueue_add_inbuf(ptr noundef %50, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.2.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.3.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %51 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.3.i, i32 noundef 4) #9
  %call.i.3.i = call i32 @virtqueue_add_inbuf(ptr noundef %53, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.3.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.4.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %54 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.4.i, i32 noundef 4) #9
  %call.i.4.i = call i32 @virtqueue_add_inbuf(ptr noundef %56, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.4.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.5.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %57 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.5.i, i32 noundef 4) #9
  %call.i.5.i = call i32 @virtqueue_add_inbuf(ptr noundef %59, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.5.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.6.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %60 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.6.i, i32 noundef 4) #9
  %call.i.6.i = call i32 @virtqueue_add_inbuf(ptr noundef %62, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.6.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %arrayidx.7.i = getelementptr %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 19, i32 7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #9
  %63 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %arrayidx.7.i, i32 noundef 4) #9
  %call.i.7.i = call i32 @virtqueue_add_inbuf(ptr noundef %65, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %arrayidx.7.i, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #9
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i, align 4
  %call2.i = call zeroext i1 @virtqueue_kick(ptr noundef %67) #9
  %event_run = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 18
  %68 = ptrtoint ptr %event_run to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %event_run, align 4
  call void @mutex_unlock(ptr noundef %event_lock) #9
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 1) #9
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %69 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %70, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.end21.if.end90_crit_edge, label %if.then89

if.end21.if.end90_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then89:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %seqpacket_allow = getelementptr inbounds %struct.virtio_vsock, ptr %call7.i.i, i32 0, i32 22
  %71 = ptrtoint ptr %seqpacket_allow to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %seqpacket_allow, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %if.end21.if.end90_crit_edge
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %72 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i, ptr %priv, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !94
  store volatile ptr %call7.i.i, ptr @the_virtio_vsock, align 4
  br label %cleanup.sink.split

out:                                              ; preds = %if.end15.out_crit_edge, %if.end11.out_crit_edge, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i183, %if.end15.out_crit_edge ], [ -16, %do.end.out_crit_edge ], [ -12, %if.end11.out_crit_edge ]
  %vsock.0 = phi ptr [ %call7.i.i, %if.end15.out_crit_edge ], [ null, %do.end.out_crit_edge ], [ null, %if.end11.out_crit_edge ]
  call void @kfree(ptr noundef %vsock.0) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out, %if.end90
  %retval.0.ph = phi i32 [ 0, %if.end90 ], [ %ret.0, %out ]
  call void @mutex_unlock(ptr noundef nonnull @the_virtio_vsock_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %callbacks) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vsock_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @the_virtio_vsock_mutex, i32 noundef 0) #9
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %priv, align 8
  store volatile ptr null, ptr @the_virtio_vsock, align 4
  tail call void @synchronize_rcu() #9
  tail call void @vsock_for_each_connected_socket(ptr noundef nonnull @virtio_transport, ptr noundef nonnull @virtio_vsock_reset_sock) #9
  %rx_lock = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #9
  %rx_run = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %rx_run to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rx_run, align 4
  tail call void @mutex_unlock(ptr noundef %rx_lock) #9
  %tx_lock = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #9
  %tx_run = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %tx_run to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %tx_run, align 4
  tail call void @mutex_unlock(ptr noundef %tx_lock) #9
  %event_lock = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %event_lock, i32 noundef 0) #9
  %event_run = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %event_run to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %event_run, align 4
  tail call void @mutex_unlock(ptr noundef %event_lock) #9
  tail call void @virtio_reset_device(ptr noundef %vdev) #9
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #9
  %vqs = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vqs, align 4
  %call89 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %7) #9
  %tobool.not90 = icmp eq ptr %call89, null
  br i1 %tobool.not90, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call91 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call89, %entry.while.body_crit_edge ]
  tail call void @virtio_transport_free_pkt(ptr noundef nonnull %call91) #9
  %8 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vqs, align 4
  %call = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %9) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %rx_lock) #9
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #9
  %arrayidx40 = getelementptr %struct.virtio_vsock, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx40, align 4
  %call4192 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %11) #9
  %tobool42.not93 = icmp eq ptr %call4192, null
  br i1 %tobool42.not93, label %while.end.while.end44_crit_edge, label %while.end.while.body43_crit_edge

while.end.while.body43_crit_edge:                 ; preds = %while.end
  br label %while.body43

while.end.while.end44_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end44

while.body43:                                     ; preds = %while.body43.while.body43_crit_edge, %while.end.while.body43_crit_edge
  %call4194 = phi ptr [ %call41, %while.body43.while.body43_crit_edge ], [ %call4192, %while.end.while.body43_crit_edge ]
  tail call void @virtio_transport_free_pkt(ptr noundef nonnull %call4194) #9
  %12 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call ptr @virtqueue_detach_unused_buf(ptr noundef %13) #9
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %while.body43.while.end44_crit_edge, label %while.body43.while.body43_crit_edge

while.body43.while.body43_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body43

while.body43.while.end44_crit_edge:               ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end44

while.end44:                                      ; preds = %while.body43.while.end44_crit_edge, %while.end.while.end44_crit_edge
  tail call void @mutex_unlock(ptr noundef %tx_lock) #9
  %send_pkt_list_lock = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #9
  %send_pkt_list = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not95 = icmp eq ptr %15, %send_pkt_list
  br i1 %cmp.i.not95, label %while.end44.while.end51_crit_edge, label %while.end44.while.body49_crit_edge

while.end44.while.body49_crit_edge:               ; preds = %while.end44
  br label %while.body49

while.end44.while.end51_crit_edge:                ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end51

while.body49:                                     ; preds = %list_del.exit.while.body49_crit_edge, %while.end44.while.body49_crit_edge
  %16 = phi ptr [ %26, %list_del.exit.while.body49_crit_edge ], [ %15, %while.end44.while.body49_crit_edge ]
  %add.ptr = getelementptr i8, ptr %16, i32 -44
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body49.list_del.exit_crit_edge

while.body49.list_del.exit_crit_edge:             ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body49
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body49.list_del.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @virtio_transport_free_pkt(ptr noundef %add.ptr) #9
  %25 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %26, %send_pkt_list
  br i1 %cmp.i.not, label %list_del.exit.while.end51_crit_edge, label %list_del.exit.while.body49_crit_edge

list_del.exit.while.body49_crit_edge:             ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body49

list_del.exit.while.end51_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end51

while.end51:                                      ; preds = %list_del.exit.while.end51_crit_edge, %while.end44.while.end51_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #9
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %27 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %del_vqs, align 4
  tail call void %30(ptr noundef %vdev) #9
  %rx_work = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 3
  %call53 = tail call zeroext i1 @flush_work(ptr noundef %rx_work) #9
  %tx_work = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 2
  %call54 = tail call zeroext i1 @flush_work(ptr noundef %tx_work) #9
  %event_work = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 4
  %call55 = tail call zeroext i1 @flush_work(ptr noundef %event_work) #9
  %send_pkt_work = getelementptr inbounds %struct.virtio_vsock, ptr %1, i32 0, i32 8
  %call56 = tail call zeroext i1 @flush_work(ptr noundef %send_pkt_work) #9
  tail call void @mutex_unlock(ptr noundef nonnull @the_virtio_vsock_mutex) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vsock_rx_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %rx_work = getelementptr inbounds %struct.virtio_vsock, ptr %3, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rx_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vsock_tx_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %tx_work = getelementptr inbounds %struct.virtio_vsock, ptr %3, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %tx_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vsock_event_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %event_work = getelementptr inbounds %struct.virtio_vsock, ptr %3, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %event_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_transport_rx_work(ptr noundef %work) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  %vqs = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 4
  %rx_lock = getelementptr i8, ptr %work, i32 284
  tail call void @mutex_lock_nested(ptr noundef %rx_lock, i32 noundef 0) #9
  %rx_run = getelementptr i8, ptr %work, i32 376
  %2 = ptrtoint ptr %rx_run to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_run, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.preheader:                                ; preds = %entry
  %queued_replies.i = getelementptr i8, ptr %work, i32 280
  %rx_buf_nr = getelementptr i8, ptr %work, i32 380
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  call void @virtqueue_disable_cb(ptr noundef %1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !93
  %5 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vqs, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %queued_replies.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %queued_replies.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %queued_replies.i, align 4
  %call4.i42 = call i32 @virtqueue_get_vring_size(ptr noundef %6) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call4.i42)
  %cmp.i43 = icmp ult i32 %8, %call4.i42
  br i1 %cmp.i43, label %do.body.if.end2_crit_edge, label %do.body.cleanup.thread39_crit_edge

do.body.cleanup.thread39_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread39

do.body.if.end2_crit_edge:                        ; preds = %do.body
  br label %if.end2

cleanup.thread39:                                 ; preds = %cleanup.cleanup.thread39_crit_edge, %do.body.cleanup.thread39_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  br label %out

if.end2:                                          ; preds = %cleanup.if.end2_crit_edge, %do.body.if.end2_crit_edge
  %call3 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.cond, label %if.end6

if.end6:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %rx_buf_nr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_buf_nr, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %rx_buf_nr, align 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %12)
  %cmp = icmp ult i32 %12, 44
  br i1 %cmp, label %if.end6.if.then11_crit_edge, label %lor.rhs, !prof !97

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.rhs:                                          ; preds = %if.end6
  %len7 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len7, align 4
  %add = add i32 %14, 44
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add)
  %cmp8 = icmp ugt i32 %12, %add
  br i1 %cmp8, label %lor.rhs.if.then11_crit_edge, label %if.end12, !prof !97

lor.rhs.if.then11_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.then11:                                        ; preds = %lor.rhs.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  call void @virtio_transport_free_pkt(ptr noundef nonnull %call3) #9
  br label %cleanup

if.end12:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %12, -44
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %len7, align 4
  call void @virtio_transport_deliver_tap_pkt(ptr noundef nonnull %call3) #9
  call void @virtio_transport_recv_pkt(ptr noundef nonnull @virtio_transport, ptr noundef nonnull %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %len, align 4, !annotation !93
  %17 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vqs, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !96
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %queued_replies.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %queued_replies.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %queued_replies.i, align 4
  %call4.i = call i32 @virtqueue_get_vring_size(ptr noundef %18) #9
  %cmp.i = icmp ult i32 %20, %call4.i
  br i1 %cmp.i, label %cleanup.if.end2_crit_edge, label %cleanup.cleanup.thread39_crit_edge

cleanup.cleanup.thread39_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread39

cleanup.if.end2_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

do.cond:                                          ; preds = %if.end2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  %call15 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %1) #9
  br i1 %call15, label %do.cond.out_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.out_crit_edge:                            ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %do.cond.out_crit_edge, %cleanup.thread39, %entry.out_crit_edge
  %rx_buf_nr18 = getelementptr i8, ptr %work, i32 380
  %21 = ptrtoint ptr %rx_buf_nr18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buf_nr18, align 4
  %rx_buf_max_nr = getelementptr i8, ptr %work, i32 384
  %23 = ptrtoint ptr %rx_buf_max_nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_buf_max_nr, align 4
  %div = sdiv i32 %24, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div)
  %cmp19 = icmp slt i32 %22, %div
  br i1 %cmp19, label %if.then20, label %out.if.end21_crit_edge

out.if.end21_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @virtio_vsock_rx_fill(ptr noundef %add.ptr)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %out.if.end21_crit_edge
  call void @mutex_unlock(ptr noundef %rx_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_transport_tx_work(ptr noundef %work) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tx_lock = getelementptr i8, ptr %work, i32 132
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #9
  %tx_run = getelementptr i8, ptr %work, i32 224
  %2 = ptrtoint ptr %tx_run to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_run, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end6.critedge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry.do.body_crit_edge
  %added.0 = phi i8 [ %added.1.lcssa, %while.end.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !93
  call void @virtqueue_disable_cb(ptr noundef %1) #9
  %call13 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #9
  %cmp.not14 = icmp eq ptr %call13, null
  br i1 %cmp.not14, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  %call15 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call13, %do.body.while.body_crit_edge ]
  call void @virtio_transport_free_pkt(ptr noundef nonnull %call15) #9
  %call = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body.while.end_crit_edge
  %added.1.lcssa = phi i8 [ %added.0, %do.body.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  %call1 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %1) #9
  br i1 %call1, label %out, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

out:                                              ; preds = %while.end
  %5 = and i8 %added.1.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %extract.t.not = icmp eq i8 %5, 0
  call void @mutex_unlock(ptr noundef %tx_lock) #9
  br i1 %extract.t.not, label %out.if.end6_crit_edge, label %if.then4

out.if.end6_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %send_pkt_work = getelementptr i8, ptr %work, i32 228
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %send_pkt_work) #9
  br label %if.end6

if.end6.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %tx_lock) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.critedge, %if.then4, %out.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_transport_event_work(ptr noundef %work) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %guest_cid.i.i = alloca i64, align 8
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %arrayidx = getelementptr i8, ptr %work, i32 -92
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %event_lock = getelementptr i8, ptr %work, i32 344
  tail call void @mutex_lock_nested(ptr noundef %event_lock, i32 noundef 0) #9
  %event_run = getelementptr i8, ptr %work, i32 436
  %2 = ptrtoint ptr %event_run to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %event_run, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body.preheader:                                ; preds = %entry
  %guest_cid2.i.i = getelementptr i8, ptr %work, i32 472
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %do.body.preheader
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !93
  call void @virtqueue_disable_cb(ptr noundef %1) #9
  %call19 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #9
  %cmp.not20 = icmp eq ptr %call19, null
  br i1 %cmp.not20, label %do.body.while.end_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %do.body.while.body_crit_edge
  %call21 = phi ptr [ %call, %if.end3.while.body_crit_edge ], [ %call19, %do.body.while.body_crit_edge ]
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp1 = icmp eq i32 %6, 4
  br i1 %cmp1, label %if.then2, label %while.body.if.end3_crit_edge

while.body.if.end3_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %while.body
  %7 = ptrtoint ptr %call21 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %call21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cond.i = icmp eq i32 %8, 0
  br i1 %cond.i, label %sw.bb.i, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

sw.bb.i:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %guest_cid.i.i) #9
  %11 = ptrtoint ptr %guest_cid.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %guest_cid.i.i, align 8, !annotation !93
  %config.i.i = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 8
  %get.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get.i.i, align 4
  call void %15(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %guest_cid.i.i, i32 noundef 8) #9
  %16 = ptrtoint ptr %guest_cid.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %guest_cid.i.i, align 8
  %18 = call i64 @llvm.bswap.i64(i64 %17) #9
  %conv.i.i = trunc i64 %18 to i32
  %19 = ptrtoint ptr %guest_cid2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i.i, ptr %guest_cid2.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %guest_cid.i.i) #9
  call void @vsock_for_each_connected_socket(ptr noundef nonnull @virtio_transport, ptr noundef nonnull @virtio_vsock_reset_sock) #9
  br label %if.end3

if.end3:                                          ; preds = %sw.bb.i, %if.then2.if.end3_crit_edge, %while.body.if.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #9
  %20 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call21, i32 noundef 4) #9
  %call.i = call i32 @virtqueue_add_inbuf(ptr noundef %22, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef nonnull %call21, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #9
  %call = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %len) #9
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end3.while.end_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end3.while.end_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end3.while.end_crit_edge, %do.body.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  %call5 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %1) #9
  br i1 %call5, label %do.end, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call8 = call zeroext i1 @virtqueue_kick(ptr noundef %24) #9
  br label %out

out:                                              ; preds = %do.end, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %event_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_transport_send_pkt_work(ptr noundef %work) #2 align 64 {
entry:
  %hdr = alloca %struct.scatterlist, align 4
  %buf = alloca %struct.scatterlist, align 4
  %sgs = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #9
  %tx_run = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %tx_run to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_run, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end53.critedge, label %if.end

if.end:                                           ; preds = %entry
  %vqs = getelementptr i8, ptr %work, i32 -240
  %arrayidx = getelementptr i8, ptr %work, i32 -236
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  %send_pkt_list_lock = getelementptr i8, ptr %work, i32 44
  %send_pkt_list = getelementptr i8, ptr %work, i32 88
  %queued_replies = getelementptr i8, ptr %work, i32 96
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #9
  %5 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %6 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #9
  %7 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgs, align 4, !annotation !93
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !93
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #9
  %9 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not114 = icmp eq ptr %10, %send_pkt_list
  br i1 %cmp.i.not114, label %if.end.for.end.loopexit_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  br label %if.end4

if.end.for.end.loopexit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

if.end4:                                          ; preds = %cleanup.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %11 = phi ptr [ %42, %cleanup.if.end4_crit_edge ], [ %10, %if.end.if.end4_crit_edge ]
  %added.0.off0116 = phi i1 [ true, %cleanup.if.end4_crit_edge ], [ false, %if.end.if.end4_crit_edge ]
  %restart_rx.0115 = phi i8 [ %restart_rx.3, %cleanup.if.end4_crit_edge ], [ 0, %if.end.if.end4_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %11, i32 -44
  %call.i.i83 = call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #9
  br i1 %call.i.i83, label %if.end.i.i, label %if.end4.list_del_init.exit_crit_edge

if.end4.list_del_init.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end4.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #9
  call void @virtio_transport_deliver_tap_pkt(ptr noundef %add.ptr8) #9
  %reply10 = getelementptr i8, ptr %11, i32 28
  %20 = ptrtoint ptr %reply10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reply10, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11.not = icmp eq i8 %21, 0
  call void @sg_init_one(ptr noundef nonnull %hdr, ptr noundef %add.ptr8, i32 noundef 44) #9
  %22 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %hdr, ptr %sgs, align 4
  %buf14 = getelementptr i8, ptr %11, i32 12
  %23 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf14, align 4
  %tobool15.not = icmp eq ptr %24, null
  br i1 %tobool15.not, label %list_del_init.exit.if.end20_crit_edge, label %if.then16

list_del_init.exit.if.end20_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr i8, ptr %11, i32 20
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  call void @sg_init_one(ptr noundef nonnull %buf, ptr noundef nonnull %24, i32 noundef %26) #9
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf, ptr %4, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %list_del_init.exit.if.end20_crit_edge
  %out_sg.0 = phi i32 [ 2, %if.then16 ], [ 1, %list_del_init.exit.if.end20_crit_edge ]
  %call21 = call i32 @virtqueue_add_sgs(ptr noundef %3, ptr noundef nonnull %sgs, i32 noundef %out_sg.0, i32 noundef 0, ptr noundef %add.ptr8, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end20
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #9
  %28 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %send_pkt_list, align 4
  %call.i.i84 = call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %send_pkt_list, ptr noundef %29) #9
  br i1 %call.i.i84, label %if.end.i.i85, label %if.then22.for.end_crit_edge

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.i.i85:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i3.i.le = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %11, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %11, align 4
  %32 = ptrtoint ptr %prev.i3.i.le to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %send_pkt_list, ptr %prev.i3.i.le, align 4
  %33 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %11, ptr %send_pkt_list, align 4
  br label %for.end

if.end27:                                         ; preds = %if.end20
  br i1 %tobool11.not, label %if.end27.cleanup_crit_edge, label %if.then29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vqs, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @llvm.prefetch.p0(ptr %queued_replies, i32 1, i32 3, i32 1) #9
  %36 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_replies, ptr %queued_replies, i32 1, ptr elementtype(i32) %queued_replies) #9, !srcloc !99
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  %add = add i32 %asmresult.i.i.i.i, 1
  %call33 = call i32 @virtqueue_get_vring_size(ptr noundef %35) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call33)
  %cmp34 = icmp eq i32 %add, %call33
  %spec.select = select i1 %cmp34, i8 1, i8 %restart_rx.0115
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge
  %restart_rx.3 = phi i8 [ %spec.select, %if.then29 ], [ %restart_rx.0115, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #9
  %37 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %38 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #9
  %39 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgs, align 4, !annotation !93
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !93
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #9
  %41 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %send_pkt_list, align 4
  %cmp.i.not = icmp eq ptr %42, %send_pkt_list
  br i1 %cmp.i.not, label %cleanup.for.end.loopexit_crit_edge, label %cleanup.if.end4_crit_edge

cleanup.if.end4_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

cleanup.for.end.loopexit_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %cleanup.for.end.loopexit_crit_edge, %if.end.for.end.loopexit_crit_edge
  %restart_rx.0.lcssa = phi i8 [ 0, %if.end.for.end.loopexit_crit_edge ], [ %restart_rx.3, %cleanup.for.end.loopexit_crit_edge ]
  %43 = xor i1 %cmp.i.not114, true
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end.i.i85, %if.then22.for.end_crit_edge
  %restart_rx.0113 = phi i8 [ %restart_rx.0.lcssa, %for.end.loopexit ], [ %restart_rx.0115, %if.end.i.i85 ], [ %restart_rx.0115, %if.then22.for.end_crit_edge ]
  %added.0.off0111 = phi i1 [ %43, %for.end.loopexit ], [ %added.0.off0116, %if.end.i.i85 ], [ %added.0.off0116, %if.then22.for.end_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #9
  %44 = and i8 %restart_rx.0113, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %extract.t79.not = icmp eq i8 %44, 0
  br i1 %added.0.off0111, label %if.then46, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = call zeroext i1 @virtqueue_kick(ptr noundef %3) #9
  br label %out

out:                                              ; preds = %if.then46, %for.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %tx_lock) #9
  br i1 %extract.t79.not, label %out.if.end53_crit_edge, label %if.then51

out.if.end53_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %45 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %rx_work = getelementptr i8, ptr %work, i32 -184
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %rx_work) #9
  br label %if.end53

if.end53.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %tx_lock) #9
  br label %if.end53

if.end53:                                         ; preds = %if.end53.critedge, %if.then51, %out.if.end53_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_vsock_rx_fill(ptr nocapture noundef %vsock) unnamed_addr #2 align 64 {
entry:
  %hdr = alloca %struct.scatterlist, align 4
  %buf = alloca %struct.scatterlist, align 4
  %sgs = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #9
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %1 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #9
  %2 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgs, align 4, !annotation !93
  %3 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !93
  %vqs = getelementptr inbounds %struct.virtio_vsock, ptr %vsock, i32 0, i32 1
  %5 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vqs, align 4
  %rx_buf_nr = getelementptr inbounds %struct.virtio_vsock, ptr %vsock, i32 0, i32 15
  %num_free = getelementptr inbounds %struct.virtqueue, ptr %6, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 76) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4096) #12
  %buf2 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i, ptr %buf2, align 8
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.do.end.sink.split_crit_edge, label %if.end6

if.end.do.end.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.sink.split

if.end6:                                          ; preds = %if.end
  %buf_len7 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %buf_len7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %buf_len7, align 4
  %len = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4096, ptr %len, align 8
  call void @sg_init_one(ptr noundef nonnull %hdr, ptr noundef nonnull %call7.i.i, i32 noundef 44) #9
  %12 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdr, ptr %sgs, align 4
  %13 = ptrtoint ptr %buf2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf2, align 8
  call void @sg_init_one(ptr noundef nonnull %buf, ptr noundef %14, i32 noundef 4096) #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %3, align 4
  %call12 = call i32 @virtqueue_add_sgs(ptr noundef %6, ptr noundef nonnull %sgs, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %call7.i.i, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.do.end.sink.split_crit_edge

if.end6.do.end.sink.split_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.sink.split

if.end15:                                         ; preds = %if.end6
  %16 = ptrtoint ptr %rx_buf_nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_buf_nr, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %rx_buf_nr, align 4
  %18 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_free, align 4
  %tobool16.not = icmp eq i32 %19, 0
  br i1 %tobool16.not, label %if.end15.do.end_crit_edge, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end.sink.split:                                ; preds = %if.end6.do.end.sink.split_crit_edge, %if.end.do.end.sink.split_crit_edge
  call void @virtio_transport_free_pkt(ptr noundef nonnull %call7.i.i) #9
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end15.do.end_crit_edge, %do.body.do.end_crit_edge
  %20 = ptrtoint ptr %rx_buf_nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_buf_nr, align 4
  %rx_buf_max_nr = getelementptr inbounds %struct.virtio_vsock, ptr %vsock, i32 0, i32 16
  %22 = ptrtoint ptr %rx_buf_max_nr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_buf_max_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp = icmp sgt i32 %21, %23
  br i1 %cmp, label %if.then18, label %do.end.if.end21_crit_edge

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %rx_buf_max_nr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %rx_buf_max_nr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.end.if.end21_crit_edge
  %call22 = call zeroext i1 @virtqueue_kick(ptr noundef %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_free_pkt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_deliver_tap_pkt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_recv_pkt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsock_for_each_connected_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_vsock_reset_sock(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %1 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 104, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %sk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_detach_unused_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtio_transport_do_socket_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_destruct(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_transport_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_transport_cancel_pkt(ptr noundef readnone %vsk) #2 align 64 {
entry:
  %freeme = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freeme) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %freeme, i32 0, i32 1
  %1 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %freeme, ptr %freeme, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %freeme, ptr %0, align 4
  %3 = call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %7 = load volatile ptr, ptr @the_virtio_vsock, align 4
  %call = call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b92 = load i1, ptr @virtio_transport_cancel_pkt.__warned, align 1
  br i1 %.b92, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @virtio_transport_cancel_pkt.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 209, ptr noundef nonnull @.str.23) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %do.end7.out_rcu_crit_edge, label %if.end11

do.end7.out_rcu_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

if.end11:                                         ; preds = %do.end7
  %send_pkt_list_lock = getelementptr inbounds %struct.virtio_vsock, ptr %7, i32 0, i32 9
  call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #9
  %send_pkt_list = getelementptr inbounds %struct.virtio_vsock, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %send_pkt_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %send_pkt_list, align 4
  %cmp.not112 = icmp eq ptr %9, %send_pkt_list
  br i1 %cmp.not112, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %.pn.in113 = phi ptr [ %.pn115, %for.inc.for.body_crit_edge ], [ %9, %if.end11.for.body_crit_edge ]
  %10 = ptrtoint ptr %.pn.in113 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn115 = load ptr, ptr %.pn.in113, align 4
  %vsk20 = getelementptr i8, ptr %.pn.in113, i32 8
  %11 = ptrtoint ptr %vsk20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vsk20, align 4
  %cmp21.not = icmp eq ptr %12, %vsk
  br i1 %cmp21.not, label %if.end23, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %call.i.i95 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in113) #9
  br i1 %call.i.i95, label %if.end.i.i, label %if.end23.__list_del_entry.exit.i_crit_edge

if.end23.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in113, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in113 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in113, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end23.__list_del_entry.exit.i_crit_edge
  %19 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %freeme, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in113, ptr noundef nonnull %freeme, ptr noundef %20) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn.in113, ptr %prev1.i.i2.i, align 4
  %22 = ptrtoint ptr %.pn.in113 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %.pn.in113, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in113, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %freeme, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %freeme to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %.pn.in113, ptr %freeme, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn115, %send_pkt_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #9
  %25 = ptrtoint ptr %freeme to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %freeme, align 4
  %cmp42.not118 = icmp eq ptr %26, %freeme
  br i1 %cmp42.not118, label %for.end.out_rcu_crit_edge, label %for.end.for.body44_crit_edge

for.end.for.body44_crit_edge:                     ; preds = %for.end
  br label %for.body44

for.end.out_rcu_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

for.body44:                                       ; preds = %list_del.exit.for.body44_crit_edge, %for.end.for.body44_crit_edge
  %.pn91.in120 = phi ptr [ %.pn91123, %list_del.exit.for.body44_crit_edge ], [ %26, %for.end.for.body44_crit_edge ]
  %cnt.0119 = phi i32 [ %spec.select, %list_del.exit.for.body44_crit_edge ], [ 0, %for.end.for.body44_crit_edge ]
  %pkt.1122 = getelementptr i8, ptr %.pn91.in120, i32 -44
  %27 = ptrtoint ptr %.pn91.in120 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn91123 = load ptr, ptr %.pn91.in120, align 4
  %reply = getelementptr i8, ptr %.pn91.in120, i32 28
  %28 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reply, align 4, !range !95
  %30 = zext i8 %29 to i32
  %spec.select = add i32 %cnt.0119, %30
  %call.i.i96 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn91.in120) #9
  br i1 %call.i.i96, label %if.end.i.i99, label %for.body44.list_del.exit_crit_edge

for.body44.list_del.exit_crit_edge:               ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i99:                                     ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i97 = getelementptr inbounds %struct.list_head, ptr %.pn91.in120, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i97, align 4
  %33 = ptrtoint ptr %.pn91.in120 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn91.in120, align 4
  %prev1.i.i.i98 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i98, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i99, %for.body44.list_del.exit_crit_edge
  %37 = ptrtoint ptr %.pn91.in120 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn91.in120, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn91.in120, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @virtio_transport_free_pkt(ptr noundef %pkt.1122) #9
  %cmp42.not = icmp eq ptr %.pn91123, %freeme
  br i1 %cmp42.not, label %for.end55, label %list_del.exit.for.body44_crit_edge

list_del.exit.for.body44_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body44

for.end55:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool56.not = icmp eq i32 %spec.select, 0
  br i1 %tobool56.not, label %for.end55.out_rcu_crit_edge, label %if.then57

for.end55.out_rcu_crit_edge:                      ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

if.then57:                                        ; preds = %for.end55
  %vqs = getelementptr inbounds %struct.virtio_vsock, ptr %7, i32 0, i32 1
  %39 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vqs, align 4
  %queued_replies = getelementptr inbounds %struct.virtio_vsock, ptr %7, i32 0, i32 11
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !98
  call void @llvm.prefetch.p0(ptr %queued_replies, i32 1, i32 3, i32 1) #9
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_replies, ptr %queued_replies, i32 %spec.select, ptr elementtype(i32) %queued_replies) #9, !srcloc !99
  %asmresult.i.i.i = extractvalue { i32, i32 } %41, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !100
  %add = add i32 %asmresult.i.i.i, %spec.select
  %call59 = call i32 @virtqueue_get_vring_size(ptr noundef %40) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call59)
  %cmp60.not = icmp ult i32 %add, %call59
  br i1 %cmp60.not, label %if.then57.out_rcu_crit_edge, label %land.lhs.true61

if.then57.out_rcu_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

land.lhs.true61:                                  ; preds = %if.then57
  %call62 = call i32 @virtqueue_get_vring_size(ptr noundef %40) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %call62)
  %cmp63 = icmp ult i32 %asmresult.i.i.i, %call62
  br i1 %cmp63, label %if.then64, label %land.lhs.true61.out_rcu_crit_edge

land.lhs.true61.out_rcu_crit_edge:                ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %42 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %rx_work = getelementptr inbounds %struct.virtio_vsock, ptr %7, i32 0, i32 3
  %call.i101 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %rx_work) #9
  br label %out_rcu

out_rcu:                                          ; preds = %if.then64, %land.lhs.true61.out_rcu_crit_edge, %if.then57.out_rcu_crit_edge, %for.end55.out_rcu_crit_edge, %for.end.out_rcu_crit_edge, %do.end7.out_rcu_crit_edge
  %ret.0 = phi i32 [ -19, %do.end7.out_rcu_crit_edge ], [ 0, %if.then57.out_rcu_crit_edge ], [ 0, %land.lhs.true61.out_rcu_crit_edge ], [ 0, %if.then64 ], [ 0, %for.end55.out_rcu_crit_edge ], [ 0, %for.end.out_rcu_crit_edge ]
  %call.i102 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i102, label %out_rcu.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i105

out_rcu.rcu_read_unlock.exit_crit_edge:           ; preds = %out_rcu
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i105:                               ; preds = %out_rcu
  %call1.i103 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool.not.i104 = icmp eq i32 %call1.i103, 0
  br i1 %tobool.not.i104, label %land.lhs.true.i105.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i107

land.lhs.true.i105.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i107:                              ; preds = %land.lhs.true.i105
  %.b4.i106 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i106, label %land.lhs.true2.i107.rcu_read_unlock.exit_crit_edge, label %if.then.i108

land.lhs.true2.i107.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i108:                                     ; preds = %land.lhs.true2.i107
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i108, %land.lhs.true2.i107.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i105.rcu_read_unlock.exit_crit_edge, %out_rcu.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %43 = call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i109 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i109 to ptr
  %preempt_count.i.i.i.i110 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i110, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i110, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freeme) #9
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
define internal zeroext i1 @virtio_transport_seqpacket_allow(i32 noundef %remote_cid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @the_virtio_vsock, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @virtio_transport_seqpacket_allow.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @virtio_transport_seqpacket_allow.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 508, ptr noundef nonnull @.str.23) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %if.then10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %seqpacket_allow11 = getelementptr inbounds %struct.virtio_vsock, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %seqpacket_allow11 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %seqpacket_allow11, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12 = icmp ne i8 %6, 0
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end7.if.end13_crit_edge
  %seqpacket_allow.0.off0 = phi i1 [ %tobool12, %if.then10 ], [ false, %do.end7.if.end13_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i24 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
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
define internal i32 @virtio_transport_get_local_cid() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @the_virtio_vsock, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @virtio_transport_get_local_cid.__warned, align 1
  br i1 %.b13, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @virtio_transport_get_local_cid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 75, ptr noundef nonnull @.str.23) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.out_rcu_crit_edge, label %if.end11

do.end7.out_rcu_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_rcu

if.end11:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %guest_cid = getelementptr inbounds %struct.virtio_vsock, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %guest_cid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %guest_cid, align 4
  br label %out_rcu

out_rcu:                                          ; preds = %if.end11, %do.end7.out_rcu_crit_edge
  %ret.0 = phi i32 [ %6, %if.end11 ], [ -1, %do.end7.out_rcu_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i14, label %out_rcu.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

out_rcu.rcu_read_unlock.exit_crit_edge:           ; preds = %out_rcu
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %out_rcu
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %out_rcu.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i21 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_transport_send_pkt(ptr noundef %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 5
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = load volatile ptr, ptr @the_virtio_vsock, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @virtio_transport_send_pkt.__warned, align 1
  br i1 %.b32, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @virtio_transport_send_pkt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 173, ptr noundef nonnull @.str.23) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @virtio_transport_free_pkt(ptr noundef %pkt) #9
  br label %out_rcu

if.end12:                                         ; preds = %do.end8
  %dst_cid = getelementptr inbounds %struct.virtio_vsock_hdr, ptr %pkt, i32 0, i32 1
  %7 = ptrtoint ptr %dst_cid to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %dst_cid, align 4
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %guest_cid = getelementptr inbounds %struct.virtio_vsock, ptr %6, i32 0, i32 21
  %10 = ptrtoint ptr %guest_cid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %guest_cid, align 4
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp = icmp eq i64 %9, %conv
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @virtio_transport_free_pkt(ptr noundef %pkt) #9
  br label %out_rcu

if.end15:                                         ; preds = %if.end12
  %reply = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 7
  %12 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reply, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %queued_replies = getelementptr inbounds %struct.virtio_vsock, ptr %6, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %queued_replies, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %queued_replies, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %queued_replies, ptr %queued_replies, i32 1, ptr elementtype(i32) %queued_replies) #9, !srcloc !103
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %send_pkt_list_lock = getelementptr inbounds %struct.virtio_vsock, ptr %6, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %send_pkt_list_lock) #9
  %list = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 1
  %send_pkt_list = getelementptr inbounds %struct.virtio_vsock, ptr %6, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.virtio_vsock, ptr %6, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i33 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %send_pkt_list) #9
  br i1 %call.i.i33, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %send_pkt_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_vsock_pkt, ptr %pkt, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %send_pkt_list_lock) #9
  %21 = load ptr, ptr @virtio_vsock_workqueue, align 4
  %send_pkt_work = getelementptr inbounds %struct.virtio_vsock, ptr %6, i32 0, i32 8
  %call.i34 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %send_pkt_work) #9
  br label %out_rcu

out_rcu:                                          ; preds = %list_add_tail.exit, %if.then14, %if.then11
  %len.0 = phi i32 [ -19, %if.then14 ], [ %1, %list_add_tail.exit ], [ -19, %if.then11 ]
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i35, label %out_rcu.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

out_rcu.rcu_read_unlock.exit_crit_edge:           ; preds = %out_rcu
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %out_rcu
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.26) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %out_rcu.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
  %22 = tail call i32 @llvm.read_register.i32(metadata !83) #9
  %and.i.i.i.i.i42 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsock_core_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !65, !67, !68, !70, !71, !72, !74, !75, !77, !79, !81}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_vmw_vsock_virtio_transport__474_777_virtio_vsock_init6, !1, !"__initcall__kmod_vmw_vsock_virtio_transport__474_777_virtio_vsock_init6", i1 false, i1 false}
!1 = !{!"../net/vmw_vsock/virtio_transport.c", i32 777, i32 1}
!2 = !{ptr @__exitcall_virtio_vsock_exit, !3, !"__exitcall_virtio_vsock_exit", i1 false, i1 false}
!3 = !{!"../net/vmw_vsock/virtio_transport.c", i32 778, i32 1}
!4 = !{ptr @__UNIQUE_ID_file475, !5, !"__UNIQUE_ID_file475", i1 false, i1 false}
!5 = !{!"../net/vmw_vsock/virtio_transport.c", i32 779, i32 1}
!6 = !{ptr @__UNIQUE_ID_license476, !5, !"__UNIQUE_ID_license476", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author477, !8, !"__UNIQUE_ID_author477", i1 false, i1 false}
!8 = !{!"../net/vmw_vsock/virtio_transport.c", i32 780, i32 1}
!9 = !{ptr @__UNIQUE_ID_description478, !10, !"__UNIQUE_ID_description478", i1 false, i1 false}
!10 = !{!"../net/vmw_vsock/virtio_transport.c", i32 781, i32 1}
!11 = !{ptr @virtio_vsock_workqueue, !12, !"virtio_vsock_workqueue", i1 false, i1 false}
!12 = !{!"../net/vmw_vsock/virtio_transport.c", i32 24, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/vmw_vsock/virtio_transport.c", i32 737, i32 17}
!15 = !{ptr @virtio_vsock_driver, !16, !"virtio_vsock_driver", i1 false, i1 false}
!16 = !{!"../net/vmw_vsock/virtio_transport.c", i32 734, i32 29}
!17 = !{ptr @id_table, !18, !"id_table", i1 false, i1 false}
!18 = !{!"../net/vmw_vsock/virtio_transport.c", i32 725, i32 32}
!19 = !{ptr @features, !20, !"features", i1 false, i1 false}
!20 = !{!"../net/vmw_vsock/virtio_transport.c", i32 730, i32 21}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/vmw_vsock/virtio_transport.c", i32 577, i32 3}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/vmw_vsock/virtio_transport.c", i32 578, i32 3}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/vmw_vsock/virtio_transport.c", i32 579, i32 3}
!27 = !{ptr @virtio_vsock_probe.names, !28, !"names", i1 false, i1 false}
!28 = !{!"../net/vmw_vsock/virtio_transport.c", i32 576, i32 28}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/vmw_vsock/virtio_transport.c", i32 589, i32 6}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @virtio_vsock_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../net/vmw_vsock/virtio_transport.c", i32 615, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @virtio_vsock_probe.__key.7, !37, !"__key", i1 false, i1 false}
!37 = !{!"../net/vmw_vsock/virtio_transport.c", i32 616, i32 2}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @virtio_vsock_probe.__key.9, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/vmw_vsock/virtio_transport.c", i32 617, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @virtio_vsock_probe.__key.11, !43, !"__key", i1 false, i1 false}
!43 = !{!"../net/vmw_vsock/virtio_transport.c", i32 618, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @virtio_vsock_probe.__key.13, !46, !"__key", i1 false, i1 false}
!46 = !{!"../net/vmw_vsock/virtio_transport.c", i32 620, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @virtio_vsock_probe.__key.15, !49, !"__key", i1 false, i1 false}
!49 = !{!"../net/vmw_vsock/virtio_transport.c", i32 621, i32 2}
!50 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @virtio_vsock_probe.__key.17, !52, !"__key", i1 false, i1 false}
!52 = !{!"../net/vmw_vsock/virtio_transport.c", i32 622, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @virtio_vsock_probe.__key.19, !55, !"__key", i1 false, i1 false}
!55 = !{!"../net/vmw_vsock/virtio_transport.c", i32 623, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/vmw_vsock/virtio_transport.c", i32 26, i32 8}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @the_virtio_vsock_mutex, !58, !"the_virtio_vsock_mutex", i1 false, i1 false}
!61 = !{ptr @the_virtio_vsock, !62, !"the_virtio_vsock", i1 false, i1 false}
!62 = !{!"../net/vmw_vsock/virtio_transport.c", i32 25, i32 35}
!63 = !{ptr @virtio_transport, !64, !"virtio_transport", i1 false, i1 false}
!64 = !{!"../net/vmw_vsock/virtio_transport.c", i32 454, i32 32}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../net/vmw_vsock/virtio_transport.c", i32 209, i32 10}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!70 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/vmw_vsock/virtio_transport.c", i32 508, i32 10}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../net/vmw_vsock/virtio_transport.c", i32 75, i32 10}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/vmw_vsock/virtio_transport.c", i32 173, i32 10}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/vmw_vsock/virtio_transport.c", i32 748, i32 43}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i64 2156981314}
!95 = !{i8 0, i8 2}
!96 = !{i64 2156963191}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2148583364}
!99 = !{i64 2148498073, i64 2148498105, i64 2148498134, i64 2148498168, i64 2148498199, i64 2148498222}
!100 = !{i64 2148583593}
!101 = !{i64 2149373722}
!102 = !{i64 2149373988}
!103 = !{i64 2148494888, i64 2148494914, i64 2148494943, i64 2148494977, i64 2148495008, i64 2148495031}
