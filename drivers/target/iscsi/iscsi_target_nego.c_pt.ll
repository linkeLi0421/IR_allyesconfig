; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_nego.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_nego.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsi_target_check_login_request\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsi_target_check_login_request\09\09\09\09"
module asm "\09.long\09__crc_iscsi_target_check_login_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsi_target_check_login_request:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsi_target_check_login_request\22\09\09\09\09\09"
module asm "__kstrtabns_iscsi_target_check_login_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iscsi_login = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], i32, i32, i32, i32, i16, i16, [48 x i8], [48 x i8], ptr, ptr, ptr, ptr, [108 x i8] }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
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
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.iscsit_global = type { i32, i32, i32, i32, ptr, %struct.spinlock, %struct.iscsi_node_acl, ptr }
%struct.iscsi_node_acl = type { %struct.se_node_acl, %struct.iscsi_node_attrib, %struct.iscsi_node_auth, %struct.iscsi_node_stat_grps }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.iscsi_node_stat_grps = type { %struct.config_group, %struct.config_group }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_tpg_np = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.se_tpg_np, %struct.spinlock, %struct.completion, %struct.kref }
%struct.se_tpg_np = type { ptr, %struct.config_group }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.conn_timeout = type { %struct.timer_list, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.111, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.34 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.111 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }
%struct.iscsi_param_list = type { i8, %struct.list_head, %struct.list_head }

@extract_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Length of input: %d exceeds max_length: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"extract_param\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/iscsi_target_nego.c\00", [55 x i8] zeroinitializer }, align 32
@extract_param._entry_ptr = internal global ptr @extract_param._entry, section ".printk_index", align 4
@iscsi_target_check_login_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Received unknown opcode 0x%02x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsi_target_check_login_request\00", [63 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr = internal global ptr @iscsi_target_check_login_request._entry, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\013Login request has both ISCSI_FLAG_LOGIN_CONTINUE and ISCSI_FLAG_LOGIN_TRANSIT set, protocol error.\0A\00", [58 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.8 = internal global ptr @iscsi_target_check_login_request._entry.6, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013Initiator unexpectedly changed login stage from %d to %d, login failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.11 = internal global ptr @iscsi_target_check_login_request._entry.9, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013Illegal login_req->flags Combination, CSG: %d, NSG: %d, ISCSI_FLAG_LOGIN_TRANSIT: %d.\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.14 = internal global ptr @iscsi_target_check_login_request._entry.12, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013Login request changed Version Max/Nin unexpectedly to 0x%02x/0x%02x, protocol error\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.17 = internal global ptr @iscsi_target_check_login_request._entry.15, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Login request changed ISID unexpectedly, protocol error.\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.20 = internal global ptr @iscsi_target_check_login_request._entry.18, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013Login request changed ITT unexpectedly to 0x%08x, protocol error.\0A\00", [59 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.23 = internal global ptr @iscsi_target_check_login_request._entry.21, section ".printk_index", align 4
@iscsi_target_check_login_request._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\013Login request payload exceeds default MaxRecvDataSegmentLength: %u, protocol error.\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsi_target_check_login_request._entry_ptr.26 = internal global ptr @iscsi_target_check_login_request._entry.24, section ".printk_index", align 4
@__kstrtab_iscsi_target_check_login_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsi_target_check_login_request = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsi_target_check_login_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsi_target_check_login_request to i32), ptr @__kstrtab_iscsi_target_check_login_request, ptr @__kstrtabns_iscsi_target_check_login_request }, section "___ksymtab+iscsi_target_check_login_request", align 4
@iscsi_target_locate_portal.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&conn->login_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&conn->login_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 1080, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Unable to allocate memory for tmpbuf.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_target_locate_portal\00", [37 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr = internal global ptr @iscsi_target_locate_portal._entry, section ".printk_index", align 4
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InitiatorName\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SessionType\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TargetName\00", [21 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.3, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013InitiatorName key not received in first login request.\0A\00", [38 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.37 = internal global ptr @iscsi_target_locate_portal._entry.35, section ".printk_index", align 4
@iscsi_target_locate_portal._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.3, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013SessionType key not received in first login request.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.40 = internal global ptr @iscsi_target_locate_portal._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Discovery\00", [22 x i8] zeroinitializer }, align 32
@iscsit_global = external dso_local local_unnamed_addr global ptr, align 4
@iscsi_target_locate_portal._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.31, ptr @.str.3, i32 1150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013iscsi_login_setup_crypto() failed\0A\00", [59 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.44 = internal global ptr @iscsi_target_locate_portal._entry.42, section ".printk_index", align 4
@iscsi_target_locate_portal._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.31, ptr @.str.3, i32 1172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013TargetName key not received in first login request while SessionType=Normal.\0A\00", [48 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.47 = internal global ptr @iscsi_target_locate_portal._entry.45, section ".printk_index", align 4
@iscsi_target_locate_portal._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.31, ptr @.str.3, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to locate Target IQN: %s in Storage Node\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.50 = internal global ptr @iscsi_target_locate_portal._entry.48, section ".printk_index", align 4
@iscsi_target_locate_portal.__UNIQUE_ID_ddebug483 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.31, ptr @.str.3, ptr @.str.52, i8 1, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Located Storage Object: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.31, ptr @.str.3, i32 1199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Unable to locate Target Portal Group on %s\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.55 = internal global ptr @iscsi_target_locate_portal._entry.53, section ".printk_index", align 4
@iscsi_target_locate_portal.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.31, ptr @.str.3, ptr @.str.56, i8 1, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Located Portal Group Object: %hu\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.31, ptr @.str.3, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.58 = internal global ptr @iscsi_target_locate_portal._entry.57, section ".printk_index", align 4
@iscsi_target_locate_portal._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.31, ptr @.str.3, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013iSCSI Initiator Node: %s is not authorized to access iSCSI target portal group: %hu.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_target_locate_portal._entry_ptr.61 = internal global ptr @iscsi_target_locate_portal._entry.59, section ".printk_index", align 4
@iscsi_target_do_login_rx.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_target_do_login_rx\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"entering iscsi_target_do_login_rx, conn: %p, %s:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_target_do_login_rx.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.62, ptr @.str.3, ptr @.str.64, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"iscsi_target_do_login_rx: tpg_state != TPG_STATE_ACTIVE\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_target_do_login_rx.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.62, ptr @.str.3, ptr @.str.65, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iscsi_target_do_login_rx, TCP state CLOSE\0A\00", [53 x i8] zeroinitializer }, align 32
@iscsi_target_do_login_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&timeout.timer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iscsi_target_do_login_rx.__UNIQUE_ID_ddebug473 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.62, ptr @.str.3, ptr @.str.67, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting login timer for %s/%d\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsi_target_do_login_rx.__UNIQUE_ID_ddebug474 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.62, ptr @.str.3, ptr @.str.68, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"iscsi_target_do_login_rx after rx_login_io, %p, %s:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.69, ptr @.str.3, ptr @.str.70, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__iscsi_target_sk_check_close\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"__iscsi_target_sk_check_close: TCP_CLOSE_WAIT|TCP_CLOSE,returning TRUE\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsi_target_login_timeout.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_target_login_timeout\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Entering iscsi_target_login_timeout >>>>>>>>>>>>>>>>>>>\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_target_login_timeout.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.71, ptr @.str.3, ptr @.str.73, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Sending SIGINT to conn->login_kworker %s/%d\0A\00", [51 x i8] zeroinitializer }, align 32
@iscsi_target_set_sock_callbacks.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsi_target_set_sock_callbacks\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Entering iscsi_target_set_sock_callbacks: conn: %p\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_target_sk_data_ready\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Entering iscsi_target_sk_data_ready: conn: %p\0A\00", [49 x i8] zeroinitializer }, align 32
@iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.76, ptr @.str.3, ptr @.str.78, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Got LOGIN_FLAGS_READY=0, conn: %p >>>>\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.76, ptr @.str.3, ptr @.str.79, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Got LOGIN_FLAGS_CLOSED=1, conn: %p >>>>\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.76, ptr @.str.3, ptr @.str.80, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Got LOGIN_FLAGS_READ_ACTIVE=1, conn: %p >>>>\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.76, ptr @.str.3, ptr @.str.81, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"iscsi_target_sk_data_ready, schedule_delayed_work got false\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsi_target_sk_state_change.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsi_target_sk_state_change\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Entering iscsi_target_sk_state_change\0A\00", [57 x i8] zeroinitializer }, align 32
@iscsi_target_sk_state_change.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.82, ptr @.str.3, ptr @.str.84, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Got LOGIN_FLAGS_READY=0 sk_state_change conn: %p\0A\00", [46 x i8] zeroinitializer }, align 32
@iscsi_target_sk_state_change.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.82, ptr @.str.3, ptr @.str.85, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"__iscsi_target_sk_close_change: state: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iscsi_target_sk_state_change.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.82, ptr @.str.3, ptr @.str.86, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Got LOGIN_FLAGS_{READ|WRITE}_ACTIVE=1 sk_state_change conn: %p\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsi_target_sk_state_change.__UNIQUE_ID_ddebug479 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.82, ptr @.str.3, ptr @.str.87, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Got LOGIN_FLAGS_CLOSED=1 sk_state_change conn: %p\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_target_sk_state_change.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.82, ptr @.str.3, ptr @.str.88, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"iscsi_target_sk_state_change got failed state\0A\00", [49 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@iscsi_target_do_login._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013MAX_LOGIN_PDUS count reached.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsi_target_do_login\00", [42 x i8] zeroinitializer }, align 32
@iscsi_target_do_login._entry_ptr = internal global ptr @iscsi_target_do_login._entry, section ".printk_index", align 4
@iscsi_target_do_login._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.3, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Illegal CSG: %d received from Initiator, protocol error.\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsi_target_do_login._entry_ptr.93 = internal global ptr @iscsi_target_do_login._entry.91, section ".printk_index", align 4
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AuthMethod\00", [21 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_zero._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013Initiator has already been successfully authenticated, but is still sending %s keys.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsi_target_handle_csg_zero\00", [35 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_zero._entry_ptr = internal global ptr @iscsi_target_handle_csg_zero._entry, section ".printk_index", align 4
@iscsi_target_handle_csg_zero._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.3, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Initiator sent zero length security payload, login failed\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_zero._entry_ptr.99 = internal global ptr @iscsi_target_handle_csg_zero._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_zero._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.3, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013Initiator sent AuthMethod=None but Target is enforcing iSCSI Authentication, login failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_zero._entry_ptr.103 = internal global ptr @iscsi_target_handle_csg_zero._entry.101, section ".printk_index", align 4
@iscsi_target_check_first_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.104, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsi_target_check_first_request\00", [63 x i8] zeroinitializer }, align 32
@iscsi_target_check_first_request._entry_ptr = internal global ptr @iscsi_target_check_first_request._entry, section ".printk_index", align 4
@iscsi_target_check_first_request._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.104, ptr @.str.3, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsi_target_check_first_request._entry_ptr.106 = internal global ptr @iscsi_target_check_first_request._entry.105, section ".printk_index", align 4
@iscsi_target_check_first_request._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.104, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to locate struct se_node_acl\0A\00", [57 x i8] zeroinitializer }, align 32
@iscsi_target_check_first_request._entry_ptr.109 = internal global ptr @iscsi_target_check_first_request._entry.107, section ".printk_index", align 4
@iscsi_target_check_first_request._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.104, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Incorrect InitiatorName: %s for this iSCSI Initiator Node.\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_target_check_first_request._entry_ptr.112 = internal global ptr @iscsi_target_check_first_request._entry.110, section ".printk_index", align 4
@iscsi_target_do_authentication.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iscsi_target_do_authentication\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Received OK response from LIO Authentication, continuing.\0A\00", [37 x i8] zeroinitializer }, align 32
@iscsi_target_do_authentication.__UNIQUE_ID_ddebug482 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.113, ptr @.str.3, ptr @.str.115, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"iSCSI security negotiation completed successfully.\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_target_do_authentication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.113, ptr @.str.3, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Security negotiation failed.\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsi_target_do_authentication._entry_ptr = internal global ptr @iscsi_target_do_authentication._entry, section ".printk_index", align 4
@iscsi_target_do_authentication._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.3, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Received unknown error %d from LIO Authentication\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsi_target_do_authentication._entry_ptr.119 = internal global ptr @iscsi_target_do_authentication._entry.117, section ".printk_index", align 4
@iscsi_handle_authentication._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Unable to locate struct se_node_acl for CHAP auth\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_handle_authentication\00", [36 x i8] zeroinitializer }, align 32
@iscsi_handle_authentication._entry_ptr = internal global ptr @iscsi_handle_authentication._entry, section ".printk_index", align 4
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CHAP\00", [27 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"\013Initiator is requesting CSG: 1, has not been successfully authenticated, and the Target is enforcing iSCSI Authentication, login failed.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_target_handle_csg_one\00", [36 x i8] zeroinitializer }, align 32
@iscsi_target_handle_csg_one._entry_ptr = internal global ptr @iscsi_target_handle_csg_one._entry, section ".printk_index", align 4
@iscsi_target_do_tx_login_io.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_target_do_tx_login_io\00", [36 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Sending Login Response, Flags: 0x%02x, ITT: 0x%08x, ExpCmdSN; 0x%08x, MaxCmdSN: 0x%08x, StatSN: 0x%08x, Length: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.127, ptr @.str.3, ptr @.str.128, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsi_target_restore_sock_callbacks\00", [60 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Entering iscsi_target_restore_sock_callbacks: conn: %p\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 59]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 87, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 174, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 183, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 194, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 205, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 215, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 224, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 232, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 240, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1070, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1080, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1097, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1099, i32 26 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1101, i32 26 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1110, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1128, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1139, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1150, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1170, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1184, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1191, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1198, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1207, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1212, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1254, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 568, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 590, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 595, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 603, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 605, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 616, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 475, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 547, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 550, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 432, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 388, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 397, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 402, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 407, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 416, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 669, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 680, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 687, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 691, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 700, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 722, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 982, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1018, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 832, i32 36 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 847, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 857, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 880, i32 30 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 881, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 262, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 277, i32 5 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 292, i32 6 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 302, i32 6 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 786, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 790, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 802, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 808, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 117, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 140, i32 13 }
@___asan_gen_.462 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 954, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 334, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.481 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_nego.c\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 454, i32 2 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__ksymtab_iscsi_target_check_login_request, ptr @extract_param._entry, ptr @extract_param._entry_ptr, ptr @iscsi_handle_authentication._entry, ptr @iscsi_handle_authentication._entry_ptr, ptr @iscsi_target_check_first_request._entry, ptr @iscsi_target_check_first_request._entry.105, ptr @iscsi_target_check_first_request._entry.107, ptr @iscsi_target_check_first_request._entry.110, ptr @iscsi_target_check_first_request._entry_ptr, ptr @iscsi_target_check_first_request._entry_ptr.106, ptr @iscsi_target_check_first_request._entry_ptr.109, ptr @iscsi_target_check_first_request._entry_ptr.112, ptr @iscsi_target_check_login_request._entry, ptr @iscsi_target_check_login_request._entry.12, ptr @iscsi_target_check_login_request._entry.15, ptr @iscsi_target_check_login_request._entry.18, ptr @iscsi_target_check_login_request._entry.21, ptr @iscsi_target_check_login_request._entry.24, ptr @iscsi_target_check_login_request._entry.6, ptr @iscsi_target_check_login_request._entry.9, ptr @iscsi_target_check_login_request._entry_ptr, ptr @iscsi_target_check_login_request._entry_ptr.11, ptr @iscsi_target_check_login_request._entry_ptr.14, ptr @iscsi_target_check_login_request._entry_ptr.17, ptr @iscsi_target_check_login_request._entry_ptr.20, ptr @iscsi_target_check_login_request._entry_ptr.23, ptr @iscsi_target_check_login_request._entry_ptr.26, ptr @iscsi_target_check_login_request._entry_ptr.8, ptr @iscsi_target_do_authentication._entry, ptr @iscsi_target_do_authentication._entry.117, ptr @iscsi_target_do_authentication._entry_ptr, ptr @iscsi_target_do_authentication._entry_ptr.119, ptr @iscsi_target_do_login._entry, ptr @iscsi_target_do_login._entry.91, ptr @iscsi_target_do_login._entry_ptr, ptr @iscsi_target_do_login._entry_ptr.93, ptr @iscsi_target_handle_csg_one._entry, ptr @iscsi_target_handle_csg_one._entry_ptr, ptr @iscsi_target_handle_csg_zero._entry, ptr @iscsi_target_handle_csg_zero._entry.101, ptr @iscsi_target_handle_csg_zero._entry.97, ptr @iscsi_target_handle_csg_zero._entry_ptr, ptr @iscsi_target_handle_csg_zero._entry_ptr.103, ptr @iscsi_target_handle_csg_zero._entry_ptr.99, ptr @iscsi_target_locate_portal._entry, ptr @iscsi_target_locate_portal._entry.35, ptr @iscsi_target_locate_portal._entry.38, ptr @iscsi_target_locate_portal._entry.42, ptr @iscsi_target_locate_portal._entry.45, ptr @iscsi_target_locate_portal._entry.48, ptr @iscsi_target_locate_portal._entry.53, ptr @iscsi_target_locate_portal._entry.57, ptr @iscsi_target_locate_portal._entry.59, ptr @iscsi_target_locate_portal._entry_ptr, ptr @iscsi_target_locate_portal._entry_ptr.37, ptr @iscsi_target_locate_portal._entry_ptr.40, ptr @iscsi_target_locate_portal._entry_ptr.44, ptr @iscsi_target_locate_portal._entry_ptr.47, ptr @iscsi_target_locate_portal._entry_ptr.50, ptr @iscsi_target_locate_portal._entry_ptr.55, ptr @iscsi_target_locate_portal._entry_ptr.58, ptr @iscsi_target_locate_portal._entry_ptr.61, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @iscsi_target_locate_portal.__key, ptr @.str.27, ptr @iscsi_target_locate_portal.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @iscsi_target_do_login_rx.__key, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extract_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_login_request._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_locate_portal._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_do_login_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_do_login._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_do_login._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_handle_csg_zero._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_handle_csg_zero._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_handle_csg_zero._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_first_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_first_request._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_first_request._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_check_first_request._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_do_authentication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_do_authentication._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_handle_authentication._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_target_handle_csg_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @convert_null_to_semi(ptr nocapture noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp8 = icmp sgt i32 %len, 0
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.09
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 59, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @extract_param(ptr noundef readonly %in_buf, ptr noundef readonly %pattern, i32 noundef %max_length, ptr noundef writeonly %out_buf, ptr noundef writeonly %type) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %in_buf, null
  %tobool1.not = icmp eq ptr %pattern, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %out_buf, null
  %or.cond57 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %type, null
  %or.cond58 = or i1 %or.cond57, %tobool5.not
  br i1 %or.cond58, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @strstr(ptr noundef nonnull %in_buf, ptr noundef nonnull %pattern)
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %strchr = tail call ptr @strchr(ptr noundef nonnull %call, i32 61)
  %tobool10.not = icmp eq ptr %strchr, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %add.ptr = getelementptr i8, ptr %strchr, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp = icmp eq i8 %1, 48
  br i1 %cmp, label %land.lhs.true, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end12
  %add.ptr14 = getelementptr i8, ptr %strchr, i32 2
  %2 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr14, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %land.lhs.true.if.end25_crit_edge [
    i8 120, label %land.lhs.true.if.then23_crit_edge
    i8 88, label %land.lhs.true.if.then23_crit_edge67
  ]

land.lhs.true.if.then23_crit_edge67:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge67
  %add.ptr24 = getelementptr i8, ptr %strchr, i32 3
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  %storemerge = phi i8 [ 1, %if.then23 ], [ 0, %land.lhs.true.if.end25_crit_edge ], [ 0, %if.end12.if.end25_crit_edge ]
  %ptr.0 = phi ptr [ %add.ptr24, %if.then23 ], [ %add.ptr, %land.lhs.true.if.end25_crit_edge ], [ %add.ptr, %if.end12.if.end25_crit_edge ]
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %type, align 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %if.end25
  %i.0.i = phi i32 [ 0, %if.end25 ], [ %inc.i, %if.end.i ]
  %arrayidx.i = getelementptr i8, ptr %ptr.0, i32 %i.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %7, label %if.end.i [
    i8 0, label %while.cond.i.cleanup_crit_edge
    i8 59, label %strlen_semi.exit
  ]

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %i.0.i, 1
  br label %while.cond.i

strlen_semi.exit:                                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp27 = icmp slt i32 %i.0.i, 0
  br i1 %cmp27, label %strlen_semi.exit.cleanup_crit_edge, label %if.end30

strlen_semi.exit.cleanup_crit_edge:               ; preds = %strlen_semi.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %strlen_semi.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %max_length)
  %cmp31.not = icmp ult i32 %i.0.i, %max_length
  br i1 %cmp31.not, label %if.end35, label %do.end

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.0.i, i32 noundef %max_length) #13
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %9 = call ptr @memcpy(ptr %out_buf, ptr %ptr.0, i32 %i.0.i)
  %arrayidx = getelementptr i8, ptr %out_buf, i32 %i.0.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end, %strlen_semi.exit.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end35 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ -1, %strlen_semi.exit.cleanup_crit_edge ], [ -1, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_target_check_login_request(ptr noundef %conn, ptr nocapture noundef readonly %login) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17
  %dlength = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 5
  %0 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dlength, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx2 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 6
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %shl
  %arrayidx6 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 7
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %or8 = or i32 %or, %conv7
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %req, align 4
  %8 = and i8 %7, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cond = icmp eq i8 %8, 3
  br i1 %cond, label %sw.epilog, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = zext i8 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %and) #13
  %call13 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %conv14 = zext i8 %10 to i32
  %and18 = and i32 %conv14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %11 = and i32 %conv14, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %11)
  %.not = icmp eq i32 %11, 192
  br i1 %.not, label %do.end22, label %if.end

do.end22:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  %call25 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %and28 = lshr i32 %conv14, 2
  %12 = and i32 %and28, 3
  %and31 = and i32 %conv14, 3
  %current_stage = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 2
  %13 = ptrtoint ptr %current_stage to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %current_stage, align 2
  %conv32 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv32)
  %cmp.not = icmp eq i32 %12, %conv32
  br i1 %cmp.not, label %if.end43, label %do.end37

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv32, i32 noundef %12) #13
  %call42 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and31)
  %cmp44 = icmp ne i32 %and31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp46 = icmp ult i32 %12, 2
  %or.cond160 = select i1 %cmp44, i1 %cmp46, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %and31, i32 %12)
  %cmp54.not = icmp ugt i32 %and31, %12
  %or.cond161 = select i1 %tobool19.not, i1 true, i1 %cmp54.not
  %or.cond162 = select i1 %or.cond160, i1 %or.cond161, i1 false
  br i1 %or.cond162, label %if.end66, label %do.end59

do.end59:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %15 = and i8 %10, -128
  %and63 = zext i8 %15 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %and31, i32 noundef %and63) #13
  %call65 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end66:                                         ; preds = %if.end43
  %max_version = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 2
  %16 = ptrtoint ptr %max_version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_version, align 2
  %version_max = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 6
  %18 = ptrtoint ptr %version_max to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %version_max, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp69.not = icmp eq i8 %17, %19
  br i1 %cmp69.not, label %lor.lhs.false71, label %if.end66.do.end79_crit_edge

if.end66.do.end79_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

lor.lhs.false71:                                  ; preds = %if.end66
  %min_version = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 3
  %20 = ptrtoint ptr %min_version to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %min_version, align 1
  %version_min = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 5
  %22 = ptrtoint ptr %version_min to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %version_min, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp74.not = icmp eq i8 %21, %23
  br i1 %cmp74.not, label %if.end87, label %lor.lhs.false71.do.end79_crit_edge

lor.lhs.false71.do.end79_crit_edge:               ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end79

do.end79:                                         ; preds = %lor.lhs.false71.do.end79_crit_edge, %if.end66.do.end79_crit_edge
  %conv82 = zext i8 %17 to i32
  %min_version83 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 3
  %24 = ptrtoint ptr %min_version83 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %min_version83, align 1
  %conv84 = zext i8 %25 to i32
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv82, i32 noundef %conv84) #13
  %call86 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end87:                                         ; preds = %lor.lhs.false71
  %isid = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 8
  %isid89 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 10
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %isid, ptr noundef dereferenceable(6) %isid89, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp92.not = icmp eq i32 %bcmp, 0
  br i1 %cmp92.not, label %if.end101, label %do.end97

do.end97:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %call100 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end101:                                        ; preds = %if.end87
  %itt = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 16
  %26 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %itt, align 4
  %init_task_tag = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 12
  %28 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %init_task_tag, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp102.not = icmp eq i32 %27, %29
  br i1 %cmp102.not, label %if.end112, label %do.end107

do.end107:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %27) #13
  %call111 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end112:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %or8)
  %cmp113 = icmp ugt i32 %or8, 8192
  br i1 %cmp113, label %do.end118, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef 8192) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end118, %if.end112.cleanup_crit_edge, %do.end107, %do.end97, %do.end79, %do.end59, %do.end37, %do.end22, %do.end
  %retval.0 = phi i32 [ -1, %do.end22 ], [ -1, %do.end37 ], [ -1, %do.end59 ], [ -1, %do.end79 ], [ -1, %do.end97 ], [ -1, %do.end107 ], [ -1, %do.end118 ], [ -1, %do.end ], [ 0, %if.end112.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_tx_login_rsp(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_target_locate_portal(ptr noundef %np, ptr noundef %conn, ptr nocapture noundef %login) local_unnamed_addr #2 align 64 {
entry:
  %key = alloca ptr, align 4
  %value = alloca ptr, align 4
  %tpg_np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #10
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %key, align 4, !annotation !254
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %value, align 4, !annotation !254
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %2 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tpg_np) #10
  %4 = ptrtoint ptr %tpg_np to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tpg_np, align 4
  %login_work = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40
  tail call void @__init_work(ptr noundef %login_work, i32 noundef 0) #10
  %5 = ptrtoint ptr %login_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %login_work, align 4
  %lockdep_map = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @iscsi_target_locate_portal.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40, i32 0, i32 1
  %6 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @iscsi_target_do_login_rx, ptr %func, align 4
  %timer = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.29, ptr noundef nonnull @iscsi_target_locate_portal.__key.28) #10
  %sock.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %9 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sock.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.iscsi_target_set_sock_callbacks.exit_crit_edge, label %if.end.i

entry.iscsi_target_set_sock_callbacks.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_set_sock_callbacks.exit

if.end.i:                                         ; preds = %entry
  %sk2.i = getelementptr inbounds %struct.socket, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk2.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_set_sock_callbacks.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_locate_portal, %if.then6.i)) #10
          to label %do.end.i [label %if.then6.i], !srcloc !255

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_set_sock_callbacks.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.75, ptr noundef %conn) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.end.i
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 72
  %13 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %conn, ptr %sk_user_data.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk_data_ready.i, align 8
  %orig_data_ready.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 37
  %16 = ptrtoint ptr %orig_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %orig_data_ready.i, align 8
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 76
  %17 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk_state_change.i, align 4
  %orig_state_change.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 38
  %19 = ptrtoint ptr %orig_state_change.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %orig_state_change.i, align 4
  store ptr @iscsi_target_sk_data_ready, ptr %sk_data_ready.i, align 8
  store ptr @iscsi_target_sk_state_change, ptr %sk_state_change.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 31
  %20 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1500, ptr %sk_sndtimeo.i, align 8
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 62
  %21 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1500, ptr %sk_rcvtimeo.i, align 4
  br label %iscsi_target_set_sock_callbacks.exit

iscsi_target_set_sock_callbacks.exit:             ; preds = %do.end.i, %entry.iscsi_target_set_sock_callbacks.exit_crit_edge
  %np18 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 22
  %22 = ptrtoint ptr %np18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %np, ptr %np18, align 16
  %dlength = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 5
  %23 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dlength, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx20 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 6
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %26 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl22, %shl
  %arrayidx24 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 7
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %28 to i32
  %or26 = or i32 %or, %conv25
  %req_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 19
  %29 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req_buf, align 4
  %call = tail call ptr @kmemdup_nul(ptr noundef %30, i32 noundef %or26, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end29, label %if.end

do.end29:                                         ; preds = %iscsi_target_set_sock_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #13
  br label %cleanup

if.end:                                           ; preds = %iscsi_target_set_sock_callbacks.exit
  %add.ptr = getelementptr i8, ptr %call, i32 %or26
  %cmp320 = icmp ult ptr %call, %add.ptr
  br i1 %cmp320, label %if.end.while.body_crit_edge, label %if.end.do.end58_crit_edge

if.end.do.end58_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %if.end.while.body_crit_edge
  %i_buf.0324 = phi ptr [ %i_buf.1, %if.end49.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %s_buf.0323 = phi ptr [ %s_buf.1, %if.end49.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %t_buf.0322 = phi ptr [ %t_buf.1, %if.end49.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %start.0321 = phi ptr [ %add.ptr53, %if.end49.while.body_crit_edge ], [ %call, %if.end.while.body_crit_edge ]
  %call32 = call i32 @iscsi_extract_key_value(ptr noundef %start.0321, ptr noundef nonnull %key, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %while.body.out_crit_edge, label %if.end36

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end36:                                         ; preds = %while.body
  %31 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key, align 4
  %call37 = call i32 @strncmp(ptr noundef %32, ptr noundef nonnull dereferenceable(14) @.str.32, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %value, align 4
  br label %if.end49

if.else:                                          ; preds = %if.end36
  %call40 = call i32 @strncmp(ptr noundef %32, ptr noundef nonnull dereferenceable(12) @.str.33, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value, align 4
  br label %if.end49

if.else43:                                        ; preds = %if.else
  %call44 = call i32 @strncmp(ptr noundef %32, ptr noundef nonnull dereferenceable(11) @.str.34, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else43.if.end49_crit_edge

if.else43.if.end49_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.else43.if.end49_crit_edge, %if.then42, %if.then39
  %t_buf.1 = phi ptr [ %t_buf.0322, %if.else43.if.end49_crit_edge ], [ %38, %if.then46 ], [ %t_buf.0322, %if.then42 ], [ %t_buf.0322, %if.then39 ]
  %s_buf.1 = phi ptr [ %s_buf.0323, %if.else43.if.end49_crit_edge ], [ %s_buf.0323, %if.then46 ], [ %36, %if.then42 ], [ %s_buf.0323, %if.then39 ]
  %i_buf.1 = phi ptr [ %i_buf.0324, %if.else43.if.end49_crit_edge ], [ %i_buf.0324, %if.then46 ], [ %i_buf.0324, %if.then42 ], [ %34, %if.then39 ]
  %call50 = call i32 @strlen(ptr noundef %32) #14
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value, align 4
  %call51 = call i32 @strlen(ptr noundef %40) #14
  %add = add i32 %call50, 2
  %add52 = add i32 %add, %call51
  %add.ptr53 = getelementptr i8, ptr %start.0321, i32 %add52
  %cmp = icmp ult ptr %add.ptr53, %add.ptr
  br i1 %cmp, label %if.end49.while.body_crit_edge, label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end49
  %tobool54.not = icmp eq ptr %i_buf.1, null
  br i1 %tobool54.not, label %while.end.do.end58_crit_edge, label %if.end62

while.end.do.end58_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.end58:                                         ; preds = %while.end.do.end58_crit_edge, %if.end.do.end58_crit_edge
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  %call61 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 7) #10
  br label %out

if.end62:                                         ; preds = %while.end
  %call.i = call i32 @strlen(ptr noundef nonnull %i_buf.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp11.not.i, label %if.end62.iscsi_initiatorname_tolower.exit_crit_edge, label %if.end62.for.body.i_crit_edge

if.end62.for.body.i_crit_edge:                    ; preds = %if.end62
  br label %for.body.i

if.end62.iscsi_initiatorname_tolower.exit_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_initiatorname_tolower.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end62.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end62.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %i_buf.1, i32 %i.012.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %42 to i32
  %arrayidx1.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %43 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx1.i, align 1
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp3.not.i = icmp eq i8 %45, 0
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i311

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i311:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i8 %42, 32
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sub.i.i, ptr %arrayidx.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i311, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.iscsi_initiatorname_tolower.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.iscsi_initiatorname_tolower.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_initiatorname_tolower.exit

iscsi_initiatorname_tolower.exit:                 ; preds = %for.inc.i.iscsi_initiatorname_tolower.exit_crit_edge, %if.end62.iscsi_initiatorname_tolower.exit_crit_edge
  %tobool63.not = icmp eq ptr %s_buf.1, null
  br i1 %tobool63.not, label %if.then64, label %if.end74

if.then64:                                        ; preds = %iscsi_initiatorname_tolower.exit
  %leading_connection = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 3
  %47 = ptrtoint ptr %leading_connection to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %leading_connection, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool65.not = icmp eq i8 %48, 0
  br i1 %tobool65.not, label %if.then64.get_target_crit_edge, label %do.end70

if.then64.get_target_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_target

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  %call73 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 7) #10
  br label %out

if.end74:                                         ; preds = %iscsi_initiatorname_tolower.exit
  %call75 = call i32 @strncmp(ptr noundef nonnull %s_buf.1, ptr noundef nonnull dereferenceable(10) @.str.41, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end74.get_target_crit_edge

if.end74.get_target_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_target

if.then77:                                        ; preds = %if.end74
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %49 = load ptr, ptr @iscsit_global, align 4
  %discovery_tpg = getelementptr inbounds %struct.iscsit_global, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %discovery_tpg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %discovery_tpg, align 4
  %tpg = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %52 = ptrtoint ptr %tpg to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %tpg, align 4
  %leading_connection78 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 3
  %53 = ptrtoint ptr %leading_connection78 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %leading_connection78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool79.not = icmp eq i8 %54, 0
  br i1 %tobool79.not, label %if.then77.get_target_crit_edge, label %if.end81

if.then77.get_target_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_target

if.end81:                                         ; preds = %if.then77
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 47
  %55 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sess_ops, align 8
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %SessionType to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %SessionType, align 1
  %call82 = call i32 @iscsi_login_setup_crypto(ptr noundef %conn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end88, label %if.end91

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  br label %out

if.end91:                                         ; preds = %if.end81
  %58 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tpg, align 4
  %call93 = call i32 @iscsit_access_np(ptr noundef %np, ptr noundef %59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end91.alloc_tags.thread_crit_edge

if.end91.alloc_tags.thread_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_tags.thread

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %call97 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  br label %out

get_target:                                       ; preds = %if.then77.get_target_crit_edge, %if.end74.get_target_crit_edge, %if.then64.get_target_crit_edge
  %tobool100.not = icmp eq ptr %t_buf.1, null
  br i1 %tobool100.not, label %do.end104, label %if.end108

do.end104:                                        ; preds = %get_target
  call void @__sanitizer_cov_trace_pc() #12
  %call106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #13
  %call107 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 7) #10
  br label %out

if.end108:                                        ; preds = %get_target
  %call109 = call ptr @iscsit_get_tiqn_for_login(ptr noundef nonnull %t_buf.1) #10
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %do.end114, label %do.body119

do.end114:                                        ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %call116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull %t_buf.1) #13
  %call117 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  br label %out

do.body119:                                       ; preds = %if.end108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_locate_portal.__UNIQUE_ID_ddebug483, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_locate_portal, %if.then125)) #10
          to label %do.end130 [label %if.then125], !srcloc !255

if.then125:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_locate_portal.__UNIQUE_ID_ddebug483, ptr noundef nonnull @.str.52, ptr noundef nonnull %call109) #10
  br label %do.end130

do.end130:                                        ; preds = %if.then125, %do.body119
  %call131 = call ptr @iscsit_get_tpg_from_np(ptr noundef nonnull %call109, ptr noundef %np, ptr noundef nonnull %tpg_np) #10
  %tpg132 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %60 = ptrtoint ptr %tpg132 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call131, ptr %tpg132, align 4
  %tobool134.not = icmp eq ptr %call131, null
  br i1 %tobool134.not, label %do.end138, label %if.end144

do.end138:                                        ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %call109) #13
  call void @iscsit_put_tiqn_for_login(ptr noundef nonnull %call109) #10
  %call143 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  br label %out

if.end144:                                        ; preds = %do.end130
  %61 = ptrtoint ptr %tpg_np to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tpg_np, align 4
  %tpg_np145 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 67
  %63 = ptrtoint ptr %tpg_np145 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %tpg_np145, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_locate_portal.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_locate_portal, %if.then158)) #10
          to label %do.end163 [label %if.then158], !srcloc !255

if.then158:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %tpg132 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tpg132, align 4
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tpgt, align 8
  %conv160 = zext i16 %67 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_locate_portal.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.56, i32 noundef %conv160) #10
  br label %do.end163

do.end163:                                        ; preds = %if.then158, %if.end144
  %call164 = call i32 @iscsi_login_setup_crypto(ptr noundef %conn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %do.end170, label %if.end175

do.end170:                                        ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #12
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #13
  %68 = ptrtoint ptr %tpg_np to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tpg_np, align 4
  %tpg_np_kref = getelementptr inbounds %struct.iscsi_tpg_np, ptr %69, i32 0, i32 9
  call fastcc void @kref_put(ptr noundef %tpg_np_kref)
  call void @iscsit_put_tiqn_for_login(ptr noundef nonnull %call109) #10
  %70 = ptrtoint ptr %tpg132 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %tpg132, align 4
  br label %out

if.end175:                                        ; preds = %do.end163
  %71 = ptrtoint ptr %tpg132 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tpg132, align 4
  %call177 = call i32 @iscsit_access_np(ptr noundef %np, ptr noundef %72) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178 = icmp slt i32 %call177, 0
  br i1 %cmp178, label %if.then180, label %if.end185

if.then180:                                       ; preds = %if.end175
  %73 = ptrtoint ptr %tpg_np to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tpg_np, align 4
  %tpg_np_kref181 = getelementptr inbounds %struct.iscsi_tpg_np, ptr %74, i32 0, i32 9
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %tpg_np_kref181, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  call void @llvm.prefetch.p0(ptr %tpg_np_kref181, i32 1, i32 3, i32 1) #10
  %75 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tpg_np_kref181, ptr %tpg_np_kref181, i32 1, ptr elementtype(i32) %tpg_np_kref181) #10, !srcloc !257
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !258

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %tpg_np_kref181, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  call void @iscsit_login_kref_put(ptr noundef %tpg_np_kref181) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  call void @iscsit_put_tiqn_for_login(ptr noundef nonnull %call109) #10
  %call183 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 1) #10
  %76 = ptrtoint ptr %tpg132 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %tpg132, align 4
  br label %out

if.end185:                                        ; preds = %if.end175
  %leading_connection186 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 3
  %77 = ptrtoint ptr %leading_connection186 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %leading_connection186, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool187.not = icmp eq i8 %78, 0
  br i1 %tobool187.not, label %if.end185.out_crit_edge, label %if.end189

if.end185.out_crit_edge:                          ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end189:                                        ; preds = %if.end185
  %sess_ops190 = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 47
  %79 = ptrtoint ptr %sess_ops190 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sess_ops190, align 8
  %SessionType191 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %80, i32 0, i32 17
  %81 = ptrtoint ptr %SessionType191 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %SessionType191, align 1
  %82 = ptrtoint ptr %tpg132 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tpg132, align 4
  %tpg_se_tpg = getelementptr inbounds %struct.iscsi_portal_group, ptr %83, i32 0, i32 9
  %call193 = call ptr @core_tpg_check_initiator_node_acl(ptr noundef %tpg_se_tpg, ptr noundef nonnull %i_buf.1) #10
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 48
  %84 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call193, ptr %se_node_acl, align 8
  %87 = load ptr, ptr %se_sess, align 4
  %se_node_acl195 = getelementptr inbounds %struct.se_session, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %se_node_acl195 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %se_node_acl195, align 8
  %tobool196.not = icmp eq ptr %89, null
  br i1 %tobool196.not, label %do.end200, label %alloc_tags

do.end200:                                        ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %tpg132 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tpg132, align 4
  %tpgt203 = getelementptr inbounds %struct.iscsi_portal_group, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %tpgt203 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %tpgt203, align 8
  %conv204 = zext i16 %93 to i32
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull %i_buf.1, i32 noundef %conv204) #13
  %call206 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 2) #10
  br label %out

alloc_tags:                                       ; preds = %if.end189
  %queue_depth210 = getelementptr inbounds %struct.se_node_acl, ptr %89, i32 0, i32 3
  %94 = ptrtoint ptr %queue_depth210 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %queue_depth210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %95)
  %cmp212 = icmp ult i32 %95, 16
  br i1 %cmp212, label %alloc_tags.alloc_tags.thread_crit_edge, label %alloc_tags._crit_edge

alloc_tags._crit_edge:                            ; preds = %alloc_tags
  call void @__sanitizer_cov_trace_pc() #12
  br label %96

alloc_tags.alloc_tags.thread_crit_edge:           ; preds = %alloc_tags
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_tags.thread

alloc_tags.thread:                                ; preds = %alloc_tags.alloc_tags.thread_crit_edge, %if.end91.alloc_tags.thread_crit_edge
  br label %96

96:                                               ; preds = %alloc_tags.thread, %alloc_tags._crit_edge
  %97 = phi i32 [ 16, %alloc_tags.thread ], [ %95, %alloc_tags._crit_edge ]
  %mul = shl i32 %97, 1
  %add214 = add i32 %mul, 8
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %98 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %conn_transport, align 8
  %priv_size = getelementptr inbounds %struct.iscsit_transport, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %priv_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %priv_size, align 4
  %add215 = add i32 %101, 1280
  %se_sess216 = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 48
  %102 = ptrtoint ptr %se_sess216 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %se_sess216, align 4
  %call217 = call i32 @transport_alloc_session_tags(ptr noundef %103, i32 noundef %add214, i32 noundef %add215) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %.out_crit_edge

.out_crit_edge:                                   ; preds = %96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then220:                                       ; preds = %96
  call void @__sanitizer_cov_trace_pc() #12
  %call221 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #10
  br label %out

out:                                              ; preds = %if.then220, %.out_crit_edge, %do.end200, %if.end185.out_crit_edge, %kref_put.exit, %do.end170, %do.end138, %do.end114, %do.end104, %if.then96, %do.end88, %do.end70, %do.end58, %while.body.out_crit_edge
  %ret.0 = phi i32 [ -1, %do.end170 ], [ -1, %kref_put.exit ], [ -1, %if.then220 ], [ %call217, %.out_crit_edge ], [ -1, %do.end200 ], [ -1, %do.end138 ], [ -1, %do.end114 ], [ -1, %do.end104 ], [ -1, %do.end88 ], [ -1, %if.then96 ], [ -1, %do.end70 ], [ -1, %do.end58 ], [ 0, %if.end185.out_crit_edge ], [ -1, %while.body.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end29
  %retval.0 = phi i32 [ %ret.0, %out ], [ -1, %do.end29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tpg_np) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_target_do_login_rx(ptr noundef %work) #2 align 64 {
entry:
  %timeout = alloca %struct.conn_timeout, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -804
  %login1 = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %login1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %login1, align 8
  %np2 = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %np2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np2, align 16
  %tpg3 = getelementptr i8, ptr %work, i32 584
  %4 = ptrtoint ptr %tpg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpg3, align 4
  %tpg_np4 = getelementptr i8, ptr %work, i32 588
  %6 = ptrtoint ptr %tpg_np4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tpg_np4, align 16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timeout) #10
  %8 = call ptr @memset(ptr %timeout, i32 255, i32 52)
  %zero_tsih5 = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %zero_tsih5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %zero_tsih5, align 1, !range !260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i32 @llvm.read_register.i32(metadata !244) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 68
  %15 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.63, ptr noundef %add.ptr, ptr noundef %comm, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sock.i = getelementptr i8, ptr %work, i32 -16
  %17 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sock.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %do.end.if.end17_crit_edge, label %iscsi_target_sk_check_flag.exit

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

iscsi_target_sk_check_flag.exit:                  ; preds = %do.end
  %sk2.i = getelementptr inbounds %struct.socket, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk2.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %20, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %login_flags.i = getelementptr i8, ptr %work, i32 -4
  %21 = ptrtoint ptr %login_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %login_flags.i, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.i.not = icmp eq i32 %23, 0
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br i1 %tobool3.i.not, label %iscsi_target_sk_check_flag.exit.if.end17_crit_edge, label %if.then14

iscsi_target_sk_check_flag.exit.if.end17_crit_edge: ; preds = %iscsi_target_sk_check_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %iscsi_target_sk_check_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

if.end17:                                         ; preds = %iscsi_target_sk_check_flag.exit.if.end17_crit_edge, %do.end.if.end17_crit_edge
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #10
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tpg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp eq i32 %26, 1
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock) #10
  br i1 %cmp, label %if.end39, label %do.body23

do.body23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %if.then35)) #10
          to label %err [label %if.then35], !srcloc !255

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.64) #10
  br label %err

if.end39:                                         ; preds = %if.end17
  %27 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sock.i, align 4
  %tobool.not.i220 = icmp eq ptr %28, null
  br i1 %tobool.not.i220, label %if.end39.if.end58_crit_edge, label %if.then.i223

if.end39.if.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then.i223:                                     ; preds = %if.end39
  %sk2.i221 = getelementptr inbounds %struct.socket, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %sk2.i221 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sk2.i221, align 16
  %sk_callback_lock.i222 = getelementptr inbounds %struct.sock, ptr %30, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock.i222) #10
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %32)
  %cmp.i.i = icmp eq i8 %32, 8
  br i1 %cmp.i.i, label %if.then.i223.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i223.do.body.i.i_crit_edge:               ; preds = %if.then.i223
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i223
  %33 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %34)
  %cmp5.i.i = icmp eq i8 %34, 7
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.do.body.i.i_crit_edge, label %lor.rhs.i

lor.lhs.false.i.i.do.body.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i.do.body.i.i_crit_edge, %if.then.i223.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %iscsi_target_sk_check_close.exit.thread252)) #10
          to label %do.body42.sink.split [label %iscsi_target_sk_check_close.exit.thread252], !srcloc !255

iscsi_target_sk_check_close.exit.thread252:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.70) #10
  br label %do.body42.sink.split

lor.rhs.i:                                        ; preds = %lor.lhs.false.i.i
  %login_flags.i224 = getelementptr i8, ptr %work, i32 -4
  %35 = ptrtoint ptr %login_flags.i224 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %login_flags.i224, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.i.not = icmp eq i32 %37, 0
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i222) #10
  br i1 %tobool4.i.not, label %lor.rhs.i.if.end58_crit_edge, label %lor.rhs.i.do.body42_crit_edge

lor.rhs.i.do.body42_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body42

lor.rhs.i.if.end58_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.body42.sink.split:                             ; preds = %iscsi_target_sk_check_close.exit.thread252, %do.body.i.i
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i222) #10
  br label %do.body42

do.body42:                                        ; preds = %do.body42.sink.split, %lor.rhs.i.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %if.then54)) #10
          to label %err [label %if.then54], !srcloc !255

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.65) #10
  br label %err

if.end58:                                         ; preds = %lor.rhs.i.if.end58_crit_edge, %if.end39.if.end58_crit_edge
  %38 = tail call i32 @llvm.read_register.i32(metadata !244) #10
  %and.i226 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i226 to ptr
  %task60 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task60, align 8
  %login_kworker = getelementptr i8, ptr %work, i32 248
  %42 = ptrtoint ptr %login_kworker to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %login_kworker, align 4
  tail call void @kernel_sigaction(i32 noundef 2, ptr noundef nonnull inttoptr (i32 2 to ptr)) #10
  %conn61 = getelementptr inbounds %struct.conn_timeout, ptr %timeout, i32 0, i32 1
  %43 = ptrtoint ptr %conn61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr, ptr %conn61, align 4
  call void @init_timer_on_stack_key(ptr noundef nonnull %timeout, ptr noundef nonnull @iscsi_target_login_timeout, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef nonnull @iscsi_target_do_login_rx.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %44, 1500
  %call66 = call i32 @mod_timer(ptr noundef nonnull %timeout, i32 noundef %add) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug473, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %if.then79)) #10
          to label %do.end89 [label %if.then79], !srcloc !255

if.then79:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task60, align 8
  %comm82 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 101
  %pid86 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 68
  %47 = ptrtoint ptr %pid86 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pid86, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug473, ptr noundef nonnull @.str.67, ptr noundef %comm82, i32 noundef %48) #10
  br label %do.end89

do.end89:                                         ; preds = %if.then79, %if.end58
  %conn_transport = getelementptr i8, ptr %work, i32 564
  %49 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %conn_transport, align 8
  %iscsit_get_login_rx = getelementptr inbounds %struct.iscsit_transport, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %iscsit_get_login_rx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iscsit_get_login_rx, align 4
  %call90 = call i32 %52(ptr noundef %add.ptr, ptr noundef %1) #10
  %call92 = call i32 @del_timer_sync(ptr noundef nonnull %timeout) #10
  call void @destroy_timer_on_stack(ptr noundef nonnull %timeout) #10
  %53 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task60, align 8
  call void @flush_signals(ptr noundef %54) #10
  %55 = ptrtoint ptr %login_kworker to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %login_kworker, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp97 = icmp slt i32 %call90, 0
  br i1 %cmp97, label %do.end89.err_crit_edge, label %do.body101

do.end89.err_crit_edge:                           ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

do.body101:                                       ; preds = %do.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug474, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %if.then113)) #10
          to label %do.end123 [label %if.then113], !srcloc !255

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %task60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task60, align 8
  %comm116 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 101
  %pid120 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 68
  %58 = ptrtoint ptr %pid120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pid120, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug474, ptr noundef nonnull @.str.68, ptr noundef %add.ptr, ptr noundef %comm116, i32 noundef %59) #10
  br label %do.end123

do.end123:                                        ; preds = %if.then113, %do.body101
  %60 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sock.i, align 4
  %tobool124.not = icmp eq ptr %61, null
  br i1 %tobool124.not, label %do.end123.if.end135_crit_edge, label %if.then125

do.end123.if.end135_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end135

if.then125:                                       ; preds = %do.end123
  %sk127 = getelementptr inbounds %struct.socket, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %sk127 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sk127, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %63, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %login_flags = getelementptr i8, ptr %work, i32 -4
  %64 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %login_flags, align 4
  %66 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool129.not = icmp eq i32 %66, 0
  br i1 %tobool129.not, label %if.then130, label %if.then125.if.end133_crit_edge

if.then125.if.end133_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then130:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 2, ptr noundef %login_flags) #10
  call void @_set_bit(i32 noundef 3, ptr noundef %login_flags) #10
  br label %if.end133

if.end133:                                        ; preds = %if.then130, %if.then125.if.end133_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %if.end135

if.end135:                                        ; preds = %if.end133, %do.end123.if.end135_crit_edge
  %call136 = call fastcc i32 @iscsi_target_do_login(ptr noundef %add.ptr, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end135.err_crit_edge, label %if.else

if.end135.err_crit_edge:                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.else:                                          ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool140.not = icmp eq i32 %call136, 0
  br i1 %tobool140.not, label %if.then141, label %if.then148

if.then141:                                       ; preds = %if.else
  %67 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sock.i, align 4
  %tobool.not.i228 = icmp eq ptr %68, null
  br i1 %tobool.not.i228, label %if.then141.cleanup_crit_edge, label %if.then.i233

if.then141.cleanup_crit_edge:                     ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i233:                                     ; preds = %if.then141
  %sk2.i229 = getelementptr inbounds %struct.socket, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %sk2.i229 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sk2.i229, align 16
  %sk_callback_lock.i230 = getelementptr inbounds %struct.sock, ptr %70, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i230) #10
  %skc_state.i.i231 = getelementptr inbounds %struct.sock_common, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %skc_state.i.i231 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load volatile i8, ptr %skc_state.i.i231, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %72)
  %cmp.i.i232 = icmp eq i8 %72, 8
  br i1 %cmp.i.i232, label %if.then.i233.do.body.i.i236_crit_edge, label %lor.lhs.false.i.i235

if.then.i233.do.body.i.i236_crit_edge:            ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i236

lor.lhs.false.i.i235:                             ; preds = %if.then.i233
  %73 = ptrtoint ptr %skc_state.i.i231 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load volatile i8, ptr %skc_state.i.i231, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %74)
  %cmp5.i.i234 = icmp eq i8 %74, 7
  br i1 %cmp5.i.i234, label %lor.lhs.false.i.i235.do.body.i.i236_crit_edge, label %lor.rhs.i238

lor.lhs.false.i.i235.do.body.i.i236_crit_edge:    ; preds = %lor.lhs.false.i.i235
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i236

do.body.i.i236:                                   ; preds = %lor.lhs.false.i.i235.do.body.i.i236_crit_edge, %if.then.i233.do.body.i.i236_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %lor.end.thread.i)) #10
          to label %iscsi_target_sk_check_and_clear.exit [label %lor.end.thread.i], !srcloc !255

lor.end.thread.i:                                 ; preds = %do.body.i.i236
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.70) #10
  br label %iscsi_target_sk_check_and_clear.exit.thread257

lor.rhs.i238:                                     ; preds = %lor.lhs.false.i.i235
  %login_flags.i237 = getelementptr i8, ptr %work, i32 -4
  %75 = ptrtoint ptr %login_flags.i237 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %login_flags.i237, align 4
  %77 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool4.not.i = icmp eq i32 %77, 0
  br i1 %tobool4.not.i, label %iscsi_target_sk_check_and_clear.exit.thread258, label %lor.rhs.i238.iscsi_target_sk_check_and_clear.exit.thread257_crit_edge

lor.rhs.i238.iscsi_target_sk_check_and_clear.exit.thread257_crit_edge: ; preds = %lor.rhs.i238
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_sk_check_and_clear.exit.thread257

iscsi_target_sk_check_and_clear.exit.thread258:   ; preds = %lor.rhs.i238
  call void @__sanitizer_cov_trace_pc() #12
  call void @_clear_bit(i32 noundef 3, ptr noundef %login_flags.i237) #10
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i230) #10
  br label %cleanup

iscsi_target_sk_check_and_clear.exit.thread257:   ; preds = %lor.rhs.i238.iscsi_target_sk_check_and_clear.exit.thread257_crit_edge, %lor.end.thread.i
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i230) #10
  br label %err

iscsi_target_sk_check_and_clear.exit:             ; preds = %do.body.i.i236
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i230) #10
  br label %err

if.then148:                                       ; preds = %if.else
  %call150 = call zeroext i1 @cancel_delayed_work(ptr noundef %work) #10
  %conn_login.i = getelementptr i8, ptr %work, i32 560
  %78 = ptrtoint ptr %conn_login.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %conn_login.i, align 4
  %tobool.not.i240 = icmp eq ptr %79, null
  br i1 %tobool.not.i240, label %if.then148.iscsi_target_nego_release.exit_crit_edge, label %if.end.i241

if.then148.iscsi_target_nego_release.exit_crit_edge: ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_nego_release.exit

if.end.i241:                                      ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #12
  %req_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %79, i32 0, i32 19
  %80 = ptrtoint ptr %req_buf.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %req_buf.i, align 4
  call void @kfree(ptr noundef %81) #10
  %rsp_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %79, i32 0, i32 20
  %82 = ptrtoint ptr %rsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rsp_buf.i, align 8
  call void @kfree(ptr noundef %83) #10
  call void @kfree(ptr noundef nonnull %79) #10
  %84 = ptrtoint ptr %conn_login.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %conn_login.i, align 4
  br label %iscsi_target_nego_release.exit

iscsi_target_nego_release.exit:                   ; preds = %if.end.i241, %if.then148.iscsi_target_nego_release.exit_crit_edge
  call void @iscsi_post_login_handler(ptr noundef %3, ptr noundef %add.ptr, i8 noundef zeroext %10) #10
  %call152 = call i32 @iscsit_deaccess_np(ptr noundef %3, ptr noundef %5, ptr noundef %7) #10
  br label %cleanup

err:                                              ; preds = %iscsi_target_sk_check_and_clear.exit, %iscsi_target_sk_check_and_clear.exit.thread257, %if.end135.err_crit_edge, %do.end89.err_crit_edge, %if.then54, %do.body42, %if.then35, %do.body23
  %85 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sock.i, align 4
  %tobool.not.i243 = icmp eq ptr %86, null
  br i1 %tobool.not.i243, label %err.iscsi_target_restore_sock_callbacks.exit_crit_edge, label %if.end.i245

err.iscsi_target_restore_sock_callbacks.exit_crit_edge: ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_restore_sock_callbacks.exit

if.end.i245:                                      ; preds = %err
  %sk2.i244 = getelementptr inbounds %struct.socket, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %sk2.i244 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sk2.i244, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login_rx, %if.then6.i246)) #10
          to label %do.end.i [label %if.then6.i246], !srcloc !255

if.then6.i246:                                    ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.128, ptr noundef %add.ptr) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i246, %if.end.i245
  %sk_callback_lock.i247 = getelementptr inbounds %struct.sock, ptr %88, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i247) #10
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %88, i32 0, i32 72
  %89 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sk_user_data.i, align 4
  %tobool8.not.i = icmp eq ptr %90, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i247) #10
  br label %iscsi_target_restore_sock_callbacks.exit

if.end11.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %sk_user_data.i, align 4
  %orig_data_ready.i = getelementptr i8, ptr %work, i32 -12
  %92 = ptrtoint ptr %orig_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %orig_data_ready.i, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %88, i32 0, i32 77
  %94 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %sk_data_ready.i, align 8
  %orig_state_change.i = getelementptr i8, ptr %work, i32 -8
  %95 = ptrtoint ptr %orig_state_change.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %orig_state_change.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %88, i32 0, i32 76
  %97 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %sk_state_change.i, align 4
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i247) #10
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %88, i32 0, i32 31
  %98 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2147483647, ptr %sk_sndtimeo.i, align 8
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %88, i32 0, i32 62
  %99 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2147483647, ptr %sk_rcvtimeo.i, align 4
  br label %iscsi_target_restore_sock_callbacks.exit

iscsi_target_restore_sock_callbacks.exit:         ; preds = %if.end11.i, %if.then9.i, %err.iscsi_target_restore_sock_callbacks.exit_crit_edge
  %call157 = call zeroext i1 @cancel_delayed_work(ptr noundef %work) #10
  %100 = ptrtoint ptr %zero_tsih5 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %zero_tsih5, align 1, !range !260
  %auth_protocol.i.i = getelementptr i8, ptr %work, i32 572
  %102 = ptrtoint ptr %auth_protocol.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %auth_protocol.i.i, align 32
  call void @kfree(ptr noundef %103) #10
  %conn_login.i.i = getelementptr i8, ptr %work, i32 560
  %104 = ptrtoint ptr %conn_login.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %conn_login.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %105, null
  br i1 %tobool.not.i.i, label %iscsi_target_restore_sock_callbacks.exit.iscsi_target_login_drop.exit_crit_edge, label %if.end.i.i

iscsi_target_restore_sock_callbacks.exit.iscsi_target_login_drop.exit_crit_edge: ; preds = %iscsi_target_restore_sock_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_login_drop.exit

if.end.i.i:                                       ; preds = %iscsi_target_restore_sock_callbacks.exit
  call void @__sanitizer_cov_trace_pc() #12
  %req_buf.i.i = getelementptr inbounds %struct.iscsi_login, ptr %105, i32 0, i32 19
  %106 = ptrtoint ptr %req_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %req_buf.i.i, align 4
  call void @kfree(ptr noundef %107) #10
  %rsp_buf.i.i = getelementptr inbounds %struct.iscsi_login, ptr %105, i32 0, i32 20
  %108 = ptrtoint ptr %rsp_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rsp_buf.i.i, align 8
  call void @kfree(ptr noundef %109) #10
  call void @kfree(ptr noundef nonnull %105) #10
  %110 = ptrtoint ptr %conn_login.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %conn_login.i.i, align 4
  br label %iscsi_target_login_drop.exit

iscsi_target_login_drop.exit:                     ; preds = %if.end.i.i, %iscsi_target_restore_sock_callbacks.exit.iscsi_target_login_drop.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.i = icmp ne i8 %101, 0
  call void @iscsi_target_login_sess_out(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i, i1 noundef zeroext true) #10
  %call158 = call i32 @iscsit_deaccess_np(ptr noundef %3, ptr noundef %5, ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %iscsi_target_login_drop.exit, %iscsi_target_nego_release.exit, %iscsi_target_sk_check_and_clear.exit.thread258, %if.then141.cleanup_crit_edge, %if.then14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timeout) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_extract_key_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_login_setup_crypto(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_access_np(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_tiqn_for_login(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_tpg_from_np(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_put_tiqn_for_login(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !257
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !258

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @iscsit_login_kref_put(ptr noundef %kref) #10
  br label %return

return:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_login_kref_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @core_tpg_check_initiator_node_acl(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_alloc_session_tags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_target_start_negotiation(ptr noundef %login, ptr noundef %conn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sk2 = getelementptr inbounds %struct.socket, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk2, align 16
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %login_flags = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 39
  tail call void @_set_bit(i32 noundef 0, ptr noundef %login_flags) #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %login_flags) #10
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @iscsi_target_do_login(ptr noundef %conn, ptr noundef %login)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sock, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end14_crit_edge, label %if.then.i

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i:                                        ; preds = %land.lhs.true
  %sk2.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk2.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 8
  br i1 %cmp.i.i, label %if.then.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.do.body.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %10 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp5.i.i = icmp eq i8 %11, 7
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.do.body.i.i_crit_edge, label %lor.rhs.i

lor.lhs.false.i.i.do.body.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i.do.body.i.i_crit_edge, %if.then.i.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_start_negotiation, %lor.end.thread.i)) #10
          to label %if.then9.sink.split [label %lor.end.thread.i], !srcloc !255

lor.end.thread.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.70) #10
  br label %if.then9.sink.split

lor.rhs.i:                                        ; preds = %lor.lhs.false.i.i
  %login_flags.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 39
  %12 = ptrtoint ptr %login_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %login_flags.i, align 4
  %14 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %iscsi_target_sk_check_and_clear.exit.thread38, label %lor.rhs.i.if.then9.sink.split_crit_edge

lor.rhs.i.if.then9.sink.split_crit_edge:          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.sink.split

iscsi_target_sk_check_and_clear.exit.thread38:    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %login_flags.i) #10
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br label %if.end14

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end8.if.then9_crit_edge, label %if.end8.if.then13_crit_edge

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.end8.if.then9_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9.sink.split:                              ; preds = %lor.rhs.i.if.then9.sink.split_crit_edge, %lor.end.thread.i, %do.body.i.i
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br label %if.then9

if.then9:                                         ; preds = %if.then9.sink.split, %if.end8.if.then9_crit_edge
  %ret.042 = phi i32 [ %call, %if.end8.if.then9_crit_edge ], [ -1, %if.then9.sink.split ]
  %login_work = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 40
  %call10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %login_work) #10
  %15 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sock, align 4
  %tobool.not.i29 = icmp eq ptr %16, null
  br i1 %tobool.not.i29, label %if.then9.iscsi_target_restore_sock_callbacks.exit_crit_edge, label %if.end.i31

if.then9.iscsi_target_restore_sock_callbacks.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_restore_sock_callbacks.exit

if.end.i31:                                       ; preds = %if.then9
  %sk2.i30 = getelementptr inbounds %struct.socket, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %sk2.i30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sk2.i30, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_start_negotiation, %if.then6.i32)) #10
          to label %do.end.i [label %if.then6.i32], !srcloc !255

if.then6.i32:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.128, ptr noundef %conn) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i32, %if.end.i31
  %sk_callback_lock.i33 = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i33) #10
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 72
  %19 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_user_data.i, align 4
  %tobool8.not.i = icmp eq ptr %20, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i33) #10
  br label %iscsi_target_restore_sock_callbacks.exit

if.end11.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sk_user_data.i, align 4
  %orig_data_ready.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 37
  %22 = ptrtoint ptr %orig_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %orig_data_ready.i, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 77
  %24 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %sk_data_ready.i, align 8
  %orig_state_change.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 38
  %25 = ptrtoint ptr %orig_state_change.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %orig_state_change.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 76
  %27 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %sk_state_change.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i33) #10
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 31
  %28 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2147483647, ptr %sk_sndtimeo.i, align 8
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %18, i32 0, i32 62
  %29 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2147483647, ptr %sk_rcvtimeo.i, align 4
  br label %iscsi_target_restore_sock_callbacks.exit

iscsi_target_restore_sock_callbacks.exit:         ; preds = %if.end11.i, %if.then9.i, %if.then9.iscsi_target_restore_sock_callbacks.exit_crit_edge
  %auth_protocol.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 63
  %30 = ptrtoint ptr %auth_protocol.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %auth_protocol.i, align 32
  tail call void @kfree(ptr noundef %31) #10
  br label %if.then13

if.then13:                                        ; preds = %iscsi_target_restore_sock_callbacks.exit, %if.end8.if.then13_crit_edge
  %ret.041.ph = phi i32 [ %call, %if.end8.if.then13_crit_edge ], [ %ret.042, %iscsi_target_restore_sock_callbacks.exit ]
  %conn_login.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 60
  %32 = ptrtoint ptr %conn_login.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn_login.i, align 4
  %tobool.not.i34 = icmp eq ptr %33, null
  br i1 %tobool.not.i34, label %if.then13.if.end14_crit_edge, label %if.end.i35

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.i35:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  %req_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %req_buf.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req_buf.i, align 4
  tail call void @kfree(ptr noundef %35) #10
  %rsp_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %33, i32 0, i32 20
  %36 = ptrtoint ptr %rsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rsp_buf.i, align 8
  tail call void @kfree(ptr noundef %37) #10
  tail call void @kfree(ptr noundef nonnull %33) #10
  %38 = ptrtoint ptr %conn_login.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %conn_login.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end.i35, %if.then13.if.end14_crit_edge, %iscsi_target_sk_check_and_clear.exit.thread38, %land.lhs.true.if.end14_crit_edge
  %ret.04150 = phi i32 [ 0, %iscsi_target_sk_check_and_clear.exit.thread38 ], [ %ret.041.ph, %if.then13.if.end14_crit_edge ], [ %ret.041.ph, %if.end.i35 ], [ 0, %land.lhs.true.if.end14_crit_edge ]
  ret i32 %ret.04150
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_target_do_login(ptr noundef %conn, ptr noundef %login) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = lshr i8 %1, 2
  %3 = and i8 %2, 3
  %4 = zext i8 %3 to i32
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %4, label %do.end37 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %entry
  %flags3 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags3, align 1
  %8 = and i8 %7, -13
  store i8 %8, ptr %flags3, align 1
  %dlength.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 5
  %9 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dlength.i, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx3.i = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 6
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %12 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx7.i = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 7
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %14 to i32
  %or9.i = or i32 %or.i, %conv8.i
  %param_list.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %15 = ptrtoint ptr %param_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %param_list.i, align 4
  %call.i = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.94, ptr noundef %16) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %req_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 19
  %17 = ptrtoint ptr %req_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req_buf.i, align 4
  %call10.i = tail call i32 @iscsi_decode_text_input(i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef %18, i32 noundef %or9.i, ptr noundef %conn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end13.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp14.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp14.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end13.i
  %19 = ptrtoint ptr %login to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %login, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool17.not.i = icmp eq i8 %20, 0
  br i1 %tobool17.not.i, label %iscsi_target_handle_csg_zero.exit, label %do.end.i

do.end.i:                                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %value.i = getelementptr inbounds %struct.iscsi_param, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %value.i, align 4
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %22) #13
  %call20.i = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i)
  %tobool22.not.i = icmp eq i32 %or9.i, 0
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end31.i

do.end26.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #13
  %call29.i = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 1) #10
  br label %cleanup

if.end31.i:                                       ; preds = %if.else.i
  %first_request.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 4
  %23 = ptrtoint ptr %first_request.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %first_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool32.not.i = icmp eq i8 %24, 0
  br i1 %tobool32.not.i, label %if.end31.i.if.end39.i_crit_edge, label %if.then33.i

if.end31.i.if.end39.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.end31.i
  %call34.i = tail call fastcc i32 @iscsi_target_check_first_request(ptr noundef %conn, ptr noundef %login) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.then33.i.cleanup_crit_edge, label %if.then33.i.if.end39.i_crit_edge

if.then33.i.if.end39.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39.i:                                       ; preds = %if.then33.i.if.end39.i_crit_edge, %if.end31.i.if.end39.i_crit_edge
  %rsp_buf.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 20
  %25 = ptrtoint ptr %rsp_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rsp_buf.i, align 8
  %rsp_length.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 14
  %27 = ptrtoint ptr %param_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %param_list.i, align 4
  %tpg.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %29 = ptrtoint ptr %tpg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tpg.i, align 4
  %login_keys_workaround.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %30, i32 0, i32 12, i32 13
  %31 = ptrtoint ptr %login_keys_workaround.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %login_keys_workaround.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool41.i = icmp ne i32 %32, 0
  %call42.i = tail call i32 @iscsi_encode_text_output(i8 noundef zeroext 5, i8 noundef zeroext 2, ptr noundef %26, ptr noundef %rsp_length.i, ptr noundef %28, i1 noundef zeroext %tobool41.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp43.i = icmp slt i32 %call42.i, 0
  br i1 %cmp43.i, label %if.end39.i.cleanup_crit_edge, label %if.end46.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46.i:                                       ; preds = %if.end39.i
  %33 = ptrtoint ptr %param_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %param_list.i, align 4
  %call48.i = tail call i32 @iscsi_check_negotiated_keys(ptr noundef %34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then50.i, label %if.end46.i.sw.epilog_crit_edge

if.end46.i.sw.epilog_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then50.i:                                      ; preds = %if.end46.i
  %35 = ptrtoint ptr %tpg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tpg.i, align 4
  %tpg_attrib52.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %tpg_attrib52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tpg_attrib52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool53.not.i = icmp eq i32 %38, 0
  br i1 %tobool53.not.i, label %if.then50.i.if.end73.i_crit_edge, label %land.lhs.true.i

if.then50.i.if.end73.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true.i:                                  ; preds = %if.then50.i
  %value54.i = getelementptr inbounds %struct.iscsi_param, ptr %call.i, i32 0, i32 1
  %39 = ptrtoint ptr %value54.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value54.i, align 4
  %call55.i = tail call i32 @strncmp(ptr noundef %40, ptr noundef nonnull dereferenceable(5) @.str.100, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %do.end60.i, label %land.lhs.true69.i

do.end60.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #13
  %call63.i = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 1) #10
  br label %cleanup

land.lhs.true69.i:                                ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %login to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %login, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool71.not.i = icmp eq i8 %42, 0
  br i1 %tobool71.not.i, label %land.lhs.true69.i.sw.epilog_crit_edge, label %land.lhs.true69.i.if.end73.i_crit_edge

land.lhs.true69.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true69.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end73.i:                                       ; preds = %land.lhs.true69.i.if.end73.i_crit_edge, %if.then50.i.if.end73.i_crit_edge
  %value74.i = getelementptr inbounds %struct.iscsi_param, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %value74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %value74.i, align 4
  %call75.i = tail call i32 @strncmp(ptr noundef %44, ptr noundef nonnull dereferenceable(5) @.str.100, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end73.i.if.end81.i_crit_edge, label %land.lhs.true77.i

if.end73.i.if.end81.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

land.lhs.true77.i:                                ; preds = %if.end73.i
  %45 = ptrtoint ptr %login to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %login, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool79.not.i = icmp eq i8 %46, 0
  br i1 %tobool79.not.i, label %land.lhs.true77.i.sw.epilog_crit_edge, label %land.lhs.true77.i.if.end81.i_crit_edge

land.lhs.true77.i.if.end81.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

land.lhs.true77.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end81.i:                                       ; preds = %land.lhs.true77.i.if.end81.i_crit_edge, %if.end73.i.if.end81.i_crit_edge
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %flags, align 1
  %49 = and i8 %48, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %49)
  %.not.i = icmp eq i8 %49, -127
  br i1 %.not.i, label %if.then89.i, label %if.end81.i.sw.epilog_crit_edge

if.end81.i.sw.epilog_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then89.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %flags3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags3, align 1
  %52 = or i8 %51, -127
  store i8 %52, ptr %flags3, align 1
  %current_stage.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 2
  %53 = ptrtoint ptr %current_stage.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %current_stage.i, align 2
  br label %sw.epilog

iscsi_target_handle_csg_zero.exit:                ; preds = %if.then16.i
  %call96.i = tail call fastcc i32 @iscsi_target_do_authentication(ptr noundef %conn, ptr noundef %login) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %cmp8 = icmp slt i32 %call96.i, 0
  br i1 %cmp8, label %iscsi_target_handle_csg_zero.exit.cleanup_crit_edge, label %iscsi_target_handle_csg_zero.exit.sw.epilog_crit_edge

iscsi_target_handle_csg_zero.exit.sw.epilog_crit_edge: ; preds = %iscsi_target_handle_csg_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

iscsi_target_handle_csg_zero.exit.cleanup_crit_edge: ; preds = %iscsi_target_handle_csg_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %flags13 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 1
  %54 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags13, align 1
  %56 = or i8 %55, 4
  store i8 %56, ptr %flags13, align 1
  %dlength.i85 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 5
  %57 = ptrtoint ptr %dlength.i85 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dlength.i85, align 1
  %conv.i86 = zext i8 %58 to i32
  %shl.i87 = shl nuw nsw i32 %conv.i86, 16
  %arrayidx3.i88 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 6
  %59 = ptrtoint ptr %arrayidx3.i88 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx3.i88, align 1
  %conv4.i89 = zext i8 %60 to i32
  %shl5.i90 = shl nuw nsw i32 %conv4.i89, 8
  %or.i91 = or i32 %shl5.i90, %shl.i87
  %arrayidx7.i92 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 7
  %61 = ptrtoint ptr %arrayidx7.i92 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx7.i92, align 1
  %conv8.i93 = zext i8 %62 to i32
  %or9.i94 = or i32 %or.i91, %conv8.i93
  %req_buf.i95 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 19
  %63 = ptrtoint ptr %req_buf.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %req_buf.i95, align 4
  %call.i96 = tail call i32 @iscsi_decode_text_input(i8 noundef zeroext 6, i8 noundef zeroext 5, ptr noundef %64, i32 noundef %or9.i94, ptr noundef %conn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %if.then.i, label %if.end.i100

if.then.i:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %call11.i = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end.i100:                                      ; preds = %sw.bb12
  %first_request.i98 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 4
  %65 = ptrtoint ptr %first_request.i98 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %first_request.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i99 = icmp eq i8 %66, 0
  br i1 %tobool.not.i99, label %if.end.i100.if.end18.i_crit_edge, label %if.then12.i

if.end.i100.if.end18.i_crit_edge:                 ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end.i100
  %call13.i = tail call fastcc i32 @iscsi_target_check_first_request(ptr noundef %conn, ptr noundef %login) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.if.end18.i_crit_edge

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %if.end.i100.if.end18.i_crit_edge
  %checked_for_existing.i.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 1
  %67 = ptrtoint ptr %checked_for_existing.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %checked_for_existing.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i.i = icmp eq i8 %68, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end18.i.if.end23.i_crit_edge

if.end18.i.if.end23.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.end.i.i:                                       ; preds = %if.end18.i
  %69 = ptrtoint ptr %checked_for_existing.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %checked_for_existing.i.i, align 1
  %tsih.i.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 16
  %70 = ptrtoint ptr %tsih.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tsih.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool2.not.i.i = icmp eq i16 %71, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @iscsi_check_for_session_reinstatement(ptr noundef %conn) #10
  br label %iscsi_target_check_for_existing_instances.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %cid.i.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 15
  %72 = ptrtoint ptr %cid.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %cid.i.i, align 32
  %initial_exp_statsn.i.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 13
  %74 = ptrtoint ptr %initial_exp_statsn.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %initial_exp_statsn.i.i, align 8
  %call4.i.i = tail call i32 @iscsi_login_post_auth_non_zero_tsih(ptr noundef %conn, i16 noundef zeroext %73, i32 noundef %75) #10
  br label %iscsi_target_check_for_existing_instances.exit.i

iscsi_target_check_for_existing_instances.exit.i: ; preds = %if.else.i.i, %if.then3.i.i
  %retval.0.i.i = phi i32 [ %call4.i.i, %if.else.i.i ], [ %call.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp20.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp20.i, label %iscsi_target_check_for_existing_instances.exit.i.cleanup_crit_edge, label %iscsi_target_check_for_existing_instances.exit.i.if.end23.i_crit_edge

iscsi_target_check_for_existing_instances.exit.i.if.end23.i_crit_edge: ; preds = %iscsi_target_check_for_existing_instances.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

iscsi_target_check_for_existing_instances.exit.i.cleanup_crit_edge: ; preds = %iscsi_target_check_for_existing_instances.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23.i:                                       ; preds = %iscsi_target_check_for_existing_instances.exit.i.if.end23.i_crit_edge, %if.end18.i.if.end23.i_crit_edge
  %rsp_buf.i101 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 20
  %76 = ptrtoint ptr %rsp_buf.i101 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rsp_buf.i101, align 8
  %rsp_length.i102 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 14
  %param_list.i103 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %78 = ptrtoint ptr %param_list.i103 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %param_list.i103, align 4
  %tpg.i104 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 66
  %80 = ptrtoint ptr %tpg.i104 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tpg.i104, align 4
  %login_keys_workaround.i105 = getelementptr inbounds %struct.iscsi_portal_group, ptr %81, i32 0, i32 12, i32 13
  %82 = ptrtoint ptr %login_keys_workaround.i105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %login_keys_workaround.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool24.i = icmp ne i32 %83, 0
  %call25.i = tail call i32 @iscsi_encode_text_output(i8 noundef zeroext 6, i8 noundef zeroext 2, ptr noundef %77, ptr noundef %rsp_length.i102, ptr noundef %79, i1 noundef zeroext %tobool24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.then28.i, label %if.end30.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %call29.i106 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 0) #10
  br label %cleanup

if.end30.i:                                       ; preds = %if.end23.i
  %84 = ptrtoint ptr %login to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %login, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool31.not.i = icmp eq i8 %85, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i107, label %if.end30.i.if.end38.i_crit_edge

if.end30.i.if.end38.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

land.lhs.true.i107:                               ; preds = %if.end30.i
  %86 = ptrtoint ptr %tpg.i104 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tpg.i104, align 4
  %tpg_attrib33.i = getelementptr inbounds %struct.iscsi_portal_group, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %tpg_attrib33.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tpg_attrib33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool34.not.i = icmp eq i32 %89, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i107.if.end38.i_crit_edge, label %do.end.i108

land.lhs.true.i107.if.end38.i_crit_edge:          ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

do.end.i108:                                      ; preds = %land.lhs.true.i107
  call void @__sanitizer_cov_trace_pc() #12
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #13
  %call37.i = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 1) #10
  br label %cleanup

if.end38.i:                                       ; preds = %land.lhs.true.i107.if.end38.i_crit_edge, %if.end30.i.if.end38.i_crit_edge
  %90 = ptrtoint ptr %param_list.i103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %param_list.i103, align 4
  %call40.i = tail call i32 @iscsi_check_negotiated_keys(ptr noundef %91) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end38.i.if.end20_crit_edge

if.end38.i.if.end20_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then42.i:                                      ; preds = %if.end38.i
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %flags, align 1
  %conv43.i = zext i8 %93 to i32
  %and.i = and i32 %conv43.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool44.not.i = icmp eq i32 %and.i, 0
  %and48.i = and i32 %conv43.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i110 = icmp eq i32 %and48.i, 0
  %or.cond.i = or i1 %tobool44.not.i, %tobool49.not.i110
  br i1 %or.cond.i, label %if.then42.i.if.end20_crit_edge, label %if.end20.thread

if.then42.i.if.end20_crit_edge:                   ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20.thread:                                  ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %flags13, align 1
  %96 = or i8 %95, -125
  store i8 %96, ptr %flags13, align 1
  br label %if.then24

if.end20:                                         ; preds = %if.then42.i.if.end20_crit_edge, %if.end38.i.if.end20_crit_edge
  %97 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %97)
  %.pr = load i8, ptr %flags13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr)
  %tobool.not = icmp sgt i8 %.pr, -1
  br i1 %tobool.not, label %if.end20.sw.epilog_crit_edge, label %if.end20.if.then24_crit_edge

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then24:                                        ; preds = %if.end20.if.then24_crit_edge, %if.end20.thread
  %sock.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 36
  %98 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sock.i, align 4
  %tobool.not.i113 = icmp eq ptr %99, null
  br i1 %tobool.not.i113, label %if.then24.if.end27_crit_edge, label %if.then.i114

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then.i114:                                     ; preds = %if.then24
  %sk2.i = getelementptr inbounds %struct.socket, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %sk2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sk2.i, align 16
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %101, i32 0, i32 50
  tail call void @_raw_read_lock_bh(ptr noundef %sk_callback_lock.i) #10
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %103)
  %cmp.i.i = icmp eq i8 %103, 8
  br i1 %cmp.i.i, label %if.then.i114.do.body.i.i_crit_edge, label %lor.lhs.false.i.i

if.then.i114.do.body.i.i_crit_edge:               ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

lor.lhs.false.i.i:                                ; preds = %if.then.i114
  %104 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %105)
  %cmp5.i.i = icmp eq i8 %105, 7
  br i1 %cmp5.i.i, label %lor.lhs.false.i.i.do.body.i.i_crit_edge, label %lor.rhs.i

lor.lhs.false.i.i.do.body.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i.do.body.i.i_crit_edge, %if.then.i114.do.body.i.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login, %iscsi_target_sk_check_close.exit.thread133)) #10
          to label %iscsi_target_sk_check_close.exit [label %iscsi_target_sk_check_close.exit.thread133], !srcloc !255

iscsi_target_sk_check_close.exit.thread133:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.70) #10
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br label %cleanup

lor.rhs.i:                                        ; preds = %lor.lhs.false.i.i
  %login_flags.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 39
  %106 = ptrtoint ptr %login_flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %login_flags.i, align 4
  %108 = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool4.i.not = icmp eq i32 %108, 0
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br i1 %tobool4.i.not, label %lor.rhs.i.if.end27_crit_edge, label %lor.rhs.i.cleanup_crit_edge

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs.i.if.end27_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

iscsi_target_sk_check_close.exit:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_read_unlock_bh(ptr noundef %sk_callback_lock.i) #10
  br label %cleanup

if.end27:                                         ; preds = %lor.rhs.i.if.end27_crit_edge, %if.then24.if.end27_crit_edge
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %109 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sess, align 4
  %tsih = getelementptr inbounds %struct.iscsi_session, ptr %110, i32 0, i32 6
  %111 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %tsih, align 2
  %tsih28 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 16
  %113 = ptrtoint ptr %tsih28 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %tsih28, align 2
  %login_complete = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 7
  %114 = ptrtoint ptr %login_complete to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %login_complete, align 1
  %115 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sock.i, align 4
  %tobool.not.i117 = icmp eq ptr %116, null
  br i1 %tobool.not.i117, label %if.end27.iscsi_target_restore_sock_callbacks.exit_crit_edge, label %if.end.i119

if.end27.iscsi_target_restore_sock_callbacks.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %iscsi_target_restore_sock_callbacks.exit

if.end.i119:                                      ; preds = %if.end27
  %sk2.i118 = getelementptr inbounds %struct.socket, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %sk2.i118 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sk2.i118, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_login, %if.then6.i)) #10
          to label %do.end.i121 [label %if.then6.i], !srcloc !255

if.then6.i:                                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.128, ptr noundef %conn) #10
  br label %do.end.i121

do.end.i121:                                      ; preds = %if.then6.i, %if.end.i119
  %sk_callback_lock.i120 = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i120) #10
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 72
  %119 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sk_user_data.i, align 4
  %tobool8.not.i = icmp eq ptr %120, null
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %do.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i120) #10
  br label %iscsi_target_restore_sock_callbacks.exit

if.end11.i:                                       ; preds = %do.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %sk_user_data.i, align 4
  %orig_data_ready.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 37
  %122 = ptrtoint ptr %orig_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %orig_data_ready.i, align 8
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 77
  %124 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %sk_data_ready.i, align 8
  %orig_state_change.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 38
  %125 = ptrtoint ptr %orig_state_change.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %orig_state_change.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 76
  %127 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %126, ptr %sk_state_change.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i120) #10
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 31
  %128 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2147483647, ptr %sk_sndtimeo.i, align 8
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %118, i32 0, i32 62
  %129 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2147483647, ptr %sk_rcvtimeo.i, align 4
  br label %iscsi_target_restore_sock_callbacks.exit

iscsi_target_restore_sock_callbacks.exit:         ; preds = %if.end11.i, %if.then9.i, %if.end27.iscsi_target_restore_sock_callbacks.exit_crit_edge
  %call29 = tail call fastcc i32 @iscsi_target_do_tx_login_io(ptr noundef %conn, ptr noundef %login)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call29)
  %cmp30.inv = icmp sgt i32 %call29, -1
  %. = select i1 %cmp30.inv, i32 1, i32 -1
  br label %cleanup

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %4) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %if.end20.sw.epilog_crit_edge, %iscsi_target_handle_csg_zero.exit.sw.epilog_crit_edge, %if.then89.i, %if.end81.i.sw.epilog_crit_edge, %land.lhs.true77.i.sw.epilog_crit_edge, %land.lhs.true69.i.sw.epilog_crit_edge, %if.end46.i.sw.epilog_crit_edge
  %call44 = tail call fastcc i32 @iscsi_target_do_tx_login_io(ptr noundef %conn, ptr noundef %login)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %sw.epilog.cleanup_crit_edge, label %if.end48

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %sw.epilog
  %flags49 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 1
  %130 = ptrtoint ptr %flags49 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %flags49, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %131)
  %tobool52.not = icmp sgt i8 %131, -1
  br i1 %tobool52.not, label %if.end48.cleanup_crit_edge, label %if.then53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %132 = and i8 %131, 124
  %133 = ptrtoint ptr %flags49 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %flags49, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end48.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %iscsi_target_restore_sock_callbacks.exit, %iscsi_target_sk_check_close.exit, %lor.rhs.i.cleanup_crit_edge, %iscsi_target_sk_check_close.exit.thread133, %do.end.i108, %if.then28.i, %iscsi_target_check_for_existing_instances.exit.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %if.then.i, %iscsi_target_handle_csg_zero.exit.cleanup_crit_edge, %do.end60.i, %if.end39.i.cleanup_crit_edge, %if.then33.i.cleanup_crit_edge, %do.end26.i, %do.end.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %iscsi_target_handle_csg_zero.exit.cleanup_crit_edge ], [ -1, %iscsi_target_sk_check_close.exit ], [ %., %iscsi_target_restore_sock_callbacks.exit ], [ -1, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ 0, %if.then53 ], [ -1, %iscsi_target_sk_check_close.exit.thread133 ], [ -1, %lor.rhs.i.cleanup_crit_edge ], [ -1, %do.end.i ], [ -1, %do.end60.i ], [ -1, %do.end26.i ], [ -1, %sw.bb.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.then33.i.cleanup_crit_edge ], [ -1, %if.end39.i.cleanup_crit_edge ], [ -1, %if.then.i ], [ -1, %if.then28.i ], [ -1, %do.end.i108 ], [ -1, %if.then12.i.cleanup_crit_edge ], [ -1, %iscsi_target_check_for_existing_instances.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_target_nego_release(ptr nocapture noundef %conn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn_login = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 60
  %0 = ptrtoint ptr %conn_login to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn_login, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %req_buf = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_buf, align 4
  tail call void @kfree(ptr noundef %3) #10
  %rsp_buf = getelementptr inbounds %struct.iscsi_login, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsp_buf, align 8
  tail call void @kfree(ptr noundef %5) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %6 = ptrtoint ptr %conn_login to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %conn_login, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_on_stack_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_target_login_timeout(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.conn_timeout, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_login_timeout.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_login_timeout, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_login_timeout.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.72) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %login_kworker = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %login_kworker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %login_kworker, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end27_crit_edge, label %do.body7

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_login_timeout.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_login_timeout, %if.then19)) #10
          to label %do.end24 [label %if.then19], !srcloc !255

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %login_kworker to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %login_kworker, align 4
  %comm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 101
  %pid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 68
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_login_timeout.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.73, ptr noundef %comm, i32 noundef %7) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body7
  %8 = ptrtoint ptr %login_kworker to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %login_kworker, align 4
  %call26 = tail call i32 @send_sig(i32 noundef 2, ptr noundef %9, i32 noundef 1) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %do.end.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_timer_on_stack(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_signals(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_post_login_handler(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_deaccess_np(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_sigaction(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_target_login_sess_out(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_target_sk_data_ready(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_data_ready, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.77, ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %2 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_user_data, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %login_flags = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %login_flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %if.then10, label %if.end28

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_data_ready, %if.then24)) #10
          to label %cleanup [label %if.then24], !srcloc !255

if.then24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.78, ptr noundef %1) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %login_flags, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool31.not = icmp eq i32 %8, 0
  br i1 %tobool31.not, label %if.end50, label %if.then32

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_data_ready, %if.then46)) #10
          to label %cleanup [label %if.then46], !srcloc !255

if.then46:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.79, ptr noundef %1) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end28
  %call52 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %login_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end75, label %if.then54

if.then54:                                        ; preds = %if.end50
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_data_ready, %if.then68)) #10
          to label %do.end71 [label %if.then68], !srcloc !255

if.then68:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.80, ptr noundef %1) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %if.then54
  %orig_data_ready = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 37
  %9 = ptrtoint ptr %orig_data_ready to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orig_data_ready, align 8
  %cmp = icmp eq ptr %10, @iscsi_target_sk_data_ready
  br i1 %cmp, label %do.end71.cleanup_crit_edge, label %if.end73

do.end71.cleanup_crit_edge:                       ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end73:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %10(ptr noundef %sk) #10
  br label %cleanup

if.end75:                                         ; preds = %if.end50
  %login_work = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %login_work, i32 noundef 0) #10
  br i1 %call.i.i, label %if.end75.if.end96_crit_edge, label %do.body80

if.end75.if.end96_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.body80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_data_ready, %if.then92)) #10
          to label %if.end96 [label %if.then92], !srcloc !255

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.81) #10
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %do.body80, %if.end75.if.end96_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.end73, %do.end71.cleanup_crit_edge, %if.then46, %if.then32, %if.then24, %if.then10, %if.then5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iscsi_target_sk_state_change(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug475, ptr noundef nonnull @.str.83) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sk_callback_lock = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock) #10
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %orig_state_change7 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %orig_state_change7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %orig_state_change7, align 4
  %login_flags = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 39
  %4 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %login_flags, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %do.body11, label %if.end28

do.body11:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then23)) #10
          to label %do.end26 [label %if.then23], !srcloc !255

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug476, ptr noundef nonnull @.str.84, ptr noundef nonnull %1) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body11
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  tail call void %3(ptr noundef %sk) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end6
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp.i = icmp eq i8 %7, 8
  br i1 %cmp.i, label %if.end28.do.body.i_crit_edge, label %lor.lhs.false.i

if.end28.do.body.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end28
  %8 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp5.i = icmp eq i8 %9, 7
  br i1 %cmp5.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %lor.lhs.false.i.__iscsi_target_sk_check_close.exit_crit_edge

lor.lhs.false.i.__iscsi_target_sk_check_close.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__iscsi_target_sk_check_close.exit

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.end28.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then9.i)) #10
          to label %__iscsi_target_sk_check_close.exit [label %if.then9.i], !srcloc !255

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.70) #10
  br label %__iscsi_target_sk_check_close.exit

__iscsi_target_sk_check_close.exit:               ; preds = %if.then9.i, %do.body.i, %lor.lhs.false.i.__iscsi_target_sk_check_close.exit_crit_edge
  %retval.0.i185 = phi i1 [ true, %if.then9.i ], [ false, %lor.lhs.false.i.__iscsi_target_sk_check_close.exit_crit_edge ], [ true, %do.body.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then43)) #10
          to label %do.end47 [label %if.then43], !srcloc !255

if.then43:                                        ; preds = %__iscsi_target_sk_check_close.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i1 %retval.0.i185 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.85, i32 noundef %conv) #10
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %__iscsi_target_sk_check_close.exit
  %10 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %login_flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool50.not = icmp eq i32 %12, 0
  br i1 %tobool50.not, label %lor.lhs.false, label %do.end47.do.body55_crit_edge

do.end47.do.body55_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

lor.lhs.false:                                    ; preds = %do.end47
  %13 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %login_flags, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool53.not = icmp eq i32 %15, 0
  br i1 %tobool53.not, label %if.end76, label %lor.lhs.false.do.body55_crit_edge

lor.lhs.false.do.body55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body55

do.body55:                                        ; preds = %lor.lhs.false.do.body55_crit_edge, %do.end47.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then67)) #10
          to label %do.end70 [label %if.then67], !srcloc !255

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.86, ptr noundef nonnull %1) #10
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %do.body55
  br i1 %retval.0.i185, label %if.then72, label %do.end70.if.end74_crit_edge

do.end70.if.end74_crit_edge:                      ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then72:                                        ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 4, ptr noundef %login_flags) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %do.end70.if.end74_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  tail call void %3(ptr noundef %sk) #10
  br label %cleanup

if.end76:                                         ; preds = %lor.lhs.false
  %16 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %login_flags, align 4
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool79.not = icmp eq i32 %18, 0
  br i1 %tobool79.not, label %if.end98, label %do.body81

do.body81:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug479, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then93)) #10
          to label %do.end96 [label %if.then93], !srcloc !255

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug479, ptr noundef nonnull @.str.87, ptr noundef nonnull %1) #10
  br label %do.end96

do.end96:                                         ; preds = %if.then93, %do.body81
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  tail call void %3(ptr noundef %sk) #10
  br label %cleanup

if.end98:                                         ; preds = %if.end76
  br i1 %retval.0.i185, label %do.body101, label %if.end127

do.body101:                                       ; preds = %if.end98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_sk_state_change, %if.then113)) #10
          to label %do.end116 [label %if.then113], !srcloc !255

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.88) #10
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %do.body101
  tail call void @_set_bit(i32 noundef 4, ptr noundef %login_flags) #10
  %19 = ptrtoint ptr %login_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %login_flags, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool120.not = icmp eq i32 %21, 0
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  tail call void %3(ptr noundef %sk) #10
  br i1 %tobool120.not, label %if.then124, label %do.end116.cleanup_crit_edge

do.end116.cleanup_crit_edge:                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then124:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #12
  %login_work = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %login_work, i32 noundef 0) #10
  br label %cleanup

if.end127:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock) #10
  tail call void %3(ptr noundef %sk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.then124, %do.end116.cleanup_crit_edge, %do.end96, %if.end74, %do.end26, %if.then4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_target_do_tx_login_io(ptr noundef %conn, ptr noundef %login) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 35, ptr %rsp, align 4
  %rsp_length = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 14
  %1 = ptrtoint ptr %rsp_length to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rsp_length, align 4
  %shr = lshr i32 %2, 16
  %conv = trunc i32 %shr to i8
  %dlength = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 5
  %3 = ptrtoint ptr %dlength to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %dlength, align 1
  %shr2 = lshr i32 %2, 8
  %conv4 = trunc i32 %shr2 to i8
  %arrayidx6 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 6
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %arrayidx6, align 1
  %conv9 = trunc i32 %2 to i8
  %arrayidx11 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 7
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %arrayidx11, align 1
  %isid = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 8
  %isid13 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 10
  %6 = call ptr @memcpy(ptr %isid, ptr %isid13, i32 6)
  %tsih = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 16
  %7 = ptrtoint ptr %tsih to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tsih, align 2
  %tsih15 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 14
  %9 = ptrtoint ptr %tsih15 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tsih15, align 2
  %init_task_tag = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 12
  %10 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_task_tag, align 4
  %itt = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 16
  %12 = ptrtoint ptr %itt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %itt, align 4
  %stat_sn = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 16
  %13 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat_sn, align 32
  %inc = add i32 %14, 1
  store i32 %inc, ptr %stat_sn, align 32
  %statsn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 24
  %15 = ptrtoint ptr %statsn to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %statsn, align 4
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %16 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sess, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %exp_cmd_sn, align 128
  %exp_cmdsn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 28
  %20 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %exp_cmdsn, align 4
  %21 = load ptr, ptr %sess, align 4
  %max_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %21, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cmd_sn, i32 noundef 4) #10
  %22 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %max_cmd_sn, align 4
  %max_cmdsn = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 32
  %24 = ptrtoint ptr %max_cmdsn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %max_cmdsn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_tx_login_io.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_tx_login_io, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags, align 1
  %conv20 = zext i8 %26 to i32
  %27 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %itt, align 4
  %29 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %exp_cmdsn, align 4
  %31 = ptrtoint ptr %max_cmdsn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_cmdsn, align 4
  %33 = ptrtoint ptr %statsn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %statsn, align 4
  %35 = ptrtoint ptr %rsp_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rsp_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_tx_login_io.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.126, i32 noundef %conv20, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %37 = ptrtoint ptr %rsp_length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rsp_length, align 4
  %sub = sub i32 0, %38
  %and27 = and i32 %sub, 3
  %login_complete = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 7
  %39 = ptrtoint ptr %login_complete to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %login_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool28.not = icmp eq i8 %40, 0
  br i1 %tobool28.not, label %do.end.if.end35_crit_edge, label %if.then29

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %do.end
  %call30 = tail call i32 @iscsit_start_kthreads(ptr noundef %conn) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end35_crit_edge, label %if.then32

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 2) #10
  br label %cleanup65

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %do.end.if.end35_crit_edge
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 61
  %41 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %conn_transport, align 8
  %iscsit_put_login_tx = getelementptr inbounds %struct.iscsit_transport, ptr %42, i32 0, i32 12
  %43 = ptrtoint ptr %iscsit_put_login_tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iscsit_put_login_tx, align 4
  %45 = ptrtoint ptr %rsp_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rsp_length, align 4
  %add = add i32 %46, %and27
  %call37 = tail call i32 %44(ptr noundef %conn, ptr noundef %login, i32 noundef %add) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %err, label %if.end40

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %rsp_length to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rsp_length, align 4
  br label %cleanup65

err:                                              ; preds = %if.end35
  %48 = ptrtoint ptr %login_complete to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %login_complete, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool43.not = icmp eq i8 %49, 0
  br i1 %tobool43.not, label %err.cleanup65_crit_edge, label %if.then44

err.cleanup65_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup65

if.then44:                                        ; preds = %err
  %rx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 71
  %50 = ptrtoint ptr %rx_thread to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_thread, align 128
  %tobool45.not = icmp eq ptr %51, null
  br i1 %tobool45.not, label %if.then44.if.end52_crit_edge, label %land.lhs.true

if.then44.if.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

land.lhs.true:                                    ; preds = %if.then44
  %rx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 70
  %52 = ptrtoint ptr %rx_thread_active to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_thread_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool46.not = icmp eq i32 %53, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end52_crit_edge, label %if.then47

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %51, i32 noundef 1) #10
  %rx_login_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 72
  tail call void @complete(ptr noundef %rx_login_comp) #10
  %54 = ptrtoint ptr %rx_thread to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_thread, align 128
  %call51 = tail call i32 @kthread_stop(ptr noundef %55) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.lhs.true.if.end52_crit_edge, %if.then44.if.end52_crit_edge
  %tx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 74
  %56 = ptrtoint ptr %tx_thread to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_thread, align 64
  %tobool53.not = icmp eq ptr %57, null
  br i1 %tobool53.not, label %if.end52.if.end61_crit_edge, label %land.lhs.true54

if.end52.if.end61_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

land.lhs.true54:                                  ; preds = %if.end52
  %tx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 73
  %58 = ptrtoint ptr %tx_thread_active to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_thread_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool55.not = icmp eq i32 %59, 0
  br i1 %tobool55.not, label %land.lhs.true54.if.end61_crit_edge, label %if.then56

land.lhs.true54.if.end61_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then56:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %57, i32 noundef 1) #10
  %60 = ptrtoint ptr %tx_thread to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_thread, align 64
  %call60 = tail call i32 @kthread_stop(ptr noundef %61) #10
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %land.lhs.true54.if.end61_crit_edge, %if.end52.if.end61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %62 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap_lock = getelementptr inbounds %struct.iscsit_global, ptr %62, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %ts_bitmap_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %63 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap = getelementptr inbounds %struct.iscsit_global, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %ts_bitmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ts_bitmap, align 4
  %bitmap_id = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 69
  %66 = ptrtoint ptr %bitmap_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bitmap_id, align 8
  tail call void @bitmap_release_region(ptr noundef %65, i32 noundef %67, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %68 = load ptr, ptr @iscsit_global, align 4
  %ts_bitmap_lock63 = getelementptr inbounds %struct.iscsit_global, ptr %68, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %ts_bitmap_lock63) #10
  br label %cleanup65

cleanup65:                                        ; preds = %if.end61, %err.cleanup65_crit_edge, %if.end40, %if.then32
  %retval.1 = phi i32 [ 0, %if.end40 ], [ -1, %if.then32 ], [ -1, %if.end61 ], [ -1, %err.cleanup65_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsi_find_param_from_key(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_decode_text_input(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_target_check_first_request(ptr noundef %conn, ptr nocapture noundef %login) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %first_request = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 4
  %0 = ptrtoint ptr %first_request to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %first_request, align 4
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %1 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param_list, align 4
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn81 = load ptr, ptr %param_list1, align 4
  %cmp.not82 = icmp eq ptr %.pn81, %param_list1
  br i1 %cmp.not82, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %leading_connection32 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 3
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn83 = phi ptr [ %.pn81, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %param.0 = getelementptr i8, ptr %.pn83, i32 -20
  %4 = ptrtoint ptr %param.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param.0, align 128
  %call = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(12) @.str.33, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %for.body
  %state = getelementptr i8, ptr %.pn83, i32 -4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 16
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %value = getelementptr i8, ptr %.pn83, i32 -16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value, align 4
  %call9 = tail call i32 @strncmp(ptr noundef %9, ptr noundef nonnull dereferenceable(10) @.str.41, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %call15 = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(14) @.str.32, i32 noundef 13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then17:                                        ; preds = %if.end13
  %state18 = getelementptr i8, ptr %.pn83, i32 -4
  %10 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state18, align 16
  %and19 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %12 = ptrtoint ptr %leading_connection32 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %leading_connection32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool22.not = icmp eq i8 %13, 0
  br i1 %tobool20.not, label %if.then21, label %if.end31

if.then21:                                        ; preds = %if.then17
  br i1 %tobool22.not, label %if.then21.for.inc_crit_edge, label %do.end27

if.then21.for.inc_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #13
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.then17
  br i1 %tobool22.not, label %if.then34, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then34:                                        ; preds = %if.end31
  %14 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess, align 4
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %se_node_acl, align 8
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #13
  br label %cleanup.sink.split

if.end43:                                         ; preds = %if.then34
  %value44 = getelementptr i8, ptr %.pn83, i32 -16
  %20 = ptrtoint ptr %value44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value44, align 4
  %call45 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull %19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.for.inc_crit_edge, label %do.end50

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %21) #13
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %if.end31.for.inc_crit_edge, %if.then21.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %22 = ptrtoint ptr %.pn83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn83, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end50, %do.end39, %do.end27, %do.end
  %.sink = phi i8 [ 3, %do.end50 ], [ 3, %do.end39 ], [ 7, %do.end27 ], [ 7, %do.end ]
  %call54 = tail call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_encode_text_output(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_check_negotiated_keys(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_target_do_authentication(ptr noundef %conn, ptr noundef %login) unnamed_addr #2 align 64 {
entry:
  %in_length.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dlength = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 5
  %0 = ptrtoint ptr %dlength to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dlength, align 1
  %arrayidx3 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 6
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %arrayidx7 = getelementptr %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 7
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %6 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param_list, align 4
  %call = tail call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.94, ptr noundef %7) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %conv4 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl5, %shl
  %conv8 = zext i8 %5 to i32
  %or9 = or i32 %or, %conv8
  %req_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 19
  %8 = ptrtoint ptr %req_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req_buf, align 4
  %rsp_buf = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 20
  %10 = ptrtoint ptr %rsp_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rsp_buf, align 8
  %rsp_length = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 14
  %value = getelementptr inbounds %struct.iscsi_param, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_length.addr.i)
  %14 = ptrtoint ptr %in_length.addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or9, ptr %in_length.addr.i, align 4
  %sess1.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %15 = ptrtoint ptr %sess1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess1.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 47
  %17 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess_ops.i, align 8
  %SessionType.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %SessionType.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %SessionType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else12.i

if.then.i:                                        ; preds = %if.end
  %se_sess.i = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 48
  %21 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %se_sess.i, align 4
  %se_node_acl.i = getelementptr inbounds %struct.se_session, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %se_node_acl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %se_node_acl.i, align 8
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %iscsi_handle_authentication.exit.thread, label %if.end.i

iscsi_handle_authentication.exit.thread:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_length.addr.i)
  br label %do.end56

if.end.i:                                         ; preds = %if.then.i
  %dynamic_node_acl.i = getelementptr inbounds %struct.se_node_acl, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %dynamic_node_acl.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dynamic_node_acl.i, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool5.not.i = icmp eq i8 %26, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %se_tpg.i = getelementptr inbounds %struct.se_node_acl, ptr %24, i32 0, i32 10
  %27 = ptrtoint ptr %se_tpg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %se_tpg.i, align 4
  %tpg_demo_auth.i = getelementptr i8, ptr %28, i32 1040
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %node_auth.i = getelementptr inbounds %struct.iscsi_node_acl, ptr %24, i32 0, i32 2
  br label %if.end14.i

if.else12.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iscsit_global to i32))
  %29 = load ptr, ptr @iscsit_global, align 4
  %node_auth13.i = getelementptr inbounds %struct.iscsit_global, ptr %29, i32 0, i32 6, i32 2
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else12.i, %if.else.i, %if.then6.i
  %auth.0.i = phi ptr [ %node_auth13.i, %if.else12.i ], [ %tpg_demo_auth.i, %if.then6.i ], [ %node_auth.i, %if.else.i ]
  %call15.i = tail call ptr @strstr(ptr noundef nonnull @.str.122, ptr noundef %13) #10
  %tobool16.not.i = icmp eq ptr %call15.i, null
  %auth_type22.i = getelementptr inbounds %struct.iscsi_session, ptr %16, i32 0, i32 16
  br i1 %tobool16.not.i, label %if.else20.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = call ptr @memcpy(ptr %auth_type22.i, ptr @.str.122, i32 5)
  br label %if.end25.i

if.else20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call ptr @memcpy(ptr %auth_type22.i, ptr @.str.100, i32 5)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else20.i, %if.then17.i
  %call26.i = tail call ptr @strstr(ptr noundef nonnull @.str.100, ptr noundef %13) #10
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.else29.i, label %iscsi_handle_authentication.exit.thread92

iscsi_handle_authentication.exit.thread92:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_length.addr.i)
  br label %do.body18

if.else29.i:                                      ; preds = %if.end25.i
  %call30.i = tail call ptr @strstr(ptr noundef nonnull @.str.122, ptr noundef %13) #10
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %iscsi_handle_authentication.exit.thread94, label %iscsi_handle_authentication.exit

iscsi_handle_authentication.exit.thread94:        ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_length.addr.i)
  br label %do.end50

iscsi_handle_authentication.exit:                 ; preds = %if.else29.i
  %call33.i = call i32 @chap_main_loop(ptr noundef %conn, ptr noundef %auth.0.i, ptr noundef %9, ptr noundef %11, ptr noundef nonnull %in_length.addr.i, ptr noundef %rsp_length) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_length.addr.i)
  %32 = zext i32 %call33.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call33.i, label %iscsi_handle_authentication.exit.do.end56_crit_edge [
    i32 0, label %do.body
    i32 1, label %iscsi_handle_authentication.exit.do.body18_crit_edge
    i32 2, label %iscsi_handle_authentication.exit.do.end50_crit_edge
  ]

iscsi_handle_authentication.exit.do.end50_crit_edge: ; preds = %iscsi_handle_authentication.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

iscsi_handle_authentication.exit.do.body18_crit_edge: ; preds = %iscsi_handle_authentication.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

iscsi_handle_authentication.exit.do.end56_crit_edge: ; preds = %iscsi_handle_authentication.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end56

do.body:                                          ; preds = %iscsi_handle_authentication.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_authentication.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_authentication, %if.then15)) #10
          to label %cleanup [label %if.then15], !srcloc !255

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_authentication.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.114) #10
  br label %cleanup

do.body18:                                        ; preds = %iscsi_handle_authentication.exit.do.body18_crit_edge, %iscsi_handle_authentication.exit.thread92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_target_do_authentication.__UNIQUE_ID_ddebug482, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_target_do_authentication, %if.then30)) #10
          to label %do.end33 [label %if.then30], !srcloc !255

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_target_do_authentication.__UNIQUE_ID_ddebug482, ptr noundef nonnull @.str.115) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body18
  %33 = ptrtoint ptr %login to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %login, align 128
  %flags = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 1
  %36 = and i8 %35, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %36)
  %.not = icmp eq i8 %36, -127
  br i1 %.not, label %if.then40, label %do.end33.if.end45_crit_edge

do.end33.if.end45_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then40:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  %flags41 = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %flags41 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags41, align 1
  %39 = or i8 %38, -127
  store i8 %39, ptr %flags41, align 1
  %current_stage = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 2
  %40 = ptrtoint ptr %current_stage to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %current_stage, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %do.end33.if.end45_crit_edge
  %checked_for_existing.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 1
  %41 = ptrtoint ptr %checked_for_existing.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %checked_for_existing.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i85 = icmp eq i8 %42, 0
  br i1 %tobool.not.i85, label %if.end.i86, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i86:                                       ; preds = %if.end45
  %43 = ptrtoint ptr %checked_for_existing.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %checked_for_existing.i, align 1
  %tsih.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 16
  %44 = ptrtoint ptr %tsih.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tsih.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool2.not.i = icmp eq i16 %45, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i88

if.then3.i:                                       ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %call.i87 = call i32 @iscsi_check_for_session_reinstatement(ptr noundef %conn) #10
  br label %cleanup

if.else.i88:                                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %cid.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 15
  %46 = ptrtoint ptr %cid.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cid.i, align 32
  %initial_exp_statsn.i = getelementptr inbounds %struct.iscsi_login, ptr %login, i32 0, i32 13
  %48 = ptrtoint ptr %initial_exp_statsn.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %initial_exp_statsn.i, align 8
  %call4.i = call i32 @iscsi_login_post_auth_non_zero_tsih(ptr noundef %conn, i16 noundef zeroext %47, i32 noundef %49) #10
  br label %cleanup

do.end50:                                         ; preds = %iscsi_handle_authentication.exit.do.end50_crit_edge, %iscsi_handle_authentication.exit.thread94
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #13
  %call53 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 2, i8 noundef zeroext 1) #10
  br label %cleanup

do.end56:                                         ; preds = %iscsi_handle_authentication.exit.do.end56_crit_edge, %iscsi_handle_authentication.exit.thread
  %retval.0.i8491 = phi i32 [ -1, %iscsi_handle_authentication.exit.thread ], [ %call33.i, %iscsi_handle_authentication.exit.do.end56_crit_edge ]
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %retval.0.i8491) #13
  %call59 = call i32 @iscsit_tx_login_rsp(ptr noundef %conn, i8 noundef zeroext 3, i8 noundef zeroext 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.end50, %if.else.i88, %if.then3.i, %if.end45.cleanup_crit_edge, %if.then15, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end56 ], [ -1, %do.end50 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body ], [ %call4.i, %if.else.i88 ], [ %call.i87, %if.then3.i ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chap_main_loop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_check_for_session_reinstatement(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_login_post_auth_non_zero_tsih(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_start_kthreads(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @strchr(ptr, i32) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !181, !182, !183, !184, !186, !187, !188, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !233, !234, !235, !236, !238, !239, !240, !242, !243}
!llvm.named.register.sp = !{!244}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 71, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 87, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @extract_param._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @extract_param._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 174, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @iscsi_target_check_login_request._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @iscsi_target_check_login_request._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 183, i32 3}
!15 = !{ptr @iscsi_target_check_login_request._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @iscsi_target_check_login_request._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 194, i32 3}
!19 = !{ptr @iscsi_target_check_login_request._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @iscsi_target_check_login_request._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 205, i32 3}
!23 = !{ptr @iscsi_target_check_login_request._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @iscsi_target_check_login_request._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 215, i32 3}
!27 = !{ptr @iscsi_target_check_login_request._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @iscsi_target_check_login_request._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 224, i32 3}
!31 = !{ptr @iscsi_target_check_login_request._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @iscsi_target_check_login_request._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 232, i32 3}
!35 = !{ptr @iscsi_target_check_login_request._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iscsi_target_check_login_request._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 240, i32 3}
!39 = !{ptr @iscsi_target_check_login_request._entry.24, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @iscsi_target_check_login_request._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_iscsi_target_check_login_request, !42, !"__ksymtab_iscsi_target_check_login_request", i1 false, i1 false}
!42 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 248, i32 1}
!43 = !{ptr @iscsi_target_locate_portal.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1070, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @iscsi_target_locate_portal.__key.28, !44, !"__key", i1 false, i1 false}
!47 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1080, i32 3}
!50 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iscsi_target_locate_portal._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @iscsi_target_locate_portal._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1097, i32 21}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1099, i32 26}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1101, i32 26}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1110, i32 3}
!61 = !{ptr @iscsi_target_locate_portal._entry.35, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @iscsi_target_locate_portal._entry_ptr.37, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1128, i32 3}
!65 = !{ptr @iscsi_target_locate_portal._entry.38, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iscsi_target_locate_portal._entry_ptr.40, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1139, i32 31}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1150, i32 4}
!71 = !{ptr @iscsi_target_locate_portal._entry.42, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @iscsi_target_locate_portal._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1170, i32 3}
!75 = !{ptr @iscsi_target_locate_portal._entry.45, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @iscsi_target_locate_portal._entry_ptr.47, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1184, i32 3}
!79 = !{ptr @iscsi_target_locate_portal._entry.48, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @iscsi_target_locate_portal._entry_ptr.50, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1191, i32 2}
!83 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @iscsi_target_locate_portal.__UNIQUE_ID_ddebug483, !82, !"__UNIQUE_ID_ddebug483", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1198, i32 3}
!87 = !{ptr @iscsi_target_locate_portal._entry.53, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @iscsi_target_locate_portal._entry_ptr.55, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1207, i32 2}
!91 = !{ptr @iscsi_target_locate_portal.__UNIQUE_ID_ddebug484, !90, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!92 = !{ptr @iscsi_target_locate_portal._entry.57, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1212, i32 3}
!94 = !{ptr @iscsi_target_locate_portal._entry_ptr.58, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.60, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1254, i32 3}
!97 = !{ptr @iscsi_target_locate_portal._entry.59, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @iscsi_target_locate_portal._entry_ptr.61, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.62, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 568, i32 2}
!101 = !{ptr @.str.63, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug470, !100, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!103 = !{ptr @.str.64, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 590, i32 3}
!105 = !{ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug471, !104, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 595, i32 3}
!108 = !{ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug472, !107, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!109 = !{ptr @iscsi_target_do_login_rx.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 603, i32 2}
!111 = !{ptr @.str.66, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 605, i32 2}
!114 = !{ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug473, !113, !"__UNIQUE_ID_ddebug473", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 616, i32 2}
!117 = !{ptr @iscsi_target_do_login_rx.__UNIQUE_ID_ddebug474, !116, !"__UNIQUE_ID_ddebug474", i1 false, i1 false}
!118 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 475, i32 3}
!120 = !{ptr @.str.70, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__iscsi_target_sk_check_close.__UNIQUE_ID_ddebug467, !119, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!122 = !{ptr @.str.71, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 547, i32 2}
!124 = !{ptr @.str.72, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @iscsi_target_login_timeout.__UNIQUE_ID_ddebug468, !123, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!126 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 550, i32 3}
!128 = !{ptr @iscsi_target_login_timeout.__UNIQUE_ID_ddebug469, !127, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!129 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 432, i32 2}
!131 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @iscsi_target_set_sock_callbacks.__UNIQUE_ID_ddebug465, !130, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!133 = !{ptr @.str.76, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 388, i32 2}
!135 = !{ptr @.str.77, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug460, !134, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!137 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 397, i32 3}
!139 = !{ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug461, !138, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!140 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 402, i32 3}
!142 = !{ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug462, !141, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 407, i32 3}
!145 = !{ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug463, !144, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!146 = !{ptr @.str.81, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 416, i32 3}
!148 = !{ptr @iscsi_target_sk_data_ready.__UNIQUE_ID_ddebug464, !147, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 669, i32 2}
!151 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug475, !150, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 680, i32 3}
!155 = !{ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug476, !154, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 687, i32 2}
!158 = !{ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug477, !157, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 691, i32 3}
!161 = !{ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug478, !160, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!162 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 700, i32 3}
!164 = !{ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug479, !163, !"__UNIQUE_ID_ddebug479", i1 false, i1 false}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 722, i32 3}
!167 = !{ptr @iscsi_target_sk_state_change.__UNIQUE_ID_ddebug480, !166, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 982, i32 4}
!170 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @iscsi_target_do_login._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @iscsi_target_do_login._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 1018, i32 4}
!175 = !{ptr @iscsi_target_do_login._entry.91, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @iscsi_target_do_login._entry_ptr.93, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.94, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 832, i32 36}
!179 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 847, i32 4}
!181 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @iscsi_target_handle_csg_zero._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @iscsi_target_handle_csg_zero._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.98, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 857, i32 3}
!186 = !{ptr @iscsi_target_handle_csg_zero._entry.97, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @iscsi_target_handle_csg_zero._entry_ptr.99, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.100, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 880, i32 30}
!190 = !{ptr @.str.102, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 881, i32 4}
!192 = !{ptr @iscsi_target_handle_csg_zero._entry.101, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @iscsi_target_handle_csg_zero._entry_ptr.103, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.104, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 262, i32 5}
!196 = !{ptr @iscsi_target_check_first_request._entry, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @iscsi_target_check_first_request._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @iscsi_target_check_first_request._entry.105, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 277, i32 5}
!200 = !{ptr @iscsi_target_check_first_request._entry_ptr.106, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 292, i32 6}
!203 = !{ptr @iscsi_target_check_first_request._entry.107, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @iscsi_target_check_first_request._entry_ptr.109, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.111, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 302, i32 6}
!207 = !{ptr @iscsi_target_check_first_request._entry.110, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @iscsi_target_check_first_request._entry_ptr.112, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 786, i32 3}
!211 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @iscsi_target_do_authentication.__UNIQUE_ID_ddebug481, !210, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!213 = !{ptr @.str.115, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 790, i32 3}
!215 = !{ptr @iscsi_target_do_authentication.__UNIQUE_ID_ddebug482, !214, !"__UNIQUE_ID_ddebug482", i1 false, i1 false}
!216 = !{ptr @.str.116, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 802, i32 3}
!218 = !{ptr @iscsi_target_do_authentication._entry, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @iscsi_target_do_authentication._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.118, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 808, i32 3}
!222 = !{ptr @iscsi_target_do_authentication._entry.117, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @iscsi_target_do_authentication._entry_ptr.119, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 117, i32 4}
!226 = !{ptr @.str.121, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @iscsi_handle_authentication._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @iscsi_handle_authentication._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 140, i32 13}
!231 = !{ptr @.str.123, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 954, i32 3}
!233 = !{ptr @.str.124, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @iscsi_target_handle_csg_one._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @iscsi_target_handle_csg_one._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.125, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 334, i32 2}
!238 = !{ptr @.str.126, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @iscsi_target_do_tx_login_io.__UNIQUE_ID_ddebug459, !237, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!240 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/target/iscsi/iscsi_target_nego.c", i32 454, i32 2}
!242 = !{ptr @.str.128, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @iscsi_target_restore_sock_callbacks.__UNIQUE_ID_ddebug466, !241, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!244 = !{!"sp"}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"auto-init"}
!255 = !{i64 2148288475, i64 2148288480, i64 2148288493, i64 2148288537, i64 2148288571, i64 2148288592}
!256 = !{i64 2148564613}
!257 = !{i64 2148479077, i64 2148479109, i64 2148479138, i64 2148479172, i64 2148479203, i64 2148479226}
!258 = !{!"branch_weights", i32 2000, i32 1}
!259 = !{i64 2149600099}
!260 = !{i8 0, i8 2}
