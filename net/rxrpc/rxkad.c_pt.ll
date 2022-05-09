; ModuleID = '/llk/IR_all_yes/net/rxrpc/rxkad.c_pt.bc'
source_filename = "../net/rxrpc/rxkad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rxrpc_security = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.118 }
%struct.atomic_t = type { i32 }
%union.anon.118 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.key_preparsed_payload = type { ptr, ptr, %union.key_payload, ptr, i32, i32, i64 }
%union.key_payload = type { [4 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.key = type { %struct.refcount_struct, i32, %union.anon, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.2, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.3, %union.anon.131, ptr }
%union.anon = type { %struct.rb_node }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.2 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.3 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.4, ptr, ptr, ptr }
%union.anon.4 = type { i32 }
%union.anon.131 = type { %union.key_payload }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rxrpc_crypt = type { %union.anon.157 }
%union.anon.157 = type { [2 x i32] }
%struct.rxrpc_connection = type { %struct.rxrpc_conn_proto, %struct.rxrpc_conn_parameters, %struct.atomic_t, %struct.callback_head, %struct.list_head, i8, [4 x %struct.rxrpc_channel], %struct.timer_list, %struct.work_struct, ptr, %struct.rb_node, %struct.list_head, %struct.list_head, %struct.sk_buff_head, ptr, [4 x i8], %union.anon.155, i32, i32, i32, %struct.spinlock, i32, i32, i32, %struct.atomic_t, i32, i32, i8, i8, i8, i16 }
%struct.rxrpc_conn_proto = type { %union.anon.148 }
%union.anon.148 = type { i64 }
%struct.rxrpc_conn_parameters = type { ptr, ptr, ptr, i8, i8, i16, i32 }
%struct.rxrpc_channel = type { i32, ptr, i32, i32, i32, i32, i8, %union.anon.154 }
%union.anon.154 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.73, i32, %struct.spinlock }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { ptr, [4 x i8], %struct.rxrpc_crypt, i32, [4 x i8] }
%struct.rxrpc_key_token = type { i16, i8, ptr, %union.anon.158 }
%union.anon.158 = type { ptr }
%struct.rxkad_key = type { i32, i32, i32, i32, i8, i16, [8 x i8], [0 x i8] }
%struct.anon.149 = type { i32, i32 }
%struct.rxrpc_call = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.timer_list, %struct.work_struct, ptr, %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, ptr, %struct.wait_queue_head, i64, [2 x i32], i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i32, i32, i32, %struct.atomic_t, i16, i8, i32, i32, i32, i32, i16, i16, i8, ptr, ptr, i32, i32, i16, i8, i8, i8, i8, i8, i8, i64, i32, i32, i32, i32, i8, i8, i8, i8, %struct.spinlock, i8, i32, i32, i32, i32, i32, [4 x i32], [4 x i64], i32, i64, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rxkad_level2_hdr = type { i32, i32 }
%struct.rxkad_level1_hdr = type { i32 }
%struct.rxkad_challenge = type { i32, i32, i32, i32 }
%struct.rxrpc_wire_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.161, i16 }
%union.anon.161 = type { i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.44, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.41, %union.anon.42 }
%union.anon.41 = type { ptr }
%union.anon.42 = type { i64 }
%union.anon.44 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.rxrpc_peer = type { %struct.callback_head, %struct.atomic_t, i32, %struct.hlist_node, ptr, %struct.hlist_head, %struct.rb_root, %struct.list_head, i64, %struct.seqlock_t, %struct.spinlock, i32, i32, i32, i16, i32, %struct.sockaddr_rxrpc, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.hlist_head = type { ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sockaddr_rxrpc = type { i16, i16, i16, i16, %union.anon.150 }
%union.anon.150 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.66 }
%union.anon.66 = type { [4 x i32] }
%struct.rxrpc_local = type { %struct.callback_head, %struct.atomic_t, %struct.atomic_t, ptr, %struct.list_head, ptr, %struct.work_struct, ptr, %struct.rw_semaphore, %struct.sk_buff_head, %struct.sk_buff_head, %struct.rb_root, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, i8, i8, %struct.sockaddr_rxrpc }
%struct.rxkad_response = type { i32, i32, %struct.anon.162, i32, i32 }
%struct.anon.162 = type { i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.page = type { i32, %union.anon.14, %union.anon.116, %struct.atomic_t, i32 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.116 = type { %struct.atomic_t }
%struct.rxrpc_bundle = type { %struct.rxrpc_conn_parameters, %struct.atomic_t, i32, i8, i8, i16, %struct.spinlock, %struct.rb_node, %struct.list_head, i32, [4 x ptr] }
%struct.rxrpc_host_header = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, %union.anon.160, i16 }
%union.anon.160 = type { i16 }
%struct.in_addr = type { i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxkad\00", [26 x i8] zeroinitializer }, align 32
@rxkad = dso_local constant { %struct.rxrpc_security, [52 x i8] } { %struct.rxrpc_security { ptr @.str, i8 2, i32 19270408, ptr @rxkad_init, ptr @rxkad_exit, ptr @rxkad_preparse_server_key, ptr @rxkad_free_preparse_server_key, ptr @rxkad_destroy_server_key, ptr null, ptr @rxkad_init_connection_security, ptr @rxkad_how_much_data, ptr @rxkad_secure_packet, ptr @rxkad_verify_packet, ptr @rxkad_free_call_crypto, ptr @rxkad_locate_data, ptr @rxkad_issue_challenge, ptr @rxkad_respond_to_challenge, ptr @rxkad_verify_response, ptr @rxkad_clear }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcbc(fcrypt)\00", [19 x i8] zeroinitializer }, align 32
@rxkad_ci_req = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rxkad_ci = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcbc(des)\00", [22 x i8] zeroinitializer }, align 32
@rxrpc_debug = external dso_local local_unnamed_addr global i32, align 4
@rxkad_preparse_server_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[%-6.6s] <== %s() = %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rxkad_preparse_server_key\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rxrpc/rxkad.c\00", [46 x i8] zeroinitializer }, align 32
@rxkad_preparse_server_key._entry_ptr = internal global ptr @rxkad_preparse_server_key._entry, section ".printk_index", align 4
@rxkad_preparse_server_key._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] <== %s() = 0\0A\00", [41 x i8] zeroinitializer }, align 32
@rxkad_preparse_server_key._entry_ptr.8 = internal global ptr @rxkad_preparse_server_key._entry.6, section ".printk_index", align 4
@rxkad_init_connection_security._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s] ==> %s({%d},{%x})\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rxkad_init_connection_security\00", [33 x i8] zeroinitializer }, align 32
@rxkad_init_connection_security._entry_ptr = internal global ptr @rxkad_init_connection_security._entry, section ".printk_index", align 4
@rxkad_init_connection_security._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s]     no cipher\0A\00", [40 x i8] zeroinitializer }, align 32
@rxkad_init_connection_security._entry_ptr.13 = internal global ptr @rxkad_init_connection_security._entry.11, section ".printk_index", align 4
@rxkad_init_connection_security._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.5, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] <== %s() = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rxkad_init_connection_security._entry_ptr.16 = internal global ptr @rxkad_init_connection_security._entry.14, section ".printk_index", align 4
@rxkad_prime_packet_security._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] ==> %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rxkad_prime_packet_security\00", [36 x i8] zeroinitializer }, align 32
@rxkad_prime_packet_security._entry_ptr = internal global ptr @rxkad_prime_packet_security._entry, section ".printk_index", align 4
@rxkad_prime_packet_security._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.18, ptr @.str.5, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_prime_packet_security._entry_ptr.20 = internal global ptr @rxkad_prime_packet_security._entry.19, section ".printk_index", align 4
@rxkad_secure_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[%-6.6s] ==> %s({%d{%x}},{#%u},%zu,)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxkad_secure_packet\00", [44 x i8] zeroinitializer }, align 32
@rxkad_secure_packet._entry_ptr = internal global ptr @rxkad_secure_packet._entry, section ".printk_index", align 4
@rxkad_secure_packet._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.5, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%-6.6s] <== %s() = %d [set %hx]\0A\00", [62 x i8] zeroinitializer }, align 32
@rxkad_secure_packet._entry_ptr.25 = internal global ptr @rxkad_secure_packet._entry.23, section ".printk_index", align 4
@rxkad_secure_packet_auth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.26, ptr @.str.5, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxkad_secure_packet_auth\00", [39 x i8] zeroinitializer }, align 32
@rxkad_secure_packet_auth._entry_ptr = internal global ptr @rxkad_secure_packet_auth._entry, section ".printk_index", align 4
@rxkad_secure_packet_auth._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.26, ptr @.str.5, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_secure_packet_auth._entry_ptr.28 = internal global ptr @rxkad_secure_packet_auth._entry.27, section ".printk_index", align 4
@rxkad_secure_packet_encrypt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.29, ptr @.str.5, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rxkad_secure_packet_encrypt\00", [36 x i8] zeroinitializer }, align 32
@rxkad_secure_packet_encrypt._entry_ptr = internal global ptr @rxkad_secure_packet_encrypt._entry, section ".printk_index", align 4
@rxkad_secure_packet_encrypt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.29, ptr @.str.5, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_secure_packet_encrypt._entry_ptr.31 = internal global ptr @rxkad_secure_packet_encrypt._entry.30, section ".printk_index", align 4
@rxkad_verify_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] ==> %s({%d{%x}},{#%u})\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxkad_verify_packet\00", [44 x i8] zeroinitializer }, align 32
@rxkad_verify_packet._entry_ptr = internal global ptr @rxkad_verify_packet._entry, section ".printk_index", align 4
@rxkad_verify_packet.___tp_str = internal global ptr @.str.34, section "__tracepoint_str", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rxkad_csum\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCK\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_rxrpc_rx_eproto = external dso_local global %struct.tracepoint, align 4
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/rxrpc.h\00", [35 x i8] zeroinitializer }, align 32
@trace_rxrpc_rx_eproto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.39, ptr @.str.5, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxkad_verify_packet_1\00", [42 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1._entry_ptr = internal global ptr @rxkad_verify_packet_1._entry, section ".printk_index", align 4
@rxkad_verify_packet_1.___tp_str = internal global ptr @.str.40, section "__tracepoint_str", align 4
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxkad_1_hdr\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V1H\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1.___tp_str.42 = internal global ptr @.str.43, section "__tracepoint_str", align 4
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxkad_1_len\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XV1\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1.___tp_str.45 = internal global ptr @.str.46, section "__tracepoint_str", align 4
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxkad_1_check\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V1C\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1.___tp_str.48 = internal global ptr @.str.49, section "__tracepoint_str", align 4
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_1_datalen\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V1L\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.39, ptr @.str.5, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[%-6.6s] <== %s() = 0 [dlen=%x]\0A\00", [63 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_1._entry_ptr.53 = internal global ptr @rxkad_verify_packet_1._entry.51, section ".printk_index", align 4
@rxkad_verify_packet_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"[%-6.6s] ==> %s(,{%d})\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxkad_verify_packet_2\00", [42 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2._entry_ptr = internal global ptr @rxkad_verify_packet_2._entry, section ".printk_index", align 4
@rxkad_verify_packet_2.___tp_str = internal global ptr @.str.56, section "__tracepoint_str", align 4
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxkad_2_hdr\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V2H\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2.___tp_str.58 = internal global ptr @.str.59, section "__tracepoint_str", align 4
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxkad_2_len\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"XV2\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2.___tp_str.61 = internal global ptr @.str.62, section "__tracepoint_str", align 4
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxkad_2_check\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V2C\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2.___tp_str.64 = internal global ptr @.str.65, section "__tracepoint_str", align 4
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_2_datalen\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"V2L\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.55, ptr @.str.5, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2._entry_ptr.68 = internal global ptr @rxkad_verify_packet_2._entry.67, section ".printk_index", align 4
@rxkad_verify_packet_2._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.55, ptr @.str.5, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] <== %s() = -ENOMEM\0A\00", [35 x i8] zeroinitializer }, align 32
@rxkad_verify_packet_2._entry_ptr.71 = internal global ptr @rxkad_verify_packet_2._entry.69, section ".printk_index", align 4
@rxkad_issue_challenge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[%-6.6s] ==> %s({%d})\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxkad_issue_challenge\00", [42 x i8] zeroinitializer }, align 32
@rxkad_issue_challenge._entry_ptr = internal global ptr @rxkad_issue_challenge._entry, section ".printk_index", align 4
@rxkad_issue_challenge._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.5, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[%-6.6s] ### Tx CHALLENGE %%%u\0A\00", [32 x i8] zeroinitializer }, align 32
@rxkad_issue_challenge._entry_ptr.76 = internal global ptr @rxkad_issue_challenge._entry.74, section ".printk_index", align 4
@rxkad_issue_challenge._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.73, ptr @.str.5, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_issue_challenge._entry_ptr.78 = internal global ptr @rxkad_issue_challenge._entry.77, section ".printk_index", align 4
@__tracepoint_rxrpc_tx_fail = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rxrpc_tx_packet = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_tx_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxkad_respond_to_challenge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"[%-6.6s] ==> %s({%d,%x})\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rxkad_respond_to_challenge\00", [37 x i8] zeroinitializer }, align 32
@rxkad_respond_to_challenge._entry_ptr = internal global ptr @rxkad_respond_to_challenge._entry, section ".printk_index", align 4
@rxkad_respond_to_challenge.___tp_str = internal global ptr @.str.81, section "__tracepoint_str", align 4
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"chall_no_key\00", [19 x i8] zeroinitializer }, align 32
@rxkad_respond_to_challenge.___tp_str.82 = internal global ptr @.str.83, section "__tracepoint_str", align 4
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chall_short\00", [20 x i8] zeroinitializer }, align 32
@rxkad_respond_to_challenge._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.5, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%-6.6s] ### Rx CHALLENGE %%%u { v=%u n=%u ml=%u }\0A\00", [44 x i8] zeroinitializer }, align 32
@rxkad_respond_to_challenge._entry_ptr.86 = internal global ptr @rxkad_respond_to_challenge._entry.84, section ".printk_index", align 4
@rxkad_respond_to_challenge.___tp_str.87 = internal global ptr @.str.88, section "__tracepoint_str", align 4
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chall_ver\00", [22 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rxkad_send_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.89, ptr @.str.5, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rxkad_send_response\00", [44 x i8] zeroinitializer }, align 32
@rxkad_send_response._entry_ptr = internal global ptr @rxkad_send_response._entry, section ".printk_index", align 4
@rxkad_send_response._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.5, i32 832, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[%-6.6s] ### Tx RESPONSE %%%u\0A\00", [33 x i8] zeroinitializer }, align 32
@rxkad_send_response._entry_ptr.92 = internal global ptr @rxkad_send_response._entry.90, section ".printk_index", align 4
@rxkad_send_response._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.89, ptr @.str.5, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_send_response._entry_ptr.94 = internal global ptr @rxkad_send_response._entry.93, section ".printk_index", align 4
@rxkad_verify_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.95, ptr @.str.5, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rxkad_verify_response\00", [42 x i8] zeroinitializer }, align 32
@rxkad_verify_response._entry_ptr = internal global ptr @rxkad_verify_response._entry, section ".printk_index", align 4
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SVK\00", [28 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str = internal global ptr @.str.97, section "__tracepoint_str", align 4
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_rsp_short\00", [16 x i8] zeroinitializer }, align 32
@rxkad_verify_response._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.95, ptr @.str.5, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[%-6.6s] ### Rx RESPONSE %%%u { v=%u kv=%u tl=%u }\0A\00", [44 x i8] zeroinitializer }, align 32
@rxkad_verify_response._entry_ptr.100 = internal global ptr @rxkad_verify_response._entry.98, section ".printk_index", align 4
@rxkad_verify_response.___tp_str.101 = internal global ptr @.str.102, section "__tracepoint_str", align 4
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxkad_rsp_ver\00", [18 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.103 = internal global ptr @.str.104, section "__tracepoint_str", align 4
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxkad_rsp_tktlen\00", [47 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.105 = internal global ptr @.str.106, section "__tracepoint_str", align 4
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxkad_rsp_unkkey\00", [47 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.107 = internal global ptr @.str.108, section "__tracepoint_str", align 4
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_tkt_short\00", [16 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.109 = internal global ptr @.str.110, section "__tracepoint_str", align 4
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_rsp_param\00", [16 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.111 = internal global ptr @.str.112, section "__tracepoint_str", align 4
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxkad_rsp_csum\00", [17 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.113 = internal global ptr @.str.114, section "__tracepoint_str", align 4
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxkad_rsp_callid\00", [47 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.115 = internal global ptr @.str.116, section "__tracepoint_str", align 4
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rxkad_rsp_callctr\00", [46 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.117 = internal global ptr @.str.118, section "__tracepoint_str", align 4
@.str.118 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rxkad_rsp_callst\00", [47 x i8] zeroinitializer }, align 32
@rxkad_verify_response.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.119 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.120 = internal global ptr @.str.121, section "__tracepoint_str", align 4
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxkad_rsp_seq\00", [18 x i8] zeroinitializer }, align 32
@rxkad_verify_response.___tp_str.122 = internal global ptr @.str.123, section "__tracepoint_str", align 4
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_rsp_level\00", [16 x i8] zeroinitializer }, align 32
@rxkad_verify_response._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.95, ptr @.str.5, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rxkad_verify_response._entry_ptr.125 = internal global ptr @rxkad_verify_response._entry.124, section ".printk_index", align 4
@__tracepoint_rxrpc_abort = external dso_local global %struct.tracepoint, align 4
@trace_rxrpc_abort.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rxkad_decrypt_ticket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.126, ptr @.str.5, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rxkad_decrypt_ticket\00", [43 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr = internal global ptr @rxkad_decrypt_ticket._entry, section ".printk_index", align 4
@rxkad_decrypt_ticket._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.5, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013rxrpc: Assertion failed\0A\00", [37 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.129 = internal global ptr @rxkad_decrypt_ticket._entry.127, section ".printk_index", align 4
@rxkad_decrypt_ticket._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.5, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rxrpc: Assertion failed - %lu(0x%lx) %s %lu(0x%lx) is false\0A\00", [33 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.132 = internal global ptr @rxkad_decrypt_ticket._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"==\00", [29 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.126, ptr @.str.5, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV FLAGS: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.136 = internal global ptr @rxkad_decrypt_ticket._entry.134, section ".printk_index", align 4
@rxkad_decrypt_ticket.___tp_str = internal global ptr @.str.137, section "__tracepoint_str", align 4
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_bad_ANAME\00", [16 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@rxkad_decrypt_ticket._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.126, ptr @.str.5, i32 1043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV ANAME: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.140 = internal global ptr @rxkad_decrypt_ticket._entry.138, section ".printk_index", align 4
@rxkad_decrypt_ticket.___tp_str.141 = internal global ptr @.str.142, section "__tracepoint_str", align 4
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxkad_bad_INST\00", [17 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.126, ptr @.str.5, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV INST : %s\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.145 = internal global ptr @rxkad_decrypt_ticket._entry.143, section ".printk_index", align 4
@rxkad_decrypt_ticket.___tp_str.146 = internal global ptr @.str.147, section "__tracepoint_str", align 4
@.str.147 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_bad_REALM\00", [16 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.126, ptr @.str.5, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV REALM: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.150 = internal global ptr @rxkad_decrypt_ticket._entry.148, section ".printk_index", align 4
@rxkad_decrypt_ticket.___tp_str.151 = internal global ptr @.str.152, section "__tracepoint_str", align 4
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rxkad_bad_len\00", [18 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.126, ptr @.str.5, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"[%-6.6s]     KIV ADDR : %pI4\0A\00", [34 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.155 = internal global ptr @rxkad_decrypt_ticket._entry.153, section ".printk_index", align 4
@rxkad_decrypt_ticket._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.126, ptr @.str.5, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%-6.6s]     KIV KEY  : %08x %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.158 = internal global ptr @rxkad_decrypt_ticket._entry.156, section ".printk_index", align 4
@rxkad_decrypt_ticket._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.126, ptr @.str.5, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV LIFE : %u\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.161 = internal global ptr @rxkad_decrypt_ticket._entry.159, section ".printk_index", align 4
@rxkad_decrypt_ticket._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.126, ptr @.str.5, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[%-6.6s]     KIV ISSUE: %llx [%llx]\0A\00", [59 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.164 = internal global ptr @rxkad_decrypt_ticket._entry.162, section ".printk_index", align 4
@rxkad_decrypt_ticket.___tp_str.165 = internal global ptr @.str.166, section "__tracepoint_str", align 4
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rxkad_bad_SNAME\00", [16 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.126, ptr @.str.5, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV SNAME: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.169 = internal global ptr @rxkad_decrypt_ticket._entry.167, section ".printk_index", align 4
@rxkad_decrypt_ticket.___tp_str.170 = internal global ptr @.str.142, section "__tracepoint_str", align 4
@rxkad_decrypt_ticket._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.126, ptr @.str.5, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[%-6.6s]     KIV SINST: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_ticket._entry_ptr.173 = internal global ptr @rxkad_decrypt_ticket._entry.171, section ".printk_index", align 4
@rxkad_decrypt_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.5, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"[%-6.6s] ==> %s(,,%08x%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rxkad_decrypt_response\00", [41 x i8] zeroinitializer }, align 32
@rxkad_decrypt_response._entry_ptr = internal global ptr @rxkad_decrypt_response._entry, section ".printk_index", align 4
@rxkad_ci_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.179, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @rxkad_ci_mutex, i64 52), ptr getelementptr (i8, ptr @rxkad_ci_mutex, i64 52) }, ptr @rxkad_ci_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.180, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@rxkad_decrypt_response._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.5, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%-6.6s] <== %s()\0A\00", [45 x i8] zeroinitializer }, align 32
@rxkad_decrypt_response._entry_ptr.178 = internal global ptr @rxkad_decrypt_response._entry.176, section ".printk_index", align 4
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rxkad_ci_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rxkad_ci_mutex\00", [17 x i8] zeroinitializer }, align 32
@rxkad_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.181, ptr @.str.5, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxkad_clear\00", [20 x i8] zeroinitializer }, align 32
@rxkad_clear._entry_ptr = internal global ptr @rxkad_clear._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1387, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"rxkad\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1386, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1357, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant [13 x i8] c"rxkad_ci_req\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 51, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant [9 x i8] c"rxkad_ci\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 50, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 68, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 70, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 78, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 106, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 112, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 141, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 193, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 225, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 382, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 434, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 272, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 296, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 320, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 358, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 626, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 658, i32 13 }
@___asan_gen_.306 = private unnamed_addr constant [32 x i8] c"../include/trace/events/rxrpc.h\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1355, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 108, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 454, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 457, i32 13 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 481, i32 13 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 494, i32 13 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 500, i32 13 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 505, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 531, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 534, i32 13 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 574, i32 13 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 587, i32 13 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 593, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 598, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 607, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 739, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 774, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 786, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 904, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 906, i32 11 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 916, i32 11 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 926, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 929, i32 11 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 805, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 832, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 842, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1173, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1188, i32 24 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1200, i32 11 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1209, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1212, i32 11 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1217, i32 11 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1222, i32 11 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1233, i32 11 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1248, i32 11 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1259, i32 11 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1268, i32 12 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1272, i32 12 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1276, i32 12 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1278, i32 11 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1288, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1293, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1309, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 999, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1003, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1004, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1037, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1042, i32 9 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1043, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1046, i32 9 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1047, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1050, i32 9 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1051, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1053, i32 11 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1060, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1065, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1070, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1084, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1102, i32 9 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1103, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1107, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1132, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [15 x i8] c"rxkad_ci_mutex\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1152, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 52, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.627 = private constant [21 x i8] c"../net/rxrpc/rxkad.c\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.627, i32 1341, i32 2 }
@llvm.compiler.used = appending global [224 x ptr] [ptr @rxkad_clear._entry, ptr @rxkad_clear._entry_ptr, ptr @rxkad_decrypt_response._entry, ptr @rxkad_decrypt_response._entry.176, ptr @rxkad_decrypt_response._entry_ptr, ptr @rxkad_decrypt_response._entry_ptr.178, ptr @rxkad_decrypt_ticket.___tp_str, ptr @rxkad_decrypt_ticket.___tp_str.141, ptr @rxkad_decrypt_ticket.___tp_str.146, ptr @rxkad_decrypt_ticket.___tp_str.151, ptr @rxkad_decrypt_ticket.___tp_str.165, ptr @rxkad_decrypt_ticket.___tp_str.170, ptr @rxkad_decrypt_ticket._entry, ptr @rxkad_decrypt_ticket._entry.127, ptr @rxkad_decrypt_ticket._entry.130, ptr @rxkad_decrypt_ticket._entry.134, ptr @rxkad_decrypt_ticket._entry.138, ptr @rxkad_decrypt_ticket._entry.143, ptr @rxkad_decrypt_ticket._entry.148, ptr @rxkad_decrypt_ticket._entry.153, ptr @rxkad_decrypt_ticket._entry.156, ptr @rxkad_decrypt_ticket._entry.159, ptr @rxkad_decrypt_ticket._entry.162, ptr @rxkad_decrypt_ticket._entry.167, ptr @rxkad_decrypt_ticket._entry.171, ptr @rxkad_decrypt_ticket._entry_ptr, ptr @rxkad_decrypt_ticket._entry_ptr.129, ptr @rxkad_decrypt_ticket._entry_ptr.132, ptr @rxkad_decrypt_ticket._entry_ptr.136, ptr @rxkad_decrypt_ticket._entry_ptr.140, ptr @rxkad_decrypt_ticket._entry_ptr.145, ptr @rxkad_decrypt_ticket._entry_ptr.150, ptr @rxkad_decrypt_ticket._entry_ptr.155, ptr @rxkad_decrypt_ticket._entry_ptr.158, ptr @rxkad_decrypt_ticket._entry_ptr.161, ptr @rxkad_decrypt_ticket._entry_ptr.164, ptr @rxkad_decrypt_ticket._entry_ptr.169, ptr @rxkad_decrypt_ticket._entry_ptr.173, ptr @rxkad_init_connection_security._entry, ptr @rxkad_init_connection_security._entry.11, ptr @rxkad_init_connection_security._entry.14, ptr @rxkad_init_connection_security._entry_ptr, ptr @rxkad_init_connection_security._entry_ptr.13, ptr @rxkad_init_connection_security._entry_ptr.16, ptr @rxkad_issue_challenge._entry, ptr @rxkad_issue_challenge._entry.74, ptr @rxkad_issue_challenge._entry.77, ptr @rxkad_issue_challenge._entry_ptr, ptr @rxkad_issue_challenge._entry_ptr.76, ptr @rxkad_issue_challenge._entry_ptr.78, ptr @rxkad_preparse_server_key._entry, ptr @rxkad_preparse_server_key._entry.6, ptr @rxkad_preparse_server_key._entry_ptr, ptr @rxkad_preparse_server_key._entry_ptr.8, ptr @rxkad_prime_packet_security._entry, ptr @rxkad_prime_packet_security._entry.19, ptr @rxkad_prime_packet_security._entry_ptr, ptr @rxkad_prime_packet_security._entry_ptr.20, ptr @rxkad_respond_to_challenge.___tp_str, ptr @rxkad_respond_to_challenge.___tp_str.82, ptr @rxkad_respond_to_challenge.___tp_str.87, ptr @rxkad_respond_to_challenge._entry, ptr @rxkad_respond_to_challenge._entry.84, ptr @rxkad_respond_to_challenge._entry_ptr, ptr @rxkad_respond_to_challenge._entry_ptr.86, ptr @rxkad_secure_packet._entry, ptr @rxkad_secure_packet._entry.23, ptr @rxkad_secure_packet._entry_ptr, ptr @rxkad_secure_packet._entry_ptr.25, ptr @rxkad_secure_packet_auth._entry, ptr @rxkad_secure_packet_auth._entry.27, ptr @rxkad_secure_packet_auth._entry_ptr, ptr @rxkad_secure_packet_auth._entry_ptr.28, ptr @rxkad_secure_packet_encrypt._entry, ptr @rxkad_secure_packet_encrypt._entry.30, ptr @rxkad_secure_packet_encrypt._entry_ptr, ptr @rxkad_secure_packet_encrypt._entry_ptr.31, ptr @rxkad_send_response._entry, ptr @rxkad_send_response._entry.90, ptr @rxkad_send_response._entry.93, ptr @rxkad_send_response._entry_ptr, ptr @rxkad_send_response._entry_ptr.92, ptr @rxkad_send_response._entry_ptr.94, ptr @rxkad_verify_packet.___tp_str, ptr @rxkad_verify_packet._entry, ptr @rxkad_verify_packet._entry_ptr, ptr @rxkad_verify_packet_1.___tp_str, ptr @rxkad_verify_packet_1.___tp_str.42, ptr @rxkad_verify_packet_1.___tp_str.45, ptr @rxkad_verify_packet_1.___tp_str.48, ptr @rxkad_verify_packet_1._entry, ptr @rxkad_verify_packet_1._entry.51, ptr @rxkad_verify_packet_1._entry_ptr, ptr @rxkad_verify_packet_1._entry_ptr.53, ptr @rxkad_verify_packet_2.___tp_str, ptr @rxkad_verify_packet_2.___tp_str.58, ptr @rxkad_verify_packet_2.___tp_str.61, ptr @rxkad_verify_packet_2.___tp_str.64, ptr @rxkad_verify_packet_2._entry, ptr @rxkad_verify_packet_2._entry.67, ptr @rxkad_verify_packet_2._entry.69, ptr @rxkad_verify_packet_2._entry_ptr, ptr @rxkad_verify_packet_2._entry_ptr.68, ptr @rxkad_verify_packet_2._entry_ptr.71, ptr @rxkad_verify_response.___tp_str, ptr @rxkad_verify_response.___tp_str.101, ptr @rxkad_verify_response.___tp_str.103, ptr @rxkad_verify_response.___tp_str.105, ptr @rxkad_verify_response.___tp_str.107, ptr @rxkad_verify_response.___tp_str.109, ptr @rxkad_verify_response.___tp_str.111, ptr @rxkad_verify_response.___tp_str.113, ptr @rxkad_verify_response.___tp_str.115, ptr @rxkad_verify_response.___tp_str.117, ptr @rxkad_verify_response.___tp_str.120, ptr @rxkad_verify_response.___tp_str.122, ptr @rxkad_verify_response._entry, ptr @rxkad_verify_response._entry.124, ptr @rxkad_verify_response._entry.98, ptr @rxkad_verify_response._entry_ptr, ptr @rxkad_verify_response._entry_ptr.100, ptr @rxkad_verify_response._entry_ptr.125, ptr @.str, ptr @rxkad, ptr @.str.1, ptr @rxkad_ci_req, ptr @rxkad_ci, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @rxkad_ci_mutex, ptr @.str.177, ptr @.str.179, ptr @.str.180, ptr @.str.181], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_ci_req to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_ci to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_preparse_server_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_preparse_server_key._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_init_connection_security._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_init_connection_security._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_init_connection_security._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_prime_packet_security._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_prime_packet_security._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_secure_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_secure_packet._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_secure_packet_auth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_secure_packet_auth._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_secure_packet_encrypt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_secure_packet_encrypt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_packet_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_packet_1._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_packet_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_packet_2._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_packet_2._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_issue_challenge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_issue_challenge._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_issue_challenge._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_respond_to_challenge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_respond_to_challenge._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_send_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_send_response._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_send_response._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_response._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_verify_response._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_ticket._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_ci_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_decrypt_response._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxkad_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end8.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 128
  %add.i = add i32 %2, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #15
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  %base.i.i.i12 = getelementptr inbounds %struct.crypto_skcipher, ptr %call, i32 0, i32 2
  br i1 %tobool.not.i, label %nomem_tfm, label %if.end5, !prof !334

if.end5:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base.i.i.i12, ptr %tfm1.i.i, align 32
  store ptr %call9.i.i, ptr @rxkad_ci_req, align 4
  store ptr %call, ptr @rxkad_ci, align 4
  br label %cleanup

nomem_tfm:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i.i12) #12
  br label %cleanup

cleanup:                                          ; preds = %nomem_tfm, %if.end5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end5 ], [ -12, %nomem_tfm ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxkad_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rxkad_ci, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %base.i.i.i) #12
  %1 = load ptr, ptr @rxkad_ci_req, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_preparse_server_key(ptr nocapture noundef %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %datalen = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 4
  %0 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %arrayidx = getelementptr %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2, i32 0, i32 2
  %data = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %3, align 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx, align 8
  %call = tail call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 128) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end14

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %7 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end12_crit_edge, label %do.end, !prof !335

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = ptrtoint ptr %call to i32
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %8 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 101
  %12 = ptrtoint ptr %call to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %comm, ptr noundef nonnull @.str.4, i32 noundef %12) #16
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 8
  %call16 = tail call i32 @crypto_skcipher_setkey(ptr noundef %call, ptr noundef %14, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.body19, label %if.end25

do.body19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #12, !srcloc !336
  unreachable

if.end25:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %payload, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %16 = load i32, ptr @rxrpc_debug, align 4
  %and29 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end25.cleanup_crit_edge, label %do.end40, !prof !335

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %17 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i58 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i58 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task43, align 8
  %comm44 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm44, ptr noundef nonnull @.str.4) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end25.cleanup_crit_edge, %do.end, %do.body.do.end12_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end40 ], [ 0, %if.end25.cleanup_crit_edge ], [ %.pre, %do.body.do.end12_crit_edge ], [ %12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxkad_free_preparse_server_key(ptr nocapture noundef readonly %prep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %payload = getelementptr inbounds %struct.key_preparsed_payload, ptr %prep, i32 0, i32 2
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxkad_destroy_server_key(ptr nocapture noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %2, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %2, ptr noundef %base.i.i) #12
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_init_connection_security(ptr nocapture noundef %conn, ptr nocapture noundef readonly %token) #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %iv.i = alloca %struct.rxrpc_crypt, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !335

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 8
  %key = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %key, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm, ptr noundef nonnull @.str.10, i32 noundef %6, i32 noundef %cond.i) #16
  br label %do.end7

do.end7:                                          ; preds = %key_serial.exit, %entry.do.end7_crit_edge
  %11 = ptrtoint ptr %token to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %token, align 4
  %conv = trunc i16 %12 to i8
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %13 = ptrtoint ptr %security_ix to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %security_ix, align 8
  %call8 = tail call ptr @crypto_alloc_sync_skcipher(ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0) #12
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body11, label %if.end34

do.body11:                                        ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %14 = load i32, ptr @rxrpc_debug, align 4
  %and12 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end32_crit_edge, label %do.end23, !prof !335

do.body11.do.end32_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end32

do.end23:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %15 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i88 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i88 to ptr
  %task26 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task26, align 8
  %comm27 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 101
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %comm27) #16
  br label %do.end32

do.end32:                                         ; preds = %do.end23, %do.body11.do.end32_crit_edge
  %19 = ptrtoint ptr %call8 to i32
  br label %do.body52

if.end34:                                         ; preds = %do.end7
  %20 = getelementptr inbounds %struct.rxrpc_key_token, ptr %token, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %session_key = getelementptr inbounds %struct.rxkad_key, ptr %22, i32 0, i32 6
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %call8, ptr noundef %session_key, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body39, label %if.end45

do.body39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #12, !srcloc !337
  unreachable

if.end45:                                         ; preds = %if.end34
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %security_level, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %switch = icmp ult i32 %24, 3
  br i1 %switch, label %sw.epilog, label %if.end45.do.body52_crit_edge

if.end45.do.body52_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body52

sw.epilog:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #12
  %25 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %26 = load i32, ptr @rxrpc_debug, align 4
  %and.i89 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool.not.i90, label %sw.epilog.do.end6.i_crit_edge, label %do.end.i, !prof !335

sw.epilog.do.end6.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm.i, ptr noundef nonnull @.str.18) #16
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i, %sw.epilog.do.end6.i_crit_edge
  %key.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key.i, align 8
  %tobool7.not.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i, label %do.end6.i.if.end51_crit_edge, label %if.end9.i

do.end6.i.if.end51_crit_edge:                     ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end9.i:                                        ; preds = %do.end6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3264, i32 noundef 16) #17
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.error_ci_crit_edge, label %if.end8.i.i.i

if.end9.i.error_ci_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_ci

if.end8.i.i.i:                                    ; preds = %if.end9.i
  %34 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call8, align 128
  %add.i.i = add i32 %35, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3136) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then16.i, label %if.end17.i, !prof !334

if.then16.i:                                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %error_ci

if.end17.i:                                       ; preds = %if.end8.i.i.i
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call8, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %37 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %key.i, align 8
  %39 = getelementptr inbounds %struct.key, ptr %38, i32 0, i32 17
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %42 = getelementptr inbounds %struct.rxrpc_key_token, ptr %41, i32 0, i32 3
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %session_key.i = getelementptr inbounds %struct.rxkad_key, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %session_key.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %session_key.i, align 4
  %47 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %iv.i, align 8
  %48 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %conn, align 8
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call7.i.i, align 8
  %cid.i = getelementptr inbounds %struct.anon.149, ptr %conn, i32 0, i32 1
  %51 = ptrtoint ptr %cid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cid.i, align 4
  %arrayidx23.i = getelementptr i32, ptr %call7.i.i, i32 1
  %53 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx23.i, align 4
  %arrayidx24.i = getelementptr i32, ptr %call7.i.i, i32 2
  %54 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx24.i, align 8
  %55 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %security_ix, align 8
  %conv.i = zext i8 %56 to i32
  %arrayidx25.i = getelementptr i32, ptr %call7.i.i, i32 3
  %57 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv.i, ptr %arrayidx25.i, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef nonnull %call7.i.i, i32 noundef 16) #12
  %58 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %60 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 4
  %61 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %62 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sg.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %sg.i, ptr %dst2.i.i, align 4
  %64 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16, ptr %call9.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %call27.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i) #12
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #12
  %csum_iv.i = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 16, i32 0, i32 2
  %66 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx24.i, align 8
  %68 = ptrtoint ptr %csum_iv.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %csum_iv.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %69 = load i32, ptr @rxrpc_debug, align 4
  %and29.i = and i32 %69, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end17.i.if.end51_crit_edge, label %do.end40.i, !prof !335

if.end17.i.if.end51_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

do.end40.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i78.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i78.i to ptr
  %task43.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task43.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task43.i, align 8
  %comm44.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm44.i, ptr noundef nonnull @.str.18) #16
  br label %if.end51

if.end51:                                         ; preds = %do.end40.i, %if.end17.i.if.end51_crit_edge, %do.end6.i.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  %74 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 16
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call8, ptr %74, align 8
  br label %cleanup

error_ci:                                         ; preds = %if.then16.i, %if.end9.i.error_ci_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call8, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call8, ptr noundef %base.i.i.i) #12
  br label %do.body52

do.body52:                                        ; preds = %error_ci, %if.end45.do.body52_crit_edge, %do.end32
  %ret.0 = phi i32 [ %19, %do.end32 ], [ -12, %error_ci ], [ -129, %if.end45.do.body52_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %76 = load i32, ptr @rxrpc_debug, align 4
  %and53 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup_crit_edge, label %do.end64, !prof !335

do.body52.cleanup_crit_edge:                      ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end64:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #14
  %77 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i91 = and i32 %77, -16384
  %78 = inttoptr i32 %and.i91 to ptr
  %task67 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %task67 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task67, align 8
  %comm68 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 101
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %comm68, ptr noundef nonnull @.str.10, i32 noundef %ret.0) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end64, %do.body52.cleanup_crit_edge, %if.end51
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %ret.0, %do.end64 ], [ %ret.0, %do.body52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rxkad_how_much_data(ptr nocapture noundef readonly %call, i32 noundef %remain, ptr nocapture noundef writeonly %_buf_size, ptr nocapture noundef writeonly %_data_size, ptr nocapture noundef writeonly %_offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 8
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %security_level, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.umin.i32(i32 %remain, i32 1412)
  br label %out

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %shdr.0 = phi i32 [ 8, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %sub = sub nuw nsw i32 1408, %shdr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %remain)
  %cmp2 = icmp ugt i32 %sub, %remain
  br i1 %cmp2, label %if.then, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %add = add i32 %remain, -1
  %sub3 = add i32 %add, %shdr.0
  %or = or i32 %sub3, 7
  %add4 = add i32 %or, 1
  br label %out

out:                                              ; preds = %if.then, %sw.epilog.out_crit_edge, %sw.default
  %buf_size.0 = phi i32 [ %5, %sw.default ], [ %add4, %if.then ], [ 1408, %sw.epilog.out_crit_edge ]
  %chunk.0 = phi i32 [ %5, %sw.default ], [ %sub, %if.then ], [ %sub, %sw.epilog.out_crit_edge ]
  %shdr.1 = phi i32 [ 0, %sw.default ], [ %shdr.0, %if.then ], [ %shdr.0, %sw.epilog.out_crit_edge ]
  %6 = ptrtoint ptr %_buf_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %buf_size.0, ptr %_buf_size, align 4
  %7 = ptrtoint ptr %_data_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %chunk.0, ptr %_data_size, align 4
  %8 = ptrtoint ptr %_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shdr.1, ptr %_offset, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_secure_packet(ptr noundef %call, ptr noundef %skb, i32 noundef %data_size) #0 align 64 {
entry:
  %iv.i120 = alloca %struct.rxrpc_crypt, align 8
  %sg.i121 = alloca [16 x %struct.scatterlist], align 4
  %iv.i = alloca %struct.rxrpc_crypt, align 8
  %sg.i = alloca %struct.scatterlist, align 4
  %iv = alloca %struct.rxrpc_crypt, align 8
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %1 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !335

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %6 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_id, align 4
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %conn, align 8
  %key = getelementptr inbounds %struct.rxrpc_connection, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %comm, ptr noundef nonnull @.str.22, i32 noundef %7, i32 noundef %cond.i, i32 noundef %15, i32 noundef %data_size) #16
  br label %do.end8

do.end8:                                          ; preds = %key_serial.exit, %entry.do.end8_crit_edge
  %conn9 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conn9, align 8
  %18 = getelementptr inbounds %struct.rxrpc_connection, ptr %17, i32 0, i32 16
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %key15 = getelementptr inbounds %struct.rxrpc_connection, ptr %17, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %key15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key15, align 8
  %call16 = tail call i32 @key_validate(ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %cipher_req1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %cipher_req1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cipher_req1.i, align 8
  %tobool.not.i113 = icmp eq ptr %24, null
  br i1 %tobool.not.i113, label %if.then.i, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then.i:                                        ; preds = %if.end18
  %25 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conn9, align 8
  %27 = getelementptr inbounds %struct.rxrpc_connection, ptr %26, i32 0, i32 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 128
  %add.i.i = add i32 %31, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3136) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup_crit_edge, label %rxkad_get_call_crypto.exit, !prof !334

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rxkad_get_call_crypto.exit:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %32 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %33 = ptrtoint ptr %cipher_req1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i.i, ptr %cipher_req1.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %rxkad_get_call_crypto.exit, %if.end18.if.end22_crit_edge
  %retval.0.i156 = phi ptr [ %call9.i.i.i, %rxkad_get_call_crypto.exit ], [ %24, %if.end18.if.end22_crit_edge ]
  %34 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conn9, align 8
  %csum_iv = getelementptr inbounds %struct.rxrpc_connection, ptr %35, i32 0, i32 16, i32 0, i32 2
  %36 = ptrtoint ptr %csum_iv to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %csum_iv, align 8
  %38 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %iv, align 8
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %39 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cid, align 8
  %shl = shl i32 %40, 30
  %seq27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %41 = ptrtoint ptr %seq27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seq27, align 4
  %and28 = and i32 %42, 1073741823
  %or = or i32 %and28, %shl
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %43 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call_id, align 4
  %crypto_buf = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 31
  %45 = ptrtoint ptr %crypto_buf to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %crypto_buf, align 8
  %arrayidx30 = getelementptr %struct.rxrpc_call, ptr %call, i32 0, i32 31, i32 1
  %46 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or, ptr %arrayidx30, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %crypto_buf, i32 noundef 8) #12
  %47 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %conn9, align 8
  %49 = getelementptr inbounds %struct.rxrpc_connection, ptr %48, i32 0, i32 16
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %51, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 4, i32 3
  %52 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 2
  %56 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 3
  %57 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %sg, ptr %dst2.i, align 4
  %58 = ptrtoint ptr %retval.0.i156 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %retval.0.i156, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i156, i32 0, i32 1
  %59 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %iv, ptr %iv4.i, align 4
  %call36 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %retval.0.i156) #12
  %60 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %61, i32 -128
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %63, 128
  %64 = call ptr @memset(ptr %retval.0.i156, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr %retval.0.i156) #12, !srcloc !338
  %65 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx30, align 4
  %shr = lshr i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %66)
  %cmp40 = icmp ult i32 %66, 65536
  %spec.store.select = select i1 %cmp40, i32 1, i32 %shr
  %conv = trunc i32 %spec.store.select to i16
  %67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv, ptr %67, align 4
  %69 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %conn9, align 8
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %70, i32 0, i32 1, i32 6
  %71 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %security_level, align 8
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %72, label %sw.default [
    i32 0, label %if.end22.do.body50_crit_edge
    i32 1, label %sw.bb46
    i32 2, label %sw.bb48
  ]

if.end22.do.body50_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50

sw.bb46:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #12
  %74 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %75 = load i32, ptr @rxrpc_debug, align 4
  %and.i114 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool.not.i115, label %sw.bb46.do.end7.i_crit_edge, label %do.end.i, !prof !335

sw.bb46.do.end7.i_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

do.end.i:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  %76 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %79, i32 0, i32 101
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm.i, ptr noundef nonnull @.str.26) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %sw.bb46.do.end7.i_crit_edge
  %80 = ptrtoint ptr %seq27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %seq27, align 4
  %82 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %call_id, align 4
  %xor.i = xor i32 %83, %81
  %shl.i = shl i32 %xor.i, 16
  %or.i = or i32 %shl.i, %data_size
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %84 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %or.i, ptr %85, align 1
  %sub.i = sub i32 4, %data_size
  %and11.i = and i32 %sub.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.end7.i.if.end15.i_crit_edge, label %if.then13.i

do.end7.i.if.end15.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then13.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call ptr @skb_put(ptr noundef %skb, i32 noundef %and11.i) #12
  %87 = call ptr @memset(ptr %call.i.i, i32 0, i32 %and11.i)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %do.end7.i.if.end15.i_crit_edge
  %88 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 0, ptr %iv.i, align 8
  %89 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %head.i, align 8
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %90, i32 noundef 8) #12
  %91 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %conn9, align 8
  %93 = getelementptr inbounds %struct.rxrpc_connection, ptr %92, i32 0, i32 16
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %base.i.i.i.i117 = getelementptr inbounds %struct.crypto_skcipher, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %base.i.i.i.i117, ptr %tfm1.i.i, align 16
  %97 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %complete.i, align 8
  %98 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %data2.i, align 4
  %99 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %flags4.i, align 4
  %100 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %sg.i, ptr %src1.i, align 8
  %101 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %sg.i, ptr %dst2.i, align 4
  %102 = ptrtoint ptr %retval.0.i156 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 8, ptr %retval.0.i156, align 128
  %103 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %iv.i, ptr %iv4.i, align 4
  %call18.i = call i32 @crypto_skcipher_encrypt(ptr noundef %retval.0.i156) #12
  %104 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %105, i32 -128
  %106 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add.i.i119 = add i32 %107, 128
  %108 = call ptr @memset(ptr %retval.0.i156, i32 0, i32 %add.i.i119)
  call void asm sideeffect "", "r,~{memory}"(ptr %retval.0.i156) #12, !srcloc !338
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %109 = load i32, ptr @rxrpc_debug, align 4
  %and20.i = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.rxkad_secure_packet_auth.exit_crit_edge, label %do.end31.i, !prof !335

if.end15.i.rxkad_secure_packet_auth.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_secure_packet_auth.exit

do.end31.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %110 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i1.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i1.i to ptr
  %task34.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %task34.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %task34.i, align 8
  %comm35.i = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 101
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm35.i, ptr noundef nonnull @.str.26) #16
  br label %rxkad_secure_packet_auth.exit

rxkad_secure_packet_auth.exit:                    ; preds = %do.end31.i, %if.end15.i.rxkad_secure_packet_auth.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #12
  br label %do.body50

sw.bb48:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i120) #12
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %sg.i121) #12
  %114 = call ptr @memset(ptr %sg.i121, i32 255, i32 320)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %115 = load i32, ptr @rxrpc_debug, align 4
  %and.i122 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %tobool.not.i123 = icmp eq i32 %and.i122, 0
  br i1 %tobool.not.i123, label %sw.bb48.do.end7.i136_crit_edge, label %do.end.i128, !prof !335

sw.bb48.do.end7.i136_crit_edge:                   ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i136

do.end.i128:                                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  %116 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i124 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i124 to ptr
  %task.i125 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task.i125 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task.i125, align 8
  %comm.i126 = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 101
  %call5.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm.i126, ptr noundef nonnull @.str.29) #16
  br label %do.end7.i136

do.end7.i136:                                     ; preds = %do.end.i128, %sw.bb48.do.end7.i136_crit_edge
  %120 = ptrtoint ptr %seq27 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %seq27, align 4
  %122 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %call_id, align 4
  %xor.i131 = xor i32 %123, %121
  %shl.i132 = shl i32 %xor.i131, 16
  %or.i133 = or i32 %shl.i132, %data_size
  %head.i134 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %124 = ptrtoint ptr %head.i134 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %head.i134, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 %or.i133, ptr %125, align 1
  %rxkhdr.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %125, i32 4
  %127 = ptrtoint ptr %rxkhdr.sroa.5.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 0, ptr %rxkhdr.sroa.5.0..sroa_idx.i, align 1
  %sub.i135 = sub i32 0, %data_size
  %and10.i = and i32 %sub.i135, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.end7.i136.if.end14.i_crit_edge, label %if.then12.i

do.end7.i136.if.end14.i_crit_edge:                ; preds = %do.end7.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then12.i:                                      ; preds = %do.end7.i136
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i137 = call ptr @skb_put(ptr noundef %skb, i32 noundef %and10.i) #12
  %128 = call ptr @memset(ptr %call.i.i137, i32 0, i32 %and10.i)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %do.end7.i136.if.end14.i_crit_edge
  %129 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %conn9, align 8
  %key.i = getelementptr inbounds %struct.rxrpc_connection, ptr %130, i32 0, i32 1, i32 2
  %131 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %key.i, align 8
  %133 = getelementptr inbounds %struct.key, ptr %132, i32 0, i32 17
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %133, align 4
  %136 = getelementptr inbounds %struct.rxrpc_key_token, ptr %135, i32 0, i32 3
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %session_key.i = getelementptr inbounds %struct.rxkad_key, ptr %138, i32 0, i32 6
  %139 = ptrtoint ptr %session_key.i to i32
  call void @__asan_loadN_noabort(i32 %139, i32 8)
  %140 = load i64, ptr %session_key.i, align 4
  %141 = ptrtoint ptr %iv.i120 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %iv.i120, align 8
  %142 = ptrtoint ptr %head.i134 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %head.i134, align 8
  call void @sg_init_one(ptr noundef nonnull %sg.i121, ptr noundef %143, i32 noundef 8) #12
  %144 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %conn9, align 8
  %146 = getelementptr inbounds %struct.rxrpc_connection, ptr %145, i32 0, i32 16
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 8
  %base.i.i.i.i139 = getelementptr inbounds %struct.crypto_skcipher, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %base.i.i.i.i139, ptr %tfm1.i.i, align 16
  %150 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr null, ptr %complete.i, align 8
  %151 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %data2.i, align 4
  %152 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %flags4.i, align 4
  %153 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %sg.i121, ptr %src1.i, align 8
  %154 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %sg.i121, ptr %dst2.i, align 4
  %155 = ptrtoint ptr %retval.0.i156 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 8, ptr %retval.0.i156, align 128
  %156 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %iv.i120, ptr %iv4.i, align 4
  %call22.i = call i32 @crypto_skcipher_encrypt(ptr noundef %retval.0.i156) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %157 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %160)
  %cmp.i = icmp ugt i8 %160, 16
  br i1 %cmp.i, label %if.end14.i.rxkad_secure_packet_encrypt.exit_crit_edge, label %if.end27.i

if.end14.i.rxkad_secure_packet_encrypt.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_secure_packet_encrypt.exit

if.end27.i:                                       ; preds = %if.end14.i
  %sub28.i = add i32 %data_size, -1
  %or29.i = or i32 %sub28.i, 7
  %add30.i = add i32 %or29.i, 1
  call void @sg_init_table(ptr noundef nonnull %sg.i121, i32 noundef 16) #12
  %call33.i = call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef nonnull %sg.i121, i32 noundef 8, i32 noundef %add30.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end27.i.rxkad_secure_packet_encrypt.exit_crit_edge, label %if.end43.i, !prof !334

if.end27.i.rxkad_secure_packet_encrypt.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_secure_packet_encrypt.exit

if.end43.i:                                       ; preds = %if.end27.i
  %161 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %sg.i121, ptr %src1.i, align 8
  %162 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %sg.i121, ptr %dst2.i, align 4
  %163 = ptrtoint ptr %retval.0.i156 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add30.i, ptr %retval.0.i156, align 128
  %164 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %iv.i120, ptr %iv4.i, align 4
  %call47.i = call i32 @crypto_skcipher_encrypt(ptr noundef %retval.0.i156) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %165 = load i32, ptr @rxrpc_debug, align 4
  %and49.i = and i32 %165, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end43.i.rxkad_secure_packet_encrypt.exit_crit_edge, label %do.end60.i, !prof !335

if.end43.i.rxkad_secure_packet_encrypt.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_secure_packet_encrypt.exit

do.end60.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  %166 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i93.i = and i32 %166, -16384
  %167 = inttoptr i32 %and.i93.i to ptr
  %task63.i = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %task63.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %task63.i, align 8
  %comm64.i = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 101
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm64.i, ptr noundef nonnull @.str.29) #16
  br label %rxkad_secure_packet_encrypt.exit

rxkad_secure_packet_encrypt.exit:                 ; preds = %do.end60.i, %if.end43.i.rxkad_secure_packet_encrypt.exit_crit_edge, %if.end27.i.rxkad_secure_packet_encrypt.exit_crit_edge, %if.end14.i.rxkad_secure_packet_encrypt.exit_crit_edge
  %err.0.i = phi i32 [ -90, %if.end14.i.rxkad_secure_packet_encrypt.exit_crit_edge ], [ %call33.i, %if.end27.i.rxkad_secure_packet_encrypt.exit_crit_edge ], [ 0, %do.end60.i ], [ 0, %if.end43.i.rxkad_secure_packet_encrypt.exit_crit_edge ]
  %170 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i.i147 = getelementptr i8, ptr %171, i32 -128
  %172 = ptrtoint ptr %add.ptr.i.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr.i.i.i.i147, align 128
  %add.i.i148 = add i32 %173, 128
  %174 = call ptr @memset(ptr %retval.0.i156, i32 0, i32 %add.i.i148)
  call void asm sideeffect "", "r,~{memory}"(ptr %retval.0.i156) #12, !srcloc !338
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %sg.i121) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i120) #12
  br label %do.body50

sw.default:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body50

do.body50:                                        ; preds = %sw.default, %rxkad_secure_packet_encrypt.exit, %rxkad_secure_packet_auth.exit, %if.end22.do.body50_crit_edge
  %ret.0 = phi i32 [ -1, %sw.default ], [ %err.0.i, %rxkad_secure_packet_encrypt.exit ], [ 0, %rxkad_secure_packet_auth.exit ], [ %72, %if.end22.do.body50_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %175 = load i32, ptr @rxrpc_debug, align 4
  %and51 = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.end62, !prof !335

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end62:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %176 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i149 = and i32 %176, -16384
  %177 = inttoptr i32 %and.i149 to ptr
  %task65 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %task65 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %task65, align 8
  %comm66 = getelementptr inbounds %struct.task_struct, ptr %179, i32 0, i32 101
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %comm66, ptr noundef nonnull @.str.22, i32 noundef %ret.0, i32 noundef %spec.store.select) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.body50.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ %ret.0, %do.end62 ], [ %ret.0, %do.body50.cleanup_crit_edge ], [ -12, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_verify_packet(ptr noundef %call, ptr noundef %skb, i32 noundef %offset, i32 noundef %len, i32 noundef %seq, i16 noundef zeroext %expected_cksum) #0 align 64 {
entry:
  %sechdr.i101 = alloca %struct.rxkad_level2_hdr, align 4
  %iv.i102 = alloca %struct.rxrpc_crypt, align 8
  %_sg.i = alloca [4 x %struct.scatterlist], align 4
  %sechdr.i = alloca %struct.rxkad_level1_hdr, align 4
  %iv.i = alloca %struct.rxrpc_crypt, align 8
  %sg.i = alloca [16 x %struct.scatterlist], align 4
  %iv = alloca %struct.rxrpc_crypt, align 8
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv) #12
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %iv, align 8, !annotation !339
  %1 = getelementptr inbounds [2 x i32], ptr %iv, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !339
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %3 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !335

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

do.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 48
  %9 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id, align 4
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn, align 8
  %key = getelementptr inbounds %struct.rxrpc_connection, ptr %12, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %key, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %16, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %comm, ptr noundef nonnull @.str.33, i32 noundef %10, i32 noundef %cond.i, i32 noundef %seq) #16
  br label %do.end8

do.end8:                                          ; preds = %key_serial.exit, %entry.do.end8_crit_edge
  %conn9 = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %conn9, align 8
  %19 = getelementptr inbounds %struct.rxrpc_connection, ptr %18, i32 0, i32 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %tobool10.not = icmp eq ptr %21, null
  br i1 %tobool10.not, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %cipher_req1.i = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 17
  %22 = ptrtoint ptr %cipher_req1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cipher_req1.i, align 8
  %tobool.not.i92 = icmp eq ptr %23, null
  br i1 %tobool.not.i92, label %if.end8.i.i.i, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end8.i.i.i:                                    ; preds = %if.end12
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 128
  %add.i.i = add i32 %25, 128
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3136) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.cleanup_crit_edge, label %rxkad_get_call_crypto.exit, !prof !334

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rxkad_get_call_crypto.exit:                       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %21, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %27 = ptrtoint ptr %cipher_req1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call9.i.i.i, ptr %cipher_req1.i, align 8
  br label %if.end16

if.end16:                                         ; preds = %rxkad_get_call_crypto.exit, %if.end12.if.end16_crit_edge
  %retval.0.i158 = phi ptr [ %call9.i.i.i, %rxkad_get_call_crypto.exit ], [ %23, %if.end12.if.end16_crit_edge ]
  %28 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conn9, align 8
  %csum_iv = getelementptr inbounds %struct.rxrpc_connection, ptr %29, i32 0, i32 16, i32 0, i32 2
  %30 = ptrtoint ptr %csum_iv to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %csum_iv, align 8
  %32 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %iv, align 8
  %cid = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 47
  %33 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cid, align 8
  %shl = shl i32 %34, 30
  %and20 = and i32 %seq, 1073741823
  %or = or i32 %shl, %and20
  %call_id = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 46
  %35 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call_id, align 4
  %crypto_buf = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 31
  %37 = ptrtoint ptr %crypto_buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %crypto_buf, align 8
  %arrayidx22 = getelementptr %struct.rxrpc_call, ptr %call, i32 0, i32 31, i32 1
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or, ptr %arrayidx22, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %crypto_buf, i32 noundef 8) #12
  %39 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conn9, align 8
  %41 = getelementptr inbounds %struct.rxrpc_connection, ptr %40, i32 0, i32 16
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %43, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 4, i32 3
  %44 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 4, i32 2
  %46 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 4, i32 4
  %47 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 2
  %48 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 3
  %49 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %sg, ptr %dst2.i, align 4
  %50 = ptrtoint ptr %retval.0.i158 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 8, ptr %retval.0.i158, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %retval.0.i158, i32 0, i32 1
  %51 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %iv, ptr %iv4.i, align 4
  %call28 = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %retval.0.i158) #12
  %52 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 -128
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i = add i32 %55, 128
  %56 = call ptr @memset(ptr %retval.0.i158, i32 0, i32 %add.i)
  call void asm sideeffect "", "r,~{memory}"(ptr %retval.0.i158) #12, !srcloc !338
  %57 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx22, align 4
  %shr = lshr i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %58)
  %cmp = icmp ult i32 %58, 65536
  %conv36 = select i1 %cmp, i32 1, i32 %shr
  %conv37 = zext i16 %expected_cksum to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv36, i32 %conv37)
  %cmp38.not = icmp eq i32 %conv36, %conv37
  br i1 %cmp38.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end16
  %59 = load ptr, ptr @rxkad_verify_packet.___tp_str, align 4
  %serial.i93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %60 = ptrtoint ptr %serial.i93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %serial.i93, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %61, ptr noundef %59) #12
  %seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %62 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %seq.i, align 4
  %call2.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.35, ptr noundef %call, i32 noundef %63, i32 noundef 19270410, i32 noundef -71) #12
  br i1 %call2.i, label %if.then51, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end43:                                         ; preds = %if.end16
  %64 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %conn9, align 8
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %65, i32 0, i32 1, i32 6
  %66 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %security_level, align 8
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %67, label %sw.default [
    i32 0, label %if.end43.cleanup_crit_edge
    i32 1, label %sw.bb46
    i32 2, label %sw.bb48
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb46:                                          ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sechdr.i) #12
  %69 = ptrtoint ptr %sechdr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %sechdr.i, align 4, !annotation !339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #12
  %70 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %iv.i, align 8, !annotation !339
  %71 = getelementptr inbounds [2 x i32], ptr %iv.i, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %71, align 4, !annotation !339
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %sg.i) #12
  %73 = call ptr @memset(ptr %sg.i, i32 255, i32 320)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %74 = load i32, ptr @rxrpc_debug, align 4
  %and.i94 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94)
  %tobool.not.i95 = icmp eq i32 %and.i94, 0
  br i1 %tobool.not.i95, label %sw.bb46.do.end7.i_crit_edge, label %do.end.i, !prof !335

sw.bb46.do.end7.i_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

do.end.i:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #14
  %75 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 101
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm.i, ptr noundef nonnull @.str.39) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %sw.bb46.do.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.i = icmp ult i32 %len, 8
  br i1 %cmp.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %do.end7.i
  %79 = load ptr, ptr @rxkad_verify_packet_1.___tp_str, align 4
  %serial.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %80 = ptrtoint ptr %serial.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %serial.i.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %81, ptr noundef %79) #12
  %seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %82 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seq.i.i, align 4
  %call2.i.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.41, ptr noundef %call, i32 noundef %83, i32 noundef 19270410, i32 noundef -71) #12
  br i1 %call2.i.i, label %if.then8.i.if.then81.i_crit_edge, label %if.then8.i.rxkad_verify_packet_1.exit_crit_edge

if.then8.i.rxkad_verify_packet_1.exit_crit_edge:  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_1.exit

if.then8.i.if.then81.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81.i

if.end11.i:                                       ; preds = %do.end7.i
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 16) #12
  %call14.i = call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef nonnull %sg.i, i32 noundef %offset, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end11.i.rxkad_verify_packet_1.exit_crit_edge, label %if.end23.i, !prof !334

if.end11.i.rxkad_verify_packet_1.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_1.exit

if.end23.i:                                       ; preds = %if.end11.i
  %84 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %iv.i, align 8
  %85 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %conn9, align 8
  %87 = getelementptr inbounds %struct.rxrpc_connection, ptr %86, i32 0, i32 16
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %base.i.i.i.i97 = getelementptr inbounds %struct.crypto_skcipher, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %base.i.i.i.i97, ptr %tfm1.i.i, align 16
  %91 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %complete.i, align 8
  %92 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %data2.i, align 4
  %93 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %flags4.i, align 4
  %94 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %sg.i, ptr %src1.i, align 8
  %95 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %sg.i, ptr %dst2.i, align 4
  %96 = ptrtoint ptr %retval.0.i158 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 8, ptr %retval.0.i158, align 128
  %97 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %iv.i, ptr %iv4.i, align 4
  %call27.i = call i32 @crypto_skcipher_decrypt(ptr noundef %retval.0.i158) #12
  %98 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i.i = getelementptr i8, ptr %99, i32 -128
  %100 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %add.i.i99 = add i32 %101, 128
  %102 = call ptr @memset(ptr %retval.0.i158, i32 0, i32 %add.i.i99)
  call void asm sideeffect "", "r,~{memory}"(ptr %retval.0.i158) #12, !srcloc !338
  %call28.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %offset, ptr noundef nonnull %sechdr.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then30.i, label %if.end34.i

if.then30.i:                                      ; preds = %if.end23.i
  %103 = load ptr, ptr @rxkad_verify_packet_1.___tp_str.42, align 4
  %serial.i114.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %104 = ptrtoint ptr %serial.i114.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %serial.i114.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %105, ptr noundef %103) #12
  %seq.i115.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %106 = ptrtoint ptr %seq.i115.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %seq.i115.i, align 4
  %call2.i116.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.44, ptr noundef %call, i32 noundef %107, i32 noundef 19270411, i32 noundef -71) #12
  br i1 %call2.i116.i, label %if.then30.i.if.then81.i_crit_edge, label %if.then30.i.rxkad_verify_packet_1.exit_crit_edge

if.then30.i.rxkad_verify_packet_1.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_1.exit

if.then30.i.if.then81.i_crit_edge:                ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81.i

if.end34.i:                                       ; preds = %if.end23.i
  %108 = ptrtoint ptr %sechdr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sechdr.i, align 4
  %and36.i = and i32 %109, 65535
  %shr.i = lshr i32 %109, 16
  %110 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call_id, align 4
  %xor.i = xor i32 %111, %seq
  %xor.masked.i = and i32 %xor.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %xor.masked.i)
  %cmp44.not.i = icmp eq i32 %shr.i, %xor.masked.i
  br i1 %cmp44.not.i, label %if.end50.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end34.i
  %112 = load ptr, ptr @rxkad_verify_packet_1.___tp_str.45, align 4
  %serial.i117.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %113 = ptrtoint ptr %serial.i117.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %serial.i117.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %114, ptr noundef %112) #12
  %seq.i118.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %115 = ptrtoint ptr %seq.i118.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %seq.i118.i, align 4
  %call2.i119.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.47, ptr noundef %call, i32 noundef %116, i32 noundef 19270410, i32 noundef -71) #12
  br i1 %call2.i119.i, label %if.then46.i.if.then81.i_crit_edge, label %if.then46.i.rxkad_verify_packet_1.exit_crit_edge

if.then46.i.rxkad_verify_packet_1.exit_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_1.exit

if.then46.i.if.then81.i_crit_edge:                ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81.i

if.end50.i:                                       ; preds = %if.end34.i
  %sub.i = add i32 %len, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and36.i, i32 %sub.i)
  %cmp51.i = icmp ugt i32 %and36.i, %sub.i
  br i1 %cmp51.i, label %protocol_error.i, label %do.body58.i

do.body58.i:                                      ; preds = %if.end50.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %117 = load i32, ptr @rxrpc_debug, align 4
  %and59.i = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body58.i.rxkad_verify_packet_1.exit_crit_edge, label %do.end70.i, !prof !335

do.body58.i.rxkad_verify_packet_1.exit_crit_edge: ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_1.exit

do.end70.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  %118 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i123.i = and i32 %118, -16384
  %119 = inttoptr i32 %and.i123.i to ptr
  %task73.i = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %task73.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %task73.i, align 8
  %comm74.i = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 101
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %comm74.i, ptr noundef nonnull @.str.39, i32 noundef %and36.i) #16
  br label %rxkad_verify_packet_1.exit

protocol_error.i:                                 ; preds = %if.end50.i
  %122 = load ptr, ptr @rxkad_verify_packet_1.___tp_str.48, align 4
  %serial.i120.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %123 = ptrtoint ptr %serial.i120.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %serial.i120.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %124, ptr noundef %122) #12
  %seq.i121.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %125 = ptrtoint ptr %seq.i121.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %seq.i121.i, align 4
  %call2.i122.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.50, ptr noundef %call, i32 noundef %126, i32 noundef 19270411, i32 noundef -71) #12
  br i1 %call2.i122.i, label %protocol_error.i.if.then81.i_crit_edge, label %protocol_error.i.rxkad_verify_packet_1.exit_crit_edge

protocol_error.i.rxkad_verify_packet_1.exit_crit_edge: ; preds = %protocol_error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_1.exit

protocol_error.i.if.then81.i_crit_edge:           ; preds = %protocol_error.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then81.i

if.then81.i:                                      ; preds = %protocol_error.i.if.then81.i_crit_edge, %if.then46.i.if.then81.i_crit_edge, %if.then30.i.if.then81.i_crit_edge, %if.then8.i.if.then81.i_crit_edge
  %call82.i = call i32 @rxrpc_send_abort_packet(ptr noundef %call) #12
  br label %rxkad_verify_packet_1.exit

rxkad_verify_packet_1.exit:                       ; preds = %if.then81.i, %protocol_error.i.rxkad_verify_packet_1.exit_crit_edge, %do.end70.i, %do.body58.i.rxkad_verify_packet_1.exit_crit_edge, %if.then46.i.rxkad_verify_packet_1.exit_crit_edge, %if.then30.i.rxkad_verify_packet_1.exit_crit_edge, %if.end11.i.rxkad_verify_packet_1.exit_crit_edge, %if.then8.i.rxkad_verify_packet_1.exit_crit_edge
  %retval.0.i100 = phi i32 [ %call14.i, %if.end11.i.rxkad_verify_packet_1.exit_crit_edge ], [ 0, %do.end70.i ], [ 0, %do.body58.i.rxkad_verify_packet_1.exit_crit_edge ], [ -71, %if.then81.i ], [ -71, %protocol_error.i.rxkad_verify_packet_1.exit_crit_edge ], [ -71, %if.then8.i.rxkad_verify_packet_1.exit_crit_edge ], [ -71, %if.then30.i.rxkad_verify_packet_1.exit_crit_edge ], [ -71, %if.then46.i.rxkad_verify_packet_1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %sg.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sechdr.i) #12
  br label %cleanup

sw.bb48:                                          ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sechdr.i101) #12
  %127 = ptrtoint ptr %sechdr.i101 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %sechdr.i101, align 4, !annotation !339
  %128 = getelementptr inbounds %struct.rxkad_level2_hdr, ptr %sechdr.i101, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 -1, ptr %128, align 4, !annotation !339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i102) #12
  %130 = ptrtoint ptr %iv.i102 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %iv.i102, align 8, !annotation !339
  %131 = getelementptr inbounds [2 x i32], ptr %iv.i102, i32 0, i32 1
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %131, align 4, !annotation !339
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %_sg.i) #12
  %133 = call ptr @memset(ptr %_sg.i, i32 255, i32 80)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %134 = load i32, ptr @rxrpc_debug, align 4
  %and.i103 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %sw.bb48.do.end8.i_crit_edge, label %do.end.i108, !prof !335

sw.bb48.do.end8.i_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

do.end.i108:                                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #14
  %135 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i105 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i105 to ptr
  %task.i106 = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i106 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i106, align 8
  %comm.i107 = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 101
  %len5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %139 = ptrtoint ptr %len5.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %len5.i, align 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %comm.i107, ptr noundef nonnull @.str.55, i32 noundef %140) #16
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i108, %sw.bb48.do.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp.i109 = icmp ult i32 %len, 8
  br i1 %cmp.i109, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %do.end8.i
  %141 = load ptr, ptr @rxkad_verify_packet_2.___tp_str, align 4
  %serial.i.i110 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %142 = ptrtoint ptr %serial.i.i110 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %serial.i.i110, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %143, ptr noundef %141) #12
  %seq.i.i111 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %144 = ptrtoint ptr %seq.i.i111 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %seq.i.i111, align 4
  %call2.i.i112 = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.57, ptr noundef %call, i32 noundef %145, i32 noundef 19270410, i32 noundef -71) #12
  br i1 %call2.i.i112, label %if.then9.i.if.then103.i_crit_edge, label %if.then9.i.rxkad_verify_packet_2.exit_crit_edge

if.then9.i.rxkad_verify_packet_2.exit_crit_edge:  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

if.then9.i.if.then103.i_crit_edge:                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.i

if.end12.i:                                       ; preds = %do.end8.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %146 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %149)
  %cmp15.i113 = icmp ult i8 %149, 5
  br i1 %cmp15.i113, label %if.end12.i.if.end22.i_crit_edge, label %if.else.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end12.i
  %conv.i = zext i8 %149 to i32
  %150 = mul nuw nsw i32 %conv.i, 20
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %150, i32 noundef 3072) #15
  %tobool19.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool19.not.i, label %do.body106.i, label %if.else.i.if.end22.i_crit_edge

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i.if.end22.i_crit_edge, %if.end12.i.if.end22.i_crit_edge
  %nsg.0.i = phi i32 [ %conv.i, %if.else.i.if.end22.i_crit_edge ], [ 4, %if.end12.i.if.end22.i_crit_edge ]
  %sg.0.i = phi ptr [ %call8.i.i, %if.else.i.if.end22.i_crit_edge ], [ %_sg.i, %if.end12.i.if.end22.i_crit_edge ]
  call void @sg_init_table(ptr noundef nonnull %sg.0.i, i32 noundef %nsg.0.i) #12
  %call23.i = call i32 @skb_to_sgvec(ptr noundef %skb, ptr noundef nonnull %sg.0.i, i32 noundef %offset, i32 noundef %len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.then32.i, label %if.end38.i, !prof !334

if.then32.i:                                      ; preds = %if.end22.i
  %cmp34.not.i = icmp eq ptr %sg.0.i, %_sg.i
  br i1 %cmp34.not.i, label %if.then32.i.rxkad_verify_packet_2.exit_crit_edge, label %if.then36.i

if.then32.i.rxkad_verify_packet_2.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

if.then36.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %sg.0.i) #12
  br label %rxkad_verify_packet_2.exit

if.end38.i:                                       ; preds = %if.end22.i
  %151 = ptrtoint ptr %conn9 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %conn9, align 8
  %key.i = getelementptr inbounds %struct.rxrpc_connection, ptr %152, i32 0, i32 1, i32 2
  %153 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %key.i, align 8
  %155 = getelementptr inbounds %struct.key, ptr %154, i32 0, i32 17
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %158 = getelementptr inbounds %struct.rxrpc_key_token, ptr %157, i32 0, i32 3
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 4
  %session_key.i = getelementptr inbounds %struct.rxkad_key, ptr %160, i32 0, i32 6
  %161 = ptrtoint ptr %session_key.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 8)
  %162 = load i64, ptr %session_key.i, align 4
  %163 = ptrtoint ptr %iv.i102 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %iv.i102, align 8
  %164 = getelementptr inbounds %struct.rxrpc_connection, ptr %152, i32 0, i32 16
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 8
  %base.i.i.i.i134 = getelementptr inbounds %struct.crypto_skcipher, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %base.i.i.i.i134, ptr %tfm1.i.i, align 16
  %168 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %complete.i, align 8
  %169 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %data2.i, align 4
  %170 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %flags4.i, align 4
  %171 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %sg.0.i, ptr %src1.i, align 8
  %172 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %sg.0.i, ptr %dst2.i, align 4
  %173 = ptrtoint ptr %retval.0.i158 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %len, ptr %retval.0.i158, align 128
  %174 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %iv.i102, ptr %iv4.i, align 4
  %call42.i = call i32 @crypto_skcipher_decrypt(ptr noundef %retval.0.i158) #12
  %175 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i.i142 = getelementptr i8, ptr %176, i32 -128
  %177 = ptrtoint ptr %add.ptr.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr.i.i.i.i142, align 128
  %add.i.i143 = add i32 %178, 128
  %179 = call ptr @memset(ptr %retval.0.i158, i32 0, i32 %add.i.i143)
  call void asm sideeffect "", "r,~{memory}"(ptr %retval.0.i158) #12, !srcloc !338
  %cmp44.not.i144 = icmp eq ptr %sg.0.i, %_sg.i
  br i1 %cmp44.not.i144, label %if.end38.i.if.end47.i_crit_edge, label %if.then46.i145

if.end38.i.if.end47.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47.i

if.then46.i145:                                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %sg.0.i) #12
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then46.i145, %if.end38.i.if.end47.i_crit_edge
  %call48.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %offset, ptr noundef nonnull %sechdr.i101, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then51.i, label %if.end55.i

if.then51.i:                                      ; preds = %if.end47.i
  %180 = load ptr, ptr @rxkad_verify_packet_2.___tp_str.58, align 4
  %serial.i176.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %181 = ptrtoint ptr %serial.i176.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %serial.i176.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %182, ptr noundef %180) #12
  %seq.i177.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %183 = ptrtoint ptr %seq.i177.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %seq.i177.i, align 4
  %call2.i178.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.60, ptr noundef %call, i32 noundef %184, i32 noundef 19270411, i32 noundef -71) #12
  br i1 %call2.i178.i, label %if.then51.i.if.then103.i_crit_edge, label %if.then51.i.rxkad_verify_packet_2.exit_crit_edge

if.then51.i.rxkad_verify_packet_2.exit_crit_edge: ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

if.then51.i.if.then103.i_crit_edge:               ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.i

if.end55.i:                                       ; preds = %if.end47.i
  %185 = ptrtoint ptr %sechdr.i101 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sechdr.i101, align 4
  %and57.i = and i32 %186, 65535
  %shr.i146 = lshr i32 %186, 16
  %187 = ptrtoint ptr %call_id to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %call_id, align 4
  %xor.i148 = xor i32 %188, %seq
  %xor.masked.i149 = and i32 %xor.i148, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i146, i32 %xor.masked.i149)
  %cmp66.not.i = icmp eq i32 %shr.i146, %xor.masked.i149
  br i1 %cmp66.not.i, label %if.end72.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end55.i
  %189 = load ptr, ptr @rxkad_verify_packet_2.___tp_str.61, align 4
  %serial.i179.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %190 = ptrtoint ptr %serial.i179.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %serial.i179.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %191, ptr noundef %189) #12
  %seq.i180.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %192 = ptrtoint ptr %seq.i180.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %seq.i180.i, align 4
  %call2.i181.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.63, ptr noundef %call, i32 noundef %193, i32 noundef 19270410, i32 noundef -71) #12
  br i1 %call2.i181.i, label %if.then68.i.if.then103.i_crit_edge, label %if.then68.i.rxkad_verify_packet_2.exit_crit_edge

if.then68.i.rxkad_verify_packet_2.exit_crit_edge: ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

if.then68.i.if.then103.i_crit_edge:               ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.i

if.end72.i:                                       ; preds = %if.end55.i
  %sub.i150 = add i32 %len, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and57.i, i32 %sub.i150)
  %cmp73.i = icmp ugt i32 %and57.i, %sub.i150
  br i1 %cmp73.i, label %protocol_error.i151, label %do.body80.i

do.body80.i:                                      ; preds = %if.end72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %194 = load i32, ptr @rxrpc_debug, align 4
  %and81.i = and i32 %194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %do.body80.i.rxkad_verify_packet_2.exit_crit_edge, label %do.end92.i, !prof !335

do.body80.i.rxkad_verify_packet_2.exit_crit_edge: ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

do.end92.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #14
  %195 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i185.i = and i32 %195, -16384
  %196 = inttoptr i32 %and.i185.i to ptr
  %task95.i = getelementptr inbounds %struct.thread_info, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %task95.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %task95.i, align 8
  %comm96.i = getelementptr inbounds %struct.task_struct, ptr %198, i32 0, i32 101
  %call98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %comm96.i, ptr noundef nonnull @.str.55, i32 noundef %and57.i) #16
  br label %rxkad_verify_packet_2.exit

protocol_error.i151:                              ; preds = %if.end72.i
  %199 = load ptr, ptr @rxkad_verify_packet_2.___tp_str.64, align 4
  %serial.i182.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %200 = ptrtoint ptr %serial.i182.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %serial.i182.i, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %201, ptr noundef %199) #12
  %seq.i183.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %202 = ptrtoint ptr %seq.i183.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %seq.i183.i, align 4
  %call2.i184.i = call zeroext i1 @rxrpc_abort_call(ptr noundef nonnull @.str.66, ptr noundef %call, i32 noundef %203, i32 noundef 19270411, i32 noundef -71) #12
  br i1 %call2.i184.i, label %protocol_error.i151.if.then103.i_crit_edge, label %protocol_error.i151.rxkad_verify_packet_2.exit_crit_edge

protocol_error.i151.rxkad_verify_packet_2.exit_crit_edge: ; preds = %protocol_error.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

protocol_error.i151.if.then103.i_crit_edge:       ; preds = %protocol_error.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103.i

if.then103.i:                                     ; preds = %protocol_error.i151.if.then103.i_crit_edge, %if.then68.i.if.then103.i_crit_edge, %if.then51.i.if.then103.i_crit_edge, %if.then9.i.if.then103.i_crit_edge
  %call104.i = call i32 @rxrpc_send_abort_packet(ptr noundef %call) #12
  br label %rxkad_verify_packet_2.exit

do.body106.i:                                     ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %204 = load i32, ptr @rxrpc_debug, align 4
  %and107.i = and i32 %204, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107.i)
  %tobool108.not.i = icmp eq i32 %and107.i, 0
  br i1 %tobool108.not.i, label %do.body106.i.rxkad_verify_packet_2.exit_crit_edge, label %do.end118.i, !prof !335

do.body106.i.rxkad_verify_packet_2.exit_crit_edge: ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rxkad_verify_packet_2.exit

do.end118.i:                                      ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #14
  %205 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i186.i = and i32 %205, -16384
  %206 = inttoptr i32 %and.i186.i to ptr
  %task121.i = getelementptr inbounds %struct.thread_info, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %task121.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %task121.i, align 8
  %comm122.i = getelementptr inbounds %struct.task_struct, ptr %208, i32 0, i32 101
  %call124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %comm122.i, ptr noundef nonnull @.str.55) #16
  br label %rxkad_verify_packet_2.exit

rxkad_verify_packet_2.exit:                       ; preds = %do.end118.i, %do.body106.i.rxkad_verify_packet_2.exit_crit_edge, %if.then103.i, %protocol_error.i151.rxkad_verify_packet_2.exit_crit_edge, %do.end92.i, %do.body80.i.rxkad_verify_packet_2.exit_crit_edge, %if.then68.i.rxkad_verify_packet_2.exit_crit_edge, %if.then51.i.rxkad_verify_packet_2.exit_crit_edge, %if.then36.i, %if.then32.i.rxkad_verify_packet_2.exit_crit_edge, %if.then9.i.rxkad_verify_packet_2.exit_crit_edge
  %retval.0.i152 = phi i32 [ %call23.i, %if.then36.i ], [ %call23.i, %if.then32.i.rxkad_verify_packet_2.exit_crit_edge ], [ 0, %do.end92.i ], [ 0, %do.body80.i.rxkad_verify_packet_2.exit_crit_edge ], [ -71, %if.then103.i ], [ -71, %protocol_error.i151.rxkad_verify_packet_2.exit_crit_edge ], [ -12, %do.end118.i ], [ -12, %do.body106.i.rxkad_verify_packet_2.exit_crit_edge ], [ -71, %if.then9.i.rxkad_verify_packet_2.exit_crit_edge ], [ -71, %if.then51.i.rxkad_verify_packet_2.exit_crit_edge ], [ -71, %if.then68.i.rxkad_verify_packet_2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %_sg.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i102) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sechdr.i101) #12
  br label %cleanup

sw.default:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then51:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = call i32 @rxrpc_send_abort_packet(ptr noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %sw.default, %rxkad_verify_packet_2.exit, %rxkad_verify_packet_1.exit, %if.end43.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -55, %sw.default ], [ %retval.0.i152, %rxkad_verify_packet_2.exit ], [ %retval.0.i100, %rxkad_verify_packet_1.exit ], [ 0, %do.end8.cleanup_crit_edge ], [ %67, %if.end43.cleanup_crit_edge ], [ -71, %if.then51 ], [ -71, %if.then40.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxkad_free_call_crypto(ptr nocapture noundef %call) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher_req = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %cipher_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cipher_req, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %cipher_req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cipher_req, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxkad_locate_data(ptr nocapture noundef readonly %call, ptr noundef %skb, ptr nocapture noundef %_offset, ptr nocapture noundef writeonly %_len) #0 align 64 {
entry:
  %sechdr.i7 = alloca %struct.rxkad_level2_hdr, align 4
  %sechdr.i = alloca %struct.rxkad_level1_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conn = getelementptr inbounds %struct.rxrpc_call, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn, align 8
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %security_level, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %3, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sechdr.i) #12
  %5 = ptrtoint ptr %sechdr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %sechdr.i, align 4, !annotation !339
  %6 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_offset, align 4
  %call1.i = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %7, ptr noundef nonnull %sechdr.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.i, label %rxkad_locate_data_1.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 689, 0\0A.popsection", ""() #12, !srcloc !340
  unreachable

rxkad_locate_data_1.exit:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_offset, align 4
  %add.i = add i32 %9, 4
  store i32 %add.i, ptr %_offset, align 4
  %10 = ptrtoint ptr %sechdr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sechdr.i, align 4
  %and.i = and i32 %11, 65535
  %12 = ptrtoint ptr %_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %_len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sechdr.i) #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sechdr.i7) #12
  %13 = ptrtoint ptr %sechdr.i7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %sechdr.i7, align 4, !annotation !339
  %14 = getelementptr inbounds %struct.rxkad_level2_hdr, ptr %sechdr.i7, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !339
  %16 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_offset, align 4
  %call1.i8 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %17, ptr noundef nonnull %sechdr.i7, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %cmp.i9 = icmp slt i32 %call1.i8, 0
  br i1 %cmp.i9, label %do.body.i10, label %rxkad_locate_data_2.exit

do.body.i10:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 703, 0\0A.popsection", ""() #12, !srcloc !341
  unreachable

rxkad_locate_data_2.exit:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_offset, align 4
  %add.i11 = add i32 %19, 8
  store i32 %add.i11, ptr %_offset, align 4
  %20 = ptrtoint ptr %sechdr.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sechdr.i7, align 4
  %and.i12 = and i32 %21, 65535
  %22 = ptrtoint ptr %_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i12, ptr %_len, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sechdr.i7) #12
  br label %return

return:                                           ; preds = %rxkad_locate_data_2.exit, %rxkad_locate_data_1.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_issue_challenge(ptr noundef %conn) #0 align 64 {
entry:
  %challenge = alloca %struct.rxkad_challenge, align 4
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %challenge) #12
  %0 = getelementptr inbounds %struct.rxkad_challenge, ptr %challenge, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rxkad_challenge, ptr %challenge, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rxkad_challenge, ptr %challenge, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #12
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 2
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 4
  %7 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %8 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %9 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 7
  %10 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 8
  %11 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 9
  %12 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 10
  %13 = getelementptr inbounds i8, ptr %whdr, i32 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #12
  %15 = getelementptr inbounds i8, ptr %msg, i32 8
  %16 = call ptr @memset(ptr %15, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #12
  %17 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %18 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %19 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %20 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !335

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %25 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %debug_id, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %comm, ptr noundef nonnull @.str.73, i32 noundef %26) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %nonce = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 16, i32 0, i32 3
  tail call void @get_random_bytes(ptr noundef %nonce, i32 noundef 4) #12
  %27 = ptrtoint ptr %challenge to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %challenge, align 4
  %28 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nonce, align 8
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %0, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %1, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %2, align 4
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %peer, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %34, i32 0, i32 16, i32 4
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %34, i32 0, i32 16, i32 3
  %36 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %37 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %38 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %msg_namelen, align 4
  %39 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %39, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %41 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %42 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %msg_flags, align 4
  %43 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %conn, align 8
  %45 = ptrtoint ptr %whdr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %whdr, align 4
  %cid = getelementptr inbounds %struct.anon.149, ptr %conn, i32 0, i32 1
  %46 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cid, align 4
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %3, align 4
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %4, align 4
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %5, align 4
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 6, ptr %7, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %52 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %out_clientflag, align 1
  %54 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %8, align 1
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %9, align 2
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %56 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %security_ix, align 8
  %58 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %10, align 1
  %59 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %11, align 4
  %service_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 26
  %60 = ptrtoint ptr %service_id to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %service_id, align 4
  %conv15 = trunc i32 %61 to i16
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv15, ptr %12, align 2
  %63 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %whdr, ptr %iov, align 4
  %64 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 28, ptr %17, align 4
  %65 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %challenge, ptr %18, align 4
  %66 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 16, ptr %19, align 4
  %serial25 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 24
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %serial25, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !342
  call void @llvm.prefetch.p0(ptr %serial25, i32 1, i32 3, i32 1) #12
  %67 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial25, ptr %serial25, i32 1, ptr elementtype(i32) %serial25) #12, !srcloc !343
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %67, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !344
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %asmresult.i.i.i.i, ptr %6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %69 = load i32, ptr @rxrpc_debug, align 4
  %and29 = and i32 %69, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.end6.do.end49_crit_edge, label %do.end40, !prof !335

do.end6.do.end49_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49

do.end40:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %70 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i106 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i106 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task43, align 8
  %comm44 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 101
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %comm44, i32 noundef %asmresult.i.i.i.i) #16
  br label %do.end49

do.end49:                                         ; preds = %do.end40, %do.end6.do.end49_crit_edge
  %74 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %socket, align 4
  %call52 = call i32 @kernel_sendmsg(ptr noundef %77, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 2, i32 noundef 44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp = icmp slt i32 %call52, 0
  br i1 %cmp, label %if.then54, label %if.end56

if.then54:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  %debug_id55 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %78 = ptrtoint ptr %debug_id55 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debug_id55, align 8
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %79, i32 noundef %asmresult.i.i.i.i, i32 noundef %call52, i32 noundef 6)
  br label %cleanup

if.end56:                                         ; preds = %do.end49
  %call57 = call i64 @ktime_get_seconds() #12
  %80 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %peer, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %call57, ptr %last_tx_at, align 8
  %debug_id60 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %83 = ptrtoint ptr %debug_id60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %debug_id60, align 8
  call fastcc void @trace_rxrpc_tx_packet(i32 noundef %84, ptr noundef nonnull %whdr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %85 = load i32, ptr @rxrpc_debug, align 4
  %and62 = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end56.cleanup_crit_edge, label %do.end73, !prof !335

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end73:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %86 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i107 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i107 to ptr
  %task76 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %task76 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task76, align 8
  %comm77 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 101
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm77, ptr noundef nonnull @.str.73) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %if.end56.cleanup_crit_edge, %if.then54
  %retval.0 = phi i32 [ -11, %if.then54 ], [ 0, %do.end73 ], [ 0, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %challenge) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_respond_to_challenge(ptr noundef %conn, ptr noundef %skb, ptr nocapture noundef writeonly %_abort_code) #0 align 64 {
entry:
  %iv.i = alloca %struct.rxrpc_crypt, align 8
  %sg.i = alloca [1 x %struct.scatterlist], align 4
  %challenge = alloca %struct.rxkad_challenge, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %challenge) #12
  %0 = getelementptr inbounds %struct.rxkad_challenge, ptr %challenge, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rxkad_challenge, ptr %challenge, i32 0, i32 2
  %2 = call ptr @memset(ptr %challenge, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %3 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !335

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %8 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %debug_id, align 8
  %key = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %key, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %13, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %comm, ptr noundef nonnull @.str.80, i32 noundef %9, i32 noundef %cond.i) #16
  br label %do.end7

do.end7:                                          ; preds = %key_serial.exit, %entry.do.end7_crit_edge
  %14 = load ptr, ptr @rxkad_respond_to_challenge.___tp_str, align 4
  %key10 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %key10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key10, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %do.end7.protocol_error_crit_edge, label %if.end13

do.end7.protocol_error_crit_edge:                 ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end13:                                         ; preds = %do.end7
  %call16 = tail call i32 @key_validate(ptr noundef nonnull %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end13.other_error_crit_edge, label %if.end18

if.end13.other_error_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_error

if.end18:                                         ; preds = %if.end13
  %17 = load ptr, ptr @rxkad_respond_to_challenge.___tp_str.82, align 4
  %call20 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 28, ptr noundef nonnull %challenge, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.protocol_error_crit_edge, label %if.end23

if.end18.protocol_error_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end23:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %challenge to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %challenge, align 4
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %0, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %24 = load i32, ptr @rxrpc_debug, align 4
  %and28 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end23.do.end48_crit_edge, label %do.end39, !prof !335

if.end23.do.end48_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

do.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %25 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i158 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i158 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task42, align 8
  %comm43 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 101
  %serial = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %29 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %serial, align 4
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %comm43, i32 noundef %30, i32 noundef %19, i32 noundef %21, i32 noundef %23) #16
  br label %do.end48

do.end48:                                         ; preds = %do.end39, %if.end23.do.end48_crit_edge
  %31 = load ptr, ptr @rxkad_respond_to_challenge.___tp_str.87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp50.not = icmp eq i32 %19, 2
  br i1 %cmp50.not, label %if.end52, label %do.end48.protocol_error_crit_edge

do.end48.protocol_error_crit_edge:                ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end52:                                         ; preds = %do.end48
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 6
  %32 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %security_level, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %23)
  %cmp54 = icmp ult i32 %33, %23
  br i1 %cmp54, label %if.end52.other_error_crit_edge, label %if.end56

if.end52.other_error_crit_edge:                   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_error

if.end56:                                         ; preds = %if.end52
  %34 = ptrtoint ptr %key10 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %key10, align 8
  %36 = getelementptr inbounds %struct.key, ptr %35, i32 0, i32 17
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3392, i32 noundef 56) #17
  %tobool60.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool60.not, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %call7.i.i, align 8
  %41 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %conn, align 8
  %encrypted = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %encrypted to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %encrypted, align 8
  %cid = getelementptr inbounds %struct.anon.149, ptr %conn, i32 0, i32 1
  %44 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cid, align 4
  %cid67 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %cid67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %cid67, align 4
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %47 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %security_ix, align 8
  %conv = zext i8 %48 to i32
  %securityIndex = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %securityIndex to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %securityIndex, align 4
  %add = add i32 %21, 1
  %inc_nonce = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 5
  %50 = ptrtoint ptr %inc_nonce to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add, ptr %inc_nonce, align 8
  %51 = ptrtoint ptr %security_level to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %security_level, align 8
  %level = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 6
  %53 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %level, align 4
  %54 = getelementptr inbounds %struct.rxrpc_key_token, ptr %38, i32 0, i32 3
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %kvno = getelementptr inbounds %struct.rxkad_key, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %kvno to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %kvno, align 4
  %kvno73 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %kvno73 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %kvno73, align 8
  %60 = load ptr, ptr %54, align 4
  %ticket_len = getelementptr inbounds %struct.rxkad_key, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %ticket_len to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ticket_len, align 2
  %conv74 = zext i16 %62 to i32
  %ticket_len75 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %ticket_len75 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv74, ptr %ticket_len75, align 4
  %call_counter = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 0, i32 4
  %64 = ptrtoint ptr %call_counter to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call_counter, align 4
  %call_id = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 4
  %66 = ptrtoint ptr %call_id to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %call_id, align 8
  %call_counter81 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 1, i32 4
  %67 = ptrtoint ptr %call_counter81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call_counter81, align 4
  %arrayidx84 = getelementptr %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %arrayidx84, align 4
  %call_counter87 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 2, i32 4
  %70 = ptrtoint ptr %call_counter87 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call_counter87, align 4
  %arrayidx90 = getelementptr %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 2
  %72 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx90, align 8
  %call_counter93 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 3, i32 4
  %73 = ptrtoint ptr %call_counter93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %call_counter93, align 4
  %arrayidx96 = getelementptr %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 3
  %75 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx96, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end62
  %p.06.i = phi ptr [ %call7.i.i, %if.end62 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %loop.05.i = phi i32 [ 56, %if.end62 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %csum.04.i = phi i32 [ 1000003, %if.end62 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %csum.04.i, 270549121
  %incdec.ptr.i = getelementptr i8, ptr %p.06.i, i32 1
  %76 = ptrtoint ptr %p.06.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %p.06.i, align 1
  %conv.i = zext i8 %77 to i32
  %add.i = add i32 %mul.i, %conv.i
  %dec.i = add nsw i32 %loop.05.i, -1
  %cmp.i = icmp ugt i32 %loop.05.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %rxkad_calc_response_checksum.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

rxkad_calc_response_checksum.exit:                ; preds = %for.body.i
  %checksum.i = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 2
  %78 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add.i, ptr %checksum.i, align 8
  %79 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv.i) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #12
  %81 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 1
  %82 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 2
  %83 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 16
  %84 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %83, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 128
  %add.i.i = add i32 %88, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3136) #15
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %rxkad_encrypt_response.exit, label %if.end.i, !prof !334

if.end.i:                                         ; preds = %rxkad_calc_response_checksum.exit
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %86, i32 0, i32 2
  %tfm1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 3
  %89 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i, align 32
  %session_key.i = getelementptr inbounds %struct.rxkad_key, ptr %80, i32 0, i32 6
  %90 = ptrtoint ptr %session_key.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %session_key.i, align 4
  %92 = ptrtoint ptr %iv.i to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %iv.i, align 8
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #12
  %93 = ptrtoint ptr %encrypted to i32
  %cmp.i.i = icmp ugt ptr %encrypted, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.do.body5.i.i_crit_edge, !prof !335

if.end.i.do.body5.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %94 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %94, %encrypted
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !335

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %93, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %95 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i16.i = add i32 %95, %shr.i.i
  %call.i.i = call i32 @pfn_valid(i32 noundef %add.i16.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !334

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end.i.do.body5.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !345
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %96 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %96, i32 %shr.i.i
  %97 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sg.i, align 4
  %99 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %99, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i17.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i17.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !335

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !346
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.then100, label %do.body19.i.i.i.i, !prof !335

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !347
  unreachable

rxkad_encrypt_response.exit:                      ; preds = %rxkad_calc_response_checksum.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #12
  br label %if.end103

if.then100:                                       ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %93, 4088
  %and.i.i.i.i = and i32 %98, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %99
  %100 = ptrtoint ptr %sg.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %or.i.i.i.i, ptr %sg.i, align 4
  %101 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i.i, ptr %81, align 4
  %102 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 40, ptr %82, align 4
  %103 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %83, align 8
  %base.i.i.i18.i = getelementptr inbounds %struct.crypto_skcipher, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %base.i.i.i18.i, ptr %tfm1.i.i.i, align 32
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 2
  %107 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 4, i32 4
  %108 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %flags4.i.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %sg.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %110 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %sg.i, ptr %dst2.i.i, align 4
  %111 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 40, ptr %call9.i.i.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %iv.i, ptr %iv4.i.i, align 4
  %call7.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i) #12
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv.i) #12
  %hdr101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %113 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %54, align 4
  %call102 = call fastcc i32 @rxkad_send_response(ptr noundef %conn, ptr noundef %hdr101, ptr noundef nonnull %call7.i.i, ptr noundef %114)
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %rxkad_encrypt_response.exit
  %ret.0 = phi i32 [ %call102, %if.then100 ], [ -12, %rxkad_encrypt_response.exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

protocol_error:                                   ; preds = %do.end48.protocol_error_crit_edge, %if.end18.protocol_error_crit_edge, %do.end7.protocol_error_crit_edge
  %abort_code.0 = phi i32 [ 19270401, %if.end18.protocol_error_crit_edge ], [ 19270400, %do.end48.protocol_error_crit_edge ], [ -5, %do.end7.protocol_error_crit_edge ]
  %eproto.0 = phi ptr [ %17, %if.end18.protocol_error_crit_edge ], [ %31, %do.end48.protocol_error_crit_edge ], [ %14, %do.end7.protocol_error_crit_edge ]
  %serial105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %115 = ptrtoint ptr %serial105 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %serial105, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef null, i32 noundef %116, ptr noundef %eproto.0)
  br label %other_error

other_error:                                      ; preds = %protocol_error, %if.end52.other_error_crit_edge, %if.end13.other_error_crit_edge
  %abort_code.1 = phi i32 [ 19270409, %if.end13.other_error_crit_edge ], [ %abort_code.0, %protocol_error ], [ 19270402, %if.end52.other_error_crit_edge ]
  %ret.1 = phi i32 [ %call16, %if.end13.other_error_crit_edge ], [ -71, %protocol_error ], [ -13, %if.end52.other_error_crit_edge ]
  %117 = ptrtoint ptr %_abort_code to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %abort_code.1, ptr %_abort_code, align 4
  br label %cleanup

cleanup:                                          ; preds = %other_error, %if.end103, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %other_error ], [ %ret.0, %if.end103 ], [ -12, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %challenge) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rxkad_verify_response(ptr noundef %conn, ptr noundef %skb, ptr nocapture noundef writeonly %_abort_code) #0 align 64 {
entry:
  %session_key = alloca %struct.rxrpc_crypt, align 8
  %expiry = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %session_key) #12
  %0 = ptrtoint ptr %session_key to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %session_key, align 8, !annotation !339
  %1 = getelementptr inbounds [2 x i32], ptr %session_key, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !339
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expiry) #12
  %3 = ptrtoint ptr %expiry to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %expiry, align 8, !annotation !339
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !335

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %9 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_id, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %comm, ptr noundef nonnull @.str.95, i32 noundef %10) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %call7 = tail call ptr @rxrpc_look_up_server_security(ptr noundef %conn, ptr noundef %skb, i32 noundef 0, i32 noundef 0) #12
  %cmp.i301 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then9, label %if.end15

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %call7 to i32
  %switch.selectcmp = icmp eq ptr %call7, inttoptr (i32 -127 to ptr)
  %switch.select = select i1 %switch.selectcmp, i32 19270409, i32 19270405
  %switch.selectcmp299 = icmp eq ptr %call7, inttoptr (i32 -126 to ptr)
  %switch.select300 = select i1 %switch.selectcmp299, i32 19270408, i32 %switch.select
  %cid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %12 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cid, align 4
  %callNumber = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %14 = ptrtoint ptr %callNumber to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %callNumber, align 4
  %seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %16 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seq, align 4
  tail call fastcc void @trace_rxrpc_abort(i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %switch.select300, i32 noundef %11)
  %18 = ptrtoint ptr %_abort_code to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %switch.select300, ptr %_abort_code, align 4
  br label %cleanup200

if.end15:                                         ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3392, i32 noundef 56) #17
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.temporary_error_crit_edge, label %if.end19

if.end15.temporary_error_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %temporary_error

if.end19:                                         ; preds = %if.end15
  %20 = load ptr, ptr @rxkad_verify_response.___tp_str, align 4
  %call21 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 28, ptr noundef nonnull %call7.i.i, i32 noundef 56) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end19.protocol_error_crit_edge, label %if.end23

if.end19.protocol_error_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end23:                                         ; preds = %if.end19
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call7.i.i, align 8
  %ticket_len25 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %ticket_len25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ticket_len25, align 4
  %kvno26 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %kvno26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %kvno26, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %27 = load i32, ptr @rxrpc_debug, align 4
  %and28 = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end23.do.end49_crit_edge, label %do.end39, !prof !335

if.end23.do.end49_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49

do.end39:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i302 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i302 to ptr
  %task42 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task42, align 8
  %comm43 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 101
  %serial = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %32 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %serial, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %comm43, i32 noundef %33, i32 noundef %22, i32 noundef %26, i32 noundef %24) #16
  br label %do.end49

do.end49:                                         ; preds = %do.end39, %if.end23.do.end49_crit_edge
  %34 = load ptr, ptr @rxkad_verify_response.___tp_str.101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp51.not = icmp eq i32 %22, 2
  br i1 %cmp51.not, label %if.end53, label %do.end49.protocol_error_crit_edge

do.end49.protocol_error_crit_edge:                ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end53:                                         ; preds = %do.end49
  %35 = load ptr, ptr @rxkad_verify_response.___tp_str.103, align 4
  %36 = add i32 %24, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1021, i32 %36)
  %37 = icmp ult i32 %36, -1021
  br i1 %37, label %if.end53.protocol_error_crit_edge, label %if.end58

if.end53.protocol_error_crit_edge:                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end58:                                         ; preds = %if.end53
  %38 = load ptr, ptr @rxkad_verify_response.___tp_str.105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %26)
  %cmp60 = icmp ugt i32 %26, 255
  br i1 %cmp60, label %if.end58.protocol_error_crit_edge, label %if.end8.i

if.end58.protocol_error_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error

if.end8.i:                                        ; preds = %if.end58
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3136) #15
  %tobool64.not = icmp eq ptr %call9.i, null
  br i1 %tobool64.not, label %if.end8.i.temporary_error_free_resp_crit_edge, label %if.end66

if.end8.i.temporary_error_free_resp_crit_edge:    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %temporary_error_free_resp

if.end66:                                         ; preds = %if.end8.i
  %39 = load ptr, ptr @rxkad_verify_response.___tp_str.107, align 4
  %call68 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 84, ptr noundef nonnull %call9.i, i32 noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end66.protocol_error_free_crit_edge, label %if.end71

if.end66.protocol_error_free_crit_edge:           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end71:                                         ; preds = %if.end66
  %call72 = call fastcc i32 @rxkad_decrypt_ticket(ptr noundef %conn, ptr noundef %call7, ptr noundef %skb, ptr noundef nonnull %call9.i, i32 noundef %24, ptr noundef nonnull %session_key, ptr noundef nonnull %expiry, ptr noundef %_abort_code)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end71.temporary_error_free_ticket_crit_edge, label %if.end75

if.end71.temporary_error_free_ticket_crit_edge:   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %temporary_error_free_ticket

if.end75:                                         ; preds = %if.end71
  call fastcc void @rxkad_decrypt_response(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %session_key)
  %40 = load ptr, ptr @rxkad_verify_response.___tp_str.109, align 4
  %encrypted = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %encrypted to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %encrypted, align 8
  %43 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %conn, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp78.not = icmp eq i32 %42, %44
  br i1 %cmp78.not, label %if.end80, label %if.end75.protocol_error_free_crit_edge

if.end75.protocol_error_free_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end80:                                         ; preds = %if.end75
  %cid82 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %cid82 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cid82, align 4
  %cid84 = getelementptr inbounds %struct.anon.149, ptr %conn, i32 0, i32 1
  %47 = ptrtoint ptr %cid84 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cid84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp85.not = icmp eq i32 %46, %48
  br i1 %cmp85.not, label %if.end87, label %if.end80.protocol_error_free_crit_edge

if.end80.protocol_error_free_crit_edge:           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end87:                                         ; preds = %if.end80
  %securityIndex = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 3
  %49 = ptrtoint ptr %securityIndex to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %securityIndex, align 4
  %security_ix = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 27
  %51 = ptrtoint ptr %security_ix to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %security_ix, align 8
  %conv = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv)
  %cmp89.not = icmp eq i32 %50, %conv
  br i1 %cmp89.not, label %if.end92, label %if.end87.protocol_error_free_crit_edge

if.end87.protocol_error_free_crit_edge:           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end92:                                         ; preds = %if.end87
  %checksum = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %checksum to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %checksum, align 8
  store i32 0, ptr %checksum, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end92
  %p.06.i = phi ptr [ %call7.i.i, %if.end92 ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %loop.05.i = phi i32 [ 56, %if.end92 ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %csum.04.i = phi i32 [ 1000003, %if.end92 ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %csum.04.i, 270549121
  %incdec.ptr.i = getelementptr i8, ptr %p.06.i, i32 1
  %55 = ptrtoint ptr %p.06.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p.06.i, align 1
  %conv.i = zext i8 %56 to i32
  %add.i = add i32 %mul.i, %conv.i
  %dec.i = add nsw i32 %loop.05.i, -1
  %cmp.i303 = icmp ugt i32 %loop.05.i, 1
  br i1 %cmp.i303, label %for.body.i.for.body.i_crit_edge, label %rxkad_calc_response_checksum.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

rxkad_calc_response_checksum.exit:                ; preds = %for.body.i
  %57 = ptrtoint ptr %checksum to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i, ptr %checksum, align 8
  %58 = load ptr, ptr @rxkad_verify_response.___tp_str.111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %54)
  %cmp99.not = icmp eq i32 %add.i, %54
  br i1 %cmp99.not, label %if.end102, label %rxkad_calc_response_checksum.exit.protocol_error_free_crit_edge

rxkad_calc_response_checksum.exit.protocol_error_free_crit_edge: ; preds = %rxkad_calc_response_checksum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end102:                                        ; preds = %rxkad_calc_response_checksum.exit
  %bundle = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 9
  %59 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bundle, align 8
  %channel_lock = getelementptr inbounds %struct.rxrpc_bundle, ptr %60, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %channel_lock) #12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end102
  %i.0308 = phi i32 [ 0, %if.end102 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 %i.0308
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp109 = icmp slt i32 %62, 0
  br i1 %cmp109, label %for.body.protocol_error_unlock.sink.split_crit_edge, label %if.end112

for.body.protocol_error_unlock.sink.split_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_unlock.sink.split

if.end112:                                        ; preds = %for.body
  %call_counter = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %i.0308, i32 4
  %63 = ptrtoint ptr %call_counter to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call_counter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp115 = icmp ult i32 %62, %64
  br i1 %cmp115, label %if.end112.protocol_error_unlock.sink.split_crit_edge, label %if.end118

if.end112.protocol_error_unlock.sink.split_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_unlock.sink.split

if.end118:                                        ; preds = %if.end112
  %65 = load ptr, ptr @rxkad_verify_response.___tp_str.117, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp123 = icmp ugt i32 %62, %64
  br i1 %cmp123, label %do.body126, label %if.end118.for.inc_crit_edge

if.end118.for.inc_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body126:                                       ; preds = %if.end118
  %66 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bundle, align 8
  %dep_map = getelementptr inbounds %struct.rxrpc_bundle, ptr %67, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool130.not = icmp eq i32 %call.i, 0
  br i1 %tobool130.not, label %land.lhs.true, label %do.body126.do.end138_crit_edge

do.body126.do.end138_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end138

land.lhs.true:                                    ; preds = %do.body126
  %call131 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %land.lhs.true.do.end138_crit_edge, label %land.lhs.true133

land.lhs.true.do.end138_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end138

land.lhs.true133:                                 ; preds = %land.lhs.true
  %.b298 = load i1, ptr @rxkad_verify_response.__warned, align 1
  br i1 %.b298, label %land.lhs.true133.do.end138_crit_edge, label %if.then135

land.lhs.true133.do.end138_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end138

if.then135:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rxkad_verify_response.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 1280, ptr noundef nonnull @.str.119) #12
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %land.lhs.true133.do.end138_crit_edge, %land.lhs.true.do.end138_crit_edge, %do.body126.do.end138_crit_edge
  %call142 = getelementptr %struct.rxrpc_connection, ptr %conn, i32 0, i32 6, i32 %i.0308, i32 1
  %68 = ptrtoint ptr %call142 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call142, align 4
  %tobool143.not = icmp eq ptr %69, null
  br i1 %tobool143.not, label %do.end138.if.end148_crit_edge, label %land.lhs.true144

do.end138.if.end148_crit_edge:                    ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

land.lhs.true144:                                 ; preds = %do.end138
  %state = getelementptr inbounds %struct.rxrpc_call, ptr %69, i32 0, i32 40
  %70 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %71)
  %cmp145 = icmp ult i32 %71, 11
  br i1 %cmp145, label %land.lhs.true144.protocol_error_unlock_crit_edge, label %land.lhs.true144.if.end148_crit_edge

land.lhs.true144.if.end148_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148

land.lhs.true144.protocol_error_unlock_crit_edge: ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_unlock

if.end148:                                        ; preds = %land.lhs.true144.if.end148_crit_edge, %do.end138.if.end148_crit_edge
  %72 = ptrtoint ptr %call_counter to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %62, ptr %call_counter, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end148, %if.end118.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0308, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %73 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bundle, align 8
  %channel_lock155 = getelementptr inbounds %struct.rxrpc_bundle, ptr %74, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %channel_lock155) #12
  %75 = load ptr, ptr @rxkad_verify_response.___tp_str.120, align 4
  %inc_nonce = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 5
  %76 = ptrtoint ptr %inc_nonce to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %inc_nonce, align 8
  %nonce = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 16, i32 0, i32 3
  %78 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nonce, align 8
  %add = add i32 %79, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %add)
  %cmp158.not = icmp eq i32 %77, %add
  br i1 %cmp158.not, label %if.end161, label %for.end.protocol_error_free_crit_edge

for.end.protocol_error_free_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end161:                                        ; preds = %for.end
  %80 = load ptr, ptr @rxkad_verify_response.___tp_str.122, align 4
  %level164 = getelementptr inbounds %struct.rxkad_response, ptr %call7.i.i, i32 0, i32 2, i32 6
  %81 = ptrtoint ptr %level164 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %level164, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp165 = icmp ugt i32 %82, 2
  br i1 %cmp165, label %if.end161.protocol_error_free_crit_edge, label %if.end168

if.end161.protocol_error_free_crit_edge:          ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #14
  br label %protocol_error_free

if.end168:                                        ; preds = %if.end161
  %security_level = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 6
  %83 = ptrtoint ptr %security_level to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %security_level, align 8
  %84 = ptrtoint ptr %expiry to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %expiry, align 8
  %call169 = call i32 @rxrpc_get_server_data_key(ptr noundef %conn, ptr noundef nonnull %session_key, i64 noundef %85, i32 noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %cmp170 = icmp slt i32 %call169, 0
  br i1 %cmp170, label %if.end168.temporary_error_free_ticket_crit_edge, label %if.end173

if.end168.temporary_error_free_ticket_crit_edge:  ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %temporary_error_free_ticket

if.end173:                                        ; preds = %if.end168
  call void @kfree(ptr noundef nonnull %call9.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %86 = load i32, ptr @rxrpc_debug, align 4
  %and175 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.cleanup200_crit_edge, label %do.end186, !prof !335

if.end173.cleanup200_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup200

do.end186:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #14
  %87 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i304 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i304 to ptr
  %task189 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task189 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task189, align 8
  %comm190 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 101
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm190, ptr noundef nonnull @.str.95) #16
  br label %cleanup200

protocol_error_unlock.sink.split:                 ; preds = %if.end112.protocol_error_unlock.sink.split_crit_edge, %for.body.protocol_error_unlock.sink.split_crit_edge
  %rxkad_verify_response.___tp_str.113.sink = phi ptr [ @rxkad_verify_response.___tp_str.113, %for.body.protocol_error_unlock.sink.split_crit_edge ], [ @rxkad_verify_response.___tp_str.115, %if.end112.protocol_error_unlock.sink.split_crit_edge ]
  %91 = ptrtoint ptr %rxkad_verify_response.___tp_str.113.sink to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rxkad_verify_response.___tp_str.113.sink, align 4
  br label %protocol_error_unlock

protocol_error_unlock:                            ; preds = %protocol_error_unlock.sink.split, %land.lhs.true144.protocol_error_unlock_crit_edge
  %eproto.0.ph = phi ptr [ %92, %protocol_error_unlock.sink.split ], [ %65, %land.lhs.true144.protocol_error_unlock_crit_edge ]
  %93 = ptrtoint ptr %bundle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %bundle, align 8
  %channel_lock197 = getelementptr inbounds %struct.rxrpc_bundle, ptr %94, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %channel_lock197) #12
  br label %protocol_error_free

protocol_error_free:                              ; preds = %protocol_error_unlock, %if.end161.protocol_error_free_crit_edge, %for.end.protocol_error_free_crit_edge, %rxkad_calc_response_checksum.exit.protocol_error_free_crit_edge, %if.end87.protocol_error_free_crit_edge, %if.end80.protocol_error_free_crit_edge, %if.end75.protocol_error_free_crit_edge, %if.end66.protocol_error_free_crit_edge
  %abort_code.1 = phi i32 [ 19270401, %if.end66.protocol_error_free_crit_edge ], [ 19270410, %if.end75.protocol_error_free_crit_edge ], [ 19270410, %if.end80.protocol_error_free_crit_edge ], [ 19270410, %if.end87.protocol_error_free_crit_edge ], [ 19270410, %rxkad_calc_response_checksum.exit.protocol_error_free_crit_edge ], [ 19270410, %protocol_error_unlock ], [ 19270404, %for.end.protocol_error_free_crit_edge ], [ 19270402, %if.end161.protocol_error_free_crit_edge ]
  %eproto.1 = phi ptr [ %39, %if.end66.protocol_error_free_crit_edge ], [ %40, %if.end75.protocol_error_free_crit_edge ], [ %40, %if.end80.protocol_error_free_crit_edge ], [ %40, %if.end87.protocol_error_free_crit_edge ], [ %58, %rxkad_calc_response_checksum.exit.protocol_error_free_crit_edge ], [ %eproto.0.ph, %protocol_error_unlock ], [ %75, %for.end.protocol_error_free_crit_edge ], [ %80, %if.end161.protocol_error_free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %protocol_error

protocol_error:                                   ; preds = %protocol_error_free, %if.end58.protocol_error_crit_edge, %if.end53.protocol_error_crit_edge, %do.end49.protocol_error_crit_edge, %if.end19.protocol_error_crit_edge
  %abort_code.2 = phi i32 [ 19270401, %if.end19.protocol_error_crit_edge ], [ 19270400, %do.end49.protocol_error_crit_edge ], [ 19270403, %if.end53.protocol_error_crit_edge ], [ 19270408, %if.end58.protocol_error_crit_edge ], [ %abort_code.1, %protocol_error_free ]
  %eproto.2 = phi ptr [ %20, %if.end19.protocol_error_crit_edge ], [ %34, %do.end49.protocol_error_crit_edge ], [ %35, %if.end53.protocol_error_crit_edge ], [ %38, %if.end58.protocol_error_crit_edge ], [ %eproto.1, %protocol_error_free ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %serial199 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %95 = ptrtoint ptr %serial199 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %serial199, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef null, i32 noundef %96, ptr noundef %eproto.2)
  call void @key_put(ptr noundef %call7) #12
  %97 = ptrtoint ptr %_abort_code to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %abort_code.2, ptr %_abort_code, align 4
  br label %cleanup200

temporary_error_free_ticket:                      ; preds = %if.end168.temporary_error_free_ticket_crit_edge, %if.end71.temporary_error_free_ticket_crit_edge
  %ret.0 = phi i32 [ %call72, %if.end71.temporary_error_free_ticket_crit_edge ], [ %call169, %if.end168.temporary_error_free_ticket_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %temporary_error_free_resp

temporary_error_free_resp:                        ; preds = %temporary_error_free_ticket, %if.end8.i.temporary_error_free_resp_crit_edge
  %ret.1 = phi i32 [ %ret.0, %temporary_error_free_ticket ], [ -12, %if.end8.i.temporary_error_free_resp_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %temporary_error

temporary_error:                                  ; preds = %temporary_error_free_resp, %if.end15.temporary_error_crit_edge
  %ret.2 = phi i32 [ %ret.1, %temporary_error_free_resp ], [ -12, %if.end15.temporary_error_crit_edge ]
  call void @key_put(ptr noundef %call7) #12
  br label %cleanup200

cleanup200:                                       ; preds = %temporary_error, %protocol_error, %do.end186, %if.end173.cleanup200_crit_edge, %if.then9
  %retval.0 = phi i32 [ -71, %if.then9 ], [ -71, %protocol_error ], [ %ret.2, %temporary_error ], [ 0, %do.end186 ], [ 0, %if.end173.cleanup200_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expiry) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %session_key) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rxkad_clear(ptr nocapture noundef readonly %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %0 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end, !prof !335

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm, ptr noundef nonnull @.str.181) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %5 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %do.end5.if.end9_crit_edge, label %if.then7

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %7, ptr noundef %base.i.i.i) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end5.if.end9_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @key_validate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_send_abort_packet(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_rx_eproto(ptr noundef %call, i32 noundef %serial, ptr noundef %why) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_rx_eproto, %do.body)) #12
          to label %if.end49 [label %do.body], !srcloc !348

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !335

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !349
  %call43 = tail call i32 @__traceiter_rxrpc_rx_eproto(ptr noundef null, ptr noundef %call, i32 noundef %serial, ptr noundef %why) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !350
  %13 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !335

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_rx_eproto, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_rxrpc_rx_eproto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 1377, ptr noundef nonnull @.str.37) #12
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !352
  %31 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rxrpc_abort_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_rx_eproto(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_fail(i32 noundef %debug_id, i32 noundef %serial, i32 noundef %ret, i32 noundef %where) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_fail, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !348

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !335

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !353
  %call42 = tail call i32 @__traceiter_rxrpc_tx_fail(ptr noundef null, i32 noundef %debug_id, i32 noundef %serial, i32 noundef %ret, i32 noundef %where) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !354
  %13 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !335

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_fail, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_rxrpc_tx_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_rxrpc_tx_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 1482, ptr noundef nonnull @.str.37) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !352
  %31 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_tx_packet(i32 noundef %call_id, ptr noundef %whdr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_tx_packet, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !348

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !335

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !355
  %call42 = tail call i32 @__traceiter_rxrpc_tx_packet(ptr noundef null, i32 noundef %call_id, ptr noundef %whdr, i32 noundef 6) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !356
  %13 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !335

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_tx_packet, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_rxrpc_tx_packet.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_rxrpc_tx_packet.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 931, ptr noundef nonnull @.str.37) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !352
  %31 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_fail(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_tx_packet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxkad_send_response(ptr noundef %conn, ptr nocapture noundef readonly %hdr, ptr noundef %resp, ptr noundef %s2) unnamed_addr #0 align 64 {
entry:
  %whdr = alloca %struct.rxrpc_wire_header, align 4
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [3 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %whdr) #12
  %0 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 4
  %2 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 5
  %3 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 6
  %4 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 8
  %5 = getelementptr inbounds %struct.rxrpc_wire_header, ptr %whdr, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #12
  %6 = getelementptr inbounds i8, ptr %msg, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iov) #12
  %8 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %9 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 1
  %10 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 2
  %12 = getelementptr inbounds [3 x %struct.kvec], ptr %iov, i32 0, i32 2, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %13 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !335

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 101
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %comm, ptr noundef nonnull @.str.89) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %params = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1
  %peer = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %peer, align 4
  %transport = getelementptr inbounds %struct.rxrpc_peer, ptr %19, i32 0, i32 16, i32 4
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transport, ptr %msg, align 8
  %transport_len = getelementptr inbounds %struct.rxrpc_peer, ptr %19, i32 0, i32 16, i32 3
  %21 = ptrtoint ptr %transport_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %transport_len, align 2
  %conv = zext i16 %22 to i32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %23 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %msg_namelen, align 4
  %24 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %24, align 8
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %26 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %27 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %msg_flags, align 4
  %28 = getelementptr inbounds i8, ptr %whdr, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 20)
  %30 = ptrtoint ptr %hdr to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %hdr, align 1
  %32 = ptrtoint ptr %whdr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %whdr, align 4
  %cid = getelementptr inbounds %struct.rxrpc_host_header, ptr %hdr, i32 0, i32 1
  %33 = ptrtoint ptr %cid to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %cid, align 1
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %0, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %2, align 4
  %out_clientflag = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 28
  %37 = ptrtoint ptr %out_clientflag to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %out_clientflag, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %3, align 1
  %securityIndex = getelementptr inbounds %struct.rxrpc_host_header, ptr %hdr, i32 0, i32 8
  %40 = ptrtoint ptr %securityIndex to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %securityIndex, align 1
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %4, align 1
  %serviceId = getelementptr inbounds %struct.rxrpc_host_header, ptr %hdr, i32 0, i32 10
  %43 = ptrtoint ptr %serviceId to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %serviceId, align 1
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %5, align 2
  %46 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %whdr, ptr %iov, align 4
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 28, ptr %8, align 4
  %48 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resp, ptr %9, align 4
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 56, ptr %10, align 4
  %ticket = getelementptr inbounds %struct.rxkad_key, ptr %s2, i32 0, i32 7
  %50 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %ticket, ptr %11, align 4
  %ticket_len = getelementptr inbounds %struct.rxkad_key, ptr %s2, i32 0, i32 5
  %51 = ptrtoint ptr %ticket_len to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ticket_len, align 2
  %conv22 = zext i16 %52 to i32
  %53 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv22, ptr %12, align 4
  %add31 = add nuw nsw i32 %conv22, 84
  %serial32 = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 24
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %serial32, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !342
  call void @llvm.prefetch.p0(ptr %serial32, i32 1, i32 3, i32 1) #12
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %serial32, ptr %serial32, i32 1, ptr elementtype(i32) %serial32) #12, !srcloc !343
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %54, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !344
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %asmresult.i.i.i.i, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %56 = load i32, ptr @rxrpc_debug, align 4
  %and36 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end6.do.end56_crit_edge, label %do.end47, !prof !335

do.end6.do.end56_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end47:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %57 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i106 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i106 to ptr
  %task50 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %task50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %task50, align 8
  %comm51 = getelementptr inbounds %struct.task_struct, ptr %60, i32 0, i32 101
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %comm51, i32 noundef %asmresult.i.i.i.i) #16
  br label %do.end56

do.end56:                                         ; preds = %do.end47, %do.end6.do.end56_crit_edge
  %61 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %params, align 8
  %socket = getelementptr inbounds %struct.rxrpc_local, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %socket to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %socket, align 4
  %call59 = call i32 @kernel_sendmsg(ptr noundef %64, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 3, i32 noundef %add31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp = icmp slt i32 %call59, 0
  br i1 %cmp, label %if.then61, label %if.end62

if.then61:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #14
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %65 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug_id, align 8
  call fastcc void @trace_rxrpc_tx_fail(i32 noundef %66, i32 noundef %asmresult.i.i.i.i, i32 noundef %call59, i32 noundef 7)
  br label %cleanup

if.end62:                                         ; preds = %do.end56
  %call63 = call i64 @ktime_get_seconds() #12
  %67 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %peer, align 4
  %last_tx_at = getelementptr inbounds %struct.rxrpc_peer, ptr %68, i32 0, i32 8
  %69 = ptrtoint ptr %last_tx_at to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %call63, ptr %last_tx_at, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %70 = load i32, ptr @rxrpc_debug, align 4
  %and67 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end62.cleanup_crit_edge, label %do.end78, !prof !335

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end78:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %71 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i107 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i107 to ptr
  %task81 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task81, align 8
  %comm82 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 101
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %comm82, ptr noundef nonnull @.str.89) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.end62.cleanup_crit_edge, %if.then61
  %retval.0 = phi i32 [ -11, %if.then61 ], [ 0, %do.end78 ], [ 0, %if.end62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iov) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %whdr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rxrpc_look_up_server_security(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rxrpc_abort(i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 1), ptr blockaddress(@trace_rxrpc_abort, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !348

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !335

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !357
  %call42 = tail call i32 @__traceiter_rxrpc_abort(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.96, i32 noundef %cid, i32 noundef %call_id, i32 noundef %seq, i32 noundef %abort_code, i32 noundef %error) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !358
  %13 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !335

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !351
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rxrpc_abort, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_rxrpc_abort.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_rxrpc_abort.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 726, ptr noundef nonnull @.str.37) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !352
  %31 = tail call i32 @llvm.read_register.i32(metadata !324) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rxkad_decrypt_ticket(ptr nocapture noundef readonly %conn, ptr noundef readonly %server_key, ptr nocapture noundef readonly %skb, ptr noundef %ticket, i32 noundef %ticket_len, ptr nocapture noundef writeonly %_session_key, ptr nocapture noundef writeonly %_expiry, ptr nocapture noundef writeonly %_abort_code) unnamed_addr #0 align 64 {
entry:
  %iv = alloca %struct.rxrpc_crypt, align 8
  %sg = alloca [1 x %struct.scatterlist], align 4
  %addr = alloca %struct.in_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ticket663 = ptrtoint ptr %ticket to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #12
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !339
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %2 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !335

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 101
  %debug_id = getelementptr inbounds %struct.rxrpc_connection, ptr %conn, i32 0, i32 23
  %7 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug_id, align 8
  %tobool.not.i = icmp eq ptr %server_key, null
  br i1 %tobool.not.i, label %do.end.key_serial.exit_crit_edge, label %cond.true.i

do.end.key_serial.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %key_serial.exit

cond.true.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %serial.i = getelementptr inbounds %struct.key, ptr %server_key, i32 0, i32 1
  %9 = ptrtoint ptr %serial.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %serial.i, align 4
  br label %key_serial.exit

key_serial.exit:                                  ; preds = %cond.true.i, %do.end.key_serial.exit_crit_edge
  %cond.i = phi i32 [ %10, %cond.true.i ], [ 0, %do.end.key_serial.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %comm, ptr noundef nonnull @.str.126, i32 noundef %8, i32 noundef %cond.i) #16
  br label %do.end7

do.end7:                                          ; preds = %key_serial.exit, %entry.do.end7_crit_edge
  %11 = ptrtoint ptr %_expiry to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %_expiry, align 8
  %12 = getelementptr inbounds %struct.key, ptr %server_key, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %cmp.not = icmp eq ptr %14, null
  br i1 %cmp.not, label %do.end20, label %do.body32, !prof !334

do.end20:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1003, 0\0A.popsection", ""() #12, !srcloc !359
  unreachable

do.body32:                                        ; preds = %do.end7
  %and33 = and i32 %ticket663, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %if.end55, label %do.end46, !prof !335

do.end46:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef %and33, i32 noundef %and33, ptr noundef nonnull @.str.133, i32 noundef 0, i32 noundef 0) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1004, 0\0A.popsection", ""() #12, !srcloc !360
  unreachable

if.end55:                                         ; preds = %do.body32
  %arrayidx58 = getelementptr %struct.key, ptr %server_key, i32 0, i32 17, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx58, align 4
  %17 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %iv, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 128
  %add.i = add i32 %19, 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3136) #15
  %tobool.not.i614 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i614, label %if.end55.cleanup488_crit_edge, label %if.end63, !prof !334

if.end55.cleanup488_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup488

if.end63:                                         ; preds = %if.end55
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %14, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 3
  %20 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 32
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %ticket, i32 noundef %ticket_len) #12
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sg, ptr %dst2.i, align 4
  %26 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ticket_len, ptr %call9.i.i, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %iv, ptr %iv4.i, align 4
  %call68 = call i32 @crypto_skcipher_decrypt(ptr noundef nonnull %call9.i.i) #12
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #12
  %add.ptr = getelementptr i8, ptr %ticket, i32 %ticket_len
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %28 = load i32, ptr @rxrpc_debug, align 4
  %and70 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end63.do.end90_crit_edge, label %do.end81, !prof !335

if.end63.do.end90_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end90

do.end81:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %29 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i615 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i615 to ptr
  %task84 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task84, align 8
  %comm85 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 101
  %33 = ptrtoint ptr %ticket to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ticket, align 1
  %conv = zext i8 %34 to i32
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef %comm85, i32 noundef %conv) #16
  br label %do.end90

do.end90:                                         ; preds = %do.end81, %if.end63.do.end90_crit_edge
  %35 = ptrtoint ptr %ticket to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ticket, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool93.not = icmp eq i8 %37, 0
  %incdec.ptr = getelementptr i8, ptr %ticket, i32 1
  %38 = load ptr, ptr @rxkad_decrypt_ticket.___tp_str, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %gepdiff = add i32 %ticket_len, -1
  %call95 = call ptr @memchr(ptr noundef %incdec.ptr, i32 noundef 0, i32 noundef %gepdiff) #18
  %tobool96.not = icmp eq ptr %call95, null
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.lhs.cast97 = ptrtoint ptr %call95 to i32
  %sub.ptr.sub99 = sub i32 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub99)
  %cmp100 = icmp sgt i32 %sub.ptr.sub99, 40
  %or.cond = select i1 %tobool96.not, i1 true, i1 %cmp100
  br i1 %or.cond, label %do.end90.bad_ticket_crit_edge, label %for.cond.preheader

do.end90.bad_ticket_crit_edge:                    ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.cond.preheader:                               ; preds = %do.end90
  %cmp104645 = icmp ult ptr %incdec.ptr, %call95
  br i1 %cmp104645, label %for.body.preheader, label %for.cond.preheader.cleanup.cont_crit_edge

for.cond.preheader.cleanup.cont_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont

for.body.preheader:                               ; preds = %for.cond.preheader
  %uglygep = getelementptr i8, ptr %ticket, i32 %sub.ptr.sub99
  %39 = sub i32 %sub.ptr.lhs.cast97, %ticket663
  %uglygep664 = getelementptr i8, ptr %ticket, i32 %39
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %p.0646 = phi ptr [ %incdec.ptr114, %for.inc.for.body_crit_edge ], [ %incdec.ptr, %for.body.preheader ]
  %40 = ptrtoint ptr %p.0646 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %p.0646, align 1
  %conv106 = zext i8 %41 to i32
  %arrayidx107 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv106
  %42 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx107, align 1
  %44 = and i8 %43, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp110.not = icmp eq i8 %44, 0
  br i1 %cmp110.not, label %for.body.bad_ticket_crit_edge, label %for.inc

for.body.bad_ticket_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.inc:                                          ; preds = %for.body
  %incdec.ptr114 = getelementptr i8, ptr %p.0646, i32 1
  %exitcond.not = icmp eq ptr %incdec.ptr114, %uglygep664
  br i1 %exitcond.not, label %for.inc.cleanup.cont_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup.cont_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %for.inc.cleanup.cont_crit_edge, %for.cond.preheader.cleanup.cont_crit_edge
  %45 = phi ptr [ %ticket, %for.cond.preheader.cleanup.cont_crit_edge ], [ %uglygep, %for.inc.cleanup.cont_crit_edge ]
  %incdec.ptr115 = getelementptr i8, ptr %45, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %46 = load i32, ptr @rxrpc_debug, align 4
  %and118 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %cleanup.cont.do.end138_crit_edge, label %do.end129, !prof !335

cleanup.cont.do.end138_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end138

do.end129:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  %47 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i616 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i616 to ptr
  %task132 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task132 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task132, align 8
  %comm133 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 101
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %comm133, ptr noundef %incdec.ptr) #16
  br label %do.end138

do.end138:                                        ; preds = %do.end129, %cleanup.cont.do.end138_crit_edge
  %51 = load ptr, ptr @rxkad_decrypt_ticket.___tp_str.141, align 4
  %sub.ptr.rhs.cast142 = ptrtoint ptr %incdec.ptr115 to i32
  %sub.ptr.sub143 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast142
  %call144 = call ptr @memchr(ptr noundef %incdec.ptr115, i32 noundef 0, i32 noundef %sub.ptr.sub143) #18
  %tobool145.not = icmp eq ptr %call144, null
  %sub.ptr.lhs.cast147 = ptrtoint ptr %call144 to i32
  %sub.ptr.sub149 = sub i32 %sub.ptr.lhs.cast147, %sub.ptr.rhs.cast142
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub149)
  %cmp150 = icmp sgt i32 %sub.ptr.sub149, 40
  %or.cond610 = select i1 %tobool145.not, i1 true, i1 %cmp150
  br i1 %or.cond610, label %do.end138.bad_ticket_crit_edge, label %for.cond154.preheader

do.end138.bad_ticket_crit_edge:                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.cond154.preheader:                            ; preds = %do.end138
  %cmp155647 = icmp ult ptr %incdec.ptr115, %call144
  br i1 %cmp155647, label %for.body157.preheader, label %for.cond154.preheader.cleanup.cont173_crit_edge

for.cond154.preheader.cleanup.cont173_crit_edge:  ; preds = %for.cond154.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont173

for.body157.preheader:                            ; preds = %for.cond154.preheader
  %52 = sub i32 %sub.ptr.lhs.cast147, %ticket663
  %uglygep665 = getelementptr i8, ptr %ticket, i32 %52
  br label %for.body157

for.body157:                                      ; preds = %for.inc166.for.body157_crit_edge, %for.body157.preheader
  %p.2648 = phi ptr [ %incdec.ptr167, %for.inc166.for.body157_crit_edge ], [ %incdec.ptr115, %for.body157.preheader ]
  %53 = ptrtoint ptr %p.2648 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %p.2648, align 1
  %conv158 = zext i8 %54 to i32
  %arrayidx159 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv158
  %55 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx159, align 1
  %57 = and i8 %56, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp162.not = icmp eq i8 %57, 0
  br i1 %cmp162.not, label %for.body157.bad_ticket_crit_edge, label %for.inc166

for.body157.bad_ticket_crit_edge:                 ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.inc166:                                       ; preds = %for.body157
  %incdec.ptr167 = getelementptr i8, ptr %p.2648, i32 1
  %cmp155 = icmp ult ptr %incdec.ptr167, %call144
  br i1 %cmp155, label %for.inc166.for.body157_crit_edge, label %for.inc166.cleanup.cont173_crit_edge

for.inc166.cleanup.cont173_crit_edge:             ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont173

for.inc166.for.body157_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body157

cleanup.cont173:                                  ; preds = %for.inc166.cleanup.cont173_crit_edge, %for.cond154.preheader.cleanup.cont173_crit_edge
  %p.2.lcssa = phi ptr [ %incdec.ptr115, %for.cond154.preheader.cleanup.cont173_crit_edge ], [ %uglygep665, %for.inc166.cleanup.cont173_crit_edge ]
  %incdec.ptr169 = getelementptr i8, ptr %p.2.lcssa, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %58 = load i32, ptr @rxrpc_debug, align 4
  %and175 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %cleanup.cont173.do.end195_crit_edge, label %do.end186, !prof !335

cleanup.cont173.do.end195_crit_edge:              ; preds = %cleanup.cont173
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end195

do.end186:                                        ; preds = %cleanup.cont173
  call void @__sanitizer_cov_trace_pc() #14
  %59 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i617 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i617 to ptr
  %task189 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task189 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task189, align 8
  %comm190 = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 101
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %comm190, ptr noundef %incdec.ptr115) #16
  br label %do.end195

do.end195:                                        ; preds = %do.end186, %cleanup.cont173.do.end195_crit_edge
  %63 = load ptr, ptr @rxkad_decrypt_ticket.___tp_str.146, align 4
  %sub.ptr.rhs.cast199 = ptrtoint ptr %incdec.ptr169 to i32
  %sub.ptr.sub200 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast199
  %call201 = call ptr @memchr(ptr noundef %incdec.ptr169, i32 noundef 0, i32 noundef %sub.ptr.sub200) #18
  %tobool202.not = icmp eq ptr %call201, null
  %sub.ptr.lhs.cast204 = ptrtoint ptr %call201 to i32
  %sub.ptr.sub206 = sub i32 %sub.ptr.lhs.cast204, %sub.ptr.rhs.cast199
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub206)
  %cmp207 = icmp sgt i32 %sub.ptr.sub206, 40
  %or.cond611 = select i1 %tobool202.not, i1 true, i1 %cmp207
  br i1 %or.cond611, label %do.end195.bad_ticket_crit_edge, label %for.cond211.preheader

do.end195.bad_ticket_crit_edge:                   ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.cond211.preheader:                            ; preds = %do.end195
  %cmp212650 = icmp ult ptr %incdec.ptr169, %call201
  br i1 %cmp212650, label %for.body214.preheader, label %for.cond211.preheader.cleanup.cont230_crit_edge

for.cond211.preheader.cleanup.cont230_crit_edge:  ; preds = %for.cond211.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont230

for.body214.preheader:                            ; preds = %for.cond211.preheader
  %64 = sub i32 %sub.ptr.lhs.cast204, %ticket663
  %uglygep666 = getelementptr i8, ptr %ticket, i32 %64
  br label %for.body214

for.body214:                                      ; preds = %for.inc223.for.body214_crit_edge, %for.body214.preheader
  %p.4651 = phi ptr [ %incdec.ptr224, %for.inc223.for.body214_crit_edge ], [ %incdec.ptr169, %for.body214.preheader ]
  %65 = ptrtoint ptr %p.4651 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %p.4651, align 1
  %conv215 = zext i8 %66 to i32
  %arrayidx216 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv215
  %67 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx216, align 1
  %69 = and i8 %68, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp219.not = icmp eq i8 %69, 0
  br i1 %cmp219.not, label %for.body214.bad_ticket_crit_edge, label %for.inc223

for.body214.bad_ticket_crit_edge:                 ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.inc223:                                       ; preds = %for.body214
  %incdec.ptr224 = getelementptr i8, ptr %p.4651, i32 1
  %cmp212 = icmp ult ptr %incdec.ptr224, %call201
  br i1 %cmp212, label %for.inc223.for.body214_crit_edge, label %for.inc223.cleanup.cont230_crit_edge

for.inc223.cleanup.cont230_crit_edge:             ; preds = %for.inc223
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont230

for.inc223.for.body214_crit_edge:                 ; preds = %for.inc223
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body214

cleanup.cont230:                                  ; preds = %for.inc223.cleanup.cont230_crit_edge, %for.cond211.preheader.cleanup.cont230_crit_edge
  %p.4.lcssa = phi ptr [ %incdec.ptr169, %for.cond211.preheader.cleanup.cont230_crit_edge ], [ %uglygep666, %for.inc223.cleanup.cont230_crit_edge ]
  %incdec.ptr226 = getelementptr i8, ptr %p.4.lcssa, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %70 = load i32, ptr @rxrpc_debug, align 4
  %and232 = and i32 %70, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and232)
  %tobool233.not = icmp eq i32 %and232, 0
  br i1 %tobool233.not, label %cleanup.cont230.do.end252_crit_edge, label %do.end243, !prof !335

cleanup.cont230.do.end252_crit_edge:              ; preds = %cleanup.cont230
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end252

do.end243:                                        ; preds = %cleanup.cont230
  call void @__sanitizer_cov_trace_pc() #14
  %71 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i618 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i618 to ptr
  %task246 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %task246 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %task246, align 8
  %comm247 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 101
  %call249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %comm247, ptr noundef %incdec.ptr169) #16
  br label %do.end252

do.end252:                                        ; preds = %do.end243, %cleanup.cont230.do.end252_crit_edge
  %75 = load ptr, ptr @rxkad_decrypt_ticket.___tp_str.151, align 4
  %sub.ptr.rhs.cast255 = ptrtoint ptr %incdec.ptr226 to i32
  %sub.ptr.sub256 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast255
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %sub.ptr.sub256)
  %cmp257 = icmp slt i32 %sub.ptr.sub256, 18
  br i1 %cmp257, label %do.end252.bad_ticket_crit_edge, label %if.end260

do.end252.bad_ticket_crit_edge:                   ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

if.end260:                                        ; preds = %do.end252
  %76 = ptrtoint ptr %incdec.ptr226 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %77 = load i32, ptr %incdec.ptr226, align 1
  %78 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %addr, align 4
  %add.ptr261 = getelementptr i8, ptr %p.4.lcssa, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %79 = load i32, ptr @rxrpc_debug, align 4
  %and263 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %if.end260.do.end283_crit_edge, label %do.end274, !prof !335

if.end260.do.end283_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end283

do.end274:                                        ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #14
  %80 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i619 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i619 to ptr
  %task277 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task277 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task277, align 8
  %comm278 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 101
  %call280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %comm278, ptr noundef nonnull %addr) #16
  br label %do.end283

do.end283:                                        ; preds = %do.end274, %if.end260.do.end283_crit_edge
  %84 = ptrtoint ptr %add.ptr261 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %key.sroa.0.0.copyload = load i32, ptr %add.ptr261, align 1
  %key.sroa.6.0.p.0.566.sroa_idx = getelementptr i8, ptr %p.4.lcssa, i32 9
  %85 = ptrtoint ptr %key.sroa.6.0.p.0.566.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %key.sroa.6.0.copyload = load i32, ptr %key.sroa.6.0.p.0.566.sroa_idx, align 1
  %add.ptr284 = getelementptr i8, ptr %p.4.lcssa, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %86 = load i32, ptr @rxrpc_debug, align 4
  %and286 = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %do.end283.do.end308_crit_edge, label %do.end297, !prof !335

do.end283.do.end308_crit_edge:                    ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end308

do.end297:                                        ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #14
  %87 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i620 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i620 to ptr
  %task300 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %task300 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task300, align 8
  %comm301 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 101
  %call305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %comm301, i32 noundef %key.sroa.0.0.copyload, i32 noundef %key.sroa.6.0.copyload) #16
  br label %do.end308

do.end308:                                        ; preds = %do.end297, %do.end283.do.end308_crit_edge
  %91 = ptrtoint ptr %_session_key to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %key.sroa.0.0.copyload, ptr %_session_key, align 8
  %key.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %_session_key, i32 4
  %92 = ptrtoint ptr %key.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %key.sroa.6.0.copyload, ptr %key.sroa.6.0..sroa_idx, align 4
  %incdec.ptr309 = getelementptr i8, ptr %p.4.lcssa, i32 14
  %93 = ptrtoint ptr %add.ptr284 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr284, align 1
  %conv310 = zext i8 %94 to i32
  %mul311 = mul nuw nsw i32 %conv310, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %95 = load i32, ptr @rxrpc_debug, align 4
  %and313 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %do.end308.do.end333_crit_edge, label %do.end324, !prof !335

do.end308.do.end333_crit_edge:                    ; preds = %do.end308
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end333

do.end324:                                        ; preds = %do.end308
  call void @__sanitizer_cov_trace_pc() #14
  %96 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i621 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i621 to ptr
  %task327 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task327 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task327, align 8
  %comm328 = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 101
  %call330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %comm328, i32 noundef %mul311) #16
  br label %do.end333

do.end333:                                        ; preds = %do.end324, %do.end308.do.end333_crit_edge
  %100 = ptrtoint ptr %incdec.ptr309 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %stamp337.0.copyload = load i32, ptr %incdec.ptr309, align 1
  %101 = call i32 @llvm.bswap.i32(i32 %stamp337.0.copyload)
  %issue.0.in = select i1 %tobool93.not, i32 %stamp337.0.copyload, i32 %101
  %issue.0 = zext i32 %issue.0.in to i64
  %add.ptr340 = getelementptr i8, ptr %p.4.lcssa, i32 18
  %call341 = call i64 @ktime_get_real_seconds() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %102 = load i32, ptr @rxrpc_debug, align 4
  %and343 = and i32 %102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and343)
  %tobool344.not = icmp eq i32 %and343, 0
  br i1 %tobool344.not, label %do.end333.do.end363_crit_edge, label %do.end354, !prof !335

do.end333.do.end363_crit_edge:                    ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end363

do.end354:                                        ; preds = %do.end333
  call void @__sanitizer_cov_trace_pc() #14
  %103 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i623 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i623 to ptr
  %task357 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task357 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task357, align 8
  %comm358 = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 101
  %call360 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %comm358, i64 noundef %issue.0, i64 noundef %call341) #16
  br label %do.end363

do.end363:                                        ; preds = %do.end354, %do.end333.do.end363_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %call341, i64 %issue.0)
  %cmp364 = icmp slt i64 %call341, %issue.0
  br i1 %cmp364, label %do.end363.other_error_crit_edge, label %if.end367

do.end363.other_error_crit_edge:                  ; preds = %do.end363
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_error

if.end367:                                        ; preds = %do.end363
  %conv368 = zext i32 %mul311 to i64
  %sub = sub i64 %call341, %conv368
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %issue.0)
  %cmp369 = icmp sgt i64 %sub, %issue.0
  br i1 %cmp369, label %if.end367.other_error_crit_edge, label %if.end372

if.end367.other_error_crit_edge:                  ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #14
  br label %other_error

if.end372:                                        ; preds = %if.end367
  %add = add nuw nsw i64 %issue.0, %conv368
  %107 = ptrtoint ptr %_expiry to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %add, ptr %_expiry, align 8
  %108 = load ptr, ptr @rxkad_decrypt_ticket.___tp_str.165, align 4
  %sub.ptr.rhs.cast377 = ptrtoint ptr %add.ptr340 to i32
  %sub.ptr.sub378 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast377
  %call379 = call ptr @memchr(ptr noundef %add.ptr340, i32 noundef 0, i32 noundef %sub.ptr.sub378) #18
  %tobool380.not = icmp eq ptr %call379, null
  %sub.ptr.lhs.cast382 = ptrtoint ptr %call379 to i32
  %sub.ptr.sub384 = sub i32 %sub.ptr.lhs.cast382, %sub.ptr.rhs.cast377
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub384)
  %cmp385 = icmp sgt i32 %sub.ptr.sub384, 40
  %or.cond612 = select i1 %tobool380.not, i1 true, i1 %cmp385
  br i1 %or.cond612, label %if.end372.bad_ticket_crit_edge, label %for.cond389.preheader

if.end372.bad_ticket_crit_edge:                   ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.cond389.preheader:                            ; preds = %if.end372
  %cmp390653 = icmp ult ptr %add.ptr340, %call379
  br i1 %cmp390653, label %for.body392.preheader, label %for.cond389.preheader.cleanup.cont408_crit_edge

for.cond389.preheader.cleanup.cont408_crit_edge:  ; preds = %for.cond389.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont408

for.body392.preheader:                            ; preds = %for.cond389.preheader
  %109 = sub i32 %sub.ptr.lhs.cast382, %ticket663
  %uglygep667 = getelementptr i8, ptr %ticket, i32 %109
  br label %for.body392

for.body392:                                      ; preds = %for.inc401.for.body392_crit_edge, %for.body392.preheader
  %p.6654 = phi ptr [ %incdec.ptr402, %for.inc401.for.body392_crit_edge ], [ %add.ptr340, %for.body392.preheader ]
  %110 = ptrtoint ptr %p.6654 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %p.6654, align 1
  %conv393 = zext i8 %111 to i32
  %arrayidx394 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv393
  %112 = ptrtoint ptr %arrayidx394 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx394, align 1
  %114 = and i8 %113, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp397.not = icmp eq i8 %114, 0
  br i1 %cmp397.not, label %for.body392.bad_ticket_crit_edge, label %for.inc401

for.body392.bad_ticket_crit_edge:                 ; preds = %for.body392
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.inc401:                                       ; preds = %for.body392
  %incdec.ptr402 = getelementptr i8, ptr %p.6654, i32 1
  %cmp390 = icmp ult ptr %incdec.ptr402, %call379
  br i1 %cmp390, label %for.inc401.for.body392_crit_edge, label %for.inc401.cleanup.cont408_crit_edge

for.inc401.cleanup.cont408_crit_edge:             ; preds = %for.inc401
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont408

for.inc401.for.body392_crit_edge:                 ; preds = %for.inc401
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body392

cleanup.cont408:                                  ; preds = %for.inc401.cleanup.cont408_crit_edge, %for.cond389.preheader.cleanup.cont408_crit_edge
  %p.6.lcssa = phi ptr [ %add.ptr340, %for.cond389.preheader.cleanup.cont408_crit_edge ], [ %uglygep667, %for.inc401.cleanup.cont408_crit_edge ]
  %incdec.ptr404 = getelementptr i8, ptr %p.6.lcssa, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %115 = load i32, ptr @rxrpc_debug, align 4
  %and410 = and i32 %115, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and410)
  %tobool411.not = icmp eq i32 %and410, 0
  br i1 %tobool411.not, label %cleanup.cont408.do.end430_crit_edge, label %do.end421, !prof !335

cleanup.cont408.do.end430_crit_edge:              ; preds = %cleanup.cont408
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end430

do.end421:                                        ; preds = %cleanup.cont408
  call void @__sanitizer_cov_trace_pc() #14
  %116 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i624 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i624 to ptr
  %task424 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %task424 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %task424, align 8
  %comm425 = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 101
  %call427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %comm425, ptr noundef %add.ptr340) #16
  br label %do.end430

do.end430:                                        ; preds = %do.end421, %cleanup.cont408.do.end430_crit_edge
  %120 = load ptr, ptr @rxkad_decrypt_ticket.___tp_str.170, align 4
  %sub.ptr.rhs.cast434 = ptrtoint ptr %incdec.ptr404 to i32
  %sub.ptr.sub435 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast434
  %call436 = call ptr @memchr(ptr noundef %incdec.ptr404, i32 noundef 0, i32 noundef %sub.ptr.sub435) #18
  %tobool437.not = icmp eq ptr %call436, null
  %sub.ptr.lhs.cast439 = ptrtoint ptr %call436 to i32
  %sub.ptr.sub441 = sub i32 %sub.ptr.lhs.cast439, %sub.ptr.rhs.cast434
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.ptr.sub441)
  %cmp442 = icmp sgt i32 %sub.ptr.sub441, 40
  %or.cond613 = select i1 %tobool437.not, i1 true, i1 %cmp442
  br i1 %or.cond613, label %do.end430.bad_ticket_crit_edge, label %for.cond446.preheader

do.end430.bad_ticket_crit_edge:                   ; preds = %do.end430
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

for.cond446.preheader:                            ; preds = %do.end430
  %cmp447656 = icmp ult ptr %incdec.ptr404, %call436
  br i1 %cmp447656, label %for.cond446.preheader.for.body449_crit_edge, label %for.cond446.preheader.cleanup.cont465_crit_edge

for.cond446.preheader.cleanup.cont465_crit_edge:  ; preds = %for.cond446.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont465

for.cond446.preheader.for.body449_crit_edge:      ; preds = %for.cond446.preheader
  br label %for.body449

for.cond446:                                      ; preds = %for.body449
  %incdec.ptr459 = getelementptr i8, ptr %p.8657, i32 1
  %cmp447 = icmp ult ptr %incdec.ptr459, %call436
  br i1 %cmp447, label %for.cond446.for.body449_crit_edge, label %for.cond446.cleanup.cont465_crit_edge

for.cond446.cleanup.cont465_crit_edge:            ; preds = %for.cond446
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont465

for.cond446.for.body449_crit_edge:                ; preds = %for.cond446
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body449

for.body449:                                      ; preds = %for.cond446.for.body449_crit_edge, %for.cond446.preheader.for.body449_crit_edge
  %p.8657 = phi ptr [ %incdec.ptr459, %for.cond446.for.body449_crit_edge ], [ %incdec.ptr404, %for.cond446.preheader.for.body449_crit_edge ]
  %121 = ptrtoint ptr %p.8657 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %p.8657, align 1
  %conv450 = zext i8 %122 to i32
  %arrayidx451 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv450
  %123 = ptrtoint ptr %arrayidx451 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx451, align 1
  %125 = and i8 %124, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp454.not = icmp eq i8 %125, 0
  br i1 %cmp454.not, label %for.body449.bad_ticket_crit_edge, label %for.cond446

for.body449.bad_ticket_crit_edge:                 ; preds = %for.body449
  call void @__sanitizer_cov_trace_pc() #14
  br label %bad_ticket

cleanup.cont465:                                  ; preds = %for.cond446.cleanup.cont465_crit_edge, %for.cond446.preheader.cleanup.cont465_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %126 = load i32, ptr @rxrpc_debug, align 4
  %and467 = and i32 %126, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and467)
  %tobool468.not = icmp eq i32 %and467, 0
  br i1 %tobool468.not, label %cleanup.cont465.cleanup488_crit_edge, label %do.end478, !prof !335

cleanup.cont465.cleanup488_crit_edge:             ; preds = %cleanup.cont465
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup488

do.end478:                                        ; preds = %cleanup.cont465
  call void @__sanitizer_cov_trace_pc() #14
  %127 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i625 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i625 to ptr
  %task481 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task481 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task481, align 8
  %comm482 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 101
  %call484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef %comm482, ptr noundef %incdec.ptr404) #16
  br label %cleanup488

bad_ticket:                                       ; preds = %for.body449.bad_ticket_crit_edge, %do.end430.bad_ticket_crit_edge, %for.body392.bad_ticket_crit_edge, %if.end372.bad_ticket_crit_edge, %do.end252.bad_ticket_crit_edge, %for.body214.bad_ticket_crit_edge, %do.end195.bad_ticket_crit_edge, %for.body157.bad_ticket_crit_edge, %do.end138.bad_ticket_crit_edge, %for.body.bad_ticket_crit_edge, %do.end90.bad_ticket_crit_edge
  %eproto.0 = phi ptr [ %75, %do.end252.bad_ticket_crit_edge ], [ %38, %do.end90.bad_ticket_crit_edge ], [ %51, %do.end138.bad_ticket_crit_edge ], [ %63, %do.end195.bad_ticket_crit_edge ], [ %108, %if.end372.bad_ticket_crit_edge ], [ %120, %do.end430.bad_ticket_crit_edge ], [ %120, %for.body449.bad_ticket_crit_edge ], [ %108, %for.body392.bad_ticket_crit_edge ], [ %63, %for.body214.bad_ticket_crit_edge ], [ %51, %for.body157.bad_ticket_crit_edge ], [ %38, %for.body.bad_ticket_crit_edge ]
  %serial = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %131 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %serial, align 4
  call fastcc void @trace_rxrpc_rx_eproto(ptr noundef null, i32 noundef %132, ptr noundef %eproto.0)
  br label %other_error

other_error:                                      ; preds = %bad_ticket, %if.end367.other_error_crit_edge, %do.end363.other_error_crit_edge
  %abort_code.0 = phi i32 [ 19270407, %bad_ticket ], [ 19270405, %do.end363.other_error_crit_edge ], [ 19270409, %if.end367.other_error_crit_edge ]
  %ret.0 = phi i32 [ -71, %bad_ticket ], [ -129, %do.end363.other_error_crit_edge ], [ -127, %if.end367.other_error_crit_edge ]
  %133 = ptrtoint ptr %_abort_code to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %abort_code.0, ptr %_abort_code, align 4
  br label %cleanup488

cleanup488:                                       ; preds = %other_error, %do.end478, %cleanup.cont465.cleanup488_crit_edge, %if.end55.cleanup488_crit_edge
  %retval.0 = phi i32 [ %ret.0, %other_error ], [ 0, %do.end478 ], [ 0, %cleanup.cont465.cleanup488_crit_edge ], [ -12, %if.end55.cleanup488_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rxkad_decrypt_response(ptr noundef %resp, ptr noundef %session_key) unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  %iv = alloca %struct.rxrpc_crypt, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rxkad_ci_req, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #12
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %2 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %3 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iv) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %4 = load i32, ptr @rxrpc_debug, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end, !prof !335

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 101
  %9 = ptrtoint ptr %session_key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %session_key, align 8
  %arrayidx4 = getelementptr [2 x i32], ptr %session_key, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %comm, ptr noundef nonnull @.str.175, i32 noundef %10, i32 noundef %12) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @rxkad_ci_mutex, i32 noundef 0) #12
  %13 = load ptr, ptr @rxkad_ci, align 4
  %call.i = tail call i32 @crypto_skcipher_setkey(ptr noundef %13, ptr noundef %session_key, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body11, label %if.end17

do.body11:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rxrpc/rxkad.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1138, 0\0A.popsection", ""() #12, !srcloc !361
  unreachable

if.end17:                                         ; preds = %do.end7
  %14 = ptrtoint ptr %session_key to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %session_key, align 8
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %iv, align 8
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #12
  %encrypted = getelementptr inbounds %struct.rxkad_response, ptr %resp, i32 0, i32 2
  %17 = ptrtoint ptr %encrypted to i32
  %cmp.i = icmp ugt ptr %encrypted, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end17.do.body5.i_crit_edge, !prof !335

if.end17.do.body5.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %18 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %18, %encrypted
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !335

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %19, %shr.i
  %call.i1 = call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !334

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end17.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !345
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %20, i32 %shr.i
  %21 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !335

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !346
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !335

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !347
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i2 = and i32 %17, 4095
  %and.i.i.i = and i32 %22, 3
  %or.i.i.i = or i32 %and.i.i.i, %23
  %24 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i.i, ptr %sg, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and.i2, ptr %1, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 40, ptr %2, align 4
  %27 = load ptr, ptr @rxkad_ci, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %27, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 3
  %28 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags4.i, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 2
  %32 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 3
  %33 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sg, ptr %dst2.i, align 4
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 40, ptr %0, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %0, i32 0, i32 1
  %35 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %iv, ptr %iv4.i, align 4
  %call23 = call i32 @crypto_skcipher_decrypt(ptr noundef %0) #12
  %36 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfm1.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 -128
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i.i, align 128
  %add.i3 = add i32 %39, 128
  %40 = call ptr @memset(ptr %0, i32 0, i32 %add.i3)
  call void asm sideeffect "", "r,~{memory}"(ptr %0) #12, !srcloc !338
  call void @mutex_unlock(ptr noundef nonnull @rxkad_ci_mutex) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rxrpc_debug to i32))
  %41 = load i32, ptr @rxrpc_debug, align 4
  %and25 = and i32 %41, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %sg_set_buf.exit.do.end45_crit_edge, label %do.end36, !prof !335

sg_set_buf.exit.do.end45_crit_edge:               ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

do.end36:                                         ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  %42 = call i32 @llvm.read_register.i32(metadata !324) #12
  %and.i4 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i4 to ptr
  %task39 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task39, align 8
  %comm40 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 101
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %comm40, ptr noundef nonnull @.str.175) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end36, %sg_set_buf.exit.do.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iv) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rxrpc_get_server_data_key(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rxrpc_abort(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !184, !185, !186, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !259, !260, !261, !263, !264, !266, !267, !268, !270, !271, !273, !274, !275, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303, !305, !306, !307, !309, !310, !311, !312, !314, !315, !316, !318, !319, !320, !322, !323}
!llvm.named.register.sp = !{!324}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rxrpc/rxkad.c", i32 1387, i32 13}
!2 = !{ptr @rxkad, !3, !"rxkad", i1 false, i1 false}
!3 = !{!"../net/rxrpc/rxkad.c", i32 1386, i32 29}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rxrpc/rxkad.c", i32 1357, i32 35}
!6 = !{ptr @rxkad_ci_req, !7, !"rxkad_ci_req", i1 false, i1 false}
!7 = !{!"../net/rxrpc/rxkad.c", i32 51, i32 33}
!8 = !{ptr @rxkad_ci, !9, !"rxkad_ci", i1 false, i1 false}
!9 = !{!"../net/rxrpc/rxkad.c", i32 50, i32 37}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rxrpc/rxkad.c", i32 68, i32 29}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rxrpc/rxkad.c", i32 70, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @rxkad_preparse_server_key._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @rxkad_preparse_server_key._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/rxrpc/rxkad.c", i32 78, i32 2}
!20 = !{ptr @rxkad_preparse_server_key._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rxkad_preparse_server_key._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rxrpc/rxkad.c", i32 106, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rxkad_init_connection_security._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @rxkad_init_connection_security._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rxrpc/rxkad.c", i32 112, i32 3}
!29 = !{ptr @rxkad_init_connection_security._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rxkad_init_connection_security._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rxrpc/rxkad.c", i32 141, i32 2}
!33 = !{ptr @rxkad_init_connection_security._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rxkad_init_connection_security._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/rxrpc/rxkad.c", i32 193, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rxkad_prime_packet_security._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rxkad_prime_packet_security._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @rxkad_prime_packet_security._entry.19, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../net/rxrpc/rxkad.c", i32 225, i32 2}
!42 = !{ptr @rxkad_prime_packet_security._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/rxrpc/rxkad.c", i32 382, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @rxkad_secure_packet._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @rxkad_secure_packet._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/rxrpc/rxkad.c", i32 434, i32 2}
!50 = !{ptr @rxkad_secure_packet._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rxkad_secure_packet._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/rxrpc/rxkad.c", i32 272, i32 2}
!54 = !{ptr @rxkad_secure_packet_auth._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rxkad_secure_packet_auth._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rxkad_secure_packet_auth._entry.27, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../net/rxrpc/rxkad.c", i32 296, i32 2}
!58 = !{ptr @rxkad_secure_packet_auth._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/rxrpc/rxkad.c", i32 320, i32 2}
!61 = !{ptr @rxkad_secure_packet_encrypt._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rxkad_secure_packet_encrypt._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @rxkad_secure_packet_encrypt._entry.30, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../net/rxrpc/rxkad.c", i32 358, i32 2}
!65 = !{ptr @rxkad_secure_packet_encrypt._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/rxrpc/rxkad.c", i32 626, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rxkad_verify_packet._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rxkad_verify_packet._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/rxrpc/rxkad.c", i32 658, i32 13}
!73 = !{ptr @rxkad_verify_packet.___tp_str, !72, !"___tp_str", i1 false, i1 false}
!74 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/trace/events/rxrpc.h", i32 1355, i32 1}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!79 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/rxrpc/rxkad.c", i32 454, i32 2}
!85 = !{ptr @rxkad_verify_packet_1._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rxkad_verify_packet_1._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/rxrpc/rxkad.c", i32 457, i32 13}
!89 = !{ptr @rxkad_verify_packet_1.___tp_str, !88, !"___tp_str", i1 false, i1 false}
!90 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/rxrpc/rxkad.c", i32 481, i32 13}
!93 = !{ptr @rxkad_verify_packet_1.___tp_str.42, !92, !"___tp_str", i1 false, i1 false}
!94 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/rxrpc/rxkad.c", i32 494, i32 13}
!97 = !{ptr @rxkad_verify_packet_1.___tp_str.45, !96, !"___tp_str", i1 false, i1 false}
!98 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/rxrpc/rxkad.c", i32 500, i32 13}
!101 = !{ptr @rxkad_verify_packet_1.___tp_str.48, !100, !"___tp_str", i1 false, i1 false}
!102 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/rxrpc/rxkad.c", i32 505, i32 2}
!105 = !{ptr @rxkad_verify_packet_1._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rxkad_verify_packet_1._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/rxrpc/rxkad.c", i32 531, i32 2}
!109 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @rxkad_verify_packet_2._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @rxkad_verify_packet_2._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/rxrpc/rxkad.c", i32 534, i32 13}
!114 = !{ptr @rxkad_verify_packet_2.___tp_str, !113, !"___tp_str", i1 false, i1 false}
!115 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/rxrpc/rxkad.c", i32 574, i32 13}
!118 = !{ptr @rxkad_verify_packet_2.___tp_str.58, !117, !"___tp_str", i1 false, i1 false}
!119 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/rxrpc/rxkad.c", i32 587, i32 13}
!122 = !{ptr @rxkad_verify_packet_2.___tp_str.61, !121, !"___tp_str", i1 false, i1 false}
!123 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/rxrpc/rxkad.c", i32 593, i32 13}
!126 = !{ptr @rxkad_verify_packet_2.___tp_str.64, !125, !"___tp_str", i1 false, i1 false}
!127 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @rxkad_verify_packet_2._entry.67, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../net/rxrpc/rxkad.c", i32 598, i32 2}
!130 = !{ptr @rxkad_verify_packet_2._entry_ptr.68, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/rxrpc/rxkad.c", i32 607, i32 2}
!133 = !{ptr @rxkad_verify_packet_2._entry.69, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @rxkad_verify_packet_2._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/rxrpc/rxkad.c", i32 739, i32 2}
!137 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @rxkad_issue_challenge._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @rxkad_issue_challenge._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/rxrpc/rxkad.c", i32 774, i32 2}
!142 = !{ptr @rxkad_issue_challenge._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rxkad_issue_challenge._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @rxkad_issue_challenge._entry.77, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../net/rxrpc/rxkad.c", i32 786, i32 2}
!146 = !{ptr @rxkad_issue_challenge._entry_ptr.78, !145, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/trace/events/rxrpc.h", i32 1457, i32 1}
!149 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/trace/events/rxrpc.h", i32 901, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/rxrpc/rxkad.c", i32 904, i32 2}
!155 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @rxkad_respond_to_challenge._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @rxkad_respond_to_challenge._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/rxrpc/rxkad.c", i32 906, i32 11}
!160 = !{ptr @rxkad_respond_to_challenge.___tp_str, !159, !"___tp_str", i1 false, i1 false}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/rxrpc/rxkad.c", i32 916, i32 11}
!163 = !{ptr @rxkad_respond_to_challenge.___tp_str.82, !162, !"___tp_str", i1 false, i1 false}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/rxrpc/rxkad.c", i32 926, i32 2}
!166 = !{ptr @rxkad_respond_to_challenge._entry.84, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rxkad_respond_to_challenge._entry_ptr.86, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/rxrpc/rxkad.c", i32 929, i32 11}
!170 = !{ptr @rxkad_respond_to_challenge.___tp_str.87, !169, !"___tp_str", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/rxrpc/rxkad.c", i32 805, i32 2}
!173 = !{ptr @rxkad_send_response._entry, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @rxkad_send_response._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/rxrpc/rxkad.c", i32 832, i32 2}
!177 = !{ptr @rxkad_send_response._entry.90, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @rxkad_send_response._entry_ptr.92, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @rxkad_send_response._entry.93, !180, !"_entry", i1 false, i1 false}
!180 = !{!"../net/rxrpc/rxkad.c", i32 842, i32 2}
!181 = !{ptr @rxkad_send_response._entry_ptr.94, !180, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.95, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/rxrpc/rxkad.c", i32 1173, i32 2}
!184 = !{ptr @rxkad_verify_response._entry, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @rxkad_verify_response._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/rxrpc/rxkad.c", i32 1188, i32 24}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/rxrpc/rxkad.c", i32 1200, i32 11}
!190 = !{ptr @rxkad_verify_response.___tp_str, !189, !"___tp_str", i1 false, i1 false}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/rxrpc/rxkad.c", i32 1209, i32 2}
!193 = !{ptr @rxkad_verify_response._entry.98, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @rxkad_verify_response._entry_ptr.100, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/rxrpc/rxkad.c", i32 1212, i32 11}
!197 = !{ptr @rxkad_verify_response.___tp_str.101, !196, !"___tp_str", i1 false, i1 false}
!198 = !{ptr @.str.104, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/rxrpc/rxkad.c", i32 1217, i32 11}
!200 = !{ptr @rxkad_verify_response.___tp_str.103, !199, !"___tp_str", i1 false, i1 false}
!201 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/rxrpc/rxkad.c", i32 1222, i32 11}
!203 = !{ptr @rxkad_verify_response.___tp_str.105, !202, !"___tp_str", i1 false, i1 false}
!204 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/rxrpc/rxkad.c", i32 1233, i32 11}
!206 = !{ptr @rxkad_verify_response.___tp_str.107, !205, !"___tp_str", i1 false, i1 false}
!207 = !{ptr @.str.110, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/rxrpc/rxkad.c", i32 1248, i32 11}
!209 = !{ptr @rxkad_verify_response.___tp_str.109, !208, !"___tp_str", i1 false, i1 false}
!210 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/rxrpc/rxkad.c", i32 1259, i32 11}
!212 = !{ptr @rxkad_verify_response.___tp_str.111, !211, !"___tp_str", i1 false, i1 false}
!213 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../net/rxrpc/rxkad.c", i32 1268, i32 12}
!215 = !{ptr @rxkad_verify_response.___tp_str.113, !214, !"___tp_str", i1 false, i1 false}
!216 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/rxrpc/rxkad.c", i32 1272, i32 12}
!218 = !{ptr @rxkad_verify_response.___tp_str.115, !217, !"___tp_str", i1 false, i1 false}
!219 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/rxrpc/rxkad.c", i32 1276, i32 12}
!221 = !{ptr @rxkad_verify_response.___tp_str.117, !220, !"___tp_str", i1 false, i1 false}
!222 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!223 = !{!"../net/rxrpc/rxkad.c", i32 1278, i32 11}
!224 = !{ptr @.str.119, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.121, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/rxrpc/rxkad.c", i32 1288, i32 11}
!227 = !{ptr @rxkad_verify_response.___tp_str.120, !226, !"___tp_str", i1 false, i1 false}
!228 = !{ptr @.str.123, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/rxrpc/rxkad.c", i32 1293, i32 11}
!230 = !{ptr @rxkad_verify_response.___tp_str.122, !229, !"___tp_str", i1 false, i1 false}
!231 = !{ptr @rxkad_verify_response._entry.124, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../net/rxrpc/rxkad.c", i32 1309, i32 2}
!233 = !{ptr @rxkad_verify_response._entry_ptr.125, !232, !"_entry_ptr", i1 false, i1 false}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../include/trace/events/rxrpc.h", i32 696, i32 1}
!236 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!237 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/rxrpc/rxkad.c", i32 999, i32 2}
!239 = !{ptr @rxkad_decrypt_ticket._entry, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @rxkad_decrypt_ticket._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/rxrpc/rxkad.c", i32 1003, i32 2}
!243 = !{ptr @rxkad_decrypt_ticket._entry.127, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @rxkad_decrypt_ticket._entry_ptr.129, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.131, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../net/rxrpc/rxkad.c", i32 1004, i32 2}
!247 = !{ptr @rxkad_decrypt_ticket._entry.130, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @rxkad_decrypt_ticket._entry_ptr.132, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.133, !246, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.135, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/rxrpc/rxkad.c", i32 1037, i32 2}
!252 = !{ptr @rxkad_decrypt_ticket._entry.134, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @rxkad_decrypt_ticket._entry_ptr.136, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.137, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/rxrpc/rxkad.c", i32 1042, i32 9}
!256 = !{ptr @rxkad_decrypt_ticket.___tp_str, !255, !"___tp_str", i1 false, i1 false}
!257 = !{ptr @.str.139, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../net/rxrpc/rxkad.c", i32 1043, i32 2}
!259 = !{ptr @rxkad_decrypt_ticket._entry.138, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @rxkad_decrypt_ticket._entry_ptr.140, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.142, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/rxrpc/rxkad.c", i32 1046, i32 9}
!263 = !{ptr @rxkad_decrypt_ticket.___tp_str.141, !262, !"___tp_str", i1 false, i1 false}
!264 = !{ptr @.str.144, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../net/rxrpc/rxkad.c", i32 1047, i32 2}
!266 = !{ptr @rxkad_decrypt_ticket._entry.143, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @rxkad_decrypt_ticket._entry_ptr.145, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.147, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/rxrpc/rxkad.c", i32 1050, i32 9}
!270 = !{ptr @rxkad_decrypt_ticket.___tp_str.146, !269, !"___tp_str", i1 false, i1 false}
!271 = !{ptr @.str.149, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../net/rxrpc/rxkad.c", i32 1051, i32 2}
!273 = !{ptr @rxkad_decrypt_ticket._entry.148, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @rxkad_decrypt_ticket._entry_ptr.150, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../net/rxrpc/rxkad.c", i32 1053, i32 11}
!277 = !{ptr @rxkad_decrypt_ticket.___tp_str.151, !276, !"___tp_str", i1 false, i1 false}
!278 = !{ptr @.str.154, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/rxrpc/rxkad.c", i32 1060, i32 2}
!280 = !{ptr @rxkad_decrypt_ticket._entry.153, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @rxkad_decrypt_ticket._entry_ptr.155, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.157, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../net/rxrpc/rxkad.c", i32 1065, i32 2}
!284 = !{ptr @rxkad_decrypt_ticket._entry.156, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @rxkad_decrypt_ticket._entry_ptr.158, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.160, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../net/rxrpc/rxkad.c", i32 1070, i32 2}
!288 = !{ptr @rxkad_decrypt_ticket._entry.159, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @rxkad_decrypt_ticket._entry_ptr.161, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.163, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/rxrpc/rxkad.c", i32 1084, i32 2}
!292 = !{ptr @rxkad_decrypt_ticket._entry.162, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @rxkad_decrypt_ticket._entry_ptr.164, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.166, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../net/rxrpc/rxkad.c", i32 1102, i32 9}
!296 = !{ptr @rxkad_decrypt_ticket.___tp_str.165, !295, !"___tp_str", i1 false, i1 false}
!297 = !{ptr @.str.168, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../net/rxrpc/rxkad.c", i32 1103, i32 2}
!299 = !{ptr @rxkad_decrypt_ticket._entry.167, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @rxkad_decrypt_ticket._entry_ptr.169, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @rxkad_decrypt_ticket.___tp_str.170, !302, !"___tp_str", i1 false, i1 false}
!302 = !{!"../net/rxrpc/rxkad.c", i32 1106, i32 9}
!303 = !{ptr @.str.172, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../net/rxrpc/rxkad.c", i32 1107, i32 2}
!305 = !{ptr @rxkad_decrypt_ticket._entry.171, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @rxkad_decrypt_ticket._entry_ptr.173, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.174, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../net/rxrpc/rxkad.c", i32 1132, i32 2}
!309 = !{ptr @.str.175, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @rxkad_decrypt_response._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @rxkad_decrypt_response._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.177, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../net/rxrpc/rxkad.c", i32 1152, i32 2}
!314 = !{ptr @rxkad_decrypt_response._entry.176, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @rxkad_decrypt_response._entry_ptr.178, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../net/rxrpc/rxkad.c", i32 52, i32 8}
!318 = !{ptr @.str.180, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @rxkad_ci_mutex, !317, !"rxkad_ci_mutex", i1 false, i1 false}
!320 = !{ptr @.str.181, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../net/rxrpc/rxkad.c", i32 1341, i32 2}
!322 = !{ptr @rxkad_clear._entry, !321, !"_entry", i1 false, i1 false}
!323 = !{ptr @rxkad_clear._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!324 = !{!"sp"}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{!"branch_weights", i32 1, i32 2000}
!335 = !{!"branch_weights", i32 2000, i32 1}
!336 = !{i64 2158207005, i64 2158207486, i64 2158207042, i64 2158207098, i64 2158207132, i64 2158207156, i64 2158207197, i64 2158207218, i64 2158207246, i64 2158207280}
!337 = !{i64 2158214080, i64 2158214562, i64 2158214117, i64 2158214173, i64 2158214207, i64 2158214231, i64 2158214272, i64 2158214293, i64 2158214321, i64 2158214355}
!338 = !{i64 2149262571}
!339 = !{!"auto-init"}
!340 = !{i64 2158252680, i64 2158253162, i64 2158252717, i64 2158252773, i64 2158252807, i64 2158252831, i64 2158252872, i64 2158252893, i64 2158252921, i64 2158252955}
!341 = !{i64 2158254261, i64 2158254743, i64 2158254298, i64 2158254354, i64 2158254388, i64 2158254412, i64 2158254453, i64 2158254474, i64 2158254502, i64 2158254536}
!342 = !{i64 2148300510}
!343 = !{i64 2148215819, i64 2148215851, i64 2148215880, i64 2148215914, i64 2148215945, i64 2148215968}
!344 = !{i64 2148300739}
!345 = !{i64 2154431171, i64 2154431663, i64 2154431208, i64 2154431264, i64 2154431298, i64 2154431322, i64 2154431363, i64 2154431384, i64 2154431412, i64 2154431446}
!346 = !{i64 2154424852, i64 2154425344, i64 2154424889, i64 2154424945, i64 2154424979, i64 2154425003, i64 2154425044, i64 2154425065, i64 2154425093, i64 2154425127}
!347 = !{i64 2154426462, i64 2154426954, i64 2154426499, i64 2154426555, i64 2154426589, i64 2154426613, i64 2154426654, i64 2154426675, i64 2154426703, i64 2154426737}
!348 = !{i64 2148773508, i64 2148773513, i64 2148773526, i64 2148773570, i64 2148773604, i64 2148773625}
!349 = !{i64 2158058453}
!350 = !{i64 2158058680}
!351 = !{i64 2150007915}
!352 = !{i64 2150008951}
!353 = !{i64 2158129237}
!354 = !{i64 2158129482}
!355 = !{i64 2157796435}
!356 = !{i64 2157796668}
!357 = !{i64 2157671221}
!358 = !{i64 2157671506}
!359 = !{i64 2158278895, i64 2158279378, i64 2158278932, i64 2158278988, i64 2158279022, i64 2158279046, i64 2158279087, i64 2158279108, i64 2158279136, i64 2158279170}
!360 = !{i64 2158282983, i64 2158283466, i64 2158283020, i64 2158283076, i64 2158283110, i64 2158283134, i64 2158283175, i64 2158283196, i64 2158283224, i64 2158283258}
!361 = !{i64 2158313287, i64 2158313770, i64 2158313324, i64 2158313380, i64 2158313414, i64 2158313438, i64 2158313479, i64 2158313500, i64 2158313528, i64 2158313562}
