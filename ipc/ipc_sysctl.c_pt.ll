; ModuleID = '/llk/IR_all_yes/ipc/ipc_sysctl.c_pt.bc'
source_filename = "../ipc/ipc_sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.28, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%union.anon.4 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.28 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ipc_mni = dso_local global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@ipc_mni_shift = dso_local global { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@ipc_min_cycle = dso_local global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_ipc_sysctl__164_247_ipc_sysctl_init6 = internal global ptr @ipc_sysctl_init, section ".initcall6.init", align 4
@__setup_str_ipc_mni_extend = internal constant [14 x i8] c"ipcmni_extend\00", section ".init.rodata", align 1
@__setup_ipc_mni_extend = internal global %struct.obs_kernel_param { ptr @__setup_str_ipc_mni_extend, ptr @ipc_mni_extend, i32 1 }, section ".init.setup", align 4
@ipc_root_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str, ptr null, i32 0, i16 365, ptr @ipc_kern_table, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@ipc_kern_table = internal global { [13 x %struct.ctl_table], [108 x i8] } { [13 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1252), i32 4, i16 420, ptr null, ptr @proc_ipc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1256), i32 4, i16 420, ptr null, ptr @proc_ipc_doulongvec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1264), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @ipc_mni }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1268), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax_orphans, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.5, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1232), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.6, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1240), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr @ipc_mni }, %struct.ctl_table { ptr @.str.7, ptr null, i32 4, i16 420, ptr null, ptr @proc_ipc_auto_msgmni, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.8, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1236), i32 4, i16 420, ptr null, ptr @proc_ipc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.9, ptr getelementptr (i8, ptr @init_ipc_ns, i64 1212), i32 16, i16 420, ptr null, ptr @proc_ipc_sem_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.10, ptr getelementptr (i8, ptr @init_ipc_ns, i64 172), i32 4, i16 438, ptr null, ptr @proc_ipc_dointvec_minmax_checkpoint_restore, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.11, ptr getelementptr (i8, ptr @init_ipc_ns, i64 576), i32 4, i16 438, ptr null, ptr @proc_ipc_dointvec_minmax_checkpoint_restore, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table { ptr @.str.12, ptr getelementptr (i8, ptr @init_ipc_ns, i64 980), i32 4, i16 438, ptr null, ptr @proc_ipc_dointvec_minmax_checkpoint_restore, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 36) }, %struct.ctl_table zeroinitializer], [108 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shmmax\00", [25 x i8] zeroinitializer }, align 32
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shmall\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"shmmni\00", [25 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"shm_rmid_forced\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msgmax\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msgmni\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"auto_msgmni\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msgmnb\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sem\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sem_next_id\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msg_next_id\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"shm_next_id\00", [20 x i8] zeroinitializer }, align 32
@proc_ipc_auto_msgmni.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@proc_ipc_auto_msgmni._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016writing to auto_msgmni has no effect\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"proc_ipc_auto_msgmni\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipc/ipc_sysctl.c\00", [47 x i8] zeroinitializer }, align 32
@proc_ipc_auto_msgmni._entry_ptr = internal global ptr @proc_ipc_auto_msgmni._entry, section ".printk_index", align 4
@ipc_mni_extend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.15, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016IPCMNI extended to %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipc_mni_extend\00", [17 x i8] zeroinitializer }, align 32
@ipc_mni_extend._entry_ptr = internal global ptr @ipc_mni_extend._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [8 x i8] c"ipc_mni\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 120, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"ipc_mni_shift\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 121, i32 5 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"ipc_min_cycle\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 122, i32 5 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"ipc_root_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 232, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 234, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"ipc_kern_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 124, i32 25 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 126, i32 15 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 133, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 140, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 149, i32 15 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 158, i32 15 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 167, i32 15 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 176, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 185, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 194, i32 15 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 202, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 211, i32 15 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 220, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 82, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [20 x i8] c"../ipc/ipc_sysctl.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 254, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_ipc_sysctl__164_247_ipc_sysctl_init6, ptr @__setup_ipc_mni_extend, ptr @ipc_mni_extend._entry, ptr @ipc_mni_extend._entry_ptr, ptr @proc_ipc_auto_msgmni._entry, ptr @proc_ipc_auto_msgmni._entry_ptr, ptr @ipc_mni, ptr @ipc_mni_shift, ptr @ipc_min_cycle, ptr @ipc_root_table, ptr @.str, ptr @ipc_kern_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_mni to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_mni_shift to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_min_cycle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_root_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_kern_table to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_ipc_auto_msgmni._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_mni_extend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipc_sysctl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @register_sysctl_table(ptr noundef nonnull @ipc_root_table) #6
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipc_mni_extend(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 16777216, ptr @ipc_mni, align 4
  store i32 24, ptr @ipc_mni_shift, align 4
  store i32 4096, ptr @ipc_min_cycle, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 16777216) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ipc_doulongvec_minmax(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %ipc_table = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ipc_table) #6
  %0 = call ptr @memcpy(ptr %ipc_table, ptr %table, i32 36)
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 110
  %7 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy.i, align 4
  %ipc_ns1.i = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ipc_ns1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_ns1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @init_ipc_ns to i32)
  %add.ptr.i = getelementptr i8, ptr %10, i32 %sub.ptr.sub.i
  %data = getelementptr inbounds %struct.ctl_table, ptr %ipc_table, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %data, align 4
  %call1 = call i32 @proc_doulongvec_minmax(ptr noundef nonnull %ipc_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ipc_table) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ipc_dointvec_minmax(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %ipc_table = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ipc_table) #6
  %0 = call ptr @memcpy(ptr %ipc_table, ptr %table, i32 36)
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i, align 8
  %nsproxy.i = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 110
  %7 = ptrtoint ptr %nsproxy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsproxy.i, align 4
  %ipc_ns1.i = getelementptr inbounds %struct.nsproxy, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ipc_ns1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_ns1.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, ptrtoint (ptr @init_ipc_ns to i32)
  %add.ptr.i = getelementptr i8, ptr %10, i32 %sub.ptr.sub.i
  %data = getelementptr inbounds %struct.ctl_table, ptr %ipc_table, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %data, align 4
  %call1 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %ipc_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ipc_table) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ipc_dointvec_minmax_orphans(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %ipc_table.i = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipc_ns, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ipc_table.i) #6
  %8 = call ptr @memcpy(ptr %ipc_table.i, ptr %table, i32 36)
  %data.i.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 110
  %15 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns1.i.i = getelementptr inbounds %struct.nsproxy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ipc_ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ipc_ns1.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, ptrtoint (ptr @init_ipc_ns to i32)
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %sub.ptr.sub.i.i
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %ipc_table.i, i32 0, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %call1.i = call i32 @proc_dointvec_minmax(ptr noundef nonnull %ipc_table.i, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ipc_table.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shm_rmid_forced = getelementptr inbounds %struct.ipc_namespace, ptr %7, i32 0, i32 12
  %20 = ptrtoint ptr %shm_rmid_forced to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shm_rmid_forced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @shm_destroy_orphaned(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ipc_auto_msgmni(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %ipc_table = alloca %struct.ctl_table, align 4
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ipc_table) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #6
  %0 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dummy, align 4
  %1 = call ptr @memcpy(ptr %ipc_table, ptr %table, i32 36)
  %data = getelementptr inbounds %struct.ctl_table, ptr %ipc_table, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dummy, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.end

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.end:                                         ; preds = %entry
  %.b18 = load i1, ptr @proc_ipc_auto_msgmni.__already_done, align 1
  br i1 %.b18, label %land.end.if.end14_crit_edge, label %if.then6, !prof !63

land.end.if.end14_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then6:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @proc_ipc_auto_msgmni.__already_done, align 1
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then6, %land.end.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call15 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %ipc_table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ipc_table) #6
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ipc_sem_dointvec(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %ipc_table.i = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipc_ns, align 4
  %arrayidx = getelementptr %struct.ipc_namespace, ptr %7, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ipc_table.i) #6
  %10 = call ptr @memcpy(ptr %ipc_table.i, ptr %table, i32 36)
  %data.i.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110
  %17 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns1.i.i = getelementptr inbounds %struct.nsproxy, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ipc_ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_ns1.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, ptrtoint (ptr @init_ipc_ns to i32)
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %sub.ptr.sub.i.i
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %ipc_table.i, i32 0, i32 1
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %call1.i = call i32 @proc_dointvec(ptr noundef nonnull %ipc_table.i, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ipc_table.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then8_crit_edge

entry.if.then8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then:                                          ; preds = %entry
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %nsproxy4 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 110
  %24 = ptrtoint ptr %nsproxy4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nsproxy4, align 4
  %ipc_ns5 = getelementptr inbounds %struct.nsproxy, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ipc_ns5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipc_ns5, align 4
  %arrayidx.i = getelementptr %struct.ipc_namespace, ptr %27, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp slt i32 %29, 0
  br i1 %cmp.i, label %if.then.if.then8_crit_edge, label %lor.rhs.i

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.rhs.i:                                        ; preds = %if.then
  %30 = load i32, ptr @ipc_mni, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %30)
  %cmp3.i = icmp sgt i32 %29, %30
  br i1 %cmp3.i, label %lor.rhs.i.if.then8_crit_edge, label %lor.rhs.i.if.end11_crit_edge

lor.rhs.i.if.end11_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

lor.rhs.i.if.then8_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %lor.rhs.i.if.then8_crit_edge, %if.then.if.then8_crit_edge, %entry.if.then8_crit_edge
  %ret.0.ph = phi i32 [ -34, %if.then.if.then8_crit_edge ], [ %call1.i, %entry.if.then8_crit_edge ], [ -34, %lor.rhs.i.if.then8_crit_edge ]
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %9, ptr %arrayidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %lor.rhs.i.if.end11_crit_edge
  %ret.018 = phi i32 [ %ret.0.ph, %if.then8 ], [ 0, %lor.rhs.i.if.end11_crit_edge ]
  ret i32 %ret.018
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_ipc_dointvec_minmax_checkpoint_restore(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 64 {
entry:
  %ipc_table.i = alloca %struct.ctl_table, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 110
  %4 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsproxy, align 4
  %ipc_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ipc_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipc_ns, align 4
  %user_ns1 = getelementptr inbounds %struct.ipc_namespace, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %user_ns1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns1, align 4
  %call.i = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 40) #6
  br i1 %call.i, label %land.lhs.true.if.end_crit_edge, label %checkpoint_restore_ns_capable.exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

checkpoint_restore_ns_capable.exit:               ; preds = %land.lhs.true
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %9, i32 noundef 21) #6
  br i1 %call1.i, label %checkpoint_restore_ns_capable.exit.if.end_crit_edge, label %checkpoint_restore_ns_capable.exit.cleanup_crit_edge

checkpoint_restore_ns_capable.exit.cleanup_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

checkpoint_restore_ns_capable.exit.if.end_crit_edge: ; preds = %checkpoint_restore_ns_capable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %checkpoint_restore_ns_capable.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ipc_table.i) #6
  %10 = call ptr @memcpy(ptr %ipc_table.i, ptr %table, i32 36)
  %data.i.i = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 1
  %11 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !53) #6
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 110
  %17 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nsproxy.i.i, align 4
  %ipc_ns1.i.i = getelementptr inbounds %struct.nsproxy, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %ipc_ns1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_ns1.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, ptrtoint (ptr @init_ipc_ns to i32)
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %sub.ptr.sub.i.i
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %ipc_table.i, i32 0, i32 1
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %call1.i5 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %ipc_table.i, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ipc_table.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %checkpoint_restore_ns_capable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i5, %if.end ], [ -1, %checkpoint_restore_ns_capable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shm_destroy_orphaned(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @ipc_mni, !1, !"ipc_mni", i1 false, i1 false}
!1 = !{!"../ipc/ipc_sysctl.c", i32 120, i32 5}
!2 = !{ptr @ipc_mni_shift, !3, !"ipc_mni_shift", i1 false, i1 false}
!3 = !{!"../ipc/ipc_sysctl.c", i32 121, i32 5}
!4 = !{ptr @ipc_min_cycle, !5, !"ipc_min_cycle", i1 false, i1 false}
!5 = !{!"../ipc/ipc_sysctl.c", i32 122, i32 5}
!6 = !{ptr @__initcall__kmod_ipc_sysctl__164_247_ipc_sysctl_init6, !7, !"__initcall__kmod_ipc_sysctl__164_247_ipc_sysctl_init6", i1 false, i1 false}
!7 = !{!"../ipc/ipc_sysctl.c", i32 247, i32 1}
!8 = !{ptr @__setup_ipc_mni_extend, !9, !"__setup_ipc_mni_extend", i1 false, i1 false}
!9 = !{!"../ipc/ipc_sysctl.c", i32 257, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../ipc/ipc_sysctl.c", i32 234, i32 15}
!12 = !{ptr @ipc_root_table, !13, !"ipc_root_table", i1 false, i1 false}
!13 = !{!"../ipc/ipc_sysctl.c", i32 232, i32 25}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../ipc/ipc_sysctl.c", i32 126, i32 15}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../ipc/ipc_sysctl.c", i32 133, i32 15}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../ipc/ipc_sysctl.c", i32 140, i32 15}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../ipc/ipc_sysctl.c", i32 149, i32 15}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../ipc/ipc_sysctl.c", i32 158, i32 15}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../ipc/ipc_sysctl.c", i32 167, i32 15}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../ipc/ipc_sysctl.c", i32 176, i32 15}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../ipc/ipc_sysctl.c", i32 185, i32 16}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../ipc/ipc_sysctl.c", i32 194, i32 15}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../ipc/ipc_sysctl.c", i32 202, i32 15}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../ipc/ipc_sysctl.c", i32 211, i32 15}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../ipc/ipc_sysctl.c", i32 220, i32 15}
!38 = !{ptr @ipc_kern_table, !39, !"ipc_kern_table", i1 false, i1 false}
!39 = !{!"../ipc/ipc_sysctl.c", i32 124, i32 25}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../ipc/ipc_sysctl.c", i32 82, i32 3}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @proc_ipc_auto_msgmni._entry, !41, !"_entry", i1 false, i1 false}
!46 = !{ptr @proc_ipc_auto_msgmni._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__setup_str_ipc_mni_extend, !9, !"__setup_str_ipc_mni_extend", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../ipc/ipc_sysctl.c", i32 254, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ipc_mni_extend._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ipc_mni_extend._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 2000, i32 1}
