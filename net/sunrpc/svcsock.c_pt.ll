; ModuleID = '/llk/IR_all_yes/net/sunrpc/svcsock.c_pt.bc'
source_filename = "../net/sunrpc/svcsock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+svc_sock_update_bufs\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_sock_update_bufs\09\09\09\09"
module asm "\09.long\09__crc_svc_sock_update_bufs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_sock_update_bufs:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_sock_update_bufs\22\09\09\09\09\09"
module asm "__kstrtabns_svc_sock_update_bufs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_alien_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_alien_sock\09\09\09\09"
module asm "\09.long\09__crc_svc_alien_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_alien_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_alien_sock\22\09\09\09\09\09"
module asm "__kstrtabns_svc_alien_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+svc_addsock\22, \22a\22\09"
module asm "\09.weak\09__crc_svc_addsock\09\09\09\09"
module asm "\09.long\09__crc_svc_addsock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_svc_addsock:\09\09\09\09\09"
module asm "\09.asciz \09\22svc_addsock\22\09\09\09\09\09"
module asm "__kstrtabns_svc_addsock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.svc_xprt_class = type { ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.svc_xprt_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%struct.atomic_t = type { i32 }
%union.anon.165 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.svc_serv = type { ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.timer_list, ptr, i32, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.73, [0 x i32], %union.anon.74, i16, i16, %union.anon.75, %struct.refcount_struct, [0 x i32], %union.anon.76 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.hlist_node }
%union.anon.75 = type { i32 }
%union.anon.76 = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.81, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.118, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.119, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.81 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.118 = type { ptr }
%union.anon.119 = type { ptr }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.svc_sock = type { %struct.svc_xprt, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.atomic_t, [259 x ptr] }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.anon.41 = type { i32, i32 }
%struct.anon.44 = type { i16, i16 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.122 }
%union.anon.122 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.ipv6_pinfo = type { %struct.in6_addr, %struct.in6_pktinfo, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.197, i16, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.inet6_cork }
%struct.in6_pktinfo = type { %struct.in6_addr, i32 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i16 }
%struct.inet6_cork = type { ptr, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.178, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.196, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.178 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.196 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.svc_stat = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.49, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.49 = type { ptr }
%struct.kvec = type { ptr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.170, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.anon.170 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.171, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.171 = type { %struct.rb_node }
%union.anon.202 = type { [8 x i32] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%union.anon.203 = type { [8 x i32] }

@svc_tcp_class = internal global { %struct.svc_xprt_class, [36 x i8] } { %struct.svc_xprt_class { ptr @.str, ptr null, ptr @svc_tcp_ops, %struct.list_head zeroinitializer, i32 1048576, i32 6 }, [36 x i8] zeroinitializer }, align 32
@svc_udp_class = internal global { %struct.svc_xprt_class, [36 x i8] } { %struct.svc_xprt_class { ptr @.str.37, ptr null, ptr @svc_udp_ops, %struct.list_head zeroinitializer, i32 32768, i32 17 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_svc_sock_update_bufs = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_sock_update_bufs = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_sock_update_bufs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_sock_update_bufs to i32), ptr @__kstrtab_svc_sock_update_bufs, ptr @__kstrtabns_svc_sock_update_bufs }, section "___ksymtab_gpl+svc_sock_update_bufs", align 4
@__kstrtab_svc_alien_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_alien_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_alien_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_alien_sock to i32), ptr @__kstrtab_svc_alien_sock, ptr @__kstrtabns_svc_alien_sock }, section "___ksymtab_gpl+svc_alien_sock", align 4
@__kstrtab_svc_addsock = external dso_local constant [0 x i8], align 1
@__kstrtabns_svc_addsock = external dso_local constant [0 x i8], align 1
@__ksymtab_svc_addsock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @svc_addsock to i32), ptr @__kstrtab_svc_addsock, ptr @__kstrtabns_svc_addsock }, section "___ksymtab_gpl+svc_addsock", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@svc_tcp_ops = internal constant { %struct.svc_xprt_ops, [52 x i8] } { %struct.svc_xprt_ops { ptr @svc_tcp_create, ptr @svc_tcp_accept, ptr @svc_tcp_has_wspace, ptr @svc_tcp_recvfrom, ptr @svc_tcp_sendto, ptr @svc_sock_result_payload, ptr @svc_tcp_release_rqst, ptr @svc_tcp_sock_detach, ptr @svc_sock_free, ptr @svc_sock_secure_port, ptr @svc_tcp_kill_temp_xprt }, [52 x i8] zeroinitializer }, align 32
@svc_create_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014svc: only UDP and TCP sockets supported\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"svc_create_socket\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sunrpc/svcsock.c\00", [43 x i8] zeroinitializer }, align 32
@svc_create_socket._entry_ptr = internal global ptr @svc_create_socket._entry, section ".printk_index", align 4
@svc_reclassify_socket.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@svc_reclassify_socket.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sk->sk_lock.wq\00", [16 x i8] zeroinitializer }, align 32
@svc_reclassify_socket.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(sk)->sk_lock.slock\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slock-AF_INET-NFSD\00", [45 x i8] zeroinitializer }, align 32
@svc_slock_key = internal global { [2 x %struct.lock_class_key], [16 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sk_xprt.xpt_lock-AF_INET-NFSD\00", [34 x i8] zeroinitializer }, align 32
@svc_key = internal global { [2 x %struct.lock_class_key], [16 x i8] } zeroinitializer, align 32
@svc_reclassify_socket.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@svc_reclassify_socket.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slock-AF_INET6-NFSD\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sk_xprt.xpt_lock-AF_INET6-NFSD\00", [33 x i8] zeroinitializer }, align 32
@svc_tcp_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: no more sockets!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svc_tcp_accept\00", [17 x i8] zeroinitializer }, align 32
@svc_tcp_accept._entry_ptr = internal global ptr @svc_tcp_accept._entry, section ".printk_index", align 4
@svc_tcp_accept._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: accept failed (err %d)!\0A\00", [33 x i8] zeroinitializer }, align 32
@svc_tcp_accept._entry_ptr.17 = internal global ptr @svc_tcp_accept._entry.15, section ".printk_index", align 4
@__tracepoint_svcsock_accept_err = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/sunrpc.h\00", [34 x i8] zeroinitializer }, align 32
@trace_svcsock_accept_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_svcsock_getpeername_err = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_getpeername_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%pISpc\00", [25 x i8] zeroinitializer }, align 32
@sock_is_loopback.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sunrpc/sunrpc.h\00", [44 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@svc_tcp_read_marker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015svc: %s %s RPC fragment too large: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"svc_tcp_read_marker\00", [44 x i8] zeroinitializer }, align 32
@svc_tcp_read_marker._entry_ptr = internal global ptr @svc_tcp_read_marker._entry, section ".printk_index", align 4
@__tracepoint_svcsock_marker = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_marker.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_svcsock_tcp_recv = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_tcp_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@receive_cb_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s: Got unrecognized reply: calldir 0x%x xpt_bc_xprt %p xid %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"receive_cb_reply\00", [47 x i8] zeroinitializer }, align 32
@receive_cb_reply._entry_ptr = internal global ptr @receive_cb_reply._entry, section ".printk_index", align 4
@__tracepoint_svcsock_tcp_recv_short = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_tcp_recv_short.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcsock_tcp_recv_eagain = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_tcp_recv_eagain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcsock_tcp_recv_err = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_tcp_recv_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svc_tcp_sendto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015rpc-srv/tcp: %s: %s %d when sending %d bytes - shutting down socket\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svc_tcp_sendto\00", [17 x i8] zeroinitializer }, align 32
@svc_tcp_sendto._entry_ptr = internal global ptr @svc_tcp_sendto._entry, section ".printk_index", align 4
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"got error\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sent\00", [27 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_svcsock_tcp_send = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_tcp_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@svc_tcp_clear_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@svc_udp_ops = internal constant { %struct.svc_xprt_ops, [52 x i8] } { %struct.svc_xprt_ops { ptr @svc_udp_create, ptr @svc_udp_accept, ptr @svc_udp_has_wspace, ptr @svc_udp_recvfrom, ptr @svc_udp_sendto, ptr @svc_sock_result_payload, ptr @svc_udp_release_rqst, ptr @svc_sock_detach, ptr @svc_sock_free, ptr @svc_sock_secure_port, ptr @svc_udp_kill_temp_xprt }, [52 x i8] zeroinitializer }, align 32
@svc_udp_recvfrom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014svc: received unknown control message %d/%d; dropping RPC reply datagram\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"svc_udp_recvfrom\00", [47 x i8] zeroinitializer }, align 32
@svc_udp_recvfrom._entry_ptr = internal global ptr @svc_udp_recvfrom._entry, section ".printk_index", align 4
@__tracepoint_svcsock_udp_recv = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_udp_recv.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcsock_udp_recv_err = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_udp_recv_err.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcsock_udp_send = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_udp_send.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_svcsock_data_ready = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_data_ready.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcsock_write_space = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_write_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"listener\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_svcsock_tcp_state = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_tcp_state.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_svcsock_new_socket = external dso_local global %struct.tracepoint, align 4
@trace_svcsock_new_socket.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipv4 %s %pI4 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipv6 %s %pI6 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"*unknown-%d*\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 6, i64 17]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 17]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 41]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"svc_tcp_class\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1222, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"svc_udp_class\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 651, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1223, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"svc_tcp_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1208, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1435, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"svc_slock_key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 79, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 90, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [8 x i8] c"svc_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 78, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 97, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 760, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 763, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [33 x i8] c"../include/trace/events/sunrpc.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 2171, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 108, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [35 x i8] c"../include/linux/sunrpc/svc_xprt.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 167, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"../net/sunrpc/sunrpc.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 45, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 695, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 723, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 902, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 717, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 106, i32 6 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 945, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1190, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 652, i32 14 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"svc_udp_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 637, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 533, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1251, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 253, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 202, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 209, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [24 x i8] c"../net/sunrpc/svcsock.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 216, i32 34 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab_svc_addsock, ptr @__ksymtab_svc_alien_sock, ptr @__ksymtab_svc_sock_update_bufs, ptr @receive_cb_reply._entry, ptr @receive_cb_reply._entry_ptr, ptr @svc_create_socket._entry, ptr @svc_create_socket._entry_ptr, ptr @svc_tcp_accept._entry, ptr @svc_tcp_accept._entry.15, ptr @svc_tcp_accept._entry_ptr, ptr @svc_tcp_accept._entry_ptr.17, ptr @svc_tcp_read_marker._entry, ptr @svc_tcp_read_marker._entry_ptr, ptr @svc_tcp_sendto._entry, ptr @svc_tcp_sendto._entry_ptr, ptr @svc_udp_recvfrom._entry, ptr @svc_udp_recvfrom._entry_ptr, ptr @svc_tcp_class, ptr @svc_udp_class, ptr @.str, ptr @svc_tcp_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @svc_reclassify_socket.__key, ptr @.str.4, ptr @svc_reclassify_socket.__key.5, ptr @.str.6, ptr @.str.7, ptr @svc_slock_key, ptr @.str.8, ptr @svc_key, ptr @svc_reclassify_socket.__key.9, ptr @svc_reclassify_socket.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @svc_udp_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_tcp_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_udp_class to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_tcp_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_create_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_reclassify_socket.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_reclassify_socket.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_slock_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_reclassify_socket.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_reclassify_socket.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_tcp_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_tcp_accept._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_tcp_read_marker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @receive_cb_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_tcp_sendto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_udp_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svc_udp_recvfrom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_init_xprt_sock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @svc_reg_xprt_class(ptr noundef nonnull @svc_tcp_class) #14
  %call1 = tail call i32 @svc_reg_xprt_class(ptr noundef nonnull @svc_udp_class) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_reg_xprt_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_cleanup_xprt_sock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @svc_unreg_xprt_class(ptr noundef nonnull @svc_tcp_class) #14
  tail call void @svc_unreg_xprt_class(ptr noundef nonnull @svc_udp_class) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_unreg_xprt_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svc_sock_update_bufs(ptr noundef %serv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sv_lock = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %sv_lock) #14
  %sv_permsocks = getelementptr inbounds %struct.svc_serv, ptr %serv, i32 0, i32 9
  %0 = ptrtoint ptr %sv_permsocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %sv_permsocks, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %sv_permsocks
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %xpt_flags = getelementptr i8, ptr %.pn17, i32 16
  tail call void @_set_bit(i32 noundef 7, ptr noundef %xpt_flags) #14
  %1 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, %sv_permsocks
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %sv_lock) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @svc_alien_sock(ptr noundef readnone %net, i32 noundef %fd) #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #14
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err, align 4, !annotation !163
  %call = call ptr @sockfd_lookup(i32 noundef %fd, ptr noundef nonnull %err) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %cmp = icmp ne ptr %4, %net
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %6) #14
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.1.off0 = phi i1 [ %cmp, %if.end ], [ false, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #14
  ret i1 %ret.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sockfd_lookup(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svc_addsock(ptr noundef %serv, i32 noundef %fd, ptr nocapture noundef writeonly %name_return, i32 noundef %len, ptr noundef %cred) #0 align 64 {
entry:
  %err = alloca i32, align 4
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #14
  %0 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %err, align 4
  %call = call ptr @sockfd_lookup(i32 noundef %fd, ptr noundef nonnull %err) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #14
  %1 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -97, ptr %err, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_family, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %if.end.out_crit_edge [
    i16 2, label %if.end.if.end9_crit_edge
    i16 10, label %if.end.if.end9_crit_edge65
  ]

if.end.if.end9_crit_edge65:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge65
  %10 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -93, ptr %err, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %6, i32 0, i32 46
  %11 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sk_protocol, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %12, label %if.end9.out_crit_edge [
    i16 6, label %if.end9.if.end21_crit_edge
    i16 17, label %if.end9.if.end21_crit_edge66
  ]

if.end9.if.end21_crit_edge66:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end21:                                         ; preds = %if.end9.if.end21_crit_edge, %if.end9.if.end21_crit_edge66
  %14 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -106, ptr %err, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp22 = icmp ugt i32 %16, 1
  br i1 %cmp22, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end25:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -2, ptr %err, align 4
  %call26 = call zeroext i1 @try_module_get(ptr noundef null) #14
  br i1 %call26, label %if.end28, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end28:                                         ; preds = %if.end25
  %call29 = call fastcc ptr @svc_setup_socket(ptr noundef %serv, ptr noundef nonnull %call, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  call void @module_put(ptr noundef null) #14
  %18 = ptrtoint ptr %call29 to i32
  %19 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %err, align 4
  br label %out

if.end33:                                         ; preds = %if.end28
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %call29, i32 0, i32 1
  %20 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_sock, align 4
  %call34 = call i32 @kernel_getsockname(ptr noundef %21, ptr noundef nonnull %addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34)
  %cmp35 = icmp sgt i32 %call34, -1
  br i1 %cmp35, label %if.then37, label %if.end33.if.end38_crit_edge

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %xpt_local.i = getelementptr inbounds %struct.svc_xprt, ptr %call29, i32 0, i32 13
  %22 = call ptr @memcpy(ptr %xpt_local.i, ptr %addr, i32 %call34)
  %xpt_locallen.i = getelementptr inbounds %struct.svc_xprt, ptr %call29, i32 0, i32 14
  %23 = ptrtoint ptr %xpt_locallen.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call34, ptr %xpt_locallen.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end33.if.end38_crit_edge
  %tobool.not.i = icmp eq ptr %cred, null
  br i1 %tobool.not.i, label %if.end38.get_cred.exit_crit_edge, label %do.body.i

if.end38.get_cred.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.end38
  %call.i.i = call zeroext i1 @creds_are_invalid(ptr noundef nonnull %cred) #14
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !164

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__invalid_creds(ptr noundef nonnull %cred, ptr noundef nonnull @.str.41, i32 noundef 253) #14
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %24 = getelementptr inbounds %struct.cred, ptr %cred, i32 0, i32 28
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %24, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cred, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr nonnull %cred, i32 1, i32 3, i32 1) #14
  %26 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %cred, ptr nonnull %cred, i32 1, ptr nonnull elementtype(i32) %cred) #14, !srcloc !165
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.end38.get_cred.exit_crit_edge
  %xpt_cred = getelementptr inbounds %struct.svc_xprt, ptr %call29, i32 0, i32 20
  %27 = ptrtoint ptr %xpt_cred to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cred, ptr %xpt_cred, align 4
  call void @svc_add_new_perm_xprt(ptr noundef %serv, ptr noundef %call29) #14
  %sk_sk.i = getelementptr inbounds %struct.svc_sock, ptr %call29, i32 0, i32 2
  %28 = ptrtoint ptr %sk_sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_sk.i, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %29, i32 0, i32 46
  %30 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %31)
  %cmp.i64 = icmp eq i16 %31, 17
  %cond.i = select i1 %cmp.i64, ptr @.str.37, ptr @.str
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %skc_family.i, align 8
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %33, label %sw.default.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  %skc_rcv_saddr.i = getelementptr inbounds %struct.anon.41, ptr %29, i32 0, i32 1
  %35 = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.44, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %skc_num.i, align 2
  %conv8.i = zext i16 %37 to i32
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_return, i32 noundef %len, ptr noundef nonnull @.str.42, ptr noundef nonnull %cond.i, ptr noundef %skc_rcv_saddr.i, i32 noundef %conv8.i) #14
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  %skc_v6_rcv_saddr.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 11
  %38 = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 2
  %skc_num15.i = getelementptr inbounds %struct.anon.44, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %skc_num15.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %skc_num15.i, align 2
  %conv16.i = zext i16 %40 to i32
  %call17.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_return, i32 noundef %len, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond.i, ptr noundef %skc_v6_rcv_saddr.i, i32 noundef %conv16.i) #14
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %get_cred.exit
  call void @__sanitizer_cov_trace_pc() #16
  %conv2.i = zext i16 %33 to i32
  %call21.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name_return, i32 noundef %len, ptr noundef nonnull @.str.44, i32 noundef %conv2.i) #14
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb10.i, %sw.bb.i
  %len.0.i = phi i32 [ %call21.i, %sw.default.i ], [ %call17.i, %sw.bb10.i ], [ %call9.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %len)
  %cmp22.not.i = icmp slt i32 %len.0.i, %len
  br i1 %cmp22.not.i, label %sw.epilog.i.cleanup_crit_edge, label %if.then.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %name_return to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %name_return, align 1
  br label %cleanup

out:                                              ; preds = %if.then31, %if.end25.out_crit_edge, %if.end21.out_crit_edge, %if.end9.out_crit_edge, %if.end.out_crit_edge
  %file = getelementptr inbounds %struct.socket, ptr %call, i32 0, i32 3
  %42 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %43) #14
  %44 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.i, %sw.epilog.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %45, %out ], [ %3, %if.then ], [ -36, %if.then.i ], [ %len.0.i, %sw.epilog.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_setup_socket(ptr noundef %serv, ptr noundef %sock, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1612) #17
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  br i1 %tobool.not, label %if.end9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.end9:                                          ; preds = %if.end
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %skc_family, align 8
  %conv = zext i16 %6 to i32
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %7 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_protocol, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %2, i32 0, i32 6
  %9 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %inet_sport, align 8
  %call8 = tail call i32 @svc_register(ptr noundef %serv, ptr noundef %4, i32 noundef %conv, i16 noundef zeroext %8, i16 noundef zeroext %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then11, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %11 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end13:                                         ; preds = %if.end9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %sk_sock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sock, ptr %sk_sock, align 4
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %sk_sk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %2, ptr %sk_sk, align 8
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 76
  %14 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_state_change, align 4
  %sk_ostate = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %sk_ostate to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %sk_ostate, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 77
  %17 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_data_ready, align 8
  %sk_odata = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %sk_odata to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sk_odata, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 78
  %20 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk_write_space, align 4
  %sk_owspace = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %sk_owspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sk_owspace, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !166
  tail call void @arm_heavy_mb() #14
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 72
  %23 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %sk_user_data, align 4
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %25)
  %cmp15 = icmp eq i16 %25, 2
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %26 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk_sock, align 4
  %sk.i = getelementptr inbounds %struct.socket, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk.i, align 16
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i.i, align 4
  tail call void @svc_xprt_init(ptr noundef %31, ptr noundef nonnull @svc_udp_class, ptr noundef nonnull %call7.i.i, ptr noundef %serv) #14
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %call7.i.i, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %xpt_flags.i) #14
  %32 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk_sk, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 77
  %34 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @svc_data_ready, ptr %sk_data_ready.i, align 8
  %35 = load ptr, ptr %sk_sk, align 8
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 78
  %36 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @svc_write_space, ptr %sk_write_space.i, align 4
  %xpt_server.i.i = getelementptr inbounds %struct.svc_xprt, ptr %call7.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %xpt_server.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xpt_server.i.i, align 8
  %sv_max_mesg.i.i = getelementptr inbounds %struct.svc_serv, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %sv_max_mesg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sv_max_mesg.i.i, align 4
  %41 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sk_sock, align 4
  %div.i.i = udiv i32 1073741823, %40
  %43 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 3) #14
  %sk.i.i = getelementptr inbounds %struct.socket, ptr %42, i32 0, i32 4
  %44 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk.i.i, align 16
  tail call void @lock_sock_nested(ptr noundef %45, i32 noundef 0) #14
  %mul.i.i = shl i32 %40, 1
  %mul1.i.i = mul i32 %43, %mul.i.i
  %46 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk.i.i, align 16
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul1.i.i, ptr %sk_sndbuf.i.i, align 4
  %49 = load ptr, ptr %sk.i.i, align 16
  %sk_rcvbuf.i.i = getelementptr inbounds %struct.sock, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %sk_rcvbuf.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul1.i.i, ptr %sk_rcvbuf.i.i, align 8
  %51 = load ptr, ptr %sk.i.i, align 16
  %sk_write_space.i.i = getelementptr inbounds %struct.sock, ptr %51, i32 0, i32 78
  %52 = ptrtoint ptr %sk_write_space.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sk_write_space.i.i, align 4
  tail call void %53(ptr noundef %51) #14
  %54 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk.i.i, align 16
  tail call void @release_sock(ptr noundef %55) #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %xpt_flags.i) #14
  tail call void @_set_bit(i32 noundef 7, ptr noundef %xpt_flags.i) #14
  %56 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk_sk, align 8
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %skc_family.i, align 8
  %60 = zext i16 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %59, label %do.body.i [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sk_sock, align 4
  %sk9.i = getelementptr inbounds %struct.socket, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %sk9.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sk9.i, align 16
  tail call void @ip_sock_set_pktinfo(ptr noundef %64) #14
  br label %if.end18

sw.bb10.i:                                        ; preds = %if.then17
  %65 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sk_sock, align 4
  %sk12.i = getelementptr inbounds %struct.socket, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %sk12.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sk12.i, align 16
  tail call void @lock_sock_nested(ptr noundef %68, i32 noundef 0) #14
  %skc_state.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %skc_state.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load volatile i8, ptr %skc_state.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %70 to i32
  %shl.i.i.i.i = shl nuw i32 1, %conv.i.i.i.i
  %and.i.i.i.i = and i32 %shl.i.i.i.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sw.bb10.i.ip6_sock_set_recvpktinfo.exit.i_crit_edge, label %cond.true.i.i.i

sw.bb10.i.ip6_sock_set_recvpktinfo.exit.i_crit_edge: ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ip6_sock_set_recvpktinfo.exit.i

cond.true.i.i.i:                                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #16
  %pinet6.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %pinet6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pinet6.i.i.i, align 8
  br label %ip6_sock_set_recvpktinfo.exit.i

ip6_sock_set_recvpktinfo.exit.i:                  ; preds = %cond.true.i.i.i, %sw.bb10.i.ip6_sock_set_recvpktinfo.exit.i_crit_edge
  %cond.i.i.i = phi ptr [ %72, %cond.true.i.i.i ], [ null, %sw.bb10.i.ip6_sock_set_recvpktinfo.exit.i_crit_edge ]
  %rxopt.i.i = getelementptr inbounds %struct.ipv6_pinfo, ptr %cond.i.i.i, i32 0, i32 9
  %73 = ptrtoint ptr %rxopt.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i.i = load i16, ptr %rxopt.i.i, align 4
  %bf.set.i.i = or i16 %bf.load.i.i, 8192
  store i16 %bf.set.i.i, ptr %rxopt.i.i, align 4
  tail call void @release_sock(ptr noundef %68) #14
  br label %if.end18

do.body.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 686, 0\0A.popsection", ""() #14, !srcloc !167
  unreachable

if.else:                                          ; preds = %if.end13
  %74 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sk_sk, align 8
  %76 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk_sock, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sk1.i, align 16
  %skc_net.i.i48 = getelementptr inbounds %struct.sock_common, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %skc_net.i.i48 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %skc_net.i.i48, align 4
  tail call void @svc_xprt_init(ptr noundef %81, ptr noundef nonnull @svc_tcp_class, ptr noundef nonnull %call7.i.i, ptr noundef %serv) #14
  %xpt_flags.i49 = getelementptr inbounds %struct.svc_xprt, ptr %call7.i.i, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %xpt_flags.i49) #14
  tail call void @_set_bit(i32 noundef 14, ptr noundef %xpt_flags.i49) #14
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %75, i32 0, i32 4
  %82 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %83)
  %cmp.i = icmp eq i8 %83, 10
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %call7.i.i, i32 0, i32 17
  %84 = call ptr @memcpy(ptr %xpt_remotebuf.i, ptr @.str.40, i32 9)
  tail call void @_set_bit(i32 noundef 10, ptr noundef %xpt_flags.i49) #14
  %sk_data_ready.i50 = getelementptr inbounds %struct.sock, ptr %75, i32 0, i32 77
  %85 = ptrtoint ptr %sk_data_ready.i50 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @svc_tcp_listen_data_ready, ptr %sk_data_ready.i50, align 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %xpt_flags.i49) #14
  br label %if.end18

if.else.i:                                        ; preds = %if.else
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %75, i32 0, i32 76
  %86 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @svc_tcp_state_change, ptr %sk_state_change.i, align 4
  %sk_data_ready12.i = getelementptr inbounds %struct.sock, ptr %75, i32 0, i32 77
  %87 = ptrtoint ptr %sk_data_ready12.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @svc_data_ready, ptr %sk_data_ready12.i, align 8
  %sk_write_space.i51 = getelementptr inbounds %struct.sock, ptr %75, i32 0, i32 78
  %88 = ptrtoint ptr %sk_write_space.i51 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @svc_write_space, ptr %sk_write_space.i51, align 4
  %sk_marker.i = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %sk_marker.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %sk_marker.i, align 8
  %sk_tcplen.i = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 7
  %90 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %sk_tcplen.i, align 4
  %sk_datalen.i = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 8
  %91 = ptrtoint ptr %sk_datalen.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %sk_datalen.i, align 8
  %sk_pages.i = getelementptr inbounds %struct.svc_sock, ptr %call7.i.i, i32 0, i32 10
  %92 = call ptr @memset(ptr %sk_pages.i, i32 0, i32 1036)
  tail call void @tcp_sock_set_nodelay(ptr noundef %75) #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %xpt_flags.i49) #14
  %93 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load volatile i8, ptr %skc_state.i, align 2
  %95 = zext i8 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %94, label %sw.default.i [
    i8 3, label %if.else.i.if.end18_crit_edge
    i8 1, label %if.else.i.if.end18_crit_edge54
  ]

if.else.i.if.end18_crit_edge54:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.else.i.if.end18_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @svc_xprt_deferred_close(ptr noundef nonnull %call7.i.i) #14
  br label %if.end18

if.end18:                                         ; preds = %sw.default.i, %if.else.i.if.end18_crit_edge, %if.else.i.if.end18_crit_edge54, %if.then.i, %ip6_sock_set_recvpktinfo.exit.i, %sw.bb.i
  tail call fastcc void @trace_svcsock_new_socket(ptr noundef %sock)
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %11, %if.then11 ], [ %call7.i.i, %if.end18 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_add_new_perm_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_tcp_create(ptr noundef %serv, ptr noundef %net, ptr noundef %sa, i32 noundef %salen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @svc_create_socket(ptr noundef %serv, i32 noundef 6, ptr noundef %net, ptr noundef %sa, i32 noundef %salen, i32 noundef %flags)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_tcp_accept(ptr noundef %xprt) #0 align 64 {
entry:
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  %newsock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #14
  %0 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %xpt_server = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 6
  %1 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xpt_server, align 4
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 1
  %3 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_sock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newsock) #14
  %5 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %newsock, align 4, !annotation !163
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %xpt_flags) #14
  %call = call i32 @kernel_accept(ptr noundef nonnull %4, ptr noundef nonnull %newsock, i32 noundef 2048) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then2, label %if.end25

if.then2:                                         ; preds = %if.end
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call, label %do.body9 [
    i32 -12, label %do.end
    i32 -11, label %if.then2.if.end23_crit_edge
  ]

if.then2.if.end23_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %sv_name = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 13
  %7 = ptrtoint ptr %sv_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sv_name, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %8) #18
  br label %if.end23

do.body9:                                         ; preds = %if.then2
  %call10 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body9.if.end23_crit_edge, label %do.end15

do.body9.if.end23_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #16
  %sv_name17 = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 13
  %9 = ptrtoint ptr %sv_name17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sv_name17, align 4
  %sub = sub i32 0, %call
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %10, i32 noundef %sub) #18
  br label %if.end23

if.end23:                                         ; preds = %do.end15, %do.body9.if.end23_crit_edge, %do.end, %if.then2.if.end23_crit_edge
  %sv_name24 = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 13
  %11 = ptrtoint ptr %sv_name24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sv_name24, align 4
  call fastcc void @trace_svcsock_accept_err(ptr noundef %xprt, ptr noundef %12, i32 noundef %call)
  br label %cleanup

if.end25:                                         ; preds = %if.end
  call void @_set_bit(i32 noundef 1, ptr noundef %xpt_flags) #14
  %13 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %newsock, align 4
  %call28 = call i32 @kernel_getpeername(ptr noundef %14, ptr noundef nonnull %addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %sv_name31 = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 13
  %15 = ptrtoint ptr %sv_name31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sv_name31, align 4
  call fastcc void @trace_svcsock_getpeername_err(ptr noundef %xprt, ptr noundef %16, i32 noundef %call28)
  br label %failed

if.end32:                                         ; preds = %if.end25
  %sk_ostate = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 3
  %17 = ptrtoint ptr %sk_ostate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_ostate, align 4
  %19 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %newsock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sk, align 16
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %22, i32 0, i32 76
  %23 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %18, ptr %sk_state_change, align 4
  %sk_odata = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 4
  %24 = ptrtoint ptr %sk_odata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_odata, align 4
  %26 = load ptr, ptr %sk, align 16
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %26, i32 0, i32 77
  %27 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %sk_data_ready, align 8
  %sk_owspace = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 5
  %28 = ptrtoint ptr %sk_owspace to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk_owspace, align 4
  %30 = load ptr, ptr %sk, align 16
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 78
  %31 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %sk_write_space, align 4
  %32 = load ptr, ptr %sk, align 16
  %sk_sndtimeo = getelementptr inbounds %struct.sock, ptr %32, i32 0, i32 31
  %33 = ptrtoint ptr %sk_sndtimeo to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3000, ptr %sk_sndtimeo, align 8
  %call36 = call fastcc ptr @svc_setup_socket(ptr noundef %2, ptr noundef %20, i32 noundef 3)
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end32.failed_crit_edge, label %if.end39

if.end32.failed_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %failed

if.end39:                                         ; preds = %if.end32
  %xpt_remote.i = getelementptr inbounds %struct.svc_xprt, ptr %call36, i32 0, i32 15
  %34 = call ptr @memcpy(ptr %xpt_remote.i, ptr %addr, i32 %call28)
  %xpt_remotelen.i = getelementptr inbounds %struct.svc_xprt, ptr %call36, i32 0, i32 16
  %35 = ptrtoint ptr %xpt_remotelen.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call28, ptr %xpt_remotelen.i, align 4
  %xpt_remotebuf.i = getelementptr inbounds %struct.svc_xprt, ptr %call36, i32 0, i32 17
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %xpt_remotebuf.i, i32 noundef 57, ptr noundef nonnull @.str.21, ptr noundef nonnull %addr) #14
  %36 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %newsock, align 4
  %call41 = call i32 @kernel_getsockname(ptr noundef %37, ptr noundef nonnull %addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then45, label %if.end39.if.end46_crit_edge, !prof !164

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end39.if.end46_crit_edge
  %slen.0 = phi i32 [ 2, %if.then45 ], [ %call41, %if.end39.if.end46_crit_edge ]
  %xpt_local.i = getelementptr inbounds %struct.svc_xprt, ptr %call36, i32 0, i32 13
  %38 = call ptr @memcpy(ptr %xpt_local.i, ptr %addr, i32 %slen.0)
  %xpt_locallen.i = getelementptr inbounds %struct.svc_xprt, ptr %call36, i32 0, i32 14
  %39 = ptrtoint ptr %xpt_locallen.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %slen.0, ptr %xpt_locallen.i, align 4
  %40 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %newsock, align 4
  %sk48 = getelementptr inbounds %struct.socket, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %sk48 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk48, align 16
  %44 = call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %47, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.end46.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end46.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end46
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 696, ptr noundef nonnull @.str.24) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end46.rcu_read_lock.exit.i_crit_edge
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %43, i32 0, i32 19
  %48 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %call.i105 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b20.i = load i1, ptr @sock_is_loopback.__warned, align 1
  br i1 %.b20.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @sock_is_loopback.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 45, ptr noundef nonnull @.str.19) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %49, null
  br i1 %tobool9.not.i, label %do.end7.i.if.end16.i_crit_edge, label %land.lhs.true10.i

do.end7.i.if.end16.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true10.i:                                ; preds = %do.end7.i
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool11.not.i = icmp eq ptr %51, null
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.end16.i_crit_edge, label %land.lhs.true12.i

land.lhs.true10.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #16
  %features.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i, align 16
  %and.i = lshr i64 %53, 42
  %54 = trunc i64 %and.i to i32
  %55 = and i32 %54, 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true12.i, %land.lhs.true10.i.if.end16.i_crit_edge, %do.end7.i.if.end16.i_crit_edge
  %loopback.0.i = phi i32 [ 0, %land.lhs.true10.i.if.end16.i_crit_edge ], [ 0, %do.end7.i.if.end16.i_crit_edge ], [ %55, %land.lhs.true12.i ]
  %call.i21.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i21.i, label %if.end16.i.sock_is_loopback.exit_crit_edge, label %land.lhs.true.i24.i

if.end16.i.sock_is_loopback.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_is_loopback.exit

land.lhs.true.i24.i:                              ; preds = %if.end16.i
  %call1.i22.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool.not.i23.i, label %land.lhs.true.i24.i.sock_is_loopback.exit_crit_edge, label %land.lhs.true2.i26.i

land.lhs.true.i24.i.sock_is_loopback.exit_crit_edge: ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_is_loopback.exit

land.lhs.true2.i26.i:                             ; preds = %land.lhs.true.i24.i
  %.b4.i25.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i25.i, label %land.lhs.true2.i26.i.sock_is_loopback.exit_crit_edge, label %if.then.i27.i

land.lhs.true2.i26.i.sock_is_loopback.exit_crit_edge: ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_is_loopback.exit

if.then.i27.i:                                    ; preds = %land.lhs.true2.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 724, ptr noundef nonnull @.str.25) #14
  br label %sock_is_loopback.exit

sock_is_loopback.exit:                            ; preds = %if.then.i27.i, %land.lhs.true2.i26.i.sock_is_loopback.exit_crit_edge, %land.lhs.true.i24.i.sock_is_loopback.exit_crit_edge, %if.end16.i.sock_is_loopback.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %56 = call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i.i28.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i28.i to ptr
  %preempt_count.i.i.i.i29.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i29.i, align 4
  %sub.i.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i29.i, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loopback.0.i)
  %tobool50.not = icmp eq i32 %loopback.0.i, 0
  %xpt_flags56 = getelementptr inbounds %struct.svc_xprt, ptr %call36, i32 0, i32 5
  br i1 %tobool50.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %sock_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 12, ptr noundef %xpt_flags56) #14
  br label %if.end57

if.else54:                                        ; preds = %sock_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 12, ptr noundef %xpt_flags56) #14
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then51
  %sv_stats = getelementptr inbounds %struct.svc_serv, ptr %2, i32 0, i32 1
  %60 = ptrtoint ptr %sv_stats to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sv_stats, align 4
  %tobool58.not = icmp eq ptr %61, null
  br i1 %tobool58.not, label %if.end57.cleanup_crit_edge, label %if.then59

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %nettcpconn = getelementptr inbounds %struct.svc_stat, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %nettcpconn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nettcpconn, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %nettcpconn, align 4
  br label %cleanup

failed:                                           ; preds = %if.end32.failed_crit_edge, %if.then30
  %64 = ptrtoint ptr %newsock to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %newsock, align 4
  call void @sock_release(ptr noundef %65) #14
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.then59, %if.end57.cleanup_crit_edge, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end23 ], [ null, %failed ], [ null, %entry.cleanup_crit_edge ], [ %call36, %if.then59 ], [ %call36, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newsock) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #14
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_tcp_has_wspace(ptr noundef %xprt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 5
  %0 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %xpt_flags, align 4
  %2 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 1
  %3 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk_sock, align 4
  %flags = getelementptr inbounds %struct.socket, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = lshr i32 %6, 2
  %.lobit = and i32 %7, 1
  %8 = xor i32 %.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_tcp_recvfrom(ptr noundef %rqstp) #0 align 64 {
entry:
  %msg.i166 = alloca %struct.msghdr, align 8
  %msg.i = alloca %struct.msghdr, align 8
  %iov.i = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %xpt_server = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_server, align 4
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %xpt_flags) #14
  %sk_tcplen.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_tcplen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i = icmp ult i32 %5, 4
  br i1 %cmp.i, label %if.then.i, label %entry.svc_tcp_read_marker.exit_crit_edge

entry.svc_tcp_read_marker.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_read_marker.exit

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #14
  %6 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov.i) #14
  %7 = getelementptr inbounds %struct.kvec, ptr %iov.i, i32 0, i32 1
  %sub.i = sub nuw nsw i32 4, %5
  %sk_marker.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 6
  %add.ptr.i = getelementptr i8, ptr %sk_marker.i, i32 %5
  %8 = ptrtoint ptr %iov.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %iov.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %7, align 4
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg.i, i32 0, i32 2
  call void @iov_iter_kvec(ptr noundef %msg_iter.i, i32 noundef 0, ptr noundef nonnull %iov.i, i32 noundef 1, i32 noundef %sub.i) #14
  %sk_sock.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %sk_sock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_sock.i, align 4
  %call.i = call i32 @sock_recvmsg(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %cleanup.thread.i, label %if.end.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #14
  br label %error

if.end.i:                                         ; preds = %if.then.i
  %12 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_tcplen.i, align 4
  %add.i = add i32 %13, %call.i
  store i32 %add.i, ptr %sk_tcplen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.i)
  %cmp6.i = icmp ult i32 %call.i, %sub.i
  br i1 %cmp6.i, label %cleanup.i, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %sk_marker.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_marker.i, align 4
  call fastcc void @trace_svcsock_marker(ptr noundef %1, i32 noundef %15) #14
  %16 = ptrtoint ptr %sk_marker.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sk_marker.i, align 4
  %and.i.i = and i32 %17, 2147483647
  %sk_datalen.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %sk_datalen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_datalen.i, align 4
  %add11.i = add i32 %and.i.i, %19
  %20 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xpt_server, align 4
  %sv_max_mesg.i = getelementptr inbounds %struct.svc_serv, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %sv_max_mesg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sv_max_mesg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i, i32 %23)
  %cmp13.i = icmp ugt i32 %add11.i, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #14
  br i1 %cmp13.i, label %do.body.i, label %if.end8.i.svc_tcp_read_marker.exit_crit_edge

if.end8.i.svc_tcp_read_marker.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_read_marker.exit

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov.i) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #14
  br label %if.end87

do.body.i:                                        ; preds = %if.end8.i
  %call19.i = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end28.i_crit_edge, label %do.end.i

do.body.i.do.end28.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end28.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xpt_server, align 4
  %sv_name.i = getelementptr inbounds %struct.svc_serv, ptr %25, i32 0, i32 13
  %26 = ptrtoint ptr %sv_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sv_name.i, align 4
  %28 = ptrtoint ptr %sk_marker.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sk_marker.i, align 4
  %and.i4.i = and i32 %29, 2147483647
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %27, i32 noundef %and.i4.i) #18
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end.i, %do.body.i.do.end28.i_crit_edge
  call void @svc_xprt_deferred_close(ptr noundef %1) #14
  br label %if.end87

svc_tcp_read_marker.exit:                         ; preds = %if.end8.i.svc_tcp_read_marker.exit_crit_edge, %entry.svc_tcp_read_marker.exit_crit_edge
  %sk_marker.i1.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %sk_marker.i1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sk_marker.i1.i, align 4
  %and.i2.i = and i32 %31, 2147483647
  %call2 = call fastcc i32 @svc_tcp_restore_pages(ptr noundef %1, ptr noundef %rqstp)
  %32 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_tcplen.i, align 4
  %sub.neg = add nuw i32 %and.i2.i, 4
  %sub3 = sub i32 %sub.neg, %33
  %add = add i32 %sub3, %call2
  %34 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rq_xprt, align 8
  %rq_bvec.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 26
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i166) #14
  %36 = call ptr @memset(ptr %msg.i166, i32 0, i32 56)
  %rq_xprt_hlen.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 14
  %37 = ptrtoint ptr %rq_xprt_hlen.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rq_xprt_hlen.i, align 4
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %35, i32 0, i32 5
  call void @_clear_bit(i32 noundef 3, ptr noundef %xpt_flags.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp46.not.i = icmp eq i32 %add, 0
  br i1 %cmp46.not.i, label %svc_tcp_read_marker.exit.for.end.i_crit_edge, label %svc_tcp_read_marker.exit.for.body.i_crit_edge

svc_tcp_read_marker.exit.for.body.i_crit_edge:    ; preds = %svc_tcp_read_marker.exit
  br label %for.body.i

svc_tcp_read_marker.exit.for.end.i_crit_edge:     ; preds = %svc_tcp_read_marker.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %svc_tcp_read_marker.exit.for.body.i_crit_edge
  %t.048.i = phi i32 [ %add.i167, %for.body.i.for.body.i_crit_edge ], [ 0, %svc_tcp_read_marker.exit.for.body.i_crit_edge ]
  %i.047.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %svc_tcp_read_marker.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 %i.047.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %i.047.i
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %arrayidx1.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %i.047.i, i32 1
  %41 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4096, ptr %bv_len.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %i.047.i, i32 2
  %42 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %bv_offset.i, align 4
  %inc.i = add i32 %i.047.i, 1
  %add.i167 = add i32 %t.048.i, 4096
  %cmp.i168 = icmp ult i32 %add.i167, %add
  br i1 %cmp.i168, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %svc_tcp_read_marker.exit.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %svc_tcp_read_marker.exit.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 %i.0.lcssa.i
  %rq_respages.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %43 = ptrtoint ptr %rq_respages.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx5.i, ptr %rq_respages.i, align 4
  %add.ptr7.i = getelementptr ptr, ptr %arrayidx5.i, i32 1
  %rq_next_page.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %44 = ptrtoint ptr %rq_next_page.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr7.i, ptr %rq_next_page.i, align 8
  %msg_iter.i169 = getelementptr inbounds %struct.msghdr, ptr %msg.i166, i32 0, i32 2
  call void @iov_iter_bvec(ptr noundef %msg_iter.i169, i32 noundef 0, ptr noundef %rq_bvec.i, i32 noundef %i.0.lcssa.i, i32 noundef %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not.i170 = icmp eq i32 %call2, 0
  br i1 %tobool.not.i170, label %for.end.i.if.end.i174_crit_edge, label %if.then.i171

for.end.i.if.end.i174_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i174

if.then.i171:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @iov_iter_advance(ptr noundef %msg_iter.i169, i32 noundef %call2) #14
  br label %if.end.i174

if.end.i174:                                      ; preds = %if.then.i171, %for.end.i.if.end.i174_crit_edge
  %buflen.addr.0.i = phi i32 [ %sub3, %if.then.i171 ], [ %add, %for.end.i.if.end.i174_crit_edge ]
  %sk_sock.i172 = getelementptr inbounds %struct.svc_sock, ptr %35, i32 0, i32 1
  %45 = ptrtoint ptr %sk_sock.i172 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk_sock.i172, align 4
  %call.i173 = call i32 @sock_recvmsg(ptr noundef %46, ptr noundef nonnull %msg.i166, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp9.i = icmp sgt i32 %call.i173, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end.i174.if.end11.i_crit_edge

if.end.i174.if.end11.i_crit_edge:                 ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i174
  %add.i.i = add i32 %call.i173, %call2
  %and.i.i175 = and i32 %call2, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %and.i.i175)
  %cmp.i.i.i = icmp ult i32 %add.i.i, %and.i.i175
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end38.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then10.i
  %.b1.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.end11.i_crit_edge, label %if.then.i.i.i, !prof !170

land.rhs.i.i.i.if.end11.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.30) #14
  br label %if.end11.i

if.end38.i.i.i:                                   ; preds = %if.then10.i
  %sub.i.i.i = sub i32 %add.i.i, %and.i.i175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i175)
  %tobool40.not3.i.i.i = icmp eq i32 %and.i.i175, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge: ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bvec_iter_advance.exit.i.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %and.i.i175, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ 0, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %idx.04.i.i.i, i32 1
  %47 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %48)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %48
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge: ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bvec_iter_advance.exit.i.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %48
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs41.i.i.i

while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %bvec_iter_advance.exit.i.i

bvec_iter_advance.exit.i.i:                       ; preds = %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge, %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge
  %bi.sroa.12.0.i.i = phi i32 [ 0, %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ]
  %bi.sroa.19.0.i.i = phi i32 [ 0, %if.end38.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ 0, %while.body.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.bvec_iter_advance.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not67.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not67.i.i, label %bvec_iter_advance.exit.i.i.if.end11.i_crit_edge, label %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge

bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge: ; preds = %bvec_iter_advance.exit.i.i
  br label %land.rhs.i.i

bvec_iter_advance.exit.i.i.if.end11.i_crit_edge:  ; preds = %bvec_iter_advance.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge
  %bi.sroa.19.170.i.i = phi i32 [ %spec.select66.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %bi.sroa.19.0.i.i, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.12.169.i.i = phi i32 [ %spec.select.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %bi.sroa.12.0.i.i, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge ]
  %bi.sroa.4.168.i.i = phi i32 [ %sub.i52.i.i, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %sub.i.i.i, %bvec_iter_advance.exit.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %bi.sroa.12.169.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %bi.sroa.12.169.i.i, i32 2
  %51 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bv_offset.i.i, align 4
  %add5.i.i = add i32 %52, %bi.sroa.19.170.i.i
  %div43.i.i = lshr i32 %add5.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %50, i32 %div43.i.i
  %bv_len9.i.i = getelementptr %struct.bio_vec, ptr %rq_bvec.i, i32 %bi.sroa.12.169.i.i, i32 1
  %53 = ptrtoint ptr %bv_len9.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bv_len9.i.i, align 4
  %sub.i.i = sub i32 %54, %bi.sroa.19.170.i.i
  %55 = call i32 @llvm.umin.i32(i32 %bi.sroa.4.168.i.i, i32 %sub.i.i) #14
  %rem.i.i = and i32 %add5.i.i, 4095
  %sub16.i.i = sub nuw nsw i32 4096, %rem.i.i
  %56 = call i32 @llvm.umin.i32(i32 %55, i32 %sub16.i.i) #14
  call void @flush_dcache_page(ptr noundef %add.ptr.i.i) #14
  %add.i45.i.i = add i32 %56, %bi.sroa.19.170.i.i
  %57 = ptrtoint ptr %bv_len9.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_len9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i45.i.i, i32 %58)
  %cmp.i48.i.i = icmp eq i32 %add.i45.i.i, %58
  %inc.i49.i.i = zext i1 %cmp.i48.i.i to i32
  %spec.select.i.i = add i32 %bi.sroa.12.169.i.i, %inc.i49.i.i
  %spec.select66.i.i = select i1 %cmp.i48.i.i, i32 0, i32 %add.i45.i.i
  %sub.i52.i.i = sub i32 %bi.sroa.4.168.i.i, %56
  %tobool.not.i.i = icmp eq i32 %sub.i52.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.if.end11.i_crit_edge, label %land.rhs.i.i.land.rhs.i.i_crit_edge

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i.i

land.rhs.i.i.if.end11.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.rhs.i.i.if.end11.i_crit_edge, %bvec_iter_advance.exit.i.i.if.end11.i_crit_edge, %if.then.i.i.i, %land.rhs.i.i.i.if.end11.i_crit_edge, %if.end.i174.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i173, i32 %buflen.addr.0.i)
  %cmp12.i = icmp eq i32 %call.i173, %buflen.addr.0.i
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.svc_tcp_read_msg.exit_crit_edge

if.end11.i.svc_tcp_read_msg.exit_crit_edge:       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_read_msg.exit

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 3, ptr noundef %xpt_flags.i) #14
  br label %svc_tcp_read_msg.exit

svc_tcp_read_msg.exit:                            ; preds = %if.then13.i, %if.end11.i.svc_tcp_read_msg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i166) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i173)
  %cmp5 = icmp sgt i32 %call.i173, -1
  br i1 %cmp5, label %if.then6, label %svc_tcp_read_msg.exit.if.end11_crit_edge

svc_tcp_read_msg.exit.if.end11_crit_edge:         ; preds = %svc_tcp_read_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then6:                                         ; preds = %svc_tcp_read_msg.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @trace_svcsock_tcp_recv(ptr noundef %1, i32 noundef %call.i173)
  %59 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sk_tcplen.i, align 4
  %add9 = add i32 %60, %call.i173
  store i32 %add9, ptr %sk_tcplen.i, align 4
  %sk_datalen = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 8
  %61 = ptrtoint ptr %sk_datalen to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sk_datalen, align 4
  %add10 = add i32 %62, %call.i173
  store i32 %add10, ptr %sk_datalen, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %svc_tcp_read_msg.exit.if.end11_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i173, i32 %sub3)
  %cmp12.not = icmp eq i32 %call.i173, %sub3
  br i1 %cmp12.not, label %lor.lhs.false, label %if.end11.err_incomplete_crit_edge

if.end11.err_incomplete_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_incomplete

lor.lhs.false:                                    ; preds = %if.end11
  %63 = ptrtoint ptr %sk_marker.i1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sk_marker.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %tobool.not = icmp sgt i32 %64, -1
  br i1 %tobool.not, label %lor.lhs.false.err_incomplete_crit_edge, label %if.end15

lor.lhs.false.err_incomplete_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_incomplete

if.end15:                                         ; preds = %lor.lhs.false
  %sk_datalen16 = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 8
  %65 = ptrtoint ptr %sk_datalen16 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sk_datalen16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %66)
  %cmp17 = icmp ult i32 %66, 8
  br i1 %cmp17, label %err_nuts, label %if.end19

if.end19:                                         ; preds = %if.end15
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %len21 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %67 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %len21, align 8
  %page_base = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 4
  %68 = ptrtoint ptr %page_base to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %page_base, align 8
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %69 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %70)
  %cmp26.not = icmp ugt i32 %66, %70
  br i1 %cmp26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %71 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %66, ptr %iov_len, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %sub41 = sub i32 %66, %70
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then27
  %.sink = phi i32 [ %sub41, %if.else ], [ 0, %if.then27 ]
  %72 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink, ptr %72, align 4
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %74 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %rq_xprt_ctxt, align 4
  %rq_prot = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 31
  %75 = ptrtoint ptr %rq_prot to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 6, ptr %rq_prot, align 4
  %76 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %xpt_flags, align 4
  %78 = and i32 %77, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool48.not = icmp eq i32 %78, 0
  %rq_flags51 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  br i1 %tobool48.not, label %if.else50, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 1, ptr noundef %rq_flags51) #14
  br label %if.end52

if.else50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  call void @_clear_bit(i32 noundef 1, ptr noundef %rq_flags51) #14
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then49
  %79 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rq_arg, align 8
  %arrayidx56 = getelementptr i32, ptr %80, i32 1
  %81 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool57.not = icmp eq i32 %82, 0
  br i1 %tobool57.not, label %if.end52.if.end60_crit_edge, label %if.then58

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then58:                                        ; preds = %if.end52
  %xpt_bc_xprt.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 21
  %83 = ptrtoint ptr %xpt_bc_xprt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xpt_bc_xprt.i, align 4
  %85 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %80, align 4
  %tobool.not.i177 = icmp eq ptr %84, null
  br i1 %tobool.not.i177, label %error.thread, label %if.end.i179

error.thread:                                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %sk_datalen16 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %sk_datalen16, align 4
  %88 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %sk_tcplen.i, align 4
  %89 = ptrtoint ptr %sk_marker.i1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %sk_marker.i1.i, align 4
  br label %if.end87

if.end.i179:                                      ; preds = %if.then58
  %queue_lock.i = getelementptr inbounds %struct.rpc_xprt, ptr %84, i32 0, i32 35
  call void @_raw_spin_lock(ptr noundef %queue_lock.i) #14
  %call.i178 = call ptr @xprt_lookup_rqst(ptr noundef nonnull %84, i32 noundef %86) #14
  %tobool1.not.i = icmp eq ptr %call.i178, null
  br i1 %tobool1.not.i, label %do.end.i181, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i179
  %rq_private_buf.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i178, i32 0, i32 20
  %rq_rcv_buf.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i178, i32 0, i32 2
  %90 = call ptr @memcpy(ptr %rq_private_buf.i, ptr %rq_rcv_buf.i, i32 44)
  %iov_len.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i178, i32 0, i32 20, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %iov_len.i, align 4
  %93 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %iov_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp.i180 = icmp ult i32 %92, %94
  br i1 %cmp.i180, label %if.end3.i.cleanup.sink.split.i_crit_edge, label %if.end12.i

if.end3.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split.i

if.end12.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %rq_private_buf.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rq_private_buf.i, align 4
  %97 = ptrtoint ptr %rq_arg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rq_arg, align 4
  %99 = call ptr @memcpy(ptr %96, ptr %98, i32 %94)
  %rq_task.i = getelementptr inbounds %struct.rpc_rqst, ptr %call.i178, i32 0, i32 3
  %100 = ptrtoint ptr %rq_task.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rq_task.i, align 4
  %102 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len21, align 8
  call void @xprt_complete_rqst(ptr noundef %101, i32 noundef %103) #14
  %104 = ptrtoint ptr %len21 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %len21, align 8
  br label %cleanup.sink.split.i

do.end.i181:                                      ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %82, ptr noundef nonnull %84, i32 noundef %86) #18
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end.i181, %if.end12.i, %if.end3.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ 0, %if.end12.i ], [ -11, %if.end3.i.cleanup.sink.split.i_crit_edge ], [ -11, %do.end.i181 ]
  call void @_raw_spin_unlock(ptr noundef %queue_lock.i) #14
  br label %if.end60

if.end60:                                         ; preds = %cleanup.sink.split.i, %if.end52.if.end60_crit_edge
  %len.0 = phi i32 [ %sub3, %if.end52.if.end60_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %105 = ptrtoint ptr %sk_datalen16 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %sk_datalen16, align 4
  %106 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %sk_tcplen.i, align 4
  %107 = ptrtoint ptr %sk_marker.i1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %sk_marker.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp62 = icmp slt i32 %len.0, 0
  br i1 %cmp62, label %if.end60.error_crit_edge, label %if.end64

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %error

if.end64:                                         ; preds = %if.end60
  call void @svc_xprt_copy_addrs(ptr noundef %rqstp, ptr noundef %1) #14
  %sv_stats = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 1
  %108 = ptrtoint ptr %sv_stats to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sv_stats, align 4
  %tobool66.not = icmp eq ptr %109, null
  br i1 %tobool66.not, label %if.end64.if.end69_crit_edge, label %if.then67

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  %nettcpcnt = getelementptr inbounds %struct.svc_stat, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %nettcpcnt to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nettcpcnt, align 4
  %inc = add i32 %111, 1
  store i32 %inc, ptr %nettcpcnt, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  %112 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rq_xprt, align 8
  call void @svc_xprt_received(ptr noundef %113) #14
  %114 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len21, align 8
  br label %cleanup

err_incomplete:                                   ; preds = %lor.lhs.false.err_incomplete_crit_edge, %if.end11.err_incomplete_crit_edge
  %sk_datalen.i185 = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 8
  %116 = ptrtoint ptr %sk_datalen.i185 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sk_datalen.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i186 = icmp eq i32 %117, 0
  br i1 %cmp.i186, label %err_incomplete.svc_tcp_save_pages.exit_crit_edge, label %if.end.i188

err_incomplete.svc_tcp_save_pages.exit_crit_edge: ; preds = %err_incomplete
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_save_pages.exit

if.end.i188:                                      ; preds = %err_incomplete
  %sub.i187 = add i32 %117, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i187)
  %cmp215.not.i = icmp ult i32 %sub.i187, 4096
  br i1 %cmp215.not.i, label %if.end.i188.svc_tcp_save_pages.exit_crit_edge, label %for.body.preheader.i

if.end.i188.svc_tcp_save_pages.exit_crit_edge:    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_save_pages.exit

for.body.preheader.i:                             ; preds = %if.end.i188
  %shr.i189 = lshr i32 %sub.i187, 12
  br label %for.body.i192

for.body.i192:                                    ; preds = %for.body.i192.for.body.i192_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc.i191, %for.body.i192.for.body.i192_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i190 = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 %i.016.i
  %118 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i190, align 4
  %arrayidx3.i = getelementptr %struct.svc_sock, ptr %1, i32 0, i32 10, i32 %i.016.i
  %120 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %arrayidx3.i, align 4
  store ptr null, ptr %arrayidx.i190, align 4
  %inc.i191 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i191, %shr.i189
  br i1 %exitcond.not.i, label %for.body.i192.svc_tcp_save_pages.exit_crit_edge, label %for.body.i192.for.body.i192_crit_edge

for.body.i192.for.body.i192_crit_edge:            ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i192

for.body.i192.svc_tcp_save_pages.exit_crit_edge:  ; preds = %for.body.i192
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_save_pages.exit

svc_tcp_save_pages.exit:                          ; preds = %for.body.i192.svc_tcp_save_pages.exit_crit_edge, %if.end.i188.svc_tcp_save_pages.exit_crit_edge, %err_incomplete.svc_tcp_save_pages.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call.i173)
  %cmp74.not = icmp eq i32 %call.i173, -11
  %or.cond = or i1 %cmp5, %cmp74.not
  br i1 %or.cond, label %if.end76, label %svc_tcp_save_pages.exit.err_delete_crit_edge

svc_tcp_save_pages.exit.err_delete_crit_edge:     ; preds = %svc_tcp_save_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_delete

if.end76:                                         ; preds = %svc_tcp_save_pages.exit
  br i1 %cmp12.not, label %if.then78, label %if.else79

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %sk_tcplen.i, align 4
  %122 = ptrtoint ptr %sk_marker.i1.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %sk_marker.i1.i, align 4
  br label %err_noclose

if.else79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  %123 = ptrtoint ptr %sk_marker.i1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sk_marker.i1.i, align 4
  %and.i197 = and i32 %124, 2147483647
  %125 = ptrtoint ptr %sk_tcplen.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %sk_tcplen.i, align 4
  %sub83 = add i32 %126, -4
  call fastcc void @trace_svcsock_tcp_recv_short(ptr noundef %1, i32 noundef %and.i197, i32 noundef %sub83)
  br label %err_noclose

error:                                            ; preds = %if.end60.error_crit_edge, %cleanup.thread.i
  %len.1 = phi i32 [ %len.0, %if.end60.error_crit_edge ], [ %call.i, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %len.1)
  %cmp85.not = icmp eq i32 %len.1, -11
  br i1 %cmp85.not, label %error.if.end87_crit_edge, label %error.err_delete_crit_edge

error.err_delete_crit_edge:                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_delete

error.if.end87_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.end87:                                         ; preds = %error.if.end87_crit_edge, %error.thread, %do.end28.i, %cleanup.i
  call fastcc void @trace_svcsock_tcp_recv_eagain(ptr noundef %1)
  br label %err_noclose

err_nuts:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %sk_datalen16 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %sk_datalen16, align 4
  br label %err_delete

err_delete:                                       ; preds = %err_nuts, %error.err_delete_crit_edge, %svc_tcp_save_pages.exit.err_delete_crit_edge
  %len.2 = phi i32 [ %len.1, %error.err_delete_crit_edge ], [ %sub3, %err_nuts ], [ %call.i173, %svc_tcp_save_pages.exit.err_delete_crit_edge ]
  call fastcc void @trace_svcsock_tcp_recv_err(ptr noundef %1, i32 noundef %len.2)
  call void @svc_xprt_deferred_close(ptr noundef %1) #14
  br label %err_noclose

err_noclose:                                      ; preds = %err_delete, %if.end87, %if.else79, %if.then78
  %128 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rq_xprt, align 8
  call void @svc_xprt_received(ptr noundef %129) #14
  br label %cleanup

cleanup:                                          ; preds = %err_noclose, %if.end69
  %retval.0 = phi i32 [ 0, %err_noclose ], [ %115, %if.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_tcp_sendto(ptr noundef %rqstp) #0 align 64 {
entry:
  %marker.addr.i = alloca i32, align 4
  %rm.i = alloca %struct.kvec, align 4
  %msg.i = alloca %struct.msghdr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 8
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %rq_xprt_ctxt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %4 = ptrtoint ptr %rq_xprt_ctxt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_xprt_ctxt.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.svc_tcp_release_rqst.exit_crit_edge, label %if.then.i

entry.svc_tcp_release_rqst.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_tcp_release_rqst.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %rq_xprt_ctxt.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %rq_xprt_ctxt.i, align 4
  %sk_sk.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %sk_sk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_sk.i, align 4
  tail call void @__skb_free_datagram_locked(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 0) #14
  br label %svc_tcp_release_rqst.exit

svc_tcp_release_rqst.exit:                        ; preds = %if.then.i, %entry.svc_tcp_release_rqst.exit_crit_edge
  %sk_sendqlen = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_sendqlen, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_sendqlen, i32 1, i32 3, i32 1) #14
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_sendqlen, ptr %sk_sendqlen, i32 1, ptr elementtype(i32) %sk_sendqlen) #14, !srcloc !165
  %xpt_mutex = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %xpt_mutex, i32 noundef 0) #14
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %xpt_flags.i, align 4
  %12 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %svc_xprt_is_dead.exit, label %svc_tcp_release_rqst.exit.out_notconn_crit_edge

svc_tcp_release_rqst.exit.out_notconn_crit_edge:  ; preds = %svc_tcp_release_rqst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_notconn

svc_xprt_is_dead.exit:                            ; preds = %svc_tcp_release_rqst.exit
  %13 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %xpt_flags.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3.i.not = icmp eq i32 %15, 0
  br i1 %cmp3.i.not, label %if.end, label %svc_xprt_is_dead.exit.out_notconn_crit_edge

svc_xprt_is_dead.exit.out_notconn_crit_edge:      ; preds = %svc_xprt_is_dead.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_notconn

if.end:                                           ; preds = %svc_xprt_is_dead.exit
  %or = or i32 %3, -2147483648
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk_sk, align 4
  tail call void @tcp_sock_set_cork(ptr noundef %17, i1 noundef zeroext true) #14
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_sock, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %marker.addr.i)
  %20 = ptrtoint ptr %marker.addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %marker.addr.i, align 4
  %tail2.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rm.i) #14
  %21 = getelementptr inbounds %struct.kvec, ptr %rm.i, i32 0, i32 1
  %22 = ptrtoint ptr %rm.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %marker.addr.i, ptr %rm.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #14
  %24 = call ptr @memset(ptr %msg.i, i32 0, i32 56)
  %call.i = call i32 @xdr_alloc_bvec(ptr noundef %rq_res, i32 noundef 3264) #14
  %call5.i = call i32 @kernel_sendmsg(ptr noundef %19, ptr noundef nonnull %msg.i, ptr noundef nonnull %rm.i, i32 noundef 1, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %26)
  %cmp7.not.i = icmp eq i32 %call5.i, %26
  br i1 %cmp7.not.i, label %if.end9.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end9.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %rq_res to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rq_res, align 4
  %30 = ptrtoint ptr %29 to i32
  %sub.i.i = add i32 %30, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %30, 4095
  %iov_len.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iov_len.i.i, align 4
  %call.i.i60 = call i32 @kernel_sendpage(ptr noundef %19, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %32, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp11.i = icmp slt i32 %call.i.i60, 0
  br i1 %cmp11.i, label %if.end9.i.do.end_crit_edge, label %if.end13.i

if.end9.i.do.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end13.i:                                       ; preds = %if.end9.i
  %add14.i = add nuw i32 %call.i.i60, %call5.i
  %33 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iov_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i60, i32 %34)
  %cmp16.not.i = icmp eq i32 %call.i.i60, %34
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end13.i.cond.false_crit_edge

if.end13.i.cond.false_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

if.end18.i:                                       ; preds = %if.end13.i
  %page_len.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 5
  %35 = ptrtoint ptr %page_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %page_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i61 = icmp eq i32 %36, 0
  br i1 %tobool.not.i61, label %if.end18.i.if.end38.i_crit_edge, label %if.then19.i

if.end18.i.if.end38.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.then19.i:                                      ; preds = %if.end18.i
  %bvec20.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 2
  %37 = ptrtoint ptr %bvec20.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bvec20.i, align 4
  %page_base.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 4
  %39 = ptrtoint ptr %page_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page_base.i, align 4
  %shr.i = lshr i32 %40, 12
  %add.ptr.i = getelementptr %struct.bio_vec, ptr %38, i32 %shr.i
  %and.i = and i32 %40, 4095
  br label %while.body.i

while.body.i:                                     ; preds = %if.end33.i.while.body.i_crit_edge, %if.then19.i
  %sent.0 = phi i32 [ %add14.i, %if.then19.i ], [ %add30.i, %if.end33.i.while.body.i_crit_edge ]
  %bvec.0107.i = phi ptr [ %add.ptr.i, %if.then19.i ], [ %incdec.ptr.i, %if.end33.i.while.body.i_crit_edge ]
  %remaining.0106.i = phi i32 [ %36, %if.then19.i ], [ %sub34.i, %if.end33.i.while.body.i_crit_edge ]
  %offset.0105.i = phi i32 [ %and.i, %if.then19.i ], [ 0, %if.end33.i.while.body.i_crit_edge ]
  %bv_len.i = getelementptr inbounds %struct.bio_vec, ptr %bvec.0107.i, i32 0, i32 1
  %41 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bv_len.i, align 4
  %sub.i = sub i32 %42, %offset.0105.i
  %43 = call i32 @llvm.umin.i32(i32 %remaining.0106.i, i32 %sub.i) #14
  %44 = ptrtoint ptr %bvec.0107.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bvec.0107.i, align 4
  %bv_offset.i = getelementptr inbounds %struct.bio_vec, ptr %bvec.0107.i, i32 0, i32 2
  %46 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bv_offset.i, align 4
  %add25.i = add i32 %47, %offset.0105.i
  %call26.i = call i32 @kernel_sendpage(ptr noundef %19, ptr noundef %45, i32 noundef %add25.i, i32 noundef %43, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %while.body.i.do.end_crit_edge, label %if.end29.i

while.body.i.do.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end29.i:                                       ; preds = %while.body.i
  %add30.i = add i32 %call26.i, %sent.0
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %43)
  %cmp31.not.i = icmp eq i32 %call26.i, %43
  br i1 %cmp31.not.i, label %if.end33.i, label %if.end29.i.cond.false_crit_edge

if.end29.i.cond.false_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

if.end33.i:                                       ; preds = %if.end29.i
  %sub34.i = sub i32 %remaining.0106.i, %43
  %incdec.ptr.i = getelementptr %struct.bio_vec, ptr %bvec.0107.i, i32 1
  %cmp23.not.i = icmp eq i32 %sub34.i, 0
  br i1 %cmp23.not.i, label %if.end33.i.if.end38.i_crit_edge, label %if.end33.i.while.body.i_crit_edge

if.end33.i.while.body.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end33.i.if.end38.i_crit_edge, %if.end18.i.if.end38.i_crit_edge
  %sent.1 = phi i32 [ %add14.i, %if.end18.i.if.end38.i_crit_edge ], [ %add30.i, %if.end33.i.if.end38.i_crit_edge ]
  %iov_len39.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %iov_len39.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iov_len39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool40.not.i = icmp eq i32 %49, 0
  br i1 %tobool40.not.i, label %if.end38.i.cond.false_crit_edge, label %if.then41.i

if.end38.i.cond.false_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false

if.then41.i:                                      ; preds = %if.end38.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %50 = load ptr, ptr @mem_map, align 4
  %51 = ptrtoint ptr %tail2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail2.i, align 4
  %53 = ptrtoint ptr %52 to i32
  %sub.i93.i = add i32 %53, 1073741824
  %shr.i94.i = lshr i32 %sub.i93.i, 12
  %add.ptr.i95.i = getelementptr %struct.page, ptr %50, i32 %shr.i94.i
  %and.i96.i = and i32 %53, 4095
  %call.i98.i = call i32 @kernel_sendpage(ptr noundef %19, ptr noundef %add.ptr.i95.i, i32 noundef %and.i96.i, i32 noundef %49, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %cmp43.i = icmp slt i32 %call.i98.i, 0
  br i1 %cmp43.i, label %if.then41.i.do.end_crit_edge, label %if.end45.i

if.then41.i.do.end_crit_edge:                     ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end45.i:                                       ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  %add46.i = add i32 %call.i98.i, %sent.1
  br label %cond.false

cond.false:                                       ; preds = %if.end45.i, %if.end38.i.cond.false_crit_edge, %if.end29.i.cond.false_crit_edge, %if.end13.i.cond.false_crit_edge
  %sent.2 = phi i32 [ %sent.1, %if.end38.i.cond.false_crit_edge ], [ %add46.i, %if.end45.i ], [ %add14.i, %if.end13.i.cond.false_crit_edge ], [ %add30.i, %if.end29.i.cond.false_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rm.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %marker.addr.i)
  call void @xdr_free_bvec(ptr noundef %rq_res) #14
  call fastcc void @trace_svcsock_tcp_send(ptr noundef %1, i32 noundef %sent.2)
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %add = add i32 %55, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sent.2, i32 %add)
  %cmp4.not = icmp eq i32 %sent.2, %add
  br i1 %cmp4.not, label %if.end6, label %cond.false.cond.end21_crit_edge

cond.false.cond.end21_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end21

if.end6:                                          ; preds = %cond.false
  %call.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_sendqlen, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !171
  call void @llvm.prefetch.p0(ptr %sk_sendqlen, i32 1, i32 3, i32 1) #14
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_sendqlen, ptr %sk_sendqlen, i32 1, ptr elementtype(i32) %sk_sendqlen) #14, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then9, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk_sk, align 4
  call void @tcp_sock_set_cork(ptr noundef %58, i1 noundef zeroext false) #14
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %xpt_mutex) #14
  br label %cleanup

out_notconn:                                      ; preds = %svc_xprt_is_dead.exit.out_notconn_crit_edge, %svc_tcp_release_rqst.exit.out_notconn_crit_edge
  %call.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_sendqlen, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %sk_sendqlen, i32 1, i32 3, i32 1) #14
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_sendqlen, ptr %sk_sendqlen, i32 1, ptr elementtype(i32) %sk_sendqlen) #14, !srcloc !174
  tail call void @mutex_unlock(ptr noundef %xpt_mutex) #14
  br label %cleanup

do.end:                                           ; preds = %if.then41.i.do.end_crit_edge, %while.body.i.do.end_crit_edge, %if.end9.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.1.i.ph = phi i32 [ %call.i98.i, %if.then41.i.do.end_crit_edge ], [ %call.i.i60, %if.end9.i.do.end_crit_edge ], [ -11, %if.end.i.do.end_crit_edge ], [ %call5.i, %if.end.do.end_crit_edge ], [ %call26.i, %while.body.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rm.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %marker.addr.i)
  call void @xdr_free_bvec(ptr noundef %rq_res) #14
  call fastcc void @trace_svcsock_tcp_send(ptr noundef %1, i32 noundef %retval.1.i.ph)
  br label %cond.end21

cond.end21:                                       ; preds = %do.end, %cond.false.cond.end21_crit_edge
  %cond1786 = phi ptr [ @.str.35, %do.end ], [ @.str.36, %cond.false.cond.end21_crit_edge ]
  %cond22 = phi i32 [ %retval.1.i.ph, %do.end ], [ %sent.2, %cond.false.cond.end21_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn.in, align 4
  %.in = getelementptr inbounds %struct.svc_serv, ptr %.pn, i32 0, i32 13
  %61 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.in, align 4
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %62, ptr noundef nonnull %cond1786, i32 noundef %cond22, i32 noundef %64) #18
  call void @svc_xprt_deferred_close(ptr noundef %1) #14
  %call.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_sendqlen, i32 noundef 4) #14
  call void @llvm.prefetch.p0(ptr %sk_sendqlen, i32 1, i32 3, i32 1) #14
  %65 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_sendqlen, ptr %sk_sendqlen, i32 1, ptr elementtype(i32) %sk_sendqlen) #14, !srcloc !174
  call void @mutex_unlock(ptr noundef %xpt_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end21, %out_notconn, %if.end11
  %retval.0 = phi i32 [ -107, %out_notconn ], [ -11, %cond.end21 ], [ %sent.2, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @svc_sock_result_payload(ptr nocapture noundef readnone %rqstp, i32 noundef %offset, i32 noundef %length) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_tcp_release_rqst(ptr nocapture noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %0 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt_ctxt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %2 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_xprt, align 8
  %4 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rq_xprt_ctxt, align 4
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_sk, align 4
  tail call void @__skb_free_datagram_locked(ptr noundef %6, ptr noundef nonnull %1, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_tcp_sock_detach(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_sk.i = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 2
  %0 = ptrtoint ptr %sk_sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_sk.i, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %sk_ostate.i = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 3
  %2 = ptrtoint ptr %sk_ostate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_ostate.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_state_change.i, align 4
  %sk_odata.i = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 4
  %5 = ptrtoint ptr %sk_odata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_odata.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sk_data_ready.i, align 8
  %sk_owspace.i = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 5
  %8 = ptrtoint ptr %sk_owspace.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_owspace.i, align 4
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 78
  %10 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sk_write_space.i, align 4
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %11 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sk_user_data.i, align 4
  tail call void @release_sock(ptr noundef %1) #14
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 5
  %12 = ptrtoint ptr %xpt_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %xpt_flags, align 4
  %14 = and i32 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @svc_tcp_clear_pages(ptr noundef %xprt)
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 1
  %15 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sk_sock, align 4
  %call1 = tail call i32 @kernel_sock_shutdown(ptr noundef %16, i32 noundef 2) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_sock_free(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_sock, align 4
  %file = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @fput(ptr noundef nonnull %3) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sock_release(ptr noundef %1) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %xprt) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_sock_secure_port(ptr noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %call1 = tail call i32 @svc_port_is_privileged(ptr noundef %rq_addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %rq_flags2 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 33
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %rq_flags2) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %rq_flags2) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_tcp_kill_temp_xprt(ptr nocapture noundef readonly %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 1
  %0 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  tail call void @sock_no_linger(ptr noundef %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @svc_create_socket(ptr noundef %serv, i32 noundef %protocol, ptr noundef %net, ptr noundef %sin, i32 noundef %len, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i.i.i = alloca i32, align 4
  %sock = alloca ptr, align 4
  %addr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #14
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !163
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %addr) #14
  %1 = call ptr @memset(ptr %addr, i32 255, i32 128)
  %2 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %protocol, label %do.end [
    i32 17, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge70
  ]

entry.if.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge70
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %protocol)
  %cmp3 = icmp eq i32 %protocol, 17
  %cond = select i1 %cmp3, i32 2, i32 1
  %3 = ptrtoint ptr %sin to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sin, align 2
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %4, label %if.end.cleanup_crit_edge [
    i16 10, label %if.end.sw.epilog_crit_edge
    i16 2, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  %cmp12 = phi i1 [ false, %sw.bb4 ], [ true, %if.end.sw.epilog_crit_edge ]
  %family.0 = phi i32 [ 2, %sw.bb4 ], [ 10, %if.end.sw.epilog_crit_edge ]
  %call6 = call i32 @__sock_create(ptr noundef %net, i32 noundef %family.0, i32 noundef %cond, i32 noundef %protocol, ptr noundef nonnull %sock, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %6 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end11:                                         ; preds = %sw.epilog
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk1.i, align 16
  %owned.i.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %owned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %owned.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i, label %sock_allow_reclassification.exit.i, label %if.end11.land.rhs.i_crit_edge

if.end11.land.rhs.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

sock_allow_reclassification.exit.i:               ; preds = %if.end11
  %sk_lock.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  %13 = ptrtoint ptr %sk_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %agg.tmp.sroa.0.0.copyload.i.i.i.i = load volatile i32, ptr %sk_lock.i.i, align 4
  %14 = ptrtoint ptr %agg.tmp.sroa.0.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, ptr %agg.tmp.sroa.0.i.i.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 16
  %conv.i.i.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i.i.i)
  %cmp.i.i.i.not.i.i = icmp eq i32 %conv.i.i.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i.i.i)
  br i1 %cmp.i.i.i.not.i.i, label %if.end39.i, label %sock_allow_reclassification.exit.i.land.rhs.i_crit_edge

sock_allow_reclassification.exit.i.land.rhs.i_crit_edge: ; preds = %sock_allow_reclassification.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %sock_allow_reclassification.exit.i.land.rhs.i_crit_edge, %if.end11.land.rhs.i_crit_edge
  %.b119.i = load i1, ptr @svc_reclassify_socket.__already_done, align 1
  br i1 %.b119.i, label %land.rhs.i.svc_reclassify_socket.exit_crit_edge, label %if.then.i, !prof !170

land.rhs.i.svc_reclassify_socket.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_reclassify_socket.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @svc_reclassify_socket.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 85, i32 noundef 9, ptr noundef null) #14
  br label %svc_reclassify_socket.exit

if.end39.i:                                       ; preds = %sock_allow_reclassification.exit.i
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %skc_family.i, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %16, label %do.body94.i [
    i16 2, label %do.body40.i
    i16 10, label %do.body64.i
  ]

do.body40.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %owned.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %owned.i.i.i, align 4
  %wq.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 2
  call void @__init_waitqueue_head(ptr noundef %wq.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @svc_reclassify_socket.__key) #14
  call void @__raw_spin_lock_init(ptr noundef %sk_lock.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @svc_reclassify_socket.__key.5, i16 noundef signext 3) #14
  call void @debug_check_no_locks_freed(ptr noundef %sk_lock.i.i, i32 noundef 128) #14
  %dep_map.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @svc_slock_key, i32 noundef 0, i8 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %dep_map60.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %dep_map60.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @svc_key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %svc_reclassify_socket.exit

do.body64.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %owned.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %owned.i.i.i, align 4
  %wq69.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 2
  call void @__init_waitqueue_head(ptr noundef %wq69.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @svc_reclassify_socket.__key.9) #14
  call void @__raw_spin_lock_init(ptr noundef %sk_lock.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @svc_reclassify_socket.__key.10, i16 noundef signext 3) #14
  call void @debug_check_no_locks_freed(ptr noundef %sk_lock.i.i, i32 noundef 128) #14
  %dep_map81.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %wait_type_inner85.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %wait_type_inner85.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %wait_type_inner85.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map81.i, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([2 x %struct.lock_class_key], ptr @svc_slock_key, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext %23, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %dep_map91.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 4, i32 3
  call void @lockdep_init_map_type(ptr noundef %dep_map91.i, ptr noundef nonnull @.str.12, ptr noundef getelementptr inbounds ([2 x %struct.lock_class_key], ptr @svc_key, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  br label %svc_reclassify_socket.exit

do.body94.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #14, !srcloc !175
  unreachable

svc_reclassify_socket.exit:                       ; preds = %do.body64.i, %do.body40.i, %if.then.i, %land.rhs.i.svc_reclassify_socket.exit_crit_edge
  br i1 %cmp12, label %if.then14, label %svc_reclassify_socket.exit.if.end16_crit_edge

svc_reclassify_socket.exit.if.end16_crit_edge:    ; preds = %svc_reclassify_socket.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then14:                                        ; preds = %svc_reclassify_socket.exit
  %24 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sk, align 16
  %28 = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 2
  %skc_num.i = getelementptr inbounds %struct.anon.44, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %skc_num.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %skc_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.if.end16_crit_edge

if.then14.if.end16_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  call void @lock_sock_nested(ptr noundef %27, i32 noundef 0) #14
  %skc_ipv6only.i = getelementptr inbounds %struct.sock_common, ptr %27, i32 0, i32 5
  %31 = ptrtoint ptr %skc_ipv6only.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %skc_ipv6only.i, align 1
  %bf.set.i = or i8 %bf.load.i, 4
  store i8 %bf.set.i, ptr %skc_ipv6only.i, align 1
  call void @release_sock(ptr noundef %27) #14
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %if.then14.if.end16_crit_edge, %svc_reclassify_socket.exit.if.end16_crit_edge
  br i1 %cmp3, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sock, align 4
  %sk20 = getelementptr inbounds %struct.socket, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %sk20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk20, align 16
  %skc_reuse = getelementptr inbounds %struct.sock_common, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %skc_reuse to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %skc_reuse, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %skc_reuse, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %37 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sock, align 4
  %call22 = call i32 @kernel_bind(ptr noundef %38, ptr noundef %sin, i32 noundef %len) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end21.bummer_crit_edge, label %if.end26

if.end21.bummer_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %bummer

if.end26:                                         ; preds = %if.end21
  %39 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sock, align 4
  %call27 = call i32 @kernel_getsockname(ptr noundef %40, ptr noundef nonnull %addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.bummer_crit_edge, label %if.end31

if.end26.bummer_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %bummer

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %protocol)
  %cmp32 = icmp eq i32 %protocol, 6
  br i1 %cmp32, label %if.then34, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then34:                                        ; preds = %if.end31
  %41 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sock, align 4
  %call35 = call i32 @kernel_listen(ptr noundef %42, i32 noundef 64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then34.bummer_crit_edge, label %if.then34.if.end40_crit_edge

if.then34.if.end40_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.then34.bummer_crit_edge:                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %bummer

if.end40:                                         ; preds = %if.then34.if.end40_crit_edge, %if.end31.if.end40_crit_edge
  %43 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sock, align 4
  %call41 = call fastcc ptr @svc_setup_socket(ptr noundef %serv, ptr noundef %44, i32 noundef %flags)
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %call41 to i32
  br label %bummer

if.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %xpt_local.i = getelementptr inbounds %struct.svc_xprt, ptr %call41, i32 0, i32 13
  %46 = call ptr @memcpy(ptr %xpt_local.i, ptr %addr, i32 %call27)
  %xpt_locallen.i = getelementptr inbounds %struct.svc_xprt, ptr %call41, i32 0, i32 14
  %47 = ptrtoint ptr %xpt_locallen.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call27, ptr %xpt_locallen.i, align 4
  br label %cleanup

bummer:                                           ; preds = %if.then43, %if.then34.bummer_crit_edge, %if.end26.bummer_crit_edge, %if.end21.bummer_crit_edge
  %error.0 = phi i32 [ %call22, %if.end21.bummer_crit_edge ], [ %call27, %if.end26.bummer_crit_edge ], [ %call35, %if.then34.bummer_crit_edge ], [ %45, %if.then43 ]
  %48 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %49) #14
  %50 = inttoptr i32 %error.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %bummer, %if.end45, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %6, %if.then9 ], [ %50, %bummer ], [ %call41, %if.end45 ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %addr) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #14
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sock_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_bind(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_listen(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_accept(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_accept_err(ptr noundef %xprt, ptr noundef %service, i32 noundef %status) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_accept_err, i32 0, i32 1), ptr blockaddress(@trace_svcsock_accept_err, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !177
  %call42 = tail call i32 @__traceiter_svcsock_accept_err(ptr noundef null, ptr noundef %xprt, ptr noundef %service, i32 noundef %status) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !178
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_accept_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_accept_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_accept_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_accept_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2171, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @kernel_getpeername(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_getpeername_err(ptr noundef %xprt, ptr noundef %service, i32 noundef %status) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_getpeername_err, i32 0, i32 1), ptr blockaddress(@trace_svcsock_getpeername_err, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !181
  %call42 = tail call i32 @__traceiter_svcsock_getpeername_err(ptr noundef null, ptr noundef %xprt, ptr noundef %service, i32 noundef %status) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !182
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_getpeername_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_getpeername_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_getpeername_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_getpeername_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2172, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @__traceiter_svcsock_accept_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_getpeername_err(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @svc_tcp_restore_pages(ptr nocapture noundef %svsk, ptr nocapture noundef %rqstp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_datalen = getelementptr inbounds %struct.svc_sock, ptr %svsk, i32 0, i32 8
  %0 = ptrtoint ptr %sk_datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp47.not = icmp ult i32 %sub, 4096
  br i1 %cmp47.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %shr = lshr i32 %sub, 12
  br label %for.body

for.body:                                         ; preds = %do.end17.for.body_crit_edge, %for.body.preheader
  %i.048 = phi i32 [ %inc, %do.end17.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %for.body.do.body_crit_edge, label %if.then2

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then2:                                         ; preds = %for.body
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !170

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !164

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.28) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !172
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@svc_tcp_restore_pages, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !176

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.do.body_crit_edge

folio_put_testzero.exit.i.i.do.body_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %8) #14
  br label %do.body

do.body:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.do.body_crit_edge, %for.body.do.body_crit_edge
  %arrayidx6 = getelementptr %struct.svc_sock, ptr %svsk, i32 0, i32 10, i32 %i.048
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %cmp7 = icmp eq ptr %14, null
  br i1 %cmp7, label %do.body11, label %do.end17, !prof !164

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 824, 0\0A.popsection", ""() #14, !srcloc !184
  unreachable

do.end17:                                         ; preds = %do.body
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx6, align 4
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %do.end17.for.end_crit_edge, label %do.end17.for.body_crit_edge

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.end17.for.end_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %do.end17.for.end_crit_edge, %if.end.for.end_crit_edge
  %rq_pages24 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 20
  %17 = ptrtoint ptr %rq_pages24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rq_pages24, align 4
  %call = tail call ptr @page_address(ptr noundef %18) #14
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %19 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %rq_arg, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_tcp_recv(ptr noundef %xprt, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv, i32 0, i32 1), ptr blockaddress(@trace_svcsock_tcp_recv, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !185
  %call42 = tail call i32 @__traceiter_svcsock_tcp_recv(ptr noundef null, ptr noundef %xprt, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !186
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_tcp_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_tcp_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2072, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local void @svc_xprt_copy_addrs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_received(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_tcp_recv_short(ptr noundef %xprt, i32 noundef %expected, i32 noundef %received) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_short, i32 0, i32 1), ptr blockaddress(@trace_svcsock_tcp_recv_short, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %call42 = tail call i32 @__traceiter_svcsock_tcp_recv_short(ptr noundef null, ptr noundef %xprt, i32 noundef %expected, i32 noundef %received) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !188
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_short, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_short, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_tcp_recv_short.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_tcp_recv_short.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2105, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
define internal fastcc void @trace_svcsock_tcp_recv_eagain(ptr noundef %xprt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_eagain, i32 0, i32 1), ptr blockaddress(@trace_svcsock_tcp_recv_eagain, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !189
  %call42 = tail call i32 @__traceiter_svcsock_tcp_recv_eagain(ptr noundef null, ptr noundef %xprt, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !170

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_eagain, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_eagain, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_svcsock_tcp_recv_eagain.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_tcp_recv_eagain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2073, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_tcp_recv_err(ptr noundef %xprt, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_err, i32 0, i32 1), ptr blockaddress(@trace_svcsock_tcp_recv_err, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !191
  %call42 = tail call i32 @__traceiter_svcsock_tcp_recv_err(ptr noundef null, ptr noundef %xprt, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_recv_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_tcp_recv_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_tcp_recv_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2074, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local void @svc_xprt_deferred_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recvmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_marker(ptr noundef %xprt, i32 noundef %marker) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_marker, i32 0, i32 1), ptr blockaddress(@trace_svcsock_marker, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !193
  %call42 = tail call i32 @__traceiter_svcsock_marker(ptr noundef null, ptr noundef %xprt, i32 noundef %marker) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !194
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_marker, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_marker, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_marker.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_marker.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2033, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @__traceiter_svcsock_marker(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_lookup_rqst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_complete_rqst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv_short(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv_eagain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_recv_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_cork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_free_bvec(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_tcp_send(ptr noundef %xprt, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_send, i32 0, i32 1), ptr blockaddress(@trace_svcsock_tcp_send, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !195
  %call42 = tail call i32 @__traceiter_svcsock_tcp_send(ptr noundef null, ptr noundef %xprt, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_tcp_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_tcp_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2071, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdr_alloc_bvec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_tcp_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_free_datagram_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_sock_detach(ptr nocapture noundef readonly %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 2
  %0 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_sk, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #14
  %sk_ostate = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 3
  %2 = ptrtoint ptr %sk_ostate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_ostate, align 4
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_state_change, align 4
  %sk_odata = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 4
  %5 = ptrtoint ptr %sk_odata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk_odata, align 4
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 77
  %7 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sk_data_ready, align 8
  %sk_owspace = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 5
  %8 = ptrtoint ptr %sk_owspace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_owspace, align 4
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 78
  %10 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %sk_write_space, align 4
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 72
  %11 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sk_user_data, align 4
  tail call void @release_sock(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @svc_tcp_clear_pages(ptr nocapture noundef %svsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_datalen = getelementptr inbounds %struct.svc_sock, ptr %svsk, i32 0, i32 8
  %0 = ptrtoint ptr %sk_datalen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sk_datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %sub = add i32 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp259.not = icmp ult i32 %sub, 4096
  br i1 %cmp259.not, label %if.end.out_crit_edge, label %for.body.preheader

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.preheader:                               ; preds = %if.end
  %shr = lshr i32 %sub, 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.060 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.svc_sock, ptr %svsk, i32 0, i32 10, i32 %i.060
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %land.end, label %if.end39

land.end:                                         ; preds = %for.body
  %.b58 = load i1, ptr @svc_tcp_clear_pages.__already_done, align 1
  br i1 %.b58, label %land.end.for.inc_crit_edge, label %if.then9, !prof !170

land.end.for.inc_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @svc_tcp_clear_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 856, i32 noundef 9, ptr noundef null) #14
  br label %for.inc

if.end39:                                         ; preds = %for.body
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !170

if.then.i.i:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !164

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.28) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #14, !srcloc !183
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !171
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #14, !srcloc !172
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@svc_tcp_clear_pages, %if.then.i.i.i.i.i)) #14
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !176

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #14
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__put_page(ptr noundef %8) #14
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %put_page.exit, %if.then9, %land.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %sk_tcplen = getelementptr inbounds %struct.svc_sock, ptr %svsk, i32 0, i32 7
  %14 = ptrtoint ptr %sk_tcplen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sk_tcplen, align 4
  %15 = ptrtoint ptr %sk_datalen to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %sk_datalen, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sock_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_port_is_privileged(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_no_linger(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_udp_create(ptr noundef %serv, ptr noundef %net, ptr noundef %sa, i32 noundef %salen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @svc_create_socket(ptr noundef %serv, i32 noundef 17, ptr noundef %net, ptr noundef %sa, i32 noundef %salen, i32 noundef %flags)
  ret ptr %call
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @svc_udp_accept(ptr nocapture noundef readnone %xprt) #10 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sunrpc/svcsock.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #14, !srcloc !197
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_udp_has_wspace(ptr noundef %xprt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xpt_server = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 6
  %0 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xpt_server, align 4
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 1
  %2 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_sock, align 4
  %flags = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #14
  %xpt_reserved = getelementptr inbounds %struct.svc_xprt, ptr %xprt, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xpt_reserved, i32 noundef 4) #14
  %4 = ptrtoint ptr %xpt_reserved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %xpt_reserved, align 4
  %sv_max_mesg = getelementptr inbounds %struct.svc_serv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sv_max_mesg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sv_max_mesg, align 4
  %add = add i32 %7, %5
  %mul = shl i32 %add, 1
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %xprt, i32 0, i32 2
  %8 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_sk, align 4
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 66
  %10 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sk_shutdown.i, align 2
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.sock_wspace.exit_crit_edge

entry.sock_wspace.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sock_wspace.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 21
  %13 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %9, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #14
  %15 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sub.i = sub i32 %14, %16
  %17 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #14
  br label %sock_wspace.exit

sock_wspace.exit:                                 ; preds = %if.then.i, %entry.sock_wspace.exit_crit_edge
  %amt.0.i = phi i32 [ 0, %entry.sock_wspace.exit_crit_edge ], [ %17, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %amt.0.i)
  %cmp = icmp ugt i32 %mul, %amt.0.i
  br i1 %cmp, label %sock_wspace.exit.cleanup_crit_edge, label %if.end

sock_wspace.exit.cleanup_crit_edge:               ; preds = %sock_wspace.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %sock_wspace.exit
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_sock, align 4
  %flags3 = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags3) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sock_wspace.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %sock_wspace.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_udp_recvfrom(ptr noundef %rqstp) #0 align 64 {
entry:
  %off.i = alloca i32, align 4
  %buffer = alloca %union.anon.202, align 4
  %msg = alloca %struct.msghdr, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %xpt_server = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xpt_server, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #14
  %4 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 7
  %9 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %10 = getelementptr inbounds i8, ptr %msg, i32 32
  %11 = call ptr @memset(ptr %10, i32 255, i32 24)
  %rq_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rq_addr.i, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %13 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %14 = call ptr @memset(ptr %msg_namelen, i32 0, i32 28)
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buffer, ptr %13, align 8
  %msg_control_is_user = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  %16 = ptrtoint ptr %msg_control_is_user to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 127, ptr %msg_control_is_user, align 4
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %17 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %18 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 64, ptr %msg_flags, align 4
  %msg_iocb = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 7
  %19 = ptrtoint ptr %msg_iocb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %msg_iocb, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #14
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %err, align 4, !annotation !163
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  %call2 = call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %xpt_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %sv_nrthreads = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %sv_nrthreads to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sv_nrthreads, align 4
  %add = add i32 %22, 3
  %23 = ptrtoint ptr %xpt_server to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xpt_server, align 4
  %sv_max_mesg.i = getelementptr inbounds %struct.svc_serv, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %sv_max_mesg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sv_max_mesg.i, align 4
  %sk_sock.i = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %sk_sock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_sock.i, align 4
  %div.i = udiv i32 1073741823, %26
  %29 = call i32 @llvm.umin.i32(i32 %div.i, i32 %add) #14
  %sk.i = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %30 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sk.i, align 16
  call void @lock_sock_nested(ptr noundef %31, i32 noundef 0) #14
  %mul.i = shl i32 %26, 1
  %mul1.i = mul i32 %29, %mul.i
  %32 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk.i, align 16
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul1.i, ptr %sk_sndbuf.i, align 4
  %35 = load ptr, ptr %sk.i, align 16
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul1.i, ptr %sk_rcvbuf.i, align 8
  %37 = load ptr, ptr %sk.i, align 16
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %37, i32 0, i32 78
  %38 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk_write_space.i, align 4
  call void %39(ptr noundef %37) #14
  %40 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk.i, align 16
  call void @release_sock(ptr noundef %41) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @_clear_bit(i32 noundef 3, ptr noundef %xpt_flags) #14
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sk_sock, align 4
  %call5 = call i32 @kernel_recvmsg(ptr noundef %43, ptr noundef nonnull %msg, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 66) #14
  %44 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call5, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end.out_recv_err_crit_edge, label %if.end7

if.end.out_recv_err_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_recv_err

if.end7:                                          ; preds = %if.end
  %sk_sk = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sk_sk, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off.i) #14
  %47 = ptrtoint ptr %off.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %off.i, align 4
  %call.i = call ptr @__skb_recv_udp(ptr noundef %46, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %off.i, ptr noundef nonnull %err) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off.i) #14
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %out_recv_errthread-pre-split, label %if.end11

if.end11:                                         ; preds = %if.end7
  %48 = ptrtoint ptr %rq_addr.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %rq_addr.i, align 2
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %49, label %do.body.i [
    i16 2, label %if.end11.svc_addr_len.exit_crit_edge
    i16 10, label %sw.bb1.i
  ]

if.end11.svc_addr_len.exit_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_addr_len.exit

sw.bb1.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_addr_len.exit

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/sunrpc/svc_xprt.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #14, !srcloc !198
  unreachable

svc_addr_len.exit:                                ; preds = %sw.bb1.i, %if.end11.svc_addr_len.exit_crit_edge
  %retval.0.i = phi i32 [ 28, %sw.bb1.i ], [ 16, %if.end11.svc_addr_len.exit_crit_edge ]
  %rq_addrlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 4
  %51 = ptrtoint ptr %rq_addrlen to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i, ptr %rq_addrlen, align 4
  %52 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %cmp14 = icmp eq i64 %54, 0
  br i1 %cmp14, label %if.then15, label %svc_addr_len.exit.if.end17_crit_edge

svc_addr_len.exit.if.end17_crit_edge:             ; preds = %svc_addr_len.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %svc_addr_len.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call.i170 = call i64 @ktime_get_with_offset(i32 noundef 0) #14
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %call.i170, ptr %52, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %svc_addr_len.exit.if.end17_crit_edge
  %56 = ptrtoint ptr %sk_sk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sk_sk, align 4
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %52, align 8
  %sk_stamp_seq.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 64
  %lock.i.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 64, i32 1
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #14
  %60 = ptrtoint ptr %sk_stamp_seq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sk_stamp_seq.i, align 4
  %inc.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i, ptr %sk_stamp_seq.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !199
  %dep_map.i.i.i.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 64, i32 0, i32 0, i32 1
  %62 = call ptr @llvm.returnaddress(i32 0) #14
  %63 = ptrtoint ptr %62 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %63) #14
  %sk_stamp.i = getelementptr inbounds %struct.sock, ptr %57, i32 0, i32 63
  %64 = ptrtoint ptr %sk_stamp.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %59, ptr %sk_stamp.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %63) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  %65 = ptrtoint ptr %sk_stamp_seq.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sk_stamp_seq.i, align 4
  %inc.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i, ptr %sk_stamp_seq.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #14
  call void @_set_bit(i32 noundef 3, ptr noundef %xpt_flags) #14
  %len21 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %67 = ptrtoint ptr %len21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len21, align 4
  %rq_arg = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15
  %len22 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 8
  %69 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %len22, align 8
  call fastcc void @trace_svcsock_udp_recv(ptr noundef %1, i32 noundef %68)
  %rq_prot = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 31
  %70 = ptrtoint ptr %rq_prot to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 17, ptr %rq_prot, align 4
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %4, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %72, label %if.end17.do.body_crit_edge [
    i32 0, label %sw.bb.i
    i32 41, label %sw.bb1.i171
  ]

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb.i:                                          ; preds = %if.end17
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %75)
  %cmp.not.i.i = icmp eq i32 %75, 8
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.do.body_crit_edge

sw.bb.i.do.body_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %rq_daddr.i.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5
  %76 = ptrtoint ptr %rq_daddr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 2, ptr %rq_daddr.i.i.i, align 4
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %7, align 4
  %sin_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1
  %79 = ptrtoint ptr %sin_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %sin_addr.i.i, align 4
  br label %if.end27

sw.bb1.i171:                                      ; preds = %if.end17
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %81)
  %cmp.not.i7.i = icmp eq i32 %81, 50
  br i1 %cmp.not.i7.i, label %if.end.i9.i, label %sw.bb1.i171.do.body_crit_edge

sw.bb1.i171.do.body_crit_edge:                    ; preds = %sw.bb1.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end.i9.i:                                      ; preds = %sw.bb1.i171
  call void @__sanitizer_cov_trace_pc() #16
  %rq_daddr.i.i8.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5
  %82 = ptrtoint ptr %rq_daddr.i.i8.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 10, ptr %rq_daddr.i.i8.i, align 4
  %sin6_addr.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 4
  %83 = call ptr @memcpy(ptr %sin6_addr.i.i, ptr %6, i32 16)
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %8, align 4
  %sin6_scope_id.i.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 20
  %86 = ptrtoint ptr %sin6_scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %sin6_scope_id.i.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end.i9.i, %if.end.i.i
  %rq_daddr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5
  %87 = ptrtoint ptr %rq_daddr.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rq_daddr.i, align 2
  %89 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %88, label %do.body.i174 [
    i16 2, label %if.end27.svc_addr_len.exit176_crit_edge
    i16 10, label %sw.bb1.i173
  ]

if.end27.svc_addr_len.exit176_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_addr_len.exit176

sw.bb1.i173:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_addr_len.exit176

do.body.i174:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/sunrpc/svc_xprt.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 193, 0\0A.popsection", ""() #14, !srcloc !198
  unreachable

svc_addr_len.exit176:                             ; preds = %sw.bb1.i173, %if.end27.svc_addr_len.exit176_crit_edge
  %retval.0.i175 = phi i32 [ 28, %sw.bb1.i173 ], [ 16, %if.end27.svc_addr_len.exit176_crit_edge ]
  %rq_daddrlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 6
  %90 = ptrtoint ptr %rq_daddrlen to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i175, ptr %rq_daddrlen, align 8
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 7
  %91 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.i.not = icmp eq i32 %92, 0
  br i1 %tobool.i.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %svc_addr_len.exit176
  call fastcc void @local_bh_disable()
  %call33 = call i32 @csum_partial_copy_to_xdr(ptr noundef %rq_arg, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  call fastcc void @local_bh_enable()
  br i1 %tobool34.not, label %if.end36, label %if.then31.out_free_crit_edge

if.then31.out_free_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.end36:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #16
  call void @consume_skb(ptr noundef nonnull %call.i) #14
  br label %if.end45

if.else:                                          ; preds = %svc_addr_len.exit176
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data, align 4
  %95 = ptrtoint ptr %rq_arg to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %rq_arg, align 8
  %iov_len = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %68, ptr %iov_len, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %97 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %98 = and i16 %bf.lshr.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %98)
  %cmp.i.i = icmp ne i16 %98, 1
  %99 = and i16 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool.not.i.i = icmp eq i16 %99, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 %tobool.not.i.i, i1 false
  br i1 %or.cond.i.i, label %lor.rhs.i.i, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

lor.rhs.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %98)
  %cmp12.i.i = icmp eq i16 %98, 3
  br i1 %cmp12.i.i, label %skb_csum_unnecessary.exit.i, label %lor.rhs.i.i.skb_checksum_complete.exit_crit_edge

lor.rhs.i.i.skb_checksum_complete.exit_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_checksum_complete.exit

skb_csum_unnecessary.exit.i:                      ; preds = %lor.rhs.i.i
  %100 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 5
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %100, align 8
  %conv.i.i.i = zext i16 %102 to i32
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %105 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %106 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge, label %skb_csum_unnecessary.exit.i.if.end44_crit_edge

skb_csum_unnecessary.exit.i.if.end44_crit_edge:   ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge: ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_checksum_complete.exit

skb_checksum_complete.exit:                       ; preds = %skb_csum_unnecessary.exit.i.skb_checksum_complete.exit_crit_edge, %lor.rhs.i.i.skb_checksum_complete.exit_crit_edge
  %call1.i = call zeroext i16 @__skb_checksum_complete(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1.i)
  %tobool42.not = icmp eq i16 %call1.i, 0
  br i1 %tobool42.not, label %skb_checksum_complete.exit.if.end44_crit_edge, label %skb_checksum_complete.exit.out_free_crit_edge

skb_checksum_complete.exit.out_free_crit_edge:    ; preds = %skb_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

skb_checksum_complete.exit.if.end44_crit_edge:    ; preds = %skb_checksum_complete.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end44

if.end44:                                         ; preds = %skb_checksum_complete.exit.if.end44_crit_edge, %skb_csum_unnecessary.exit.i.if.end44_crit_edge, %if.else.if.end44_crit_edge
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %107 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i, ptr %rq_xprt_ctxt, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end36
  %page_base = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 4
  %108 = ptrtoint ptr %page_base to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %page_base, align 8
  %iov_len50 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 0, i32 0, i32 1
  %109 = ptrtoint ptr %iov_len50 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %iov_len50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %110)
  %cmp51.not = icmp ugt i32 %68, %110
  br i1 %cmp51.not, label %if.else59, label %if.then52

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %111 = ptrtoint ptr %iov_len50 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %68, ptr %iov_len50, align 4
  %add.ptr58 = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 1
  br label %if.end75

if.else59:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %sub = sub i32 %68, %110
  %add.ptr68 = getelementptr %struct.svc_rqst, ptr %rqstp, i32 0, i32 20, i32 1
  %sub72 = add i32 %sub, 4095
  %div168 = lshr i32 %sub72, 12
  %add.ptr73 = getelementptr ptr, ptr %add.ptr68, i32 %div168
  br label %if.end75

if.end75:                                         ; preds = %if.else59, %if.then52
  %.sink = phi i32 [ %sub, %if.else59 ], [ 0, %if.then52 ]
  %add.ptr58.sink = phi ptr [ %add.ptr73, %if.else59 ], [ %add.ptr58, %if.then52 ]
  %112 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 15, i32 5
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink, ptr %112, align 4
  %114 = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 21
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr58.sink, ptr %114, align 4
  %add.ptr77 = getelementptr ptr, ptr %add.ptr58.sink, i32 1
  %rq_next_page = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 22
  %116 = ptrtoint ptr %rq_next_page to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %add.ptr77, ptr %rq_next_page, align 8
  %sv_stats = getelementptr inbounds %struct.svc_serv, ptr %3, i32 0, i32 1
  %117 = ptrtoint ptr %sv_stats to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sv_stats, align 4
  %tobool78.not = icmp eq ptr %118, null
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %if.then79

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  %netudpcnt = getelementptr inbounds %struct.svc_stat, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %netudpcnt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %netudpcnt, align 4
  %inc = add i32 %120, 1
  store i32 %inc, ptr %netudpcnt, align 4
  br label %cleanup

out_recv_errthread-pre-split:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %121 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr = load i32, ptr %err, align 4
  br label %out_recv_err

out_recv_err:                                     ; preds = %out_recv_errthread-pre-split, %if.end.out_recv_err_crit_edge
  %122 = phi i32 [ %.pr, %out_recv_errthread-pre-split ], [ %call5, %if.end.out_recv_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %122)
  %cmp83.not = icmp eq i32 %122, -11
  br i1 %cmp83.not, label %out_recv_err.if.end87_crit_edge, label %if.then84

out_recv_err.if.end87_crit_edge:                  ; preds = %out_recv_err
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then84:                                        ; preds = %out_recv_err
  call void @__sanitizer_cov_trace_pc() #16
  call void @_set_bit(i32 noundef 3, ptr noundef %xpt_flags) #14
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %out_recv_err.if.end87_crit_edge
  %123 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %err, align 4
  call fastcc void @trace_svcsock_udp_recv_err(ptr noundef %1, i32 noundef %124)
  br label %cleanup

do.body:                                          ; preds = %sw.bb1.i171.do.body_crit_edge, %sw.bb.i.do.body_crit_edge, %if.end17.do.body_crit_edge
  %call89 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %do.body.out_free_crit_edge, label %do.end

do.body.out_free_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %125 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %4, align 4
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %5, align 4
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %126, i32 noundef %128) #18
  br label %out_free

out_free:                                         ; preds = %do.end, %do.body.out_free_crit_edge, %skb_checksum_complete.exit.out_free_crit_edge, %if.then31.out_free_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end87, %if.then79, %if.end75.cleanup_crit_edge
  %retval.0 = phi i32 [ %68, %if.then79 ], [ %68, %if.end75.cleanup_crit_edge ], [ 0, %out_free ], [ 0, %if.end87 ]
  %129 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rq_xprt, align 8
  call void @svc_xprt_received(ptr noundef %130) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @svc_udp_sendto(ptr noundef %rqstp) #0 align 64 {
entry:
  %buffer = alloca %union.anon.203, align 4
  %msg = alloca %struct.msghdr, align 8
  %sent = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 2
  %0 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt, align 8
  %rq_res = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buffer) #14
  %2 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i32], ptr %buffer, i32 0, i32 7
  %7 = call ptr @memset(ptr %buffer, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #14
  %8 = getelementptr inbounds i8, ptr %msg, i32 32
  %9 = call ptr @memset(ptr %8, i32 255, i32 24)
  %rq_addr = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 3
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rq_addr, ptr %msg, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %rq_addrlen = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 4
  %11 = ptrtoint ptr %rq_addrlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rq_addrlen, align 4
  %13 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %msg_namelen, align 4
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %14 = call ptr @memset(ptr %msg_iter, i32 0, i32 24)
  %15 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buffer, ptr %15, align 8
  %msg_control_is_user = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 4
  %17 = ptrtoint ptr %msg_control_is_user to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 127, ptr %msg_control_is_user, align 4
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %18 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %msg_controllen, align 8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %19 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %msg_flags, align 4
  %msg_iocb = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 7
  %20 = ptrtoint ptr %msg_iocb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %msg_iocb, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sent) #14
  %21 = ptrtoint ptr %sent to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %sent, align 4, !annotation !163
  %rq_xprt_ctxt.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %22 = ptrtoint ptr %rq_xprt_ctxt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rq_xprt_ctxt.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %entry.svc_udp_release_rqst.exit_crit_edge, label %if.then.i

entry.svc_udp_release_rqst.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_udp_release_rqst.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %rq_xprt_ctxt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rq_xprt_ctxt.i, align 4
  call void @consume_skb(ptr noundef nonnull %23) #14
  br label %svc_udp_release_rqst.exit

svc_udp_release_rqst.exit:                        ; preds = %if.then.i, %entry.svc_udp_release_rqst.exit_crit_edge
  %25 = ptrtoint ptr %rq_xprt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rq_xprt, align 8
  %sk_sk.i = getelementptr inbounds %struct.svc_sock, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %sk_sk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_sk.i, align 4
  %skc_family.i = getelementptr inbounds %struct.sock_common, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %skc_family.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %skc_family.i, align 8
  %31 = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.56)
  switch i16 %30, label %svc_udp_release_rqst.exit.svc_set_cmsg_data.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb3.i
  ]

svc_udp_release_rqst.exit.svc_set_cmsg_data.exit_crit_edge: ; preds = %svc_udp_release_rqst.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %svc_set_cmsg_data.exit

sw.bb.i:                                          ; preds = %svc_udp_release_rqst.exit
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %2, align 4
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %3, align 4
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %4, align 4
  %sin_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %sin_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sin_addr.i, align 4
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %5, align 4
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %svc_udp_release_rqst.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 41, ptr %2, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 50, ptr %3, align 4
  %sin6_scope_id.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 20
  %40 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sin6_scope_id.i, align 4
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %6, align 4
  %sin6_addr.i = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 5, i32 0, i32 1, i32 4
  %43 = call ptr @memcpy(ptr %4, ptr %sin6_addr.i, i32 16)
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb3.i, %sw.bb.i
  %.sink.i = phi i32 [ 32, %sw.bb3.i ], [ 24, %sw.bb.i ]
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %buffer, align 4
  br label %svc_set_cmsg_data.exit

svc_set_cmsg_data.exit:                           ; preds = %sw.epilog.sink.split.i, %svc_udp_release_rqst.exit.svc_set_cmsg_data.exit_crit_edge
  %xpt_mutex = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %xpt_mutex, i32 noundef 0) #14
  %xpt_flags.i = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %xpt_flags.i, align 4
  %47 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 0
  br i1 %cmp.not.i, label %svc_xprt_is_dead.exit, label %svc_set_cmsg_data.exit.out_notconn_crit_edge

svc_set_cmsg_data.exit.out_notconn_crit_edge:     ; preds = %svc_set_cmsg_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_notconn

svc_xprt_is_dead.exit:                            ; preds = %svc_set_cmsg_data.exit
  %48 = ptrtoint ptr %xpt_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %xpt_flags.i, align 4
  %50 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp3.i.not = icmp eq i32 %50, 0
  br i1 %cmp3.i.not, label %if.end, label %svc_xprt_is_dead.exit.out_notconn_crit_edge

svc_xprt_is_dead.exit.out_notconn_crit_edge:      ; preds = %svc_xprt_is_dead.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_notconn

if.end:                                           ; preds = %svc_xprt_is_dead.exit
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk_sock, align 4
  %call1 = call i32 @xprt_sock_sendmsg(ptr noundef %52, ptr noundef nonnull %msg, ptr noundef %rq_res, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %sent) #14
  call void @xdr_free_bvec(ptr noundef %rq_res) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -111, i32 %call1)
  %cmp = icmp eq i32 %call1, -111
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sk_sock, align 4
  %call4 = call i32 @xprt_sock_sendmsg(ptr noundef %54, ptr noundef nonnull %msg, ptr noundef %rq_res, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %sent) #14
  call void @xdr_free_bvec(ptr noundef %rq_res) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %err.0 = phi i32 [ %call4, %if.then2 ], [ %call1, %if.end.if.end5_crit_edge ]
  call fastcc void @trace_svcsock_udp_send(ptr noundef %1, i32 noundef %err.0)
  call void @mutex_unlock(ptr noundef %xpt_mutex) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp7 = icmp slt i32 %err.0, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %sent to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sent, align 4
  br label %cleanup

out_notconn:                                      ; preds = %svc_xprt_is_dead.exit.out_notconn_crit_edge, %svc_set_cmsg_data.exit.out_notconn_crit_edge
  call void @mutex_unlock(ptr noundef %xpt_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %out_notconn, %if.end9, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -107, %out_notconn ], [ %56, %if.end9 ], [ %err.0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sent) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buffer) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_udp_release_rqst(ptr nocapture noundef %rqstp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rq_xprt_ctxt = getelementptr inbounds %struct.svc_rqst, ptr %rqstp, i32 0, i32 12
  %0 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq_xprt_ctxt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %rq_xprt_ctxt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rq_xprt_ctxt, align 4
  tail call void @consume_skb(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @svc_udp_kill_temp_xprt(ptr nocapture noundef %xprt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_udp_recv(ptr noundef %xprt, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv, i32 0, i32 1), ptr blockaddress(@trace_svcsock_udp_recv, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !201
  %call42 = tail call i32 @__traceiter_svcsock_udp_recv(ptr noundef null, ptr noundef %xprt, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_udp_recv.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_udp_recv.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2069, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_to_xdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_udp_recv_err(ptr noundef %xprt, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv_err, i32 0, i32 1), ptr blockaddress(@trace_svcsock_udp_recv_err, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !203
  %call42 = tail call i32 @__traceiter_svcsock_udp_recv_err(ptr noundef null, ptr noundef %xprt, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv_err, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_recv_err, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_udp_recv_err.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_udp_recv_err.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2070, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local ptr @__skb_recv_udp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_udp_recv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_udp_recv_err(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xprt_sock_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_udp_send(ptr noundef %xprt, i32 noundef %result) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_send, i32 0, i32 1), ptr blockaddress(@trace_svcsock_udp_send, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !205
  %call42 = tail call i32 @__traceiter_svcsock_udp_send(ptr noundef null, ptr noundef %xprt, i32 noundef %result) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_send, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_udp_send, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_udp_send.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_udp_send.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2068, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @__traceiter_svcsock_udp_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svc_register(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_new_socket(ptr noundef %socket) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_new_socket, i32 0, i32 1), ptr blockaddress(@trace_svcsock_new_socket, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !207
  %call42 = tail call i32 @__traceiter_svcsock_new_socket(ptr noundef null, ptr noundef %socket) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_new_socket, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_new_socket, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_new_socket.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_new_socket.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2009, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !209
  %sk_odata = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk_odata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_odata, align 4
  tail call void %3(ptr noundef %sk) #14
  tail call fastcc void @trace_svcsock_data_ready(ptr noundef nonnull %1)
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  %call = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %xpt_flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @svc_xprt_enqueue(ptr noundef nonnull %1) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !210
  tail call fastcc void @trace_svcsock_write_space(ptr noundef nonnull %1)
  %sk_owspace = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sk_owspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_owspace, align 4
  tail call void %3(ptr noundef %sk) #14
  tail call void @svc_xprt_enqueue(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_sock_set_pktinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_data_ready(ptr noundef %xprt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_data_ready, i32 0, i32 1), ptr blockaddress(@trace_svcsock_data_ready, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !211
  %call42 = tail call i32 @__traceiter_svcsock_data_ready(ptr noundef null, ptr noundef %xprt, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !170

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_data_ready, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_data_ready, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_svcsock_data_ready.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_data_ready.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2075, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_xprt_enqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_data_ready(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_write_space(ptr noundef %xprt) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_write_space, i32 0, i32 1), ptr blockaddress(@trace_svcsock_write_space, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !213
  %call42 = tail call i32 @__traceiter_svcsock_write_space(ptr noundef null, ptr noundef %xprt, i32 noundef 0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !214
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !170

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_write_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_write_space, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_svcsock_write_space.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_write_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2076, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @__traceiter_svcsock_write_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_tcp_listen_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %skc_state14 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state14 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state14, align 2
  br label %if.end7

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !215
  %sk_odata = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sk_odata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_odata, align 4
  tail call void %5(ptr noundef %sk) #14
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp.not = icmp eq i8 %7, 10
  br i1 %cmp.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %xpt_flags = getelementptr inbounds %struct.svc_xprt, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %xpt_flags) #14
  tail call void @svc_xprt_enqueue(ptr noundef nonnull %1) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge, %if.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @svc_tcp_state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !216
  %sk_ostate = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sk_ostate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_ostate, align 4
  tail call void %3(ptr noundef %sk) #14
  %sk_sock = getelementptr inbounds %struct.svc_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %sk_sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_sock, align 4
  tail call fastcc void @trace_svcsock_tcp_state(ptr noundef nonnull %1, ptr noundef %5)
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @svc_xprt_deferred_close(ptr noundef nonnull %1) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_svcsock_tcp_state(ptr noundef %xprt, ptr noundef %socket) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_state, i32 0, i32 1), ptr blockaddress(@trace_svcsock_tcp_state, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !176

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !170

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !217
  %call42 = tail call i32 @__traceiter_svcsock_tcp_state(ptr noundef null, ptr noundef %xprt, ptr noundef %socket) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !218
  %13 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !170

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !153) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_state, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_svcsock_tcp_state, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_svcsock_tcp_state.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_svcsock_tcp_state.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 2134, ptr noundef nonnull @.str.19) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !180
  %31 = tail call i32 @llvm.read_register.i32(metadata !153) #14
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
declare dso_local i32 @__traceiter_svcsock_tcp_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_svcsock_new_socket(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !103, !104, !105, !106, !108, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !142, !144, !145, !147, !149, !151}
!llvm.named.register.sp = !{!153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__ksymtab_svc_sock_update_bufs, !1, !"__ksymtab_svc_sock_update_bufs", i1 false, i1 false}
!1 = !{!"../net/sunrpc/svcsock.c", i32 1291, i32 1}
!2 = !{ptr @__ksymtab_svc_alien_sock, !3, !"__ksymtab_svc_alien_sock", i1 false, i1 false}
!3 = !{!"../net/sunrpc/svcsock.c", i32 1359, i32 1}
!4 = !{ptr @__ksymtab_svc_addsock, !5, !"__ksymtab_svc_addsock", i1 false, i1 false}
!5 = !{!"../net/sunrpc/svcsock.c", i32 1414, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/svcsock.c", i32 1223, i32 14}
!8 = !{ptr @svc_tcp_class, !9, !"svc_tcp_class", i1 false, i1 false}
!9 = !{!"../net/sunrpc/svcsock.c", i32 1222, i32 30}
!10 = !{ptr @svc_tcp_ops, !11, !"svc_tcp_ops", i1 false, i1 false}
!11 = !{!"../net/sunrpc/svcsock.c", i32 1208, i32 34}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sunrpc/svcsock.c", i32 1435, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @svc_create_socket._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @svc_create_socket._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../net/sunrpc/svcsock.c", i32 85, i32 6}
!20 = !{ptr @svc_reclassify_socket.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../net/sunrpc/svcsock.c", i32 90, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @svc_reclassify_socket.__key.5, !21, !"__key", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @svc_reclassify_socket.__key.9, !28, !"__key", i1 false, i1 false}
!28 = !{!"../net/sunrpc/svcsock.c", i32 97, i32 3}
!29 = !{ptr @svc_reclassify_socket.__key.10, !28, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @svc_slock_key, !33, !"svc_slock_key", i1 false, i1 false}
!33 = !{!"../net/sunrpc/svcsock.c", i32 79, i32 30}
!34 = !{ptr @svc_key, !35, !"svc_key", i1 false, i1 false}
!35 = !{!"../net/sunrpc/svcsock.c", i32 78, i32 30}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/sunrpc/svcsock.c", i32 760, i32 4}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @svc_tcp_accept._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @svc_tcp_accept._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sunrpc/svcsock.c", i32 763, i32 4}
!43 = !{ptr @svc_tcp_accept._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @svc_tcp_accept._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/trace/events/sunrpc.h", i32 2171, i32 1}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!49 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/trace/events/sunrpc.h", i32 2172, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/sunrpc/svc_xprt.h", i32 167, i32 4}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/sunrpc/sunrpc.h", i32 45, i32 8}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/sunrpc/svcsock.c", i32 902, i32 2}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @svc_tcp_read_marker._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @svc_tcp_read_marker._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/trace/events/sunrpc.h", i32 2011, i32 1}
!75 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/mm.h", i32 717, i32 2}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!80 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/trace/events/sunrpc.h", i32 2072, i32 1}
!84 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/sunrpc/svcsock.c", i32 945, i32 2}
!87 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @receive_cb_reply._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @receive_cb_reply._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/trace/events/sunrpc.h", i32 2078, i32 1}
!92 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/trace/events/sunrpc.h", i32 2073, i32 1}
!95 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../include/trace/events/sunrpc.h", i32 2074, i32 1}
!98 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/sunrpc/svcsock.c", i32 1190, i32 2}
!101 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @svc_tcp_sendto._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @svc_tcp_sendto._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../include/trace/events/sunrpc.h", i32 2071, i32 1}
!108 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../net/sunrpc/svcsock.c", i32 856, i32 4}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/sunrpc/svcsock.c", i32 652, i32 14}
!113 = !{ptr @svc_udp_class, !114, !"svc_udp_class", i1 false, i1 false}
!114 = !{!"../net/sunrpc/svcsock.c", i32 651, i32 30}
!115 = !{ptr @svc_udp_ops, !116, !"svc_udp_ops", i1 false, i1 false}
!116 = !{!"../net/sunrpc/svcsock.c", i32 637, i32 34}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/sunrpc/svcsock.c", i32 533, i32 2}
!119 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @svc_udp_recvfrom._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @svc_udp_recvfrom._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../include/trace/events/sunrpc.h", i32 2069, i32 1}
!124 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!125 = distinct !{null, !126, !"__already_done", i1 false, i1 false}
!126 = !{!"../include/trace/events/sunrpc.h", i32 2070, i32 1}
!127 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/trace/events/sunrpc.h", i32 2068, i32 1}
!130 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/trace/events/sunrpc.h", i32 2075, i32 1}
!133 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!134 = distinct !{null, !135, !"__already_done", i1 false, i1 false}
!135 = !{!"../include/trace/events/sunrpc.h", i32 2076, i32 1}
!136 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!137 = !{ptr @.str.40, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/sunrpc/svcsock.c", i32 1251, i32 39}
!139 = distinct !{null, !140, !"__already_done", i1 false, i1 false}
!140 = !{!"../include/trace/events/sunrpc.h", i32 2107, i32 1}
!141 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/trace/events/sunrpc.h", i32 1985, i32 1}
!144 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!145 = !{ptr @.str.41, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/cred.h", i32 253, i32 2}
!147 = !{ptr @.str.42, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/sunrpc/svcsock.c", i32 202, i32 34}
!149 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/sunrpc/svcsock.c", i32 209, i32 34}
!151 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/sunrpc/svcsock.c", i32 216, i32 34}
!153 = !{!"sp"}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"auto-init"}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2148247757, i64 2148247783, i64 2148247812, i64 2148247846, i64 2148247877, i64 2148247900}
!166 = !{i64 2161387984}
!167 = !{i64 2161355753, i64 2161356238, i64 2161355790, i64 2161355846, i64 2161355880, i64 2161355904, i64 2161355945, i64 2161355966, i64 2161355994, i64 2161356028}
!168 = !{i64 2149284813}
!169 = !{i64 2149285079}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{i64 2148336209}
!172 = !{i64 2148250942, i64 2148250974, i64 2148251003, i64 2148251037, i64 2148251068, i64 2148251091}
!173 = !{i64 2148336438}
!174 = !{i64 2148250222, i64 2148250248, i64 2148250277, i64 2148250311, i64 2148250342, i64 2148250365}
!175 = !{i64 2161310680, i64 2161311165, i64 2161310717, i64 2161310773, i64 2161310807, i64 2161310831, i64 2161310872, i64 2161310893, i64 2161310921, i64 2161310955}
!176 = !{i64 2148729572, i64 2148729577, i64 2148729590, i64 2148729634, i64 2148729668, i64 2148729689}
!177 = !{i64 2161113509}
!178 = !{i64 2161113750}
!179 = !{i64 2149293372}
!180 = !{i64 2149294408}
!181 = !{i64 2161135432}
!182 = !{i64 2161135683}
!183 = !{i64 2153396272, i64 2153396755, i64 2153396309, i64 2153396365, i64 2153396399, i64 2153396423, i64 2153396464, i64 2153396485, i64 2153396513, i64 2153396547}
!184 = !{i64 2161367052, i64 2161367537, i64 2161367089, i64 2161367145, i64 2161367179, i64 2161367203, i64 2161367244, i64 2161367265, i64 2161367293, i64 2161367327}
!185 = !{i64 2160984281}
!186 = !{i64 2160984500}
!187 = !{i64 2161078681}
!188 = !{i64 2161078936}
!189 = !{i64 2161005517}
!190 = !{i64 2161005750}
!191 = !{i64 2161022950}
!192 = !{i64 2161023177}
!193 = !{i64 2160895487}
!194 = !{i64 2160895702}
!195 = !{i64 2160967386}
!196 = !{i64 2160967605}
!197 = !{i64 2161353837, i64 2161354322, i64 2161353874, i64 2161353930, i64 2161353964, i64 2161353988, i64 2161354029, i64 2161354050, i64 2161354078, i64 2161354112}
!198 = !{i64 2158871422, i64 2158871918, i64 2158871459, i64 2158871515, i64 2158871549, i64 2158871573, i64 2158871614, i64 2158871635, i64 2158871663, i64 2158871697}
!199 = !{i64 2150212669}
!200 = !{i64 2150212994}
!201 = !{i64 2160929159}
!202 = !{i64 2160929378}
!203 = !{i64 2160950275}
!204 = !{i64 2160950502}
!205 = !{i64 2160912264}
!206 = !{i64 2160912483}
!207 = !{i64 2160878899}
!208 = !{i64 2160879110}
!209 = !{i64 2161343584}
!210 = !{i64 2161343816}
!211 = !{i64 2161040141}
!212 = !{i64 2161040364}
!213 = !{i64 2161057264}
!214 = !{i64 2161057489}
!215 = !{i64 2161357089}
!216 = !{i64 2161357316}
!217 = !{i64 2161096003}
!218 = !{i64 2161096224}
