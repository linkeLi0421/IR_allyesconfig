; ModuleID = '/llk/IR_all_yes/net/dccp/output.c_pt.bc'
source_filename = "../net/dccp/output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_sync_mss\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_sync_mss\09\09\09\09"
module asm "\09.long\09__crc_dccp_sync_mss\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_sync_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_sync_mss\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_sync_mss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_make_response\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_make_response\09\09\09\09"
module asm "\09.long\09__crc_dccp_make_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_make_response:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_make_response\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_make_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_ctl_make_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_ctl_make_reset\09\09\09\09"
module asm "\09.long\09__crc_dccp_ctl_make_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_ctl_make_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_ctl_make_reset\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_ctl_make_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_connect\09\09\09\09"
module asm "\09.long\09__crc_dccp_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_connect\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_send_ack\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_send_ack\09\09\09\09"
module asm "\09.long\09__crc_dccp_send_ack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_send_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_send_ack\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_send_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_send_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_send_sync\09\09\09\09"
module asm "\09.long\09__crc_dccp_send_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_send_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_send_sync\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_send_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.192, %struct.anon.193, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.192 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.193 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%union.anon.194 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.125 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.dccp_ackvec = type { [506 x i8], i16, i16, i48, [6 x i8], [2 x i8], i8, %struct.list_head }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.dccp_hdr_ack_bits = type { i16, i16, i32 }
%struct.dccp_hdr_reset = type { %struct.dccp_hdr_ack_bits, i8, [3 x i8] }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.195 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { ptr, ptr }
%struct.dccp_request_sock = type { %struct.inet_request_sock, i64, i64, i64, i64, i32, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.2 = type { i16, i16 }
%struct.dccp_hdr_response = type { %struct.dccp_hdr_ack_bits, i32 }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }

@__kstrtab_dccp_sync_mss = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_sync_mss = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_sync_mss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_sync_mss to i32), ptr @__kstrtab_dccp_sync_mss, ptr @__kstrtabns_dccp_sync_mss }, section "___ksymtab_gpl+dccp_sync_mss", align 4
@dccp_write_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/dccp/output.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dccp_flush_write_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: CCID did not manage to send all packets\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dccp_flush_write_queue\00", [41 x i8] zeroinitializer }, align 32
@dccp_flush_write_queue._entry_ptr = internal global ptr @dccp_flush_write_queue._entry, section ".printk_index", align 4
@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_flush_write_queue._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: packet discarded due to err=%ld\0A\00", [57 x i8] zeroinitializer }, align 32
@dccp_flush_write_queue._entry_ptr.6 = internal global ptr @dccp_flush_write_queue._entry.4, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dccp_write_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: packet discarded due to err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dccp_write_xmit\00", [16 x i8] zeroinitializer }, align 32
@dccp_write_xmit._entry_ptr = internal global ptr @dccp_write_xmit._entry, section ".printk_index", align 4
@dccp_statistics = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_dccp_make_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_make_response = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_make_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_make_response to i32), ptr @__kstrtab_dccp_make_response, ptr @__kstrtabns_dccp_make_response }, section "___ksymtab_gpl+dccp_make_response", align 4
@__kstrtab_dccp_ctl_make_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_ctl_make_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_ctl_make_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_ctl_make_reset to i32), ptr @__kstrtab_dccp_ctl_make_reset, ptr @__kstrtabns_dccp_ctl_make_reset }, section "___ksymtab_gpl+dccp_ctl_make_reset", align 4
@__kstrtab_dccp_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_connect to i32), ptr @__kstrtab_dccp_connect, ptr @__kstrtabns_dccp_connect }, section "___ksymtab_gpl+dccp_connect", align 4
@__kstrtab_dccp_send_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_send_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_send_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_send_ack to i32), ptr @__kstrtab_dccp_send_ack, ptr @__kstrtabns_dccp_send_ack }, section "___ksymtab_gpl+dccp_send_ack", align 4
@dccp_send_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012could not send %s at %s:%d/%s()\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dccp_send_sync\00", [17 x i8] zeroinitializer }, align 32
@dccp_send_sync._entry_ptr = internal global ptr @dccp_send_sync._entry, section ".printk_index", align 4
@__kstrtab_dccp_send_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_send_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_send_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_send_sync to i32), ptr @__kstrtab_dccp_send_sync, ptr @__kstrtabns_dccp_send_sync }, section "___ksymtab_gpl+dccp_send_sync", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@sk_wake_async.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dccp_xmit_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: Payload too large (%d) for featneg.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dccp_xmit_packet\00", [47 x i8] zeroinitializer }, align 32
@dccp_xmit_packet._entry_ptr = internal global ptr @dccp_xmit_packet._entry, section ".printk_index", align 4
@dccp_xmit_packet._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: transmit_skb() returned err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dccp_xmit_packet._entry_ptr.19 = internal global ptr @dccp_xmit_packet._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dccp\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/net/inet_connection_sock.h\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.22, ptr @.str.26, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inet_csk_reset_xmit_timer\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"reset_xmit_timer: sk=%p %d when=0x%lx, caller=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 65536, i64 131072, i64 983040]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 65536, i64 131072, i64 983040]
@__sancov_gen_cov_switch_values.28 = internal global [11 x i64] [i64 9, i64 4, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 2, i64 4, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 5, i64 6]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 202, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 327, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 345, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 370, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 651, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 2444, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 265, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private constant [21 x i8] c"../net/dccp/output.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 283, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 209, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 231, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [38 x i8] c"../include/net/inet_connection_sock.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 223, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab_dccp_connect, ptr @__ksymtab_dccp_ctl_make_reset, ptr @__ksymtab_dccp_make_response, ptr @__ksymtab_dccp_send_ack, ptr @__ksymtab_dccp_send_sync, ptr @__ksymtab_dccp_sync_mss, ptr @dccp_flush_write_queue._entry, ptr @dccp_flush_write_queue._entry.4, ptr @dccp_flush_write_queue._entry_ptr, ptr @dccp_flush_write_queue._entry_ptr.6, ptr @dccp_send_sync._entry, ptr @dccp_send_sync._entry_ptr, ptr @dccp_write_xmit._entry, ptr @dccp_write_xmit._entry_ptr, ptr @dccp_xmit_packet._entry, ptr @dccp_xmit_packet._entry.17, ptr @dccp_xmit_packet._entry_ptr, ptr @dccp_xmit_packet._entry_ptr.19, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_flush_write_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_flush_write_queue._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_write_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_send_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_xmit_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_xmit_packet._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dccp_sync_mss(ptr nocapture noundef %sk, i32 noundef %pmtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %0 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.dccp_determine_ccmps.exit.thread_crit_edge, label %lor.lhs.false.i

entry.dccp_determine_ccmps.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_determine_ccmps.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp1.i = icmp eq ptr %3, null
  br i1 %cmp1.i, label %lor.lhs.false.i.dccp_determine_ccmps.exit.thread_crit_edge, label %dccp_determine_ccmps.exit

lor.lhs.false.i.dccp_determine_ccmps.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_determine_ccmps.exit.thread

dccp_determine_ccmps.exit:                        ; preds = %lor.lhs.false.i
  %ccid_ccmps.i = getelementptr inbounds %struct.ccid_operations, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ccid_ccmps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccid_ccmps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %pmtu)
  br i1 %tobool.not, label %dccp_determine_ccmps.exit.dccp_determine_ccmps.exit.thread_crit_edge, label %dccp_determine_ccmps.exit._crit_edge

dccp_determine_ccmps.exit._crit_edge:             ; preds = %dccp_determine_ccmps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

dccp_determine_ccmps.exit.dccp_determine_ccmps.exit.thread_crit_edge: ; preds = %dccp_determine_ccmps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_determine_ccmps.exit.thread

dccp_determine_ccmps.exit.thread:                 ; preds = %dccp_determine_ccmps.exit.dccp_determine_ccmps.exit.thread_crit_edge, %lor.lhs.false.i.dccp_determine_ccmps.exit.thread_crit_edge, %entry.dccp_determine_ccmps.exit.thread_crit_edge
  br label %7

7:                                                ; preds = %dccp_determine_ccmps.exit.thread, %dccp_determine_ccmps.exit._crit_edge
  %8 = phi i32 [ %pmtu, %dccp_determine_ccmps.exit.thread ], [ %6, %dccp_determine_ccmps.exit._crit_edge ]
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %9 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icsk_af_ops, align 8
  %net_header_len = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %net_header_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %net_header_len, align 4
  %conv = zext i16 %12 to i32
  %icsk_ext_hdr_len = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %13 = ptrtoint ptr %icsk_ext_hdr_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %icsk_ext_hdr_len, align 2
  %conv7 = zext i16 %14 to i32
  %dccps_send_ndp_count = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %15 = ptrtoint ptr %dccps_send_ndp_count to i32
  call void @__asan_load8_noabort(i32 %15)
  %bf.load = load i64, ptr %dccps_send_ndp_count, align 8
  %16 = trunc i64 %bf.load to i32
  %17 = lshr i32 %16, 4
  %mul = and i32 %17, 8
  %dccps_hc_rx_ackvec = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %18 = ptrtoint ptr %dccps_hc_rx_ackvec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dccps_hc_rx_ackvec, align 4
  %tobool14.not = icmp eq ptr %19, null
  %cond15 = select i1 %tobool14.not, i32 0, i32 16
  %add16 = add nuw nsw i32 %mul, 26
  %add18 = add nuw nsw i32 %add16, %cond15
  %div37 = and i32 %add18, 120
  %add.neg = add i32 %8, -16
  %20 = add nuw nsw i32 %conv, %conv7
  %21 = add nuw nsw i32 %20, %div37
  %sub20 = sub i32 %add.neg, %21
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %22 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pmtu, ptr %icsk_pmtu_cookie, align 8
  %dccps_mss_cache = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %23 = ptrtoint ptr %dccps_mss_cache to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub20, ptr %dccps_mss_cache, align 4
  ret i32 %sub20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_write_space(ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %4, align 8
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
  %.b18 = load i1, ptr @dccp_write_space.__warned, align 1
  br i1 %.b18, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dccp_write_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 202, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool.not.i19 = icmp eq ptr %6, null
  br i1 %tobool.not.i19, label %do.end7.if.end11_crit_edge, label %skwq_has_sleeper.exit

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

skwq_has_sleeper.exit:                            ; preds = %do.end7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  %head.i.i.i = getelementptr inbounds %struct.wait_queue_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.i.not = icmp eq ptr %8, %head.i.i.i
  br i1 %cmp.i.i.i.i.not, label %skwq_has_sleeper.exit.if.end11_crit_edge, label %if.then10

skwq_has_sleeper.exit.if.end11_crit_edge:         ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %skwq_has_sleeper.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wake_up(ptr noundef nonnull %6, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %skwq_has_sleeper.exit.if.end11_crit_edge, %do.end7.if.end11_crit_edge
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %sk_wmem_alloc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sk_wmem_alloc.i, align 4
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %11 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_sndbuf.i, align 4
  %shr.i = ashr i32 %12, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shr.i)
  %cmp.i = icmp ult i32 %10, %shr.i
  br i1 %cmp.i, label %if.then13, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %if.then13.if.end14_crit_edge, label %if.then.i20

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then.i20:                                      ; preds = %if.then13
  %17 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !80
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %if.then.i20.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i20.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i20
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.i20.rcu_read_lock.exit.i_crit_edge
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %4, align 8
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i21 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22, label %rcu_read_lock.exit.i.do.end9.i_crit_edge

rcu_read_lock.exit.i.do.end9.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i22:                                ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i22.do.end9.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i22.do.end9.i_crit_edge:            ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i22
  %.b1.i = load i1, ptr @sk_wake_async.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true5.i.do.end9.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sk_wake_async.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 2444, ptr noundef nonnull @.str.1) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then7.i, %land.lhs.true5.i.do.end9.i_crit_edge, %land.lhs.true.i22.do.end9.i_crit_edge, %rcu_read_lock.exit.i.do.end9.i_crit_edge
  %call11.i = tail call i32 @sock_wake_async(ptr noundef %22, i32 noundef 2, i32 noundef 2) #9
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2.i, label %do.end9.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

do.end9.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %do.end9.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %do.end9.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %23 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i.i9.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %if.end14

if.end14:                                         ; preds = %rcu_read_unlock.exit.i, %if.then13.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i23, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.end14
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.14) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %27 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i.i30 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_flush_write_queue(ptr noundef %sk, ptr nocapture noundef %time_budget) local_unnamed_addr #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %time_budget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %time_budget, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp69 = icmp sgt i32 %1, 0
  br i1 %cmp69, label %land.rhs.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %6 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %sk_write_pending.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  br label %land.rhs

land.rhs:                                         ; preds = %sw.epilog.land.rhs_crit_edge, %land.rhs.lr.ph
  %7 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i52 = icmp eq ptr %8, %sk_write_queue
  %tobool.not68 = icmp eq ptr %8, null
  %tobool.not = or i1 %cmp.i52, %tobool.not68
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %9 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %ccid_hc_tx_send_packet.i = getelementptr inbounds %struct.ccid_operations, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %ccid_hc_tx_send_packet.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ccid_hc_tx_send_packet.i, align 4
  %cmp.not.i = icmp eq ptr %14, null
  br i1 %cmp.not.i, label %while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge, label %ccid_hc_tx_send_packet.exit

while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccid_hc_tx_send_packet.exit.thread

ccid_hc_tx_send_packet.exit:                      ; preds = %while.body
  %call.i = call i32 %14(ptr noundef %sk, ptr noundef nonnull %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i55 = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  %15 = call i32 @llvm.umax.i32(i32 %call.i, i32 65536) #9
  br i1 %cmp1.i, label %ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge, label %ccid_hc_tx_send_packet.exit._crit_edge

ccid_hc_tx_send_packet.exit._crit_edge:           ; preds = %ccid_hc_tx_send_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %16

ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge: ; preds = %ccid_hc_tx_send_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccid_hc_tx_send_packet.exit.thread

ccid_hc_tx_send_packet.exit.thread:               ; preds = %ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge, %while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge
  %cmp.i5565 = phi i1 [ %cmp.i55, %ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge ], [ false, %while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge ]
  br label %16

16:                                               ; preds = %ccid_hc_tx_send_packet.exit.thread, %ccid_hc_tx_send_packet.exit._crit_edge
  %cmp.i5564 = phi i1 [ %cmp.i5565, %ccid_hc_tx_send_packet.exit.thread ], [ %cmp.i55, %ccid_hc_tx_send_packet.exit._crit_edge ]
  %retval.0.i5462 = phi i32 [ 0, %ccid_hc_tx_send_packet.exit.thread ], [ %call.i, %ccid_hc_tx_send_packet.exit._crit_edge ]
  %17 = phi i32 [ 0, %ccid_hc_tx_send_packet.exit.thread ], [ %15, %ccid_hc_tx_send_packet.exit._crit_edge ]
  %retval.0.i56 = select i1 %cmp.i5564, i32 983040, i32 %17
  %18 = zext i32 %retval.0.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i56, label %.sw.epilogthread-pre-split_crit_edge [
    i32 131072, label %do.body
    i32 65536, label %if.else.i
    i32 0, label %sw.bb20
    i32 983040, label %sw.bb21
  ]

.sw.epilogthread-pre-split_crit_edge:             ; preds = %16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

do.body:                                          ; preds = %16
  %call4 = call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.else.i:                                        ; preds = %16
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %retval.0.i5462) #9
  %19 = ptrtoint ptr %time_budget to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %time_budget, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %20)
  %cmp12 = icmp sgt i32 %call2.i, %20
  br i1 %cmp12, label %if.else.i.cleanup_crit_edge, label %if.end14

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #9
  %21 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %wait.i, align 4
  %22 = call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i, align 8
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %2, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @autoremove_wake_function, ptr %3, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %4, ptr %4, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %4, ptr %5, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %6, align 8
  call void @prepare_to_wait(ptr noundef %31, ptr noundef nonnull %wait.i, i32 noundef 1) #9
  %32 = ptrtoint ptr %sk_write_pending.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sk_write_pending.i, align 4
  %inc.i = add i32 %33, 1
  store i32 %inc.i, ptr %sk_write_pending.i, align 4
  call void @release_sock(ptr noundef %sk) #9
  %call5.i = call i32 @schedule_timeout(i32 noundef %call2.i) #9
  call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %34 = ptrtoint ptr %sk_write_pending.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sk_write_pending.i, align 4
  %dec.i = add i32 %35, -1
  store i32 %dec.i, ptr %sk_write_pending.i, align 4
  %36 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %6, align 8
  call void @finish_wait(ptr noundef %37, ptr noundef nonnull %wait.i) #9
  %38 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stack.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.end14.dccp_wait_for_ccid.exit.thread_crit_edge, !prof !83

if.end14.dccp_wait_for_ccid.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_wait_for_ccid.exit.thread

signal_pending.exit.i:                            ; preds = %if.end14
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %41, align 4
  %and1.i.i.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %signal_pending.exit.i.dccp_wait_for_ccid.exit.thread_crit_edge

signal_pending.exit.i.dccp_wait_for_ccid.exit.thread_crit_edge: ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_wait_for_ccid.exit.thread

lor.lhs.false.i:                                  ; preds = %signal_pending.exit.i
  %47 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool11.not.i = icmp eq i32 %48, 0
  br i1 %tobool11.not.i, label %dccp_wait_for_ccid.exit, label %lor.lhs.false.i.dccp_wait_for_ccid.exit.thread_crit_edge

lor.lhs.false.i.dccp_wait_for_ccid.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_wait_for_ccid.exit.thread

dccp_wait_for_ccid.exit.thread:                   ; preds = %lor.lhs.false.i.dccp_wait_for_ccid.exit.thread_crit_edge, %signal_pending.exit.i.dccp_wait_for_ccid.exit.thread_crit_edge, %if.end14.dccp_wait_for_ccid.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #9
  br label %cleanup

dccp_wait_for_ccid.exit:                          ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp16 = icmp slt i32 %call5.i, 0
  br i1 %cmp16, label %dccp_wait_for_ccid.exit.cleanup_crit_edge, label %if.end18

dccp_wait_for_ccid.exit.cleanup_crit_edge:        ; preds = %dccp_wait_for_ccid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %dccp_wait_for_ccid.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.neg = sub i32 %call5.i, %call2.i
  %49 = ptrtoint ptr %time_budget to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %time_budget, align 4
  %sub19 = add i32 %sub.neg, %50
  store i32 %sub19, ptr %time_budget, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %16
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @dccp_xmit_packet(ptr noundef %sk)
  br label %sw.epilogthread-pre-split

sw.bb21:                                          ; preds = %16
  %call23 = call ptr @skb_dequeue(ptr noundef %sk_write_queue) #9
  call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %51 = load i8, ptr @dccp_debug, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool25.not = icmp eq i8 %51, 0
  br i1 %tobool25.not, label %sw.bb21.sw.epilogthread-pre-split_crit_edge, label %do.end29

sw.bb21.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

do.end29:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i5462) #12
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %do.end29, %sw.bb21.sw.epilogthread-pre-split_crit_edge, %sw.bb20, %.sw.epilogthread-pre-split_crit_edge
  %52 = ptrtoint ptr %time_budget to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %time_budget, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end18
  %53 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %sub19, %if.end18 ]
  %cmp = icmp sgt i32 %53, 0
  br i1 %cmp, label %sw.epilog.land.rhs_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.land.rhs_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %dccp_wait_for_ccid.exit.cleanup_crit_edge, %dccp_wait_for_ccid.exit.thread, %if.else.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dccp_xmit_packet(ptr noundef %sk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @dccp_qpolicy_pop(ptr noundef %sk) #9
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !85

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %0 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len3, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %3)
  %cmp4 = icmp eq i8 %3, 13
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %dccps_mss_cache = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %4 = ptrtoint ptr %dccps_mss_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dccps_mss_cache, align 4
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  %6 = ptrtoint ptr %dccps_featneg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dccps_featneg, align 4
  %cmp.i = icmp ne ptr %7, %dccps_featneg
  %sub = add i32 %5, -128
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub)
  %cmp9 = icmp ugt i32 %1, %sub
  %or.cond = select i1 %cmp.i, i1 %cmp9, i1 false
  br i1 %or.cond, label %do.body, label %if.then6.if.end21_crit_edge

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.body:                                          ; preds = %if.then6
  %call12 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body.do.end19_crit_edge, label %do.end

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %1) #12
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 7
  br i1 %cmp.not.i, label %do.end19.dccp_send_ack.exit_crit_edge, label %if.then.i

do.end19.dccp_send_ack.exit_crit_edge:            ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_send_ack.exit

if.then.i:                                        ; preds = %do.end19
  %skc_prot.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %10 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skc_prot.i, align 8
  %max_header.i = getelementptr inbounds %struct.proto, ptr %11, i32 0, i32 40
  %12 = ptrtoint ptr %max_header.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_header.i, align 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %13, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp3.i = icmp eq ptr %call.i.i, null
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ack.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %14 = ptrtoint ptr %icsk_ack.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %icsk_ack.i.i, align 4
  %ato.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 4
  %16 = ptrtoint ptr %ato.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %ato.i, align 4
  %17 = or i8 %15, 3
  store i8 %17, ptr %icsk_ack.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add20.i.i = add i32 %18, 20
  %timeout.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 5
  %19 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add20.i.i, ptr %timeout.i.i, align 4
  %icsk_delack_timer.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_delack_timer.i.i, i32 noundef %add20.i.i) #9
  br label %dccp_send_ack.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %skc_prot.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_prot.i, align 8
  %max_header9.i = getelementptr inbounds %struct.proto, ptr %21, i32 0, i32 40
  %22 = ptrtoint ptr %max_header9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_header9.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %23
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %27, i32 %23
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %dccpd_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %28 = ptrtoint ptr %dccpd_type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %dccpd_type.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 15
  %bf.set.i = or i8 %bf.clear.i, 48
  store i8 %bf.set.i, ptr %dccpd_type.i, align 8
  %call10.i = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef nonnull %call.i.i) #9
  br label %dccp_send_ack.exit

dccp_send_ack.exit:                               ; preds = %if.end.i, %if.then5.i, %do.end19.dccp_send_ack.exit_crit_edge
  tail call void @dccp_feat_list_purge(ptr noundef %dccps_featneg) #9
  br label %if.end21

if.end21:                                         ; preds = %dccp_send_ack.exit, %if.then6.if.end21_crit_edge
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %29 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %icsk_ack.i, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %icsk_ack.i, align 4
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %32 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %icsk_rto, align 4
  tail call fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef 2, i32 noundef %33, i32 noundef 6400)
  br label %if.end40

if.else:                                          ; preds = %if.end
  %dccps_hc_rx_ackvec.i.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %34 = ptrtoint ptr %dccps_hc_rx_ackvec.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dccps_hc_rx_ackvec.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %35, null
  br i1 %cmp.not.i.i, label %if.else.dccp_ack_pending.exit_crit_edge, label %land.rhs.i.i

if.else.dccp_ack_pending.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_ack_pending.exit

land.rhs.i.i:                                     ; preds = %if.else
  %av_overflow.i.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %av_overflow.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load.i.i.i = load i8, ptr %av_overflow.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %cmp.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %cmp.i.i.i, label %dccp_ackvec_pending.exit.i, label %land.rhs.i.i.if.end40_crit_edge

land.rhs.i.i.if.end40_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

dccp_ackvec_pending.exit.i:                       ; preds = %land.rhs.i.i
  %av_buf_head.i.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %35, i32 0, i32 1
  %37 = ptrtoint ptr %av_buf_head.i.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %av_buf_head.i.i.i, align 2
  %av_buf_tail.i.i.i = getelementptr inbounds %struct.dccp_ackvec, ptr %35, i32 0, i32 2
  %39 = ptrtoint ptr %av_buf_tail.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %av_buf_tail.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %38, i16 %40)
  %cmp4.i.i.not.i = icmp eq i16 %38, %40
  br i1 %cmp4.i.i.not.i, label %dccp_ackvec_pending.exit.i.dccp_ack_pending.exit_crit_edge, label %dccp_ackvec_pending.exit.i.if.end40_crit_edge

dccp_ackvec_pending.exit.i.if.end40_crit_edge:    ; preds = %dccp_ackvec_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

dccp_ackvec_pending.exit.i.dccp_ack_pending.exit_crit_edge: ; preds = %dccp_ackvec_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_ack_pending.exit

dccp_ack_pending.exit:                            ; preds = %dccp_ackvec_pending.exit.i.dccp_ack_pending.exit_crit_edge, %if.else.dccp_ack_pending.exit_crit_edge
  %icsk_ack.i.i87 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %41 = ptrtoint ptr %icsk_ack.i.i87 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %icsk_ack.i.i87, align 4
  %43 = and i8 %42, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool24.not = icmp eq i8 %43, 0
  %spec.select = select i1 %tobool24.not, i8 32, i8 64
  br label %if.end40

if.end40:                                         ; preds = %dccp_ack_pending.exit, %dccp_ackvec_pending.exit.i.if.end40_crit_edge, %land.rhs.i.i.if.end40_crit_edge, %if.end21
  %.sink = phi i8 [ 64, %if.end21 ], [ 64, %land.rhs.i.i.if.end40_crit_edge ], [ 64, %dccp_ackvec_pending.exit.i.if.end40_crit_edge ], [ %spec.select, %dccp_ack_pending.exit ]
  %dccpd_type28 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 24
  %44 = ptrtoint ptr %dccpd_type28 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load29 = load i8, ptr %dccpd_type28, align 8
  %bf.clear30 = and i8 %bf.load29, 15
  %bf.set31 = or i8 %bf.clear30, %.sink
  store i8 %bf.set31, ptr %dccpd_type28, align 8
  %call41 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.if.end55_crit_edge, label %do.body44

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.body44:                                        ; preds = %if.end40
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %45 = load i8, ptr @dccp_debug, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool45.not = icmp eq i8 %45, 0
  br i1 %tobool45.not, label %do.body44.if.end55_crit_edge, label %do.end49

do.body44.if.end55_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

do.end49:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %call41) #12
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %do.body44.if.end55_crit_edge, %if.end40.if.end55_crit_edge
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %46 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %ccid_hc_tx_packet_sent.i = getelementptr inbounds %struct.ccid_operations, ptr %49, i32 0, i32 19
  %50 = ptrtoint ptr %ccid_hc_tx_packet_sent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ccid_hc_tx_packet_sent.i, align 4
  %cmp.not.i88 = icmp eq ptr %51, null
  br i1 %cmp.not.i88, label %if.end55.ccid_hc_tx_packet_sent.exit_crit_edge, label %if.then.i89

if.end55.ccid_hc_tx_packet_sent.exit_crit_edge:   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccid_hc_tx_packet_sent.exit

if.then.i89:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %51(ptr noundef %sk, i32 noundef %1) #9
  br label %ccid_hc_tx_packet_sent.exit

ccid_hc_tx_packet_sent.exit:                      ; preds = %if.then.i89, %if.end55.ccid_hc_tx_packet_sent.exit_crit_edge
  %dccps_sync_scheduled = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %52 = ptrtoint ptr %dccps_sync_scheduled to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load56 = load i8, ptr %dccps_sync_scheduled, align 8
  %53 = and i8 %bf.load56, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool58.not = icmp eq i8 %53, 0
  br i1 %tobool58.not, label %ccid_hc_tx_packet_sent.exit.cleanup_crit_edge, label %if.then59

ccid_hc_tx_packet_sent.exit.cleanup_crit_edge:    ; preds = %ccid_hc_tx_packet_sent.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %ccid_hc_tx_packet_sent.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_gsr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %54 = ptrtoint ptr %dccps_gsr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %dccps_gsr, align 8
  tail call void @dccp_send_sync(ptr noundef %sk, i64 noundef %55, i32 noundef 8)
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %ccid_hc_tx_packet_sent.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_write_xmit(ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call137 = tail call ptr @dccp_qpolicy_top(ptr noundef %sk) #9
  %tobool.not38 = icmp eq ptr %call137, null
  br i1 %tobool.not38, label %entry.cleanup13_crit_edge, label %while.body.lr.ph

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

while.body.lr.ph:                                 ; preds = %entry
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %call139 = phi ptr [ %call137, %while.body.lr.ph ], [ %call1, %sw.epilog.while.body_crit_edge ]
  %0 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ccid_hc_tx_send_packet.i = getelementptr inbounds %struct.ccid_operations, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %ccid_hc_tx_send_packet.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccid_hc_tx_send_packet.i, align 4
  %cmp.not.i = icmp eq ptr %5, null
  br i1 %cmp.not.i, label %while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge, label %ccid_hc_tx_send_packet.exit

while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccid_hc_tx_send_packet.exit.thread

ccid_hc_tx_send_packet.exit:                      ; preds = %while.body
  %call.i = tail call i32 %5(ptr noundef %sk, ptr noundef nonnull %call139) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i28 = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  %6 = tail call i32 @llvm.umax.i32(i32 %call.i, i32 65536) #9
  br i1 %cmp1.i, label %ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge, label %ccid_hc_tx_send_packet.exit._crit_edge

ccid_hc_tx_send_packet.exit._crit_edge:           ; preds = %ccid_hc_tx_send_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge: ; preds = %ccid_hc_tx_send_packet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ccid_hc_tx_send_packet.exit.thread

ccid_hc_tx_send_packet.exit.thread:               ; preds = %ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge, %while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge
  %cmp.i2836 = phi i1 [ %cmp.i28, %ccid_hc_tx_send_packet.exit.ccid_hc_tx_send_packet.exit.thread_crit_edge ], [ false, %while.body.ccid_hc_tx_send_packet.exit.thread_crit_edge ]
  br label %7

7:                                                ; preds = %ccid_hc_tx_send_packet.exit.thread, %ccid_hc_tx_send_packet.exit._crit_edge
  %cmp.i2835 = phi i1 [ %cmp.i2836, %ccid_hc_tx_send_packet.exit.thread ], [ %cmp.i28, %ccid_hc_tx_send_packet.exit._crit_edge ]
  %retval.0.i2733 = phi i32 [ 0, %ccid_hc_tx_send_packet.exit.thread ], [ %call.i, %ccid_hc_tx_send_packet.exit._crit_edge ]
  %8 = phi i32 [ 0, %ccid_hc_tx_send_packet.exit.thread ], [ %6, %ccid_hc_tx_send_packet.exit._crit_edge ]
  %retval.0.i29 = select i1 %cmp.i2835, i32 983040, i32 %8
  %9 = zext i32 %retval.0.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %retval.0.i29, label %.sw.epilog_crit_edge [
    i32 131072, label %.cleanup13_crit_edge
    i32 65536, label %sw.bb4
    i32 0, label %sw.bb6
    i32 983040, label %sw.bb7
  ]

.cleanup13_crit_edge:                             ; preds = %7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

.sw.epilog_crit_edge:                             ; preds = %7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %7
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_xmit_timer = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %retval.0.i2733) #9
  %add = add i32 %call2.i, %10
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %dccps_xmit_timer, i32 noundef %add) #9
  br label %cleanup13

sw.bb6:                                           ; preds = %7
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dccp_xmit_packet(ptr noundef %sk)
  br label %sw.epilog

sw.bb7:                                           ; preds = %7
  tail call void @dccp_qpolicy_drop(ptr noundef %sk, ptr noundef nonnull %call139) #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %11 = load i8, ptr @dccp_debug, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  br i1 %tobool8.not, label %sw.bb7.sw.epilog_crit_edge, label %do.end

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i2733) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb7.sw.epilog_crit_edge, %sw.bb6, %.sw.epilog_crit_edge
  %call1 = tail call ptr @dccp_qpolicy_top(ptr noundef %sk) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %sw.epilog.cleanup13_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sw.epilog.cleanup13_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup13

cleanup13:                                        ; preds = %sw.epilog.cleanup13_crit_edge, %sw.bb4, %.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_qpolicy_top(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_reset_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_qpolicy_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_retransmit_skb(ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 25
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !85

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 388, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %3 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %icsk_af_ops, align 8
  %rebuild_header = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %rebuild_header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rebuild_header, align 4
  %call19 = tail call i32 %6(ptr noundef %sk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end22, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_retransmits = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %7 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %icsk_retransmits, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %icsk_retransmits, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %call24 = tail call ptr @skb_clone(ptr noundef %10, i32 noundef 2592) #9
  %call25 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef %call24)
  br label %return

return:                                           ; preds = %if.end22, %if.end.return_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end22 ], [ -113, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %skb, null
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then, !prof !85

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.lshr = lshr i8 %bf.load, 4
  %trunc = trunc i8 %bf.lshr to i4
  %1 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.28)
  switch i4 %trunc, label %if.end35.i [
    i4 2, label %dccp_packet_hdr_len.exit.thread252
    i4 4, label %if.then.dccp_packet_hdr_len.exit_crit_edge
    i4 3, label %if.then.dccp_packet_hdr_len.exit_crit_edge298
    i4 -8, label %if.then.dccp_packet_hdr_len.exit_crit_edge299
    i4 -7, label %if.then.dccp_packet_hdr_len.exit_crit_edge300
    i4 6, label %if.then.dccp_packet_hdr_len.exit_crit_edge301
    i4 5, label %if.then.dccp_packet_hdr_len.exit_crit_edge302
    i4 0, label %dccp_packet_hdr_len.exit.thread264
    i4 1, label %dccp_packet_hdr_len.exit.thread
  ]

if.then.dccp_packet_hdr_len.exit_crit_edge302:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

if.then.dccp_packet_hdr_len.exit_crit_edge301:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

if.then.dccp_packet_hdr_len.exit_crit_edge300:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

if.then.dccp_packet_hdr_len.exit_crit_edge299:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

if.then.dccp_packet_hdr_len.exit_crit_edge298:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

if.then.dccp_packet_hdr_len.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

dccp_packet_hdr_len.exit.thread252:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_gsr255 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %dccps_gsr255 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dccps_gsr255, align 8
  %dccps_gss256 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %dccps_gss256 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dccps_gss256, align 8
  %add5257 = add i64 %5, 1
  %and258 = and i64 %add5257, 281474976710655
  %dccpd_seq259 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %6 = ptrtoint ptr %dccpd_seq259 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %and258, ptr %dccpd_seq259, align 8
  %extract.t = trunc i64 %3 to i32
  %extract = lshr i64 %3, 32
  %extract.t295 = trunc i64 %extract to i16
  br label %sw.bb

dccp_packet_hdr_len.exit.thread264:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_gss268 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %7 = ptrtoint ptr %dccps_gss268 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dccps_gss268, align 8
  %add5269 = add i64 %8, 1
  %and270 = and i64 %add5269, 281474976710655
  %dccpd_seq271 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %9 = ptrtoint ptr %dccpd_seq271 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and270, ptr %dccpd_seq271, align 8
  br label %sw.bb10

dccp_packet_hdr_len.exit.thread:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_gsr239 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %10 = ptrtoint ptr %dccps_gsr239 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dccps_gsr239, align 8
  %dccps_gss240 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %12 = ptrtoint ptr %dccps_gss240 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dccps_gss240, align 8
  %add5241 = add i64 %13, 1
  %and242 = and i64 %add5241, 281474976710655
  %dccpd_seq243 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %14 = ptrtoint ptr %dccpd_seq243 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %and242, ptr %dccpd_seq243, align 8
  %extract.t287 = trunc i64 %11 to i32
  %extract292 = lshr i64 %11, 32
  %extract.t293 = trunc i64 %extract292 to i16
  br label %sw.default

if.end35.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_packet_hdr_len.exit

dccp_packet_hdr_len.exit:                         ; preds = %if.end35.i, %if.then.dccp_packet_hdr_len.exit_crit_edge, %if.then.dccp_packet_hdr_len.exit_crit_edge298, %if.then.dccp_packet_hdr_len.exit_crit_edge299, %if.then.dccp_packet_hdr_len.exit_crit_edge300, %if.then.dccp_packet_hdr_len.exit_crit_edge301, %if.then.dccp_packet_hdr_len.exit_crit_edge302
  %retval.0.i = phi i32 [ 28, %if.end35.i ], [ 24, %if.then.dccp_packet_hdr_len.exit_crit_edge ], [ 24, %if.then.dccp_packet_hdr_len.exit_crit_edge298 ], [ 24, %if.then.dccp_packet_hdr_len.exit_crit_edge299 ], [ 24, %if.then.dccp_packet_hdr_len.exit_crit_edge300 ], [ 24, %if.then.dccp_packet_hdr_len.exit_crit_edge301 ], [ 24, %if.then.dccp_packet_hdr_len.exit_crit_edge302 ]
  %dccps_gsr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %15 = ptrtoint ptr %dccps_gsr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %dccps_gsr, align 8
  %dccps_gss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 8
  %17 = ptrtoint ptr %dccps_gss to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dccps_gss, align 8
  %add5 = add i64 %18, 1
  %and = and i64 %add5, 281474976710655
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %19 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %and, ptr %dccpd_seq, align 8
  %conv = zext i8 %bf.lshr to i32
  %extract.t278 = trunc i64 %16 to i32
  %extract281 = lshr i64 %16, 32
  %extract.t282 = trunc i64 %extract281 to i16
  %20 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %conv, label %dccp_packet_hdr_len.exit.sw.default_crit_edge [
    i32 2, label %dccp_packet_hdr_len.exit.sw.bb_crit_edge
    i32 4, label %dccp_packet_hdr_len.exit.sw.epilog_crit_edge
    i32 7, label %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303
    i32 0, label %dccp_packet_hdr_len.exit.sw.bb10_crit_edge
    i32 8, label %dccp_packet_hdr_len.exit.sw.bb16_crit_edge
    i32 9, label %dccp_packet_hdr_len.exit.sw.bb16_crit_edge304
  ]

dccp_packet_hdr_len.exit.sw.bb16_crit_edge304:    ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

dccp_packet_hdr_len.exit.sw.bb16_crit_edge:       ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

dccp_packet_hdr_len.exit.sw.bb10_crit_edge:       ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

dccp_packet_hdr_len.exit.sw.epilog_crit_edge303:  ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

dccp_packet_hdr_len.exit.sw.epilog_crit_edge:     ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

dccp_packet_hdr_len.exit.sw.bb_crit_edge:         ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

dccp_packet_hdr_len.exit.sw.default_crit_edge:    ; preds = %dccp_packet_hdr_len.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %dccp_packet_hdr_len.exit.sw.bb_crit_edge, %dccp_packet_hdr_len.exit.thread252
  %dccpd_seq263 = phi ptr [ %dccpd_seq259, %dccp_packet_hdr_len.exit.thread252 ], [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.bb_crit_edge ]
  %dccps_gss262 = phi ptr [ %dccps_gss256, %dccp_packet_hdr_len.exit.thread252 ], [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.bb_crit_edge ]
  %.off0 = phi i32 [ %extract.t, %dccp_packet_hdr_len.exit.thread252 ], [ %extract.t278, %dccp_packet_hdr_len.exit.sw.bb_crit_edge ]
  %.off32 = phi i16 [ %extract.t295, %dccp_packet_hdr_len.exit.thread252 ], [ %extract.t282, %dccp_packet_hdr_len.exit.sw.bb_crit_edge ]
  %add261 = phi i32 [ 16, %dccp_packet_hdr_len.exit.thread252 ], [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.bb_crit_edge ]
  br label %sw.epilog

sw.bb10:                                          ; preds = %dccp_packet_hdr_len.exit.sw.bb10_crit_edge, %dccp_packet_hdr_len.exit.thread264
  %dccpd_seq277 = phi ptr [ %dccpd_seq271, %dccp_packet_hdr_len.exit.thread264 ], [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.bb10_crit_edge ]
  %dccps_gss276 = phi ptr [ %dccps_gss268, %dccp_packet_hdr_len.exit.thread264 ], [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.bb10_crit_edge ]
  %add274 = phi i32 [ 20, %dccp_packet_hdr_len.exit.thread264 ], [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.bb10_crit_edge ]
  %icsk_retransmits = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %21 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %icsk_retransmits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp12 = icmp eq i8 %22, 0
  br i1 %cmp12, label %if.then14, label %sw.bb10.sw.bb16_crit_edge

sw.bb10.sw.bb16_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_iss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 5
  %23 = ptrtoint ptr %dccps_iss to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dccps_iss, align 8
  %25 = ptrtoint ptr %dccpd_seq277 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %dccpd_seq277, align 8
  br label %sw.bb16

sw.bb16:                                          ; preds = %if.then14, %sw.bb10.sw.bb16_crit_edge, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge304
  %dccps_gss275 = phi ptr [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge ], [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge304 ], [ %dccps_gss276, %if.then14 ], [ %dccps_gss276, %sw.bb10.sw.bb16_crit_edge ]
  %add273 = phi i32 [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge ], [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge304 ], [ %add274, %if.then14 ], [ %add274, %sw.bb10.sw.bb16_crit_edge ]
  %dccpd_seq249 = phi ptr [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge ], [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge304 ], [ %dccpd_seq277, %if.then14 ], [ %dccpd_seq277, %sw.bb10.sw.bb16_crit_edge ]
  %set_ack.0 = phi i32 [ 1, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge ], [ 1, %dccp_packet_hdr_len.exit.sw.bb16_crit_edge304 ], [ 0, %if.then14 ], [ 0, %sw.bb10.sw.bb16_crit_edge ]
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %26 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dccpd_ack_seq, align 8
  %extract.t286 = trunc i64 %27 to i32
  %extract290 = lshr i64 %27, 32
  %extract.t291 = trunc i64 %extract290 to i16
  br label %sw.default

sw.default:                                       ; preds = %sw.bb16, %dccp_packet_hdr_len.exit.sw.default_crit_edge, %dccp_packet_hdr_len.exit.thread
  %dccpd_seq251 = phi ptr [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.default_crit_edge ], [ %dccpd_seq249, %sw.bb16 ], [ %dccpd_seq243, %dccp_packet_hdr_len.exit.thread ]
  %dccps_gss248 = phi ptr [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.default_crit_edge ], [ %dccps_gss275, %sw.bb16 ], [ %dccps_gss240, %dccp_packet_hdr_len.exit.thread ]
  %add246 = phi i32 [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.default_crit_edge ], [ %add273, %sw.bb16 ], [ 28, %dccp_packet_hdr_len.exit.thread ]
  %set_ack.1 = phi i32 [ 1, %dccp_packet_hdr_len.exit.sw.default_crit_edge ], [ %set_ack.0, %sw.bb16 ], [ 1, %dccp_packet_hdr_len.exit.thread ]
  %ackno.0.off0 = phi i32 [ %extract.t278, %dccp_packet_hdr_len.exit.sw.default_crit_edge ], [ %extract.t286, %sw.bb16 ], [ %extract.t287, %dccp_packet_hdr_len.exit.thread ]
  %ackno.0.off32 = phi i16 [ %extract.t282, %dccp_packet_hdr_len.exit.sw.default_crit_edge ], [ %extract.t291, %sw.bb16 ], [ %extract.t293, %dccp_packet_hdr_len.exit.thread ]
  %28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool17.not = icmp eq ptr %30, null
  br i1 %tobool17.not, label %sw.default.if.end36_crit_edge, label %do.end, !prof !83

sw.default.if.end36_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 9, ptr noundef null) #9
  br label %if.end36

if.end36:                                         ; preds = %do.end, %sw.default.if.end36_crit_edge
  tail call void @skb_set_owner_w(ptr noundef nonnull %skb, ptr noundef %sk) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36, %sw.bb, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303
  %dccpd_seq250 = phi ptr [ %dccpd_seq251, %if.end36 ], [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge ], [ %dccpd_seq, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303 ], [ %dccpd_seq263, %sw.bb ]
  %dccps_gss247 = phi ptr [ %dccps_gss248, %if.end36 ], [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge ], [ %dccps_gss, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303 ], [ %dccps_gss262, %sw.bb ]
  %add245 = phi i32 [ %add246, %if.end36 ], [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge ], [ %retval.0.i, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303 ], [ %add261, %sw.bb ]
  %set_ack.2 = phi i32 [ %set_ack.1, %if.end36 ], [ 1, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge ], [ 1, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303 ], [ 0, %sw.bb ]
  %ackno.1.off0 = phi i32 [ %ackno.0.off0, %if.end36 ], [ %extract.t278, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge ], [ %extract.t278, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303 ], [ %.off0, %sw.bb ]
  %ackno.1.off32 = phi i16 [ %ackno.0.off32, %if.end36 ], [ %extract.t282, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge ], [ %extract.t282, %dccp_packet_hdr_len.exit.sw.epilog_crit_edge303 ], [ %.off32, %sw.bb ]
  %call43 = tail call i32 @dccp_insert_options(ptr noundef %sk, ptr noundef nonnull %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #9
  br label %return

if.end46:                                         ; preds = %sw.epilog
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef %add245) #9
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i7.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i7.i
  %36 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %add245)
  %37 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load49 = load i8, ptr %dccpd_type, align 8
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load51 = load i8, ptr %dccph_type, align 2
  %39 = lshr i8 %bf.load49, 3
  %bf.shl = and i8 %39, 30
  %bf.clear = and i8 %bf.load51, -31
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %dccph_type, align 2
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %40 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %inet_sport, align 8
  %42 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %add.ptr.i.i, align 2
  %43 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %43, align 4
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %dccph_dport, align 2
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 30
  %47 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dccpd_opt_len, align 2
  %conv53 = zext i16 %48 to i32
  %add54 = add nuw nsw i32 %add245, %conv53
  %div209 = lshr i32 %add54, 2
  %conv55 = trunc i32 %div209 to i8
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv55, ptr %dccph_doff, align 2
  %bf.load56 = load i8, ptr %dccpd_type, align 8
  %dccph_ccval = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %dccph_ccval to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load58 = load i8, ptr %dccph_ccval, align 1
  %bf.shl60 = shl i8 %bf.load56, 4
  %bf.clear61 = and i8 %bf.load58, 15
  %bf.set62 = or i8 %bf.clear61, %bf.shl60
  store i8 %bf.set62, ptr %dccph_ccval, align 1
  %dccps_pcslen = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %51 = ptrtoint ptr %dccps_pcslen to i32
  call void @__asan_load8_noabort(i32 %51)
  %bf.load63 = load i64, ptr %dccps_pcslen, align 8
  %bf.lshr64 = lshr i64 %bf.load63, 12
  %52 = trunc i64 %bf.lshr64 to i8
  %bf.cast = and i8 %52, 15
  %bf.set69 = or i8 %bf.cast, %bf.shl60
  store i8 %bf.set69, ptr %dccph_ccval, align 1
  %bf.set72 = or i8 %bf.set, 1
  store i8 %bf.set72, ptr %dccph_type, align 2
  %53 = ptrtoint ptr %dccpd_seq250 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dccpd_seq250, align 8
  %55 = ptrtoint ptr %dccps_gss247 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %dccps_gss247, align 8
  %dccps_l_seq_win.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 18
  %56 = ptrtoint ptr %dccps_l_seq_win.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %bf.load.i = load i64, ptr %dccps_l_seq_win.i, align 8
  %bf.lshr.i = lshr i64 %bf.load.i, 16
  %57 = sub i64 %54, %bf.lshr.i
  %add2.i = add i64 %57, 1
  %and3.i = and i64 %add2.i, 281474976710655
  %dccps_awl.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 3
  %dccps_iss.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 5
  %58 = ptrtoint ptr %dccps_iss.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %dccps_iss.i, align 8
  %60 = sub i64 %59, %add2.i
  %sub.i.i = shl i64 %60, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i)
  %cmp.i.i = icmp slt i64 %sub.i.i, 1
  %spec.store.select.i = select i1 %cmp.i.i, i64 %and3.i, i64 %59
  %61 = ptrtoint ptr %dccps_awl.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %spec.store.select.i, ptr %dccps_awl.i, align 8
  %dccps_awh.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 4
  %62 = ptrtoint ptr %dccps_awh.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %54, ptr %dccps_awh.i, align 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %dccph_seq2.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %dccph_seq2.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %dccph_seq2.i, align 1
  %shr.i = lshr i64 %54, 32
  %conv.i = trunc i64 %shr.i to i16
  %dccph_seq.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %64 = ptrtoint ptr %dccph_seq.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i, ptr %dccph_seq.i, align 2
  %conv2.i = trunc i64 %54 to i32
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv2.i, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_ack.2)
  %tobool75.not = icmp eq i32 %set_ack.2, 0
  br i1 %tobool75.not, label %if.end46.if.end78_crit_edge, label %if.then76

if.end46.if.end78_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then76:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %head.i.i, align 8
  %68 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i212 = zext i16 %69 to i32
  %add.ptr.i.i213 = getelementptr i8, ptr %67, i32 %conv.i.i212
  %dccph_x.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i213, i32 0, i32 5
  %70 = ptrtoint ptr %dccph_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load.i.i.i = load i8, ptr %dccph_x.i.i.i, align 2
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %71 = and i8 %bf.clear.i.i.i, 4
  %narrow.i.i.i = add nuw nsw i8 %71, 12
  %add.i.i.i = zext i8 %narrow.i.i.i to i32
  %add.ptr.i214 = getelementptr i8, ptr %add.ptr.i.i213, i32 %add.i.i.i
  %72 = ptrtoint ptr %add.ptr.i214 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %add.ptr.i214, align 4
  %dccph_ack_nr_high.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i214, i32 0, i32 1
  %73 = ptrtoint ptr %dccph_ack_nr_high.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %ackno.1.off32, ptr %dccph_ack_nr_high.i, align 2
  %dccph_ack_nr_low.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i214, i32 0, i32 2
  %74 = ptrtoint ptr %dccph_ack_nr_low.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %ackno.1.off0, ptr %dccph_ack_nr_low.i, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end46.if.end78_crit_edge
  %75 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load80 = load i8, ptr %dccpd_type, align 8
  %bf.lshr81 = lshr i8 %bf.load80, 4
  %conv82 = zext i8 %bf.lshr81 to i32
  %76 = zext i32 %conv82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %conv82, label %if.end78.sw.epilog88_crit_edge [
    i32 0, label %sw.bb83
    i32 7, label %sw.bb86
  ]

if.end78.sw.epilog88_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog88

sw.bb83:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %dccps_service = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 11
  %77 = ptrtoint ptr %dccps_service to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dccps_service, align 8
  %79 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i, align 8
  %81 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i219 = zext i16 %82 to i32
  %add.ptr.i.i220 = getelementptr i8, ptr %80, i32 %conv.i.i219
  %dccph_x.i.i.i221 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i220, i32 0, i32 5
  %83 = ptrtoint ptr %dccph_x.i.i.i221 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load.i.i.i222 = load i8, ptr %dccph_x.i.i.i221, align 2
  %bf.clear.i.i.i223 = shl i8 %bf.load.i.i.i222, 2
  %84 = and i8 %bf.clear.i.i.i223, 4
  %narrow.i.i.i224 = add nuw nsw i8 %84, 12
  %add.i.i.i225 = zext i8 %narrow.i.i.i224 to i32
  %add.ptr.i226 = getelementptr i8, ptr %add.ptr.i.i220, i32 %add.i.i.i225
  %85 = ptrtoint ptr %add.ptr.i226 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %78, ptr %add.ptr.i226, align 4
  %86 = ptrtoint ptr %dccps_iss.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %dccps_iss.i, align 8
  %88 = ptrtoint ptr %dccps_awl.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %dccps_awl.i, align 8
  br label %sw.epilog88

sw.bb86:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %89 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dccpd_reset_code, align 1
  %91 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i, align 8
  %93 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i229 = zext i16 %94 to i32
  %add.ptr.i.i230 = getelementptr i8, ptr %92, i32 %conv.i.i229
  %dccph_x.i.i.i231 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i230, i32 0, i32 5
  %95 = ptrtoint ptr %dccph_x.i.i.i231 to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i.i.i232 = load i8, ptr %dccph_x.i.i.i231, align 2
  %bf.clear.i.i.i233 = shl i8 %bf.load.i.i.i232, 2
  %96 = and i8 %bf.clear.i.i.i233, 4
  %narrow.i.i.i234 = add nuw nsw i8 %96, 12
  %add.i.i.i235 = zext i8 %narrow.i.i.i234 to i32
  %add.ptr.i236 = getelementptr i8, ptr %add.ptr.i.i230, i32 %add.i.i.i235
  %dccph_reset_code = getelementptr inbounds %struct.dccp_hdr_reset, ptr %add.ptr.i236, i32 0, i32 1
  %97 = ptrtoint ptr %dccph_reset_code to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %90, ptr %dccph_reset_code, align 4
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %sw.bb86, %sw.bb83, %if.end78.sw.epilog88_crit_edge
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %98 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %icsk_af_ops, align 8
  %send_check = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %send_check to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %send_check, align 4
  tail call void %101(ptr noundef %sk, ptr noundef nonnull %skb) #9
  br i1 %tobool75.not, label %sw.epilog88.do.body93_crit_edge, label %if.then90

sw.epilog88.do.body93_crit_edge:                  ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93

if.then90:                                        ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ack.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %102 = ptrtoint ptr %icsk_ack.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %icsk_ack.i.i, align 4
  %retry.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 3
  %103 = ptrtoint ptr %retry.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %retry.i.i, align 1
  br label %do.body93

do.body93:                                        ; preds = %if.then90, %sw.epilog88.do.body93_crit_edge
  %104 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %105 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx110 = getelementptr [15 x i32], ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %arrayidx110 to i32
  %107 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cpu, align 4
  %arrayidx113 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx113, align 4
  %add114 = add i32 %112, %106
  %113 = inttoptr i32 %add114 to ptr
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 4
  %add115 = add i32 %115, 1
  store i32 %add115, ptr %113, align 4
  %116 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i = and i32 %116, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool126.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool126.not, label %if.then135, label %do.body93.do.end138_crit_edge, !prof !85

do.body93.do.end138_crit_edge:                    ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end138

if.then135:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end138

do.end138:                                        ; preds = %if.then135, %do.body93.do.end138_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %104) #9, !srcloc !88
  %117 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %icsk_af_ops, align 8
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %fl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 1
  %call146 = tail call i32 %120(ptr noundef %sk, ptr noundef nonnull %skb, ptr noundef %fl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call146)
  %cmp147 = icmp eq i32 %call146, 2
  %spec.select = select i1 %cmp147, i32 0, i32 %call146
  br label %return

return:                                           ; preds = %do.end138, %if.then45, %entry.return_crit_edge
  %retval.1 = phi i32 [ -71, %if.then45 ], [ %spec.select, %do.end138 ], [ -105, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_make_response(ptr noundef %sk, ptr noundef %dst, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sock_wmalloc(ptr noundef %sk, i32 noundef 1196, i32 noundef 1, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1196
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 1196
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %tobool.not.i = icmp eq ptr %dst, null
  br i1 %tobool.not.i, label %if.end.dst_clone.exit_crit_edge, label %if.then.i

if.end.dst_clone.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_clone.exit

if.then.i:                                        ; preds = %if.end
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %dst, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #9, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 231, i32 noundef 9, ptr noundef null) #9
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %if.end.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 3
  %5 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %6 = ptrtoint ptr %dst to i32
  %7 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %7, align 8
  %acked = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %acked to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %acked, align 8
  %10 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool4.not = icmp eq i16 %10, 0
  br i1 %tobool4.not, label %dst_clone.exit.if.end6_crit_edge, label %if.then5

dst_clone.exit.if.end6_crit_edge:                 ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %dst_clone.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dreq_gss = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %dreq_gss to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dreq_gss, align 8
  %add.i = add i64 %12, 1
  %and.i = and i64 %add.i, 281474976710655
  store i64 %and.i, ptr %dreq_gss, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %dst_clone.exit.if.end6_crit_edge
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 24
  %13 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load7 = load i8, ptr %dccpd_type, align 8
  %bf.clear8 = and i8 %bf.load7, 15
  %bf.set = or i8 %bf.clear8, 16
  store i8 %bf.set, ptr %dccpd_type, align 8
  %dreq_gss9 = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %dreq_gss9 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %dreq_gss9, align 8
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %16 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %dccpd_seq, align 8
  %call12 = tail call i32 @dccp_feat_server_ccid_dependencies(ptr noundef %req) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end6.response_failed_crit_edge

if.end6.response_failed_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %response_failed

if.end15:                                         ; preds = %if.end6
  %call16 = tail call i32 @dccp_insert_options_rsk(ptr noundef %req, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.response_failed_crit_edge

if.end15.response_failed_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %response_failed

if.end19:                                         ; preds = %if.end15
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef 28) #9
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 19
  %21 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %conv.i7.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i7.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 28)
  %23 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 2
  %skc_num = getelementptr inbounds %struct.anon.2, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %skc_num to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %skc_num, align 2
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr.i.i, align 2
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %23, align 4
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %dccph_dport, align 2
  %dccpd_opt_len = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 30
  %30 = ptrtoint ptr %dccpd_opt_len to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dccpd_opt_len, align 2
  %conv = zext i16 %31 to i32
  %add = add nuw nsw i32 %conv, 28
  %div116 = lshr i32 %add, 2
  %conv28 = trunc i32 %div116 to i8
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv28, ptr %dccph_doff, align 2
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %dccph_type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %dccph_type, align 2
  %34 = ptrtoint ptr %dreq_gss9 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dreq_gss9, align 8
  %add.ptr.i118 = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %dccph_seq2.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %dccph_seq2.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %dccph_seq2.i, align 1
  %shr.i = lshr i64 %35, 32
  %conv.i = trunc i64 %shr.i to i16
  %dccph_seq.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %dccph_seq.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i, ptr %dccph_seq.i, align 2
  %conv2.i = trunc i64 %35 to i32
  %38 = ptrtoint ptr %add.ptr.i118 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv2.i, ptr %add.ptr.i118, align 4
  %39 = load ptr, ptr %head.i.i, align 8
  %40 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i121 = zext i16 %40 to i32
  %add.ptr.i.i122 = getelementptr i8, ptr %39, i32 %conv.i.i121
  %dccph_x.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i122, i32 0, i32 5
  %41 = ptrtoint ptr %dccph_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i.i.i = load i8, ptr %dccph_x.i.i.i, align 2
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %42 = and i8 %bf.clear.i.i.i, 4
  %narrow.i.i.i = add nuw nsw i8 %42, 12
  %add.i.i.i = zext i8 %narrow.i.i.i to i32
  %add.ptr.i123 = getelementptr i8, ptr %add.ptr.i.i122, i32 %add.i.i.i
  %dreq_gsr = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 4
  %43 = ptrtoint ptr %dreq_gsr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %dreq_gsr, align 8
  %45 = ptrtoint ptr %add.ptr.i123 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %add.ptr.i123, align 4
  %shr.i124 = lshr i64 %44, 32
  %conv.i125 = trunc i64 %shr.i124 to i16
  %dccph_ack_nr_high.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i123, i32 0, i32 1
  %46 = ptrtoint ptr %dccph_ack_nr_high.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i125, ptr %dccph_ack_nr_high.i, align 2
  %conv1.i = trunc i64 %44 to i32
  %dccph_ack_nr_low.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i123, i32 0, i32 2
  %47 = ptrtoint ptr %dccph_ack_nr_low.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv1.i, ptr %dccph_ack_nr_low.i, align 4
  %dreq_service = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 5
  %48 = ptrtoint ptr %dreq_service to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dreq_service, align 8
  %50 = load ptr, ptr %head.i.i, align 8
  %51 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i128 = zext i16 %51 to i32
  %add.ptr.i.i129 = getelementptr i8, ptr %50, i32 %conv.i.i128
  %dccph_x.i.i.i130 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i129, i32 0, i32 5
  %52 = ptrtoint ptr %dccph_x.i.i.i130 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i.i.i131 = load i8, ptr %dccph_x.i.i.i130, align 2
  %bf.clear.i.i.i132 = shl i8 %bf.load.i.i.i131, 2
  %53 = and i8 %bf.clear.i.i.i132, 4
  %narrow.i.i.i133 = add nuw nsw i8 %53, 12
  %add.i.i.i134 = zext i8 %narrow.i.i.i133 to i32
  %add.ptr.i135 = getelementptr i8, ptr %add.ptr.i.i129, i32 %add.i.i.i134
  %dccph_resp_service = getelementptr inbounds %struct.dccp_hdr_response, ptr %add.ptr.i135, i32 0, i32 1
  %54 = ptrtoint ptr %dccph_resp_service to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %49, ptr %dccph_resp_service, align 4
  %55 = load ptr, ptr %head.i.i, align 8
  %56 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i.i.i = zext i16 %56 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %55, i32 %conv.i.i.i.i
  %dccph_cscov.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %dccph_cscov.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i.i = load i8, ptr %dccph_cscov.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %cmp.i.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  br label %dccp_csum_coverage.exit.i

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i136 = zext i8 %bf.clear.i.i to i32
  %dccph_doff.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %dccph_doff.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dccph_doff.i.i, align 2
  %conv2.i.i = zext i8 %61 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv.i.i136
  %sub.i.i = shl nuw nsw i32 %add.i.i, 2
  %mul.i.i = add nsw i32 %sub.i.i, -4
  br label %dccp_csum_coverage.exit.i

dccp_csum_coverage.exit.i:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %59, %if.then.i.i ], [ %mul.i.i, %if.end.i.i ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %63)
  %cmp.not.i = icmp ult i32 %retval.0.i.i, %63
  br i1 %cmp.not.i, label %dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge, label %if.then.i137

dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge: ; preds = %dccp_csum_coverage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_csum_outgoing.exit

if.then.i137:                                     ; preds = %dccp_csum_coverage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear.i = and i8 %bf.load.i.i, -16
  %64 = ptrtoint ptr %dccph_cscov.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.clear.i, ptr %dccph_cscov.i.i, align 1
  br label %dccp_csum_outgoing.exit

dccp_csum_outgoing.exit:                          ; preds = %if.then.i137, %dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 %66) #9
  %call5.i = tail call i32 @skb_checksum(ptr noundef nonnull %call, i32 noundef 0, i32 noundef %67, i32 noundef 0) #9
  %68 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call5.i, ptr %68, align 8
  %70 = ptrtoint ptr %acked to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load40 = load i16, ptr %acked, align 8
  %bf.set42 = or i16 %bf.load40, 8
  store i16 %bf.set42, ptr %acked, align 8
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %72 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx56 = getelementptr [15 x i32], ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx56 to i32
  %74 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i138 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i138 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu, align 4
  %arrayidx59 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx59, align 4
  %add60 = add i32 %79, %73
  %80 = inttoptr i32 %add60 to ptr
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %add61 = add i32 %82, 1
  store i32 %add61, ptr %80, align 4
  %83 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool72.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool72.not, label %if.then76, label %dccp_csum_outgoing.exit.do.end79_crit_edge, !prof !85

dccp_csum_outgoing.exit.do.end79_crit_edge:       ; preds = %dccp_csum_outgoing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79

if.then76:                                        ; preds = %dccp_csum_outgoing.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %dccp_csum_outgoing.exit.do.end79_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #9, !srcloc !88
  br label %cleanup

response_failed:                                  ; preds = %if.end15.response_failed_crit_edge, %if.end6.response_failed_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %response_failed, %do.end79, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %response_failed ], [ %call, %do.end79 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_server_ccid_dependencies(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_insert_options_rsk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_ctl_make_reset(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %rcv_skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %rcv_skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %rcv_skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %max_header = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %max_header to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_header, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %7, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_prot, align 8
  %max_header4 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 40
  %10 = ptrtoint ptr %max_header4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_header4, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 %11
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call.i53 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 28) #9
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %head.i.i54 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i54, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i55 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header.i.i56 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i55, ptr %transport_header.i.i56, align 2
  %conv.i7.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i57 = getelementptr i8, ptr %19, i32 %conv.i7.i
  %21 = call ptr @memset(ptr %add.ptr.i.i57, i32 0, i32 28)
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i57, i32 0, i32 5
  %22 = ptrtoint ptr %dccph_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 14, ptr %dccph_type, align 2
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dccph_dport, align 2
  %25 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr.i.i57, align 2
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i, align 2
  %dccph_dport7 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i57, i32 0, i32 1
  %28 = ptrtoint ptr %dccph_dport7 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %dccph_dport7, align 2
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i57, i32 0, i32 2
  %29 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %dccph_doff, align 2
  store i8 15, ptr %dccph_type, align 2
  %30 = load ptr, ptr %head.i.i54, align 8
  %31 = load i16, ptr %transport_header.i.i56, align 2
  %conv.i.i60 = zext i16 %31 to i32
  %add.ptr.i.i61 = getelementptr i8, ptr %30, i32 %conv.i.i60
  %dccph_x.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i61, i32 0, i32 5
  %32 = ptrtoint ptr %dccph_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i.i = load i8, ptr %dccph_x.i.i.i, align 2
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %33 = and i8 %bf.clear.i.i.i, 4
  %narrow.i.i.i = add nuw nsw i8 %33, 12
  %add.i.i.i = zext i8 %narrow.i.i.i to i32
  %add.ptr.i62 = getelementptr i8, ptr %add.ptr.i.i61, i32 %add.i.i.i
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %rcv_skb, i32 0, i32 3, i32 25
  %34 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dccpd_reset_code, align 1
  %dccph_reset_code = getelementptr inbounds %struct.dccp_hdr_reset, ptr %add.ptr.i62, i32 0, i32 1
  %36 = ptrtoint ptr %dccph_reset_code to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %dccph_reset_code, align 4
  %37 = load i8, ptr %dccpd_reset_code, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %37, label %if.end.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 5, label %if.end.sw.bb17_crit_edge
    i8 6, label %if.end.sw.bb17_crit_edge77
  ]

if.end.sw.bb17_crit_edge77:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

if.end.sw.bb17_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dccph_type13 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %dccph_type13 to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load14 = load i8, ptr %dccph_type13, align 2
  %bf.lshr = lshr i8 %bf.load14, 1
  %bf.clear15 = and i8 %bf.lshr, 15
  %dccph_reset_data = getelementptr inbounds %struct.dccp_hdr_reset, ptr %add.ptr.i62, i32 0, i32 2
  %40 = ptrtoint ptr %dccph_reset_data to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.clear15, ptr %dccph_reset_data, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end.sw.bb17_crit_edge, %if.end.sw.bb17_crit_edge77
  %dccph_reset_data18 = getelementptr inbounds %struct.dccp_hdr_reset, ptr %add.ptr.i62, i32 0, i32 2
  %dccpd_reset_data = getelementptr inbounds %struct.sk_buff, ptr %rcv_skb, i32 0, i32 3, i32 26
  %41 = call ptr @memcpy(ptr %dccph_reset_data18, ptr %dccpd_reset_data, i32 3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb, %if.end.sw.epilog_crit_edge
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %rcv_skb, i32 0, i32 3, i32 40
  %42 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %dccpd_ack_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842620, i64 %43)
  %cmp20.not = icmp eq i64 %43, 1125899906842620
  br i1 %cmp20.not, label %sw.epilog.if.end24_crit_edge, label %if.then22

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i64 %43, 1
  %add.ptr.i63 = getelementptr i8, ptr %add.ptr.i.i57, i32 12
  %dccph_seq2.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i57, i32 0, i32 6
  %44 = ptrtoint ptr %dccph_seq2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %dccph_seq2.i, align 1
  %shr.i = lshr i64 %add, 32
  %conv.i = trunc i64 %shr.i to i16
  %dccph_seq.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i57, i32 0, i32 7
  %45 = ptrtoint ptr %dccph_seq.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %dccph_seq.i, align 2
  %conv2.i = trunc i64 %add to i32
  %46 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv2.i, ptr %add.ptr.i63, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %sw.epilog.if.end24_crit_edge
  %47 = ptrtoint ptr %head.i.i54 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i54, align 8
  %49 = ptrtoint ptr %transport_header.i.i56 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %transport_header.i.i56, align 2
  %conv.i.i66 = zext i16 %50 to i32
  %add.ptr.i.i67 = getelementptr i8, ptr %48, i32 %conv.i.i66
  %dccph_x.i.i.i68 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i67, i32 0, i32 5
  %51 = ptrtoint ptr %dccph_x.i.i.i68 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i.i.i69 = load i8, ptr %dccph_x.i.i.i68, align 2
  %bf.clear.i.i.i70 = shl i8 %bf.load.i.i.i69, 2
  %52 = and i8 %bf.clear.i.i.i70, 4
  %narrow.i.i.i71 = add nuw nsw i8 %52, 12
  %add.i.i.i72 = zext i8 %narrow.i.i.i71 to i32
  %add.ptr.i73 = getelementptr i8, ptr %add.ptr.i.i67, i32 %add.i.i.i72
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %rcv_skb, i32 0, i32 3, i32 32
  %53 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dccpd_seq, align 8
  %55 = ptrtoint ptr %add.ptr.i73 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %add.ptr.i73, align 4
  %shr.i74 = lshr i64 %54, 32
  %conv.i75 = trunc i64 %shr.i74 to i16
  %dccph_ack_nr_high.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i73, i32 0, i32 1
  %56 = ptrtoint ptr %dccph_ack_nr_high.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i75, ptr %dccph_ack_nr_high.i, align 2
  %conv1.i = trunc i64 %54 to i32
  %dccph_ack_nr_low.i = getelementptr inbounds %struct.dccp_hdr_ack_bits, ptr %add.ptr.i73, i32 0, i32 2
  %57 = ptrtoint ptr %dccph_ack_nr_low.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv1.i, ptr %dccph_ack_nr_low.i, align 4
  %58 = load ptr, ptr %head.i.i54, align 8
  %59 = load i16, ptr %transport_header.i.i56, align 2
  %conv.i.i.i.i = zext i16 %59 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %58, i32 %conv.i.i.i.i
  %dccph_cscov.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %dccph_cscov.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i.i = load i8, ptr %dccph_cscov.i.i, align 1
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %cmp.i.i = icmp eq i8 %bf.clear.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %61 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i, align 4
  br label %dccp_csum_coverage.exit.i

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i76 = zext i8 %bf.clear.i.i to i32
  %dccph_doff.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %dccph_doff.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dccph_doff.i.i, align 2
  %conv2.i.i = zext i8 %64 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv.i.i76
  %sub.i.i = shl nuw nsw i32 %add.i.i, 2
  %mul.i.i = add nsw i32 %sub.i.i, -4
  br label %dccp_csum_coverage.exit.i

dccp_csum_coverage.exit.i:                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %62, %if.then.i.i ], [ %mul.i.i, %if.end.i.i ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %66)
  %cmp.not.i = icmp ult i32 %retval.0.i.i, %66
  br i1 %cmp.not.i, label %dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge, label %if.then.i

dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge: ; preds = %dccp_csum_coverage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_csum_outgoing.exit

if.then.i:                                        ; preds = %dccp_csum_coverage.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear.i = and i8 %bf.load.i.i, -16
  %67 = ptrtoint ptr %dccph_cscov.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %bf.clear.i, ptr %dccph_cscov.i.i, align 1
  br label %dccp_csum_outgoing.exit

dccp_csum_outgoing.exit:                          ; preds = %if.then.i, %dccp_csum_coverage.exit.i.dccp_csum_outgoing.exit_crit_edge
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i, align 4
  %70 = tail call i32 @llvm.umin.i32(i32 %retval.0.i.i, i32 %69) #9
  %call5.i = tail call i32 @skb_checksum(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef %70, i32 noundef 0) #9
  %71 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 5
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call5.i, ptr %71, align 8
  br label %cleanup

cleanup:                                          ; preds = %dccp_csum_outgoing.exit, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_send_reset(ptr noundef %sk, i32 noundef %code) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %0 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_af_ops, align 8
  %rebuild_header = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rebuild_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rebuild_header, align 4
  %call1 = tail call i32 %3(ptr noundef %sk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %max_header = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %max_header to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_header, align 4
  %call2 = tail call ptr @sock_wmalloc(ptr noundef %sk, i32 noundef %7, i32 noundef 1, i32 noundef 2592) #9
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_prot, align 8
  %max_header8 = getelementptr inbounds %struct.proto, ptr %9, i32 0, i32 40
  %10 = ptrtoint ptr %max_header8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_header8, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 19
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %11
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %15, i32 %11
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 24
  %16 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 112
  store i8 %bf.set, ptr %dccpd_type, align 8
  %conv = trunc i32 %code to i8
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3, i32 25
  %17 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %dccpd_reset_code, align 1
  %call11 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef nonnull %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_connect(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_dst_cache.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %sk_dst_cache.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sk_dst_cache.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 3
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lockdep_sock_is_held.exit.i, label %entry.__sk_dst_get.exit_crit_edge

entry.__sk_dst_get.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

lockdep_sock_is_held.exit.i:                      ; preds = %entry
  %dep_map2.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool4.i.not.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool4.i.not.i, label %lor.lhs.false.i, label %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge

lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

lor.lhs.false.i:                                  ; preds = %lockdep_sock_is_held.exit.i
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__sk_dst_get.exit_crit_edge

lor.lhs.false.i.__sk_dst_get.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__sk_dst_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__sk_dst_get.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b11.i = load i1, ptr @__sk_dst_get.__warned, align 1
  br i1 %.b11.i, label %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__sk_dst_get.exit_crit_edge:     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sk_dst_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 2068, ptr noundef nonnull @.str.1) #9
  br label %__sk_dst_get.exit

__sk_dst_get.exit:                                ; preds = %if.then.i, %land.lhs.true5.i.__sk_dst_get.exit_crit_edge, %land.lhs.true.i.__sk_dst_get.exit_crit_edge, %lor.lhs.false.i.__sk_dst_get.exit_crit_edge, %lockdep_sock_is_held.exit.i.__sk_dst_get.exit_crit_edge, %entry.__sk_dst_get.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %2 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sk_err, align 4
  %3 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, -3
  store i32 %and.i.i, ptr %3, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %9(ptr noundef %1) #9
  %dccps_hc_tx_ccid.i.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %10 = ptrtoint ptr %dccps_hc_tx_ccid.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dccps_hc_tx_ccid.i.i, align 4
  %cmp.i.i = icmp eq ptr %11, null
  br i1 %cmp.i.i, label %__sk_dst_get.exit.dccp_determine_ccmps.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

__sk_dst_get.exit.dccp_determine_ccmps.exit.thread.i_crit_edge: ; preds = %__sk_dst_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_determine_ccmps.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %__sk_dst_get.exit
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %cmp1.i.i = icmp eq ptr %13, null
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.dccp_determine_ccmps.exit.thread.i_crit_edge, label %dccp_determine_ccmps.exit.i

lor.lhs.false.i.i.dccp_determine_ccmps.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_determine_ccmps.exit.thread.i

dccp_determine_ccmps.exit.i:                      ; preds = %lor.lhs.false.i.i
  %ccid_ccmps.i.i = getelementptr inbounds %struct.ccid_operations, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ccid_ccmps.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ccid_ccmps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i84 = icmp eq i32 %15, 0
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 %call.i) #9
  br i1 %tobool.not.i84, label %dccp_determine_ccmps.exit.i.dccp_determine_ccmps.exit.thread.i_crit_edge, label %dccp_determine_ccmps.exit.i.dccp_sync_mss.exit_crit_edge

dccp_determine_ccmps.exit.i.dccp_sync_mss.exit_crit_edge: ; preds = %dccp_determine_ccmps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_sync_mss.exit

dccp_determine_ccmps.exit.i.dccp_determine_ccmps.exit.thread.i_crit_edge: ; preds = %dccp_determine_ccmps.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_determine_ccmps.exit.thread.i

dccp_determine_ccmps.exit.thread.i:               ; preds = %dccp_determine_ccmps.exit.i.dccp_determine_ccmps.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dccp_determine_ccmps.exit.thread.i_crit_edge, %__sk_dst_get.exit.dccp_determine_ccmps.exit.thread.i_crit_edge
  br label %dccp_sync_mss.exit

dccp_sync_mss.exit:                               ; preds = %dccp_determine_ccmps.exit.thread.i, %dccp_determine_ccmps.exit.i.dccp_sync_mss.exit_crit_edge
  %17 = phi i32 [ %call.i, %dccp_determine_ccmps.exit.thread.i ], [ %16, %dccp_determine_ccmps.exit.i.dccp_sync_mss.exit_crit_edge ]
  %icsk_af_ops.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %18 = ptrtoint ptr %icsk_af_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %icsk_af_ops.i, align 8
  %net_header_len.i = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %net_header_len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %net_header_len.i, align 4
  %conv.i = zext i16 %21 to i32
  %icsk_ext_hdr_len.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 23
  %22 = ptrtoint ptr %icsk_ext_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %icsk_ext_hdr_len.i, align 2
  %conv7.i = zext i16 %23 to i32
  %dccps_send_ndp_count.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %24 = ptrtoint ptr %dccps_send_ndp_count.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %bf.load.i = load i64, ptr %dccps_send_ndp_count.i, align 8
  %25 = trunc i64 %bf.load.i to i32
  %26 = lshr i32 %25, 4
  %mul.i = and i32 %26, 8
  %dccps_hc_rx_ackvec.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %27 = ptrtoint ptr %dccps_hc_rx_ackvec.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dccps_hc_rx_ackvec.i, align 4
  %tobool14.not.i = icmp eq ptr %28, null
  %cond15.i = select i1 %tobool14.not.i, i32 0, i32 16
  %add16.i = add nuw nsw i32 %mul.i, 26
  %add18.i = add nuw nsw i32 %add16.i, %cond15.i
  %div37.i = and i32 %add18.i, 120
  %.neg = add i32 %17, -16
  %29 = add nuw nsw i32 %conv.i, %conv7.i
  %30 = add nuw nsw i32 %29, %div37.i
  %sub20.i = sub i32 %.neg, %30
  %icsk_pmtu_cookie.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %31 = ptrtoint ptr %icsk_pmtu_cookie.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i, ptr %icsk_pmtu_cookie.i, align 8
  %dccps_mss_cache.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 12
  %32 = ptrtoint ptr %dccps_mss_cache.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub20.i, ptr %dccps_mss_cache.i, align 4
  %call6 = tail call i32 @dccp_feat_finalise_settings(ptr noundef %sk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %dccp_sync_mss.exit.cleanup_crit_edge

dccp_sync_mss.exit.cleanup_crit_edge:             ; preds = %dccp_sync_mss.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dccp_sync_mss.exit
  %dccps_iss = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 5
  %33 = ptrtoint ptr %dccps_iss to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %dccps_iss, align 8
  %dccps_gar = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 10
  %35 = ptrtoint ptr %dccps_gar to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %dccps_gar, align 8
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %36 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skc_prot, align 8
  %max_header = getelementptr inbounds %struct.proto, ptr %37, i32 0, i32 40
  %38 = ptrtoint ptr %max_header to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_header, align 4
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %40 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_allocation, align 8
  %call.i85 = tail call ptr @__alloc_skb(i32 noundef %39, i32 noundef %41, i32 noundef 0, i32 noundef -1) #9
  %cmp = icmp eq ptr %call.i85, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11, !prof !85

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %42 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skc_prot, align 8
  %max_header14 = getelementptr inbounds %struct.proto, ptr %43, i32 0, i32 40
  %44 = ptrtoint ptr %max_header14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_header14, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i85, i32 0, i32 19
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 %45
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i85, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %49, i32 %45
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %call.i85, i32 0, i32 3, i32 24
  %50 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.clear = and i8 %bf.load, 15
  store i8 %bf.clear, ptr %dccpd_type, align 8
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i85, ptr noundef %sk) #9
  %51 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 25
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %tobool.not.i86 = icmp eq ptr %53, null
  br i1 %tobool.not.i86, label %if.end11.dccp_skb_entail.exit_crit_edge, label %do.end.i, !prof !83

if.end11.dccp_skb_entail.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_skb_entail.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef null) #9
  br label %dccp_skb_entail.exit

dccp_skb_entail.exit:                             ; preds = %do.end.i, %if.end11.dccp_skb_entail.exit_crit_edge
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i85, ptr %51, align 4
  %55 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i87 = and i32 %58, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i87)
  %tobool.not.i.i88 = icmp eq i32 %and.i.i87, 0
  %cond.i.i = select i1 %tobool.not.i.i88, i32 3264, i32 2592
  %call20.i = tail call ptr @skb_clone(ptr noundef nonnull %call.i85, i32 noundef %cond.i.i) #9
  %call16 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef %call20.i)
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %60 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx30 = getelementptr [15 x i32], ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx30 to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx33, align 4
  %add = add i32 %67, %61
  %68 = inttoptr i32 %add to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add34 = add i32 %70, 1
  store i32 %add34, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !87
  %and.i.i89 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool45.not = icmp eq i32 %and.i.i89, 0
  br i1 %tobool45.not, label %if.then54, label %dccp_skb_entail.exit.do.end57_crit_edge, !prof !85

dccp_skb_entail.exit.do.end57_crit_edge:          ; preds = %dccp_skb_entail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

if.then54:                                        ; preds = %dccp_skb_entail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %dccp_skb_entail.exit.do.end57_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #9, !srcloc !88
  %icsk_retransmits = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 18
  %72 = ptrtoint ptr %icsk_retransmits to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %icsk_retransmits, align 1
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %73 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %icsk_rto, align 4
  tail call fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef 1, i32 noundef %74, i32 noundef 6400)
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %if.end.cleanup_crit_edge, %dccp_sync_mss.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end57 ], [ -71, %dccp_sync_mss.exit.cleanup_crit_edge ], [ -105, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_finalise_settings(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inet_csk_reset_xmit_timer(ptr noundef %sk, i32 noundef %what, i32 noundef %when, i32 noundef %max_when) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6400, i32 %when)
  %cmp = icmp ugt i32 %when, 6400
  br i1 %cmp, label %do.body, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inet_csk_reset_xmit_timer, %__here)) #9
          to label %if.end6 [label %__here], !srcloc !92

__here:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.26, ptr noundef %sk, i32 noundef %what, i32 noundef %when, ptr noundef blockaddress(@inet_csk_reset_xmit_timer, %__here)) #9
  br label %if.end6

if.end6:                                          ; preds = %__here, %do.body, %entry.if.end6_crit_edge
  %when.addr.0 = phi i32 [ %when, %entry.if.end6_crit_edge ], [ 6400, %__here ], [ 6400, %do.body ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %what)
  %cmp7 = icmp eq i32 %what, 1
  br i1 %cmp7, label %if.then13, label %if.then17

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_pending = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %0 = ptrtoint ptr %icsk_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %icsk_pending, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, %when.addr.0
  %icsk_timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %icsk_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %icsk_timeout, align 8
  %icsk_retransmit_timer = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_retransmit_timer, i32 noundef %add) #9
  br label %if.end42

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ack = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %3 = ptrtoint ptr %icsk_ack to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %icsk_ack, align 4
  %5 = or i8 %4, 2
  store i8 %5, ptr %icsk_ack, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add20 = add i32 %6, %when.addr.0
  %timeout = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 5
  %7 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add20, ptr %timeout, align 4
  %icsk_delack_timer = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_delack_timer, i32 noundef %add20) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then17, %if.then13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_send_ack(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp.not = icmp eq i8 %1, 7
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %2 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_prot, align 8
  %max_header = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %max_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_header, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %5, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %6 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %icsk_ack.i, align 4
  %ato = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 4
  %8 = ptrtoint ptr %ato to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %ato, align 4
  %9 = or i8 %7, 3
  store i8 %9, ptr %icsk_ack.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add20.i = add i32 %10, 20
  %timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 5
  %11 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add20.i, ptr %timeout.i, align 4
  %icsk_delack_timer.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 5
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_delack_timer.i, i32 noundef %add20.i) #9
  br label %if.end11

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skc_prot, align 8
  %max_header9 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 40
  %14 = ptrtoint ptr %max_header9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_header9, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %15
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 %15
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 24
  %20 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 48
  store i8 %bf.set, ptr %dccpd_type, align 8
  %call10 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef nonnull %call.i)
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then5, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_send_sync(ptr noundef %sk, i64 noundef %ackno, i32 noundef %pkt_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %max_header = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %max_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_header, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %3, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call ptr @dccp_packet_name(i32 noundef %pkt_type) #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %call1, ptr noundef nonnull @.str, i32 noundef 651, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %max_header5 = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %max_header5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_header5, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %conv = trunc i32 %pkt_type to i8
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %dccpd_type, align 8
  %bf.shl = shl i8 %conv, 4
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %dccpd_type, align 8
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 40
  %13 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %ackno, ptr %dccpd_ack_seq, align 8
  %dccps_sync_scheduled = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %14 = ptrtoint ptr %dccps_sync_scheduled to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load9 = load i8, ptr %dccps_sync_scheduled, align 8
  %bf.clear10 = and i8 %bf.load9, -5
  store i8 %bf.clear10, ptr %dccps_sync_scheduled, align 8
  %call12 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_packet_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_send_close(ptr noundef %sk, i32 noundef %active) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_prot, align 8
  %max_header = getelementptr inbounds %struct.proto, ptr %1, i32 0, i32 40
  %2 = ptrtoint ptr %max_header to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_header, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %3, i32 noundef %cond, i32 noundef 0, i32 noundef -1) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_prot, align 8
  %max_header4 = getelementptr inbounds %struct.proto, ptr %5, i32 0, i32 40
  %6 = ptrtoint ptr %max_header4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_header4, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %7
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %12 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %dccps_role, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load)
  %cmp5 = icmp ugt i8 %bf.load, -65
  %13 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %or.cond = and i1 %cmp5, %tobool8.not
  %dccpd_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 24
  %14 = ptrtoint ptr %dccpd_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load10 = load i8, ptr %dccpd_type, align 8
  %bf.clear11 = and i8 %bf.load10, 15
  %. = select i1 %or.cond, i8 80, i8 96
  %bf.set17 = or i8 %bf.clear11, %.
  store i8 %bf.set17, ptr %dccpd_type, align 8
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then20

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef %sk) #9
  %15 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 25
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then20.dccp_skb_entail.exit_crit_edge, label %do.end.i, !prof !83

if.then20.dccp_skb_entail.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %dccp_skb_entail.exit

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef null) #9
  br label %dccp_skb_entail.exit

dccp_skb_entail.exit:                             ; preds = %do.end.i, %if.then20.dccp_skb_entail.exit_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %15, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !70) #9
  %and.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %22, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 3264, i32 2592
  %call20.i = tail call ptr @skb_clone(ptr noundef nonnull %call.i, i32 noundef %cond.i.i) #9
  %icsk_pending.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %23 = ptrtoint ptr %icsk_pending.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %icsk_pending.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %24, 300
  %icsk_timeout.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 3
  %25 = ptrtoint ptr %icsk_timeout.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %icsk_timeout.i, align 8
  %icsk_retransmit_timer.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 4
  tail call void @sk_reset_timer(ptr noundef %sk, ptr noundef %icsk_retransmit_timer.i, i32 noundef %add.i) #9
  br label %if.end22

if.end22:                                         ; preds = %dccp_skb_entail.exit, %if.end.if.end22_crit_edge
  %skb.0 = phi ptr [ %call20.i, %dccp_skb_entail.exit ], [ %call.i, %if.end.if.end22_crit_edge ]
  %call23 = tail call fastcc i32 @dccp_transmit_skb(ptr noundef %sk, ptr noundef %skb.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_qpolicy_pop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_feat_list_purge(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_insert_options(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !60, !62, !64, !66, !67, !68}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__ksymtab_dccp_sync_mss, !1, !"__ksymtab_dccp_sync_mss", i1 false, i1 false}
!1 = !{!"../net/dccp/output.c", i32 195, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/dccp/output.c", i32 202, i32 7}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/dccp/output.c", i32 327, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dccp_flush_write_queue._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dccp_flush_write_queue._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/dccp/output.c", i32 345, i32 4}
!13 = !{ptr @dccp_flush_write_queue._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @dccp_flush_write_queue._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/dccp/output.c", i32 370, i32 4}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dccp_write_xmit._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dccp_write_xmit._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_dccp_make_response, !21, !"__ksymtab_dccp_make_response", i1 false, i1 false}
!21 = !{!"../net/dccp/output.c", i32 459, i32 1}
!22 = !{ptr @__ksymtab_dccp_ctl_make_reset, !23, !"__ksymtab_dccp_ctl_make_reset", i1 false, i1 false}
!23 = !{!"../net/dccp/output.c", i32 511, i32 1}
!24 = !{ptr @__ksymtab_dccp_connect, !25, !"__ksymtab_dccp_connect", i1 false, i1 false}
!25 = !{!"../net/dccp/output.c", i32 579, i32 1}
!26 = !{ptr @__ksymtab_dccp_send_ack, !27, !"__ksymtab_dccp_send_ack", i1 false, i1 false}
!27 = !{!"../net/dccp/output.c", i32 604, i32 1}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/dccp/output.c", i32 651, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dccp_send_sync._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @dccp_send_sync._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_dccp_send_sync, !34, !"__ksymtab_dccp_send_sync", i1 false, i1 false}
!34 = !{!"../net/dccp/output.c", i32 669, i32 1}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/net/sock.h", i32 2444, i32 19}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/dccp/output.c", i32 265, i32 4}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @dccp_xmit_packet._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @dccp_xmit_packet._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/dccp/output.c", i32 283, i32 3}
!52 = !{ptr @dccp_xmit_packet._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dccp_xmit_packet._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/net/inet_connection_sock.h", i32 209, i32 3}
!56 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !55, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/net/dst.h", i32 231, i32 2}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/net/sock.h", i32 2067, i32 9}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/net/inet_connection_sock.h", i32 223, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @inet_csk_reset_xmit_timer.__UNIQUE_ID_ddebug462, !65, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!68 = distinct !{null, !69, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!69 = !{!"../include/net/inet_connection_sock.h", i32 238, i32 3}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2149374550}
!81 = !{i64 2149468274}
!82 = !{i64 2149374816}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 1, i32 2000}
!86 = !{i64 690730, i64 690791}
!87 = !{i64 693462}
!88 = !{i64 693747}
!89 = !{i64 2148297668}
!90 = !{i64 782491, i64 782516, i64 782538, i64 782554, i64 782566, i64 782586, i64 782610, i64 782626, i64 782638}
!91 = !{i64 2148297856}
!92 = !{i64 2148780064, i64 2148780069, i64 2148780082, i64 2148780126, i64 2148780160, i64 2148780181}
