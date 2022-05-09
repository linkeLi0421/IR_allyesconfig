; ModuleID = '/llk/IR_all_yes/kernel/bpf/offload.c_pt.bc'
source_filename = "../kernel/bpf/offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bpf_offload_dev_match\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_offload_dev_match\09\09\09\09"
module asm "\09.long\09__crc_bpf_offload_dev_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_offload_dev_match:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_offload_dev_match\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_offload_dev_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_offload_dev_netdev_register\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_offload_dev_netdev_register\09\09\09\09"
module asm "\09.long\09__crc_bpf_offload_dev_netdev_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_offload_dev_netdev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_offload_dev_netdev_register\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_offload_dev_netdev_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_offload_dev_netdev_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_offload_dev_netdev_unregister\09\09\09\09"
module asm "\09.long\09__crc_bpf_offload_dev_netdev_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_offload_dev_netdev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_offload_dev_netdev_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_offload_dev_netdev_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_offload_dev_create\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_offload_dev_create\09\09\09\09"
module asm "\09.long\09__crc_bpf_offload_dev_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_offload_dev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_offload_dev_create\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_offload_dev_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_offload_dev_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_offload_dev_destroy\09\09\09\09"
module asm "\09.long\09__crc_bpf_offload_dev_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_offload_dev_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_offload_dev_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_offload_dev_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpf_offload_dev_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_bpf_offload_dev_priv\09\09\09\09"
module asm "\09.long\09__crc_bpf_offload_dev_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_offload_dev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_offload_dev_priv\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_offload_dev_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_prog_ops = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.84 = type { i32, i32, i64, i64, i32, i32, i64, i32, i32, [16 x i8], i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, %union.anon.85, i32, i64, i64, i32 }
%union.anon.85 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.61, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog_offload = type { ptr, ptr, ptr, ptr, %struct.list_head, i8, i8, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.123, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.168, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.123 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.168 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_offload_netdev = type { %struct.rhash_head, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rhash_head = type { ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.170 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { %struct.anon.172, [0 x %struct.sock_filter] }
%struct.anon.172 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.169 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%union.anon.169 = type { %struct.work_struct }
%struct.bpf_prog_offload_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_verifier_env = type { i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, [64 x ptr], [64 x %struct.btf_mod_pair], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.bpf_verifier_log, [257 x %struct.bpf_subprog_info], [75 x %struct.bpf_id_pair], %struct.anon.121, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.sockptr_t, i32, i64, i32, i32, [64 x i8] }
%struct.btf_mod_pair = type { ptr, ptr }
%struct.bpf_verifier_log = type { i32, [1024 x i8], ptr, i32, i32 }
%struct.bpf_subprog_info = type { i32, i32, i16, i8, i8, i8, i8 }
%struct.bpf_id_pair = type { i32, i32 }
%struct.anon.121 = type { ptr, ptr, i32 }
%struct.sockptr_t = type { %union.anon.122, i8 }
%union.anon.122 = type { ptr }
%struct.ns_get_path_bpf_prog_args = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.bpf_prog_info = type { i32, i32, [8 x i8], i32, i32, i64, i64, i64, i32, i32, i64, [16 x i8], i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.18, ptr }
%union.anon.18 = type { i64 }
%struct.lockref = type { %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.175, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.176, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.177, ptr, %struct.address_space, %struct.list_head, %union.anon.178, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.175 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.176 = type { %struct.callback_head }
%union.anon.177 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.178 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.40, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.164, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.164 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.165, i32, %struct.spinlock }
%union.anon.165 = type { %struct.anon.166 }
%struct.anon.166 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.netdev_bpf = type { i32, %union.anon.150 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, ptr, ptr }
%struct.anon.80 = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.bpf_offloaded_map = type { %struct.bpf_map, ptr, ptr, ptr, %struct.list_head, [108 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.bpf_map_dev_ops = type { ptr, ptr, ptr, ptr }
%struct.ns_get_path_bpf_map_args = type { ptr, ptr }
%struct.bpf_map_info = type { i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i64, i64, i32, i32, i32, i32, i64 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.bpf_offload_dev = type { ptr, %struct.list_head, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }

@bpf_devs_lock = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @bpf_devs_lock, i64 56), ptr getelementptr (i8, ptr @bpf_devs_lock, i64 56) }, ptr @bpf_devs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@bpf_offload_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } zeroinitializer, align 32
@__kstrtab_bpf_offload_dev_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_offload_dev_match = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_offload_dev_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_offload_dev_match to i32), ptr @__kstrtab_bpf_offload_dev_match, ptr @__kstrtabns_bpf_offload_dev_match }, section "___ksymtab_gpl+bpf_offload_dev_match", align 4
@offdevs = internal global { %struct.rhashtable, [60 x i8] } zeroinitializer, align 32
@offdevs_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 4, i16 4, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to register for BPF offload\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_bpf_offload_dev_netdev_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_offload_dev_netdev_register = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_offload_dev_netdev_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_offload_dev_netdev_register to i32), ptr @__kstrtab_bpf_offload_dev_netdev_register, ptr @__kstrtabns_bpf_offload_dev_netdev_register }, section "___ksymtab_gpl+bpf_offload_dev_netdev_register", align 4
@bpf_offload_dev_netdev_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/bpf/offload.c\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_bpf_offload_dev_netdev_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_offload_dev_netdev_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_offload_dev_netdev_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_offload_dev_netdev_unregister to i32), ptr @__kstrtab_bpf_offload_dev_netdev_unregister, ptr @__kstrtabns_bpf_offload_dev_netdev_unregister }, section "___ksymtab_gpl+bpf_offload_dev_netdev_unregister", align 4
@offdevs_inited = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_bpf_offload_dev_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_offload_dev_create = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_offload_dev_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_offload_dev_create to i32), ptr @__kstrtab_bpf_offload_dev_create, ptr @__kstrtabns_bpf_offload_dev_create }, section "___ksymtab_gpl+bpf_offload_dev_create", align 4
@__kstrtab_bpf_offload_dev_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_offload_dev_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_offload_dev_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_offload_dev_destroy to i32), ptr @__kstrtab_bpf_offload_dev_destroy, ptr @__kstrtabns_bpf_offload_dev_destroy }, section "___ksymtab_gpl+bpf_offload_dev_destroy", align 4
@__kstrtab_bpf_offload_dev_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_offload_dev_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_offload_dev_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_offload_dev_priv to i32), ptr @__kstrtab_bpf_offload_dev_priv, ptr @__kstrtabns_bpf_offload_dev_priv }, section "___ksymtab_gpl+bpf_offload_dev_priv", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bpf_devs_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpf_devs_lock\00", [18 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"attempt to execute device eBPF program on the host!\00", [44 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@bpf_map_offload_ndo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_map_offload_ops = external dso_local constant %struct.bpf_map_ops, align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"bpf_devs_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"bpf_offload_prog_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 343, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [8 x i8] c"offdevs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 58, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"offdevs_params\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 50, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 613, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 635, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"offdevs_inited\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 33, i32 8 }
@___asan_gen_.53 = private constant [24 x i8] c"../kernel/bpf/offload.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 252, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 230, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 214, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 174, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 715, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 755, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 695, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 723, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_bpf_offload_dev_create, ptr @__ksymtab_bpf_offload_dev_destroy, ptr @__ksymtab_bpf_offload_dev_match, ptr @__ksymtab_bpf_offload_dev_netdev_register, ptr @__ksymtab_bpf_offload_dev_netdev_unregister, ptr @__ksymtab_bpf_offload_dev_priv, ptr @bpf_devs_lock, ptr @bpf_offload_prog_ops, ptr @offdevs, ptr @offdevs_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @offdevs_inited, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_devs_lock to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_offload_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offdevs to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offdevs_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offdevs_inited to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_offload_init(ptr noundef %prog, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  %netdev.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 3, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge75
  ]

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge75
  %prog_flags = getelementptr inbounds %struct.anon.84, ptr %attr, i32 0, i32 8
  %3 = ptrtoint ptr %prog_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prog_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 1052096, i32 noundef 36) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %prog, ptr %call7.i.i, align 8
  %7 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 110
  %11 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net_ns, align 4
  %prog_ifindex = getelementptr inbounds %struct.anon.84, ptr %attr, i32 0, i32 10
  %15 = ptrtoint ptr %prog_ifindex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prog_ifindex, align 8
  %call10 = tail call ptr @dev_get_by_index(ptr noundef %14, i32 noundef %16) #11
  %netdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %netdev, align 4
  %tobool.not.i = icmp eq ptr %call10, null
  br i1 %tobool.not.i, label %if.end7.if.end28_crit_edge, label %if.end.i

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end.i:                                         ; preds = %if.end7
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 16
  %18 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_bpf.i = getelementptr inbounds %struct.net_device_ops, ptr %19, i32 0, i32 76
  %20 = ptrtoint ptr %ndo_bpf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndo_bpf.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.end.i.err_maybe_put_crit_edge, label %if.end15

if.end.i.err_maybe_put_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_maybe_put

if.end15:                                         ; preds = %if.end.i
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %22 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netdev.addr.i)
  %24 = ptrtoint ptr %netdev.addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %netdev.addr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i50 = icmp eq i32 %25, 0
  br i1 %tobool.not.i50, label %if.end15.if.end.i51_crit_edge, label %land.rhs.i

if.end15.if.end.i51_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i51

land.rhs.i:                                       ; preds = %if.end15
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @bpf_devs_lock, i32 0, i32 6), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i51_crit_edge, !prof !89

land.rhs.i.if.end.i51_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i51

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i51

if.end.i51:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i51_crit_edge, %if.end15.if.end.i51_crit_edge
  %.b29.i = load i1, ptr @offdevs_inited, align 1
  br i1 %.b29.i, label %bpf_offload_find_netdev.exit, label %bpf_offload_find_netdev.exit.thread

bpf_offload_find_netdev.exit.thread:              ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i)
  br label %if.then19

bpf_offload_find_netdev.exit:                     ; preds = %if.end.i51
  %call27.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %netdev.addr.i, [7 x i32] [i32 262148, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i)
  %tobool18.not = icmp eq ptr %call27.i, null
  br i1 %tobool18.not, label %bpf_offload_find_netdev.exit.if.then19_crit_edge, label %if.end20

bpf_offload_find_netdev.exit.if.then19_crit_edge: ; preds = %bpf_offload_find_netdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %bpf_offload_find_netdev.exit.if.then19_crit_edge, %bpf_offload_find_netdev.exit.thread
  call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  br label %err_maybe_put

if.end20:                                         ; preds = %bpf_offload_find_netdev.exit
  %offdev = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call27.i, i32 0, i32 2
  %26 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %offdev, align 4
  %offdev21 = getelementptr inbounds %struct.bpf_prog_offload, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %offdev21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %offdev21, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %29 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aux, align 4
  %offload22 = getelementptr inbounds %struct.bpf_prog_aux, ptr %30, i32 0, i32 48
  %31 = ptrtoint ptr %offload22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %offload22, align 8
  %offloads = getelementptr inbounds %struct.bpf_prog_offload, ptr %call7.i.i, i32 0, i32 4
  %progs = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call27.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call27.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i53 = call zeroext i1 @__list_add_valid(ptr noundef %offloads, ptr noundef %33, ptr noundef %progs) #11
  br i1 %call.i.i53, label %if.end.i.i, label %if.end20.list_add_tail.exit_crit_edge

if.end20.list_add_tail.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %offloads, ptr %prev.i, align 4
  %35 = ptrtoint ptr %offloads to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %progs, ptr %offloads, align 8
  %prev3.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %call7.i.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %offloads, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end20.list_add_tail.exit_crit_edge
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  %tobool.not.i54 = icmp eq ptr %39, null
  br i1 %tobool.not.i54, label %list_add_tail.exit.dev_put.exit_crit_edge, label %do.body1.i

list_add_tail.exit.dev_put.exit_crit_edge:        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %list_add_tail.exit
  %40 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !90
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i = add i32 %52, -1
  store i32 %add13.i, ptr %50, align 4
  %53 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !91
  %and.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !89

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #11, !srcloc !92
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %list_add_tail.exit.dev_put.exit_crit_edge
  call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  br label %cleanup

err_maybe_put:                                    ; preds = %if.then19, %if.end.i.err_maybe_put_crit_edge
  %err.0.ph = phi i32 [ -95, %if.end.i.err_maybe_put_crit_edge ], [ -22, %if.then19 ]
  %54 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load ptr, ptr %netdev, align 4
  %tobool25.not = icmp eq ptr %.pr, null
  br i1 %tobool25.not, label %err_maybe_put.if.end28_crit_edge, label %do.body1.i64

err_maybe_put.if.end28_crit_edge:                 ; preds = %err_maybe_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

do.body1.i64:                                     ; preds = %err_maybe_put
  %55 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !90
  %pcpu_refcnt.i56 = getelementptr inbounds %struct.net_device, ptr %.pr, i32 0, i32 118
  %56 = ptrtoint ptr %pcpu_refcnt.i56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcpu_refcnt.i56, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i57 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i57 to ptr
  %cpu.i58 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i58, align 4
  %arrayidx.i59 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i59, align 4
  %add.i60 = add i32 %64, %58
  %65 = inttoptr i32 %add.i60 to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add13.i61 = add i32 %67, -1
  store i32 %add13.i61, ptr %65, align 4
  %68 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !91
  %and.i.i.i62 = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool24.not.i63 = icmp eq i32 %and.i.i.i62, 0
  br i1 %tobool24.not.i63, label %if.then28.i65, label %do.body1.i64.dev_put.exit67_crit_edge, !prof !89

do.body1.i64.dev_put.exit67_crit_edge:            ; preds = %do.body1.i64
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit67

if.then28.i65:                                    ; preds = %do.body1.i64
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %dev_put.exit67

dev_put.exit67:                                   ; preds = %if.then28.i65, %do.body1.i64.dev_put.exit67_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #11, !srcloc !92
  br label %if.end28

if.end28:                                         ; preds = %dev_put.exit67, %err_maybe_put.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %err.074 = phi i32 [ %err.0.ph, %dev_put.exit67 ], [ %err.0.ph, %err_maybe_put.if.end28_crit_edge ], [ -22, %if.end7.if.end28_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %dev_put.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.074, %if.end28 ], [ 0, %dev_put.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_offload_verifier_prep(ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload1 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offdev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %prepare = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prepare, align 4
  %call = tail call i32 %9(ptr noundef %prog) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  %dev_state = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 5
  %frombool = zext i1 %tobool2.not to i8
  %10 = ptrtoint ptr %dev_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %dev_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -19, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_offload_verify_insn(ptr noundef %env, i32 noundef %insn_idx, i32 noundef %prev_insn_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload1 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %offdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call = tail call i32 %11(ptr noundef %env, i32 noundef %insn_idx, i32 noundef %prev_insn_idx) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -19, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_offload_finalize(ptr noundef %env) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload1 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %offdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %finalize = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %finalize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %finalize, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.then.if.end7_crit_edge, label %if.then3

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %11(ptr noundef %env) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ret.0 = phi i32 [ %call, %if.then3 ], [ -19, %entry.if.end7_crit_edge ], [ 0, %if.then.if.end7_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_offload_replace_insn(ptr noundef %env, i32 noundef %off, ptr noundef %insn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload1 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %opt_failed = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %opt_failed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opt_failed, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %offdev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %replace_insn = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %replace_insn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %replace_insn, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %13(ptr noundef %env, i32 noundef %off, ptr noundef %insn) #11
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ -95, %if.then.if.end_crit_edge ], [ %call, %if.then5 ], [ -95, %land.lhs.true.if.end_crit_edge ]
  %14 = ptrtoint ptr %opt_failed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %opt_failed, align 1, !range !93
  %16 = zext i8 %15 to i32
  %or = or i32 %ret.0, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool9 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool9 to i8
  %17 = ptrtoint ptr %opt_failed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %opt_failed, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_offload_remove_insns(ptr noundef %env, i32 noundef %off, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload1 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then:                                          ; preds = %entry
  %opt_failed = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %opt_failed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %opt_failed, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %offdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %offdev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %remove_insns = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %remove_insns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remove_insns, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %13(ptr noundef %env, i32 noundef %off, i32 noundef %cnt) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.0 = phi i32 [ -95, %if.then.if.end_crit_edge ], [ %call, %if.then4 ], [ -95, %land.lhs.true.if.end_crit_edge ]
  %14 = ptrtoint ptr %opt_failed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %opt_failed, align 1, !range !93
  %16 = zext i8 %15 to i32
  %or = or i32 %ret.0, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool10 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool10 to i8
  %17 = ptrtoint ptr %opt_failed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %opt_failed, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_prog_offload_destroy(ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offload, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %dev_state.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_state.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %offdev.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %offdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %offdev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %destroy.i = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %destroy.i, align 4
  tail call void %11(ptr noundef %prog) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  tail call void @bpf_prog_free_id(ptr noundef %prog, i1 noundef zeroext true) #11
  %offloads.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %offloads.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__bpf_prog_offload_destroy.exit_crit_edge

if.end.i.__bpf_prog_offload_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__bpf_prog_offload_destroy.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %offloads.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %offloads.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__bpf_prog_offload_destroy.exit

__bpf_prog_offload_destroy.exit:                  ; preds = %if.end.i.i.i, %if.end.i.__bpf_prog_offload_destroy.exit_crit_edge
  %18 = ptrtoint ptr %offloads.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %offloads.i, ptr %offloads.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %3, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %offloads.i, ptr %prev.i3.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %3) #11
  %20 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aux, align 4
  %offload3.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 48
  %22 = ptrtoint ptr %offload3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %offload3.i, align 8
  br label %if.end

if.end:                                           ; preds = %__bpf_prog_offload_destroy.exit, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_offload_compile(ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %0 = ptrtoint ptr %bpf_func to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bpf_prog_warn_on_exec, ptr %bpf_func, align 4
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %1 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aux.i, align 4
  %offload1.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %2, i32 0, i32 48
  %3 = ptrtoint ptr %offload1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %offload1.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.bpf_prog_offload_translate.exit_crit_edge, label %if.then.i

entry.bpf_prog_offload_translate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_prog_offload_translate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %offdev.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %offdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %offdev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %translate.i = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %translate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %translate.i, align 4
  %call.i = tail call i32 %10(ptr noundef %prog) #11
  br label %bpf_prog_offload_translate.exit

bpf_prog_offload_translate.exit:                  ; preds = %if.then.i, %entry.bpf_prog_offload_translate.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -19, %entry.bpf_prog_offload_translate.exit_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_prog_warn_on_exec(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %insn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef 9, ptr noundef nonnull @.str.5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_offload_info_fill(ptr noundef %info, ptr noundef %prog) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.ns_get_path_bpf_prog_args, align 4
  %ns_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct.ns_get_path_bpf_prog_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %prog, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %info, ptr %0, align 4
  %aux3 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %3 = ptrtoint ptr %aux3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ns_path) #11
  %5 = ptrtoint ptr %ns_path to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %ns_path, align 4, !annotation !94
  %6 = getelementptr inbounds %struct.path, ptr %ns_path, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !94
  %call = call i32 @ns_get_path_cb(ptr noundef nonnull %ns_path, ptr noundef nonnull @bpf_prog_offload_info_fill_ns, ptr noundef nonnull %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ifindex = getelementptr inbounds %struct.bpf_prog_info, ptr %info, i32 0, i32 12
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  %.call = select i1 %tobool4.not, i32 -19, i32 %call
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 48
  %10 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %offload, align 8
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %jited_prog_len = getelementptr inbounds %struct.bpf_prog_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %jited_prog_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jited_prog_len, align 8
  %jited_len = getelementptr inbounds %struct.bpf_prog_offload, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %jited_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jited_len, align 4
  store i32 %15, ptr %jited_prog_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool13.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %if.end9.if.end27_crit_edge, label %if.then15

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then15:                                        ; preds = %if.end9
  %jited_prog_insns = getelementptr inbounds %struct.bpf_prog_info, ptr %info, i32 0, i32 5
  %16 = ptrtoint ptr %jited_prog_insns to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %jited_prog_insns, align 8
  %conv17 = trunc i64 %17 to i32
  %18 = inttoptr i32 %conv17 to ptr
  %19 = call i32 @llvm.umin.i32(i32 %15, i32 %13)
  %20 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %offload, align 8
  %jited_image = getelementptr inbounds %struct.bpf_prog_offload, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %jited_image to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jited_image, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.i.i = icmp slt i32 %19, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then15
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.if.then25_crit_edge, label %if.then27.i.i, !prof !95

land.rhs16.i.i.if.then25_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then25

if.then.i.i.i:                                    ; preds = %if.then15
  call void @__check_object_size(ptr noundef %23, i32 noundef %19, i1 noundef zeroext true) #11
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.then25_crit_edge, label %if.end.i.i

if.then.i.i.i.if.then25_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %18, i32 %19, i32 -1226833920) #15, !srcloc !96
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.then25_crit_edge

if.end.i.i.if.then25_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %23, i32 noundef %19) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %18, ptr noundef %23, i32 noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool24.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool24.not, label %copy_to_user.exit.if.end27_crit_edge, label %copy_to_user.exit.if.then25_crit_edge

copy_to_user.exit.if.then25_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

copy_to_user.exit.if.end27_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then25:                                        ; preds = %copy_to_user.exit.if.then25_crit_edge, %if.end.i.i.if.then25_crit_edge, %if.then.i.i.i.if.then25_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then25_crit_edge
  call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  br label %cleanup

if.end27:                                         ; preds = %copy_to_user.exit.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %6, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s_dev, align 8
  %and1.i = and i32 %32, 255
  %33 = lshr i32 %32, 12
  %shl.i = and i32 %33, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %32, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %conv29 = zext i32 %or4.i to i64
  %netns_dev = getelementptr inbounds %struct.bpf_prog_info, ptr %info, i32 0, i32 14
  %34 = ptrtoint ptr %netns_dev to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv29, ptr %netns_dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino, align 8
  %conv30 = zext i32 %36 to i64
  %netns_ino = getelementptr inbounds %struct.bpf_prog_info, ptr %info, i32 0, i32 15
  %37 = ptrtoint ptr %netns_ino to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv30, ptr %netns_ino, align 8
  call void @path_put(ptr noundef nonnull %ns_path) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %if.then8, %if.then
  %retval.0 = phi i32 [ -14, %if.then25 ], [ 0, %if.end27 ], [ -19, %if.then8 ], [ %.call, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ns_path) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ns_get_path_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_prog_offload_info_fill_ns(ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %aux1 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux1, align 4
  tail call void @rtnl_lock() #11
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %netdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex, align 4
  %info = getelementptr inbounds %struct.ns_get_path_bpf_prog_args, ptr %private_data, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %ifindex3 = getelementptr inbounds %struct.bpf_prog_info, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %ifindex3, align 8
  %13 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %offload, align 8
  %netdev5 = getelementptr inbounds %struct.bpf_prog_offload, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev5, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #11, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !89

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !95

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #11
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %ns7 = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %info8 = getelementptr inbounds %struct.ns_get_path_bpf_prog_args, ptr %private_data, i32 0, i32 1
  %21 = ptrtoint ptr %info8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info8, align 4
  %ifindex9 = getelementptr inbounds %struct.bpf_prog_info, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %ifindex9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ifindex9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %get_net.exit
  %ns.0 = phi ptr [ %ns7, %get_net.exit ], [ null, %if.else ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  tail call void @rtnl_unlock() #11
  ret ptr %ns.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_map_offload_map_alloc(ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.netdev_bpf, align 4
  %netdev.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
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
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_ns, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr, align 8
  %.off = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 1052096, i32 noundef 512) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call7.i.i, ptr noundef %attr) #11
  tail call void @rtnl_lock() #11
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %map_ifindex = getelementptr inbounds %struct.anon.80, ptr %attr, i32 0, i32 8
  %11 = ptrtoint ptr %map_ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %map_ifindex, align 4
  %call12 = tail call ptr @__dev_get_by_index(ptr noundef %7, i32 noundef %12) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %netdev, align 128
  %tobool.not.i = icmp eq ptr %call12, null
  br i1 %tobool.not.i, label %if.end11.err_unlock_crit_edge, label %if.end.i

if.end11.err_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end.i:                                         ; preds = %if.end11
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_bpf.i = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 76
  %16 = ptrtoint ptr %ndo_bpf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndo_bpf.i, align 4
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %if.end.i.err_unlock_crit_edge, label %if.end17

if.end.i.err_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end17:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netdev.addr.i)
  %18 = ptrtoint ptr %netdev.addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %netdev.addr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i46 = icmp eq i32 %19, 0
  br i1 %tobool.not.i46, label %if.end17.if.end.i47_crit_edge, label %land.rhs.i

if.end17.if.end.i47_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i47

land.rhs.i:                                       ; preds = %if.end17
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @bpf_devs_lock, i32 0, i32 6), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i47_crit_edge, !prof !89

land.rhs.i.if.end.i47_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i47

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i47

if.end.i47:                                       ; preds = %do.end.i, %land.rhs.i.if.end.i47_crit_edge, %if.end17.if.end.i47_crit_edge
  %.b29.i = load i1, ptr @offdevs_inited, align 1
  br i1 %.b29.i, label %bpf_offload_find_netdev.exit, label %bpf_offload_find_netdev.exit.thread

bpf_offload_find_netdev.exit.thread:              ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i)
  br label %err_unlock

bpf_offload_find_netdev.exit:                     ; preds = %if.end.i47
  %call27.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %netdev.addr.i, [7 x i32] [i32 262148, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i)
  %tobool20.not = icmp eq ptr %call27.i, null
  br i1 %tobool20.not, label %bpf_offload_find_netdev.exit.err_unlock_crit_edge, label %if.end22

bpf_offload_find_netdev.exit.err_unlock_crit_edge: ; preds = %bpf_offload_find_netdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end22:                                         ; preds = %bpf_offload_find_netdev.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #11
  %20 = getelementptr inbounds i8, ptr %data.i, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 0, ptr %20, align 4
  %call.i = call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i49 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i49, label %land.rhs.i50, label %if.end22.bpf_map_offload_ndo.exit_crit_edge

if.end22.bpf_map_offload_ndo.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_map_offload_ndo.exit

land.rhs.i50:                                     ; preds = %if.end22
  %.b44.i = load i1, ptr @bpf_map_offload_ndo.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i50.bpf_map_offload_ndo.exit_crit_edge, label %if.then.i, !prof !95

land.rhs.i50.bpf_map_offload_ndo.exit_crit_edge:  ; preds = %land.rhs.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_map_offload_ndo.exit

if.then.i:                                        ; preds = %land.rhs.i50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bpf_map_offload_ndo.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 352) #11
  br label %bpf_map_offload_ndo.exit

bpf_map_offload_ndo.exit:                         ; preds = %if.then.i, %land.rhs.i50.bpf_map_offload_ndo.exit_crit_edge, %if.end22.bpf_map_offload_ndo.exit_crit_edge
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %data.i, align 4
  %23 = getelementptr inbounds %struct.netdev_bpf, ptr %data.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %23, align 4
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 128
  %netdev_ops.i51 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %netdev_ops.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev_ops.i51, align 8
  %ndo_bpf.i52 = getelementptr inbounds %struct.net_device_ops, ptr %28, i32 0, i32 76
  %29 = ptrtoint ptr %ndo_bpf.i52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndo_bpf.i52, align 4
  %call39.i = call i32 %30(ptr noundef %26, ptr noundef nonnull %data.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool24.not = icmp eq i32 %call39.i, 0
  br i1 %tobool24.not, label %if.end26, label %bpf_map_offload_ndo.exit.err_unlock_crit_edge

bpf_map_offload_ndo.exit.err_unlock_crit_edge:    ; preds = %bpf_map_offload_ndo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_unlock

if.end26:                                         ; preds = %bpf_map_offload_ndo.exit
  %offloads = getelementptr inbounds %struct.bpf_offloaded_map, ptr %call7.i.i, i32 0, i32 4
  %maps = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call27.i, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call27.i, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i53 = call zeroext i1 @__list_add_valid(ptr noundef %offloads, ptr noundef %32, ptr noundef %maps) #11
  br i1 %call.i.i53, label %if.end.i.i, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %offloads, ptr %prev.i, align 4
  %34 = ptrtoint ptr %offloads to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %maps, ptr %offloads, align 4
  %prev3.i.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %call7.i.i, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 8
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %offloads, ptr %32, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end26.list_add_tail.exit_crit_edge
  call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  call void @rtnl_unlock() #11
  br label %cleanup

err_unlock:                                       ; preds = %bpf_map_offload_ndo.exit.err_unlock_crit_edge, %bpf_offload_find_netdev.exit.err_unlock_crit_edge, %bpf_offload_find_netdev.exit.thread, %if.end.i.err_unlock_crit_edge, %if.end11.err_unlock_crit_edge
  %err.0 = phi i32 [ %call39.i, %bpf_map_offload_ndo.exit.err_unlock_crit_edge ], [ -22, %bpf_offload_find_netdev.exit.err_unlock_crit_edge ], [ -22, %bpf_offload_find_netdev.exit.thread ], [ -22, %if.end11.err_unlock_crit_edge ], [ -95, %if.end.i.err_unlock_crit_edge ]
  call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  call void @rtnl_unlock() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %37 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_unlock, %list_add_tail.exit, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %37, %err_unlock ], [ %call7.i.i, %list_add_tail.exit ], [ inttoptr (i32 -1 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_map_offload_map_free(ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #11
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__bpf_map_offload_destroy(ptr noundef %map)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  tail call void @rtnl_unlock() #11
  tail call void @kfree(ptr noundef %map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bpf_map_offload_destroy(ptr noundef %offmap) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.netdev_bpf, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i) #11
  %0 = getelementptr inbounds i8, ptr %data.i, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %call.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.bpf_map_offload_ndo.exit_crit_edge

entry.bpf_map_offload_ndo.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_map_offload_ndo.exit

land.rhs.i:                                       ; preds = %entry
  %.b44.i = load i1, ptr @bpf_map_offload_ndo.__already_done, align 1
  br i1 %.b44.i, label %land.rhs.i.bpf_map_offload_ndo.exit_crit_edge, label %if.then.i, !prof !95

land.rhs.i.bpf_map_offload_ndo.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_map_offload_ndo.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bpf_map_offload_ndo.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 352) #11
  br label %bpf_map_offload_ndo.exit

bpf_map_offload_ndo.exit:                         ; preds = %if.then.i, %land.rhs.i.bpf_map_offload_ndo.exit_crit_edge, %entry.bpf_map_offload_ndo.exit_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %data.i, align 4
  %3 = getelementptr inbounds %struct.netdev_bpf, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %offmap, ptr %3, align 4
  %netdev38.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 1
  %5 = ptrtoint ptr %netdev38.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev38.i, align 128
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_bpf.i = getelementptr inbounds %struct.net_device_ops, ptr %8, i32 0, i32 76
  %9 = ptrtoint ptr %ndo_bpf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndo_bpf.i, align 4
  %call39.i = call i32 %10(ptr noundef %6, ptr noundef nonnull %data.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool.not = icmp eq i32 %call39.i, 0
  br i1 %tobool.not, label %bpf_map_offload_ndo.exit.if.end_crit_edge, label %do.end, !prof !95

bpf_map_offload_ndo.exit.if.end_crit_edge:        ; preds = %bpf_map_offload_ndo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %bpf_map_offload_ndo.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 413, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %bpf_map_offload_ndo.exit.if.end_crit_edge
  call void @bpf_map_free_id(ptr noundef %offmap, i1 noundef zeroext true) #11
  %offloads = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %offloads) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %offloads to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %offloads, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %offloads to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %offloads, ptr %offloads, align 4
  %prev.i3.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %offmap, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %offloads, ptr %prev.i3.i, align 4
  %19 = ptrtoint ptr %netdev38.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %netdev38.i, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_map_offload_lookup_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev_ops = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %dev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops, align 4
  %map_lookup_elem = getelementptr inbounds %struct.bpf_map_dev_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map_lookup_elem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_lookup_elem, align 4
  %call1 = tail call i32 %5(ptr noundef %map, ptr noundef %key, ptr noundef %value) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -19, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_map_offload_update_elem(ptr noundef %map, ptr noundef %key, ptr noundef %value, i64 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %flags)
  %cmp = icmp ugt i64 %flags, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !89

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev_ops = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %dev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops, align 4
  %map_update_elem = getelementptr inbounds %struct.bpf_map_dev_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %map_update_elem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_update_elem, align 4
  %call4 = tail call i32 %5(ptr noundef %map, ptr noundef %key, ptr noundef %value, i64 noundef %flags) #11
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ -19, %if.end.if.end5_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_map_offload_delete_elem(ptr noundef %map, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev_ops = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %dev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops, align 4
  %map_delete_elem = getelementptr inbounds %struct.bpf_map_dev_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %map_delete_elem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_delete_elem, align 4
  %call1 = tail call i32 %5(ptr noundef %map, ptr noundef %key) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -19, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_map_offload_get_next_key(ptr noundef %map, ptr noundef %key, ptr noundef %next_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev_ops = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %dev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 %5(ptr noundef %map, ptr noundef %key, ptr noundef %next_key) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then ], [ -19, %entry.if.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_map_offload_info_fill(ptr noundef %info, ptr noundef %map) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.ns_get_path_bpf_map_args, align 4
  %ns_path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #11
  %0 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %map, ptr %args, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %info, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ns_path) #11
  %3 = ptrtoint ptr %ns_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ns_path, align 4, !annotation !94
  %4 = getelementptr inbounds %struct.path, ptr %ns_path, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !94
  %call2 = call i32 @ns_get_path_cb(ptr noundef nonnull %ns_path, ptr noundef nonnull @bpf_map_offload_info_fill_ns, ptr noundef nonnull %args) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ifindex = getelementptr inbounds %struct.bpf_map_info, ptr %info, i32 0, i32 7
  %6 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  %.call2 = select i1 %tobool3.not, i32 -19, i32 %call2
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %d_inode = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_dev = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %s_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_dev, align 8
  %and1.i = and i32 %15, 255
  %16 = lshr i32 %15, 12
  %shl.i = and i32 %16, 1048320
  %or.i = or i32 %shl.i, %and1.i
  %and2.i = shl i32 %15, 12
  %shl3.i = and i32 %and2.i, -1048576
  %or4.i = or i32 %or.i, %shl3.i
  %conv = zext i32 %or4.i to i64
  %netns_dev = getelementptr inbounds %struct.bpf_map_info, ptr %info, i32 0, i32 9
  %17 = ptrtoint ptr %netns_dev to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %netns_dev, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %conv7 = zext i32 %19 to i64
  %netns_ino = getelementptr inbounds %struct.bpf_map_info, ptr %info, i32 0, i32 10
  %20 = ptrtoint ptr %netns_ino to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv7, ptr %netns_ino, align 8
  call void @path_put(ptr noundef nonnull %ns_path) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %.call2, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ns_path) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_map_offload_info_fill_ns(ptr nocapture noundef readonly %private_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #11
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 128
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %ifindex = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifindex, align 4
  %info = getelementptr inbounds %struct.ns_get_path_bpf_map_args, ptr %private_data, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %ifindex3 = getelementptr inbounds %struct.bpf_map_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %ifindex3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %ifindex3, align 8
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data, align 4
  %netdev5 = getelementptr inbounds %struct.bpf_offloaded_map, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev5, align 128
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #11, !srcloc !97
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !89

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !95

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #11
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %ns7 = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %info8 = getelementptr inbounds %struct.ns_get_path_bpf_map_args, ptr %private_data, i32 0, i32 1
  %17 = ptrtoint ptr %info8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info8, align 4
  %ifindex9 = getelementptr inbounds %struct.bpf_map_info, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %ifindex9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ifindex9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %get_net.exit
  %ns.0 = phi ptr [ %ns7, %get_net.exit ], [ null, %if.else ]
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  tail call void @rtnl_unlock() #11
  ret ptr %ns.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_offload_dev_match(ptr nocapture noundef readonly %prog, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %call = tail call fastcc zeroext i1 @__bpf_offload_dev_match(ptr noundef %prog, ptr noundef %netdev)
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__bpf_offload_dev_match(ptr nocapture noundef readonly %prog, ptr noundef %netdev) unnamed_addr #0 align 64 {
entry:
  %netdev.addr.i24 = alloca ptr, align 4
  %netdev.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %0 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aux, align 4
  %offload_requested.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %offload_requested.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offload_requested.i, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %offload2 = getelementptr inbounds %struct.bpf_prog_aux, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %offload2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload2, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %netdev5 = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %netdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev5, align 4
  %cmp = icmp eq ptr %7, %netdev
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netdev.addr.i)
  %8 = ptrtoint ptr %netdev.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %netdev.addr.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end7.if.end.i_crit_edge, label %land.rhs.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end7
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @bpf_devs_lock, i32 0, i32 6), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !89

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %.b29.i = load i1, ptr @offdevs_inited, align 1
  br i1 %.b29.i, label %if.end26.i, label %if.end.i.bpf_offload_find_netdev.exit_crit_edge

if.end.i.bpf_offload_find_netdev.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bpf_offload_find_netdev.exit

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call27.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %netdev.addr.i, [7 x i32] [i32 262148, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  br label %bpf_offload_find_netdev.exit

bpf_offload_find_netdev.exit:                     ; preds = %if.end26.i, %if.end.i.bpf_offload_find_netdev.exit_crit_edge
  %retval.0.i = phi ptr [ %call27.i, %if.end26.i ], [ null, %if.end.i.bpf_offload_find_netdev.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %netdev.addr.i24)
  %10 = ptrtoint ptr %netdev.addr.i24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %netdev, ptr %netdev.addr.i24, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i25 = icmp eq i32 %11, 0
  br i1 %tobool.not.i25, label %bpf_offload_find_netdev.exit.if.end.i31_crit_edge, label %land.rhs.i28

bpf_offload_find_netdev.exit.if.end.i31_crit_edge: ; preds = %bpf_offload_find_netdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i31

land.rhs.i28:                                     ; preds = %bpf_offload_find_netdev.exit
  %call.i.i26 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @bpf_devs_lock, i32 0, i32 6), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %cmp.not.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %cmp.not.i27, label %do.end.i29, label %land.rhs.i28.if.end.i31_crit_edge, !prof !89

land.rhs.i28.if.end.i31_crit_edge:                ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i31

do.end.i29:                                       ; preds = %land.rhs.i28
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i31

if.end.i31:                                       ; preds = %do.end.i29, %land.rhs.i28.if.end.i31_crit_edge, %bpf_offload_find_netdev.exit.if.end.i31_crit_edge
  %.b29.i30 = load i1, ptr @offdevs_inited, align 1
  br i1 %.b29.i30, label %bpf_offload_find_netdev.exit35, label %bpf_offload_find_netdev.exit35.thread

bpf_offload_find_netdev.exit35.thread:            ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i24)
  br label %cleanup

bpf_offload_find_netdev.exit35:                   ; preds = %if.end.i31
  %call27.i32 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %netdev.addr.i24, [7 x i32] [i32 262148, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %netdev.addr.i24)
  %tobool11.not = icmp eq ptr %retval.0.i, null
  %tobool12.not = icmp eq ptr %call27.i32, null
  %or.cond = select i1 %tobool11.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %bpf_offload_find_netdev.exit35.cleanup_crit_edge, label %land.rhs

bpf_offload_find_netdev.exit35.cleanup_crit_edge: ; preds = %bpf_offload_find_netdev.exit35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %bpf_offload_find_netdev.exit35
  call void @__sanitizer_cov_trace_pc() #13
  %offdev = getelementptr inbounds %struct.bpf_offload_netdev, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %offdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %offdev, align 4
  %offdev13 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call27.i32, i32 0, i32 2
  %14 = ptrtoint ptr %offdev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %offdev13, align 4
  %cmp14 = icmp eq ptr %13, %15
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %bpf_offload_find_netdev.exit35.cleanup_crit_edge, %bpf_offload_find_netdev.exit35.thread, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ false, %bpf_offload_find_netdev.exit35.cleanup_crit_edge ], [ %cmp14, %land.rhs ], [ false, %bpf_offload_find_netdev.exit35.thread ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_offload_prog_map_match(ptr nocapture noundef readonly %prog, ptr nocapture noundef readonly %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 128
  %cmp.i = icmp eq ptr %1, @bpf_map_offload_ops
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %map_type.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %map_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i7 = icmp eq i32 %3, 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @down_read(ptr noundef nonnull @bpf_devs_lock) #11
  %netdev = getelementptr inbounds %struct.bpf_offloaded_map, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 128
  %call3 = tail call fastcc zeroext i1 @__bpf_offload_dev_match(ptr noundef %prog, ptr noundef %5)
  tail call void @up_read(ptr noundef nonnull @bpf_devs_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call3, %if.end ], [ %cmp.i7, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_offload_dev_netdev_register(ptr noundef %offdev, ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev1 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %netdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %netdev, ptr %netdev1, align 4
  %offdev2 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %offdev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %offdev, ptr %offdev2, align 8
  %progs = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %progs to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %progs, ptr %progs, align 4
  %prev.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %progs, ptr %prev.i, align 8
  %maps = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %maps, ptr %maps, align 4
  %prev.i24 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %maps, ptr %prev.i24, align 8
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.rcu_read_lock.exit.i.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i_crit_edge
  %11 = load volatile ptr, ptr @offdevs, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @offdevs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call5.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i25 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i25)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i25, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 715, ptr noundef nonnull @.str.10) #11
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end12.i.i_crit_edge
  %12 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i = zext i16 %12 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call7.i.i, i32 %idx.neg.i.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 4
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %14, -559038733
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 4
  %add36.i.i.i.i.i.i = add i32 %16, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i, i32 14) #11
  %sub39.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #11
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #11
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #11
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #11
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #11
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #11
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %11, align 128
  %sub.i.i.i.i.i = add i32 %18, -1
  %and.i1.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i4.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i4.i.i, label %cond.false.i7.i.i, label %cond.true.i6.i.i, !prof !95

cond.true.i6.i.i:                                 ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i5.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef nonnull @offdevs, ptr noundef %11, i32 noundef %and.i1.i.i.i.i) #11
  br label %rht_bucket_insert.exit.i.i

cond.false.i7.i.i:                                ; preds = %do.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %11, i32 0, i32 8, i32 %and.i1.i.i.i.i
  br label %rht_bucket_insert.exit.i.i

rht_bucket_insert.exit.i.i:                       ; preds = %cond.false.i7.i.i, %cond.true.i6.i.i
  %cond.i8.i.i = phi ptr [ %call.i5.i.i, %cond.true.i6.i.i ], [ %arrayidx.i.i.i, %cond.false.i7.i.i ]
  %tobool17.not.i.i = icmp eq ptr %cond.i8.i.i, null
  br i1 %tobool17.not.i.i, label %rht_bucket_insert.exit.i.i.out.i.i_crit_edge, label %if.end19.i.i

rht_bucket_insert.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_bucket_insert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.end19.i.i:                                     ; preds = %rht_bucket_insert.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %11, ptr noundef nonnull %cond.i8.i.i) #11
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %11, i32 0, i32 5
  %21 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %tobool25.not.i.i = icmp eq ptr %22, null
  br i1 %tobool25.not.i.i, label %if.end30.i.i, label %if.end19.i.i.slow_path.i.i_crit_edge, !prof !95

if.end19.i.i.slow_path.i.i_crit_edge:             ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, %for.end.i.i.slow_path.i.i_crit_edge, %if.end19.i.i.slow_path.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %11, ptr noundef nonnull %cond.i8.i.i) #11
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i.i, label %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i13.i.i

slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i13.i.i:                            ; preds = %slow_path.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit.i.i

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i13.i.i.rcu_read_unlock.exit.i.i_crit_edge, %slow_path.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %23 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i17.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i19.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i19.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call29.i.i = tail call ptr @rhashtable_insert_slow(ptr noundef nonnull @offdevs, ptr noundef null, ptr noundef nonnull %call7.i.i) #11
  br label %rhashtable_insert_fast.exit

if.end30.i.i:                                     ; preds = %if.end19.i.i
  %call.i20.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %11, i32 noundef %and.i1.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool.not.i21.i.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool.not.i21.i.i, label %land.lhs.true.i23.i.i, label %if.end30.i.i.rht_ptr.exit.i.i_crit_edge

if.end30.i.i.rht_ptr.exit.i.i_crit_edge:          ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

land.lhs.true.i23.i.i:                            ; preds = %if.end30.i.i
  %call1.i22.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i22.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i23.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i23.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i24.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

if.then.i24.i.i:                                  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.12) #11
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i24.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i23.i.i.rht_ptr.exit.i.i_crit_edge, %if.end30.i.i.rht_ptr.exit.i.i_crit_edge
  %27 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cond.i8.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i.i.i.i = and i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %30 = ptrtoint ptr %cond.i8.i.i to i32
  %or.i.i.i.i = or i32 %30, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i60.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60.i.i)
  %tobool.i.not61.i.i = icmp eq i32 %and.i60.i.i, 0
  br i1 %tobool.i.not61.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.if.end152.i.i_crit_edge

rht_ptr.exit.i.i.if.end152.i.i_crit_edge:         ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %31 = inttoptr i32 %cond.i.i.i.i to ptr
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %do.end147.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %head.063.i.i = phi ptr [ %33, %do.end147.i.i.for.body.i.i_crit_edge ], [ %31, %for.body.preheader.i.i ]
  %elasticity.062.i.i = phi i32 [ %dec.i.i, %do.end147.i.i.for.body.i.i_crit_edge ], [ 16, %for.body.preheader.i.i ]
  %dec.i.i = add i32 %elasticity.062.i.i, -1
  %call137.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %11, i32 noundef %and.i1.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i)
  %tobool138.not.i.i = icmp eq i32 %call137.i.i, 0
  br i1 %tobool138.not.i.i, label %land.lhs.true139.i.i, label %for.body.i.i.do.end147.i.i_crit_edge

for.body.i.i.do.end147.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

land.lhs.true139.i.i:                             ; preds = %for.body.i.i
  %call140.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i)
  %tobool141.not.i.i = icmp eq i32 %call140.i.i, 0
  br i1 %tobool141.not.i.i, label %land.lhs.true139.i.i.do.end147.i.i_crit_edge, label %land.lhs.true142.i.i

land.lhs.true139.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

land.lhs.true142.i.i:                             ; preds = %land.lhs.true139.i.i
  %.b2811.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.13, align 1
  br i1 %.b2811.i.i, label %land.lhs.true142.i.i.do.end147.i.i_crit_edge, label %if.then144.i.i

land.lhs.true142.i.i.do.end147.i.i_crit_edge:     ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147.i.i

if.then144.i.i:                                   ; preds = %land.lhs.true142.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_insert_fast.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 732, ptr noundef nonnull @.str.12) #11
  br label %do.end147.i.i

do.end147.i.i:                                    ; preds = %if.then144.i.i, %land.lhs.true142.i.i.do.end147.i.i_crit_edge, %land.lhs.true139.i.i.do.end147.i.i_crit_edge, %for.body.i.i.do.end147.i.i_crit_edge
  %32 = ptrtoint ptr %head.063.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.063.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %do.end147.i.i.for.body.i.i_crit_edge, label %for.end.i.i

do.end147.i.i.for.body.i.i_crit_edge:             ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %do.end147.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i)
  %phi.cmp.i.i = icmp slt i32 %dec.i.i, 1
  br i1 %phi.cmp.i.i, label %for.end.i.i.slow_path.i.i_crit_edge, label %for.end.i.i.if.end152.i.i_crit_edge

for.end.i.i.if.end152.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

for.end.i.i.slow_path.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path.i.i

if.end152.i.i:                                    ; preds = %for.end.i.i.if.end152.i.i_crit_edge, %rht_ptr.exit.i.i.if.end152.i.i_crit_edge
  %call.i.i.i25.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 noundef 4) #11
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), align 4
  %36 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp.i.not.i.i = icmp ult i32 %35, %36
  br i1 %cmp.i.not.i.i, label %if.end162.i.i, label %out_unlock.i.i, !prof !95

if.end162.i.i:                                    ; preds = %if.end152.i.i
  %call.i.i.i26.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 noundef 4) #11
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), align 4
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %11, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp.i27.i.i = icmp ugt i32 %37, %39
  br i1 %cmp.i27.i.i, label %rht_grow_above_100.exit.i.i, label %if.end162.i.i.if.end171.i.i_crit_edge

if.end162.i.i.if.end171.i.i_crit_edge:            ; preds = %if.end162.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i:                      ; preds = %if.end162.i.i
  %40 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i28.i.i = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %40)
  %cmp4.i.i.i = icmp ult i32 %39, %40
  %spec.select.i.i.i = select i1 %tobool.not.i28.i.i, i1 true, i1 %cmp4.i.i.i
  br i1 %spec.select.i.i.i, label %rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, !prof !89

rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171.i.i

rht_grow_above_100.exit.i.i.slow_path.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path.i.i

if.end171.i.i:                                    ; preds = %rht_grow_above_100.exit.i.i.if.end171.i.i_crit_edge, %if.end162.i.i.if.end171.i.i_crit_edge
  %call.i29.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %11, i32 noundef %and.i1.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i.i)
  %tobool.not.i30.i.i = icmp eq i32 %call.i29.i.i, 0
  br i1 %tobool.not.i30.i.i, label %land.lhs.true.i33.i.i, label %if.end171.i.i.rht_ptr.exit41.i.i_crit_edge

if.end171.i.i.rht_ptr.exit41.i.i_crit_edge:       ; preds = %if.end171.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit41.i.i

land.lhs.true.i33.i.i:                            ; preds = %if.end171.i.i
  %call1.i31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i.i)
  %tobool2.not.i32.i.i = icmp eq i32 %call1.i31.i.i, 0
  br i1 %tobool2.not.i32.i.i, label %land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge, label %land.lhs.true3.i35.i.i

land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge: ; preds = %land.lhs.true.i33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit41.i.i

land.lhs.true3.i35.i.i:                           ; preds = %land.lhs.true.i33.i.i
  %.b7.i34.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i34.i.i, label %land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge, label %if.then.i36.i.i

land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge: ; preds = %land.lhs.true3.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit41.i.i

if.then.i36.i.i:                                  ; preds = %land.lhs.true3.i35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.12) #11
  br label %rht_ptr.exit41.i.i

rht_ptr.exit41.i.i:                               ; preds = %if.then.i36.i.i, %land.lhs.true3.i35.i.i.rht_ptr.exit41.i.i_crit_edge, %land.lhs.true.i33.i.i.rht_ptr.exit41.i.i_crit_edge, %if.end171.i.i.rht_ptr.exit41.i.i_crit_edge
  %41 = ptrtoint ptr %cond.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cond.i8.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %and.i.i37.i.i = and i32 %43, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i.i)
  %tobool.not.i.i38.i.i = icmp eq i32 %and.i.i37.i.i, 0
  %cond.i.i40.i.i = select i1 %tobool.not.i.i38.i.i, i32 %or.i.i.i.i, i32 %and.i.i37.i.i
  %44 = inttoptr i32 %cond.i.i40.i.i to ptr
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %call7.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 1, i32 3, i32 1) #11
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8)) #11, !srcloc !100
  tail call fastcc void @rht_assign_unlock(ptr noundef %11, ptr noundef nonnull %cond.i8.i.i, ptr noundef nonnull %call7.i.i) #11
  %call.i.i.i42.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 noundef 4) #11
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), align 4
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %11, align 128
  %div1.i.i.i = lshr i32 %49, 2
  %mul.i.i.i = mul nuw i32 %div1.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %mul.i.i.i)
  %cmp.i43.i.i = icmp ugt i32 %47, %mul.i.i.i
  br i1 %cmp.i43.i.i, label %rht_grow_above_75.exit.i.i, label %rht_ptr.exit41.i.i.out.i.i_crit_edge

rht_ptr.exit41.i.i.out.i.i_crit_edge:             ; preds = %rht_ptr.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

rht_grow_above_75.exit.i.i:                       ; preds = %rht_ptr.exit41.i.i
  %50 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i44.i.i = icmp eq i32 %50, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %50)
  %cmp4.i45.i.i = icmp ult i32 %49, %50
  %spec.select.i46.i.i = select i1 %tobool.not.i44.i.i, i1 true, i1 %cmp4.i45.i.i
  br i1 %spec.select.i46.i.i, label %if.then207.i.i, label %rht_grow_above_75.exit.i.i.out.i.i_crit_edge

rht_grow_above_75.exit.i.i.out.i.i_crit_edge:     ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i.i

if.then207.i.i:                                   ; preds = %rht_grow_above_75.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %51 = load ptr, ptr @system_wq, align 4
  %call.i.i48.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %51, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 5)) #11
  br label %out.i.i

out.i.i:                                          ; preds = %out_unlock.i.i, %if.then207.i.i, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge, %rht_ptr.exit41.i.i.out.i.i_crit_edge, %rht_bucket_insert.exit.i.i.out.i.i_crit_edge
  %data.2.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.out.i.i_crit_edge ], [ null, %if.then207.i.i ], [ null, %rht_grow_above_75.exit.i.i.out.i.i_crit_edge ], [ null, %rht_ptr.exit41.i.i.out.i.i_crit_edge ]
  %call.i49.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i49.i.i, label %out.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true.i52.i.i

out.i.i.rcu_read_unlock.exit59.i.i_crit_edge:     ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true.i52.i.i:                            ; preds = %out.i.i
  %call1.i50.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %land.lhs.true2.i54.i.i

land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59.i.i

land.lhs.true2.i54.i.i:                           ; preds = %land.lhs.true.i52.i.i
  %.b4.i53.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53.i.i, label %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, label %if.then.i55.i.i

land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge: ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59.i.i

if.then.i55.i.i:                                  ; preds = %land.lhs.true2.i54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit59.i.i

rcu_read_unlock.exit59.i.i:                       ; preds = %if.then.i55.i.i, %land.lhs.true2.i54.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %land.lhs.true.i52.i.i.rcu_read_unlock.exit59.i.i_crit_edge, %out.i.i.rcu_read_unlock.exit59.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %52 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i56.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i56.i.i to ptr
  %preempt_count.i.i.i.i57.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i57.i.i, align 4
  %sub.i.i.i58.i.i = add i32 %55, -1
  store volatile i32 %sub.i.i.i58.i.i, ptr %preempt_count.i.i.i.i57.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %rhashtable_insert_fast.exit

out_unlock.i.i:                                   ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rht_unlock(ptr noundef %11, ptr noundef nonnull %cond.i8.i.i) #11
  br label %out.i.i

rhashtable_insert_fast.exit:                      ; preds = %rcu_read_unlock.exit59.i.i, %rcu_read_unlock.exit.i.i
  %retval.0.i.i = phi ptr [ %call29.i.i, %rcu_read_unlock.exit.i.i ], [ %data.2.i.i, %rcu_read_unlock.exit59.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  %56 = ptrtoint ptr %retval.0.i.i to i32
  %cmp.i = icmp eq ptr %retval.0.i.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %56, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %rhashtable_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str) #16
  tail call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end6:                                          ; preds = %rhashtable_insert_fast.exit
  %offdev_netdevs = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 5
  %netdevs = getelementptr inbounds %struct.bpf_offload_dev, ptr %offdev, i32 0, i32 1
  %57 = ptrtoint ptr %netdevs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %netdevs, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %offdev_netdevs, ptr noundef %netdevs, ptr noundef %58) #11
  br i1 %call.i.i26, label %if.end.i.i, label %if.end6.list_add.exit_crit_edge

if.end6.list_add.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %offdev_netdevs, ptr %prev1.i.i, align 4
  %60 = ptrtoint ptr %offdev_netdevs to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %offdev_netdevs, align 4
  %prev3.i.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call7.i.i, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %netdevs, ptr %prev3.i.i, align 8
  %62 = ptrtoint ptr %netdevs to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %offdev_netdevs, ptr %netdevs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end6.list_add.exit_crit_edge
  tail call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then5 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_offload_dev_netdev_unregister(ptr noundef %offdev, ptr noundef %netdev) #0 align 64 {
entry:
  %netdev.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %netdev.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %netdev, ptr %netdev.addr, align 4
  %call = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b326 = load i1, ptr @bpf_offload_dev_netdev_unregister.__already_done, align 1
  br i1 %.b326, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !95

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bpf_offload_dev_netdev_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 635, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 635) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %call37 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef nonnull %netdev.addr, [7 x i32] [i32 262148, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  %tobool39.not = icmp eq ptr %call37, null
  br i1 %tobool39.not, label %do.end57, label %if.end73.critedge, !prof !89

do.end57:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 9, ptr noundef null) #11
  br label %unlock

if.end73.critedge:                                ; preds = %if.end29
  %1 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %if.end73.critedge.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end73.critedge.rcu_read_lock.exit.i.i_crit_edge: ; preds = %if.end73.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end73.critedge
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end73.critedge.rcu_read_lock.exit.i.i_crit_edge
  %5 = load volatile ptr, ptr @offdevs, align 4
  %call.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @offdevs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end10.i.i_crit_edge

lor.lhs.false.i.i.do.end10.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call5.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.do.end10.i.i_crit_edge, label %land.lhs.true7.i.i

land.lhs.true.i.i.do.end10.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

land.lhs.true7.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true7.i.i.do.end10.i.i_crit_edge, label %if.then.i.i

land.lhs.true7.i.i.do.end10.i.i_crit_edge:        ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i.i

if.then.i.i:                                      ; preds = %land.lhs.true7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1076, ptr noundef nonnull @.str.10) #11
  br label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true7.i.i.do.end10.i.i_crit_edge, %land.lhs.true.i.i.do.end10.i.i_crit_edge, %lor.lhs.false.i.i.do.end10.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end10.i.i_crit_edge
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call37, i32 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %do.end33.i.i.while.cond.i.i_crit_edge, %do.end10.i.i
  %tbl.0.i.i = phi ptr [ %5, %do.end10.i.i ], [ %34, %do.end33.i.i.while.cond.i.i_crit_edge ]
  %6 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 3), align 2
  %conv.i.i.i.i.i = zext i16 %6 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %add1.i.i.i.i.i.i.i = add i32 %8, -559038733
  %9 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add36.i.i.i.i.i.i.i = add i32 %10, %add1.i.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i.i.i.i, i32 %add1.i.i.i.i.i.i.i, i32 14) #11
  %sub39.i.i.i.i.i.i.i = sub i32 0, %or.i140.i.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i.i = xor i32 %add36.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i.i, i32 11) #11
  %sub42.i.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i.i, %add1.i.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i.i, i32 25) #11
  %sub45.i.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i.i, %sub39.i.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i.i, i32 16) #11
  %sub48.i.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i.i, %sub42.i.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i.i, i32 4) #11
  %sub51.i.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i.i, %sub45.i.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i.i, i32 14) #11
  %sub54.i.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i.i, %sub48.i.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i.i, i32 24) #11
  %sub57.i.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i.i
  %11 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i.i.i = add i32 %12, -1
  %and.i1.i.i.i.i.i = and i32 %sub57.i.i.i.i.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i3.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i3.i.i.i, label %cond.false.i5.i.i.i, label %cond.true.i4.i.i.i, !prof !95

cond.true.i4.i.i.i:                               ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #11
  br label %rht_bucket_var.exit.i.i.i

cond.false.i5.i.i.i:                              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i1.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i

rht_bucket_var.exit.i.i.i:                        ; preds = %cond.false.i5.i.i.i, %cond.true.i4.i.i.i
  %cond.i6.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i4.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i5.i.i.i ]
  %tobool.not.i3.i.i = icmp eq ptr %cond.i6.i.i.i, null
  br i1 %tobool.not.i3.i.i, label %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.i

rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

if.end.i.i.i:                                     ; preds = %rht_bucket_var.exit.i.i.i
  call fastcc void @rht_lock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #11
  %call.i8.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %tobool.not.i9.i.i.i = icmp eq i32 %call.i8.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call1.i.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 377, ptr noundef nonnull @.str.12) #11
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %15 = ptrtoint ptr %cond.i6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cond.i6.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i.i.i.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %18 = ptrtoint ptr %cond.i6.i.i.i to i32
  %or.i.i.i.i.i = or i32 %18, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i20.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i)
  %tobool.i.not21.i.i.i = icmp eq i32 %and.i20.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i, label %for.body.preheader.i.i.i, label %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge

rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge:      ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i.i

for.body.preheader.i.i.i:                         ; preds = %rht_ptr.exit.i.i.i
  %19 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %cmp.not.i21.i.i = icmp eq ptr %call37, %19
  br i1 %cmp.not.i21.i.i, label %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge

for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  br label %do.body145.i.i.i

for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i.i

for.body.i.i.i:                                   ; preds = %do.end156.i.i.i
  %cmp.not.i.i.i = icmp eq ptr %24, %call37
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.do.body54.i.i.i_crit_edge, label %for.body.i.i.i.do.body145.i.i.i_crit_edge

for.body.i.i.i.do.body145.i.i.i_crit_edge:        ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body145.i.i.i

for.body.i.i.i.do.body54.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i.i

do.body54.i.i.i:                                  ; preds = %for.body.i.i.i.do.body54.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i = phi ptr [ %he.022.i22.i.i, %for.body.i.i.i.do.body54.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.do.body54.i.i.i_crit_edge ]
  %call55.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i)
  %tobool56.not.i.i.i = icmp eq i32 %call55.i.i.i, 0
  br i1 %tobool56.not.i.i.i, label %land.lhs.true57.i.i.i, label %do.body54.i.i.i.do.end65.i.i.i_crit_edge

do.body54.i.i.i.do.end65.i.i.i_crit_edge:         ; preds = %do.body54.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i

land.lhs.true57.i.i.i:                            ; preds = %do.body54.i.i.i
  %call58.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i)
  %tobool59.not.i.i.i = icmp eq i32 %call58.i.i.i, 0
  br i1 %tobool59.not.i.i.i, label %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, label %land.lhs.true60.i.i.i

land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true57.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %land.lhs.true57.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.20, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, label %if.then62.i.i.i

land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i.i

if.then62.i.i.i:                                  ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1032, ptr noundef nonnull @.str.12) #11
  br label %do.end65.i.i.i

do.end65.i.i.i:                                   ; preds = %if.then62.i.i.i, %land.lhs.true60.i.i.i.do.end65.i.i.i_crit_edge, %land.lhs.true57.i.i.i.do.end65.i.i.i_crit_edge, %do.body54.i.i.i.do.end65.i.i.i_crit_edge
  %20 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call37, align 4
  %tobool103.not.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i, null
  br i1 %tobool103.not.i.i.i, label %if.else142.i.i.i, label %do.body105.i.i.i

do.body105.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !101
  %22 = ptrtoint ptr %pprev.023.i.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %pprev.023.i.lcssa.i.i, align 4
  call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #11
  br label %if.then160.i.i.i

if.else142.i.i.i:                                 ; preds = %do.end65.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i, ptr noundef %21) #11
  br label %if.then160.i.i.i

do.body145.i.i.i:                                 ; preds = %for.body.i.i.i.do.body145.i.i.i_crit_edge, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge
  %he.022.i22.i.i = phi ptr [ %24, %for.body.i.i.i.do.body145.i.i.i_crit_edge ], [ %19, %for.body.preheader.i.i.i.do.body145.i.i.i_crit_edge ]
  %call146.i.i.i = call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i32 %call146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %land.lhs.true148.i.i.i, label %do.body145.i.i.i.do.end156.i.i.i_crit_edge

do.body145.i.i.i.do.end156.i.i.i_crit_edge:       ; preds = %do.body145.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i

land.lhs.true148.i.i.i:                           ; preds = %do.body145.i.i.i
  %call149.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i)
  %tobool150.not.i.i.i = icmp eq i32 %call149.i.i.i, 0
  br i1 %tobool150.not.i.i.i, label %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, label %land.lhs.true151.i.i.i

land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i

land.lhs.true151.i.i.i:                           ; preds = %land.lhs.true148.i.i.i
  %.b2281.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  br i1 %.b2281.i.i.i, label %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, label %if.then153.i.i.i

land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i.i

if.then153.i.i.i:                                 ; preds = %land.lhs.true151.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.22, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1004, ptr noundef nonnull @.str.12) #11
  br label %do.end156.i.i.i

do.end156.i.i.i:                                  ; preds = %if.then153.i.i.i, %land.lhs.true151.i.i.i.do.end156.i.i.i_crit_edge, %land.lhs.true148.i.i.i.do.end156.i.i.i_crit_edge, %do.body145.i.i.i.do.end156.i.i.i_crit_edge
  %23 = ptrtoint ptr %he.022.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %he.022.i22.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i, label %do.end156.i.i.i.unlocked.i.i.i_crit_edge

do.end156.i.i.i.unlocked.i.i.i_crit_edge:         ; preds = %do.end156.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i.i

unlocked.i.i.i:                                   ; preds = %do.end156.i.i.i.unlocked.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.unlocked.i.i.i_crit_edge
  call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i, ptr noundef nonnull %cond.i6.i.i.i) #11
  br label %land.rhs.i.i

if.then160.i.i.i:                                 ; preds = %if.else142.i.i.i, %do.body105.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 1, i32 3, i32 1) #11
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8)) #11, !srcloc !102
  %27 = load i8, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 6), align 2, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool161.not.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool161.not.i.i.i, label %if.then160.i.i.i.while.end.i.i_crit_edge, label %land.rhs162.i.i.i

if.then160.i.i.i.while.end.i.i_crit_edge:         ; preds = %if.then160.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

land.rhs162.i.i.i:                                ; preds = %if.then160.i.i.i
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), i32 noundef 4) #11
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 8), align 4
  %29 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tbl.0.i.i, align 128
  %mul.i.i.i.i = mul i32 %30, 3
  %div.i.i.i.i = udiv i32 %mul.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %div.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %28, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i, label %land.rhs162.i.i.i.while.end.i.i_crit_edge

land.rhs162.i.i.i.while.end.i.i_crit_edge:        ; preds = %land.rhs162.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

rht_shrink_below_30.exit.i.i.i:                   ; preds = %land.rhs162.i.i.i
  %31 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 5), align 4
  %conv.i11.i.i.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i11.i.i.i)
  %cmp2.i.i.i.i = icmp ugt i32 %30, %conv.i11.i.i.i
  br i1 %cmp2.i.i.i.i, label %if.then168.i.i.i, label %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, !prof !89

rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

if.then168.i.i.i:                                 ; preds = %rht_shrink_below_30.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 5)) #11
  br label %while.end.i.i

land.rhs.i.i:                                     ; preds = %unlocked.i.i.i, %rht_bucket_var.exit.i.i.i.land.rhs.i.i_crit_edge
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call20.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @offdevs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %lor.lhs.false22.i.i, label %land.rhs.i.i.do.end33.i.i_crit_edge

land.rhs.i.i.do.end33.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

lor.lhs.false22.i.i:                              ; preds = %land.rhs.i.i
  %call23.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i)
  %tobool24.not.i.i = icmp eq i32 %call23.i.i, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %lor.lhs.false22.i.i.do.end33.i.i_crit_edge

lor.lhs.false22.i.i.do.end33.i.i_crit_edge:       ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

land.lhs.true25.i.i:                              ; preds = %lor.lhs.false22.i.i
  %call26.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true25.i.i.do.end33.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true25.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true25.i.i
  %.b401.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.18, align 1
  br i1 %.b401.i.i, label %land.lhs.true28.i.i.do.end33.i.i_crit_edge, label %if.then30.i.i

land.lhs.true28.i.i.do.end33.i.i_crit_edge:       ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i.i

if.then30.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned.18, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 1085, ptr noundef nonnull @.str.10) #11
  br label %do.end33.i.i

do.end33.i.i:                                     ; preds = %if.then30.i.i, %land.lhs.true28.i.i.do.end33.i.i_crit_edge, %land.lhs.true25.i.i.do.end33.i.i_crit_edge, %lor.lhs.false22.i.i.do.end33.i.i_crit_edge, %land.rhs.i.i.do.end33.i.i_crit_edge
  %tobool35.not.i.i = icmp eq ptr %34, null
  br i1 %tobool35.not.i.i, label %do.end33.i.i.while.end.i.i_crit_edge, label %do.end33.i.i.while.cond.i.i_crit_edge

do.end33.i.i.while.cond.i.i_crit_edge:            ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

do.end33.i.i.while.end.i.i_crit_edge:             ; preds = %do.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end33.i.i.while.end.i.i_crit_edge, %if.then168.i.i.i, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge, %land.rhs162.i.i.i.while.end.i.i_crit_edge, %if.then160.i.i.i.while.end.i.i_crit_edge
  %tobool76.not = phi i1 [ true, %if.then168.i.i.i ], [ true, %rht_shrink_below_30.exit.i.i.i.while.end.i.i_crit_edge ], [ true, %land.rhs162.i.i.i.while.end.i.i_crit_edge ], [ true, %if.then160.i.i.i.while.end.i.i_crit_edge ], [ false, %do.end33.i.i.while.end.i.i_crit_edge ]
  %call.i4.i.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4.i.i, label %while.end.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i.i

while.end.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit

land.lhs.true.i7.i.i:                             ; preds = %while.end.i.i
  %call1.i5.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_remove_fast.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rhashtable_remove_fast.exit

rhashtable_remove_fast.exit:                      ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.i.rhashtable_remove_fast.exit_crit_edge, %while.end.i.i.rhashtable_remove_fast.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %35 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i11.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %tobool76.not, label %rhashtable_remove_fast.exit.if.end98_crit_edge, label %do.end92, !prof !95

rhashtable_remove_fast.exit.if.end98_crit_edge:   ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

do.end92:                                         ; preds = %rhashtable_remove_fast.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 642, i32 noundef 9, ptr noundef null) #11
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %rhashtable_remove_fast.exit.if.end98_crit_edge
  %offdev_netdevs = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 5
  %call.i.i329 = call zeroext i1 @__list_del_entry_valid(ptr noundef %offdev_netdevs) #11
  br i1 %call.i.i329, label %if.end.i.i, label %if.end98.list_del.exit_crit_edge

if.end98.list_del.exit_crit_edge:                 ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %offdev_netdevs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %offdev_netdevs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end98.list_del.exit_crit_edge
  %45 = ptrtoint ptr %offdev_netdevs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %offdev_netdevs, align 4
  %prev.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %netdevs = getelementptr inbounds %struct.bpf_offload_dev, ptr %offdev, i32 0, i32 1
  %47 = ptrtoint ptr %netdevs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %netdevs, align 4
  %cmp.not = icmp eq ptr %48, %netdevs
  %add.ptr = getelementptr i8, ptr %48, i32 -28
  %tobool112.not341 = icmp eq ptr %add.ptr, null
  %tobool112.not = or i1 %cmp.not, %tobool112.not341
  %progs154 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 3
  %49 = ptrtoint ptr %progs154 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %progs154, align 4
  %cmp166.not360 = icmp eq ptr %50, %progs154
  br i1 %tobool112.not, label %if.else, label %if.then113

if.then113:                                       ; preds = %list_del.exit
  br i1 %cmp166.not360, label %if.then113.for.end_crit_edge, label %for.body.lr.ph

if.then113.for.end_crit_edge:                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then113
  %netdev122 = getelementptr i8, ptr %48, i32 -24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn324356 = phi ptr [ %50, %for.body.lr.ph ], [ %.pn324, %for.body.for.body_crit_edge ]
  %51 = ptrtoint ptr %netdev122 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev122, align 4
  %netdev123 = getelementptr i8, ptr %.pn324356, i32 -12
  %53 = ptrtoint ptr %netdev123 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %netdev123, align 4
  %54 = ptrtoint ptr %.pn324356 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn324 = load ptr, ptr %.pn324356, align 4
  %cmp119.not = icmp eq ptr %.pn324, %progs154
  br i1 %cmp119.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then113.for.end_crit_edge
  %55 = ptrtoint ptr %progs154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %progs154, align 4
  %cmp.i.not.i = icmp eq ptr %56, %progs154
  br i1 %cmp.i.not.i, label %for.end.list_splice_init.exit_crit_edge, label %if.then.i

for.end.list_splice_init.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %progs130 = getelementptr i8, ptr %48, i32 -16
  %57 = ptrtoint ptr %progs130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %progs130, align 4
  %prev2.i.i = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %progs130, ptr %prev3.i.i, align 4
  store ptr %56, ptr %progs130, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %58, ptr %60, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev6.i.i, align 4
  %64 = ptrtoint ptr %progs154 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %progs154, ptr %progs154, align 4
  store ptr %progs154, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %for.end.list_splice_init.exit_crit_edge
  %maps = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 4
  %65 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn325357 = load ptr, ptr %maps, align 4
  %cmp138.not358 = icmp eq ptr %.pn325357, %maps
  br i1 %cmp138.not358, label %list_splice_init.exit.for.end150_crit_edge, label %for.body141.lr.ph

list_splice_init.exit.for.end150_crit_edge:       ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end150

for.body141.lr.ph:                                ; preds = %list_splice_init.exit
  %netdev142 = getelementptr i8, ptr %48, i32 -24
  br label %for.body141

for.body141:                                      ; preds = %for.body141.for.body141_crit_edge, %for.body141.lr.ph
  %.pn325359 = phi ptr [ %.pn325357, %for.body141.lr.ph ], [ %.pn325, %for.body141.for.body141_crit_edge ]
  %66 = ptrtoint ptr %netdev142 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev142, align 4
  %netdev143 = getelementptr i8, ptr %.pn325359, i32 -12
  %68 = ptrtoint ptr %netdev143 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %netdev143, align 128
  %69 = ptrtoint ptr %.pn325359 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn325 = load ptr, ptr %.pn325359, align 4
  %cmp138.not = icmp eq ptr %.pn325, %maps
  br i1 %cmp138.not, label %for.body141.for.end150_crit_edge, label %for.body141.for.body141_crit_edge

for.body141.for.body141_crit_edge:                ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body141

for.body141.for.end150_crit_edge:                 ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end150

for.end150:                                       ; preds = %for.body141.for.end150_crit_edge, %list_splice_init.exit.for.end150_crit_edge
  %70 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %maps, align 4
  %cmp.i.not.i330 = icmp eq ptr %71, %maps
  br i1 %cmp.i.not.i330, label %for.end150.if.end201_crit_edge, label %if.then.i334

for.end150.if.end201_crit_edge:                   ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

if.then.i334:                                     ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #13
  %maps152 = getelementptr i8, ptr %48, i32 -8
  %72 = ptrtoint ptr %maps152 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %maps152, align 4
  %prev2.i.i331 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %prev2.i.i331 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev2.i.i331, align 4
  %prev3.i.i332 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i332 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %maps152, ptr %prev3.i.i332, align 4
  store ptr %71, ptr %maps152, align 4
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %73, ptr %75, align 4
  %prev6.i.i333 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %prev6.i.i333 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev6.i.i333, align 4
  %79 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %maps, ptr %maps, align 4
  store ptr %maps, ptr %prev2.i.i331, align 4
  br label %if.end201

if.else:                                          ; preds = %list_del.exit
  br i1 %cmp166.not360, label %if.else.for.end176_crit_edge, label %if.else.for.body169_crit_edge

if.else.for.body169_crit_edge:                    ; preds = %if.else
  br label %for.body169

if.else.for.end176_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end176

for.body169:                                      ; preds = %__bpf_prog_offload_destroy.exit.for.body169_crit_edge, %if.else.for.body169_crit_edge
  %.pn.in361 = phi ptr [ %.pn, %__bpf_prog_offload_destroy.exit.for.body169_crit_edge ], [ %50, %if.else.for.body169_crit_edge ]
  %offload.1 = getelementptr i8, ptr %.pn.in361, i32 -16
  %80 = ptrtoint ptr %.pn.in361 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn = load ptr, ptr %.pn.in361, align 4
  %81 = ptrtoint ptr %offload.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %offload.1, align 4
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %aux.i, align 4
  %offload1.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %84, i32 0, i32 48
  %85 = ptrtoint ptr %offload1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %offload1.i, align 8
  %dev_state.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %dev_state.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dev_state.i, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i, label %for.body169.if.end.i_crit_edge, label %if.then.i336

for.body169.if.end.i_crit_edge:                   ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i336:                                     ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #13
  %offdev.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %86, i32 0, i32 2
  %89 = ptrtoint ptr %offdev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %offdev.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %destroy.i = getelementptr inbounds %struct.bpf_prog_offload_ops, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %destroy.i, align 4
  call void %94(ptr noundef %82) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i336, %for.body169.if.end.i_crit_edge
  call void @bpf_prog_free_id(ptr noundef %82, i1 noundef zeroext true) #11
  %offloads.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %86, i32 0, i32 4
  %call.i.i.i337 = call zeroext i1 @__list_del_entry_valid(ptr noundef %offloads.i) #11
  br i1 %call.i.i.i337, label %if.end.i.i.i338, label %if.end.i.__bpf_prog_offload_destroy.exit_crit_edge

if.end.i.__bpf_prog_offload_destroy.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__bpf_prog_offload_destroy.exit

if.end.i.i.i338:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %86, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i.i, align 4
  %97 = ptrtoint ptr %offloads.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %offloads.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev1.i.i.i.i, align 4
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %98, ptr %96, align 4
  br label %__bpf_prog_offload_destroy.exit

__bpf_prog_offload_destroy.exit:                  ; preds = %if.end.i.i.i338, %if.end.i.__bpf_prog_offload_destroy.exit_crit_edge
  %101 = ptrtoint ptr %offloads.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %offloads.i, ptr %offloads.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.bpf_prog_offload, ptr %86, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %offloads.i, ptr %prev.i3.i.i, align 4
  call void @kfree(ptr noundef %86) #11
  %103 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %aux.i, align 4
  %offload3.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %104, i32 0, i32 48
  %105 = ptrtoint ptr %offload3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %offload3.i, align 8
  %cmp166.not = icmp eq ptr %.pn, %progs154
  br i1 %cmp166.not, label %__bpf_prog_offload_destroy.exit.for.end176_crit_edge, label %__bpf_prog_offload_destroy.exit.for.body169_crit_edge

__bpf_prog_offload_destroy.exit.for.body169_crit_edge: ; preds = %__bpf_prog_offload_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body169

__bpf_prog_offload_destroy.exit.for.end176_crit_edge: ; preds = %__bpf_prog_offload_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end176

for.end176:                                       ; preds = %__bpf_prog_offload_destroy.exit.for.end176_crit_edge, %if.else.for.end176_crit_edge
  %maps178 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 4
  %106 = ptrtoint ptr %maps178 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %maps178, align 4
  %cmp190.not362 = icmp eq ptr %107, %maps178
  br i1 %cmp190.not362, label %for.end176.if.end201_crit_edge, label %for.end176.for.body193_crit_edge

for.end176.for.body193_crit_edge:                 ; preds = %for.end176
  br label %for.body193

for.end176.if.end201_crit_edge:                   ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

for.body193:                                      ; preds = %for.body193.for.body193_crit_edge, %for.end176.for.body193_crit_edge
  %.pn323.in363 = phi ptr [ %.pn323, %for.body193.for.body193_crit_edge ], [ %107, %for.end176.for.body193_crit_edge ]
  %offmap.1 = getelementptr i8, ptr %.pn323.in363, i32 -396
  %108 = ptrtoint ptr %.pn323.in363 to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pn323 = load ptr, ptr %.pn323.in363, align 4
  call fastcc void @__bpf_map_offload_destroy(ptr noundef %offmap.1)
  %cmp190.not = icmp eq ptr %.pn323, %maps178
  br i1 %cmp190.not, label %for.body193.if.end201_crit_edge, label %for.body193.for.body193_crit_edge

for.body193.for.body193_crit_edge:                ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body193

for.body193.if.end201_crit_edge:                  ; preds = %for.body193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end201

if.end201:                                        ; preds = %for.body193.if.end201_crit_edge, %for.end176.if.end201_crit_edge, %if.then.i334, %for.end150.if.end201_crit_edge
  %progs203 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 3
  %109 = ptrtoint ptr %progs203 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %progs203, align 4
  %cmp.i.not = icmp eq ptr %110, %progs203
  br i1 %cmp.i.not, label %if.end201.if.end229_crit_edge, label %do.end223, !prof !95

if.end201.if.end229_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

do.end223:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 664, i32 noundef 9, ptr noundef null) #11
  br label %if.end229

if.end229:                                        ; preds = %do.end223, %if.end201.if.end229_crit_edge
  %maps238 = getelementptr inbounds %struct.bpf_offload_netdev, ptr %call37, i32 0, i32 4
  %111 = ptrtoint ptr %maps238 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %maps238, align 4
  %cmp.i339.not = icmp eq ptr %112, %maps238
  br i1 %cmp.i339.not, label %if.end229.if.end264_crit_edge, label %do.end258, !prof !95

if.end229.if.end264_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end264

do.end258:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 665, i32 noundef 9, ptr noundef null) #11
  br label %if.end264

if.end264:                                        ; preds = %do.end258, %if.end229.if.end264_crit_edge
  call void @kfree(ptr noundef nonnull %call37) #11
  br label %unlock

unlock:                                           ; preds = %if.end264, %do.end57
  call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #11
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @offdevs, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = load volatile ptr, ptr @offdevs, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @offdevs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 594, ptr noundef nonnull @.str.10) #11
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %8, %do.end12.i.i ], [ %36, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hash_rnd.i.i.i, align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 7), align 4
  %12 = load i32, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 1), align 4
  %call.i.i.i.i = call i32 %11(ptr noundef %key, i32 noundef %12, i32 noundef %10) #11
  %13 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %14, -1
  %and.i1.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !95

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i1.i.i.i) #11
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i1.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %17 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %17, 1
  %18 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !103
  %19 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i3.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %call.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 369, ptr noundef nonnull @.str.10) #11
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %21 = ptrtoint ptr %20 to i32
  %and.i.i5.i.i = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i.i)
  %tobool.not.i.i6.i.i = icmp eq i32 %and.i.i5.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i6.i.i, i32 %or.i.i.i.i, i32 %and.i.i5.i.i
  %22 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i15.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i.i)
  %tobool.i.not16.i.i = icmp eq i32 %and.i15.i.i, 0
  br i1 %tobool.i.not16.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.017.i.i = phi ptr [ %33, %for.inc.i.i.for.body.i.i_crit_edge ], [ %22, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %23 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 3), align 2
  %conv.i7.i.i = zext i16 %23 to i32
  %idx.neg.i8.i.i = sub nsw i32 0, %conv.i7.i.i
  %add.ptr.i9.i.i = getelementptr i8, ptr %he.017.i.i, i32 %idx.neg.i8.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %24 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i10.i.i = zext i16 %27 to i32
  %add.ptr.i11.i.i = getelementptr i8, ptr %add.ptr.i9.i.i, i32 %conv.i10.i.i
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %25, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %31 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i11.i.i, ptr %29, i32 %conv3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %32 = ptrtoint ptr %he.017.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %he.017.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %22, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %33, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %18
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !104
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef nonnull @offdevs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b901.i.i = load i1, ptr @__rhashtable_lookup.__warned.17, align 1
  br i1 %.b901.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned.17, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 614, ptr noundef nonnull @.str.10) #11
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %36, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !95

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #11
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #11
  %tobool.not.i1 = icmp eq ptr %he.017.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load i16, ptr getelementptr inbounds (%struct.rhashtable, ptr @offdevs, i32 0, i32 3, i32 3), align 2
  %conv.i.i = zext i16 %37 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.017.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
  %38 = call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i.i9 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_offload_dev_create(ptr noundef %ops, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @bpf_devs_lock) #11
  %.b18 = load i1, ptr @offdevs_inited, align 1
  br i1 %.b18, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @rhashtable_init(ptr noundef nonnull @offdevs, ptr noundef nonnull @offdevs_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  %0 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @offdevs_inited, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  tail call void @up_write(ptr noundef nonnull @bpf_devs_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #14
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %call7.i.i, align 8
  %priv11 = getelementptr inbounds %struct.bpf_offload_dev, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %priv11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv11, align 4
  %netdevs = getelementptr inbounds %struct.bpf_offload_dev, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %netdevs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %netdevs, ptr %netdevs, align 4
  %prev.i = getelementptr inbounds %struct.bpf_offload_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %netdevs, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.then2
  %retval.0 = phi ptr [ %call7.i.i, %if.end9 ], [ %0, %if.then2 ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_offload_dev_destroy(ptr noundef %offdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdevs = getelementptr inbounds %struct.bpf_offload_dev, ptr %offdev, i32 0, i32 1
  %0 = ptrtoint ptr %netdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %netdevs, align 4
  %cmp.i.not = icmp eq ptr %1, %netdevs
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !95

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 703, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %offdev) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bpf_offload_dev_priv(ptr nocapture noundef readonly %offdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.bpf_offload_dev, ptr %offdev, i32 0, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_free_id(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_free_id(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !105
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !106

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !107
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !108
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !95

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !109
  %7 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !110
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !111
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !112
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #11
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !89

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #11, !srcloc !113
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !114
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !115
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !116
  %3 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !117
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !118
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #11
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !33, !35, !37, !39, !41, !42, !43, !45, !46, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @bpf_offload_prog_ops, !1, !"bpf_offload_prog_ops", i1 false, i1 false}
!1 = !{!"../kernel/bpf/offload.c", i32 343, i32 27}
!2 = !{ptr @__ksymtab_bpf_offload_dev_match, !3, !"__ksymtab_bpf_offload_dev_match", i1 false, i1 false}
!3 = !{!"../kernel/bpf/offload.c", i32 577, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/bpf/offload.c", i32 613, i32 23}
!6 = !{ptr @__ksymtab_bpf_offload_dev_netdev_register, !7, !"__ksymtab_bpf_offload_dev_netdev_register", i1 false, i1 false}
!7 = !{!"../kernel/bpf/offload.c", i32 626, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/bpf/offload.c", i32 635, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_bpf_offload_dev_netdev_unregister, !13, !"__ksymtab_bpf_offload_dev_netdev_unregister", i1 false, i1 false}
!13 = !{!"../kernel/bpf/offload.c", i32 670, i32 1}
!14 = !{ptr @__ksymtab_bpf_offload_dev_create, !15, !"__ksymtab_bpf_offload_dev_create", i1 false, i1 false}
!15 = !{!"../kernel/bpf/offload.c", i32 699, i32 1}
!16 = !{ptr @__ksymtab_bpf_offload_dev_destroy, !17, !"__ksymtab_bpf_offload_dev_destroy", i1 false, i1 false}
!17 = !{!"../kernel/bpf/offload.c", i32 706, i32 1}
!18 = !{ptr @__ksymtab_bpf_offload_dev_priv, !19, !"__ksymtab_bpf_offload_dev_priv", i1 false, i1 false}
!19 = !{!"../kernel/bpf/offload.c", i32 712, i32 1}
!20 = !{ptr @offdevs, !21, !"offdevs", i1 false, i1 false}
!21 = !{!"../kernel/bpf/offload.c", i32 58, i32 26}
!22 = distinct !{null, !23, !"offdevs_inited", i1 false, i1 false}
!23 = !{!"../kernel/bpf/offload.c", i32 59, i32 13}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/bpf/offload.c", i32 33, i32 8}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bpf_devs_lock, !25, !"bpf_devs_lock", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/bpf/offload.c", i32 252, i32 2}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/bpf/offload.c", i32 352, i32 2}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!57 = !{ptr @offdevs_params, !58, !"offdevs_params", i1 false, i1 false}
!58 = !{!"../kernel/bpf/offload.c", i32 50, i32 39}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{i64 1102598, i64 1102659}
!91 = !{i64 1105330}
!92 = !{i64 1105615}
!93 = !{i8 0, i8 2}
!94 = !{!"auto-init"}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2153330526, i64 2153330551}
!97 = !{i64 2148700428, i64 2148700460, i64 2148700489, i64 2148700523, i64 2148700554, i64 2148700577}
!98 = !{i64 2149690219}
!99 = !{i64 2149690485}
!100 = !{i64 2148698898, i64 2148698924, i64 2148698953, i64 2148698987, i64 2148699018, i64 2148699041}
!101 = !{i64 2157211360}
!102 = !{i64 2148701363, i64 2148701389, i64 2148701418, i64 2148701452, i64 2148701483, i64 2148701506}
!103 = !{i64 2157143984}
!104 = !{i64 2157147418}
!105 = !{i64 2152054045}
!106 = !{!"branch_weights", i32 2146410443, i32 1073205}
!107 = !{i64 2148707756, i64 2148707788, i64 2148707817, i64 2148707851, i64 2148707882, i64 2148707905}
!108 = !{i64 2148796861}
!109 = !{i64 2152054205}
!110 = !{i64 2152054482}
!111 = !{i64 2152054324}
!112 = !{i64 2152054687}
!113 = !{i64 2152055750, i64 2152060303, i64 2152055787, i64 2152055843, i64 2152055877, i64 2152055901, i64 2152055942, i64 2152055963, i64 2152055991, i64 2152056025}
!114 = !{i64 2148795748}
!115 = !{i64 2148706143, i64 2148706175, i64 2148706204, i64 2148706238, i64 2148706269, i64 2148706292}
!116 = !{i64 2152061206}
!117 = !{i64 2157137057}
!118 = !{i64 2157139356}
