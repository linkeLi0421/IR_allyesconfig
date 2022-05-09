; ModuleID = '/llk/IR_all_yes/drivers/atm/atmtcp.c_pt.bc'
source_filename = "../drivers/atm/atmtcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atmdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.atmtcp_dev_data = type { ptr, i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
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
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.145, i8, %union.anon.147 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i8, i8 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.151 }
%struct.anon.151 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.atmtcp_control = type { %struct.atmtcp_hdr, i32, %struct.atm_kptr_t, %struct.sockaddr_atmpvc, %struct.atm_qos, i32 }
%struct.atmtcp_hdr = type { i16, i16, i32 }
%struct.atm_kptr_t = type { [8 x i8] }
%struct.sockaddr_atmpvc = type { i16, %struct.anon.152 }
%struct.anon.152 = type { i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.108, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.108 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@atmtcp_ioctl_ops = internal global { %struct.atm_ioctl, [16 x i8] } { %struct.atm_ioctl { ptr null, ptr @atmtcp_ioctl, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file459 = internal constant [31 x i8] c"atmtcp.file=drivers/atm/atmtcp\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [19 x i8] c"atmtcp.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_atmtcp__461_498_atmtcp_init6 = internal global ptr @atmtcp_init, section ".initcall6.init", align 4
@__exitcall_atmtcp_exit = internal global ptr @atmtcp_exit, section ".exitcall.exit", align 4
@atmtcp_v_dev_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr @atmtcp_v_dev_close, ptr @atmtcp_v_open, ptr @atmtcp_v_close, ptr @atmtcp_v_ioctl, ptr @atmtcp_v_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmtcp_v_proc, ptr null }, [48 x i8] zeroinitializer }, align 32
@atmtcp_control_dev = internal global { %struct.atm_dev, [264 x i8] } { %struct.atm_dev { ptr @atmtcp_c_dev_ops, ptr null, ptr @.str.9, i32 999, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [6 x i8] zeroinitializer, %struct.atm_cirange zeroinitializer, %struct.k_atm_dev_stats zeroinitializer, i8 0, i32 0, %struct.refcount_struct zeroinitializer, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, ptr null, %struct.device zeroinitializer, %struct.list_head zeroinitializer }, [264 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/atm/atmtcp.c\00", [43 x i8] zeroinitializer }, align 32
@vcc_sklist_lock = external dso_local global %struct.rwlock_t, align 4
@vcc_hash = external dso_local local_unnamed_addr global [32 x %struct.hlist_head], align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ephemeral\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"persistent, %sconnected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atmtcp\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atmtcp_c_dev_ops = internal constant { %struct.atmdev_ops, [48 x i8] } { %struct.atmdev_ops { ptr null, ptr null, ptr @atmtcp_c_close, ptr null, ptr @atmtcp_c_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmtcp_control_dev.lock\00", [40 x i8] zeroinitializer }, align 32
@atmtcp_recv_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013atmtcp_recv_control: unknown type %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmtcp_recv_control\00", [44 x i8] zeroinitializer }, align 32
@atmtcp_recv_control._entry_ptr = internal global ptr @atmtcp_recv_control._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 24960, i64 24974, i64 24975]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 24960, i64 24974, i64 24975]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"atmtcp_ioctl_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 480, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"atmtcp_v_dev_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 330, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"atmtcp_control_dev\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 352, i32 23 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 80, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 156, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 240, i32 46 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 241, i32 22 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 242, i32 22 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 242, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 369, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"atmtcp_c_dev_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 346, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 356, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [24 x i8] c"../drivers/atm/atmtcp.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 105, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__exitcall_atmtcp_exit, ptr @__initcall__kmod_atmtcp__461_498_atmtcp_init6, ptr @atmtcp_exit, ptr @atmtcp_recv_control._entry, ptr @atmtcp_recv_control._entry_ptr, ptr @atmtcp_ioctl_ops, ptr @atmtcp_v_dev_ops, ptr @atmtcp_control_dev, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @atmtcp_c_dev_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmtcp_ioctl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmtcp_v_dev_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmtcp_control_dev to i32), i32 1112, i32 1376, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmtcp_c_dev_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmtcp_recv_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmtcp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @deregister_atm_ioctl(ptr noundef nonnull @atmtcp_ioctl_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_atm_ioctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_atm_ioctl(ptr noundef nonnull @atmtcp_ioctl_ops) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_ioctl(ptr nocapture noundef %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 24960, label %entry.if.end_crit_edge
    i32 24974, label %entry.if.end_crit_edge60
    i32 24975, label %entry.if.end_crit_edge61
  ]

entry.if.end_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge60, %entry.if.end_crit_edge61
  %call4 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call4, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %if.end6.cleanup_crit_edge [
    i32 24960, label %sw.bb
    i32 24974, label %sw.bb11
    i32 24975, label %sw.bb13
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg)
  %cmp.not.i = icmp eq i32 %arg, -1
  br i1 %cmp.not.i, label %sw.bb.if.else.i_crit_edge, label %if.end.i

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.end.i:                                         ; preds = %sw.bb
  %call.i = tail call ptr @atm_dev_lookup(i32 noundef %arg) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.if.else.i_crit_edge, label %if.then1.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 8
  %cmp2.not.i = icmp eq ptr %5, @atmtcp_v_dev_ops
  br i1 %cmp2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then1.i
  %refcnt.i.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 14
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %do.body.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #11
  br label %cleanup

do.body.i.i:                                      ; preds = %if.then3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %flags.i.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body6.i.i, label %do.end9.i.i, !prof !58

do.body6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #11, !srcloc !59
  unreachable

do.end9.i.i:                                      ; preds = %do.body.i.i
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool10.not.i.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i.i, label %do.end9.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

do.end9.i.i.if.end14.i.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %12(ptr noundef nonnull %call.i) #11
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %do.end9.i.i.if.end14.i.i_crit_edge
  %class_dev.i.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i.i) #11
  br label %cleanup

if.end4.i:                                        ; preds = %if.then1.i
  %dev_data.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %dev_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_data.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end4.i.atmtcp_attach.exit_crit_edge, label %if.then7.i

if.end4.i.atmtcp_attach.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atmtcp_attach.exit

if.then7.i:                                       ; preds = %if.end4.i
  %refcnt.i32.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 14
  %call.i.i.i.i.i.i33.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i32.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i32.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i32.i, ptr %refcnt.i32.i, i32 1, ptr elementtype(i32) %refcnt.i32.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i34.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i34.i)
  %cmp.i.i.i.i35.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i34.i, 1
  br i1 %cmp.i.i.i.i35.i, label %do.body.i42.i, label %if.end5.i.i.i.i37.i

if.end5.i.i.i.i37.i:                              ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i34.i)
  %.not.i.i.i.i36.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i34.i, 0
  br i1 %.not.i.i.i.i36.i, label %if.end5.i.i.i.i37.i.cleanup_crit_edge, label %if.then10.i.i.i.i38.i, !prof !56

if.end5.i.i.i.i37.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i38.i:                            ; preds = %if.end5.i.i.i.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i32.i, i32 noundef 3) #11
  br label %cleanup

do.body.i42.i:                                    ; preds = %if.then7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %flags.i39.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i39.i, align 4
  %and1.i.i40.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i40.i)
  %tobool.not.i41.i = icmp eq i32 %and1.i.i40.i, 0
  br i1 %tobool.not.i41.i, label %do.body6.i43.i, label %do.end9.i45.i, !prof !58

do.body6.i43.i:                                   ; preds = %do.body.i42.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #11, !srcloc !59
  unreachable

do.end9.i45.i:                                    ; preds = %do.body.i42.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool10.not.i44.i = icmp eq ptr %23, null
  br i1 %tobool10.not.i44.i, label %do.end9.i45.i.if.end14.i48.i_crit_edge, label %if.then11.i46.i

do.end9.i45.i.if.end14.i48.i_crit_edge:           ; preds = %do.end9.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i48.i

if.then11.i46.i:                                  ; preds = %do.end9.i45.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %23(ptr noundef nonnull %call.i) #11
  br label %if.end14.i48.i

if.end14.i48.i:                                   ; preds = %if.then11.i46.i, %do.end9.i45.i.if.end14.i48.i_crit_edge
  %class_dev.i47.i = getelementptr inbounds %struct.atm_dev, ptr %call.i, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i47.i) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i50.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i50.i, label %if.else.i.cleanup_crit_edge, label %if.end.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  %call1.i.i = tail call ptr @atm_dev_register(ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef nonnull @atmtcp_v_dev_ops, i32 noundef %arg, ptr noundef null) #11
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %atmtcp_create.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %cond.i.i = select i1 %cmp.not.i, i32 -12, i32 -16
  br label %cleanup

atmtcp_create.exit.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ci_range.i.i = getelementptr inbounds %struct.atm_dev, ptr %call1.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %ci_range.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %ci_range.i.i, align 2
  %vci_bits.i.i = getelementptr inbounds %struct.atm_dev, ptr %call1.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %vci_bits.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 16, ptr %vci_bits.i.i, align 1
  %dev_data6.i.i = getelementptr inbounds %struct.atm_dev, ptr %call1.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %dev_data6.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %dev_data6.i.i, align 8
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %call7.i.i.i, align 8
  %29 = load ptr, ptr %dev_data6.i.i, align 8
  %persist9.i.i = getelementptr inbounds %struct.atmtcp_dev_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %persist9.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %persist9.i.i, align 4
  br label %atmtcp_attach.exit

atmtcp_attach.exit:                               ; preds = %atmtcp_create.exit.i, %if.end4.i.atmtcp_attach.exit_crit_edge
  %dev.2.i = phi ptr [ %call1.i.i, %atmtcp_create.exit.i ], [ %call.i, %if.end4.i.atmtcp_attach.exit_crit_edge ]
  %dev_data14.i = getelementptr inbounds %struct.atm_dev, ptr %dev.2.i, i32 0, i32 4
  %31 = ptrtoint ptr %dev_data14.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_data14.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %32, align 4
  %dev16.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %dev16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @atmtcp_control_dev, ptr %dev16.i, align 4
  tail call void @vcc_insert_socket(ptr noundef %1) #11
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #11
  %dev_data19.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 14
  %35 = ptrtoint ptr %dev_data19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev.2.i, ptr %dev_data19.i, align 8
  %call20.i = tail call i32 @atm_init_aal5(ptr noundef %1) #11
  %stats.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr getelementptr inbounds (%struct.atm_dev, ptr @atmtcp_control_dev, i32 0, i32 11, i32 2), ptr %stats.i, align 8
  %number.i = getelementptr inbounds %struct.atm_dev, ptr %dev.2.i, i32 0, i32 3
  %37 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp8 = icmp sgt i32 %38, -1
  br i1 %cmp8, label %if.then9, label %atmtcp_attach.exit.cleanup_crit_edge

atmtcp_attach.exit.cleanup_crit_edge:             ; preds = %atmtcp_attach.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %atmtcp_attach.exit
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %sock, align 128
  tail call void @__module_get(ptr noundef null) #11
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3264, i32 noundef 8) #14
  %tobool.not.i.i24 = icmp eq ptr %call7.i.i.i23, null
  br i1 %tobool.not.i.i24, label %sw.bb11.cleanup_crit_edge, label %if.end.i.i27

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i27:                                     ; preds = %sw.bb11
  %call1.i.i25 = tail call ptr @atm_dev_register(ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef nonnull @atmtcp_v_dev_ops, i32 noundef %arg, ptr noundef null) #11
  %tobool2.not.i.i26 = icmp eq ptr %call1.i.i25, null
  br i1 %tobool2.not.i.i26, label %if.then3.i.i29, label %if.end4.i.i

if.then3.i.i29:                                   ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %arg)
  %cmp.i.i = icmp eq i32 %arg, -1
  %cond.i.i28 = select i1 %cmp.i.i, i32 -12, i32 -16
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #13
  %ci_range.i.i30 = getelementptr inbounds %struct.atm_dev, ptr %call1.i.i25, i32 0, i32 10
  %41 = ptrtoint ptr %ci_range.i.i30 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %ci_range.i.i30, align 2
  %vci_bits.i.i31 = getelementptr inbounds %struct.atm_dev, ptr %call1.i.i25, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %vci_bits.i.i31 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 16, ptr %vci_bits.i.i31, align 1
  %dev_data6.i.i32 = getelementptr inbounds %struct.atm_dev, ptr %call1.i.i25, i32 0, i32 4
  %43 = ptrtoint ptr %dev_data6.i.i32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i.i23, ptr %dev_data6.i.i32, align 8
  %44 = ptrtoint ptr %call7.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %call7.i.i.i23, align 8
  %45 = load ptr, ptr %dev_data6.i.i32, align 8
  %persist9.i.i33 = getelementptr inbounds %struct.atmtcp_dev_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %persist9.i.i33 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %persist9.i.i33, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end6
  %call.i35 = tail call ptr @atm_dev_lookup(i32 noundef %arg) #11
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %sw.bb13.cleanup_crit_edge, label %if.end.i38

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i38:                                       ; preds = %sw.bb13
  %47 = ptrtoint ptr %call.i35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i35, align 8
  %cmp.not.i37 = icmp eq ptr %48, @atmtcp_v_dev_ops
  br i1 %cmp.not.i37, label %if.end2.i, label %if.then1.i43

if.then1.i43:                                     ; preds = %if.end.i38
  %refcnt.i.i39 = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 14
  %call.i.i.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i39, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i39, i32 1, i32 3, i32 1) #11
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i39, ptr %refcnt.i.i39, i32 1, ptr elementtype(i32) %refcnt.i.i39) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i.i41 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i41)
  %cmp.i.i.i.i.i42 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i41, 1
  br i1 %cmp.i.i.i.i.i42, label %do.body.i.i50, label %if.end5.i.i.i.i.i45

if.end5.i.i.i.i.i45:                              ; preds = %if.then1.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i41)
  %.not.i.i.i.i.i44 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i41, 0
  br i1 %.not.i.i.i.i.i44, label %if.end5.i.i.i.i.i45.cleanup_crit_edge, label %if.then10.i.i.i.i.i46, !prof !56

if.end5.i.i.i.i.i45.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i46:                            ; preds = %if.end5.i.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i39, i32 noundef 3) #11
  br label %cleanup

do.body.i.i50:                                    ; preds = %if.then1.i43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %flags.i.i47 = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 6
  %50 = ptrtoint ptr %flags.i.i47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %flags.i.i47, align 4
  %and1.i.i.i48 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %and1.i.i.i48, 0
  br i1 %tobool.not.i.i49, label %do.body6.i.i51, label %do.end9.i.i53, !prof !58

do.body6.i.i51:                                   ; preds = %do.body.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #11, !srcloc !59
  unreachable

do.end9.i.i53:                                    ; preds = %do.body.i.i50
  %52 = ptrtoint ptr %call.i35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i35, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %tobool10.not.i.i52 = icmp eq ptr %55, null
  br i1 %tobool10.not.i.i52, label %do.end9.i.i53.if.end14.i.i56_crit_edge, label %if.then11.i.i54

do.end9.i.i53.if.end14.i.i56_crit_edge:           ; preds = %do.end9.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i56

if.then11.i.i54:                                  ; preds = %do.end9.i.i53
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %55(ptr noundef nonnull %call.i35) #11
  br label %if.end14.i.i56

if.end14.i.i56:                                   ; preds = %if.then11.i.i54, %do.end9.i.i53.if.end14.i.i56_crit_edge
  %class_dev.i.i55 = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i.i55) #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i38
  %dev_data3.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 4
  %56 = ptrtoint ptr %dev_data3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_data3.i, align 8
  %persist.i = getelementptr inbounds %struct.atmtcp_dev_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %persist.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %persist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool4.not.i = icmp eq i32 %59, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end2.i
  %refcnt.i23.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 14
  %call.i.i.i.i.i.i24.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i23.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i23.i, i32 1, i32 3, i32 1) #11
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i23.i, ptr %refcnt.i23.i, i32 1, ptr elementtype(i32) %refcnt.i23.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i25.i = extractvalue { i32, i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i25.i)
  %cmp.i.i.i.i26.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i25.i, 1
  br i1 %cmp.i.i.i.i26.i, label %do.body.i33.i, label %if.end5.i.i.i.i28.i

if.end5.i.i.i.i28.i:                              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i25.i)
  %.not.i.i.i.i27.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i25.i, 0
  br i1 %.not.i.i.i.i27.i, label %if.end5.i.i.i.i28.i.cleanup_crit_edge, label %if.then10.i.i.i.i29.i, !prof !56

if.end5.i.i.i.i28.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i29.i:                            ; preds = %if.end5.i.i.i.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i23.i, i32 noundef 3) #11
  br label %cleanup

do.body.i33.i:                                    ; preds = %if.then5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %flags.i30.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 6
  %61 = ptrtoint ptr %flags.i30.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags.i30.i, align 4
  %and1.i.i31.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i31.i)
  %tobool.not.i32.i = icmp eq i32 %and1.i.i31.i, 0
  br i1 %tobool.not.i32.i, label %do.body6.i34.i, label %do.end9.i36.i, !prof !58

do.body6.i34.i:                                   ; preds = %do.body.i33.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #11, !srcloc !59
  unreachable

do.end9.i36.i:                                    ; preds = %do.body.i33.i
  %63 = ptrtoint ptr %call.i35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i35, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool10.not.i35.i = icmp eq ptr %66, null
  br i1 %tobool10.not.i35.i, label %do.end9.i36.i.if.end14.i39.i_crit_edge, label %if.then11.i37.i

do.end9.i36.i.if.end14.i39.i_crit_edge:           ; preds = %do.end9.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i39.i

if.then11.i37.i:                                  ; preds = %do.end9.i36.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %66(ptr noundef nonnull %call.i35) #11
  br label %if.end14.i39.i

if.end14.i39.i:                                   ; preds = %if.then11.i37.i, %do.end9.i36.i.if.end14.i39.i_crit_edge
  %class_dev.i38.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i38.i) #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %67 = ptrtoint ptr %persist.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %persist.i, align 4
  %68 = ptrtoint ptr %dev_data3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_data3.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool9.not.i = icmp eq ptr %71, null
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  %refcnt.i41.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 14
  %call.i.i.i.i.i.i42.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i41.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i41.i, i32 1, i32 3, i32 1) #11
  %72 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i41.i, ptr %refcnt.i41.i, i32 1, ptr elementtype(i32) %refcnt.i41.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i43.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i43.i)
  %cmp.i.i.i.i44.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i43.i, 1
  br i1 %cmp.i.i.i.i44.i, label %do.body.i51.i, label %if.end5.i.i.i.i46.i

if.end5.i.i.i.i46.i:                              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i43.i)
  %.not.i.i.i.i45.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i43.i, 0
  br i1 %.not.i.i.i.i45.i, label %if.end5.i.i.i.i46.i.cleanup_crit_edge, label %if.then10.i.i.i.i47.i, !prof !56

if.end5.i.i.i.i46.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i47.i:                            ; preds = %if.end5.i.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i41.i, i32 noundef 3) #11
  br label %cleanup

do.body.i51.i:                                    ; preds = %if.then10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %flags.i48.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 6
  %73 = ptrtoint ptr %flags.i48.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags.i48.i, align 4
  %and1.i.i49.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i49.i)
  %tobool.not.i50.i57 = icmp eq i32 %and1.i.i49.i, 0
  br i1 %tobool.not.i50.i57, label %do.body6.i52.i, label %do.end9.i54.i, !prof !58

do.body6.i52.i:                                   ; preds = %do.body.i51.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #11, !srcloc !59
  unreachable

do.end9.i54.i:                                    ; preds = %do.body.i51.i
  %75 = ptrtoint ptr %call.i35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i35, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %tobool10.not.i53.i = icmp eq ptr %78, null
  br i1 %tobool10.not.i53.i, label %do.end9.i54.i.if.end14.i57.i_crit_edge, label %if.then11.i55.i

do.end9.i54.i.if.end14.i57.i_crit_edge:           ; preds = %do.end9.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i57.i

if.then11.i55.i:                                  ; preds = %do.end9.i54.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %78(ptr noundef nonnull %call.i35) #11
  br label %if.end14.i57.i

if.end14.i57.i:                                   ; preds = %if.then11.i55.i, %do.end9.i54.i.if.end14.i57.i_crit_edge
  %class_dev.i56.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i56.i) #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end6.i
  tail call void @kfree(ptr noundef %57) #11
  %refcnt.i59.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 14
  %call.i.i.i.i.i.i60.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i59.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr %refcnt.i59.i, i32 1, i32 3, i32 1) #11
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i59.i, ptr %refcnt.i59.i, i32 1, ptr elementtype(i32) %refcnt.i59.i) #11, !srcloc !55
  %asmresult.i.i.i.i.i.i.i61.i = extractvalue { i32, i32, i32 } %79, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i61.i)
  %cmp.i.i.i.i62.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i61.i, 1
  br i1 %cmp.i.i.i.i62.i, label %do.body.i69.i, label %if.end5.i.i.i.i64.i

if.end5.i.i.i.i64.i:                              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i61.i)
  %.not.i.i.i.i63.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i61.i, 0
  br i1 %.not.i.i.i.i63.i, label %if.end5.i.i.i.i64.i.atm_dev_put.exit76.i_crit_edge, label %if.then10.i.i.i.i65.i, !prof !56

if.end5.i.i.i.i64.i.atm_dev_put.exit76.i_crit_edge: ; preds = %if.end5.i.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atm_dev_put.exit76.i

if.then10.i.i.i.i65.i:                            ; preds = %if.end5.i.i.i.i64.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i59.i, i32 noundef 3) #11
  br label %atm_dev_put.exit76.i

do.body.i69.i:                                    ; preds = %if.end11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !57
  %flags.i66.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 6
  %80 = ptrtoint ptr %flags.i66.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags.i66.i, align 4
  %and1.i.i67.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i67.i)
  %tobool.not.i68.i = icmp eq i32 %and1.i.i67.i, 0
  br i1 %tobool.not.i68.i, label %do.body6.i70.i, label %do.end9.i72.i, !prof !58

do.body6.i70.i:                                   ; preds = %do.body.i69.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/atmdev.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #11, !srcloc !59
  unreachable

do.end9.i72.i:                                    ; preds = %do.body.i69.i
  %82 = ptrtoint ptr %call.i35 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i35, align 8
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %tobool10.not.i71.i = icmp eq ptr %85, null
  br i1 %tobool10.not.i71.i, label %do.end9.i72.i.if.end14.i75.i_crit_edge, label %if.then11.i73.i

do.end9.i72.i.if.end14.i75.i_crit_edge:           ; preds = %do.end9.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i75.i

if.then11.i73.i:                                  ; preds = %do.end9.i72.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %85(ptr noundef nonnull %call.i35) #11
  br label %if.end14.i75.i

if.end14.i75.i:                                   ; preds = %if.then11.i73.i, %do.end9.i72.i.if.end14.i75.i_crit_edge
  %class_dev.i74.i = getelementptr inbounds %struct.atm_dev, ptr %call.i35, i32 0, i32 18
  tail call void @put_device(ptr noundef %class_dev.i74.i) #11
  br label %atm_dev_put.exit76.i

atm_dev_put.exit76.i:                             ; preds = %if.end14.i75.i, %if.then10.i.i.i.i65.i, %if.end5.i.i.i.i64.i.atm_dev_put.exit76.i_crit_edge
  tail call void @atm_dev_deregister(ptr noundef nonnull %call.i35) #11
  br label %cleanup

cleanup:                                          ; preds = %atm_dev_put.exit76.i, %if.end14.i57.i, %if.then10.i.i.i.i47.i, %if.end5.i.i.i.i46.i.cleanup_crit_edge, %if.end14.i39.i, %if.then10.i.i.i.i29.i, %if.end5.i.i.i.i28.i.cleanup_crit_edge, %if.end14.i.i56, %if.then10.i.i.i.i.i46, %if.end5.i.i.i.i.i45.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end4.i.i, %if.then3.i.i29, %sw.bb11.cleanup_crit_edge, %if.then9, %atmtcp_attach.exit.cleanup_crit_edge, %if.then3.i.i, %if.else.i.cleanup_crit_edge, %if.end14.i48.i, %if.then10.i.i.i.i38.i, %if.end5.i.i.i.i37.i.cleanup_crit_edge, %if.end14.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %38, %if.then9 ], [ %38, %atmtcp_attach.exit.cleanup_crit_edge ], [ %cond.i.i28, %if.then3.i.i29 ], [ -12, %sw.bb11.cleanup_crit_edge ], [ 0, %if.end4.i.i ], [ 0, %atm_dev_put.exit76.i ], [ -19, %sw.bb13.cleanup_crit_edge ], [ -124, %if.end5.i.i.i.i.i45.cleanup_crit_edge ], [ -124, %if.then10.i.i.i.i.i46 ], [ -124, %if.end14.i.i56 ], [ 0, %if.end5.i.i.i.i28.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i29.i ], [ 0, %if.end14.i39.i ], [ 0, %if.end5.i.i.i.i46.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i47.i ], [ 0, %if.end14.i57.i ], [ %cond.i.i, %if.then3.i.i ], [ -12, %if.else.i.cleanup_crit_edge ], [ -16, %if.end14.i48.i ], [ -16, %if.then10.i.i.i.i38.i ], [ -16, %if.end5.i.i.i.i37.i.cleanup_crit_edge ], [ -124, %if.end14.i.i ], [ -124, %if.then10.i.i.i.i.i ], [ -124, %if.end5.i.i.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_lookup(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_insert_socket(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_init_aal5(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atmtcp_v_dev_close(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_v_open(ptr noundef %vcc) #2 align 64 {
entry:
  %msg = alloca %struct.atmtcp_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %msg) #11
  %vpi1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %0 = ptrtoint ptr %vpi1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vpi1, align 4
  %vci2 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %2 = ptrtoint ptr %vci2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vci2, align 8
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 116)
  %addr = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %addr, align 4
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %1, ptr %msg, align 4
  %vpi5 = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 3, i32 1, i32 1
  %8 = ptrtoint ptr %vpi5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %1, ptr %vpi5, align 2
  %conv = trunc i32 %3 to i16
  %vci7 = getelementptr inbounds %struct.atmtcp_hdr, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %vci7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %vci7, align 2
  %vci10 = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 3, i32 1, i32 2
  %10 = ptrtoint ptr %vci10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %vci10, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %1)
  %cmp = icmp eq i16 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %3)
  %cmp13 = icmp eq i32 %3, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %type, align 4
  %qos = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 4
  %qos15 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %12 = call ptr @memcpy(ptr %qos, ptr %qos15, i32 84)
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %call = call fastcc i32 @atmtcp_send_control(ptr noundef %vcc, i32 noundef 1, ptr noundef nonnull %msg, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sk_err = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 51
  %13 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_err, align 4
  %sub = sub i32 0, %14
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %msg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmtcp_v_close(ptr noundef %vcc) #2 align 64 {
entry:
  %msg = alloca %struct.atmtcp_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %msg) #11
  %0 = call ptr @memset(ptr %msg, i32 0, i32 120)
  %addr = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 3
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 8, ptr %addr, align 4
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %2 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vpi, align 4
  %vpi2 = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %vpi2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %vpi2, align 2
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %5 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vci, align 8
  %vci5 = getelementptr inbounds %struct.atmtcp_control, ptr %msg, i32 0, i32 3, i32 1, i32 2
  %7 = ptrtoint ptr %vci5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vci5, align 4
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %call = call fastcc i32 @atmtcp_send_control(ptr noundef %vcc, i32 noundef 2, ptr noundef nonnull %msg, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %msg) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_v_ioctl(ptr noundef writeonly %dev, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  %ci = alloca %struct.atm_cirange, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ci) #11
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ci, align 2, !annotation !60
  %1 = getelementptr inbounds %struct.atm_cirange, ptr %ci, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !60
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074553227, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 1074553227
  br i1 %cmp.not, label %if.then.i, label %entry.cleanup70_crit_edge

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup70

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 2, i32 -1226833920) #15, !srcloc !61
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !56

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ci, i32 noundef 2) #11
  %4 = call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !62
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ci, ptr noundef %arg, i32 noundef 2) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !56

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2, %if.then.i.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ci, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup70

if.end2:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ci to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ci, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %cmp3 = icmp eq i8 %9, -1
  br i1 %cmp3, label %if.then5, label %if.end2.if.end7_crit_edge

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %ci, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2.if.end7_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp9 = icmp eq i8 %12, -1
  br i1 %cmp9, label %if.then11, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %1, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  %14 = ptrtoint ptr %ci to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ci, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %15)
  %16 = icmp ugt i8 %15, 8
  br i1 %16, label %if.end13.cleanup70_crit_edge, label %lor.lhs.false22

if.end13.cleanup70_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup70

lor.lhs.false22:                                  ; preds = %if.end13
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %18)
  %19 = icmp ugt i8 %18, 16
  br i1 %19, label %lor.lhs.false22.cleanup70_crit_edge, label %if.end33

lor.lhs.false22.cleanup70_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup70

if.end33:                                         ; preds = %lor.lhs.false22
  call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #11
  br label %for.body

for.body:                                         ; preds = %for.inc68.critedge.for.body_crit_edge, %if.end33
  %i.096 = phi i32 [ 0, %if.end33 ], [ %inc, %for.inc68.critedge.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %i.096
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool36.not = icmp eq ptr %21, null
  %add.ptr = getelementptr i8, ptr %21, i32 -84
  %tobool39.not9397 = icmp eq ptr %add.ptr, null
  %tobool39.not93 = or i1 %tobool36.not, %tobool39.not9397
  br i1 %tobool39.not93, label %for.body.for.inc68.critedge_crit_edge, label %for.body.for.body40_crit_edge

for.body.for.body40_crit_edge:                    ; preds = %for.body
  br label %for.body40

for.body.for.inc68.critedge_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.critedge

for.body40:                                       ; preds = %for.inc.for.body40_crit_edge, %for.body.for.body40_crit_edge
  %s.094 = phi ptr [ %add.ptr64, %for.inc.for.body40_crit_edge ], [ %add.ptr, %for.body.for.body40_crit_edge ]
  %dev42 = getelementptr inbounds %struct.atm_vcc, ptr %s.094, i32 0, i32 6
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  %cmp43.not = icmp eq ptr %23, %dev
  br i1 %cmp43.not, label %if.end46, label %for.body40.for.inc_crit_edge

for.body40.for.inc_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end46:                                         ; preds = %for.body40
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %s.094, i32 0, i32 2
  %24 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vpi, align 4
  %conv47 = sext i16 %25 to i32
  %26 = ptrtoint ptr %ci to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ci, align 2
  %conv4985 = zext i8 %27 to i32
  %shr = ashr i32 %conv47, %conv4985
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool50.not = icmp eq i32 %shr, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %if.end46.if.then56_crit_edge

if.end46.if.then56_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56

lor.lhs.false51:                                  ; preds = %if.end46
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %s.094, i32 0, i32 3
  %28 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vci, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %1, align 1
  %conv5386 = zext i8 %31 to i32
  %shr54 = ashr i32 %29, %conv5386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr54)
  %tobool55.not = icmp eq i32 %shr54, 0
  br i1 %tobool55.not, label %lor.lhs.false51.for.inc_crit_edge, label %lor.lhs.false51.if.then56_crit_edge

lor.lhs.false51.if.then56_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then56

lor.lhs.false51.for.inc_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then56:                                        ; preds = %lor.lhs.false51.if.then56_crit_edge, %if.end46.if.then56_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #11
  br label %cleanup70

for.inc:                                          ; preds = %lor.lhs.false51.for.inc_crit_edge, %for.body40.for.inc_crit_edge
  %32 = getelementptr inbounds %struct.sock_common, ptr %s.094, i32 0, i32 15
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool60.not = icmp eq ptr %34, null
  %add.ptr64 = getelementptr i8, ptr %34, i32 -84
  %tobool39.not98 = icmp eq ptr %add.ptr64, null
  %tobool39.not = or i1 %tobool60.not, %tobool39.not98
  br i1 %tobool39.not, label %for.inc.for.inc68.critedge_crit_edge, label %for.inc.for.body40_crit_edge

for.inc.for.body40_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

for.inc.for.inc68.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc68.critedge

for.inc68.critedge:                               ; preds = %for.inc.for.inc68.critedge_crit_edge, %for.body.for.inc68.critedge_crit_edge
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end69, label %for.inc68.critedge.for.body_crit_edge

for.inc68.critedge.for.body_crit_edge:            ; preds = %for.inc68.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end69:                                        ; preds = %for.inc68.critedge
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #11
  %ci_range = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 10
  %35 = ptrtoint ptr %ci to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ci, align 2
  %37 = ptrtoint ptr %ci_range to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %ci_range, align 2
  br label %cleanup70

cleanup70:                                        ; preds = %for.end69, %if.then56, %lor.lhs.false22.cleanup70_crit_edge, %if.end13.cleanup70_crit_edge, %if.then11.i.i, %entry.cleanup70_crit_edge
  %retval.2 = phi i32 [ 0, %for.end69 ], [ -515, %entry.cleanup70_crit_edge ], [ -22, %lor.lhs.false22.cleanup70_crit_edge ], [ -22, %if.end13.cleanup70_crit_edge ], [ -16, %if.then56 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ci) #11
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_v_send(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qos = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 7
  %0 = ptrtoint ptr %qos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %qos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %2 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pop, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %vcc, ptr noundef %skb) #11
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev_data5 = getelementptr inbounds %struct.atm_dev, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev_data5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_data5, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.if.then12_crit_edge, label %if.end9

if.end4.if.then12_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end9:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool11.not = icmp eq ptr %9, null
  br i1 %tobool11.not, label %if.end9.if.then12_crit_edge, label %if.end22

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %if.end9.if.then12_crit_edge, %if.end4.if.then12_crit_edge
  %pop13 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %10 = ptrtoint ptr %pop13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pop13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %11(ptr noundef %vcc, ptr noundef %skb) #11
  br label %if.end18

if.else17:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then15
  br i1 %tobool6.not, label %if.end21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %13, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #11, !srcloc !65
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %add = add i32 %16, 8
  %call = tail call ptr @atm_alloc_charge(ptr noundef nonnull %9, i32 noundef %add, i32 noundef 2592) #11
  %tobool23.not = icmp eq ptr %call, null
  br i1 %tobool23.not, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end22
  %pop25 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %17 = ptrtoint ptr %pop25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pop25, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %18(ptr noundef %vcc, ptr noundef %skb) #11
  br label %if.end30

if.else29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then27
  %stats31 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %19 = ptrtoint ptr %stats31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats31, align 8
  %tx_err32 = getelementptr inbounds %struct.k_atm_aal_stats, ptr %20, i32 0, i32 1
  %call.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err32, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err32, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err32, ptr %tx_err32, i32 1, ptr elementtype(i32) %tx_err32) #11, !srcloc !65
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %call34 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 8) #11
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 2
  %22 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vpi, align 4
  %24 = ptrtoint ptr %call34 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %call34, align 4
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 3
  %25 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vci, align 8
  %conv36 = trunc i32 %26 to i16
  %vci37 = getelementptr inbounds %struct.atmtcp_hdr, ptr %call34, i32 0, i32 1
  %27 = ptrtoint ptr %vci37 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv36, ptr %vci37, align 2
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %length = getelementptr inbounds %struct.atmtcp_hdr, ptr %call34, i32 0, i32 2
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %length, align 4
  %31 = load i32, ptr %len, align 4
  %call40 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef %31) #11
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = call ptr @memcpy(ptr %call40, ptr %35, i32 %33)
  %pop42 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %37 = ptrtoint ptr %pop42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pop42, align 4
  %tobool43.not = icmp eq ptr %38, null
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %38(ptr noundef %vcc, ptr noundef %skb) #11
  br label %if.end47

if.else46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then44
  %push = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 10
  %39 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %push, align 8
  tail call void %40(ptr noundef nonnull %9, ptr noundef nonnull %call) #11
  %stats48 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %41 = ptrtoint ptr %stats48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stats48, align 8
  %call.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %42, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %42, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #11, !srcloc !65
  %stats49 = getelementptr inbounds %struct.atm_vcc, ptr %9, i32 0, i32 16
  %44 = ptrtoint ptr %stats49 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stats49, align 8
  %rx = getelementptr inbounds %struct.k_atm_aal_stats, ptr %45, i32 0, i32 2
  %call.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx, i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx, ptr %rx, i32 1, ptr elementtype(i32) %rx) #11, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end30, %if.end21, %if.end18.cleanup_crit_edge, %if.else, %if.then2
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -105, %if.end30 ], [ -67, %if.end21 ], [ -22, %if.else ], [ -22, %if.then2 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_v_proc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pos, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data1 = getelementptr inbounds %struct.atm_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data1, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %persist = getelementptr inbounds %struct.atmtcp_dev_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %persist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %persist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = call ptr @memcpy(ptr %page, ptr @.str.5, i32 11)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %8, null
  %cond = select i1 %tobool5.not, ptr @.str.8, ptr @.str.7
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ 10, %if.then3 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmtcp_send_control(ptr noundef %vcc, i32 noundef %type, ptr nocapture noundef readonly %msg, i32 noundef %flag) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !44) #11
  %and.i236 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i236 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 6
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %dev_data = getelementptr inbounds %struct.atm_dev, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_data, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.true:                                        ; preds = %entry
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %phi.cmp = icmp eq ptr %18, null
  br i1 %phi.cmp, label %cond.true.cleanup_crit_edge, label %if.end

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.true
  %call.i = tail call ptr @__alloc_skb(i32 noundef 120, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %dev_data11 = getelementptr inbounds %struct.atm_dev, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %dev_data11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_data11, align 8
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %do.body.if.then21_crit_edge, label %cond.end18

do.body.if.then21_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

cond.end18:                                       ; preds = %do.body
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %cond.end18.if.then21_crit_edge, label %if.end22

cond.end18.if.then21_crit_edge:                   ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

if.then21:                                        ; preds = %cond.end18.if.then21_crit_edge, %do.body.if.then21_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call.i) #11
  br label %cleanup

if.end22:                                         ; preds = %cond.end18
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %24, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #11
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %26, ptr elementtype(i32) %sk_backlog.i) #11, !srcloc !65
  %call23 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 120) #11
  %28 = call ptr @memcpy(ptr %call23, ptr %msg, i32 120)
  %length = getelementptr inbounds %struct.atmtcp_hdr, ptr %call23, i32 0, i32 2
  %29 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %length, align 4
  %type24 = getelementptr inbounds %struct.atmtcp_control, ptr %call23, i32 0, i32 1
  %30 = ptrtoint ptr %type24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %type, ptr %type24, align 4
  %vcc25 = getelementptr inbounds %struct.atmtcp_control, ptr %call23, i32 0, i32 2
  %31 = ptrtoint ptr %vcc25 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 0, ptr %vcc25, align 4
  store ptr %vcc, ptr %vcc25, align 4
  %flags27 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 1
  %32 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags27, align 4
  %and.i = and i32 %flag, 31
  %push = getelementptr inbounds %struct.atm_vcc, ptr %24, i32 0, i32 10
  %34 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %push, align 8
  tail call void %35(ptr noundef nonnull %24, ptr noundef nonnull %call.i) #11
  %36 = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 17
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %36, align 8
  call void @add_wait_queue(ptr noundef %38, ptr noundef nonnull %wait) #11
  %39 = shl nuw i32 1, %and.i
  %40 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %flags27, align 4
  %shr.i234241242 = xor i32 %41, %33
  %42 = and i32 %shr.i234241242, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp243 = icmp eq i32 %42, 0
  br i1 %cmp243, label %if.end22.do.body33_crit_edge, label %if.end22.__here166_crit_edge

if.end22.__here166_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here166

if.end22.do.body33_crit_edge:                     ; preds = %if.end22
  br label %do.body33

do.body33:                                        ; preds = %__here.do.body33_crit_edge, %if.end22.do.body33_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !67
  call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %dev_data37 = getelementptr inbounds %struct.atm_dev, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %dev_data37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_data37, align 8
  %tobool38.not = icmp eq ptr %46, null
  br i1 %tobool38.not, label %do.body33.__here166_crit_edge, label %cond.end44

do.body33.__here166_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here166

cond.end44:                                       ; preds = %do.body33
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool46.not = icmp eq ptr %48, null
  br i1 %tobool46.not, label %cond.end44.__here166_crit_edge, label %__here

cond.end44.__here166_crit_edge:                   ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here166

__here:                                           ; preds = %cond.end44
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 212
  %51 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 ptrtoint (ptr blockaddress(@atmtcp_send_control, %__here) to i32), ptr %task_state_change, align 4
  %52 = load ptr, ptr %task, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 2, ptr %52, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  call void @schedule() #11
  %54 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags27, align 4
  %shr.i234241 = xor i32 %55, %33
  %56 = and i32 %shr.i234241, %39
  %cmp = icmp eq i32 %56, 0
  br i1 %cmp, label %__here.do.body33_crit_edge, label %__here.__here166_crit_edge

__here.__here166_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here166

__here.do.body33_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body33

__here166:                                        ; preds = %__here.__here166_crit_edge, %cond.end44.__here166_crit_edge, %do.body33.__here166_crit_edge, %if.end22.__here166_crit_edge
  %error.0 = phi i32 [ 0, %if.end22.__here166_crit_edge ], [ -49, %do.body33.__here166_crit_edge ], [ 0, %__here.__here166_crit_edge ], [ -49, %cond.end44.__here166_crit_edge ]
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %task_state_change170 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 212
  %59 = ptrtoint ptr %task_state_change170 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 ptrtoint (ptr blockaddress(@atmtcp_send_control, %__here166) to i32), ptr %task_state_change170, align 4
  %60 = load ptr, ptr %task, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %60, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  %62 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %36, align 8
  call void @remove_wait_queue(ptr noundef %63, ptr noundef nonnull %wait) #11
  br label %cleanup

cleanup:                                          ; preds = %__here166, %if.then21, %if.end.cleanup_crit_edge, %cond.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %__here166 ], [ -49, %if.then21 ], [ -49, %cond.true.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -49, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_alloc_charge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_dev_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmtcp_c_close(ptr nocapture noundef %vcc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_data1 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %0 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_data1, align 8
  %dev_data2 = getelementptr inbounds %struct.atm_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_data2, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  %persist = getelementptr inbounds %struct.atmtcp_dev_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %persist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %persist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev_data2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dev_data2, align 8
  tail call void @kfree(ptr noundef %3) #11
  tail call void @atm_dev_deregister(ptr noundef %1) #11
  %8 = ptrtoint ptr %dev_data1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dev_data1, align 8
  tail call void @module_put(ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmtcp_c_send(ptr noundef %vcc, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %length = getelementptr inbounds %struct.atmtcp_hdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %vcc1.i = getelementptr inbounds %struct.atmtcp_control, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %vcc1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcc1.i, align 4
  %vpi.i = getelementptr inbounds %struct.atmtcp_control, ptr %3, i32 0, i32 3, i32 1, i32 1
  %8 = ptrtoint ptr %vpi.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vpi.i, align 2
  %vpi2.i = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %vpi2.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vpi2.i, align 4
  %vci.i = getelementptr inbounds %struct.atmtcp_control, ptr %3, i32 0, i32 3, i32 1, i32 2
  %11 = ptrtoint ptr %vci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vci.i, align 4
  %vci5.i = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %vci5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %vci5.i, align 8
  %qos.i = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 7
  %qos6.i = getelementptr inbounds %struct.atmtcp_control, ptr %3, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %qos.i, ptr %qos6.i, i32 84)
  %result.i = getelementptr inbounds %struct.atmtcp_control, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %result.i, align 4
  %sub.i = sub i32 0, %16
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %17 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %sk_err.i, align 4
  %type.i = getelementptr inbounds %struct.atmtcp_control, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %19, label %do.end.i [
    i32 1, label %if.then1.sw.epilog.i_crit_edge
    i32 2, label %sw.bb7.i
  ]

if.then1.sw.epilog.i_crit_edge:                   ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %19) #16
  br label %done

sw.epilog.i:                                      ; preds = %sw.bb7.i, %if.then1.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.bb7.i ], [ %19, %if.then1.sw.epilog.i_crit_edge ]
  %flags8.i = getelementptr inbounds %struct.atm_vcc, ptr %7, i32 0, i32 1
  tail call void @_change_bit(i32 noundef %.sink.i, ptr noundef %flags8.i) #11
  %21 = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 17
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %21, align 8
  tail call void @__wake_up(ptr noundef %23, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %done

if.end3:                                          ; preds = %if.end
  %dev_data = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 14
  %24 = ptrtoint ptr %dev_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_data, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @vcc_sklist_lock) #11
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %3, align 4
  %vci = getelementptr inbounds %struct.atmtcp_hdr, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %vci to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vci, align 2
  %conv = zext i16 %29 to i32
  %and.i = and i32 %conv, 31
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @vcc_hash, i32 0, i32 %and.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  %add.ptr.i = getelementptr i8, ptr %31, i32 -84
  %tobool2.not4044.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not40.i = or i1 %tobool.not.i, %tobool2.not4044.i
  br i1 %tobool2.not40.i, label %if.end3.if.then6_crit_edge, label %if.end3.for.body.i_crit_edge

if.end3.for.body.i_crit_edge:                     ; preds = %if.end3
  br label %for.body.i

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end3.for.body.i_crit_edge
  %s.041.i = phi ptr [ %add.ptr21.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end3.for.body.i_crit_edge ]
  %dev3.i = getelementptr inbounds %struct.atm_vcc, ptr %s.041.i, i32 0, i32 6
  %32 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev3.i, align 4
  %cmp.i = icmp eq ptr %33, %25
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %vci4.i = getelementptr inbounds %struct.atm_vcc, ptr %s.041.i, i32 0, i32 3
  %34 = ptrtoint ptr %vci4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vci4.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp5.i = icmp eq i32 %35, %conv
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %vpi7.i = getelementptr inbounds %struct.atm_vcc, ptr %s.041.i, i32 0, i32 2
  %36 = ptrtoint ptr %vpi7.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vpi7.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %27)
  %cmp9.i = icmp eq i16 %37, %27
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %rxtp.i = getelementptr inbounds %struct.atm_vcc, ptr %s.041.i, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %rxtp.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rxtp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp13.not.i = icmp eq i8 %39, 0
  br i1 %cmp13.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %if.end7

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %40 = getelementptr inbounds %struct.sock_common, ptr %s.041.i, i32 0, i32 15
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool17.not.i = icmp eq ptr %42, null
  %add.ptr21.i = getelementptr i8, ptr %42, i32 -84
  %tobool2.not45.i = icmp eq ptr %add.ptr21.i, null
  %tobool2.not.i = or i1 %tobool17.not.i, %tobool2.not45.i
  br i1 %tobool2.not.i, label %for.inc.i.if.then6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.if.then6_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %for.inc.i.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #11
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stats, align 8
  %tx_err = getelementptr inbounds %struct.k_atm_aal_stats, ptr %44, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_err, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_err, i32 1, i32 3, i32 1) #11
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_err, ptr %tx_err, i32 1, ptr elementtype(i32) %tx_err) #11, !srcloc !65
  br label %done

if.end7:                                          ; preds = %land.lhs.true11.i
  tail call void @_raw_read_unlock(ptr noundef nonnull @vcc_sklist_lock) #11
  %call8 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 8) #11
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %call10 = tail call ptr @atm_alloc_charge(ptr noundef nonnull %s.041.i, i32 noundef %47, i32 noundef 3264) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end7.done_crit_edge, label %if.end13

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i52 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %48 = getelementptr inbounds %struct.sk_buff, ptr %call10, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %call.i.i52, ptr %48, align 8
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %call15 = tail call ptr @skb_put(ptr noundef nonnull %call10, i32 noundef %51) #11
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = call ptr @memcpy(ptr %call15, ptr %55, i32 %53)
  %push = getelementptr inbounds %struct.atm_vcc, ptr %s.041.i, i32 0, i32 10
  %57 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %push, align 8
  tail call void %58(ptr noundef nonnull %s.041.i, ptr noundef nonnull %call10) #11
  %stats17 = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %59 = ptrtoint ptr %stats17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stats17, align 8
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %60, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %60, i32 1, i32 3, i32 1) #11
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #11, !srcloc !65
  %stats18 = getelementptr inbounds %struct.atm_vcc, ptr %s.041.i, i32 0, i32 16
  %62 = ptrtoint ptr %stats18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stats18, align 8
  %rx = getelementptr inbounds %struct.k_atm_aal_stats, ptr %63, i32 0, i32 2
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx, i32 1, i32 3, i32 1) #11
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx, ptr %rx, i32 1, ptr elementtype(i32) %rx) #11, !srcloc !65
  br label %done

done:                                             ; preds = %if.end13, %if.end7.done_crit_edge, %if.then6, %sw.epilog.i, %do.end.i
  %result.0 = phi i32 [ 0, %if.end13 ], [ -49, %if.then6 ], [ -105, %if.end7.done_crit_edge ], [ -22, %do.end.i ], [ 0, %sw.epilog.i ]
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 11
  %65 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pop, align 4
  %tobool19.not = icmp eq ptr %66, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %66(ptr noundef %vcc, ptr noundef %skb) #11
  br label %cleanup

if.else:                                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %result.0, %if.else ], [ %result.0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @atm_dev_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_change_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_atm_ioctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_file459, !1, !"__UNIQUE_ID_file459", i1 false, i1 false}
!1 = !{!"../drivers/atm/atmtcp.c", i32 497, i32 1}
!2 = !{ptr @__UNIQUE_ID_license460, !1, !"__UNIQUE_ID_license460", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_atmtcp__461_498_atmtcp_init6, !4, !"__initcall__kmod_atmtcp__461_498_atmtcp_init6", i1 false, i1 false}
!4 = !{!"../drivers/atm/atmtcp.c", i32 498, i32 1}
!5 = !{ptr @__exitcall_atmtcp_exit, !6, !"__exitcall_atmtcp_exit", i1 false, i1 false}
!6 = !{!"../drivers/atm/atmtcp.c", i32 499, i32 1}
!7 = !{ptr @atmtcp_ioctl_ops, !8, !"atmtcp_ioctl_ops", i1 false, i1 false}
!8 = !{!"../drivers/atm/atmtcp.c", i32 480, i32 25}
!9 = !{ptr @atmtcp_v_dev_ops, !10, !"atmtcp_v_dev_ops", i1 false, i1 false}
!10 = !{!"../drivers/atm/atmtcp.c", i32 330, i32 32}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/atm/atmtcp.c", i32 80, i32 3}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/atm/atmtcp.c", i32 83, i32 2}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/atm/atmtcp.c", i32 240, i32 46}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/atm/atmtcp.c", i32 241, i32 22}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/atm/atmtcp.c", i32 242, i32 22}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/atm/atmtcp.c", i32 242, i32 27}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/atm/atmtcp.c", i32 369, i32 25}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/atm/atmtcp.c", i32 356, i32 11}
!35 = !{ptr @atmtcp_control_dev, !36, !"atmtcp_control_dev", i1 false, i1 false}
!36 = !{!"../drivers/atm/atmtcp.c", i32 352, i32 23}
!37 = !{ptr @atmtcp_c_dev_ops, !38, !"atmtcp_c_dev_ops", i1 false, i1 false}
!38 = !{!"../drivers/atm/atmtcp.c", i32 346, i32 32}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/atm/atmtcp.c", i32 105, i32 3}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @atmtcp_recv_control._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @atmtcp_recv_control._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148439360}
!55 = !{i64 2148353800, i64 2148353832, i64 2148353861, i64 2148353895, i64 2148353926, i64 2148353949}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2149315474}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2156864382, i64 2156864869, i64 2156864419, i64 2156864475, i64 2156864509, i64 2156864533, i64 2156864574, i64 2156864595, i64 2156864623, i64 2156864657}
!60 = !{!"auto-init"}
!61 = !{i64 2152470167, i64 2152470192}
!62 = !{i64 4965722}
!63 = !{i64 4965919}
!64 = !{i64 2152451152}
!65 = !{i64 2148349805, i64 2148349831, i64 2148349860, i64 2148349894, i64 2148349925, i64 2148349948}
!66 = !{i64 2156868536}
!67 = !{i64 2156868858}
!68 = !{i64 2156873709}
!69 = !{i64 2156878433}
