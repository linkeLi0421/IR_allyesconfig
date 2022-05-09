; ModuleID = '/llk/IR_all_yes/security/apparmor/net.c_pt.bc'
source_filename = "../security/apparmor/net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aa_sfs_entry = type { ptr, ptr, i16, i32, %union.anon.149, ptr }
%union.anon.149 = type { ptr }
%union.anon.155 = type { ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.common_audit_data = type { i8, %union.anon.150, %union.anon.155 }
%union.anon.150 = type { %struct.path }
%struct.path = type { ptr, ptr }
%struct.lsm_network_audit = type { i32, ptr, i16, i16, i16, %union.anon.151 }
%union.anon.151 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.apparmor_audit_data = type { i32, i32, ptr, ptr, ptr, ptr, i32, i32, %union.anon.156 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { ptr, %union.anon.158 }
%union.anon.158 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, i32, ptr, ptr, i32 }
%struct.aa_label = type { %struct.kref, %struct.rb_node, %struct.callback_head, ptr, ptr, i32, i32, i32, [0 x ptr] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.aa_profile = type { %struct.aa_policy, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, %struct.aa_policydb, %struct.aa_file_rules, %struct.aa_caps, i32, ptr, %struct.aa_rlimit, i32, ptr, ptr, ptr, ptr, [9 x ptr], ptr, %struct.aa_label }
%struct.aa_policy = type { ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.aa_policydb = type { ptr, [17 x i32] }
%struct.aa_file_rules = type { i32, ptr, %struct.aa_domain }
%struct.aa_domain = type { i32, ptr }
%struct.aa_caps = type { %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.aa_rlimit = type { i32, [16 x %struct.rlimit] }
%struct.rlimit = type { i32, i32 }
%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.43 }
%struct.llist_node = type { ptr }
%union.anon.43 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.111 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%struct.kgid_t = type { i32 }
%union.anon.30 = type { %struct.callback_head }
%struct.aa_proxy = type { %struct.kref, ptr }
%struct.sock_common = type { %union.anon.50, %union.anon.52, %union.anon.53, i16, i8, i8, i32, %union.anon.55, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.82, [0 x i32], %union.anon.83, i16, i16, %union.anon.84, %struct.refcount_struct, [0 x i32], %union.anon.85 }
%union.anon.50 = type { i64 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.55 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { %struct.hlist_node }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.90, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.91, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.92, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.90 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.91 = type { ptr }
%union.anon.92 = type { ptr }
%struct.sk_buff_head = type { %union.anon.88, i32, %struct.spinlock }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.aa_secmark = type { i8, i8, i32, ptr }
%struct.aa_ns = type { %struct.aa_policy, ptr, %struct.mutex, %struct.aa_ns_acct, ptr, %struct.list_head, %struct.atomic_t, i32, i32, i32, %struct.wait_queue_head, %struct.aa_labelset, %struct.list_head, [13 x ptr] }
%struct.aa_ns_acct = type { i32, i32, i32, i32 }
%struct.aa_labelset = type { %struct.rwlock_t, %struct.rb_root }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"af_mask\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [262 x i8], [90 x i8] } { [262 x i8] c"unspec unix inet ax25 ipx appletalk netrom bridge atmpvc x25 inet6 rose netbeui security key netlink packet ash econet atmsvc rds sna irda pppox wanpipe llc ib mpls can tipc bluetooth iucv rxrpc isdn phonet ieee802154 caif alg nfc vsock kcm qipcrtr smc xdp mctp\00", [90 x i8] zeroinitializer }, align 32
@aa_sfs_seq_file_ops = external dso_local constant %struct.file_operations, align 4
@aa_sfs_entry_network = dso_local global { [2 x %struct.aa_sfs_entry], [48 x i8] } { [2 x %struct.aa_sfs_entry] [%struct.aa_sfs_entry { ptr @.str, ptr null, i16 292, i32 1, %union.anon.149 { ptr @.str.1 }, ptr @aa_sfs_seq_file_ops }, %struct.aa_sfs_entry zeroinitializer], [48 x i8] zeroinitializer }, align 32
@address_family_names = internal constant { [46 x ptr], [40 x i8] } { [46 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" family=\22%s\22\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" family=\22unknown(%d)\22\00", [42 x i8] zeroinitializer }, align 32
@sock_type_names = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr null, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr null, ptr @.str.34], [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" sock_type=\22%s\22\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" sock_type=\22unknown(%d)\22\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" protocol=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" requested_mask=\00", [47 x i8] zeroinitializer }, align 32
@net_mask_names = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.69, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.69, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.69, ptr @.str.69, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.69, ptr @.str.88, ptr @.str.89, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69, ptr @.str.69], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" denied_mask=\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" peer=\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"security/apparmor/net.c\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AppArmor WARN %s: ((family >= 46)): \00", [59 x i8] zeroinitializer }, align 32
@__func__.aa_profile_af_perm = private unnamed_addr constant [19 x i8] c"aa_profile_af_perm\00", align 1
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"AppArmor WARN %s: ((type < 0 || type >= (SOCK_PACKET + 1))): \00", [34 x i8] zeroinitializer }, align 32
@__const.aa_af_perm.sa = private unnamed_addr constant { i8, [3 x i8], { ptr, [4 x i8] }, %union.anon.155 } { i8 7, [3 x i8] zeroinitializer, { ptr, [4 x i8] } { ptr null, [4 x i8] c"\FF\FF\FF\FF" }, %union.anon.155 zeroinitializer }, align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AppArmor WARN %s: ((!sk)): \00", [36 x i8] zeroinitializer }, align 32
@__func__.aa_sk_perm = private unnamed_addr constant [11 x i8] c"aa_sk_perm\00", align 1
@.str.14 = internal constant { [200 x i8], [56 x i8] } { [200 x i8] c"AppArmor WARN %s: (((((preempt_count() & (((1UL << (4))-1) << (((0 + 8) + 8) + 4))) | (preempt_count() & (((1UL << (4))-1) << ((0 + 8) + 8))) | (preempt_count() & (((1UL << (8))-1) << (0 + 8))))))): \00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AppArmor WARN %s: ((!label)): \00", [33 x i8] zeroinitializer }, align 32
@__func__.aa_sock_file_perm = private unnamed_addr constant [18 x i8] c"aa_sock_file_perm\00", align 1
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!sock)): \00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!sock->sk)): \00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unspec\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unix\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inet\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ax25\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipx\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"appletalk\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"netrom\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atmpvc\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"x25\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inet6\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rose\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"netbeui\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"security\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"netlink\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"packet\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ash\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"econet\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atmsvc\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sna\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irda\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pppox\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wanpipe\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"llc\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ib\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpls\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"can\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tipc\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bluetooth\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iucv\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxrpc\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isdn\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phonet\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ieee802154\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caif\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"alg\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfc\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsock\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kcm\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qipcrtr\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smc\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xdp\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mctp\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stream\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dgram\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rdm\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"seqpacket\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dccp\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"send\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"receive\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"connect\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setattr\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getattr\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"setcred\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"getcred\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chmod\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chown\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chgrp\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmap\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mprot\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"accept\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bind\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"listen\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"setopt\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"getopt\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/apparmor/include/cred.h\00", [63 x i8] zeroinitializer }, align 32
@__func__.aa_cred_raw_label = private unnamed_addr constant [18 x i8] c"aa_cred_raw_label\00", align 1
@apparmor_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AppArmor WARN %s: ((!blob)): \00", [34 x i8] zeroinitializer }, align 32
@__func__.cred_label = private unnamed_addr constant [11 x i8] c"cred_label\00", align 1
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"security/apparmor/include/label.h\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AppArmor WARN %s: ((!l->proxy)): \00", [62 x i8] zeroinitializer }, align 32
@__func__.aa_get_newest_label = private unnamed_addr constant [20 x i8] c"aa_get_newest_label\00", align 1
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AppArmor WARN %s: ((!l->proxy->label)): \00", [55 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AppArmor WARN %s: ((!tmp)): \00", [35 x i8] zeroinitializer }, align 32
@aa_get_label_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.97 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__func__.aa_label_sk_perm = private unnamed_addr constant [17 x i8] c"aa_label_sk_perm\00", align 1
@root_ns = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 23, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"aa_sfs_entry_network\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 22, i32 21 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"address_family_names\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 1, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 76, i32 24 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 79, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"sock_type_names\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 49, i32 20 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 82, i32 24 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 85, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 87, i32 23 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 90, i32 24 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"net_mask_names\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 27, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 95, i32 25 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 101, i32 24 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 115, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 116, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 169, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 170, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 184, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 185, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 186, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 2, i32 7 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 3, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 4, i32 7 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 5, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 6, i32 7 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 7, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 8, i32 7 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 9, i32 7 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 10, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 11, i32 7 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 12, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 13, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 14, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 15, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 16, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 17, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 18, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 19, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 20, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 21, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 22, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 23, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 24, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 25, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 26, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 27, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 28, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 29, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 30, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 31, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 32, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 33, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 34, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 35, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 36, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 37, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 38, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 39, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 40, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 41, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 42, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 43, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 44, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 45, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 46, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 50, i32 7 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 51, i32 7 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 52, i32 7 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 53, i32 7 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 54, i32 7 }
@___asan_gen_.317 = private unnamed_addr constant [32 x i8] c"./security/apparmor/net_names.h\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 55, i32 7 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 28, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 29, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 30, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 33, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 34, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 35, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 38, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 39, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 40, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 41, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 43, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 44, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 45, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 46, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 48, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 49, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 53, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 54, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 55, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 58, i32 2 }
@___asan_gen_.380 = private constant [27 x i8] c"../security/apparmor/net.c\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 59, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 164, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [36 x i8] c"../security/apparmor/include/cred.h\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 26, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 424, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 425, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 431, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [37 x i8] c"../security/apparmor/include/label.h\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 401, i32 7 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 695, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 723, i32 2 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @.str, ptr @.str.1, ptr @aa_sfs_entry_network, ptr @address_family_names, ptr @.str.2, ptr @.str.3, ptr @sock_type_names, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @net_mask_names, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 262, i32 352, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aa_sfs_entry_network to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @address_family_names to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sock_type_names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_mask_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @audit_net_cb(ptr noundef %ab, ptr nocapture noundef readonly %va) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %family = getelementptr inbounds %struct.lsm_network_audit, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %family, align 4
  %idxprom = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %3)
  %tobool.not = icmp eq i16 %3, 12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [46 x ptr], ptr @address_family_names, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.2, ptr noundef %5) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.3, i32 noundef %idxprom) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = getelementptr inbounds %struct.common_audit_data, ptr %va, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.apparmor_audit_data, ptr %8, i32 0, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = and i32 %11, 1073741823
  %13 = lshr i32 897, %12
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not.not = icmp eq i32 %14, 0
  br i1 %tobool8.not.not, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7 = getelementptr [11 x ptr], ptr @sock_type_names, i32 0, i32 %11
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.4, ptr noundef %16) #7
  br label %if.end14

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.5, i32 noundef %11) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then9
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %protocol = getelementptr inbounds %struct.apparmor_audit_data, ptr %18, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %protocol, align 4
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.6, i32 noundef %20) #7
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %request = getelementptr inbounds %struct.apparmor_audit_data, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %request, align 4
  %and = and i32 %24, 57672566
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.if.end23_crit_edge, label %if.then16

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then16:                                        ; preds = %if.end14
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.7) #7
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %6, align 4
  %request17 = getelementptr inbounds %struct.apparmor_audit_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %request17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %request17, align 4
  tail call void @aa_audit_perm_mask(ptr noundef %ab, i32 noundef %28, ptr noundef null, i32 noundef 0, ptr noundef nonnull @net_mask_names, i32 noundef 57672566) #7
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %6, align 4
  %denied = getelementptr inbounds %struct.apparmor_audit_data, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %denied to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %denied, align 4
  %and18 = and i32 %32, 57672566
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then16.if.end23_crit_edge, label %if.then20

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.8) #7
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %6, align 4
  %denied21 = getelementptr inbounds %struct.apparmor_audit_data, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %denied21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %denied21, align 4
  tail call void @aa_audit_perm_mask(ptr noundef %ab, i32 noundef %36, ptr noundef null, i32 noundef 0, ptr noundef nonnull @net_mask_names, i32 noundef 57672566) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then16.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.apparmor_audit_data, ptr %38, i32 0, i32 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool24.not = icmp eq ptr %41, null
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %ab, ptr noundef nonnull @.str.9) #7
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %6, align 4
  %label = getelementptr inbounds %struct.apparmor_audit_data, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %label, align 4
  %vec = getelementptr inbounds %struct.aa_label, ptr %45, i32 0, i32 8
  %size = getelementptr inbounds %struct.aa_label, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 4
  %sub = add i32 %47, -1
  %arrayidx28 = getelementptr ptr, ptr %vec, i32 %sub
  %48 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx28, align 4
  %ns = getelementptr inbounds %struct.aa_profile, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ns, align 4
  %52 = getelementptr inbounds %struct.apparmor_audit_data, ptr %43, i32 0, i32 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  tail call void @aa_label_xaudit(ptr noundef %ab, ptr noundef %51, ptr noundef %54, i32 noundef 0, i32 noundef 2592) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end23.if.end30_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_audit_perm_mask(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_xaudit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_profile_af_perm(ptr noundef %profile, ptr noundef %sa, i32 noundef %request, i16 noundef zeroext %family, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %perms = alloca %struct.aa_perms, align 4
  %buffer = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms) #7
  %0 = call ptr @memset(ptr %perms, i32 0, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #7
  %1 = getelementptr inbounds [2 x i16], ptr %buffer, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %family)
  %cmp = icmp ugt i16 %family, 45
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 115, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.aa_profile_af_perm) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %2 = icmp ugt i32 %type, 10
  br i1 %2, label %do.end44, label %if.end.if.end50_crit_edge, !prof !228

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.aa_profile_af_perm) #7
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %mode = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 8
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp60 = icmp eq i32 %4, 3
  br i1 %cmp60, label %if.end50.cleanup_crit_edge, label %if.end63

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end50
  %arrayidx.i = getelementptr %struct.aa_profile, ptr %profile, i32 0, i32 12, i32 1, i32 14
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool64.not = icmp eq i32 %6, 0
  br i1 %tobool64.not, label %if.end63.cleanup_crit_edge, label %if.end66

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %family, ptr %buffer, align 2
  %conv67 = trunc i32 %type to i16
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv67, ptr %1, align 2
  %policy = getelementptr inbounds %struct.aa_profile, ptr %profile, i32 0, i32 12
  %9 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %policy, align 4
  %call69 = call i32 @aa_dfa_match_len(ptr noundef %10, i32 noundef %6, ptr noundef nonnull %buffer, i32 noundef 4) #7
  %11 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %policy, align 4
  call void @aa_compute_perms(ptr noundef %12, i32 noundef %call69, ptr noundef nonnull %perms) #7
  call void @aa_apply_modes_to_perms(ptr noundef %profile, ptr noundef nonnull %perms) #7
  %call72 = call i32 @aa_check_perms(ptr noundef %profile, ptr noundef nonnull %perms, i32 noundef %request, ptr noundef %sa, ptr noundef nonnull @audit_net_cb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end63.cleanup_crit_edge, %if.end50.cleanup_crit_edge
  %retval.0 = phi i32 [ %call72, %if.end66 ], [ 0, %if.end50.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_dfa_match_len(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_compute_perms(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_apply_modes_to_perms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_check_perms(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_af_perm(ptr noundef %label, ptr noundef %op, i32 noundef %request, i16 noundef zeroext %family, i32 noundef %type, i32 noundef %protocol) local_unnamed_addr #0 align 64 {
entry:
  %sa_net = alloca %struct.lsm_network_audit, align 4
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sa_net) #7
  %0 = call ptr @memset(ptr %sa_net, i32 0, i32 48)
  %family1 = getelementptr inbounds %struct.lsm_network_audit, ptr %sa_net, i32 0, i32 2
  %1 = ptrtoint ptr %family1 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %family, ptr %family1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #7
  %2 = call ptr @memset(ptr %sa_aad, i32 0, i32 56)
  %op3 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 2
  %3 = ptrtoint ptr %op3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %op, ptr %op3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #7
  %4 = call ptr @memcpy(ptr %sa, ptr @__const.aa_af_perm.sa, i32 12)
  %5 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sa_aad, ptr %5, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 1
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sa_net, ptr %u, align 4
  %8 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %8, align 4
  %protocol7 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %protocol7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %protocol, ptr %protocol7, align 4
  %call = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #7
  %arrayidx21 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx21, align 4
  %tobool.not22 = icmp eq ptr %12, null
  br i1 %tobool.not22, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %13 = phi ptr [ %15, %do.body.do.body_crit_edge ], [ %12, %entry.do.body_crit_edge ]
  %__E.024 = phi i32 [ %spec.select, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %i.sroa.0.023 = phi i32 [ %call13, %do.body.do.body_crit_edge ], [ %call, %entry.do.body_crit_edge ]
  %call10 = call i32 @aa_profile_af_perm(ptr noundef nonnull %13, ptr noundef nonnull %sa, i32 noundef %request, i16 noundef zeroext %family, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool11.not, i32 %__E.024, i32 %call10
  %add = add i32 %i.sroa.0.023, 1
  %call13 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #7
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %do.body.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sa_net) #7
  ret i32 %__E.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_label_next_confined(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_sk_perm(ptr noundef %op, i32 noundef %request, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.aa_sk_perm) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i69 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i69 to ptr
  %preempt_count.i70 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i70 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i70, align 4
  %and27 = and i32 %7, 983040
  %or = or i32 %and27, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i71 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i71 to ptr
  %preempt_count.i72 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i72 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i72, align 4
  %and29 = and i32 %11, 65280
  %or30 = or i32 %or, %and29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30)
  %tobool31.not = icmp eq i32 %or30, 0
  br i1 %tobool31.not, label %if.end.if.end53_crit_edge, label %do.end47, !prof !229

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

do.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 170, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.aa_sk_perm) #7
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.end.if.end53_crit_edge
  %12 = tail call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 99
  %16 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cred.i.i, align 16
  %security.i.i.i.i = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %security.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %security.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %20 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.i, label %if.end53.cred_label.exit.i.i.i_crit_edge, !prof !228

if.end53.cred_label.exit.i.i.i_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cred_label.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.cred_label) #7
  br label %cred_label.exit.i.i.i

cred_label.exit.i.i.i:                            ; preds = %do.end.i.i.i.i, %if.end53.cred_label.exit.i.i.i_crit_edge
  %21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge, !prof !228

cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge: ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_current_raw_label.exit.i

do.end.i.i.i:                                     ; preds = %cred_label.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.aa_cred_raw_label) #7
  br label %aa_current_raw_label.exit.i

aa_current_raw_label.exit.i:                      ; preds = %do.end.i.i.i, %cred_label.exit.i.i.i.aa_current_raw_label.exit.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.90, i32 noundef 164) #7
  %flags.i = getelementptr inbounds %struct.aa_label, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %aa_current_raw_label.exit.i.begin_current_label_crit_section.exit_crit_edge, label %if.then.i

aa_current_raw_label.exit.i.begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %begin_current_label_crit_section.exit

if.then.i:                                        ; preds = %aa_current_raw_label.exit.i
  br i1 %tobool.not.i.i.i, label %if.then.i.aa_get_newest_label.exit.i_crit_edge, label %if.then2.i.i

if.then.i.aa_get_newest_label.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_get_newest_label.exit.i

if.then2.i.i:                                     ; preds = %if.then.i
  %proxy.i.i = getelementptr inbounds %struct.aa_label, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proxy.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %if.then2.i.i.if.end20.i.i_crit_edge, !prof !228

if.then2.i.i.if.end20.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 424, i32 noundef 9, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.aa_get_newest_label) #7
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end.i.i, %if.then2.i.i.if.end20.i.i_crit_edge
  %27 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %proxy.i.i, align 4
  %label.i.i = getelementptr inbounds %struct.aa_proxy, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %label.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %label.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %30, null
  br i1 %tobool33.not.i.i, label %do.end51.i.i, label %if.end20.i.i.if.end57.i.i_crit_edge, !prof !228

if.end20.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

do.end51.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.aa_get_newest_label) #7
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %do.end51.i.i, %if.end20.i.i.if.end57.i.i_crit_edge
  %31 = ptrtoint ptr %proxy.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proxy.i.i, align 4
  %label68.i.i = getelementptr inbounds %struct.aa_proxy, ptr %32, i32 0, i32 1
  %33 = tail call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %36, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !230
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i.i.i, label %if.end57.i.i.do.body.i.i.i.preheader_crit_edge, label %land.lhs.true.i.i.i.i

if.end57.i.i.do.body.i.i.i.preheader_crit_edge:   ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.preheader

land.lhs.true.i.i.i.i:                            ; preds = %if.end57.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i12.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i12.i, label %land.lhs.true.i.i.i.i.do.body.i.i.i.preheader_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.do.body.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.preheader

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.do.body.i.i.i.preheader_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.do.body.i.i.i.preheader_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.preheader

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.97, i32 noundef 696, ptr noundef nonnull @.str.98) #7
  br label %do.body.i.i.i.preheader

do.body.i.i.i.preheader:                          ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.do.body.i.i.i.preheader_crit_edge, %land.lhs.true.i.i.i.i.do.body.i.i.i.preheader_crit_edge, %if.end57.i.i.do.body.i.i.i.preheader_crit_edge
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %kref_get_unless_zero.exit.i.i.i.do.body.i.i.i_crit_edge, %do.body.i.i.i.preheader
  %37 = ptrtoint ptr %label68.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %label68.i.i, align 4
  %call.i.i.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i13.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i13.i, label %land.lhs.true.i.i.i, label %do.body.i.i.i.do.end8.i.i.i_crit_edge

do.body.i.i.i.do.end8.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body.i.i.i
  %call3.i.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, label %land.lhs.true5.i.i.i

land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

land.lhs.true5.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b17.i.i.i = load i1, ptr @aa_get_label_rcu.__warned, align 1
  br i1 %.b17.i.i.i, label %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge:     ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @aa_get_label_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.92, i32 noundef 401, ptr noundef nonnull @.str.96) #7
  br label %do.end8.i.i.i

do.end8.i.i.i:                                    ; preds = %if.then.i.i.i, %land.lhs.true5.i.i.i.do.end8.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end8.i.i.i_crit_edge, %do.body.i.i.i.do.end8.i.i.i_crit_edge
  %tobool11.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool11.not.i.i.i, label %do.end8.i.i.i.do.end14.i.i.i_crit_edge, label %land.rhs.i.i.i

do.end8.i.i.i.do.end14.i.i.i_crit_edge:           ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.end8.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #7
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %38, i32 noundef 4) #7
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %land.rhs.i.i.i
  %41 = phi i32 [ %40, %land.rhs.i.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge ]
  %42 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %old.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i.i.i

do.cond.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %41, 1
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %38, i32 noundef 4) #7
  %call.i3.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i.i.i, i32 noundef 4) #7
  %43 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %38, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i.i.i:                      ; preds = %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i.i.i
  %45 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 %44, i32 %add.i.i.i.i.i.i.i, ptr nonnull elementtype(i32) %38) #7, !srcloc !231
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 0
  %tobool.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i: ; preds = %do.body.i.i.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %45, 1
  %cmp.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i.i.i, %44
  br i1 %cmp.not.i.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, !prof !229

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i.i.i

if.end4.i.i.i.i.i.i.i:                            ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.i.i.if.end4.i.i.i.i.i.i.i_crit_edge
  %46 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  %add5.i.i.i.i.i.i.i = add i32 %47, 1
  %48 = or i32 %add5.i.i.i.i.i.i.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i, !prof !229

if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit.i.i.i

if.then10.i.i.i.i.i.i.i:                          ; preds = %if.end4.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %38, i32 noundef 0) #7
  %49 = ptrtoint ptr %old.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i.i.i = load i32, ptr %old.i.i.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i.i.i

kref_get_unless_zero.exit.i.i.i:                  ; preds = %if.then10.i.i.i.i.i.i.i, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge
  %50 = phi i32 [ %47, %if.end4.i.i.i.i.i.i.i.kref_get_unless_zero.exit.i.i.i_crit_edge ], [ %.pr.i.i.i, %if.then10.i.i.i.i.i.i.i ]
  %tobool12.i.i.i.i.not.i.i.i = icmp eq i32 %50, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not.i.i.i, label %kref_get_unless_zero.exit.i.i.i.do.body.i.i.i_crit_edge, label %kref_get_unless_zero.exit.i.i.i.do.end14.i.i.i_crit_edge

kref_get_unless_zero.exit.i.i.i.do.end14.i.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i.i.i

kref_get_unless_zero.exit.i.i.i.do.body.i.i.i_crit_edge: ; preds = %kref_get_unless_zero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i

do.end14.i.i.i:                                   ; preds = %kref_get_unless_zero.exit.i.i.i.do.end14.i.i.i_crit_edge, %do.end8.i.i.i.do.end14.i.i.i_crit_edge
  %call.i18.i.i.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i18.i.i.i, label %do.end14.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, label %land.lhs.true.i21.i.i.i

do.end14.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge: ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_get_label_rcu.exit.i.i

land.lhs.true.i21.i.i.i:                          ; preds = %do.end14.i.i.i
  %call1.i19.i.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i.i.i)
  %tobool.not.i20.i.i.i = icmp eq i32 %call1.i19.i.i.i, 0
  br i1 %tobool.not.i20.i.i.i, label %land.lhs.true.i21.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, label %land.lhs.true2.i23.i.i.i

land.lhs.true.i21.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_get_label_rcu.exit.i.i

land.lhs.true2.i23.i.i.i:                         ; preds = %land.lhs.true.i21.i.i.i
  %.b4.i22.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22.i.i.i, label %land.lhs.true2.i23.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, label %if.then.i24.i.i.i

land.lhs.true2.i23.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_get_label_rcu.exit.i.i

if.then.i24.i.i.i:                                ; preds = %land.lhs.true2.i23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.97, i32 noundef 724, ptr noundef nonnull @.str.99) #7
  br label %aa_get_label_rcu.exit.i.i

aa_get_label_rcu.exit.i.i:                        ; preds = %if.then.i24.i.i.i, %land.lhs.true2.i23.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, %land.lhs.true.i21.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge, %do.end14.i.i.i.aa_get_label_rcu.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !232
  %51 = call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i.i.i.i25.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i25.i.i.i to ptr
  %preempt_count.i.i.i.i26.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i26.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %54, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i26.i.i.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %tobool11.not.i.i.i, label %do.end89.i.i, label %aa_get_label_rcu.exit.i.i.aa_get_newest_label.exit.i_crit_edge, !prof !228

aa_get_label_rcu.exit.i.i.aa_get_newest_label.exit.i_crit_edge: ; preds = %aa_get_label_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_get_newest_label.exit.i

do.end89.i.i:                                     ; preds = %aa_get_label_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.95, ptr noundef nonnull @__func__.aa_get_newest_label) #7
  br label %aa_get_newest_label.exit.i

aa_get_newest_label.exit.i:                       ; preds = %do.end89.i.i, %aa_get_label_rcu.exit.i.i.aa_get_newest_label.exit.i_crit_edge, %if.then.i.aa_get_newest_label.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then.i.aa_get_newest_label.exit.i_crit_edge ], [ null, %do.end89.i.i ], [ %38, %aa_get_label_rcu.exit.i.i.aa_get_newest_label.exit.i_crit_edge ]
  %call5.i = call i32 @aa_replace_current_label(ptr noundef %retval.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %if.then6.i, label %aa_get_newest_label.exit.i.begin_current_label_crit_section.exit_crit_edge

aa_get_newest_label.exit.i.begin_current_label_crit_section.exit_crit_edge: ; preds = %aa_get_newest_label.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %begin_current_label_crit_section.exit

if.then6.i:                                       ; preds = %aa_get_newest_label.exit.i
  %tobool.not.i14.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i14.i, label %if.then6.i.begin_current_label_crit_section.exit_crit_edge, label %if.then.i.i

if.then6.i.begin_current_label_crit_section.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %begin_current_label_crit_section.exit

if.then.i.i:                                      ; preds = %if.then6.i
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %retval.0.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !233
  call void @llvm.prefetch.p0(ptr nonnull %retval.0.i.i, i32 1, i32 3, i32 1) #7
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %retval.0.i.i, ptr nonnull %retval.0.i.i, i32 1, ptr nonnull elementtype(i32) %retval.0.i.i) #7, !srcloc !234
  %asmresult.i.i.i.i.i.i.i.i15.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i15.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i15.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i16.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i15.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i15.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.begin_current_label_crit_section.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !229

if.end5.i.i.i.i.i.i.begin_current_label_crit_section.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %begin_current_label_crit_section.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %retval.0.i.i, i32 noundef 3) #7
  br label %begin_current_label_crit_section.exit

if.then.i.i16.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !235
  call void @aa_label_kref(ptr noundef nonnull %retval.0.i.i) #7
  br label %begin_current_label_crit_section.exit

begin_current_label_crit_section.exit:            ; preds = %if.then.i.i16.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.begin_current_label_crit_section.exit_crit_edge, %if.then6.i.begin_current_label_crit_section.exit_crit_edge, %aa_get_newest_label.exit.i.begin_current_label_crit_section.exit_crit_edge, %aa_current_raw_label.exit.i.begin_current_label_crit_section.exit_crit_edge
  %label.0.i = phi ptr [ %retval.0.i.i, %aa_get_newest_label.exit.i.begin_current_label_crit_section.exit_crit_edge ], [ %22, %aa_current_raw_label.exit.i.begin_current_label_crit_section.exit_crit_edge ], [ null, %if.then6.i.begin_current_label_crit_section.exit_crit_edge ], [ %retval.0.i.i, %if.end5.i.i.i.i.i.i.begin_current_label_crit_section.exit_crit_edge ], [ %retval.0.i.i, %if.then10.i.i.i.i.i.i ], [ %retval.0.i.i, %if.then.i.i16.i ]
  %call64 = call fastcc i32 @aa_label_sk_perm(ptr noundef %label.0.i, ptr noundef %op, i32 noundef %request, ptr noundef %sk)
  %56 = call i32 @llvm.read_register.i32(metadata !218) #7
  %and.i.i.i73 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i73 to ptr
  %task.i.i74 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %task.i.i74 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task.i.i74, align 8
  %cred.i.i75 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 99
  %60 = ptrtoint ptr %cred.i.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cred.i.i75, align 16
  %security.i.i.i.i76 = getelementptr inbounds %struct.cred, ptr %61, i32 0, i32 23
  %62 = ptrtoint ptr %security.i.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %security.i.i.i.i76, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @apparmor_blob_sizes to i32))
  %64 = load i32, ptr @apparmor_blob_sizes, align 4
  %add.ptr.i.i.i.i77 = getelementptr i8, ptr %63, i32 %64
  %tobool.not.i.i.i.i78 = icmp eq ptr %add.ptr.i.i.i.i77, null
  br i1 %tobool.not.i.i.i.i78, label %do.end.i.i.i.i79, label %begin_current_label_crit_section.exit.cred_label.exit.i.i.i81_crit_edge, !prof !228

begin_current_label_crit_section.exit.cred_label.exit.i.i.i81_crit_edge: ; preds = %begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cred_label.exit.i.i.i81

do.end.i.i.i.i79:                                 ; preds = %begin_current_label_crit_section.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.91, ptr noundef nonnull @__func__.cred_label) #7
  br label %cred_label.exit.i.i.i81

cred_label.exit.i.i.i81:                          ; preds = %do.end.i.i.i.i79, %begin_current_label_crit_section.exit.cred_label.exit.i.i.i81_crit_edge
  %65 = ptrtoint ptr %add.ptr.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i.i.i.i77, align 4
  %tobool.not.i.i.i80 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i80, label %do.end.i.i.i82, label %cred_label.exit.i.i.i81.aa_current_raw_label.exit.i83_crit_edge, !prof !228

cred_label.exit.i.i.i81.aa_current_raw_label.exit.i83_crit_edge: ; preds = %cred_label.exit.i.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %aa_current_raw_label.exit.i83

do.end.i.i.i82:                                   ; preds = %cred_label.exit.i.i.i81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.90, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.aa_cred_raw_label) #7
  br label %aa_current_raw_label.exit.i83

aa_current_raw_label.exit.i83:                    ; preds = %do.end.i.i.i82, %cred_label.exit.i.i.i81.aa_current_raw_label.exit.i83_crit_edge
  %cmp.not.i = icmp eq ptr %66, %label.0.i
  %tobool.not.i.i = icmp eq ptr %label.0.i, null
  %or.cond.i = or i1 %tobool.not.i.i, %cmp.not.i
  br i1 %or.cond.i, label %aa_current_raw_label.exit.i83.end_current_label_crit_section.exit_crit_edge, label %if.then.i.i86

aa_current_raw_label.exit.i83.end_current_label_crit_section.exit_crit_edge: ; preds = %aa_current_raw_label.exit.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %end_current_label_crit_section.exit

if.then.i.i86:                                    ; preds = %aa_current_raw_label.exit.i83
  %call.i.i.i.i.i.i.i.i84 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.0.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !233
  call void @llvm.prefetch.p0(ptr nonnull %label.0.i, i32 1, i32 3, i32 1) #7
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %label.0.i, ptr nonnull %label.0.i, i32 1, ptr nonnull elementtype(i32) %label.0.i) #7, !srcloc !234
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i85, label %if.then.i.i.i90, label %if.end5.i.i.i.i.i.i88

if.end5.i.i.i.i.i.i88:                            ; preds = %if.then.i.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i87 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i87, label %if.end5.i.i.i.i.i.i88.end_current_label_crit_section.exit_crit_edge, label %if.then10.i.i.i.i.i.i89, !prof !229

if.end5.i.i.i.i.i.i88.end_current_label_crit_section.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %end_current_label_crit_section.exit

if.then10.i.i.i.i.i.i89:                          ; preds = %if.end5.i.i.i.i.i.i88
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %label.0.i, i32 noundef 3) #7
  br label %end_current_label_crit_section.exit

if.then.i.i.i90:                                  ; preds = %if.then.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !235
  call void @aa_label_kref(ptr noundef nonnull %label.0.i) #7
  br label %end_current_label_crit_section.exit

end_current_label_crit_section.exit:              ; preds = %if.then.i.i.i90, %if.then10.i.i.i.i.i.i89, %if.end5.i.i.i.i.i.i88.end_current_label_crit_section.exit_crit_edge, %aa_current_raw_label.exit.i83.end_current_label_crit_section.exit_crit_edge
  ret i32 %call64
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aa_label_sk_perm(ptr noundef %label, ptr noundef %op, i32 noundef %request, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  %sa_net = alloca %struct.lsm_network_audit, align 4
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 150, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.aa_label_sk_perm) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %sk, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !228

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.aa_label_sk_perm) #7
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %flags = getelementptr inbounds %struct.aa_label, ptr %label, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.then61, label %if.end50.if.end90_crit_edge

if.end50.if.end90_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then61:                                        ; preds = %if.end50
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sa_net) #7
  %2 = call ptr @memset(ptr %sa_net, i32 0, i32 48)
  %sk62 = getelementptr inbounds %struct.lsm_network_audit, ptr %sa_net, i32 0, i32 1
  %3 = ptrtoint ptr %sk62 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sk, ptr %sk62, align 4
  %family = getelementptr inbounds %struct.lsm_network_audit, ptr %sa_net, i32 0, i32 2
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %skc_family, align 8
  %6 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %family, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #7
  %7 = call ptr @memset(ptr %sa_aad, i32 0, i32 56)
  %op64 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 2
  %8 = ptrtoint ptr %op64 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %op, ptr %op64, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #7
  %9 = call ptr @memset(ptr %sa, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.not = icmp eq i16 %5, 1
  %10 = select i1 %tobool26.not, i1 true, i1 %cmp.not
  %11 = select i1 %10, i8 7, i8 2
  %12 = ptrtoint ptr %sa to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sa, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 1
  %13 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sa_aad, ptr %13, align 4
  %15 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sa_net, ptr %u, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %16 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_type, align 2
  %conv73 = zext i16 %17 to i32
  %18 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv73, ptr %18, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %20 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_protocol, align 4
  %conv75 = zext i16 %21 to i32
  %protocol = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv75, ptr %protocol, align 4
  %call = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #7
  %arrayidx106 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call
  %23 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx106, align 4
  %tobool78.not107 = icmp eq ptr %24, null
  br i1 %tobool78.not107, label %if.then61.for.end_crit_edge, label %if.then61.do.body79_crit_edge

if.then61.do.body79_crit_edge:                    ; preds = %if.then61
  br label %do.body79

if.then61.for.end_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body79:                                        ; preds = %do.body79.do.body79_crit_edge, %if.then61.do.body79_crit_edge
  %25 = phi ptr [ %31, %do.body79.do.body79_crit_edge ], [ %24, %if.then61.do.body79_crit_edge ]
  %__E.0109 = phi i32 [ %spec.select, %do.body79.do.body79_crit_edge ], [ 0, %if.then61.do.body79_crit_edge ]
  %i.sroa.0.0108 = phi i32 [ %call87, %do.body79.do.body79_crit_edge ], [ %call, %if.then61.do.body79_crit_edge ]
  %26 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %skc_family, align 8
  %28 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sk_type, align 2
  %conv.i = zext i16 %29 to i32
  %call.i = call i32 @aa_profile_af_perm(ptr noundef nonnull %25, ptr noundef nonnull %sa, i32 noundef %request, i16 noundef zeroext %27, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool81.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool81.not, i32 %__E.0109, i32 %call.i
  %add = add i32 %i.sroa.0.0108, 1
  %call87 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #7
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call87
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %tobool78.not = icmp eq ptr %31, null
  br i1 %tobool78.not, label %do.body79.for.end_crit_edge, label %do.body79.do.body79_crit_edge

do.body79.do.body79_crit_edge:                    ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

do.body79.for.end_crit_edge:                      ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.body79.for.end_crit_edge, %if.then61.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %if.then61.for.end_crit_edge ], [ %spec.select, %do.body79.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sa_net) #7
  br label %if.end90

if.end90:                                         ; preds = %for.end, %if.end50.if.end90_crit_edge
  %error.0 = phi i32 [ 0, %if.end50.if.end90_crit_edge ], [ %__E.0.lcssa, %for.end ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aa_sock_file_perm(ptr noundef %label, ptr noundef %op, i32 noundef %request, ptr noundef readonly %sock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %label, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 184, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.aa_sock_file_perm) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool26.not = icmp eq ptr %sock, null
  br i1 %tobool26.not, label %do.end44, label %if.end.if.end50_crit_edge, !prof !228

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 185, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.aa_sock_file_perm) #7
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %tobool62.not = icmp eq ptr %1, null
  br i1 %tobool62.not, label %do.end80, label %if.end50.if.end86_crit_edge, !prof !228

if.end50.if.end86_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.end80:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.aa_sock_file_perm) #7
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.end50.if.end86_crit_edge
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 16
  %call = tail call fastcc i32 @aa_label_sk_perm(ptr noundef %label, ptr noundef %op, i32 noundef %request, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apparmor_secmark_check(ptr noundef %label, ptr noundef %op, i32 noundef %request, i32 noundef %secid, ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  %perms.i = alloca %struct.aa_perms, align 4
  %sa_net = alloca %struct.lsm_network_audit, align 4
  %sa_aad = alloca %struct.apparmor_audit_data, align 4
  %sa = alloca %struct.common_audit_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sa_net) #7
  %0 = call ptr @memset(ptr %sa_net, i32 0, i32 48)
  %sk1 = getelementptr inbounds %struct.lsm_network_audit, ptr %sa_net, i32 0, i32 1
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %sk, ptr %sk1, align 4
  %family = getelementptr inbounds %struct.lsm_network_audit, ptr %sa_net, i32 0, i32 2
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  %4 = ptrtoint ptr %family to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %family, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %sa_aad) #7
  %5 = call ptr @memset(ptr %sa_aad, i32 0, i32 56)
  %op2 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 2
  %6 = ptrtoint ptr %op2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %op, ptr %op2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #7
  %7 = call ptr @memset(ptr %sa, i32 255, i32 12)
  %tobool.not = icmp eq ptr %sk, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not = icmp eq i16 %3, 1
  %8 = select i1 %tobool.not, i1 true, i1 %cmp.not
  %9 = select i1 %8, i8 7, i8 2
  %10 = ptrtoint ptr %sa to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %sa, align 4
  %u = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 1
  %11 = getelementptr inbounds %struct.common_audit_data, ptr %sa, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sa_aad, ptr %11, align 4
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sa_net, ptr %u, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %14 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sk_type, align 2
  %conv10 = zext i16 %15 to i32
  %16 = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv10, ptr %16, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %18 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sk_protocol, align 4
  %conv12 = zext i16 %19 to i32
  %protocol = getelementptr inbounds %struct.apparmor_audit_data, ptr %sa_aad, i32 0, i32 8, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv12, ptr %protocol, align 4
  %call = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef 0) #7
  %arrayidx32 = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx32, align 4
  %tobool15.not33 = icmp eq ptr %22, null
  br i1 %tobool15.not33, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %deny24.i = getelementptr inbounds %struct.aa_perms, ptr %perms.i, i32 0, i32 2
  %audit30.i = getelementptr inbounds %struct.aa_perms, ptr %perms.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.cond.do.body_crit_edge, %do.body.lr.ph
  %23 = phi ptr [ %22, %do.body.lr.ph ], [ %58, %for.cond.do.body_crit_edge ]
  %__E.035 = phi i32 [ 0, %do.body.lr.ph ], [ %56, %for.cond.do.body_crit_edge ]
  %i.sroa.0.034 = phi i32 [ %call, %do.body.lr.ph ], [ %call19, %for.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %perms.i) #7
  %24 = call ptr @memset(ptr %perms.i, i32 0, i32 44)
  %secmark_count.i = getelementptr inbounds %struct.aa_profile, ptr %23, i32 0, i32 18
  %25 = ptrtoint ptr %secmark_count.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %secmark_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %aa_secmark_perm.exit.thread, label %for.cond.preheader.i

aa_secmark_perm.exit.thread:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i) #7
  br label %55

for.cond.preheader.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp255.i = icmp sgt i32 %26, 0
  br i1 %cmp255.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %secmark.i = getelementptr inbounds %struct.aa_profile, ptr %23, i32 0, i32 19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.056.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %secmark.i, align 4
  %secid3.i = getelementptr %struct.aa_secmark, ptr %28, i32 %i.056.i, i32 2
  %29 = ptrtoint ptr %secid3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %secid3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.then4.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then4.i:                                       ; preds = %for.body.i
  %label1.i.i = getelementptr %struct.aa_secmark, ptr %28, i32 %i.056.i, i32 3
  %31 = ptrtoint ptr %label1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %label1.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %34)
  %cmp.i.i = icmp eq i8 %34, 42
  br i1 %cmp.i.i, label %if.then4.i.if.end10.sink.split.i_crit_edge, label %if.end.i.i

if.then4.i.if.end10.sink.split.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.sink.split.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_ns to i32))
  %35 = load ptr, ptr @root_ns, align 4
  %unconfined.i.i = getelementptr inbounds %struct.aa_ns, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %unconfined.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unconfined.i.i, align 4
  %label3.i.i = getelementptr inbounds %struct.aa_profile, ptr %37, i32 0, i32 25
  %call.i.i = call i32 @strlen(ptr noundef %32) #10
  %call6.i.i = call ptr @aa_label_strn_parse(ptr noundef %label3.i.i, ptr noundef %32, i32 noundef %call.i.i, i32 noundef 2592, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %cmp.i.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %apparmor_secmark_init.exit.i, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %secid11.i.i = getelementptr inbounds %struct.aa_label, ptr %call6.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %secid11.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %secid11.i.i, align 4
  br label %if.end10.sink.split.i

apparmor_secmark_init.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %call6.i.i to i32
  br label %aa_secmark_perm.exit

if.end10.sink.split.i:                            ; preds = %if.end10.i.i, %if.then4.i.if.end10.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %39, %if.end10.i.i ], [ 1, %if.then4.i.if.end10.sink.split.i_crit_edge ]
  %41 = ptrtoint ptr %secid3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink.i, ptr %secid3.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %for.body.i.if.end10.i_crit_edge
  %42 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %secmark.i, align 4
  %secid13.i = getelementptr %struct.aa_secmark, ptr %43, i32 %i.056.i, i32 2
  %44 = ptrtoint ptr %secid13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %secid13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %secid)
  %cmp14.i = icmp eq i32 %45, %secid
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp18.i = icmp eq i32 %45, 1
  %or.cond.i = or i1 %cmp14.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then19.i:                                      ; preds = %if.end10.i
  %deny.i = getelementptr %struct.aa_secmark, ptr %43, i32 %i.056.i, i32 1
  %46 = ptrtoint ptr %deny.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %deny.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not.i = icmp eq i8 %47, 0
  br i1 %tobool22.not.i, label %if.else.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %deny24.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %deny24.i, align 4
  br label %if.end25.i

if.else.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %perms.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %perms.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i, %if.then23.i
  %arrayidx27.i = getelementptr %struct.aa_secmark, ptr %43, i32 %i.056.i
  %50 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool28.not.i = icmp eq i8 %51, 0
  br i1 %tobool28.not.i, label %if.end25.i.for.inc.i_crit_edge, label %if.then29.i

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %audit30.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %audit30.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then29.i, %if.end25.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %53 = ptrtoint ptr %secmark_count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %secmark_count.i, align 4
  %cmp2.i = icmp slt i32 %inc.i, %54
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  call void @aa_apply_modes_to_perms(ptr noundef nonnull %23, ptr noundef nonnull %perms.i) #7
  %call33.i = call i32 @aa_check_perms(ptr noundef nonnull %23, ptr noundef nonnull %perms.i, i32 noundef %request, ptr noundef nonnull %sa, ptr noundef nonnull @audit_net_cb) #7
  br label %aa_secmark_perm.exit

aa_secmark_perm.exit:                             ; preds = %for.end.i, %apparmor_secmark_init.exit.i
  %retval.0.i = phi i32 [ %call33.i, %for.end.i ], [ %40, %apparmor_secmark_init.exit.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %perms.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool17.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool17.not, label %aa_secmark_perm.exit._crit_edge, label %aa_secmark_perm.exit.for.cond_crit_edge

aa_secmark_perm.exit.for.cond_crit_edge:          ; preds = %aa_secmark_perm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

aa_secmark_perm.exit._crit_edge:                  ; preds = %aa_secmark_perm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %55

55:                                               ; preds = %aa_secmark_perm.exit._crit_edge, %aa_secmark_perm.exit.thread
  br label %for.cond

for.cond:                                         ; preds = %55, %aa_secmark_perm.exit.for.cond_crit_edge
  %56 = phi i32 [ %__E.035, %55 ], [ %retval.0.i, %aa_secmark_perm.exit.for.cond_crit_edge ]
  %add = add i32 %i.sroa.0.034, 1
  %call19 = call i32 @aa_label_next_confined(ptr noundef %label, i32 noundef %add) #7
  %arrayidx = getelementptr %struct.aa_label, ptr %label, i32 0, i32 8, i32 %call19
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %58, null
  br i1 %tobool15.not, label %for.cond.for.end_crit_edge, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %__E.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %56, %for.cond.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %sa_aad) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sa_net) #7
  ret i32 %__E.0.lcssa
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aa_replace_current_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aa_label_kref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aa_label_strn_parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !198, !200, !201, !202, !204, !206, !208, !209, !211, !212, !213, !215, !216}
!llvm.named.register.sp = !{!218}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/apparmor/net.c", i32 23, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @aa_sfs_entry_network, !4, !"aa_sfs_entry_network", i1 false, i1 false}
!4 = !{!"../security/apparmor/net.c", i32 22, i32 21}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../security/apparmor/net.c", i32 76, i32 24}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../security/apparmor/net.c", i32 79, i32 24}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../security/apparmor/net.c", i32 82, i32 24}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/apparmor/net.c", i32 85, i32 24}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../security/apparmor/net.c", i32 87, i32 23}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/apparmor/net.c", i32 90, i32 24}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/apparmor/net.c", i32 95, i32 25}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/apparmor/net.c", i32 101, i32 24}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/apparmor/net.c", i32 115, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__func__.aa_profile_af_perm, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/apparmor/net.c", i32 116, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/apparmor/net.c", i32 169, i32 2}
!29 = !{ptr @__func__.aa_sk_perm, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/apparmor/net.c", i32 170, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/apparmor/net.c", i32 184, i32 2}
!34 = !{ptr @__func__.aa_sock_file_perm, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../security/apparmor/net.c", i32 185, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../security/apparmor/net.c", i32 186, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"./security/apparmor/net_names.h", i32 2, i32 7}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"./security/apparmor/net_names.h", i32 3, i32 7}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"./security/apparmor/net_names.h", i32 4, i32 7}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"./security/apparmor/net_names.h", i32 5, i32 7}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"./security/apparmor/net_names.h", i32 6, i32 7}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"./security/apparmor/net_names.h", i32 7, i32 7}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"./security/apparmor/net_names.h", i32 8, i32 7}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"./security/apparmor/net_names.h", i32 9, i32 7}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"./security/apparmor/net_names.h", i32 10, i32 7}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"./security/apparmor/net_names.h", i32 11, i32 7}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"./security/apparmor/net_names.h", i32 12, i32 8}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"./security/apparmor/net_names.h", i32 13, i32 8}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"./security/apparmor/net_names.h", i32 14, i32 8}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"./security/apparmor/net_names.h", i32 15, i32 8}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"./security/apparmor/net_names.h", i32 16, i32 8}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"./security/apparmor/net_names.h", i32 17, i32 8}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"./security/apparmor/net_names.h", i32 18, i32 8}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"./security/apparmor/net_names.h", i32 19, i32 8}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"./security/apparmor/net_names.h", i32 20, i32 8}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"./security/apparmor/net_names.h", i32 21, i32 8}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"./security/apparmor/net_names.h", i32 22, i32 8}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"./security/apparmor/net_names.h", i32 23, i32 8}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"./security/apparmor/net_names.h", i32 24, i32 8}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"./security/apparmor/net_names.h", i32 25, i32 8}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"./security/apparmor/net_names.h", i32 26, i32 8}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"./security/apparmor/net_names.h", i32 27, i32 8}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"./security/apparmor/net_names.h", i32 28, i32 8}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"./security/apparmor/net_names.h", i32 29, i32 8}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"./security/apparmor/net_names.h", i32 30, i32 8}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"./security/apparmor/net_names.h", i32 31, i32 8}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"./security/apparmor/net_names.h", i32 32, i32 8}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"./security/apparmor/net_names.h", i32 33, i32 8}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"./security/apparmor/net_names.h", i32 34, i32 8}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"./security/apparmor/net_names.h", i32 35, i32 8}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"./security/apparmor/net_names.h", i32 36, i32 8}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"./security/apparmor/net_names.h", i32 37, i32 8}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"./security/apparmor/net_names.h", i32 38, i32 8}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"./security/apparmor/net_names.h", i32 39, i32 8}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"./security/apparmor/net_names.h", i32 40, i32 8}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"./security/apparmor/net_names.h", i32 41, i32 8}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"./security/apparmor/net_names.h", i32 42, i32 8}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"./security/apparmor/net_names.h", i32 43, i32 8}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"./security/apparmor/net_names.h", i32 44, i32 8}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"./security/apparmor/net_names.h", i32 45, i32 8}
!127 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"./security/apparmor/net_names.h", i32 46, i32 8}
!129 = !{ptr @address_family_names, !130, !"address_family_names", i1 false, i1 false}
!130 = !{!"./security/apparmor/net_names.h", i32 1, i32 20}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"./security/apparmor/net_names.h", i32 50, i32 7}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"./security/apparmor/net_names.h", i32 51, i32 7}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"./security/apparmor/net_names.h", i32 52, i32 7}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"./security/apparmor/net_names.h", i32 53, i32 7}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"./security/apparmor/net_names.h", i32 54, i32 7}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"./security/apparmor/net_names.h", i32 55, i32 7}
!143 = !{ptr @sock_type_names, !144, !"sock_type_names", i1 false, i1 false}
!144 = !{!"./security/apparmor/net_names.h", i32 49, i32 20}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../security/apparmor/net.c", i32 28, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../security/apparmor/net.c", i32 29, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../security/apparmor/net.c", i32 30, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../security/apparmor/net.c", i32 33, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/apparmor/net.c", i32 34, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../security/apparmor/net.c", i32 35, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../security/apparmor/net.c", i32 38, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../security/apparmor/net.c", i32 39, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../security/apparmor/net.c", i32 40, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../security/apparmor/net.c", i32 41, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../security/apparmor/net.c", i32 43, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../security/apparmor/net.c", i32 44, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../security/apparmor/net.c", i32 45, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../security/apparmor/net.c", i32 46, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../security/apparmor/net.c", i32 48, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../security/apparmor/net.c", i32 49, i32 2}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../security/apparmor/net.c", i32 53, i32 2}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../security/apparmor/net.c", i32 54, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../security/apparmor/net.c", i32 55, i32 2}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../security/apparmor/net.c", i32 58, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../security/apparmor/net.c", i32 59, i32 2}
!187 = !{ptr @net_mask_names, !188, !"net_mask_names", i1 false, i1 false}
!188 = !{!"../security/apparmor/net.c", i32 27, i32 27}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../security/apparmor/include/cred.h", i32 164, i32 2}
!191 = distinct !{null, !192, !"__warned", i1 false, i1 false}
!192 = !{!"../security/apparmor/include/cred.h", i32 89, i32 27}
!193 = !{ptr @__func__.aa_cred_raw_label, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../security/apparmor/include/cred.h", i32 51, i32 2}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../security/apparmor/include/cred.h", i32 26, i32 2}
!197 = !{ptr @__func__.cred_label, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../security/apparmor/include/label.h", i32 424, i32 3}
!200 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @__func__.aa_get_newest_label, !199, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../security/apparmor/include/label.h", i32 425, i32 3}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../security/apparmor/include/label.h", i32 431, i32 3}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../security/apparmor/include/label.h", i32 401, i32 7}
!208 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!209 = distinct !{null, !210, !"__warned", i1 false, i1 false}
!210 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!211 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!214 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!215 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @__func__.aa_label_sk_perm, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../security/apparmor/net.c", i32 150, i32 2}
!218 = !{!"sp"}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"branch_weights", i32 1, i32 2000}
!229 = !{!"branch_weights", i32 2000, i32 1}
!230 = !{i64 2149276601}
!231 = !{i64 934600, i64 934624, i64 934645, i64 934662, i64 934679}
!232 = !{i64 2149276867}
!233 = !{i64 2148538618}
!234 = !{i64 2148453082, i64 2148453114, i64 2148453143, i64 2148453177, i64 2148453208, i64 2148453231}
!235 = !{i64 2149584588}
