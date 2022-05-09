; ModuleID = '/llk/IR_all_yes/net/sunrpc/xprtrdma/svc_rdma_transport.c_pt.bc'
source_filename = "../net/sunrpc/xprtrdma/svc_rdma_transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%struct.atomic_t = type { i32 }
%union.anon.126 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.149 }
%union.anon.149 = type { ptr, [124 x i8] }
%struct.svcxprt_rdma = type { %struct.svc_xprt, ptr, %struct.list_head, i32, i32, i8, %struct.atomic_t, i32, i32, i32, i32, i32, i8, ptr, %struct.spinlock, %struct.llist_head, %struct.spinlock, %struct.llist_head, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, %struct.spinlock, %struct.wait_queue_head, i32, %struct.work_struct, %struct.llist_head, %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_head = type { ptr }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rpcrdma_connect_private = type { i32, i8, i8, i8, i8 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.179, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.179 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.170 }
%struct.anon.170 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.180, %struct.rdma_ucm_ece }
%union.anon.180 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.171 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.166 }
%struct.anon.166 = type { i64, i64 }
%union.anon.171 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ib_event = type { ptr, %union.anon.159, i32 }
%union.anon.159 = type { ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@svc_rdma_ops = internal constant { %struct.svc_xprt_ops, [52 x i8] } { %struct.svc_xprt_ops { ptr @svc_rdma_create, ptr @svc_rdma_accept, ptr @svc_rdma_has_wspace, ptr @svc_rdma_recvfrom, ptr @svc_rdma_sendto, ptr @svc_rdma_result_payload, ptr @svc_rdma_release_rqst, ptr @svc_rdma_detach, ptr @svc_rdma_free, ptr @svc_rdma_secure_port, ptr @svc_rdma_kill_temp_xprt }, [52 x i8] zeroinitializer }, align 32
@svc_rdma_class = dso_local global { %struct.svc_xprt_class, [36 x i8] } { %struct.svc_xprt_class { ptr @.str, ptr null, ptr @svc_rdma_ops, %struct.list_head zeroinitializer, i32 1048576, i32 256 }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"listener\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rpcrdma\00", [24 x i8] zeroinitializer }, align 32
@rpc_debug = external dso_local local_unnamed_addr global i32, align 4
@svc_rdma_create_xprt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"svcrdma: failed to create new transport\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"svc_rdma_create_xprt\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"net/sunrpc/xprtrdma/svc_rdma_transport.c\00", [55 x i8] zeroinitializer }, align 32
@svc_rdma_create_xprt._entry_ptr = internal global ptr @svc_rdma_create_xprt._entry, section ".printk_index", align 4
@svc_rdma_create_xprt.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cma_xprt->sc_send_wait\00", [40 x i8] zeroinitializer }, align 32
@svc_rdma_create_xprt.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cma_xprt->sc_lock\00", [45 x i8] zeroinitializer }, align 32
@svc_rdma_create_xprt.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cma_xprt->sc_rq_dto_lock\00", [38 x i8] zeroinitializer }, align 32
@svc_rdma_create_xprt.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&cma_xprt->sc_send_lock\00", [40 x i8] zeroinitializer }, align 32
@svc_rdma_create_xprt.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&cma_xprt->sc_rw_ctxt_lock\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pISc\00", [26 x i8] zeroinitializer }, align 32
@svc_rdma_parse_connect_private._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"svcrdma: client send_size %u, recv_size %u remote inv %ssupported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"svc_rdma_parse_connect_private\00", [33 x i8] zeroinitializer }, align 32
@svc_rdma_parse_connect_private._entry_ptr = internal global ptr @svc_rdma_parse_connect_private._entry, section ".printk_index", align 4
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@svcrdma_max_req_size = external dso_local local_unnamed_addr global i32, align 4
@svcrdma_max_requests = external dso_local local_unnamed_addr global i32, align 4
@svcrdma_max_bc_requests = external dso_local local_unnamed_addr global i32, align 4
@svc_rdma_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014svcrdma: reducing receive depth to %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"svc_rdma_accept\00", [16 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr = internal global ptr @svc_rdma_accept._entry, section ".printk_index", align 4
@svc_rdma_accept._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014svcrdma: reducing send depth to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.24 = internal global ptr @svc_rdma_accept._entry.22, section ".printk_index", align 4
@svc_rdma_accept._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.5, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"svcrdma: newxprt->sc_cm_id=%p, newxprt->sc_pd=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.27 = internal global ptr @svc_rdma_accept._entry.25, section ".printk_index", align 4
@svc_rdma_accept._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.5, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"    cap.max_send_wr = %d, cap.max_recv_wr = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.30 = internal global ptr @svc_rdma_accept._entry.28, section ".printk_index", align 4
@svc_rdma_accept._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.5, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"    cap.max_send_sge = %d, cap.max_recv_sge = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.33 = internal global ptr @svc_rdma_accept._entry.31, section ".printk_index", align 4
@svc_rdma_accept._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.5, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"svcrdma: new connection %p accepted:\0A\00", [58 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.36 = internal global ptr @svc_rdma_accept._entry.34, section ".printk_index", align 4
@svc_rdma_accept._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.5, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"    local address   : %pIS:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.39 = internal global ptr @svc_rdma_accept._entry.37, section ".printk_index", align 4
@svc_rdma_accept._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.21, ptr @.str.5, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"    remote address  : %pIS:%u\0A\00", [33 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.42 = internal global ptr @svc_rdma_accept._entry.40, section ".printk_index", align 4
@svc_rdma_accept._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.21, ptr @.str.5, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    max_sge         : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.45 = internal global ptr @svc_rdma_accept._entry.43, section ".printk_index", align 4
@svc_rdma_accept._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.21, ptr @.str.5, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    sq_depth        : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.48 = internal global ptr @svc_rdma_accept._entry.46, section ".printk_index", align 4
@svc_rdma_accept._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.21, ptr @.str.5, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    rdma_rw_ctxs    : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.51 = internal global ptr @svc_rdma_accept._entry.49, section ".printk_index", align 4
@svc_rdma_accept._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.21, ptr @.str.5, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    max_requests    : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.54 = internal global ptr @svc_rdma_accept._entry.52, section ".printk_index", align 4
@svc_rdma_accept._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.21, ptr @.str.5, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"    ord             : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@svc_rdma_accept._entry_ptr.57 = internal global ptr @svc_rdma_accept._entry.55, section ".printk_index", align 4
@__tracepoint_svcrdma_pd_err = external dso_local global %struct.tracepoint, align 4
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/rpcrdma.h\00", [33 x i8] zeroinitializer }, align 32
@trace_svcrdma_pd_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svcrdma_qp_error = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_qp_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_qp_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_qp_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_fabric_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_fabric_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_initdepth_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_initdepth_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcrdma_accept_err = external dso_local global %struct.tracepoint, align 4
@trace_svcrdma_accept_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svc_rdma_free.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&rdma->sc_work)\00", [62 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 16]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 10, i64 11]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 94, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"svc_rdma_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 79, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"svc_rdma_class\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 93, i32 23 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 313, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 315, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 133, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 142, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 144, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 145, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 146, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 147, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 215, i32 48 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 172, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 411, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 423, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 456, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 458, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 460, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 511, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 513, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 515, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 516, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 517, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 518, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 519, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 520, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [34 x i8] c"../include/trace/events/rpcrdma.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1516, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 108, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private constant [44 x i8] c"../net/sunrpc/xprtrdma/svc_rdma_transport.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 583, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 3498, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @svc_rdma_accept._entry, ptr @svc_rdma_accept._entry.22, ptr @svc_rdma_accept._entry.25, ptr @svc_rdma_accept._entry.28, ptr @svc_rdma_accept._entry.31, ptr @svc_rdma_accept._entry.34, ptr @svc_rdma_accept._entry.37, ptr @svc_rdma_accept._entry.40, ptr @svc_rdma_accept._entry.43, ptr @svc_rdma_accept._entry.46, ptr @svc_rdma_accept._entry.49, ptr @svc_rdma_accept._entry.52, ptr @svc_rdma_accept._entry.55, ptr @svc_rdma_accept._entry_ptr, ptr @svc_rdma_accept._entry_ptr.24, ptr @svc_rdma_accept._entry_ptr.27, ptr @svc_rdma_accept._entry_ptr.30, ptr @svc_rdma_accept._entry_ptr.33, ptr @svc_rdma_accept._entry_ptr.36, ptr @svc_rdma_accept._entry_ptr.39, ptr @svc_rdma_accept._entry_ptr.42, ptr @svc_rdma_accept._entry_ptr.45, ptr @svc_rdma_accept._entry_ptr.48, ptr @svc_rdma_accept._entry_ptr.51, ptr @svc_rdma_accept._entry_ptr.54, ptr @svc_rdma_accept._entry_ptr.57, ptr @svc_rdma_create_xprt._entry, ptr @svc_rdma_create_xprt._entry_ptr, ptr @svc_rdma_parse_connect_private._entry, ptr @svc_rdma_parse_connect_private._entry_ptr, ptr @.str, ptr @svc_rdma_ops, ptr @svc_rdma_class, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @svc_rdma_create_xprt.__key, ptr @.str.6, ptr @svc_rdma_create_xprt.__key.7, ptr @.str.8, ptr @svc_rdma_create_xprt.__key.9, ptr @.str.10, ptr @svc_rdma_create_xprt.__key.11, ptr @.str.12, ptr @svc_rdma_create_xprt.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @svc_rdma_free.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_create_xprt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_create_xprt.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_create_xprt.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_create_xprt.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_create_xprt.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_create_xprt.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_parse_connect_private._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_accept._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_rdma_free.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_rdma_create(ptr noundef %serv, ptr noundef %net, ptr noundef %sa, i32 noundef %salen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sa, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 2, label %entry.if.end_crit_edge
    i16 10, label %entry.if.end_crit_edge56
  ]

entry.if.end_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge56
  %call6 = tail call fastcc ptr @svc_rdma_create_xprt(ptr noundef %serv, ptr noundef %net)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %call6, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 10, ptr noundef %xpt_flags) #12
  %xpt_remotebuf = getelementptr inbounds %struct.svc_xprt, ptr %call6, i32 0, i32 17
  %3 = call ptr @memcpy(ptr %xpt_remotebuf, ptr @.str.1, i32 9)
  %call12 = tail call ptr @__rdma_create_kernel_id(ptr noundef %net, ptr noundef nonnull @svc_rdma_listen_handler, ptr noundef nonnull %call6, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.2) #12
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %call12 to i32
  br label %err0

if.end16:                                         ; preds = %if.end9
  %call17 = tail call i32 @rdma_set_afonly(ptr noundef %call12, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.err1_crit_edge

if.end16.err1_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @rdma_bind_addr(ptr noundef %call12, ptr noundef %sa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.err1_crit_edge

if.end20.err1_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end24:                                         ; preds = %if.end20
  %sc_cm_id = getelementptr inbounds %struct.svcxprt_rdma, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %sc_cm_id, align 4
  %call25 = tail call i32 @rdma_listen(ptr noundef %call12, i32 noundef 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.err1_crit_edge

if.end24.err1_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %err1

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_cm_id, align 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %7, i32 0, i32 4
  %xpt_local.i = getelementptr inbounds %struct.svc_xprt, ptr %call6, i32 0, i32 13
  %8 = call ptr @memcpy(ptr %xpt_local.i, ptr %route, i32 %salen)
  %xpt_locallen.i = getelementptr inbounds %struct.svc_xprt, ptr %call6, i32 0, i32 14
  %9 = ptrtoint ptr %xpt_locallen.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %salen, ptr %xpt_locallen.i, align 4
  br label %cleanup

err1:                                             ; preds = %if.end24.err1_crit_edge, %if.end20.err1_crit_edge, %if.end16.err1_crit_edge
  %ret.0 = phi i32 [ %call17, %if.end16.err1_crit_edge ], [ %call21, %if.end20.err1_crit_edge ], [ %call25, %if.end24.err1_crit_edge ]
  tail call void @rdma_destroy_id(ptr noundef %call12) #12
  br label %err0

err0:                                             ; preds = %err1, %if.then14
  %ret.1 = phi i32 [ %4, %if.then14 ], [ %ret.0, %err1 ]
  tail call void @kfree(ptr noundef nonnull %call6) #12
  %10 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %err0 ], [ %call6, %if.end28 ], [ inttoptr (i32 -97 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_rdma_accept(ptr noundef %xprt) #0 align 64 {
entry:
  %conn_param = alloca %struct.rdma_conn_param, align 4
  %pmsg = alloca %struct.rpcrdma_connect_private, align 8
  %qp_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param) #12
  %0 = call ptr @memset(ptr %conn_param, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pmsg) #12
  %1 = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %pmsg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %pmsg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %pmsg, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %pmsg, i32 0, i32 4
  %5 = ptrtoint ptr %pmsg to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %pmsg, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_attr) #12
  %6 = call ptr @memset(ptr %qp_attr, i32 255, i32 72)
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xpt_flags) #12
  %sc_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_lock) #12
  %sc_accept_q = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 2
  %7 = ptrtoint ptr %sc_accept_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %sc_accept_q, align 4
  %cmp.i.not = icmp eq ptr %8, %sc_accept_q
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %8, i32 -544
  %call.i.i504 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #12
  br i1 %call.i.i504, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %8, ptr %8, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %newxprt.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr4, %list_del_init.exit ]
  %17 = ptrtoint ptr %sc_accept_q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %sc_accept_q, align 4
  %cmp.i505.not = icmp eq ptr %18, %sc_accept_q
  br i1 %cmp.i505.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %xpt_flags) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sc_lock) #12
  %tobool13.not = icmp eq ptr %newxprt.0, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %sc_cm_id = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 1
  %19 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sc_cm_id, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %port_num = getelementptr inbounds %struct.rdma_cm_id, ptr %20, i32 0, i32 7
  %23 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_num, align 4
  %conv = trunc i32 %24 to i8
  %sc_port_num = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 12
  %25 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %sc_port_num, align 4
  %sc_max_send_sges = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @svcrdma_max_req_size to i32))
  %26 = load i32, ptr @svcrdma_max_req_size, align 4
  %div503 = lshr i32 %26, 12
  %add18 = add nuw nsw i32 %div503, 4
  %27 = ptrtoint ptr %sc_max_send_sges to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add18, ptr %sc_max_send_sges, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 22, i32 10
  %28 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_send_sge, align 8
  %30 = tail call i32 @llvm.smin.i32(i32 %add18, i32 %29)
  %31 = ptrtoint ptr %sc_max_send_sges to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %sc_max_send_sges, align 4
  %sc_max_req_size = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 11
  %32 = ptrtoint ptr %sc_max_req_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %26, ptr %sc_max_req_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @svcrdma_max_requests to i32))
  %33 = load i32, ptr @svcrdma_max_requests, align 4
  %sc_max_requests = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 9
  %34 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %sc_max_requests, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @svcrdma_max_bc_requests to i32))
  %35 = load i32, ptr @svcrdma_max_bc_requests, align 4
  %sc_max_bc_requests = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 10
  %36 = ptrtoint ptr %sc_max_bc_requests to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sc_max_bc_requests, align 4
  %sc_recv_batch = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 19
  %37 = ptrtoint ptr %sc_recv_batch to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %sc_recv_batch, align 4
  %add28 = add i32 %33, 7
  %add30 = add i32 %add28, %35
  %max_qp_wr = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 22, i32 8
  %38 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_qp_wr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %39)
  %cmp32 = icmp ugt i32 %add30, %39
  br i1 %cmp32, label %do.end, label %if.end15.if.end44_crit_edge

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %39) #15
  %40 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_qp_wr, align 8
  %42 = ptrtoint ptr %sc_recv_batch to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %sc_recv_batch, align 4
  %sub = add i32 %41, -2
  %43 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub, ptr %sc_max_requests, align 4
  %44 = ptrtoint ptr %sc_max_bc_requests to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %sc_max_bc_requests, align 4
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.end15.if.end44_crit_edge
  %rq_depth.0 = phi i32 [ %41, %do.end ], [ %add30, %if.end15.if.end44_crit_edge ]
  %45 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sc_max_requests, align 4
  %sc_fc_credits = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 8
  %47 = ptrtoint ptr %sc_fc_credits to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %sc_fc_credits, align 4
  %48 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sc_port_num, align 4
  %conv47 = zext i8 %49 to i32
  %call48 = tail call i32 @rdma_rw_mr_factor(ptr noundef %22, i32 noundef %conv47, i32 noundef 259) #12
  %50 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sc_max_requests, align 4
  %mul = mul i32 %51, %call48
  %add50 = add i32 %mul, %rq_depth.0
  %sc_sq_depth = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 7
  %52 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add50, ptr %sc_sq_depth, align 4
  %53 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_qp_wr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %54)
  %cmp54 = icmp ugt i32 %add50, %54
  br i1 %cmp54, label %do.end59, label %if.end44.if.end67_crit_edge

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

do.end59:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %54) #15
  %55 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_qp_wr, align 8
  %57 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %sc_sq_depth, align 4
  br label %if.end67

if.end67:                                         ; preds = %do.end59, %if.end44.if.end67_crit_edge
  %sc_sq_avail = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 6
  %58 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sc_sq_depth, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_sq_avail, i32 noundef 4) #12
  %60 = ptrtoint ptr %sc_sq_avail to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %sc_sq_avail, align 4
  %call69 = tail call ptr @__ib_alloc_pd(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.2) #12
  %sc_pd = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 13
  %61 = ptrtoint ptr %sc_pd to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call69, ptr %sc_pd, align 4
  %cmp.i507 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %62 = ptrtoint ptr %call69 to i32
  tail call fastcc void @trace_svcrdma_pd_err(ptr noundef nonnull %newxprt.0, i32 noundef %62)
  br label %errout

if.end75:                                         ; preds = %if.end67
  %63 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sc_sq_depth, align 4
  %call.i = tail call ptr @__ib_alloc_cq_any(ptr noundef %22, ptr noundef nonnull %newxprt.0, i32 noundef %64, i32 noundef 1, ptr noundef nonnull @.str.2) #12
  %sc_sq_cq = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 24
  %65 = ptrtoint ptr %sc_sq_cq to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %sc_sq_cq, align 4
  %cmp.i508 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i508, label %if.end75.errout_crit_edge, label %if.end81

if.end75.errout_crit_edge:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end81:                                         ; preds = %if.end75
  %call.i509 = tail call ptr @__ib_alloc_cq_any(ptr noundef %22, ptr noundef nonnull %newxprt.0, i32 noundef %rq_depth.0, i32 noundef 1, ptr noundef nonnull @.str.2) #12
  %sc_rq_cq = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 23
  %66 = ptrtoint ptr %sc_rq_cq to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i509, ptr %sc_rq_cq, align 4
  %cmp.i510 = icmp ugt ptr %call.i509, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i510, label %if.end81.errout_crit_edge, label %if.end86

if.end81.errout_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end86:                                         ; preds = %if.end81
  %67 = getelementptr inbounds i8, ptr %qp_attr, i32 16
  %68 = call ptr @memset(ptr %67, i32 0, i32 56)
  %69 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @qp_event_handler, ptr %qp_attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 1
  %70 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %newxprt.0, ptr %qp_context, align 4
  %71 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sc_port_num, align 4
  %conv89 = zext i8 %72 to i32
  %port_num90 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 10
  %73 = ptrtoint ptr %port_num90 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv89, ptr %port_num90, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6
  %max_rdma_ctxs = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 5
  %74 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul, ptr %max_rdma_ctxs, align 4
  %75 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sc_sq_depth, align 4
  %sub92 = sub i32 %76, %mul
  %77 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub92, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 1
  %78 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %rq_depth.0, ptr %max_recv_wr, align 4
  %79 = ptrtoint ptr %sc_max_send_sges to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sc_max_send_sges, align 4
  %max_send_sge97 = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 2
  %81 = ptrtoint ptr %max_send_sge97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %max_send_sge97, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 3
  %82 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %max_recv_sge, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 7
  %83 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 8
  %84 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 2, ptr %qp_type, align 4
  %85 = ptrtoint ptr %sc_sq_cq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sc_sq_cq, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 2
  %87 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 3
  %88 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i509, ptr %recv_cq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %89 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %89, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  br i1 %tobool102.not, label %if.end86.do.body116_crit_edge, label %do.end108, !prof !133

if.end86.do.body116_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body116

do.end108:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sc_cm_id, align 4
  %92 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sc_pd, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %91, ptr noundef %93) #15
  br label %do.body116

do.body116:                                       ; preds = %do.end108, %if.end86.do.body116_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %94 = load i32, ptr @rpc_debug, align 4
  %and117 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.body116.do.body138_crit_edge, label %do.end128, !prof !133

do.body116.do.body138_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body138

do.end128:                                        ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cap, align 4
  %97 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_recv_wr, align 4
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %96, i32 noundef %98) #15
  br label %do.body138

do.body138:                                       ; preds = %do.end128, %do.body116.do.body138_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %99 = load i32, ptr @rpc_debug, align 4
  %and139 = and i32 %99, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body138.do.end159_crit_edge, label %do.end150, !prof !133

do.body138.do.end159_crit_edge:                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end159

do.end150:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  %100 = ptrtoint ptr %max_send_sge97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %max_send_sge97, align 4
  %102 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_recv_sge, align 4
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %101, i32 noundef %103) #15
  br label %do.end159

do.end159:                                        ; preds = %do.end150, %do.body138.do.end159_crit_edge
  %104 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sc_cm_id, align 4
  %106 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sc_pd, align 4
  %call162 = call i32 @rdma_create_qp(ptr noundef %105, ptr noundef %107, ptr noundef nonnull %qp_attr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.then164

if.then164:                                       ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_svcrdma_qp_err(ptr noundef nonnull %newxprt.0, i32 noundef %call162)
  br label %errout

if.end165:                                        ; preds = %do.end159
  %108 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sc_cm_id, align 4
  %qp = getelementptr inbounds %struct.rdma_cm_id, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %qp, align 4
  %sc_qp = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 22
  %112 = ptrtoint ptr %sc_qp to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %sc_qp, align 4
  %device_cap_flags = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 22, i32 9
  %113 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %device_cap_flags, align 8
  %and168 = and i64 %114, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and168)
  %tobool169.not = icmp eq i64 %and168, 0
  br i1 %tobool169.not, label %if.then170, label %if.end165.if.end171_crit_edge

if.end165.if.end171_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.then170:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #14
  %sc_snd_w_inv = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 5
  %115 = ptrtoint ptr %sc_snd_w_inv to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %sc_snd_w_inv, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.end165.if.end171_crit_edge
  %116 = ptrtoint ptr %sc_port_num to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %sc_port_num, align 4
  %conv173 = zext i8 %117 to i32
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 11
  %118 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %119, i32 %conv173, i32 1, i32 2
  %120 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %core_cap_flags.i, align 4
  %122 = and i32 %121, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %.not = icmp eq i32 %122, 0
  br i1 %.not, label %if.then178, label %if.end179

if.then178:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_svcrdma_fabric_err(ptr noundef nonnull %newxprt.0)
  br label %errout

if.end179:                                        ; preds = %if.end171
  %call180 = call zeroext i1 @svc_rdma_post_recvs(ptr noundef nonnull %newxprt.0) #12
  br i1 %call180, label %if.end182, label %if.end179.errout_crit_edge

if.end179.errout_crit_edge:                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #14
  br label %errout

if.end182:                                        ; preds = %if.end179
  %123 = ptrtoint ptr %pmsg to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -156561896, ptr %pmsg, align 8
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %1, align 4
  %125 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %2, align 1
  %126 = ptrtoint ptr %sc_max_req_size to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sc_max_req_size, align 4
  %shr.i = lshr i32 %127, 10
  %128 = trunc i32 %shr.i to i8
  %conv.i511 = add i8 %128, -1
  %129 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv.i511, ptr %4, align 1
  %130 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv.i511, ptr %3, align 2
  %sc_flags = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 27
  call void @_set_bit(i32 noundef 3, ptr noundef %sc_flags) #12
  %sc_ord = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 3
  %131 = call ptr @memset(ptr %conn_param, i32 0, i32 20)
  %132 = ptrtoint ptr %sc_ord to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sc_ord, align 4
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 22, i32 20
  %134 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %max_qp_init_rd_atom, align 8
  %136 = call i32 @llvm.smin.i32(i32 %133, i32 %135)
  %conv189 = trunc i32 %136 to i8
  %initiator_depth = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 3
  %137 = ptrtoint ptr %initiator_depth to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv189, ptr %initiator_depth, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv189)
  %tobool191.not = icmp eq i8 %conv189, 0
  br i1 %tobool191.not, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_svcrdma_initdepth_err(ptr noundef nonnull %newxprt.0)
  br label %errout

if.end193:                                        ; preds = %if.end182
  %138 = ptrtoint ptr %conn_param to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %pmsg, ptr %conn_param, align 4
  %private_data_len = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param, i32 0, i32 1
  %139 = ptrtoint ptr %private_data_len to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 8, ptr %private_data_len, align 4
  %140 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sc_cm_id, align 4
  call void @rdma_lock_handler(ptr noundef %141) #12
  %142 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sc_cm_id, align 4
  %event_handler196 = getelementptr inbounds %struct.rdma_cm_id, ptr %143, i32 0, i32 3
  %144 = ptrtoint ptr %event_handler196 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @svc_rdma_cma_handler, ptr %event_handler196, align 4
  %145 = load ptr, ptr %sc_cm_id, align 4
  %call198 = call i32 @rdma_accept(ptr noundef %145, ptr noundef nonnull %conn_param) #12
  %146 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sc_cm_id, align 4
  call void @rdma_unlock_handler(ptr noundef %147) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool200.not = icmp eq i32 %call198, 0
  br i1 %tobool200.not, label %do.body203, label %if.then201

if.then201:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @trace_svcrdma_accept_err(ptr noundef nonnull %newxprt.0, i32 noundef %call198)
  br label %errout

do.body203:                                       ; preds = %if.end193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %148 = load i32, ptr @rpc_debug, align 4
  %and204 = and i32 %148, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %do.body203.do.end220_crit_edge, label %do.end215, !prof !133

do.body203.do.end220_crit_edge:                   ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end220

do.end215:                                        ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #14
  %call217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull %newxprt.0) #15
  br label %do.end220

do.end220:                                        ; preds = %do.end215, %do.body203.do.end220_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %149 = load i32, ptr @rpc_debug, align 4
  %and223 = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  br i1 %tobool224.not, label %do.end220.do.end241_crit_edge, label %do.end234, !prof !133

do.end220.do.end241_crit_edge:                    ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end241

do.end234:                                        ; preds = %do.end220
  %150 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sc_cm_id, align 4
  %route = getelementptr inbounds %struct.rdma_cm_id, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %route to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %route, align 2
  %154 = zext i16 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %153, label %do.end234.rpc_get_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

do.end234.rpc_get_port.exit_crit_edge:            ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpc_get_port.exit

sw.bb.i:                                          ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #14
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %route, i32 0, i32 1
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %do.end234
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %route, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %155 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %sin6_port.sink.i, align 2
  %phi.cast = zext i16 %156 to i32
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %return.sink.split.i, %do.end234.rpc_get_port.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end234.rpc_get_port.exit_crit_edge ], [ %phi.cast, %return.sink.split.i ]
  %call238 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %route, i32 noundef %retval.0.i) #15
  br label %do.end241

do.end241:                                        ; preds = %rpc_get_port.exit, %do.end220.do.end241_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %157 = load i32, ptr @rpc_debug, align 4
  %and246 = and i32 %157, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %do.end241.do.body265_crit_edge, label %do.end257, !prof !133

do.end241.do.body265_crit_edge:                   ; preds = %do.end241
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body265

do.end257:                                        ; preds = %do.end241
  %158 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sc_cm_id, align 4
  %dst_addr = getelementptr inbounds %struct.rdma_cm_id, ptr %159, i32 0, i32 4, i32 0, i32 1
  %160 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %dst_addr, align 2
  %162 = zext i16 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %161, label %do.end257.rpc_get_port.exit519_crit_edge [
    i16 2, label %sw.bb.i513
    i16 10, label %sw.bb1.i515
  ]

do.end257.rpc_get_port.exit519_crit_edge:         ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpc_get_port.exit519

sw.bb.i513:                                       ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #14
  %sin_port.i512 = getelementptr inbounds %struct.sockaddr_in, ptr %dst_addr, i32 0, i32 1
  br label %return.sink.split.i517

sw.bb1.i515:                                      ; preds = %do.end257
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_port.i514 = getelementptr inbounds %struct.sockaddr_in6, ptr %dst_addr, i32 0, i32 1
  br label %return.sink.split.i517

return.sink.split.i517:                           ; preds = %sw.bb1.i515, %sw.bb.i513
  %sin6_port.sink.i516 = phi ptr [ %sin6_port.i514, %sw.bb1.i515 ], [ %sin_port.i512, %sw.bb.i513 ]
  %163 = ptrtoint ptr %sin6_port.sink.i516 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %sin6_port.sink.i516, align 2
  %phi.cast524 = zext i16 %164 to i32
  br label %rpc_get_port.exit519

rpc_get_port.exit519:                             ; preds = %return.sink.split.i517, %do.end257.rpc_get_port.exit519_crit_edge
  %retval.0.i518 = phi i32 [ 0, %do.end257.rpc_get_port.exit519_crit_edge ], [ %phi.cast524, %return.sink.split.i517 ]
  %call261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %dst_addr, i32 noundef %retval.0.i518) #15
  br label %do.body265

do.body265:                                       ; preds = %rpc_get_port.exit519, %do.end241.do.body265_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %165 = load i32, ptr @rpc_debug, align 4
  %and266 = and i32 %165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and266)
  %tobool267.not = icmp eq i32 %and266, 0
  br i1 %tobool267.not, label %do.body265.do.body284_crit_edge, label %do.end277, !prof !133

do.body265.do.body284_crit_edge:                  ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body284

do.end277:                                        ; preds = %do.body265
  call void @__sanitizer_cov_trace_pc() #14
  %166 = ptrtoint ptr %sc_max_send_sges to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sc_max_send_sges, align 4
  %call280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %167) #15
  br label %do.body284

do.body284:                                       ; preds = %do.end277, %do.body265.do.body284_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %168 = load i32, ptr @rpc_debug, align 4
  %and285 = and i32 %168, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body284.do.body303_crit_edge, label %do.end296, !prof !133

do.body284.do.body303_crit_edge:                  ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body303

do.end296:                                        ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %sc_sq_depth to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sc_sq_depth, align 4
  %call299 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %170) #15
  br label %do.body303

do.body303:                                       ; preds = %do.end296, %do.body284.do.body303_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %171 = load i32, ptr @rpc_debug, align 4
  %and304 = and i32 %171, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %do.body303.do.body321_crit_edge, label %do.end315, !prof !133

do.body303.do.body321_crit_edge:                  ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body321

do.end315:                                        ; preds = %do.body303
  call void @__sanitizer_cov_trace_pc() #14
  %call317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %mul) #15
  br label %do.body321

do.body321:                                       ; preds = %do.end315, %do.body303.do.body321_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %172 = load i32, ptr @rpc_debug, align 4
  %and322 = and i32 %172, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and322)
  %tobool323.not = icmp eq i32 %and322, 0
  br i1 %tobool323.not, label %do.body321.do.body340_crit_edge, label %do.end333, !prof !133

do.body321.do.body340_crit_edge:                  ; preds = %do.body321
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body340

do.end333:                                        ; preds = %do.body321
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %sc_max_requests to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %sc_max_requests, align 4
  %call336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %174) #15
  br label %do.body340

do.body340:                                       ; preds = %do.end333, %do.body321.do.body340_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %175 = load i32, ptr @rpc_debug, align 4
  %and341 = and i32 %175, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %tobool342.not = icmp eq i32 %and341, 0
  br i1 %tobool342.not, label %do.body340.cleanup_crit_edge, label %do.end352, !prof !133

do.body340.cleanup_crit_edge:                     ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end352:                                        ; preds = %do.body340
  call void @__sanitizer_cov_trace_pc() #14
  %176 = ptrtoint ptr %initiator_depth to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %initiator_depth, align 2
  %conv355 = zext i8 %177 to i32
  %call356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv355) #15
  br label %cleanup

errout:                                           ; preds = %if.then201, %if.then192, %if.end179.errout_crit_edge, %if.then178, %if.then164, %if.end81.errout_crit_edge, %if.end75.errout_crit_edge, %if.then72
  %xpt_ref.i = getelementptr inbounds %struct.svc_xprt, ptr %newxprt.0, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %xpt_ref.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %xpt_ref.i, i32 1, i32 3, i32 1) #12
  %178 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %xpt_ref.i, ptr %xpt_ref.i, i32 1, ptr elementtype(i32) %xpt_ref.i) #12, !srcloc !134
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %errout.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !135

errout.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %errout
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %errout
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %179 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %179)
  %.not.i.i.i.i.i = icmp sgt i32 %179, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.svc_xprt_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !133

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.svc_xprt_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_xprt_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %errout.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %errout.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %xpt_ref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %svc_xprt_get.exit

svc_xprt_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.svc_xprt_get.exit_crit_edge
  %sc_qp362 = getelementptr inbounds %struct.svcxprt_rdma, ptr %newxprt.0, i32 0, i32 22
  %180 = ptrtoint ptr %sc_qp362 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sc_qp362, align 4
  %tobool363.not = icmp eq ptr %181, null
  %cmp.i520 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  %or.cond523 = or i1 %tobool363.not, %cmp.i520
  br i1 %or.cond523, label %svc_xprt_get.exit.if.end370_crit_edge, label %if.then367

svc_xprt_get.exit.if.end370_crit_edge:            ; preds = %svc_xprt_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end370

if.then367:                                       ; preds = %svc_xprt_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i521 = call i32 @ib_destroy_qp_user(ptr noundef nonnull %181, ptr noundef null) #12
  br label %if.end370

if.end370:                                        ; preds = %if.then367, %svc_xprt_get.exit.if.end370_crit_edge
  %182 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sc_cm_id, align 4
  call void @rdma_destroy_id(ptr noundef %183) #12
  call void @svc_xprt_put(ptr noundef nonnull %newxprt.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end370, %do.end352, %do.body340.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end370 ], [ null, %if.end11.cleanup_crit_edge ], [ %newxprt.0, %do.end352 ], [ %newxprt.0, %do.body340.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pmsg) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param) #12
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_rdma_has_wspace(ptr noundef %xprt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 26, i32 1
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, %head.i
  %. = zext i1 %cmp.i.i.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_recvfrom(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_sendto(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_rdma_result_payload(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_release_rqst(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_detach(ptr nocapture noundef readonly %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cm_id = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cm_id, align 4
  %call = tail call i32 @rdma_disconnect(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_free(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_work = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 28
  tail call void @__init_work(ptr noundef %sc_work, i32 noundef 0) #12
  %0 = ptrtoint ptr %sc_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %sc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 28, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.61, ptr noundef nonnull @svc_rdma_free.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4 = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 28, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 28, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.svcxprt_rdma, ptr %xprt, i32 0, i32 28, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__svc_rdma_free, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %sc_work) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_rdma_secure_port(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_flags = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  tail call void @_set_bit(i32 noundef 0, ptr noundef %rq_flags) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @svc_rdma_kill_temp_xprt(ptr nocapture noundef %xprt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_rdma_create_xprt(ptr noundef %serv, ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 916) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %1 = load i32, ptr @rpc_debug, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end, !prof !133

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #15
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @svc_xprt_init(ptr noundef %net, ptr noundef nonnull @svc_rdma_class, ptr noundef nonnull %call7.i.i, ptr noundef %serv) #12
  %sc_accept_q = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %sc_accept_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sc_accept_q, ptr %sc_accept_q, align 8
  %prev.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sc_accept_q, ptr %prev.i, align 4
  %sc_rq_dto_q = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 20
  %4 = ptrtoint ptr %sc_rq_dto_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sc_rq_dto_q, ptr %sc_rq_dto_q, align 4
  %prev.i43 = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sc_rq_dto_q, ptr %prev.i43, align 8
  %sc_send_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 15
  %6 = ptrtoint ptr %sc_send_ctxts to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sc_send_ctxts, align 8
  %sc_recv_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 29
  %7 = ptrtoint ptr %sc_recv_ctxts to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sc_recv_ctxts, align 4
  %sc_rw_ctxts = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %sc_rw_ctxts to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %sc_rw_ctxts, align 8
  %sc_send_wait = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 26
  tail call void @__init_waitqueue_head(ptr noundef %sc_send_wait, ptr noundef nonnull @.str.6, ptr noundef nonnull @svc_rdma_create_xprt.__key) #12
  %sc_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %sc_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @svc_rdma_create_xprt.__key.7, i16 noundef signext 3) #12
  %sc_rq_dto_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 21
  tail call void @__raw_spin_lock_init(ptr noundef %sc_rq_dto_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @svc_rdma_create_xprt.__key.9, i16 noundef signext 3) #12
  %sc_send_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %sc_send_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @svc_rdma_create_xprt.__key.11, i16 noundef signext 3) #12
  %sc_rw_ctxt_lock = getelementptr inbounds %struct.svcxprt_rdma, ptr %call7.i.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %sc_rw_ctxt_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @svc_rdma_create_xprt.__key.13, i16 noundef signext 3) #12
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %call7.i.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %xpt_flags) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %do.body.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_rdma_listen_handler(ptr noundef %cma_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cond = icmp eq i32 %1, 4
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %context.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 1
  %2 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context.i, align 4
  %xpt_server.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %xpt_server.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xpt_server.i, align 4
  %xpt_net.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %xpt_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xpt_net.i, align 4
  %call.i = tail call fastcc ptr @svc_rdma_create_xprt(ptr noundef %5, ptr noundef %7) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %sc_cm_id.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %sc_cm_id.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cma_id, ptr %sc_cm_id.i, align 4
  %9 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %context.i, align 4
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %param, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.svc_rdma_parse_connect_private.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.svc_rdma_parse_connect_private.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_rdma_parse_connect_private.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -156561896, i32 %13)
  %cmp.i.i = icmp eq i32 %13, -156561896
  br i1 %cmp.i.i, label %land.lhs.true1.i.i, label %land.lhs.true.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge

land.lhs.true.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_rdma_parse_connect_private.exit.i

land.lhs.true1.i.i:                               ; preds = %land.lhs.true.i.i
  %cp_version.i.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %cp_version.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cp_version.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp2.i.i = icmp eq i8 %15, 1
  br i1 %cmp2.i.i, label %if.then.i.i, label %land.lhs.true1.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge

land.lhs.true1.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge: ; preds = %land.lhs.true1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_rdma_parse_connect_private.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true1.i.i
  %cp_flags.i.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %cp_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cp_flags.i.i, align 1
  %18 = and i8 %17, 1
  %sc_snd_w_inv.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %sc_snd_w_inv.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %sc_snd_w_inv.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rpc_debug to i32))
  %20 = load i32, ptr @rpc_debug, align 4
  %and6.i.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge, label %do.end.i.i, !prof !133

if.then.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_rdma_parse_connect_private.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %cp_send_size.i.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %cp_send_size.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cp_send_size.i.i, align 1
  %conv.i.i.i = zext i8 %22 to i32
  %add.i.i.i = shl nuw nsw i32 %conv.i.i.i, 10
  %shl.i.i.i = add nuw nsw i32 %add.i.i.i, 1024
  %cp_recv_size.i.i = getelementptr inbounds %struct.rpcrdma_connect_private, ptr %11, i32 0, i32 4
  %23 = ptrtoint ptr %cp_recv_size.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cp_recv_size.i.i, align 1
  %conv.i26.i.i = zext i8 %24 to i32
  %add.i27.i.i = shl nuw nsw i32 %conv.i26.i.i, 10
  %shl.i28.i.i = add nuw nsw i32 %add.i27.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not.i.i = icmp eq i8 %18, 0
  %cond.i.i = select i1 %tobool14.not.i.i, ptr @.str.19, ptr @.str.18
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %shl.i.i.i, i32 noundef %shl.i28.i.i, ptr noundef nonnull %cond.i.i) #15
  br label %svc_rdma_parse_connect_private.exit.i

svc_rdma_parse_connect_private.exit.i:            ; preds = %do.end.i.i, %if.then.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge, %land.lhs.true1.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge, %land.lhs.true.i.i.svc_rdma_parse_connect_private.exit.i_crit_edge, %if.end.i.svc_rdma_parse_connect_private.exit.i_crit_edge
  %initiator_depth.i = getelementptr inbounds %struct.rdma_conn_param, ptr %param, i32 0, i32 3
  %25 = ptrtoint ptr %initiator_depth.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %initiator_depth.i, align 2
  %conv.i = zext i8 %26 to i32
  %sc_ord.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %sc_ord.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %sc_ord.i, align 4
  %28 = ptrtoint ptr %sc_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc_cm_id.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.rdma_cm_id, ptr %29, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dst_addr.i, align 2
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.66)
  switch i16 %31, label %do.body.i.i [
    i16 2, label %svc_rdma_parse_connect_private.exit.i.svc_addr_len.exit.i_crit_edge
    i16 10, label %sw.bb1.i.i
  ]

svc_rdma_parse_connect_private.exit.i.svc_addr_len.exit.i_crit_edge: ; preds = %svc_rdma_parse_connect_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_addr_len.exit.i

sw.bb1.i.i:                                       ; preds = %svc_rdma_parse_connect_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_addr_len.exit.i

do.body.i.i:                                      ; preds = %svc_rdma_parse_connect_private.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/sunrpc/svc_xprt.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

svc_addr_len.exit.i:                              ; preds = %sw.bb1.i.i, %svc_rdma_parse_connect_private.exit.i.svc_addr_len.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 28, %sw.bb1.i.i ], [ 16, %svc_rdma_parse_connect_private.exit.i.svc_addr_len.exit.i_crit_edge ]
  %xpt_remotelen.i = getelementptr inbounds %struct.svc_xprt, ptr %call.i, i32 0, i32 16
  %33 = ptrtoint ptr %xpt_remotelen.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.i, ptr %xpt_remotelen.i, align 4
  %xpt_remote.i = getelementptr inbounds %struct.svc_xprt, ptr %call.i, i32 0, i32 15
  %34 = call ptr @memcpy(ptr %xpt_remote.i, ptr %dst_addr.i, i32 %retval.0.i.i)
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %call.i, i32 0, i32 17
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %xpt_remotebuf.i, i32 noundef 57, ptr noundef nonnull @.str.15, ptr noundef %dst_addr.i) #12
  %35 = ptrtoint ptr %xpt_remote.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %xpt_remote.i, align 2
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.67)
  switch i16 %36, label %svc_addr_len.exit.i.rpc_set_port.exit.i_crit_edge [
    i16 2, label %sw.bb.i.i
    i16 10, label %sw.bb1.i50.i
  ]

svc_addr_len.exit.i.rpc_set_port.exit.i_crit_edge: ; preds = %svc_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rpc_set_port.exit.i

sw.bb.i.i:                                        ; preds = %svc_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin_port.i.i = getelementptr inbounds %struct.sockaddr_in, ptr %xpt_remote.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i.i

sw.bb1.i50.i:                                     ; preds = %svc_addr_len.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %xpt_remote.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb1.i50.i, %sw.bb.i.i
  %sin6_port.sink.i.i = phi ptr [ %sin6_port.i.i, %sw.bb1.i50.i ], [ %sin_port.i.i, %sw.bb.i.i ]
  %38 = ptrtoint ptr %sin6_port.sink.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %sin6_port.sink.i.i, align 2
  br label %rpc_set_port.exit.i

rpc_set_port.exit.i:                              ; preds = %sw.epilog.sink.split.i.i, %svc_addr_len.exit.i.rpc_set_port.exit.i_crit_edge
  %39 = ptrtoint ptr %sc_cm_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sc_cm_id.i, align 4
  %route14.i = getelementptr inbounds %struct.rdma_cm_id, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %route14.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %route14.i, align 2
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.68)
  switch i16 %42, label %do.body.i52.i [
    i16 2, label %rpc_set_port.exit.i.svc_addr_len.exit54.i_crit_edge
    i16 10, label %sw.bb1.i51.i
  ]

rpc_set_port.exit.i.svc_addr_len.exit54.i_crit_edge: ; preds = %rpc_set_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_addr_len.exit54.i

sw.bb1.i51.i:                                     ; preds = %rpc_set_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %svc_addr_len.exit54.i

do.body.i52.i:                                    ; preds = %rpc_set_port.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/sunrpc/svc_xprt.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

svc_addr_len.exit54.i:                            ; preds = %sw.bb1.i51.i, %rpc_set_port.exit.i.svc_addr_len.exit54.i_crit_edge
  %retval.0.i53.i = phi i32 [ 28, %sw.bb1.i51.i ], [ 16, %rpc_set_port.exit.i.svc_addr_len.exit54.i_crit_edge ]
  %xpt_local.i.i = getelementptr inbounds %struct.svc_xprt, ptr %call.i, i32 0, i32 13
  %44 = call ptr @memcpy(ptr %xpt_local.i.i, ptr %route14.i, i32 %retval.0.i53.i)
  %xpt_locallen.i.i = getelementptr inbounds %struct.svc_xprt, ptr %call.i, i32 0, i32 14
  %45 = ptrtoint ptr %xpt_locallen.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i53.i, ptr %xpt_locallen.i.i, align 4
  %sc_lock.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %3, i32 0, i32 25
  tail call void @_raw_spin_lock(ptr noundef %sc_lock.i) #12
  %sc_accept_q.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %call.i, i32 0, i32 2
  %sc_accept_q18.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %3, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %3, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %sc_accept_q.i, ptr noundef %47, ptr noundef %sc_accept_q18.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %svc_addr_len.exit54.i.list_add_tail.exit.i_crit_edge

svc_addr_len.exit54.i.list_add_tail.exit.i_crit_edge: ; preds = %svc_addr_len.exit54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %svc_addr_len.exit54.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %sc_accept_q.i, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %sc_accept_q.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sc_accept_q18.i, ptr %sc_accept_q.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.svcxprt_rdma, ptr %call.i, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %sc_accept_q.i, ptr %47, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %svc_addr_len.exit54.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sc_lock.i) #12
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %3, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %xpt_flags.i) #12
  tail call void @svc_xprt_enqueue(ptr noundef %3) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_add_tail.exit.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_set_afonly(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_enqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_rw_mr_factor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_pd_err(ptr noundef %rdma, i32 noundef %status) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_pd_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_pd_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %call42 = tail call i32 @__traceiter_svcrdma_pd_err(ptr noundef null, ptr noundef %rdma, i32 noundef %status) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_pd_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_pd_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcrdma_pd_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_svcrdma_pd_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 1516, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qp_event_handler(ptr noundef %event, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xpt_remote = getelementptr inbounds %struct.svc_xprt, ptr %context, i32 0, i32 15
  tail call fastcc void @trace_svcrdma_qp_error(ptr noundef %event, ptr noundef %xpt_remote)
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %1, label %sw.default [
    i32 6, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge5
    i32 5, label %entry.sw.epilog_crit_edge6
    i32 16, label %entry.sw.epilog_crit_edge7
  ]

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @svc_xprt_deferred_close(ptr noundef %context) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge5, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_qp_err(ptr noundef %rdma, i32 noundef %status) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_qp_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_qp_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !142
  %call42 = tail call i32 @__traceiter_svcrdma_qp_err(ptr noundef null, ptr noundef %rdma, i32 noundef %status) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !143
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_qp_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_qp_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcrdma_qp_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_svcrdma_qp_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 1517, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_fabric_err(ptr noundef %rdma) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_fabric_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_fabric_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !144
  %call42 = tail call i32 @__traceiter_svcrdma_fabric_err(ptr noundef null, ptr noundef %rdma, i32 noundef -22) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !145
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !133

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_fabric_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_fabric_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_svcrdma_fabric_err.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_svcrdma_fabric_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 1518, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @svc_rdma_post_recvs(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_initdepth_err(ptr noundef %rdma) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_initdepth_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_initdepth_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !146
  %call42 = tail call i32 @__traceiter_svcrdma_initdepth_err(ptr noundef null, ptr noundef %rdma, i32 noundef -22) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !147
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !133

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_initdepth_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_initdepth_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_svcrdma_initdepth_err.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_svcrdma_initdepth_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 1519, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_lock_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_rdma_cma_handler(ptr nocapture noundef readonly %cma_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 10, label %entry.sw.bb2_crit_edge
    i32 11, label %entry.sw.bb2_crit_edge5
  ]

entry.sw.bb2_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sc_flags = getelementptr inbounds %struct.svcxprt_rdma, ptr %1, i32 0, i32 27
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %sc_flags) #12
  tail call void @svc_xprt_enqueue(ptr noundef %1) #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge5
  tail call void @svc_xprt_deferred_close(ptr noundef %1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_unlock_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_accept_err(ptr noundef %rdma, i32 noundef %status) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_accept_err, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_accept_err, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !148
  %call42 = tail call i32 @__traceiter_svcrdma_accept_err(ptr noundef null, ptr noundef %rdma, i32 noundef %status) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !149
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_accept_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_accept_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcrdma_accept_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_svcrdma_accept_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 1520, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_pd_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_cq_any(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcrdma_qp_error(ptr noundef %event, ptr noundef %sap) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_qp_error, i32 0, i32 1), ptr blockaddress(@trace_svcrdma_qp_error, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !137

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !150
  %call42 = tail call i32 @__traceiter_svcrdma_qp_error(ptr noundef null, ptr noundef %event, ptr noundef %sap) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !151
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_qp_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcrdma_qp_error, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcrdma_qp_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_svcrdma_qp_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 2177, ptr noundef nonnull @.str.59) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #12
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_deferred_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_qp_error(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_qp_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_fabric_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_initdepth_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcrdma_accept_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__svc_rdma_free(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -864
  %sc_qp = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_qp, align 4
  %tobool.not = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ib_drain_qp(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @svc_rdma_flush_recv_queues(ptr noundef %add.ptr) #12
  tail call void @svc_rdma_destroy_rw_ctxts(ptr noundef %add.ptr) #12
  tail call void @svc_rdma_send_ctxts_destroy(ptr noundef %add.ptr) #12
  tail call void @svc_rdma_recv_ctxts_destroy(ptr noundef %add.ptr) #12
  %2 = ptrtoint ptr %sc_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc_qp, align 4
  %tobool4.not = icmp eq ptr %3, null
  %cmp.i57 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %or.cond62 = or i1 %tobool4.not, %cmp.i57
  br i1 %or.cond62, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %3, ptr noundef null) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %sc_sq_cq = getelementptr i8, ptr %work, i32 -104
  %4 = ptrtoint ptr %sc_sq_cq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sc_sq_cq, align 4
  %tobool12.not = icmp eq ptr %5, null
  %cmp.i58 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %or.cond63 = or i1 %tobool12.not, %cmp.i58
  br i1 %or.cond63, label %if.end11.if.end18_crit_edge, label %if.then16

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ib_free_cq(ptr noundef nonnull %5) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  %sc_rq_cq = getelementptr i8, ptr %work, i32 -108
  %6 = ptrtoint ptr %sc_rq_cq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc_rq_cq, align 4
  %tobool19.not = icmp eq ptr %7, null
  %cmp.i59 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %or.cond64 = or i1 %tobool19.not, %cmp.i59
  br i1 %or.cond64, label %if.end18.if.end25_crit_edge, label %if.then23

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ib_free_cq(ptr noundef nonnull %7) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end18.if.end25_crit_edge
  %sc_pd = getelementptr i8, ptr %work, i32 -272
  %8 = ptrtoint ptr %sc_pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc_pd, align 4
  %tobool26.not = icmp eq ptr %9, null
  %cmp.i60 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %or.cond65 = or i1 %tobool26.not, %cmp.i60
  br i1 %or.cond65, label %if.end25.if.end32_crit_edge, label %if.then30

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  %call.i61 = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %9, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i, label %if.then30.if.end32_crit_edge, label %land.rhs.i

if.then30.if.end32_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.rhs.i:                                       ; preds = %if.then30
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end32_crit_edge, label %if.then.i, !prof !133

land.rhs.i.if.end32_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.63) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then.i, %land.rhs.i.if.end32_crit_edge, %if.then30.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %sc_cm_id = getelementptr i8, ptr %work, i32 -324
  %10 = ptrtoint ptr %sc_cm_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sc_cm_id, align 4
  tail call void @rdma_destroy_id(ptr noundef %11) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_flush_recv_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_destroy_rw_ctxts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_send_ctxts_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_rdma_recv_ctxts_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_cq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 94, i32 14}
!2 = !{ptr @svc_rdma_class, !3, !"svc_rdma_class", i1 false, i1 false}
!3 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 93, i32 23}
!4 = !{ptr @svc_rdma_ops, !5, !"svc_rdma_ops", i1 false, i1 false}
!5 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 79, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 313, i32 42}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 315, i32 14}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 133, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @svc_rdma_create_xprt._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @svc_rdma_create_xprt._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @svc_rdma_create_xprt.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 142, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @svc_rdma_create_xprt.__key.7, !20, !"__key", i1 false, i1 false}
!20 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 144, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @svc_rdma_create_xprt.__key.9, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 145, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @svc_rdma_create_xprt.__key.11, !26, !"__key", i1 false, i1 false}
!26 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 146, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @svc_rdma_create_xprt.__key.13, !29, !"__key", i1 false, i1 false}
!29 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 147, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 215, i32 48}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 172, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @svc_rdma_parse_connect_private._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @svc_rdma_parse_connect_private._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 411, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @svc_rdma_accept._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @svc_rdma_accept._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 423, i32 3}
!47 = !{ptr @svc_rdma_accept._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @svc_rdma_accept._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 456, i32 2}
!51 = !{ptr @svc_rdma_accept._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @svc_rdma_accept._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 458, i32 2}
!55 = !{ptr @svc_rdma_accept._entry.28, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @svc_rdma_accept._entry_ptr.30, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 460, i32 2}
!59 = !{ptr @svc_rdma_accept._entry.31, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @svc_rdma_accept._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 511, i32 2}
!63 = !{ptr @svc_rdma_accept._entry.34, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @svc_rdma_accept._entry_ptr.36, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 513, i32 2}
!67 = !{ptr @svc_rdma_accept._entry.37, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @svc_rdma_accept._entry_ptr.39, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 515, i32 2}
!71 = !{ptr @svc_rdma_accept._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @svc_rdma_accept._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 516, i32 2}
!75 = !{ptr @svc_rdma_accept._entry.43, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @svc_rdma_accept._entry_ptr.45, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 517, i32 2}
!79 = !{ptr @svc_rdma_accept._entry.46, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @svc_rdma_accept._entry_ptr.48, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 518, i32 2}
!83 = !{ptr @svc_rdma_accept._entry.49, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @svc_rdma_accept._entry_ptr.51, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 519, i32 2}
!87 = !{ptr @svc_rdma_accept._entry.52, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @svc_rdma_accept._entry_ptr.54, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 520, i32 2}
!91 = !{ptr @svc_rdma_accept._entry.55, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @svc_rdma_accept._entry_ptr.57, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/trace/events/rpcrdma.h", i32 1516, i32 1}
!95 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!97 = !{ptr @.str.59, !94, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!100 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__already_done", i1 false, i1 false}
!102 = !{!"../include/trace/events/rpcrdma.h", i32 2152, i32 1}
!103 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/trace/events/rpcrdma.h", i32 1517, i32 1}
!106 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../include/trace/events/rpcrdma.h", i32 1518, i32 1}
!109 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/trace/events/rpcrdma.h", i32 1519, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../include/trace/events/rpcrdma.h", i32 1520, i32 1}
!115 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!116 = !{ptr @svc_rdma_free.__key, !117, !"__key", i1 false, i1 false}
!117 = !{!"../net/sunrpc/xprtrdma/svc_rdma_transport.c", i32 583, i32 2}
!118 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2148254458, i64 2148254490, i64 2148254519, i64 2148254553, i64 2148254584, i64 2148254607}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2158126703, i64 2158127199, i64 2158126740, i64 2158126796, i64 2158126830, i64 2158126854, i64 2158126895, i64 2158126916, i64 2158126944, i64 2158126978}
!137 = !{i64 2148734743, i64 2148734748, i64 2148734761, i64 2148734805, i64 2148734839, i64 2148734860}
!138 = !{i64 2159329508}
!139 = !{i64 2159329723}
!140 = !{i64 2149315809}
!141 = !{i64 2149316845}
!142 = !{i64 2159350326}
!143 = !{i64 2159350541}
!144 = !{i64 2159367243}
!145 = !{i64 2159367466}
!146 = !{i64 2159384496}
!147 = !{i64 2159384725}
!148 = !{i64 2159405852}
!149 = !{i64 2159406075}
!150 = !{i64 2160129928}
!151 = !{i64 2160130143}
