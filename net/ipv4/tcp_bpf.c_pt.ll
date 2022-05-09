; ModuleID = '/llk/IR_all_yes/net/ipv4/tcp_bpf.c_pt.bc'
source_filename = "../net/ipv4/tcp_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tcp_bpf_sendmsg_redir\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_bpf_sendmsg_redir\09\09\09\09"
module asm "\09.long\09__crc_tcp_bpf_sendmsg_redir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_bpf_sendmsg_redir:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_bpf_sendmsg_redir\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_bpf_sendmsg_redir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tcp_bpf_update_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_tcp_bpf_update_proto\09\09\09\09"
module asm "\09.long\09__crc_tcp_bpf_update_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tcp_bpf_update_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22tcp_bpf_update_proto\22\09\09\09\09\09"
module asm "__kstrtabns_tcp_bpf_update_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.135 }
%struct.atomic_t = type { i32 }
%union.anon.135 = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.sk_msg = type { %struct.sk_msg_sg, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head }
%struct.sk_msg_sg = type { i32, i32, i32, i32, i32, i32, [19 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sk_psock = type { ptr, ptr, i32, i32, i32, ptr, %struct.sk_psock_progs, %struct.strparser, %struct.sk_buff_head, %struct.list_head, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, %struct.refcount_struct, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.sk_psock_work_state, %struct.work_struct, %struct.rcu_work }
%struct.sk_psock_progs = type { ptr, ptr, ptr, ptr }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sk_psock_work_state = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%union.anon.161 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.page = type { i32, %union.anon.5, %union.anon.150, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.150 = type { %struct.atomic_t }
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
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.197, %struct.anon.198, i32, i32, [13 x i64] }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.197 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.198 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.179 }
%union.anon.179 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.153, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.151 }
%union.anon.4 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.153 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.125, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_tcp_bpf_sendmsg_redir = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_bpf_sendmsg_redir = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_bpf_sendmsg_redir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_bpf_sendmsg_redir to i32), ptr @__kstrtab_tcp_bpf_sendmsg_redir, ptr @__kstrtabns_tcp_bpf_sendmsg_redir }, section "___ksymtab_gpl+tcp_bpf_sendmsg_redir", align 4
@__initcall__kmod_tcp_bpf__608_574_tcp_bpf_v4_build_proto7 = internal global ptr @tcp_bpf_v4_build_proto, section ".initcall7.init", align 4
@tcp_bpf_prots = internal global { [2 x [4 x %struct.proto]], [480 x i8] } zeroinitializer, align 32
@__kstrtab_tcp_bpf_update_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_tcp_bpf_update_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_tcp_bpf_update_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tcp_bpf_update_proto to i32), ptr @__kstrtab_tcp_bpf_update_proto, ptr @__kstrtabns_tcp_bpf_update_proto }, section "___ksymtab_gpl+tcp_bpf_update_proto", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_psock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/skmsg.h\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@tcp_prot = external dso_local local_unnamed_addr global %struct.proto, align 4
@tcpv6_prot_saved = internal global ptr null, section ".data..read_mostly", align 4
@tcpv6_prot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tcpv6_prot_lock\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"tcp_bpf_prots\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 536, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"../include/linux/skmsg.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 286, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 723, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 1160, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 717, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"tcpv6_prot_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [22 x i8] c"../net/ipv4/tcp_bpf.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 535, i32 8 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__initcall__kmod_tcp_bpf__608_574_tcp_bpf_v4_build_proto7, ptr @__ksymtab_tcp_bpf_sendmsg_redir, ptr @__ksymtab_tcp_bpf_update_proto, ptr @tcp_bpf_prots, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tcpv6_prot_lock, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcp_bpf_prots to i32), i32 2016, i32 2496, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcpv6_prot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_bpf_sendmsg_redir(ptr noundef %sk, ptr noundef %msg, i32 noundef %bytes, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.sk_msg, ptr %msg, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %call1 = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call fastcc i32 @bpf_tcp_ingress(ptr noundef %sk, ptr noundef nonnull %call1, ptr noundef %msg, i32 noundef %bytes)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %call.i = tail call fastcc i32 @tcp_bpf_push(ptr noundef %sk, ptr noundef %msg, i32 noundef %bytes, i32 noundef %flags, i1 noundef zeroext false) #10
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call7, %cond.true ], [ %call.i, %cond.false ]
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %cond, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %cond, %if.then10.i.i.i.i ], [ %cond, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sk_psock_get(ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !43
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %4 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_user_data.i, align 4
  %call.i4 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6, label %rcu_read_lock.exit.sk_psock.exit_crit_edge

rcu_read_lock.exit.sk_psock.exit_crit_edge:       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

land.lhs.true.i6:                                 ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i6.sk_psock.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i6.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i6
  %.b10.i = load i1, ptr @sk_psock.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.sk_psock.exit_crit_edge, label %if.then.i7

land.lhs.true4.i.sk_psock.exit_crit_edge:         ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock.exit

if.then.i7:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sk_psock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 286, ptr noundef nonnull @.str.3) #10
  br label %sk_psock.exit

sk_psock.exit:                                    ; preds = %if.then.i7, %land.lhs.true4.i.sk_psock.exit_crit_edge, %land.lhs.true.i6.sk_psock.exit_crit_edge, %rcu_read_lock.exit.sk_psock.exit_crit_edge
  %6 = ptrtoint ptr %5 to i32
  %and.i = and i32 %6, -4
  %7 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %sk_psock.exit.if.end_crit_edge, label %land.lhs.true

sk_psock.exit.if.end_crit_edge:                   ; preds = %sk_psock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %sk_psock.exit
  %refcnt = getelementptr inbounds %struct.sk_psock, ptr %7, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %8 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %10 = phi i32 [ %9, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i8 = add i32 %10, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %14 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %13, i32 %add.i.i.i8, ptr elementtype(i32) %refcnt) #10, !srcloc !44
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %13
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !41

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %16, 1
  %17 = or i32 %add5.i.i.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !41

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #10
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.i.i.i.not = icmp eq i32 %19, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %spec.select = select i1 %tobool12.i.i.i.not, ptr null, ptr %7
  br label %if.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit, %sk_psock.exit.if.end_crit_edge
  %psock.0 = phi ptr [ null, %sk_psock.exit.if.end_crit_edge ], [ %spec.select, %refcount_inc_not_zero.exit ]
  %call.i9 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i9, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i12

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i12:                                ; preds = %if.end
  %call1.i10 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i14

land.lhs.true.i12.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i14:                               ; preds = %land.lhs.true.i12
  %.b4.i13 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i13, label %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, label %if.then.i15

land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i15:                                      ; preds = %land.lhs.true2.i14
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i15, %land.lhs.true2.i14.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i12.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %20 = call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i.i.i.i.i16 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i16 to ptr
  %preempt_count.i.i.i.i17 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i17, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i17, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %psock.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_tcp_ingress(ptr noundef %sk, ptr noundef %psock, ptr nocapture noundef %msg, i32 noundef %apply_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apply_bytes)
  %tobool.not = icmp eq i32 %apply_bytes, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 11712, i32 noundef 444) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end, !prof !38

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %call7.i.i, align 8
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %size8.i = getelementptr inbounds %struct.sk_msg_sg, ptr %call7.i.i, i32 0, i32 3
  %size10.i = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 3
  %end = getelementptr inbounds %struct.sk_msg_sg, ptr %call7.i.i, i32 0, i32 2
  %end36 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond34.do.body_crit_edge, %if.end
  %apply_bytes.addr.0 = phi i32 [ %apply_bytes, %if.end ], [ %apply_bytes.addr.1, %do.cond34.do.body_crit_edge ]
  %copied.0 = phi i32 [ 0, %if.end ], [ %add, %do.cond34.do.body_crit_edge ]
  %i.0 = phi i32 [ %2, %if.end ], [ %spec.store.select, %do.cond34.do.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %i.0
  br i1 %tobool.not, label %do.body.cond.false_crit_edge, label %land.lhs.true

do.body.cond.false_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %do.body
  %length = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %i.0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %apply_bytes.addr.0, i32 %5)
  %cmp = icmp ult i32 %apply_bytes.addr.0, %5
  br i1 %cmp, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %do.body.cond.false_crit_edge
  %length11 = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %i.0, i32 2
  %6 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length11, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ %apply_bytes.addr.0, %land.lhs.true.cond.end_crit_edge ]
  %8 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 32
  %10 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %11, null
  br i1 %tobool.i.not.i, label %cond.end.if.end17_crit_edge, label %if.end.i

cond.end.if.end17_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end.i:                                         ; preds = %cond.end
  %12 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_forward_alloc.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cond)
  %cmp.not.i = icmp slt i32 %13, %cond
  br i1 %cmp.not.i, label %sk_wmem_schedule.exit, label %if.end.i.if.end17_crit_edge

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

sk_wmem_schedule.exit:                            ; preds = %if.end.i
  %call1.i = tail call i32 @__sk_mem_schedule(ptr noundef %sk, i32 noundef %cond, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.i.not, label %do.end38, label %sk_wmem_schedule.exit.if.end17_crit_edge

sk_wmem_schedule.exit.if.end17_crit_edge:         ; preds = %sk_wmem_schedule.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %sk_wmem_schedule.exit.if.end17_crit_edge, %if.end.i.if.end17_crit_edge, %cond.end.if.end17_crit_edge
  %14 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i3 = getelementptr inbounds %struct.proto, ptr %15, i32 0, i32 32
  %16 = ptrtoint ptr %memory_allocated.i.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memory_allocated.i.i3, align 4
  %tobool.i.not.i4 = icmp eq ptr %17, null
  br i1 %tobool.i.not.i4, label %if.end17.sk_mem_charge.exit_crit_edge, label %if.end.i6

if.end17.sk_mem_charge.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_charge.exit

if.end.i6:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %19, %cond
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i6, %if.end17.sk_mem_charge.exit_crit_edge
  %arrayidx.i7 = getelementptr %struct.sk_msg_sg, ptr %call7.i.i, i32 0, i32 6, i32 %i.0
  %20 = call ptr @memcpy(ptr %arrayidx.i7, ptr %arrayidx.i, i32 20)
  %length.i = getelementptr %struct.sk_msg_sg, ptr %call7.i.i, i32 0, i32 6, i32 %i.0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %length.i, align 4
  %22 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size8.i, align 4
  %add.i = add i32 %23, %cond
  store i32 %add.i, ptr %size8.i, align 4
  %24 = ptrtoint ptr %size10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size10.i, align 4
  %sub.i8 = sub i32 %25, %cond
  store i32 %sub.i8, ptr %size10.i, align 4
  %length14.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %i.0, i32 2
  %26 = ptrtoint ptr %length14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length14.i, align 4
  %sub15.i = sub i32 %27, %cond
  store i32 %sub15.i, ptr %length14.i, align 4
  %offset.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %i.0, i32 1
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i, align 4
  %add19.i = add i32 %29, %cond
  store i32 %add19.i, ptr %offset.i, align 4
  %add = add i32 %cond, %copied.0
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %cond)
  %tobool19.not = icmp eq i32 %27, %cond
  br i1 %tobool19.not, label %sk_mem_charge.exit.do.body23_crit_edge, label %if.then20

sk_mem_charge.exit.do.body23_crit_edge:           ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23

if.then20:                                        ; preds = %sk_mem_charge.exit
  %30 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i7, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sk_msg_page.exit, label %do.body2.i.i, !prof !41

do.body2.i.i:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !46
  unreachable

sk_msg_page.exit:                                 ; preds = %if.then20
  %and.i.i = and i32 %31, -4
  %32 = inttoptr i32 %and.i.i to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i9 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i, label %sk_msg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !41

sk_msg_page.exit._compound_head.exit.i_crit_edge: ; preds = %sk_msg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sk_msg_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %35, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sk_msg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %32, %sk_msg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %36 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %37, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !38

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !47
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@bpf_tcp_ingress, %if.then.i.i.i.i)) #10
          to label %do.body23 [label %if.then.i.i.i.i], !srcloc !49

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %.pre-phi, i32 noundef 1) #10
  br label %do.body23

do.body23:                                        ; preds = %if.then.i.i.i.i, %do.end5.i.i, %sk_mem_charge.exit.do.body23_crit_edge
  %inc = add i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc)
  %cmp24 = icmp eq i32 %inc, 18
  %spec.store.select = select i1 %cmp24, i32 0, i32 %inc
  %39 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.store.select, ptr %end, align 8
  br i1 %tobool.not, label %do.body23.do.cond34_crit_edge, label %if.then29

do.body23.do.cond34_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34

if.then29:                                        ; preds = %do.body23
  %sub = sub i32 %apply_bytes.addr.0, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool30.not = icmp eq i32 %sub, 0
  br i1 %tobool30.not, label %if.then29.if.then40_crit_edge, label %if.then29.do.cond34_crit_edge

if.then29.do.cond34_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond34

if.then29.if.then40_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

do.cond34:                                        ; preds = %if.then29.do.cond34_crit_edge, %do.body23.do.cond34_crit_edge
  %apply_bytes.addr.1 = phi i32 [ %sub, %if.then29.do.cond34_crit_edge ], [ %apply_bytes.addr.0, %do.body23.do.cond34_crit_edge ]
  %40 = ptrtoint ptr %end36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end36, align 4
  %cmp37.not = icmp eq i32 %spec.store.select, %41
  br i1 %cmp37.not, label %do.cond34.if.then40_crit_edge, label %do.cond34.do.body_crit_edge

do.cond34.do.body_crit_edge:                      ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond34.if.then40_crit_edge:                    ; preds = %do.cond34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

do.end38:                                         ; preds = %sk_wmem_schedule.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0)
  %tobool14.not = icmp eq i32 %copied.0, 0
  br i1 %tobool14.not, label %if.else, label %do.end38.if.then40_crit_edge

do.end38.if.then40_crit_edge:                     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then40

if.then40:                                        ; preds = %do.end38.if.then40_crit_edge, %do.cond34.if.then40_crit_edge, %if.then29.if.then40_crit_edge
  %i.121 = phi i32 [ %i.0, %do.end38.if.then40_crit_edge ], [ %spec.store.select, %do.cond34.if.then40_crit_edge ], [ %spec.store.select, %if.then29.if.then40_crit_edge ]
  %42 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.121, ptr %msg, align 4
  %ingress_lock.i = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %ingress_lock.i) #10
  %state.i.i = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 11
  %43 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i10 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i10, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then40
  %list.i = getelementptr inbounds %struct.sk_msg, ptr %call7.i.i, i32 0, i32 9
  %ingress_msg.i = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 9
  %prev.i.i = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %46, ptr noundef %ingress_msg.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.sk_psock_queue_msg.exit_crit_edge

if.then.i.sk_psock_queue_msg.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock_queue_msg.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list.i, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %ingress_msg.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.sk_msg, ptr %call7.i.i, i32 0, i32 9, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i.i, align 8
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %list.i, ptr %46, align 4
  br label %sk_psock_queue_msg.exit

if.else.i:                                        ; preds = %if.then40
  %skb.i.i = getelementptr inbounds %struct.sk_msg, ptr %call7.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skb.i.i, align 8
  %tobool.not.i.i11 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i11, label %if.else.i.drop_sk_msg.exit.i_crit_edge, label %if.then.i.i13

if.else.i.drop_sk_msg.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop_sk_msg.exit.i

if.then.i.i13:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %psock to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %psock, align 8
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 17
  %55 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %end.i.i.i.i.i, align 4
  %gso_segs.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %gso_segs.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %gso_segs.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp.i.i.i.i = icmp eq i16 %58, 0
  %narrow.i.i.i.i = select i1 %cmp.i.i.i.i, i16 1, i16 %58
  %cond.i.i.i.i = zext i16 %narrow.i.i.i.i to i32
  %sk_drops.i.i.i.i = getelementptr inbounds %struct.sock, ptr %54, i32 0, i32 5
  %call.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i.i.i.i, i32 1, i32 3, i32 1) #10
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i.i.i.i, ptr %sk_drops.i.i.i.i, i32 %cond.i.i.i.i, ptr elementtype(i32) %sk_drops.i.i.i.i) #10, !srcloc !48
  tail call void @kfree_skb_reason(ptr noundef nonnull %52, i32 noundef 0) #10
  br label %drop_sk_msg.exit.i

drop_sk_msg.exit.i:                               ; preds = %if.then.i.i13, %if.else.i.drop_sk_msg.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %sk_psock_queue_msg.exit

sk_psock_queue_msg.exit:                          ; preds = %drop_sk_msg.exit.i, %if.end.i.i.i, %if.then.i.sk_psock_queue_msg.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %ingress_lock.i) #10
  %saved_data_ready.i = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 18
  %60 = ptrtoint ptr %saved_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %saved_data_ready.i, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.else.i15, label %sk_psock_queue_msg.exit.sk_psock_data_ready.exit_crit_edge

sk_psock_queue_msg.exit.sk_psock_data_ready.exit_crit_edge: ; preds = %sk_psock_queue_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock_data_ready.exit

if.else.i15:                                      ; preds = %sk_psock_queue_msg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %62 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sk_data_ready.i, align 8
  br label %sk_psock_data_ready.exit

sk_psock_data_ready.exit:                         ; preds = %if.else.i15, %sk_psock_queue_msg.exit.sk_psock_data_ready.exit_crit_edge
  %.sink.i = phi ptr [ %63, %if.else.i15 ], [ %61, %sk_psock_queue_msg.exit.sk_psock_data_ready.exit_crit_edge ]
  tail call void %.sink.i(ptr noundef %sk) #10
  br label %if.end44

if.else:                                          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef nonnull %call7.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end44

if.end44:                                         ; preds = %if.else, %sk_psock_data_ready.exit
  %ret.022 = phi i32 [ -12, %if.else ], [ 0, %sk_psock_data_ready.exit ]
  tail call void @release_sock(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.022, %if.end44 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcp_bpf_v4_build_proto() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @tcp_bpf_prots, ptr @tcp_prot, i32 252)
  store ptr @sock_map_close, ptr @tcp_bpf_prots, align 4
  store ptr @tcp_bpf_recvmsg, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 0, i32 29), align 4
  %1 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 1), ptr @tcp_bpf_prots, i32 252)
  store ptr @tcp_bpf_sendmsg, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 1, i32 12), align 4
  store ptr @tcp_bpf_sendpage, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 1, i32 14), align 4
  %2 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 2), ptr @tcp_bpf_prots, i32 252)
  store ptr @tcp_bpf_recvmsg_parser, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 2, i32 13), align 4
  %3 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 3), ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 1), i32 252)
  store ptr @tcp_bpf_recvmsg_parser, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 0, i32 3, i32 13), align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tcp_bpf_update_proto(ptr noundef %sk, ptr nocapture noundef readonly %psock, i1 noundef zeroext %restore) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  %cond = zext i1 %cmp to i32
  %progs = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 6
  %2 = ptrtoint ptr %progs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %progs, align 8
  %tobool.not = icmp eq ptr %3, null
  %stream_verdict = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %stream_verdict to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_verdict, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %not.tobool.not = xor i1 %tobool.not, true
  %cond2 = zext i1 %not.tobool.not to i32
  %skb_verdict = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %skb_verdict to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skb_verdict, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %cond9 = select i1 %tobool.not, i32 2, i32 3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %config.0 = phi i32 [ %cond9, %if.then ], [ %cond2, %lor.lhs.false.if.end_crit_edge ]
  %is_icsk.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %8 = ptrtoint ptr %is_icsk.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %is_icsk.i, align 8
  %9 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i = icmp eq i16 %9, 0
  br i1 %restore, label %if.then11, label %if.end34

if.then11:                                        ; preds = %if.end
  br i1 %tobool.not.i, label %if.then11.if.else_crit_edge, label %inet_csk_has_ulp.exit

if.then11.if.else_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

inet_csk_has_ulp.exit:                            ; preds = %if.then11
  %icsk_ulp_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %10 = ptrtoint ptr %icsk_ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icsk_ulp_ops.i, align 4
  %tobool2.i.not = icmp eq ptr %11, null
  br i1 %tobool2.i.not, label %inet_csk_has_ulp.exit.if.else_crit_edge, label %do.body14

inet_csk_has_ulp.exit.if.else_crit_edge:          ; preds = %inet_csk_has_ulp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

do.body14:                                        ; preds = %inet_csk_has_ulp.exit
  call void @__sanitizer_cov_trace_pc() #12
  %saved_unhash = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 15
  %12 = ptrtoint ptr %saved_unhash to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %saved_unhash, align 8
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %14 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_prot, align 8
  %unhash = getelementptr inbounds %struct.proto, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %unhash to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %unhash, align 4
  %sk_proto = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %17 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_proto, align 4
  %saved_write_space = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 17
  %19 = ptrtoint ptr %saved_write_space to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %saved_write_space, align 8
  tail call void @tcp_update_ulp(ptr noundef %sk, ptr noundef %18, ptr noundef %20) #10
  br label %cleanup

if.else:                                          ; preds = %inet_csk_has_ulp.exit.if.else_crit_edge, %if.then11.if.else_crit_edge
  %saved_write_space20 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 17
  %21 = ptrtoint ptr %saved_write_space20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %saved_write_space20, align 8
  %sk_write_space = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 78
  %23 = ptrtoint ptr %sk_write_space to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %sk_write_space, align 4
  %sk_proto26 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %24 = ptrtoint ptr %sk_proto26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk_proto26, align 4
  %skc_prot28 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %26 = ptrtoint ptr %skc_prot28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %skc_prot28, align 8
  br label %cleanup

if.end34:                                         ; preds = %if.end
  br i1 %tobool.not.i, label %if.end34.if.end37_crit_edge, label %inet_csk_has_ulp.exit88

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

inet_csk_has_ulp.exit88:                          ; preds = %if.end34
  %icsk_ulp_ops.i85 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 12
  %27 = ptrtoint ptr %icsk_ulp_ops.i85 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %icsk_ulp_ops.i85, align 4
  %tobool2.i86.not = icmp eq ptr %28, null
  br i1 %tobool2.i86.not, label %inet_csk_has_ulp.exit88.if.end37_crit_edge, label %inet_csk_has_ulp.exit88.cleanup_crit_edge

inet_csk_has_ulp.exit88.cleanup_crit_edge:        ; preds = %inet_csk_has_ulp.exit88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

inet_csk_has_ulp.exit88.if.end37_crit_edge:       ; preds = %inet_csk_has_ulp.exit88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %inet_csk_has_ulp.exit88.if.end37_crit_edge, %if.end34.if.end37_crit_edge
  br i1 %cmp, label %if.then43, label %if.end37.do.body55_crit_edge

if.end37.do.body55_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

if.then43:                                        ; preds = %if.end37
  %sk_proto44 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 20
  %29 = ptrtoint ptr %sk_proto44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk_proto44, align 4
  %recvmsg.i = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %recvmsg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %recvmsg.i, align 4
  %cmp.i = icmp eq ptr %32, @tcp_recvmsg
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then43
  %sendmsg.i = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 12
  %33 = ptrtoint ptr %sendmsg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sendmsg.i, align 4
  %cmp1.i = icmp eq ptr %34, @tcp_sendmsg
  br i1 %cmp1.i, label %land.rhs.i89, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs.i89:                                     ; preds = %land.lhs.true.i
  %sendpage.i = getelementptr inbounds %struct.proto, ptr %30, i32 0, i32 14
  %35 = ptrtoint ptr %sendpage.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sendpage.i, align 4
  %cmp2.i = icmp eq ptr %36, @tcp_sendpage
  br i1 %cmp2.i, label %if.end48, label %land.rhs.i89.cleanup_crit_edge

land.rhs.i89.cleanup_crit_edge:                   ; preds = %land.rhs.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %land.rhs.i89
  %37 = load volatile ptr, ptr @tcpv6_prot_saved, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !50
  %cmp.not.i = icmp eq ptr %37, %30
  br i1 %cmp.not.i, label %if.end48.do.body55_crit_edge, label %if.then.i, !prof !41

if.end48.do.body55_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

if.then.i:                                        ; preds = %if.end48
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @tcpv6_prot_lock) #10
  %38 = load ptr, ptr @tcpv6_prot_saved, align 4
  %cmp6.not.i = icmp eq ptr %38, %30
  br i1 %cmp6.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then13.i, !prof !38

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1), ptr %30, i32 252)
  store ptr @sock_map_close, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1), align 4
  store ptr @tcp_bpf_recvmsg, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 0, i32 13), align 4
  store ptr @sk_msg_is_readable, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 0, i32 29), align 4
  %40 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 1), ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1), i32 252)
  store ptr @tcp_bpf_sendmsg, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 1, i32 12), align 4
  store ptr @tcp_bpf_sendpage, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 1, i32 14), align 4
  %41 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 2), ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1), i32 252)
  store ptr @tcp_bpf_recvmsg_parser, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 2, i32 13), align 4
  %42 = call ptr @memcpy(ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 3), ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 1), i32 252)
  store ptr @tcp_bpf_recvmsg_parser, ptr getelementptr inbounds ([2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 1, i32 3, i32 13), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !51
  store volatile ptr %30, ptr @tcpv6_prot_saved, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then13.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @tcpv6_prot_lock) #10
  br label %do.body55

do.body55:                                        ; preds = %if.end.i, %if.end48.do.body55_crit_edge, %if.end37.do.body55_crit_edge
  %arrayidx56 = getelementptr [2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 %cond, i32 %config.0
  %skc_prot58 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %43 = ptrtoint ptr %skc_prot58 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %arrayidx56, ptr %skc_prot58, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body55, %land.rhs.i89.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %inet_csk_has_ulp.exit88.cleanup_crit_edge, %if.else, %do.body14
  %retval.0 = phi i32 [ 0, %do.body55 ], [ 0, %if.else ], [ 0, %do.body14 ], [ -22, %inet_csk_has_ulp.exit88.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ], [ -22, %land.rhs.i89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_update_ulp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tcp_bpf_clone(ptr nocapture noundef readonly %sk, ptr nocapture noundef %newsk) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %0 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  %cond = zext i1 %cmp to i32
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %newsk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %arrayidx = getelementptr [2 x [4 x %struct.proto]], ptr @tcp_bpf_prots, i32 0, i32 %cond
  %cmp4 = icmp eq ptr %3, %arrayidx
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk_prot_creator = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 49
  %4 = ptrtoint ptr %sk_prot_creator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_prot_creator, align 4
  %6 = ptrtoint ptr %skc_prot to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %skc_prot, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_mem_schedule(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_bpf_push(ptr noundef %sk, ptr noundef %msg, i32 noundef %apply_bytes, i32 noundef %flags, i1 noundef zeroext %uncharge) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apply_bytes)
  %tobool.not = icmp eq i32 %apply_bytes, 0
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %size17 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 3
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %sk_reserved_mem.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 12
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %end = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 2
  %tobool.not.not = xor i1 %tobool.not, true
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %apply_bytes.addr.0 = phi i32 [ %apply_bytes, %entry ], [ %spec.select, %while.cond.backedge ]
  %flags.addr.0 = phi i32 [ %flags, %entry ], [ %flags.addr.2, %while.cond.backedge ]
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %1
  br i1 %tobool.not, label %while.cond.cond.false_crit_edge, label %land.lhs.true

while.cond.cond.false_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true:                                    ; preds = %while.cond
  %length = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %1, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %apply_bytes.addr.0, i32 %3)
  %cmp = icmp ult i32 %apply_bytes.addr.0, %3
  br i1 %cmp, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %while.cond.cond.false_crit_edge
  %length3 = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %1, i32 2
  %4 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ %apply_bytes.addr.0, %land.lhs.true.cond.end_crit_edge ]
  %offset = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %1, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !41

do.body2.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !46
  unreachable

sg_page.exit:                                     ; preds = %cond.end
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %and.i = and i32 %7, -4
  %10 = inttoptr i32 %and.i to ptr
  tail call void @tcp_rate_check_app_limited(ptr noundef %sk) #10
  %length20 = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %1, i32 2
  br label %retry

retry:                                            ; preds = %if.then26, %sg_page.exit
  %apply_bytes.addr.1 = phi i32 [ %apply_bytes.addr.0, %sg_page.exit ], [ %spec.select, %if.then26 ]
  %flags.addr.1 = phi i32 [ %flags.addr.0, %sg_page.exit ], [ %flags.addr.2, %if.then26 ]
  %size.0 = phi i32 [ %cond, %sg_page.exit ], [ %sub27, %if.then26 ]
  %off.0 = phi i32 [ %9, %sg_page.exit ], [ %add28, %if.then26 ]
  %11 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %retry.if.else_crit_edge, label %tls_sw_has_ctx_tx.exit

retry.if.else_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

tls_sw_has_ctx_tx.exit:                           ; preds = %retry
  %priv_ctx_tx.i.i = getelementptr inbounds %struct.tls_context, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %priv_ctx_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv_ctx_tx.i.i, align 4
  %tobool2.i.not = icmp eq ptr %14, null
  br i1 %tobool2.i.not, label %tls_sw_has_ctx_tx.exit.if.else_crit_edge, label %if.then

tls_sw_has_ctx_tx.exit.if.else_crit_edge:         ; preds = %tls_sw_has_ctx_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %tls_sw_has_ctx_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %flags.addr.1, 65536
  %call8 = tail call i32 @kernel_sendpage_locked(ptr noundef %sk, ptr noundef %10, i32 noundef %off.0, i32 noundef %size.0, i32 noundef %or) #10
  br label %if.end

if.else:                                          ; preds = %tls_sw_has_ctx_tx.exit.if.else_crit_edge, %retry.if.else_crit_edge
  %call9 = tail call i32 @do_tcp_sendpages(ptr noundef %sk, ptr noundef %10, i32 noundef %off.0, i32 noundef %size.0, i32 noundef %flags.addr.1) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %flags.addr.2 = phi i32 [ %or, %if.then ], [ %flags.addr.1, %if.else ]
  %ret.0 = phi i32 [ %call8, %if.then ], [ %call9, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp10 = icmp slt i32 %ret.0, 1
  br i1 %cmp10, label %if.end.cleanup54_crit_edge, label %if.end12

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.end12:                                         ; preds = %if.end
  %sub = select i1 %tobool.not, i32 0, i32 %ret.0
  %spec.select = sub i32 %apply_bytes.addr.1, %sub
  %15 = ptrtoint ptr %size17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size17, align 4
  %sub18 = sub i32 %16, %ret.0
  store i32 %sub18, ptr %size17, align 4
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %add = add i32 %18, %ret.0
  store i32 %add, ptr %offset, align 4
  %19 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %length20, align 4
  %sub21 = sub i32 %20, %ret.0
  store i32 %sub21, ptr %length20, align 4
  br i1 %uncharge, label %if.then23, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end12
  %21 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %22, i32 0, i32 32
  %23 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i105 = icmp eq ptr %24, null
  br i1 %tobool.i.not.i105, label %if.then23.if.end24_crit_edge, label %if.end.i106

if.then23.if.end24_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end.i106:                                      ; preds = %if.then23
  %25 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_forward_alloc.i, align 8
  %add.i = add i32 %26, %ret.0
  store i32 %add.i, ptr %sk_forward_alloc.i, align 8
  %27 = ptrtoint ptr %sk_reserved_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sk_reserved_mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i, label %if.end.i106.sk_unused_reserved_mem.exit.i_crit_edge, label %if.end.i.i, !prof !41

if.end.i106.sk_unused_reserved_mem.exit.i_crit_edge: ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_unused_reserved_mem.exit.i

if.end.i.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sk_wmem_queued.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #10
  %31 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %33 = add i32 %30, %32
  %sub5.i.i = sub i32 %28, %33
  %34 = tail call i32 @llvm.smax.i32(i32 %sub5.i.i, i32 0) #10
  br label %sk_unused_reserved_mem.exit.i

sk_unused_reserved_mem.exit.i:                    ; preds = %if.end.i.i, %if.end.i106.sk_unused_reserved_mem.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %34, %if.end.i.i ], [ 0, %if.end.i106.sk_unused_reserved_mem.exit.i_crit_edge ]
  %sub.i = sub i32 %add.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 2097151
  br i1 %cmp.i, label %if.then4.i, label %sk_unused_reserved_mem.exit.i.if.end24_crit_edge, !prof !38

sk_unused_reserved_mem.exit.i.if.end24_crit_edge: ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then4.i:                                       ; preds = %sk_unused_reserved_mem.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__sk_mem_reclaim(ptr noundef %sk, i32 noundef 1048576) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then4.i, %sk_unused_reserved_mem.exit.i.if.end24_crit_edge, %if.then23.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %cmp25.not = icmp eq i32 %size.0, %ret.0
  br i1 %cmp25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %sub27 = sub i32 %size.0, %ret.0
  %add28 = add i32 %ret.0, %off.0
  br label %retry

if.end29:                                         ; preds = %if.end24
  %35 = ptrtoint ptr %length20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool31.not = icmp eq i32 %36, 0
  br i1 %tobool31.not, label %if.then32, label %if.end48

if.then32:                                        ; preds = %if.end29
  %37 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i107 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i107)
  %tobool.not.i.i108 = icmp eq i32 %and.i.i107, 0
  br i1 %tobool.not.i.i108, label %if.then32._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !41

if.then32._compound_head.exit.i_crit_edge:        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %39, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then32._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %10, %if.then32._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %40 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !38

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.6) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !52
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tcp_bpf_push, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !49

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %.pre-phi) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg, align 4
  %inc = add i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc)
  %cmp37 = icmp eq i32 %inc, 18
  %spec.select102 = select i1 %cmp37, i32 0, i32 %inc
  %45 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select102, ptr %msg, align 4
  tail call void @sg_init_table(ptr noundef %arrayidx.i, i32 noundef 1) #10
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg, align 4
  %48 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp45 = icmp eq i32 %47, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool51.not = icmp eq i32 %spec.select, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool51.not, i1 false
  %or.cond124 = select i1 %cmp45, i1 true, i1 %or.cond
  br i1 %or.cond124, label %put_page.exit.cleanup54_crit_edge, label %put_page.exit.while.cond.backedge_crit_edge

put_page.exit.while.cond.backedge_crit_edge:      ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

put_page.exit.cleanup54_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.end48:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool51.not.old = icmp eq i32 %spec.select, 0
  %or.cond.old = select i1 %tobool.not.not, i1 %tobool51.not.old, i1 false
  br i1 %or.cond.old, label %if.end48.cleanup54_crit_edge, label %if.end48.while.cond.backedge_crit_edge

if.end48.while.cond.backedge_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end48.cleanup54_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

while.cond.backedge:                              ; preds = %if.end48.while.cond.backedge_crit_edge, %put_page.exit.while.cond.backedge_crit_edge
  br label %while.cond

cleanup54:                                        ; preds = %if.end48.cleanup54_crit_edge, %put_page.exit.cleanup54_crit_edge, %if.end.cleanup54_crit_edge
  %retval.2 = phi i32 [ %ret.0, %if.end.cleanup54_crit_edge ], [ 0, %put_page.exit.cleanup54_crit_edge ], [ 0, %if.end48.cleanup54_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_rate_check_app_limited(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendpage_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_tcp_sendpages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sk_mem_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_psock_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_map_close(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_bpf_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @inet_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #10
  br label %cleanup37

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then13, label %if.end15, !prof !38

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @tcp_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #10
  br label %cleanup37

if.end15:                                         ; preds = %if.end
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %sk_receive_queue
  br i1 %cmp.i.not, label %if.end15.if.end21_crit_edge, label %sk_psock_queue_empty.exit

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

sk_psock_queue_empty.exit:                        ; preds = %if.end15
  %ingress_msg.i = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 9
  %2 = ptrtoint ptr %ingress_msg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ingress_msg.i, align 4
  %cmp.i.i = icmp eq ptr %3, %ingress_msg.i
  br i1 %cmp.i.i, label %if.then19, label %sk_psock_queue_empty.exit.if.end21_crit_edge

sk_psock_queue_empty.exit.if.end21_crit_edge:     ; preds = %sk_psock_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %sk_psock_queue_empty.exit
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.sk_psock_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %sk_psock_put.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call3) #10
  br label %sk_psock_put.exit

sk_psock_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge
  %call20 = tail call i32 @tcp_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #10
  br label %cleanup37

if.end21:                                         ; preds = %sk_psock_queue_empty.exit.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool25.not = icmp eq i32 %nonblock, 0
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %ingress_msg.i82 = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 9
  br label %msg_bytes_ready

msg_bytes_ready:                                  ; preds = %sk_psock_queue_empty.exit86.msg_bytes_ready_crit_edge, %if.end21
  %call22 = tail call i32 @sk_msg_recvmsg(ptr noundef %sk, ptr noundef nonnull %call3, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %msg_bytes_ready.if.end36_crit_edge

msg_bytes_ready.if.end36_crit_edge:               ; preds = %msg_bytes_ready
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then24:                                        ; preds = %msg_bytes_ready
  br i1 %tobool25.not, label %cond.false.i, label %if.then24.sock_rcvtimeo.exit_crit_edge

if.then24.sock_rcvtimeo.exit_crit_edge:           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.then24.sock_rcvtimeo.exit_crit_edge
  %cond.i80 = phi i32 [ %6, %cond.false.i ], [ 0, %if.then24.sock_rcvtimeo.exit_crit_edge ]
  %call27 = tail call fastcc i32 @tcp_msg_wait_data(ptr noundef %sk, ptr noundef nonnull %call3, i32 noundef %cond.i80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %sock_rcvtimeo.exit.if.end36_crit_edge, label %sk_psock_queue_empty.exit86

sock_rcvtimeo.exit.if.end36_crit_edge:            ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

sk_psock_queue_empty.exit86:                      ; preds = %sock_rcvtimeo.exit
  %7 = ptrtoint ptr %ingress_msg.i82 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %ingress_msg.i82, align 4
  %cmp.i.i83 = icmp eq ptr %8, %ingress_msg.i82
  br i1 %cmp.i.i83, label %if.end32, label %sk_psock_queue_empty.exit86.msg_bytes_ready_crit_edge

sk_psock_queue_empty.exit86.msg_bytes_ready_crit_edge: ; preds = %sk_psock_queue_empty.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %msg_bytes_ready

if.end32:                                         ; preds = %sk_psock_queue_empty.exit86
  tail call void @release_sock(ptr noundef %sk) #10
  %refcnt.i87 = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 14
  %call.i.i.i.i.i.i88 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i87, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i87, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i87, ptr %refcnt.i87, i32 1, ptr elementtype(i32) %refcnt.i87) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i89 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i89)
  %cmp.i.i.i.i90 = icmp eq i32 %asmresult.i.i.i.i.i.i.i89, 1
  br i1 %cmp.i.i.i.i90, label %if.then.i94, label %if.end5.i.i.i.i92

if.end5.i.i.i.i92:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i89)
  %.not.i.i.i.i91 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i89, 0
  br i1 %.not.i.i.i.i91, label %if.end5.i.i.i.i92.cleanup.thread_crit_edge, label %if.then10.i.i.i.i93, !prof !41

if.end5.i.i.i.i92.cleanup.thread_crit_edge:       ; preds = %if.end5.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then10.i.i.i.i93:                              ; preds = %if.end5.i.i.i.i92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i87, i32 noundef 3) #10
  br label %cleanup.thread

if.then.i94:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call3) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i94, %if.then10.i.i.i.i93, %if.end5.i.i.i.i92.cleanup.thread_crit_edge
  %call33 = tail call i32 @tcp_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #10
  br label %cleanup37

if.end36:                                         ; preds = %sock_rcvtimeo.exit.if.end36_crit_edge, %msg_bytes_ready.if.end36_crit_edge
  %copied.1 = phi i32 [ %call22, %msg_bytes_ready.if.end36_crit_edge ], [ -11, %sock_rcvtimeo.exit.if.end36_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #10
  %refcnt.i96 = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 14
  %call.i.i.i.i.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i96, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i96, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i96, ptr %refcnt.i96, i32 1, ptr elementtype(i32) %refcnt.i96) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i98 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i98)
  %cmp.i.i.i.i99 = icmp eq i32 %asmresult.i.i.i.i.i.i.i98, 1
  br i1 %cmp.i.i.i.i99, label %if.then.i103, label %if.end5.i.i.i.i101

if.end5.i.i.i.i101:                               ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i98)
  %.not.i.i.i.i100 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i98, 0
  br i1 %.not.i.i.i.i100, label %if.end5.i.i.i.i101.cleanup37_crit_edge, label %if.then10.i.i.i.i102, !prof !41

if.end5.i.i.i.i101.cleanup37_crit_edge:           ; preds = %if.end5.i.i.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup37

if.then10.i.i.i.i102:                             ; preds = %if.end5.i.i.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i96, i32 noundef 3) #10
  br label %cleanup37

if.then.i103:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call3) #10
  br label %cleanup37

cleanup37:                                        ; preds = %if.then.i103, %if.then10.i.i.i.i102, %if.end5.i.i.i.i101.cleanup37_crit_edge, %cleanup.thread, %sk_psock_put.exit, %if.then13, %if.then
  %retval.2 = phi i32 [ %call, %if.then ], [ %call14, %if.then13 ], [ %call20, %sk_psock_put.exit ], [ %call33, %cleanup.thread ], [ %copied.1, %if.end5.i.i.i.i101.cleanup37_crit_edge ], [ %copied.1, %if.then10.i.i.i.i102 ], [ %copied.1, %if.then.i103 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_msg_is_readable(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_bpf_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) #0 align 64 {
entry:
  %tmp = alloca %struct.sk_msg, align 4
  %copied = alloca i32, align 4
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 444, ptr nonnull %tmp) #10
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 444)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #10
  %1 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %copied, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #10
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_flags, align 4
  %and = and i32 %3, -1572865
  %or = or i32 %and, 524288
  %call = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @tcp_sendmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %size) #10
  br label %cleanup89

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %4 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_flags, align 4
  %and6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %cond.false.i, label %if.end.sock_sndtimeo.exit_crit_edge

if.end.sock_sndtimeo.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 31
  %6 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %if.end.sock_sndtimeo.exit_crit_edge ]
  %8 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i, ptr %timeo, align 4
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not189 = icmp eq i32 %10, 0
  br i1 %tobool10.not189, label %sock_sndtimeo.exit.if.end87_crit_edge, label %while.body.lr.ph

sock_sndtimeo.exit.if.end87_crit_edge:            ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

while.body.lr.ph:                                 ; preds = %sock_sndtimeo.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_wmem_queued.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %sk_sndbuf.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %cork = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 5
  %arrayidx.i.i = getelementptr inbounds %struct.sk_msg_sg, ptr %tmp, i32 0, i32 6, i32 17
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %cork_bytes = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 3
  %eval = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %11 = phi i32 [ %10, %while.body.lr.ph ], [ %45, %cleanup.while.body_crit_edge ]
  %msg_tx.0190 = phi ptr [ null, %while.body.lr.ph ], [ %msg_tx.3, %cleanup.while.body_crit_edge ]
  %12 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool11.not = icmp eq i32 %13, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %13
  br label %out_err

if.end14:                                         ; preds = %while.body
  %14 = ptrtoint ptr %sk_wmem_queued.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sk_wmem_queued.i.i, align 8
  %16 = ptrtoint ptr %sk_sndbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %sk_sndbuf.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not.i.i = icmp slt i32 %15, %17
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end14.wait_for_sndbuf_crit_edge

if.end14.wait_for_sndbuf_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_sndbuf

if.end.i.i:                                       ; preds = %if.end14
  %18 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %skc_prot.i.i, align 8
  %stream_memory_free.i.i = getelementptr inbounds %struct.proto, ptr %19, i32 0, i32 28
  %20 = ptrtoint ptr %stream_memory_free.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream_memory_free.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end18_crit_edge, label %sk_stream_memory_free.exit

if.end.i.i.if.end18_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

sk_stream_memory_free.exit:                       ; preds = %if.end.i.i
  %call.i.i = call zeroext i1 %21(ptr noundef %sk, i32 noundef 0) #10
  br i1 %call.i.i, label %sk_stream_memory_free.exit.if.end18_crit_edge, label %sk_stream_memory_free.exit.wait_for_sndbuf_crit_edge

sk_stream_memory_free.exit.wait_for_sndbuf_crit_edge: ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_sndbuf

sk_stream_memory_free.exit.if.end18_crit_edge:    ; preds = %sk_stream_memory_free.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.end18:                                         ; preds = %sk_stream_memory_free.exit.if.end18_crit_edge, %if.end.i.i.if.end18_crit_edge
  %22 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cork, align 4
  %tobool19.not = icmp eq ptr %23, null
  br i1 %tobool19.not, label %if.else, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %24 = call ptr @memset(ptr %tmp, i32 0, i32 444)
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %arrayidx.i.i, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end18.if.end22_crit_edge
  %msg_tx.1.sroa.phi157 = phi ptr [ %tmp, %if.else ], [ %23, %if.end18.if.end22_crit_edge ]
  %msg_tx.1.sroa.phi157.sroa.phi = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_tx.1.sroa.phi157, i32 0, i32 3
  %msg_tx.1.sroa.phi157.sroa.phi200 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_tx.1.sroa.phi157, i32 0, i32 2
  %26 = ptrtoint ptr %msg_tx.1.sroa.phi157.sroa.phi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_tx.1.sroa.phi157.sroa.phi, align 4
  %add = add i32 %27, %11
  %28 = ptrtoint ptr %msg_tx.1.sroa.phi157.sroa.phi200 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_tx.1.sroa.phi157.sroa.phi200, align 4
  %sub27 = add i32 %29, -1
  %call28 = call i32 @sk_msg_alloc(ptr noundef %sk, ptr noundef nonnull %msg_tx.1.sroa.phi157, i32 noundef %add, i32 noundef %sub27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end22.if.end36_crit_edge, label %if.then30

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call28)
  %cmp.not = icmp eq i32 %call28, -28
  br i1 %cmp.not, label %if.end32, label %if.then30.wait_for_memory_crit_edge

if.then30.wait_for_memory_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %wait_for_memory

if.end32:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %size34 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg_tx.1.sroa.phi157, i32 0, i32 3
  %30 = ptrtoint ptr %size34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size34, align 4
  %sub35 = sub i32 %31, %27
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end22.if.end36_crit_edge
  %copy.0 = phi i32 [ %sub35, %if.end32 ], [ %11, %if.end22.if.end36_crit_edge ]
  %call37 = call i32 @sk_msg_memcopy_from_iter(ptr noundef %sk, ptr noundef %msg_iter, ptr noundef nonnull %msg_tx.1.sroa.phi157, i32 noundef %copy.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  call void @sk_msg_trim(ptr noundef %sk, ptr noundef nonnull %msg_tx.1.sroa.phi157, i32 noundef %27) #10
  br label %if.then84

if.end40:                                         ; preds = %if.end36
  %32 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %copied, align 4
  %add41 = add i32 %33, %copy.0
  store i32 %add41, ptr %copied, align 4
  %34 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cork_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool42.not = icmp eq i32 %35, 0
  br i1 %tobool42.not, label %if.end40.if.end58_crit_edge, label %if.then43

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then43:                                        ; preds = %if.end40
  %36 = call i32 @llvm.usub.sat.i32(i32 %35, i32 %size)
  %37 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cork_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %size)
  %tobool53.not = icmp ule i32 %35, %size
  %tobool29.not.not = xor i1 %tobool29.not, true
  %brmerge = select i1 %tobool53.not, i1 true, i1 %tobool29.not.not
  br i1 %brmerge, label %if.end56, label %if.then43.if.end87_crit_edge

if.then43.if.end87_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.end56:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %eval to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %eval, align 8
  %39 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cork_bytes, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end56, %if.end40.if.end58_crit_edge
  %call59 = call fastcc i32 @tcp_bpf_send_verdict(ptr noundef %sk, ptr noundef nonnull %call, ptr noundef nonnull %msg_tx.1.sroa.phi157, ptr noundef nonnull %copied, i32 noundef %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end58.if.then84_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end58.if.then84_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

wait_for_sndbuf:                                  ; preds = %sk_stream_memory_free.exit.wait_for_sndbuf_crit_edge, %if.end14.wait_for_sndbuf_crit_edge
  %40 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sk_socket, align 8
  %flags69 = getelementptr inbounds %struct.socket, ptr %41, i32 0, i32 2
  call void @_set_bit(i32 noundef 2, ptr noundef %flags69) #10
  br label %wait_for_memory

wait_for_memory:                                  ; preds = %wait_for_sndbuf, %if.then30.wait_for_memory_crit_edge
  %msg_tx.2 = phi ptr [ %msg_tx.1.sroa.phi157, %if.then30.wait_for_memory_crit_edge ], [ %msg_tx.0190, %wait_for_sndbuf ]
  %call70 = call i32 @sk_stream_wait_memory(ptr noundef %sk, ptr noundef nonnull %timeo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %wait_for_memory.cleanup_crit_edge, label %if.then72

wait_for_memory.cleanup_crit_edge:                ; preds = %wait_for_memory
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %wait_for_memory
  %tobool73.not = icmp eq ptr %msg_tx.2, null
  br i1 %tobool73.not, label %if.then72.out_err_crit_edge, label %land.lhs.true74

if.then72.out_err_crit_edge:                      ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

land.lhs.true74:                                  ; preds = %if.then72
  %42 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cork, align 4
  %cmp76.not = icmp eq ptr %msg_tx.2, %43
  br i1 %cmp76.not, label %land.lhs.true74.out_err_crit_edge, label %if.then77

land.lhs.true74.out_err_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.then77:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #12
  %call78 = call i32 @sk_msg_free(ptr noundef %sk, ptr noundef nonnull %msg_tx.2) #10
  br label %out_err

cleanup:                                          ; preds = %wait_for_memory.cleanup_crit_edge, %if.end58.cleanup_crit_edge
  %msg_tx.3 = phi ptr [ %msg_tx.1.sroa.phi157, %if.end58.cleanup_crit_edge ], [ %msg_tx.2, %wait_for_memory.cleanup_crit_edge ]
  %err.1 = phi i32 [ %call59, %if.end58.cleanup_crit_edge ], [ 0, %wait_for_memory.cleanup_crit_edge ]
  %44 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i.i, align 8
  %tobool10.not = icmp eq i32 %45, 0
  br i1 %tobool10.not, label %cleanup.if.end87_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.if.end87_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

out_err:                                          ; preds = %if.then77, %land.lhs.true74.out_err_crit_edge, %if.then72.out_err_crit_edge, %if.then12
  %err.1.ph = phi i32 [ %call70, %if.then72.out_err_crit_edge ], [ %call70, %land.lhs.true74.out_err_crit_edge ], [ %call70, %if.then77 ], [ %sub, %if.then12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.ph)
  %cmp83 = icmp slt i32 %err.1.ph, 0
  br i1 %cmp83, label %out_err.if.then84_crit_edge, label %out_err.if.end87_crit_edge

out_err.if.end87_crit_edge:                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

out_err.if.then84_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84

if.then84:                                        ; preds = %out_err.if.then84_crit_edge, %if.end58.if.then84_crit_edge, %if.then39
  %err.1.ph178 = phi i32 [ %err.1.ph, %out_err.if.then84_crit_edge ], [ %call37, %if.then39 ], [ %call59, %if.end58.if.then84_crit_edge ]
  %46 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_flags, align 4
  %call86 = call i32 @sk_stream_error(ptr noundef %sk, i32 noundef %47, i32 noundef %err.1.ph178) #10
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %out_err.if.end87_crit_edge, %cleanup.if.end87_crit_edge, %if.then43.if.end87_crit_edge, %sock_sndtimeo.exit.if.end87_crit_edge
  %err.3 = phi i32 [ %call86, %if.then84 ], [ %err.1.ph, %out_err.if.end87_crit_edge ], [ 0, %sock_sndtimeo.exit.if.end87_crit_edge ], [ %err.1, %cleanup.if.end87_crit_edge ], [ %call37, %if.then43.if.end87_crit_edge ]
  call void @release_sock(ptr noundef %sk) #10
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.sk_psock_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %sk_psock_put.exit

if.then.i:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call) #10
  br label %sk_psock_put.exit

sk_psock_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge
  %49 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool88.not = icmp eq i32 %50, 0
  %err.3. = select i1 %tobool88.not, i32 %err.3, i32 %50
  br label %cleanup89

cleanup89:                                        ; preds = %sk_psock_put.exit, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %err.3., %sk_psock_put.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #10
  call void @llvm.lifetime.end.p0(i64 444, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_bpf_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %tmp = alloca %struct.sk_msg, align 4
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 444, ptr nonnull %tmp) #10
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 444)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #10
  %1 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %copied, align 4
  %call = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !38

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @tcp_sendpage(ptr noundef %sk, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %cork = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cork, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.else, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memset(ptr %tmp, i32 0, i32 444)
  %arrayidx.i.i = getelementptr inbounds %struct.sk_msg_sg, ptr %tmp, i32 0, i32 6, i32 17
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %arrayidx.i.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end.if.end8_crit_edge
  %msg.0 = phi ptr [ %tmp, %if.else ], [ %3, %if.end.if.end8_crit_edge ]
  %msg.0.sroa.phi82 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.0, i32 0, i32 2
  %6 = ptrtoint ptr %msg.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg.0, align 4
  %8 = ptrtoint ptr %msg.0.sroa.phi82 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg.0.sroa.phi82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i = icmp ult i32 %9, %7
  %cond.p.v.i.i = select i1 %cmp.not.i.i, i32 18, i32 0
  %cond.p.i.i = sub i32 %9, %7
  %cond.i.i = add i32 %cond.p.i.i, %cond.p.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cond.i.i)
  %cmp.i = icmp eq i32 %cond.i.i, 17
  br i1 %cmp.i, label %if.end8.out_err_crit_edge, label %if.end17, !prof !38

if.end8.out_err_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end17:                                         ; preds = %if.end8
  call fastcc void @sk_msg_page_add(ptr noundef nonnull %msg.0, ptr noundef %page, i32 noundef %size, i32 noundef %offset)
  %skc_prot.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %skc_prot.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_prot.i.i, align 8
  %memory_allocated.i.i = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %memory_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memory_allocated.i.i, align 4
  %tobool.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.i.not.i, label %if.end17.sk_mem_charge.exit_crit_edge, label %if.end.i

if.end17.sk_mem_charge.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_mem_charge.exit

if.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %sk_forward_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %14 = ptrtoint ptr %sk_forward_alloc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_forward_alloc.i, align 8
  %sub.i = sub i32 %15, %size
  store i32 %sub.i, ptr %sk_forward_alloc.i, align 8
  br label %sk_mem_charge.exit

sk_mem_charge.exit:                               ; preds = %if.end.i, %if.end17.sk_mem_charge.exit_crit_edge
  %16 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size, ptr %copied, align 4
  %cork_bytes = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cork_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %sk_mem_charge.exit.if.end35_crit_edge, label %if.then22

sk_mem_charge.exit.if.end35_crit_edge:            ; preds = %sk_mem_charge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then22:                                        ; preds = %sk_mem_charge.exit
  %end.i74 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.0, i32 0, i32 2
  %19 = ptrtoint ptr %end.i74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i74, align 4
  %21 = ptrtoint ptr %msg.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg.0, align 4
  %cond.p.i.i77 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i.i75 = icmp ult i32 %20, %22
  %cond.p.v.i.i76 = select i1 %cmp.not.i.i75, i32 18, i32 0
  %cond.i.i78 = add i32 %cond.p.i.i77, %cond.p.v.i.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cond.i.i78)
  %cmp.i79 = icmp eq i32 %cond.i.i78, 17
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %18, i32 %size)
  %24 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cork_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %size)
  %tobool30.not = icmp ule i32 %18, %size
  %brmerge = select i1 %tobool30.not, i1 true, i1 %cmp.i79
  br i1 %brmerge, label %if.end33, label %if.then22.out_err_crit_edge

if.then22.out_err_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end33:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %eval = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %eval to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %eval, align 8
  %26 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cork_bytes, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %sk_mem_charge.exit.if.end35_crit_edge
  %call36 = call fastcc i32 @tcp_bpf_send_verdict(ptr noundef %sk, ptr noundef nonnull %call, ptr noundef nonnull %msg.0, ptr noundef nonnull %copied, i32 noundef %flags)
  br label %out_err

out_err:                                          ; preds = %if.end35, %if.then22.out_err_crit_edge, %if.end8.out_err_crit_edge
  %err.0 = phi i32 [ 0, %if.end8.out_err_crit_edge ], [ %call36, %if.end35 ], [ 0, %if.then22.out_err_crit_edge ]
  call void @release_sock(ptr noundef %sk) #10
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call, i32 0, i32 14
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_err
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.sk_psock_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_psock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %sk_psock_put.exit

if.then.i:                                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call) #10
  br label %sk_psock_put.exit

sk_psock_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sk_psock_put.exit_crit_edge
  %28 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %copied, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  %err.0. = select i1 %tobool37.not, i32 %err.0, i32 %29
  br label %cleanup

cleanup:                                          ; preds = %sk_psock_put.exit, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %err.0., %sk_psock_put.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #10
  call void @llvm.lifetime.end.p0(i64 444, ptr nonnull %tmp) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcp_bpf_recvmsg_parser(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @inet_recv_error(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, ptr noundef %addr_len) #10
  br label %cleanup52

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @sk_psock_get(ptr noundef %sk)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then13, label %if.end15, !prof !38

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @tcp_recvmsg(ptr noundef %sk, ptr noundef %msg, i32 noundef %len, i32 noundef %nonblock, i32 noundef %flags, ptr noundef %addr_len) #10
  br label %cleanup52

if.end15:                                         ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool34.not = icmp ne i32 %nonblock, 0
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 62
  %ingress_msg.i = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 9
  br label %msg_bytes_ready

msg_bytes_ready:                                  ; preds = %sk_psock_queue_empty.exit.msg_bytes_ready_crit_edge, %if.end15
  %call16 = tail call i32 @sk_msg_recvmsg(ptr noundef %sk, ptr noundef nonnull %call3, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %msg_bytes_ready.out_crit_edge

msg_bytes_ready.out_crit_edge:                    ; preds = %msg_bytes_ready
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %msg_bytes_ready
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.end21, label %if.then18.out_crit_edge

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end21:                                         ; preds = %if.then18
  %4 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool22.not = icmp eq i32 %5, 0
  br i1 %tobool22.not, label %if.end25, label %sock_error.exit

sock_error.exit:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_err, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %sk_err, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %sk_err) #10, !srcloc !57
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !58
  %sub.i = sub i32 0, %asmresult.i.i
  br label %out

if.end25:                                         ; preds = %if.end21
  %7 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sk_shutdown, align 2
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool27.not = icmp eq i8 %9, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end29:                                         ; preds = %if.end25
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp = icmp eq i8 %11, 7
  %brmerge = or i1 %cmp, %tobool34.not
  br i1 %brmerge, label %out.loopexit.split.loop.exit, label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %if.end29
  %12 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sk_rcvtimeo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool36.not = icmp eq i32 %13, 0
  br i1 %tobool36.not, label %sock_rcvtimeo.exit.out_crit_edge, label %if.end38

sock_rcvtimeo.exit.out_crit_edge:                 ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end38:                                         ; preds = %sock_rcvtimeo.exit
  %14 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stack.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i82 = icmp eq i32 %22, 0
  br i1 %tobool.not.i82, label %signal_pending.exit, label %if.end38.if.then42_crit_edge, !prof !41

if.end38.if.then42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

signal_pending.exit:                              ; preds = %if.end38
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool41.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool41.not, label %if.end44, label %signal_pending.exit.if.then42_crit_edge

signal_pending.exit.if.then42_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

if.then42:                                        ; preds = %signal_pending.exit.if.then42_crit_edge, %if.end38.if.then42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %13)
  %cmp.i = icmp eq i32 %13, 2147483647
  %cond.i85 = select i1 %cmp.i, i32 -512, i32 -4
  br label %out

if.end44:                                         ; preds = %signal_pending.exit
  %call45 = tail call fastcc i32 @tcp_msg_wait_data(ptr noundef %sk, ptr noundef nonnull %call3, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.out_crit_edge, label %sk_psock_queue_empty.exit

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sk_psock_queue_empty.exit:                        ; preds = %if.end44
  %25 = ptrtoint ptr %ingress_msg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %ingress_msg.i, align 4
  %cmp.i.i = icmp eq ptr %26, %ingress_msg.i
  br i1 %cmp.i.i, label %sk_psock_queue_empty.exit.out_crit_edge, label %sk_psock_queue_empty.exit.msg_bytes_ready_crit_edge

sk_psock_queue_empty.exit.msg_bytes_ready_crit_edge: ; preds = %sk_psock_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %msg_bytes_ready

sk_psock_queue_empty.exit.out_crit_edge:          ; preds = %sk_psock_queue_empty.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out.loopexit.split.loop.exit:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %.mux.le = select i1 %cmp, i32 -107, i32 -11
  br label %out

out:                                              ; preds = %out.loopexit.split.loop.exit, %sk_psock_queue_empty.exit.out_crit_edge, %if.end44.out_crit_edge, %if.then42, %sock_rcvtimeo.exit.out_crit_edge, %if.end25.out_crit_edge, %sock_error.exit, %if.then18.out_crit_edge, %msg_bytes_ready.out_crit_edge
  %copied.1 = phi i32 [ %cond.i85, %if.then42 ], [ %sub.i, %sock_error.exit ], [ %.mux.le, %out.loopexit.split.loop.exit ], [ %call16, %msg_bytes_ready.out_crit_edge ], [ 0, %if.then18.out_crit_edge ], [ 0, %if.end25.out_crit_edge ], [ -11, %sock_rcvtimeo.exit.out_crit_edge ], [ -11, %sk_psock_queue_empty.exit.out_crit_edge ], [ -11, %if.end44.out_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #10
  %refcnt.i = getelementptr inbounds %struct.sk_psock, ptr %call3, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup52_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.cleanup52_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup52

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %cleanup52

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_psock_drop(ptr noundef %sk, ptr noundef nonnull %call3) #10
  br label %cleanup52

cleanup52:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup52_crit_edge, %if.then13, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call14, %if.then13 ], [ %copied.1, %if.end5.i.i.i.i.cleanup52_crit_edge ], [ %copied.1, %if.then10.i.i.i.i ], [ %copied.1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_recv_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_recvmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_msg_wait_data(ptr noundef %sk, ptr noundef %psock, i32 noundef %timeo) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #10
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !28) #10
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @woken_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %13 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sk_shutdown, align 2
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo)
  %tobool4.not = icmp eq i32 %timeo, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %16, align 8
  call void @add_wait_queue(ptr noundef %18, ptr noundef nonnull %wait) #10
  %19 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.end6.sk_set_bit.exit_crit_edge, label %if.end.i

if.end6.sk_set_bit.exit_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_set_bit.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 8
  %flags.i = getelementptr inbounds %struct.socket_wq, ptr %24, i32 0, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #10
  br label %sk_set_bit.exit

sk_set_bit.exit:                                  ; preds = %if.end.i, %if.end6.sk_set_bit.exit_crit_edge
  call void @release_sock(ptr noundef %sk) #10
  %ingress_msg = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 9
  %25 = ptrtoint ptr %ingress_msg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %ingress_msg, align 4
  %cmp.i.not = icmp eq ptr %26, %ingress_msg
  br i1 %cmp.i.not, label %lor.rhs, label %sk_set_bit.exit.if.end15_crit_edge

sk_set_bit.exit.if.end15_crit_edge:               ; preds = %sk_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

lor.rhs:                                          ; preds = %sk_set_bit.exit
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %27 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_receive_queue, align 4
  %cmp.i42.not = icmp eq ptr %28, %sk_receive_queue
  br i1 %cmp.i42.not, label %if.then13, label %lor.rhs.if.end15_crit_edge

lor.rhs.if.end15_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeo) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.rhs.if.end15_crit_edge, %sk_set_bit.exit.if.end15_crit_edge
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %task_state_change, align 4
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  %32 = ptrtoint ptr %ingress_msg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %ingress_msg, align 4
  %cmp.i44.not = icmp eq ptr %33, %ingress_msg
  br i1 %cmp.i44.not, label %lor.rhs21, label %if.end15.lor.end26_crit_edge

if.end15.lor.end26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end26

lor.rhs21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %sk_receive_queue22 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %34 = ptrtoint ptr %sk_receive_queue22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sk_receive_queue22, align 4
  %cmp.i46 = icmp ne ptr %35, %sk_receive_queue22
  %phi.cast = zext i1 %cmp.i46 to i32
  br label %lor.end26

lor.end26:                                        ; preds = %lor.rhs21, %if.end15.lor.end26_crit_edge
  %36 = phi i32 [ 1, %if.end15.lor.end26_crit_edge ], [ %phi.cast, %lor.rhs21 ]
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %19, align 4
  %39 = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i48 = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i48, label %lor.end26.sk_clear_bit.exit_crit_edge, label %if.end.i50

lor.end26.sk_clear_bit.exit_crit_edge:            ; preds = %lor.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_clear_bit.exit

if.end.i50:                                       ; preds = %lor.end26
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %16, align 8
  %flags.i49 = getelementptr inbounds %struct.socket_wq, ptr %41, i32 0, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i49) #10
  br label %sk_clear_bit.exit

sk_clear_bit.exit:                                ; preds = %if.end.i50, %lor.end26.sk_clear_bit.exit_crit_edge
  %42 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %16, align 8
  call void @remove_wait_queue(ptr noundef %43, ptr noundef nonnull %wait) #10
  br label %cleanup

cleanup:                                          ; preds = %sk_clear_bit.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %sk_clear_bit.exit ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendmsg(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_memcopy_from_iter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_msg_trim(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcp_bpf_send_verdict(ptr noundef %sk, ptr noundef %psock, ptr noundef %msg, ptr nocapture noundef %copied, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %end.i = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp ult i32 %3, %1
  %cond.p.v.i.i = select i1 %cmp.not.i.i, i32 18, i32 0
  %cond.p.i.i = sub i32 %3, %1
  %cond.i.i = add i32 %cond.p.i.i, %cond.p.v.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %cond.i.i)
  %cmp.i = icmp eq i32 %cond.i.i, 17
  %eval1 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 4
  %apply_bytes = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 2
  %sk_redir49 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 1
  %cork57 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 5
  br label %more_data

more_data:                                        ; preds = %land.lhs.true112.more_data_crit_edge, %entry
  %msg.addr.0 = phi ptr [ %msg, %entry ], [ %msg.addr.1234259, %land.lhs.true112.more_data_crit_edge ]
  %cork.0.off0 = phi i1 [ false, %entry ], [ %cork.2.off0235257, %land.lhs.true112.more_data_crit_edge ]
  %delta.0 = phi i32 [ 0, %entry ], [ %delta.1, %land.lhs.true112.more_data_crit_edge ]
  %eval.0 = phi i32 [ 3, %entry ], [ %eval.2236255, %land.lhs.true112.more_data_crit_edge ]
  %4 = ptrtoint ptr %eval1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eval1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %more_data.if.end_crit_edge

more_data.if.end_crit_edge:                       ; preds = %more_data
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %more_data
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %call2 = tail call i32 @sk_psock_msg_verdict(ptr noundef %sk, ptr noundef %psock, ptr noundef %msg.addr.0) #10
  %8 = ptrtoint ptr %eval1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %eval1, align 8
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  %sub = sub i32 %7, %10
  br label %if.end

if.end:                                           ; preds = %if.then, %more_data.if.end_crit_edge
  %delta.1 = phi i32 [ %sub, %if.then ], [ %delta.0, %more_data.if.end_crit_edge ]
  %cork_bytes = getelementptr inbounds %struct.sk_msg, ptr %msg.addr.0, i32 0, i32 4
  %11 = ptrtoint ptr %cork_bytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cork_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %size8 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 3
  %13 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp9 = icmp ule i32 %12, %14
  %brmerge = select i1 %cmp9, i1 true, i1 %cmp.i
  br i1 %brmerge, label %land.lhs.true.if.end29_crit_edge, label %if.then12

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then12:                                        ; preds = %land.lhs.true
  %sub16 = sub i32 %12, %14
  %cork_bytes17 = getelementptr inbounds %struct.sk_psock, ptr %psock, i32 0, i32 3
  %15 = ptrtoint ptr %cork_bytes17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub16, ptr %cork_bytes17, align 4
  %16 = ptrtoint ptr %cork57 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cork57, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %if.then20, label %if.then12.if.end27_crit_edge

if.then12.if.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20:                                        ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 11040, i32 noundef 444) #13
  %19 = ptrtoint ptr %cork57 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %cork57, align 4
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.then20.cleanup_crit_edge, label %if.then20.if.end27_crit_edge

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.then12.if.end27_crit_edge
  %20 = ptrtoint ptr %cork57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cork57, align 4
  %22 = call ptr @memcpy(ptr %21, ptr %msg.addr.0, i32 444)
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %size31 = getelementptr inbounds %struct.sk_msg_sg, ptr %msg.addr.0, i32 0, i32 3
  %23 = ptrtoint ptr %size31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size31, align 4
  %25 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %apply_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp ne i32 %26, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp35 = icmp ult i32 %26, %24
  %or.cond = select i1 %tobool32.not, i1 %cmp35, i1 false
  %tosend.0 = select i1 %or.cond, i32 %26, i32 %24
  %27 = ptrtoint ptr %eval1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %eval1, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb48
  ]

sw.bb:                                            ; preds = %if.end29
  %call40 = tail call fastcc i32 @tcp_bpf_push(ptr noundef %sk, ptr noundef %msg.addr.0, i32 noundef %tosend.0, i32 noundef %flags, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %if.then44, !prof !41

if.then44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg.addr.0) #10
  %30 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %copied, align 4
  %sub46 = sub i32 %31, %call45
  store i32 %sub46, ptr %copied, align 4
  br label %cleanup

if.end47:                                         ; preds = %sw.bb
  %32 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %apply_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %if.end47.if.then98_crit_edge, label %if.then.i

if.end47.if.then98_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %34 = tail call i32 @llvm.usub.sat.i32(i32 %33, i32 %tosend.0) #10
  %35 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %apply_bytes, align 8
  br label %if.then95

sw.bb48:                                          ; preds = %if.end29
  %36 = ptrtoint ptr %sk_redir49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sk_redir49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i212 = icmp eq i32 %26, 0
  br i1 %tobool.not.i212, label %sk_msg_apply_bytes.exit214thread-pre-split, label %if.then.i213

if.then.i213:                                     ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 %tosend.0) #10
  %39 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %apply_bytes, align 8
  br label %sk_msg_apply_bytes.exit214

sk_msg_apply_bytes.exit214thread-pre-split:       ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %apply_bytes, align 8
  br label %sk_msg_apply_bytes.exit214

sk_msg_apply_bytes.exit214:                       ; preds = %sk_msg_apply_bytes.exit214thread-pre-split, %if.then.i213
  %41 = phi i32 [ %.pr, %sk_msg_apply_bytes.exit214thread-pre-split ], [ %38, %if.then.i213 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool51.not = icmp eq i32 %41, 0
  br i1 %tobool51.not, label %if.then52, label %sk_msg_apply_bytes.exit214.if.end56_crit_edge

sk_msg_apply_bytes.exit214.if.end56_crit_edge:    ; preds = %sk_msg_apply_bytes.exit214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then52:                                        ; preds = %sk_msg_apply_bytes.exit214
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %eval1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %eval1, align 8
  %43 = ptrtoint ptr %sk_redir49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %sk_redir49, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %sk_msg_apply_bytes.exit214.if.end56_crit_edge
  %eval.1 = phi i32 [ %eval.0, %sk_msg_apply_bytes.exit214.if.end56_crit_edge ], [ 2, %if.then52 ]
  %44 = ptrtoint ptr %cork57 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cork57, align 4
  %tobool58.not = icmp eq ptr %45, null
  br i1 %tobool58.not, label %if.end56.if.end61_crit_edge, label %if.then59

if.end56.if.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %cork57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %cork57, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end56.if.end61_crit_edge
  %cork.1.off0 = phi i1 [ true, %if.then59 ], [ %cork.0.off0, %if.end56.if.end61_crit_edge ]
  tail call void @sk_msg_return(ptr noundef %sk, ptr noundef %msg.addr.0, i32 noundef %tosend.0) #10
  tail call void @release_sock(ptr noundef %sk) #10
  %call62 = tail call i32 @tcp_bpf_sendmsg_redir(ptr noundef %37, ptr noundef %msg.addr.0, i32 noundef %tosend.0, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %eval.1)
  %cmp63 = icmp eq i32 %eval.1, 2
  br i1 %cmp63, label %if.then64, label %if.end61.if.end65_crit_edge

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then64:                                        ; preds = %if.end61
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %37, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i215, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end65_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.if.end65_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %if.end65

if.then.i215:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_free(ptr noundef %37) #10
  br label %if.end65

if.end65:                                         ; preds = %if.then.i215, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end65_crit_edge, %if.end61.if.end65_crit_edge
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp66 = icmp slt i32 %call62, 0
  br i1 %cmp66, label %if.then73, label %if.end79, !prof !38

if.then73:                                        ; preds = %if.end65
  %call74 = tail call i32 @sk_msg_free_nocharge(ptr noundef %sk, ptr noundef %msg.addr.0) #10
  br i1 %cork.1.off0, label %if.then73.if.then81_crit_edge, label %if.then76

if.then73.if.then81_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.then76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %copied, align 4
  %sub77 = sub i32 %49, %call74
  store i32 %sub77, ptr %copied, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.end65
  br i1 %cork.1.off0, label %if.end79.if.then81_crit_edge, label %sw.epilog

if.end79.if.then81_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then81

if.then81:                                        ; preds = %if.end79.if.then81_crit_edge, %if.then73.if.then81_crit_edge
  %call82 = tail call i32 @sk_msg_free(ptr noundef %sk, ptr noundef %msg.addr.0) #10
  tail call void @kfree(ptr noundef %msg.addr.0) #10
  br label %if.then95thread-pre-split

sw.default:                                       ; preds = %if.end29
  tail call void @sk_msg_free_partial(ptr noundef %sk, ptr noundef %msg.addr.0, i32 noundef %tosend.0) #10
  %50 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %apply_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i217 = icmp eq i32 %51, 0
  br i1 %tobool.not.i217, label %sw.default.sk_msg_apply_bytes.exit219_crit_edge, label %if.then.i218

sw.default.sk_msg_apply_bytes.exit219_crit_edge:  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sk_msg_apply_bytes.exit219

if.then.i218:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %52 = tail call i32 @llvm.usub.sat.i32(i32 %51, i32 %tosend.0) #10
  %53 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %apply_bytes, align 8
  br label %sk_msg_apply_bytes.exit219

sk_msg_apply_bytes.exit219:                       ; preds = %if.then.i218, %sw.default.sk_msg_apply_bytes.exit219_crit_edge
  %54 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %copied, align 4
  %56 = add i32 %tosend.0, %delta.1
  %sub85 = sub i32 %55, %56
  store i32 %sub85, ptr %copied, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool86.not = icmp eq i32 %call62, 0
  br i1 %tobool86.not, label %sw.epilog.if.then95thread-pre-split_crit_edge, label %sw.epilog.cleanup_crit_edge, !prof !41

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.if.then95thread-pre-split_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then95thread-pre-split

if.then95thread-pre-split:                        ; preds = %sw.epilog.if.then95thread-pre-split_crit_edge, %if.then81
  %cork.2.off0235.ph = phi i1 [ true, %if.then81 ], [ false, %sw.epilog.if.then95thread-pre-split_crit_edge ]
  %msg.addr.1234.ph = phi ptr [ null, %if.then81 ], [ %msg.addr.0, %sw.epilog.if.then95thread-pre-split_crit_edge ]
  %57 = ptrtoint ptr %apply_bytes to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr247 = load i32, ptr %apply_bytes, align 8
  br label %if.then95

if.then95:                                        ; preds = %if.then95thread-pre-split, %if.then.i
  %58 = phi i32 [ %.pr247, %if.then95thread-pre-split ], [ %34, %if.then.i ]
  %eval.2236 = phi i32 [ %eval.1, %if.then95thread-pre-split ], [ %eval.0, %if.then.i ]
  %cork.2.off0235 = phi i1 [ %cork.2.off0235.ph, %if.then95thread-pre-split ], [ %cork.0.off0, %if.then.i ]
  %msg.addr.1234 = phi ptr [ %msg.addr.1234.ph, %if.then95thread-pre-split ], [ %msg.addr.0, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool97.not = icmp eq i32 %58, 0
  br i1 %tobool97.not, label %if.then95.if.then98_crit_edge, label %if.then95.if.end106_crit_edge

if.then95.if.end106_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then95.if.then98_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.then98:                                        ; preds = %if.then95.if.then98_crit_edge, %if.end47.if.then98_crit_edge
  %msg.addr.1234260 = phi ptr [ %msg.addr.1234, %if.then95.if.then98_crit_edge ], [ %msg.addr.0, %if.end47.if.then98_crit_edge ]
  %cork.2.off0235258 = phi i1 [ %cork.2.off0235, %if.then95.if.then98_crit_edge ], [ %cork.0.off0, %if.end47.if.then98_crit_edge ]
  %eval.2236256 = phi i32 [ %eval.2236, %if.then95.if.then98_crit_edge ], [ %eval.0, %if.end47.if.then98_crit_edge ]
  %59 = ptrtoint ptr %eval1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %eval1, align 8
  %60 = ptrtoint ptr %sk_redir49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk_redir49, align 4
  %tobool101.not = icmp eq ptr %61, null
  br i1 %tobool101.not, label %if.then98.if.end106_crit_edge, label %if.then102

if.then98.if.end106_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then102:                                       ; preds = %if.then98
  %skc_refcnt.i220 = getelementptr inbounds %struct.sock_common, ptr %61, i32 0, i32 19
  %call.i.i.i.i.i.i221 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i220, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i220, i32 1, i32 3, i32 1) #10
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i220, ptr %skc_refcnt.i220, i32 1, ptr elementtype(i32) %skc_refcnt.i220) #10, !srcloc !40
  %asmresult.i.i.i.i.i.i.i222 = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i222)
  %cmp.i.i.i.i223 = icmp eq i32 %asmresult.i.i.i.i.i.i.i222, 1
  br i1 %cmp.i.i.i.i223, label %if.then.i227, label %if.end5.i.i.i.i225

if.end5.i.i.i.i225:                               ; preds = %if.then102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i222)
  %.not.i.i.i.i224 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i222, 0
  br i1 %.not.i.i.i.i224, label %if.end5.i.i.i.i225.sock_put.exit228_crit_edge, label %if.then10.i.i.i.i226, !prof !41

if.end5.i.i.i.i225.sock_put.exit228_crit_edge:    ; preds = %if.end5.i.i.i.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit228

if.then10.i.i.i.i226:                             ; preds = %if.end5.i.i.i.i225
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i220, i32 noundef 3) #10
  br label %sock_put.exit228

if.then.i227:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !42
  tail call void @sk_free(ptr noundef nonnull %61) #10
  br label %sock_put.exit228

sock_put.exit228:                                 ; preds = %if.then.i227, %if.then10.i.i.i.i226, %if.end5.i.i.i.i225.sock_put.exit228_crit_edge
  %63 = ptrtoint ptr %sk_redir49 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %sk_redir49, align 4
  br label %if.end106

if.end106:                                        ; preds = %sock_put.exit228, %if.then98.if.end106_crit_edge, %if.then95.if.end106_crit_edge
  %msg.addr.1234259 = phi ptr [ %msg.addr.1234260, %if.then98.if.end106_crit_edge ], [ %msg.addr.1234260, %sock_put.exit228 ], [ %msg.addr.1234, %if.then95.if.end106_crit_edge ]
  %cork.2.off0235257 = phi i1 [ %cork.2.off0235258, %if.then98.if.end106_crit_edge ], [ %cork.2.off0235258, %sock_put.exit228 ], [ %cork.2.off0235, %if.then95.if.end106_crit_edge ]
  %eval.2236255 = phi i32 [ %eval.2236256, %if.then98.if.end106_crit_edge ], [ %eval.2236256, %sock_put.exit228 ], [ %eval.2236, %if.then95.if.end106_crit_edge ]
  %tobool107.not = icmp eq ptr %msg.addr.1234259, null
  br i1 %tobool107.not, label %if.end106.cleanup_crit_edge, label %land.lhs.true108

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true108:                                 ; preds = %if.end106
  %64 = ptrtoint ptr %msg.addr.1234259 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg.addr.1234259, align 4
  %arrayidx = getelementptr %struct.sk_msg_sg, ptr %msg.addr.1234259, i32 0, i32 6, i32 %65
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool111.not = icmp eq i32 %67, 0
  br i1 %tobool111.not, label %land.lhs.true108.cleanup_crit_edge, label %land.lhs.true112

land.lhs.true108.cleanup_crit_edge:               ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true112:                                 ; preds = %land.lhs.true108
  %length = getelementptr %struct.sk_msg_sg, ptr %msg.addr.1234259, i32 0, i32 6, i32 %65, i32 2
  %68 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %length, align 4
  %tobool118.not = icmp eq i32 %69, 0
  br i1 %tobool118.not, label %land.lhs.true112.cleanup_crit_edge, label %land.lhs.true112.more_data_crit_edge

land.lhs.true112.more_data_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %more_data

land.lhs.true112.cleanup_crit_edge:               ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true112.cleanup_crit_edge, %land.lhs.true108.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sk_msg_apply_bytes.exit219, %if.then76, %if.then44, %if.end27, %if.then20.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %sk_msg_apply_bytes.exit219 ], [ 0, %if.end27 ], [ -12, %if.then20.cleanup_crit_edge ], [ %call62, %if.then76 ], [ %call40, %if.then44 ], [ %call62, %sw.epilog.cleanup_crit_edge ], [ 0, %land.lhs.true112.cleanup_crit_edge ], [ 0, %land.lhs.true108.cleanup_crit_edge ], [ 0, %if.end106.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_wait_memory(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_stream_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_psock_msg_verdict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_msg_return(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_msg_free_nocharge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_msg_free_partial(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcp_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_msg_page_add(ptr nocapture noundef %msg, ptr noundef %page, i32 noundef %len, i32 noundef %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !41

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !38

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #10, !srcloc !47
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@sk_msg_page_add, %if.then.i.i.i.i)) #10
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !49

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #10
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %end = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end, align 4
  %arrayidx.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i21 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i21, label %do.body11.i.i, label %do.body5.i.i, !prof !41

do.body5.i.i:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

do.body11.i.i:                                    ; preds = %get_page.exit
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !41

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and.i.i22 = and i32 %11, 1
  %offset1.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %9, i32 1
  %13 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %offset, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.sk_msg_sg, ptr %msg, i32 0, i32 6, i32 %9, i32 2
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %length.i, align 4
  %.masked = and i32 %12, -3
  %and.i = or i32 %and.i.i22, %.masked
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  %copy = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 5
  %rem.i = and i32 %17, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %17, 5
  %add.ptr.i = getelementptr i32, ptr %copy, i32 %div2.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %19
  store i32 %or.i, ptr %add.ptr.i, align 4
  %size = getelementptr inbounds %struct.sk_msg_sg, ptr %msg, i32 0, i32 3
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %add = add i32 %21, %len
  store i32 %add, ptr %size, align 4
  %inc = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %inc)
  %cmp = icmp eq i32 %inc, 18
  %spec.select = select i1 %cmp, i32 0, i32 %inc
  %22 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %end, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !25, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__ksymtab_tcp_bpf_sendmsg_redir, !1, !"__ksymtab_tcp_bpf_sendmsg_redir", i1 false, i1 false}
!1 = !{!"../net/ipv4/tcp_bpf.c", i32 150, i32 1}
!2 = !{ptr @__initcall__kmod_tcp_bpf__608_574_tcp_bpf_v4_build_proto7, !3, !"__initcall__kmod_tcp_bpf__608_574_tcp_bpf_v4_build_proto7", i1 false, i1 false}
!3 = !{!"../net/ipv4/tcp_bpf.c", i32 574, i32 1}
!4 = !{ptr @__ksymtab_tcp_bpf_update_proto, !5, !"__ksymtab_tcp_bpf_update_proto", i1 false, i1 false}
!5 = !{!"../net/ipv4/tcp_bpf.c", i32 627, i32 1}
!6 = !{ptr @tcp_bpf_prots, !7, !"tcp_bpf_prots", i1 false, i1 false}
!7 = !{!"../net/ipv4/tcp_bpf.c", i32 536, i32 21}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/skmsg.h", i32 286, i32 9}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mm.h", i32 717, i32 2}
!23 = !{ptr @tcpv6_prot_saved, !24, !"tcpv6_prot_saved", i1 false, i1 false}
!24 = !{!"../net/ipv4/tcp_bpf.c", i32 534, i32 22}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ipv4/tcp_bpf.c", i32 535, i32 8}
!27 = !{ptr @tcpv6_prot_lock, !26, !"tcpv6_prot_lock", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2148800739}
!40 = !{i64 2148715179, i64 2148715211, i64 2148715240, i64 2148715274, i64 2148715305, i64 2148715328}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2150264055}
!43 = !{i64 2149702505}
!44 = !{i64 1195717, i64 1195741, i64 1195762, i64 1195779, i64 1195796}
!45 = !{i64 2149702771}
!46 = !{i64 2155010224, i64 2155010716, i64 2155010261, i64 2155010317, i64 2155010351, i64 2155010375, i64 2155010416, i64 2155010437, i64 2155010465, i64 2155010499}
!47 = !{i64 2153715964, i64 2153716448, i64 2153716001, i64 2153716057, i64 2153716091, i64 2153716115, i64 2153716156, i64 2153716177, i64 2153716205, i64 2153716239}
!48 = !{i64 2148711184, i64 2148711210, i64 2148711239, i64 2148711273, i64 2148711304, i64 2148711327}
!49 = !{i64 2149272510, i64 2149272515, i64 2149272528, i64 2149272572, i64 2149272606, i64 2149272627}
!50 = !{i64 2158768426}
!51 = !{i64 2158770692}
!52 = !{i64 2153696052, i64 2153696535, i64 2153696089, i64 2153696145, i64 2153696179, i64 2153696203, i64 2153696244, i64 2153696265, i64 2153696293, i64 2153696327}
!53 = !{i64 2148799660}
!54 = !{i64 2148714369, i64 2148714401, i64 2148714430, i64 2148714464, i64 2148714495, i64 2148714518}
!55 = !{i64 2148799889}
!56 = !{i64 2157770304}
!57 = !{i64 1217952, i64 1217969, i64 1217993, i64 1218019, i64 1218037}
!58 = !{i64 2157770647}
!59 = !{i64 2155006666, i64 2155007158, i64 2155006703, i64 2155006759, i64 2155006793, i64 2155006817, i64 2155006858, i64 2155006879, i64 2155006907, i64 2155006941}
!60 = !{i64 2155008276, i64 2155008768, i64 2155008313, i64 2155008369, i64 2155008403, i64 2155008427, i64 2155008468, i64 2155008489, i64 2155008517, i64 2155008551}
