; ModuleID = '/llk/IR_all_yes/net/atm/ioctl.c_pt.bc'
source_filename = "../net/atm/ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_atm_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_register_atm_ioctl\09\09\09\09"
module asm "\09.long\09__crc_register_atm_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_atm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22register_atm_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_register_atm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+deregister_atm_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_deregister_atm_ioctl\09\09\09\09"
module asm "\09.long\09__crc_deregister_atm_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_deregister_atm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22deregister_atm_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_deregister_atm_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.atm_iobuf = type { i32, ptr }
%struct.atmif_sioc = type { i32, i32, ptr }

@ioctl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ioctl_mutex, i64 52), ptr getelementptr (i8, ptr @ioctl_mutex, i64 52) }, ptr @ioctl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ioctl_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ioctl_list, ptr @ioctl_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_register_atm_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_atm_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_register_atm_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_atm_ioctl to i32), ptr @__kstrtab_register_atm_ioctl, ptr @__kstrtabns_register_atm_ioctl }, section "___ksymtab+register_atm_ioctl", align 4
@__kstrtab_deregister_atm_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_deregister_atm_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_deregister_atm_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @deregister_atm_ioctl to i32), ptr @__kstrtab_deregister_atm_ioctl, ptr @__kstrtabns_deregister_atm_ioctl }, section "___ksymtab+deregister_atm_ioctl", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ioctl_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ioctl_mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/atm/ioctl.c\00", [16 x i8] zeroinitializer }, align 32
@do_vcc_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014atm:%s: ATM_SETSC is obsolete; used by %s:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_vcc_ioctl\00", [19 x i8] zeroinitializer }, align 32
@do_vcc_ioctl._entry_ptr = internal global ptr @do_vcc_ioctl._entry, section ".printk_index", align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pppoatm\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"br2684\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpoa\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clip\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lec\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 21521, i64 21531, i64 25040, i64 25048, i64 25049, i64 25057, i64 25072, i64 1073897970, i64 1073897971, i64 1074029041]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"ioctl_mutex\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"ioctl_list\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 32, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 31, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 70, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 87, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 130, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 133, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 140, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 143, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [19 x i8] c"../net/atm/ioctl.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 146, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_deregister_atm_ioctl, ptr @__ksymtab_register_atm_ioctl, ptr @do_vcc_ioctl._entry, ptr @do_vcc_ioctl._entry_ptr, ptr @ioctl_mutex, ptr @ioctl_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctl_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_vcc_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_atm_ioctl(ptr noundef %ioctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ioctl_mutex, i32 noundef 0) #4
  %list = getelementptr inbounds %struct.atm_ioctl, ptr %ioctl, i32 0, i32 2
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ioctl_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %0, ptr noundef nonnull @ioctl_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @ioctl_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ioctl_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.atm_ioctl, ptr %ioctl, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ioctl_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @deregister_atm_ioctl(ptr noundef %ioctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ioctl_mutex, i32 noundef 0) #4
  %list = getelementptr inbounds %struct.atm_ioctl, ptr %ioctl, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.atm_ioctl, ptr %ioctl, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.atm_ioctl, ptr %ioctl, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ioctl_mutex) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vcc_ioctl(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1.i, align 16
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog88.i_crit_edge [
    i32 21521, label %sw.bb.i
    i32 21531, label %sw.bb7.i
    i32 1074029041, label %do.body34.i
    i32 25072, label %sw.bb50.i
    i32 1073897970, label %entry.sw.bb62.i_crit_edge
    i32 1073897971, label %entry.sw.bb62.i_crit_edge1
    i32 25048, label %entry.sw.epilog88.sink.split.i_crit_edge
    i32 25049, label %entry.sw.epilog88.sink.split.i_crit_edge2
    i32 25057, label %sw.bb84.i
    i32 25040, label %sw.bb86.i
  ]

entry.sw.epilog88.sink.split.i_crit_edge2:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.sink.split.i

entry.sw.epilog88.sink.split.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.sink.split.i

entry.sw.bb62.i_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb62.i

entry.sw.bb62.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb62.i

entry.sw.epilog88.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.i

sw.bb.i:                                          ; preds = %entry
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 3
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %sw.bb.i.do_vcc_ioctl.exit_crit_edge

sw.bb.i.do_vcc_ioctl.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %flags.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.do_vcc_ioctl.exit_crit_edge, label %if.end.i

lor.lhs.false.i.do_vcc_ioctl.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %9 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sk_sndbuf.i, align 4
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #4
  %11 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  %sub.i.neg.i = add i32 %10, 1
  %sub.i = sub i32 %sub.i.neg.i, %12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 71) #4
  %13 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #3, !srcloc !37
  %and.i.i = and i32 %15, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %sub.i, i32 -1226833921) #4, !srcloc !40
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  %cond.i = select i1 %tobool6.not.i, i32 0, i32 -14
  br label %do_vcc_ioctl.exit

sw.bb7.i:                                         ; preds = %entry
  %17 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp9.not.i = icmp eq i32 %18, 3
  br i1 %cmp9.not.i, label %if.end11.i, label %sw.bb7.i.do_vcc_ioctl.exit_crit_edge

sw.bb7.i.do_vcc_ioctl.exit_crit_edge:             ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

if.end11.i:                                       ; preds = %sw.bb7.i
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i = icmp eq ptr %20, %sk_receive_queue.i
  %tobool17.not38.i = icmp eq ptr %20, null
  %tobool17.not.i = or i1 %cmp.i.i, %tobool17.not38.i
  br i1 %tobool17.not.i, label %if.end11.i.cond.end.i_crit_edge, label %cond.true.i

if.end11.i.cond.end.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %len18.i = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %len18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len18.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end11.i.cond.end.i_crit_edge
  %cond19.i = phi i32 [ %22, %cond.true.i ], [ 0, %if.end11.i.cond.end.i_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 83) #4
  %23 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i3.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i3.i to ptr
  %cpu_domain.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i4.i) #3, !srcloc !37
  %and.i5.i = and i32 %25, -13
  %or.i6.i = or i32 %and.i5.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i6.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %2, i32 %cond19.i, i32 -1226833921) #4, !srcloc !41
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool31.not.i = icmp eq i32 %26, 0
  %cond32.i = select i1 %tobool31.not.i, i32 0, i32 -14
  br label %do_vcc_ioctl.exit

do.body34.i:                                      ; preds = %entry
  %call35.i = tail call i32 @net_ratelimit() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %do.body34.i.do_vcc_ioctl.exit_crit_edge, label %do.end40.i

do.body34.i.do_vcc_ioctl.exit_crit_edge:          ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

do.end40.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i23.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i23.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i, align 8
  %comm.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 101
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 68
  %31 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid.i.i, align 8
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %comm.i, i32 noundef %32) #7
  br label %do_vcc_ioctl.exit

sw.bb50.i:                                        ; preds = %entry
  %call51.i = tail call zeroext i1 @capable(i32 noundef 12) #4
  br i1 %call51.i, label %if.end53.i, label %sw.bb50.i.do_vcc_ioctl.exit_crit_edge

sw.bb50.i.do_vcc_ioctl.exit_crit_edge:            ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

if.end53.i:                                       ; preds = %sw.bb50.i
  %call54.i = tail call zeroext i1 @capable(i32 noundef 17) #4
  br i1 %call54.i, label %if.end56.i, label %if.end53.i.do_vcc_ioctl.exit_crit_edge

if.end53.i.do_vcc_ioctl.exit_crit_edge:           ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

if.end56.i:                                       ; preds = %if.end53.i
  %call57.i = tail call i32 @sigd_attach(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.then59.i, label %if.end56.i.do_vcc_ioctl.exit_crit_edge

if.end56.i.do_vcc_ioctl.exit_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %sock, align 128
  br label %do_vcc_ioctl.exit

sw.bb62.i:                                        ; preds = %entry.sw.bb62.i_crit_edge, %entry.sw.bb62.i_crit_edge1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 125) #4
  %34 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i7.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i7.i to ptr
  %cpu_domain.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 4
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i8.i) #3, !srcloc !37
  %and.i9.i = and i32 %36, -13
  %or.i10.i = or i32 %and.i9.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i10.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %37 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #4, !srcloc !42
  %asmresult.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool73.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool73.not.i, label %if.end75.i, label %sw.bb62.i.do_vcc_ioctl.exit_crit_edge

sw.bb62.i.do_vcc_ioctl.exit_crit_edge:            ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

if.end75.i:                                       ; preds = %sw.bb62.i
  %asmresult71.i = extractvalue { i32, i32 } %37, 1
  %trunc.i = trunc i32 %asmresult71.i to i16
  %38 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %trunc.i, label %if.end75.i.sw.epilog88.i_crit_edge [
    i16 1, label %if.end75.i.sw.epilog88.sink.split.i_crit_edge
    i16 2, label %sw.bb79.i
  ]

if.end75.i.sw.epilog88.sink.split.i_crit_edge:    ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.sink.split.i

if.end75.i.sw.epilog88.i_crit_edge:               ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.i

sw.bb79.i:                                        ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.sink.split.i

sw.bb84.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.sink.split.i

sw.bb86.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog88.sink.split.i

sw.epilog88.sink.split.i:                         ; preds = %sw.bb86.i, %sw.bb84.i, %sw.bb79.i, %if.end75.i.sw.epilog88.sink.split.i_crit_edge, %entry.sw.epilog88.sink.split.i_crit_edge, %entry.sw.epilog88.sink.split.i_crit_edge2
  %.str.5.sink.i = phi ptr [ @.str.6, %sw.bb79.i ], [ @.str.9, %sw.bb86.i ], [ @.str.8, %sw.bb84.i ], [ @.str.5, %if.end75.i.sw.epilog88.sink.split.i_crit_edge ], [ @.str.7, %entry.sw.epilog88.sink.split.i_crit_edge ], [ @.str.7, %entry.sw.epilog88.sink.split.i_crit_edge2 ]
  %call78.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %.str.5.sink.i) #4
  br label %sw.epilog88.i

sw.epilog88.i:                                    ; preds = %sw.epilog88.sink.split.i, %if.end75.i.sw.epilog88.i_crit_edge, %entry.sw.epilog88.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ioctl_mutex, i32 noundef 0) #4
  %pos.039.i = load ptr, ptr @ioctl_list, align 4
  %cmp.i24.not40.i = icmp eq ptr %pos.039.i, @ioctl_list
  br i1 %cmp.i24.not40.i, label %sw.epilog88.i.for.end.i_crit_edge, label %sw.epilog88.i.for.body.i_crit_edge

sw.epilog88.i.for.body.i_crit_edge:               ; preds = %sw.epilog88.i
  br label %for.body.i

sw.epilog88.i.for.end.i_crit_edge:                ; preds = %sw.epilog88.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %cleanup101.i.for.body.i_crit_edge, %sw.epilog88.i.for.body.i_crit_edge
  %pos.041.i = phi ptr [ %pos.0.i, %cleanup101.i.for.body.i_crit_edge ], [ %pos.039.i, %sw.epilog88.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pos.041.i, i32 -8
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  %call92.i = tail call zeroext i1 @try_module_get(ptr noundef %40) #4
  br i1 %call92.i, label %if.then93.i, label %for.body.i.cleanup101.i_crit_edge

for.body.i.cleanup101.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup101.i

if.then93.i:                                      ; preds = %for.body.i
  %ioctl.i = getelementptr i8, ptr %pos.041.i, i32 -4
  %41 = ptrtoint ptr %ioctl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioctl.i, align 4
  %call94.i = tail call i32 %42(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  tail call void @module_put(ptr noundef %44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -515, i32 %call94.i)
  %cmp96.not.i = icmp eq i32 %call94.i, -515
  br i1 %cmp96.not.i, label %if.then93.i.cleanup101.i_crit_edge, label %for.end.thread.i

if.then93.i.cleanup101.i_crit_edge:               ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup101.i

for.end.thread.i:                                 ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @ioctl_mutex) #4
  br label %do_vcc_ioctl.exit

cleanup101.i:                                     ; preds = %if.then93.i.cleanup101.i_crit_edge, %for.body.i.cleanup101.i_crit_edge
  %45 = ptrtoint ptr %pos.041.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %pos.0.i = load ptr, ptr %pos.041.i, align 4
  %cmp.i24.not.i = icmp eq ptr %pos.0.i, @ioctl_list
  br i1 %cmp.i24.not.i, label %cleanup101.i.for.end.i_crit_edge, label %cleanup101.i.for.body.i_crit_edge

cleanup101.i.for.body.i_crit_edge:                ; preds = %cleanup101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

cleanup101.i.for.end.i_crit_edge:                 ; preds = %cleanup101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup101.i.for.end.i_crit_edge, %sw.epilog88.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ioctl_mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074291075, i32 %cmd)
  %cmp107.i = icmp eq i32 %cmd, 1074291075
  br i1 %cmp107.i, label %if.then109.i, label %if.else.i

if.then109.i:                                     ; preds = %for.end.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 180) #4
  %buffer.i = getelementptr inbounds %struct.atm_iobuf, ptr %2, i32 0, i32 1
  %46 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i11.i to ptr
  %cpu_domain.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i12.i) #3, !srcloc !37
  %and.i13.i = and i32 %48, -13
  %or.i14.i = or i32 %and.i13.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i14.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %49 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer.i, i32 -1226833921) #4, !srcloc !43
  %asmresult119.i = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult119.i)
  %tobool122.not.i = icmp eq i32 %asmresult119.i, 0
  br i1 %tobool122.not.i, label %cleanup.cont127.i, label %if.then109.i.do_vcc_ioctl.exit_crit_edge

if.then109.i.do_vcc_ioctl.exit_crit_edge:         ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

cleanup.cont127.i:                                ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult120.i = extractvalue { i32, i32 } %49, 1
  %50 = inttoptr i32 %asmresult120.i to ptr
  %call128.i = tail call i32 @atm_getnames(ptr noundef %50, ptr noundef %2) #4
  br label %do_vcc_ioctl.exit

if.else.i:                                        ; preds = %for.end.i
  %length129.i = getelementptr inbounds %struct.atmif_sioc, ptr %2, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 203) #4
  %arg133.i = getelementptr inbounds %struct.atmif_sioc, ptr %2, i32 0, i32 2
  %51 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i15.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i15.i to ptr
  %cpu_domain.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 4
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i16.i) #3, !srcloc !37
  %and.i17.i = and i32 %53, -13
  %or.i18.i = or i32 %and.i17.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i18.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %54 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg133.i, i32 -1226833921) #4, !srcloc !44
  %asmresult140.i = extractvalue { i32, i32 } %54, 0
  %asmresult141.i = extractvalue { i32, i32 } %54, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %55 = inttoptr i32 %asmresult141.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult140.i)
  %tobool143.not.i = icmp eq i32 %asmresult140.i, 0
  br i1 %tobool143.not.i, label %cleanup162.i, label %if.else.i.do_vcc_ioctl.exit_crit_edge

if.else.i.do_vcc_ioctl.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

cleanup162.i:                                     ; preds = %if.else.i
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 205) #4
  %56 = tail call i32 @llvm.read_register.i32(metadata !27) #4
  %and.i.i.i19.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i19.i to ptr
  %cpu_domain.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i20.i) #3, !srcloc !37
  %and.i21.i = and i32 %58, -13
  %or.i22.i = or i32 %and.i21.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i22.i) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %59 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #4, !srcloc !45
  %asmresult156.i = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #4, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult156.i)
  %tobool159.not.i = icmp eq i32 %asmresult156.i, 0
  br i1 %tobool159.not.i, label %cleanup166.i, label %cleanup162.i.do_vcc_ioctl.exit_crit_edge

cleanup162.i.do_vcc_ioctl.exit_crit_edge:         ; preds = %cleanup162.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do_vcc_ioctl.exit

cleanup166.i:                                     ; preds = %cleanup162.i
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult157.i = extractvalue { i32, i32 } %59, 1
  %call165.i = tail call i32 @atm_dev_ioctl(i32 noundef %cmd, ptr noundef %55, ptr noundef %length129.i, i32 noundef %asmresult157.i, i32 noundef 0) #4
  br label %do_vcc_ioctl.exit

do_vcc_ioctl.exit:                                ; preds = %cleanup166.i, %cleanup162.i.do_vcc_ioctl.exit_crit_edge, %if.else.i.do_vcc_ioctl.exit_crit_edge, %cleanup.cont127.i, %if.then109.i.do_vcc_ioctl.exit_crit_edge, %for.end.thread.i, %sw.bb62.i.do_vcc_ioctl.exit_crit_edge, %if.then59.i, %if.end56.i.do_vcc_ioctl.exit_crit_edge, %if.end53.i.do_vcc_ioctl.exit_crit_edge, %sw.bb50.i.do_vcc_ioctl.exit_crit_edge, %do.end40.i, %do.body34.i.do_vcc_ioctl.exit_crit_edge, %cond.end.i, %sw.bb7.i.do_vcc_ioctl.exit_crit_edge, %if.end.i, %lor.lhs.false.i.do_vcc_ioctl.exit_crit_edge, %sw.bb.i.do_vcc_ioctl.exit_crit_edge
  %retval.2.i = phi i32 [ -14, %if.then109.i.do_vcc_ioctl.exit_crit_edge ], [ %call128.i, %cleanup.cont127.i ], [ %call165.i, %cleanup166.i ], [ %call57.i, %if.end56.i.do_vcc_ioctl.exit_crit_edge ], [ 0, %if.then59.i ], [ %cond.i, %if.end.i ], [ -22, %lor.lhs.false.i.do_vcc_ioctl.exit_crit_edge ], [ -22, %sw.bb.i.do_vcc_ioctl.exit_crit_edge ], [ %cond32.i, %cond.end.i ], [ -22, %sw.bb7.i.do_vcc_ioctl.exit_crit_edge ], [ 0, %do.end40.i ], [ 0, %do.body34.i.do_vcc_ioctl.exit_crit_edge ], [ -1, %sw.bb50.i.do_vcc_ioctl.exit_crit_edge ], [ -1, %if.end53.i.do_vcc_ioctl.exit_crit_edge ], [ %call94.i, %for.end.thread.i ], [ -14, %cleanup162.i.do_vcc_ioctl.exit_crit_edge ], [ -14, %if.else.i.do_vcc_ioctl.exit_crit_edge ], [ %asmresult.i, %sw.bb62.i.do_vcc_ioctl.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigd_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_getnames(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atm_dev_ioctl(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_register_atm_ioctl, !1, !"__ksymtab_register_atm_ioctl", i1 false, i1 false}
!1 = !{!"../net/atm/ioctl.c", i32 41, i32 1}
!2 = !{ptr @__ksymtab_deregister_atm_ioctl, !3, !"__ksymtab_deregister_atm_ioctl", i1 false, i1 false}
!3 = !{!"../net/atm/ioctl.c", i32 49, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/atm/ioctl.c", i32 31, i32 8}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ioctl_mutex, !5, !"ioctl_mutex", i1 false, i1 false}
!8 = !{ptr @ioctl_list, !9, !"ioctl_list", i1 false, i1 false}
!9 = !{!"../net/atm/ioctl.c", i32 32, i32 8}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/atm/ioctl.c", i32 70, i32 11}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/atm/ioctl.c", i32 87, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @do_vcc_ioctl._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @do_vcc_ioctl._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/atm/ioctl.c", i32 130, i32 4}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/atm/ioctl.c", i32 133, i32 4}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/atm/ioctl.c", i32 140, i32 3}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/atm/ioctl.c", i32 143, i32 3}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/atm/ioctl.c", i32 146, i32 3}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 4953162}
!38 = !{i64 4953359}
!39 = !{i64 2152438592}
!40 = !{i64 2156940417, i64 2156940697, i64 2156941031, i64 2156941365}
!41 = !{i64 2156949306, i64 2156949586, i64 2156949920, i64 2156950254}
!42 = !{i64 2156963594, i64 2156963874, i64 2156964208, i64 2156964542}
!43 = !{i64 2156983106, i64 2156983386, i64 2156983720, i64 2156984054}
!44 = !{i64 2156996005, i64 2156996285, i64 2156996619, i64 2156996953}
!45 = !{i64 2157008218, i64 2157008498, i64 2157008832, i64 2157009166}
