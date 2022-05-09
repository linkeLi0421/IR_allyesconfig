; ModuleID = '/llk/IR_all_yes/kernel/kprobes.c_pt.bc'
source_filename = "../kernel/kprobes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_kprobe\22, \22a\22\09"
module asm "\09.weak\09__crc_register_kprobe\09\09\09\09"
module asm "\09.long\09__crc_register_kprobe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22register_kprobe\22\09\09\09\09\09"
module asm "__kstrtabns_register_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_kprobes\22, \22a\22\09"
module asm "\09.weak\09__crc_register_kprobes\09\09\09\09"
module asm "\09.long\09__crc_register_kprobes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_kprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22register_kprobes\22\09\09\09\09\09"
module asm "__kstrtabns_register_kprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_kprobe\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_kprobe\09\09\09\09"
module asm "\09.long\09__crc_unregister_kprobe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_kprobe\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_kprobes\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_kprobes\09\09\09\09"
module asm "\09.long\09__crc_unregister_kprobes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_kprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_kprobes\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_kprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_kretprobe\22, \22a\22\09"
module asm "\09.weak\09__crc_register_kretprobe\09\09\09\09"
module asm "\09.long\09__crc_register_kretprobe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_kretprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22register_kretprobe\22\09\09\09\09\09"
module asm "__kstrtabns_register_kretprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+register_kretprobes\22, \22a\22\09"
module asm "\09.weak\09__crc_register_kretprobes\09\09\09\09"
module asm "\09.long\09__crc_register_kretprobes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_kretprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22register_kretprobes\22\09\09\09\09\09"
module asm "__kstrtabns_register_kretprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_kretprobe\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_kretprobe\09\09\09\09"
module asm "\09.long\09__crc_unregister_kretprobe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_kretprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_kretprobe\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_kretprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_kretprobes\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_kretprobes\09\09\09\09"
module asm "\09.long\09__crc_unregister_kretprobes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_kretprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_kretprobes\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_kretprobes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+disable_kprobe\22, \22a\22\09"
module asm "\09.weak\09__crc_disable_kprobe\09\09\09\09"
module asm "\09.long\09__crc_disable_kprobe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_kprobe\22\09\09\09\09\09"
module asm "__kstrtabns_disable_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+enable_kprobe\22, \22a\22\09"
module asm "\09.weak\09__crc_enable_kprobe\09\09\09\09"
module asm "\09.long\09__crc_enable_kprobe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enable_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22enable_kprobe\22\09\09\09\09\09"
module asm "__kstrtabns_enable_kprobe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kprobe_insn_cache = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.arch_probes_insn, i32 }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.kprobe_ctlblk = type { i32, %struct.prev_kprobe }
%struct.prev_kprobe = type { ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kprobe_insn_page = type { %struct.list_head, ptr, ptr, i32, i32, [0 x i8] }
%struct.kretprobe_instance = type { %union.anon.1, %struct.llist_node, ptr, ptr, ptr, [0 x i8] }
%union.anon.1 = type { %struct.freelist_node }
%struct.freelist_node = type { %struct.atomic_t, ptr }
%struct.llist_node = type { ptr }
%struct.kretprobe_holder = type { ptr, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.kretprobe = type { %struct.kprobe, ptr, ptr, i32, i32, i32, %struct.freelist_head, ptr }
%struct.freelist_head = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.47 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
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
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kprobe_blacklist_entry = type { %struct.list_head, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.optimized_kprobe = type { %struct.kprobe, %struct.list_head, %struct.arch_optimized_insn }
%struct.arch_optimized_insn = type { [1 x i32], ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.92, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.93, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.94, ptr, %struct.address_space, %struct.list_head, %union.anon.95, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.93 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.94 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.95 = type { ptr }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"kprobe_insn_slots.mutex.wait_lock\00", [62 x i8] zeroinitializer }, align 32
@kprobe_insn_slots = dso_local global { %struct.kprobe_insn_cache, [40 x i8] } { %struct.kprobe_insn_cache { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kprobe_insn_slots, i64 52), ptr getelementptr (i8, ptr @kprobe_insn_slots, i64 52) }, ptr @kprobe_insn_slots, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr @alloc_insn_page, ptr @free_insn_page, ptr @.str.2, %struct.list_head { ptr getelementptr (i8, ptr @kprobe_insn_slots, i64 104), ptr getelementptr (i8, ptr @kprobe_insn_slots, i64 104) }, i32 2, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kprobe_insn_slots.mutex\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kprobe_insn_page\00", [47 x i8] zeroinitializer }, align 32
@__get_insn_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/kprobes.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__free_insn_slot.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__is_insn_slot_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kprobe_cache_get_kallsym.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kprobe_optinsn_slots.mutex.wait_lock\00", [59 x i8] zeroinitializer }, align 32
@kprobe_optinsn_slots = dso_local global { %struct.kprobe_insn_cache, [40 x i8] } { %struct.kprobe_insn_cache { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kprobe_optinsn_slots, i64 52), ptr getelementptr (i8, ptr @kprobe_optinsn_slots, i64 52) }, ptr @kprobe_optinsn_slots, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr @alloc_optinsn_page, ptr @free_optinsn_page, ptr @.str.7, %struct.list_head { ptr getelementptr (i8, ptr @kprobe_optinsn_slots, i64 104), ptr getelementptr (i8, ptr @kprobe_optinsn_slots, i64 104) }, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kprobe_optinsn_slots.mutex\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kprobe_optinsn_page\00", [44 x i8] zeroinitializer }, align 32
@kprobe_table = internal global { [64 x %struct.hlist_head], [64 x i8] } zeroinitializer, align 32
@get_kprobe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kprobe_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kprobe_mutex, i64 52), ptr getelementptr (i8, ptr @kprobe_mutex, i64 52) }, ptr @kprobe_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@_kbl_addr_get_kprobe = internal global i32 ptrtoint (ptr @get_kprobe to i32), section "_kprobe_blacklist", align 4
@opt_pre_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_kbl_addr_opt_pre_handler = internal global i32 ptrtoint (ptr @opt_pre_handler to i32), section "_kprobe_blacklist", align 4
@optimizing_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @optimizing_list, ptr @optimizing_list }, [24 x i8] zeroinitializer }, align 32
@unoptimizing_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @unoptimizing_list, ptr @unoptimizing_list }, [24 x i8] zeroinitializer }, align 32
@optimizing_work = internal global { %struct.delayed_work, [60 x i8] } { %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @optimizing_work, i64 4), ptr getelementptr (i8, ptr @optimizing_work, i64 4) }, ptr @kprobe_optimizer, %struct.lockdep_map { ptr @optimizing_work, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.19, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@_kbl_addr_aggr_pre_handler = internal global i32 ptrtoint (ptr @aggr_pre_handler to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_aggr_post_handler = internal global i32 ptrtoint (ptr @aggr_post_handler to i32), section "_kprobe_blacklist", align 4
@kprobes_inc_nmissed_count.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_kbl_addr_kprobes_inc_nmissed_count = internal global i32 ptrtoint (ptr @kprobes_inc_nmissed_count to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_free_rp_inst_rcu = internal global i32 ptrtoint (ptr @free_rp_inst_rcu to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_recycle_rp_inst = internal global i32 ptrtoint (ptr @recycle_rp_inst to i32), section "_kprobe_blacklist", align 4
@kprobe_busy = internal global { %struct.kprobe, [48 x i8] } { %struct.kprobe { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @get_kprobe, ptr null, i32 0, ptr null, ptr null, i32 0, %struct.arch_probes_insn zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@current_kprobe = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kprobes_initialized = internal global { i32, [28 x i8] } zeroinitializer, align 32
@_kbl_addr_kprobe_flush_task = internal global i32 ptrtoint (ptr @kprobe_flush_task to i32), section "_kprobe_blacklist", align 4
@__kprobes_text_start = external dso_local global [0 x i8], align 1
@__kprobes_text_end = external dso_local global [0 x i8], align 1
@text_mutex = external dso_local global %struct.mutex, align 4
@kprobes_all_disarmed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_register_kprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_kprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_register_kprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_kprobe to i32), ptr @__kstrtab_register_kprobe, ptr @__kstrtabns_register_kprobe }, section "___ksymtab_gpl+register_kprobe", align 4
@__kstrtab_register_kprobes = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_kprobes = external dso_local constant [0 x i8], align 1
@__ksymtab_register_kprobes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_kprobes to i32), ptr @__kstrtab_register_kprobes, ptr @__kstrtabns_register_kprobes }, section "___ksymtab_gpl+register_kprobes", align 4
@__kstrtab_unregister_kprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_kprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_kprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_kprobe to i32), ptr @__kstrtab_unregister_kprobe, ptr @__kstrtabns_unregister_kprobe }, section "___ksymtab_gpl+unregister_kprobe", align 4
@__kstrtab_unregister_kprobes = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_kprobes = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_kprobes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_kprobes to i32), ptr @__kstrtab_unregister_kprobes, ptr @__kstrtabns_unregister_kprobes }, section "___ksymtab_gpl+unregister_kprobes", align 4
@_kbl_addr_kprobe_exceptions_notify = internal global i32 ptrtoint (ptr @kprobe_exceptions_notify to i32), section "_kprobe_blacklist", align 4
@_kbl_addr___kretprobe_find_ret_addr = internal global i32 ptrtoint (ptr @__kretprobe_find_ret_addr to i32), section "_kprobe_blacklist", align 4
@kretprobe_find_ret_addr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_kbl_addr_kretprobe_find_ret_addr = internal global i32 ptrtoint (ptr @kretprobe_find_ret_addr to i32), section "_kprobe_blacklist", align 4
@__kretprobe_trampoline_handler._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 1966, ptr null, ptr null }, align 1
@.str.9 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013kprobes: kretprobe: Return address not found, not execute handler. Maybe there is a bug in the kernel.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__kretprobe_trampoline_handler\00", [33 x i8] zeroinitializer }, align 32
@__kretprobe_trampoline_handler._entry_ptr = internal global ptr @__kretprobe_trampoline_handler._entry, section ".printk_index", align 4
@__kretprobe_trampoline_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@_kbl_addr___kretprobe_trampoline_handler = internal global i32 ptrtoint (ptr @__kretprobe_trampoline_handler to i32), section "_kprobe_blacklist", align 4
@_kbl_addr_pre_handler_kretprobe = internal global i32 ptrtoint (ptr @pre_handler_kretprobe to i32), section "_kprobe_blacklist", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_register_kretprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_kretprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_register_kretprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_kretprobe to i32), ptr @__kstrtab_register_kretprobe, ptr @__kstrtabns_register_kretprobe }, section "___ksymtab_gpl+register_kretprobe", align 4
@__kstrtab_register_kretprobes = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_kretprobes = external dso_local constant [0 x i8], align 1
@__ksymtab_register_kretprobes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_kretprobes to i32), ptr @__kstrtab_register_kretprobes, ptr @__kstrtabns_register_kretprobes }, section "___ksymtab_gpl+register_kretprobes", align 4
@__kstrtab_unregister_kretprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_kretprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_kretprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_kretprobe to i32), ptr @__kstrtab_unregister_kretprobe, ptr @__kstrtabns_unregister_kretprobe }, section "___ksymtab_gpl+unregister_kretprobe", align 4
@__kstrtab_unregister_kretprobes = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_kretprobes = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_kretprobes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_kretprobes to i32), ptr @__kstrtab_unregister_kretprobes, ptr @__kstrtabns_unregister_kretprobes }, section "___ksymtab_gpl+unregister_kretprobes", align 4
@__kstrtab_disable_kprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_kprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_kprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_kprobe to i32), ptr @__kstrtab_disable_kprobe, ptr @__kstrtabns_disable_kprobe }, section "___ksymtab_gpl+disable_kprobe", align 4
@__kstrtab_enable_kprobe = external dso_local constant [0 x i8], align 1
@__kstrtabns_enable_kprobe = external dso_local constant [0 x i8], align 1
@__ksymtab_enable_kprobe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enable_kprobe to i32), ptr @__kstrtab_enable_kprobe, ptr @__kstrtabns_enable_kprobe }, section "___ksymtab_gpl+enable_kprobe", align 4
@dump_kprobe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 2322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013kprobes: Dump kprobe:\0A.symbol_name = %s, .offset = %x, .addr = %pS\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dump_kprobe\00", [20 x i8] zeroinitializer }, align 32
@dump_kprobe._entry_ptr = internal global ptr @dump_kprobe._entry, section ".printk_index", align 4
@_kbl_addr_dump_kprobe = internal global i32 ptrtoint (ptr @dump_kprobe to i32), section "_kprobe_blacklist", align 4
@kprobe_blacklist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kprobe_blacklist, ptr @kprobe_blacklist }, [24 x i8] zeroinitializer }, align 32
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@__initcall__kmod_kprobes__278_2611_init_kprobesearly = internal global ptr @init_kprobes, section ".initcallearly.init", align 4
@__initcall__kmod_kprobes__279_2625_init_optprobes4 = internal global ptr @init_optprobes, section ".initcall4.init", align 4
@__initcall__kmod_kprobes__286_2904_debugfs_kprobe_init7 = internal global ptr @debugfs_kprobe_init, section ".initcall7.init", align 4
@__pcpu_unique_kprobe_instance = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@kprobe_instance = weak dso_local global ptr null, section ".data..percpu", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kprobe_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kprobe_mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(optimizing_work).work\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/kprobes.c:516\00", [43 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@freeing_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @freeing_list, ptr @freeing_list }, [24 x i8] zeroinitializer }, align 32
@kprobes_allow_optimization = internal global { i1, [31 x i8] } zeroinitializer, align 32
@do_free_cleaned_kprobes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@aggr_pre_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@aggr_post_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kprobe_ctlblk = external dso_local global %struct.kprobe_ctlblk, section ".data..percpu", align 4
@warn_kprobe_rereg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@reuse_unused_kprobe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@optimize_kprobe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_kretprobe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/kprobes.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Kretprobe is accessed from instance under preemptive context\00", [35 x i8] zeroinitializer }, align 32
@freelist_try_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/freelist.h\00", [39 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__start_kprobe_blacklist = external dso_local global [0 x i32], align 4
@__stop_kprobe_blacklist = external dso_local global [0 x i32], align 4
@init_kprobes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 2580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013kprobes: Failed to populate blacklist (error %d), kprobes not restricted, be careful using them!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_kprobes\00", [19 x i8] zeroinitializer }, align 32
@init_kprobes._entry_ptr = internal global ptr @init_kprobes._entry, section ".printk_index", align 4
@optprobe_template_end = external dso_local global [0 x i32], align 4
@optprobe_template_entry = external dso_local global [0 x i32], align 4
@kprobe_exceptions_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @kprobe_exceptions_notify, ptr null, i32 2147483647 }, [20 x i8] zeroinitializer }, align 32
@kprobe_module_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @kprobes_module_callback, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__noinstr_text_start = external dso_local global [0 x i8], align 1
@__noinstr_text_end = external dso_local global [0 x i8], align 1
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@kprobe_sysctls = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.28, ptr @sysctl_kprobes_optimization, i32 4, i16 420, ptr null, ptr @proc_kprobes_optimization_handler, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kprobe_sysctls\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kprobes-optimization\00", [43 x i8] zeroinitializer }, align 32
@sysctl_kprobes_optimization = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@kprobe_sysctl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kprobe_sysctl_mutex, i64 52), ptr getelementptr (i8, ptr @kprobe_sysctl_mutex, i64 52) }, ptr @kprobe_sysctl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kprobe_sysctl_mutex.wait_lock\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kprobe_sysctl_mutex\00", [44 x i8] zeroinitializer }, align 32
@optimize_all_kprobes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016kprobes: kprobe jump-optimization is enabled. All kprobes are optimized if possible.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"optimize_all_kprobes\00", [43 x i8] zeroinitializer }, align 32
@optimize_all_kprobes._entry_ptr = internal global ptr @optimize_all_kprobes._entry, section ".printk_index", align 4
@unoptimize_all_kprobes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 940, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016kprobes: kprobe jump-optimization is disabled. All kprobes are based on software breakpoint.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unoptimize_all_kprobes\00", [41 x i8] zeroinitializer }, align 32
@unoptimize_all_kprobes._entry_ptr = internal global ptr @unoptimize_all_kprobes._entry, section ".printk_index", align 4
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kprobes\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@kprobes_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @kprobes_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@fops_kp = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @read_enabled_file_bool, ptr @write_enabled_file_bool, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"blacklist\00", [22 x i8] zeroinitializer }, align 32
@kprobe_blacklist_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @kprobe_blacklist_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kprobes_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kprobe_seq_start, ptr @kprobe_seq_stop, ptr @kprobe_seq_next, ptr @show_kprobe_addr }, [16 x i8] zeroinitializer }, align 32
@show_kprobe_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@show_kprobe_addr.__warned.39 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"r\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"k\00", [30 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%px  %s  %s+0x%x  %s \00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%px  %s  %pS \00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s%s%s%s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[GONE]\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[DISABLED]\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[OPTIMIZED]\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"[FTRACE]\00", [23 x i8] zeroinitializer }, align 32
@arm_all_kprobes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 2791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"\014kprobes: Kprobes globally enabled, but failed to enable %d out of %d probes. Please check which kprobes are kept disabled via debugfs.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_all_kprobes\00", [16 x i8] zeroinitializer }, align 32
@arm_all_kprobes._entry_ptr = internal global ptr @arm_all_kprobes._entry, section ".printk_index", align 4
@arm_all_kprobes._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 2793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016kprobes: Kprobes globally enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_all_kprobes._entry_ptr.55 = internal global ptr @arm_all_kprobes._entry.53, section ".printk_index", align 4
@disarm_all_kprobes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 2834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"\014kprobes: Kprobes globally disabled, but failed to disable %d out of %d probes. Please check which kprobes are kept enabled via debugfs.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"disarm_all_kprobes\00", [45 x i8] zeroinitializer }, align 32
@disarm_all_kprobes._entry_ptr = internal global ptr @disarm_all_kprobes._entry, section ".printk_index", align 4
@disarm_all_kprobes._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 2836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016kprobes: Kprobes globally disabled\0A\00", [58 x i8] zeroinitializer }, align 32
@disarm_all_kprobes._entry_ptr.60 = internal global ptr @disarm_all_kprobes._entry.58, section ".printk_index", align 4
@kprobe_blacklist_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kprobe_blacklist_seq_start, ptr @kprobe_blacklist_seq_stop, ptr @kprobe_blacklist_seq_next, ptr @kprobe_blacklist_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x%px-0x%px\09%ps\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"kprobe_insn_slots\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 129, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 130, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 133, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 153, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"kprobe_optinsn_slots\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 347, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 348, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 351, i32 9 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"kprobe_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 61, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"kprobe_mutex\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"optimizing_list\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 511, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [18 x i8] c"unoptimizing_list\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 512, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"optimizing_work\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [12 x i8] c"kprobe_busy\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1261, i32 22 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"kprobes_initialized\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 55, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"kprobes_all_disarmed\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1966, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2321, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"kprobe_blacklist\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 80, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 695, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 723, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 67, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 516, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"freeing_list\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 513, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant [27 x i8] c"kprobes_allow_optimization\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"../include/linux/kprobes.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 229, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [28 x i8] c"../include/linux/freelist.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 106, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2580, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"kprobe_exceptions_nb\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 1880, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"kprobe_module_nb\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2541, i32 30 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"kprobe_sysctls\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 964, i32 25 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 979, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 966, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant [28 x i8] c"sysctl_kprobes_optimization\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 944, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"kprobe_sysctl_mutex\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 943, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 907, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 940, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2892, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2894, i32 22 }
@___asan_gen_.229 = private unnamed_addr constant [13 x i8] c"kprobes_fops\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2709, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2896, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant [8 x i8] c"fops_kp\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2882, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2898, i32 22 }
@___asan_gen_.241 = private unnamed_addr constant [22 x i8] c"kprobe_blacklist_fops\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2752, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"kprobes_sops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2702, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2636, i32 17 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2638, i32 17 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2644, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2646, i32 25 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2648, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2653, i32 17 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2654, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2654, i32 32 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2655, i32 47 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2656, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2657, i32 24 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2790, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2793, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2833, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2836, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant [22 x i8] c"kprobe_blacklist_sops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2746, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.314 = private constant [20 x i8] c"../kernel/kprobes.c\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 2733, i32 17 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__initcall__kmod_kprobes__278_2611_init_kprobesearly, ptr @__initcall__kmod_kprobes__279_2625_init_optprobes4, ptr @__initcall__kmod_kprobes__286_2904_debugfs_kprobe_init7, ptr @__kretprobe_trampoline_handler._entry, ptr @__kretprobe_trampoline_handler._entry_ptr, ptr @__ksymtab_disable_kprobe, ptr @__ksymtab_enable_kprobe, ptr @__ksymtab_register_kprobe, ptr @__ksymtab_register_kprobes, ptr @__ksymtab_register_kretprobe, ptr @__ksymtab_register_kretprobes, ptr @__ksymtab_unregister_kprobe, ptr @__ksymtab_unregister_kprobes, ptr @__ksymtab_unregister_kretprobe, ptr @__ksymtab_unregister_kretprobes, ptr @_kbl_addr___kretprobe_find_ret_addr, ptr @_kbl_addr___kretprobe_trampoline_handler, ptr @_kbl_addr_aggr_post_handler, ptr @_kbl_addr_aggr_pre_handler, ptr @_kbl_addr_dump_kprobe, ptr @_kbl_addr_free_rp_inst_rcu, ptr @_kbl_addr_get_kprobe, ptr @_kbl_addr_kprobe_exceptions_notify, ptr @_kbl_addr_kprobe_flush_task, ptr @_kbl_addr_kprobes_inc_nmissed_count, ptr @_kbl_addr_kretprobe_find_ret_addr, ptr @_kbl_addr_opt_pre_handler, ptr @_kbl_addr_pre_handler_kretprobe, ptr @_kbl_addr_recycle_rp_inst, ptr @arm_all_kprobes._entry, ptr @arm_all_kprobes._entry.53, ptr @arm_all_kprobes._entry_ptr, ptr @arm_all_kprobes._entry_ptr.55, ptr @disarm_all_kprobes._entry, ptr @disarm_all_kprobes._entry.58, ptr @disarm_all_kprobes._entry_ptr, ptr @disarm_all_kprobes._entry_ptr.60, ptr @dump_kprobe._entry, ptr @dump_kprobe._entry_ptr, ptr @init_kprobes._entry, ptr @init_kprobes._entry_ptr, ptr @optimize_all_kprobes._entry, ptr @optimize_all_kprobes._entry_ptr, ptr @unoptimize_all_kprobes._entry, ptr @unoptimize_all_kprobes._entry_ptr, ptr @.str, ptr @kprobe_insn_slots, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @kprobe_optinsn_slots, ptr @.str.6, ptr @.str.7, ptr @kprobe_table, ptr @kprobe_mutex, ptr @optimizing_list, ptr @unoptimizing_list, ptr @optimizing_work, ptr @kprobe_busy, ptr @kprobes_initialized, ptr @kprobes_all_disarmed, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @kprobe_blacklist, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @freeing_list, ptr @kprobes_allow_optimization, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @kprobe_exceptions_nb, ptr @kprobe_module_nb, ptr @.str.26, ptr @kprobe_sysctls, ptr @.str.27, ptr @.str.28, ptr @sysctl_kprobes_optimization, ptr @kprobe_sysctl_mutex, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @kprobes_fops, ptr @.str.37, ptr @fops_kp, ptr @.str.38, ptr @kprobe_blacklist_fops, ptr @kprobes_sops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @kprobe_blacklist_sops, ptr @.str.61], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_insn_slots to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_optinsn_slots to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optimizing_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unoptimizing_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optimizing_work to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_busy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_initialized to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_all_disarmed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_kprobe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_blacklist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeing_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_allow_optimization to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_kprobes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_exceptions_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_module_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_sysctls to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_kprobes_optimization to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_sysctl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optimize_all_kprobes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unoptimize_all_kprobes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops_kp to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_blacklist_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_all_kprobes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_all_kprobes._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disarm_all_kprobes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disarm_all_kprobes._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_blacklist_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @kprobe_lookup_name(ptr noundef %name, i32 noundef %__unused) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kallsyms_lookup_name(ptr noundef %name) #16
  %0 = inttoptr i32 %call to ptr
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @alloc_insn_page() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @module_alloc(i32 noundef 4096) #16
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @module_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_insn_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @module_memfree(ptr noundef %page) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__get_insn_slot(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %c, i32 noundef 0) #16
  %pages = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 4
  %insn_size.i = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 5
  %nr_garbage = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 6
  br label %retry

retry:                                            ; preds = %collect_garbage_slots.exit, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !263
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %retry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

retry.rcu_read_lock.exit_crit_edge:               ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %retry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %retry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b134 = load i1, ptr @__get_insn_slot.__warned, align 1
  br i1 %.b134, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__get_insn_slot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 153, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %kip.0178 = load volatile ptr, ptr %pages, align 4
  %cmp.not179 = icmp eq ptr %kip.0178, %pages
  br i1 %cmp.not179, label %do.end.for.end60_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end60_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end60

for.body:                                         ; preds = %for.inc50.for.body_crit_edge, %do.end.for.body_crit_edge
  %kip.0180 = phi ptr [ %kip.0, %for.inc50.for.body_crit_edge ], [ %kip.0178, %do.end.for.body_crit_edge ]
  %nused = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.0180, i32 0, i32 3
  %5 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nused, align 4
  %7 = ptrtoint ptr %insn_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %insn_size.i, align 4
  %mul.i = shl i32 %8, 2
  %div.i = udiv i32 4096, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %div.i)
  %cmp11 = icmp slt i32 %6, %div.i
  br i1 %cmp11, label %for.cond13.preheader, label %for.body.for.inc50_crit_edge

for.body.for.inc50_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc50

for.cond13.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i)
  %cmp15176.not = icmp ugt i32 %mul.i, 4096
  br i1 %cmp15176.not, label %for.cond13.preheader.cleanup.thread_crit_edge, label %for.body16.preheader

for.cond13.preheader.cleanup.thread_crit_edge:    ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

for.body16.preheader:                             ; preds = %for.cond13.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div.i, i32 1)
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.body16.preheader
  %i.0177 = phi i32 [ %inc25, %for.inc.for.body16_crit_edge ], [ 0, %for.body16.preheader ]
  %arrayidx = getelementptr %struct.kprobe_insn_page, ptr %kip.0180, i32 0, i32 5, i32 %i.0177
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp17 = icmp eq i8 %10, 0
  br i1 %cmp17, label %if.then19, label %for.inc

if.then19:                                        ; preds = %for.body16
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nused, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %nused, align 4
  %insns = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.0180, i32 0, i32 1
  %14 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %insns, align 4
  %16 = ptrtoint ptr %insn_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %insn_size.i, align 4
  %mul = mul i32 %17, %i.0177
  %add.ptr23 = getelementptr i32, ptr %15, i32 %mul
  %call.i139 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i139, label %if.then19.cleanup_crit_edge, label %land.lhs.true.i142

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true.i142:                               ; preds = %if.then19
  %call1.i140 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i140)
  %tobool.not.i141 = icmp eq i32 %call1.i140, 0
  br i1 %tobool.not.i141, label %land.lhs.true.i142.cleanup_crit_edge, label %land.lhs.true2.i144

land.lhs.true.i142.cleanup_crit_edge:             ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2.i144:                              ; preds = %land.lhs.true.i142
  %.b4.i143 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i143, label %land.lhs.true2.i144.cleanup_crit_edge, label %if.then.i145

land.lhs.true2.i144.cleanup_crit_edge:            ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i145:                                     ; preds = %land.lhs.true2.i144
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #16
  br label %cleanup

for.inc:                                          ; preds = %for.body16
  %inc25 = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc25, %umax
  br i1 %exitcond.not, label %for.inc.cleanup.thread_crit_edge, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body16

for.inc.cleanup.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.inc.cleanup.thread_crit_edge, %for.cond13.preheader.cleanup.thread_crit_edge
  %18 = ptrtoint ptr %nused to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %nused, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #16
  br label %for.inc50

cleanup:                                          ; preds = %if.then.i145, %land.lhs.true2.i144.cleanup_crit_edge, %land.lhs.true.i142.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !264
  %19 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i146 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i146 to ptr
  %preempt_count.i.i.i.i147 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i147 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i147, align 4
  %sub.i.i.i148 = add i32 %22, -1
  store volatile i32 %sub.i.i.i148, ptr %preempt_count.i.i.i.i147, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup92

for.inc50:                                        ; preds = %cleanup.thread, %for.body.for.inc50_crit_edge
  %23 = ptrtoint ptr %kip.0180 to i32
  call void @__asan_load4_noabort(i32 %23)
  %kip.0 = load volatile ptr, ptr %kip.0180, align 4
  %cmp.not = icmp eq ptr %kip.0, %pages
  br i1 %cmp.not, label %for.inc50.for.end60_crit_edge, label %for.inc50.for.body_crit_edge

for.inc50.for.body_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc50.for.end60_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end60

for.end60:                                        ; preds = %for.inc50.for.end60_crit_edge, %do.end.for.end60_crit_edge
  %call.i152 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i152, label %for.end60.rcu_read_unlock.exit162_crit_edge, label %land.lhs.true.i155

for.end60.rcu_read_unlock.exit162_crit_edge:      ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit162

land.lhs.true.i155:                               ; preds = %for.end60
  %call1.i153 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool.not.i154 = icmp eq i32 %call1.i153, 0
  br i1 %tobool.not.i154, label %land.lhs.true.i155.rcu_read_unlock.exit162_crit_edge, label %land.lhs.true2.i157

land.lhs.true.i155.rcu_read_unlock.exit162_crit_edge: ; preds = %land.lhs.true.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit162

land.lhs.true2.i157:                              ; preds = %land.lhs.true.i155
  %.b4.i156 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i156, label %land.lhs.true2.i157.rcu_read_unlock.exit162_crit_edge, label %if.then.i158

land.lhs.true2.i157.rcu_read_unlock.exit162_crit_edge: ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit162

if.then.i158:                                     ; preds = %land.lhs.true2.i157
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #16
  br label %rcu_read_unlock.exit162

rcu_read_unlock.exit162:                          ; preds = %if.then.i158, %land.lhs.true2.i157.rcu_read_unlock.exit162_crit_edge, %land.lhs.true.i155.rcu_read_unlock.exit162_crit_edge, %for.end60.rcu_read_unlock.exit162_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !264
  %24 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i159 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i159 to ptr
  %preempt_count.i.i.i.i160 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i160, align 4
  %sub.i.i.i161 = add i32 %27, -1
  store volatile i32 %sub.i.i.i161, ptr %preempt_count.i.i.i.i160, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %28 = ptrtoint ptr %nr_garbage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_garbage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool61.not = icmp eq i32 %29, 0
  br i1 %tobool61.not, label %if.end8.i, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %rcu_read_unlock.exit162
  tail call void @synchronize_rcu() #16
  %30 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pages, align 4
  %cmp.not7.i = icmp eq ptr %31, %pages
  br i1 %cmp.not7.i, label %land.lhs.true62.collect_garbage_slots.exit_crit_edge, label %land.lhs.true62.for.body.i_crit_edge

land.lhs.true62.for.body.i_crit_edge:             ; preds = %land.lhs.true62
  br label %for.body.i

land.lhs.true62.collect_garbage_slots.exit_crit_edge: ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %collect_garbage_slots.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %land.lhs.true62.for.body.i_crit_edge
  %kip.08.i = phi ptr [ %next.09.i, %cleanup.i.for.body.i_crit_edge ], [ %31, %land.lhs.true62.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %kip.08.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %next.09.i = load ptr, ptr %kip.08.i, align 4
  %ngarbage.i = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.08.i, i32 0, i32 4
  %33 = ptrtoint ptr %ngarbage.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ngarbage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp8.i = icmp eq i32 %34, 0
  br i1 %cmp8.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i163

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end.i163:                                      ; preds = %for.body.i
  %35 = ptrtoint ptr %ngarbage.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %ngarbage.i, align 4
  %36 = ptrtoint ptr %insn_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %insn_size.i, align 4
  %mul.i1.i = shl i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i1.i)
  %cmp113.not.i = icmp ugt i32 %mul.i1.i, 4096
  br i1 %cmp113.not.i, label %if.end.i163.cleanup.i_crit_edge, label %if.end.i163.for.body12.i_crit_edge

if.end.i163.for.body12.i_crit_edge:               ; preds = %if.end.i163
  br label %for.body12.i

if.end.i163.cleanup.i_crit_edge:                  ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %if.end.i163.for.body12.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body12.i_crit_edge ], [ 0, %if.end.i163.for.body12.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.kprobe_insn_page, ptr %kip.08.i, i32 0, i32 5, i32 %i.04.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp13.i = icmp eq i8 %39, 1
  br i1 %cmp13.i, label %land.lhs.true.i164, label %for.body12.i.for.inc.i_crit_edge

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i164:                               ; preds = %for.body12.i
  %call15.i = tail call fastcc zeroext i1 @collect_one_slot(ptr noundef %kip.08.i, i32 noundef %i.04.i) #16
  br i1 %call15.i, label %land.lhs.true.i164.cleanup.i_crit_edge, label %land.lhs.true.i164.for.inc.i_crit_edge

land.lhs.true.i164.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i164.cleanup.i_crit_edge:           ; preds = %land.lhs.true.i164
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.inc.i:                                        ; preds = %land.lhs.true.i164.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %40 = ptrtoint ptr %insn_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %insn_size.i, align 4
  %mul.i.i = shl i32 %41, 2
  %div.i.i = udiv i32 4096, %mul.i.i
  %cmp11.i = icmp ult i32 %inc.i, %div.i.i
  br i1 %cmp11.i, label %for.inc.i.for.body12.i_crit_edge, label %for.inc.i.cleanup.i_crit_edge

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %land.lhs.true.i164.cleanup.i_crit_edge, %if.end.i163.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %next.09.i, %pages
  br i1 %cmp.not.i, label %cleanup.i.collect_garbage_slots.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.collect_garbage_slots.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %collect_garbage_slots.exit

collect_garbage_slots.exit:                       ; preds = %cleanup.i.collect_garbage_slots.exit_crit_edge, %land.lhs.true62.collect_garbage_slots.exit_crit_edge
  %42 = ptrtoint ptr %nr_garbage to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %nr_garbage, align 4
  br label %retry

if.end8.i:                                        ; preds = %rcu_read_unlock.exit162
  %43 = ptrtoint ptr %insn_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %insn_size.i, align 4
  %mul.i166 = shl i32 %44, 2
  %div.i167 = udiv i32 4096, %mul.i166
  %add = add nuw nsw i32 %div.i167, 24
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #19
  %tobool71.not = icmp eq ptr %call9.i, null
  br i1 %tobool71.not, label %if.end8.i.cleanup92_crit_edge, label %if.end73

if.end8.i.cleanup92_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup92

if.end73:                                         ; preds = %if.end8.i
  %alloc = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 1
  %45 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %alloc, align 4
  %call74 = tail call ptr %46() #16
  %insns75 = getelementptr inbounds %struct.kprobe_insn_page, ptr %call9.i, i32 0, i32 1
  %47 = ptrtoint ptr %insns75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call74, ptr %insns75, align 8
  %tobool77.not = icmp eq ptr %call74, null
  br i1 %tobool77.not, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call9.i) #16
  br label %cleanup92

if.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #18
  %48 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call9.i, ptr %call9.i, align 128
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call9.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call9.i, ptr %prev.i, align 4
  %slot_used81 = getelementptr inbounds %struct.kprobe_insn_page, ptr %call9.i, i32 0, i32 5
  %50 = ptrtoint ptr %insn_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %insn_size.i, align 4
  %mul.i169 = shl i32 %51, 2
  %div.i170 = udiv i32 4096, %mul.i169
  %52 = call ptr @memset(ptr %slot_used81, i32 0, i32 %div.i170)
  %53 = ptrtoint ptr %slot_used81 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %slot_used81, align 8
  %nused85 = getelementptr inbounds %struct.kprobe_insn_page, ptr %call9.i, i32 0, i32 3
  %54 = ptrtoint ptr %nused85 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %nused85, align 16
  %ngarbage = getelementptr inbounds %struct.kprobe_insn_page, ptr %call9.i, i32 0, i32 4
  %55 = ptrtoint ptr %ngarbage to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %ngarbage, align 4
  %cache = getelementptr inbounds %struct.kprobe_insn_page, ptr %call9.i, i32 0, i32 2
  %56 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %c, ptr %cache, align 4
  tail call fastcc void @list_add_rcu(ptr noundef nonnull %call9.i, ptr noundef %pages)
  %57 = ptrtoint ptr %insns75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %insns75, align 8
  %59 = ptrtoint ptr %58 to i32
  %conv90 = zext i32 %59 to i64
  %sym = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 3
  %60 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sym, align 4
  tail call void @perf_event_ksymbol(i16 noundef zeroext 2, i64 noundef %conv90, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %61) #16
  br label %cleanup92

cleanup92:                                        ; preds = %if.end79, %if.then78, %if.end8.i.cleanup92_crit_edge, %cleanup
  %slot.4 = phi ptr [ %add.ptr23, %cleanup ], [ %58, %if.end79 ], [ null, %if.then78 ], [ null, %if.end8.i.cleanup92_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %c) #16
  ret ptr %slot.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #16
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !265
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_ksymbol(i16 noundef zeroext, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__free_insn_slot(ptr noundef %c, ptr noundef %slot, i32 noundef %dirty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %c, i32 noundef 0) #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !263
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b116 = load i1, ptr @__free_insn_slot.__warned, align 1
  br i1 %.b116, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__free_insn_slot.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 264, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %pages = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 4
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %kip.0132 = load volatile ptr, ptr %pages, align 4
  %cmp.not133 = icmp eq ptr %kip.0132, %pages
  br i1 %cmp.not133, label %do.end.do.end32_crit_edge, label %for.body.lr.ph

do.end.do.end32_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end32

for.body.lr.ph:                                   ; preds = %do.end
  %5 = ptrtoint ptr %slot to i32
  %insn_size = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 5
  %6 = ptrtoint ptr %insn_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %insn_size, align 4
  %mul = shl i32 %7, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %kip.0134 = phi ptr [ %kip.0132, %for.body.lr.ph ], [ %kip.0, %for.inc.for.body_crit_edge ]
  %insns = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.0134, i32 0, i32 1
  %8 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %insns, align 4
  %10 = ptrtoint ptr %9 to i32
  %sub = sub i32 %5, %10
  %div = udiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %div)
  %cmp10 = icmp sgt i32 %div, -1
  br i1 %cmp10, label %land.lhs.true11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true11:                                  ; preds = %for.body
  %div.i = udiv i32 4096, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div.i)
  %cmp13 = icmp ult i32 %div, %div.i
  br i1 %cmp13, label %land.lhs.true11.out_crit_edge, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true11.out_crit_edge:                    ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %kip.0134 to i32
  call void @__asan_load4_noabort(i32 %11)
  %kip.0 = load volatile ptr, ptr %kip.0134, align 4
  %cmp.not = icmp eq ptr %kip.0, %pages
  br i1 %cmp.not, label %for.inc.do.end32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.do.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end32

do.end32:                                         ; preds = %for.inc.do.end32_crit_edge, %do.end.do.end32_crit_edge
  %idx.0.lcssa = phi i32 [ -1, %do.end.do.end32_crit_edge ], [ %div, %for.inc.do.end32_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %out

out:                                              ; preds = %do.end32, %land.lhs.true11.out_crit_edge
  %idx.1 = phi i32 [ %idx.0.lcssa, %do.end32 ], [ %div, %land.lhs.true11.out_crit_edge ]
  %kip.1 = phi ptr [ null, %do.end32 ], [ %kip.0134, %land.lhs.true11.out_crit_edge ]
  %call.i117 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i117, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i120

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i120:                               ; preds = %out
  %call1.i118 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i118)
  %tobool.not.i119 = icmp eq i32 %call1.i118, 0
  br i1 %tobool.not.i119, label %land.lhs.true.i120.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i122

land.lhs.true.i120.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i122:                              ; preds = %land.lhs.true.i120
  %.b4.i121 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i121, label %land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge, label %if.then.i123

land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i123:                                     ; preds = %land.lhs.true2.i122
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i123, %land.lhs.true2.i122.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i120.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !264
  %12 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i124 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i124 to ptr
  %preempt_count.i.i.i.i125 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i125, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i125, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %tobool46.not = icmp eq ptr %kip.1, null
  br i1 %tobool46.not, label %rcu_read_unlock.exit.if.end93_crit_edge, label %if.then47

rcu_read_unlock.exit.if.end93_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then47:                                        ; preds = %rcu_read_unlock.exit
  %arrayidx = getelementptr %struct.kprobe_insn_page, ptr %kip.1, i32 0, i32 5, i32 %idx.1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp49.not = icmp eq i8 %17, 2
  br i1 %cmp49.not, label %if.then47.if.end72_crit_edge, label %do.end66, !prof !266

if.then47.if.end72_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end72

do.end66:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 278, i32 noundef 9, ptr noundef null) #16
  br label %if.end72

if.end72:                                         ; preds = %do.end66, %if.then47.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty)
  %tobool80.not = icmp eq i32 %dirty, 0
  br i1 %tobool80.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %if.end72
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx, align 1
  %ngarbage = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.1, i32 0, i32 4
  %19 = ptrtoint ptr %ngarbage to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ngarbage, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %ngarbage, align 4
  %nr_garbage = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 6
  %21 = ptrtoint ptr %nr_garbage to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_garbage, align 4
  %inc84 = add i32 %22, 1
  store i32 %inc84, ptr %nr_garbage, align 4
  %insn_size.i126 = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 5
  %23 = ptrtoint ptr %insn_size.i126 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %insn_size.i126, align 4
  %mul.i127 = shl i32 %24, 2
  %div.i128 = udiv i32 4096, %mul.i127
  call void @__sanitizer_cov_trace_cmp4(i32 %inc84, i32 %div.i128)
  %cmp86 = icmp sgt i32 %inc84, %div.i128
  br i1 %cmp86, label %if.then88, label %if.then81.if.end93_crit_edge

if.then81.if.end93_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end93

if.then88:                                        ; preds = %if.then81
  tail call void @synchronize_rcu() #16
  %25 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pages, align 4
  %cmp.not7.i = icmp eq ptr %26, %pages
  br i1 %cmp.not7.i, label %if.then88.collect_garbage_slots.exit_crit_edge, label %if.then88.for.body.i_crit_edge

if.then88.for.body.i_crit_edge:                   ; preds = %if.then88
  br label %for.body.i

if.then88.collect_garbage_slots.exit_crit_edge:   ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #18
  br label %collect_garbage_slots.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then88.for.body.i_crit_edge
  %kip.08.i = phi ptr [ %next.09.i, %cleanup.i.for.body.i_crit_edge ], [ %26, %if.then88.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %kip.08.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %next.09.i = load ptr, ptr %kip.08.i, align 4
  %ngarbage.i = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.08.i, i32 0, i32 4
  %28 = ptrtoint ptr %ngarbage.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ngarbage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp8.i = icmp eq i32 %29, 0
  br i1 %cmp8.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %30 = ptrtoint ptr %ngarbage.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ngarbage.i, align 4
  %31 = ptrtoint ptr %insn_size.i126 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %insn_size.i126, align 4
  %mul.i1.i = shl i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %mul.i1.i)
  %cmp113.not.i = icmp ugt i32 %mul.i1.i, 4096
  br i1 %cmp113.not.i, label %if.end.i.cleanup.i_crit_edge, label %if.end.i.for.body12.i_crit_edge

if.end.i.for.body12.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body12.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %if.end.i.for.body12.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body12.i_crit_edge ], [ 0, %if.end.i.for.body12.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.kprobe_insn_page, ptr %kip.08.i, i32 0, i32 5, i32 %i.04.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp13.i = icmp eq i8 %34, 1
  br i1 %cmp13.i, label %land.lhs.true.i129, label %for.body12.i.for.inc.i_crit_edge

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i129:                               ; preds = %for.body12.i
  %call15.i = tail call fastcc zeroext i1 @collect_one_slot(ptr noundef %kip.08.i, i32 noundef %i.04.i) #16
  br i1 %call15.i, label %land.lhs.true.i129.cleanup.i_crit_edge, label %land.lhs.true.i129.for.inc.i_crit_edge

land.lhs.true.i129.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i129.cleanup.i_crit_edge:           ; preds = %land.lhs.true.i129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.inc.i:                                        ; preds = %land.lhs.true.i129.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %35 = ptrtoint ptr %insn_size.i126 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %insn_size.i126, align 4
  %mul.i.i = shl i32 %36, 2
  %div.i.i = udiv i32 4096, %mul.i.i
  %cmp11.i = icmp ult i32 %inc.i, %div.i.i
  br i1 %cmp11.i, label %for.inc.i.for.body12.i_crit_edge, label %for.inc.i.cleanup.i_crit_edge

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body12.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %land.lhs.true.i129.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %cmp.not.i = icmp eq ptr %next.09.i, %pages
  br i1 %cmp.not.i, label %cleanup.i.collect_garbage_slots.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.collect_garbage_slots.exit_crit_edge:   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %collect_garbage_slots.exit

collect_garbage_slots.exit:                       ; preds = %cleanup.i.collect_garbage_slots.exit_crit_edge, %if.then88.collect_garbage_slots.exit_crit_edge
  %37 = ptrtoint ptr %nr_garbage to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %nr_garbage, align 4
  br label %if.end93

if.else:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #18
  %call91 = tail call fastcc zeroext i1 @collect_one_slot(ptr noundef nonnull %kip.1, i32 noundef %idx.1)
  br label %if.end93

if.end93:                                         ; preds = %if.else, %collect_garbage_slots.exit, %if.then81.if.end93_crit_edge, %rcu_read_unlock.exit.if.end93_crit_edge
  tail call void @mutex_unlock(ptr noundef %c) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @collect_one_slot(ptr noundef %kip, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.kprobe_insn_page, ptr %kip, i32 0, i32 5, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %nused = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip, i32 0, i32 3
  %1 = ptrtoint ptr %nused to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nused, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %nused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %kip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %kip, align 4
  %cmp.i.not.i = icmp eq ptr %4, %kip
  br i1 %cmp.i.not.i, label %if.then.if.then2_crit_edge, label %list_is_singular.exit

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

list_is_singular.exit:                            ; preds = %if.then
  %prev.i = getelementptr inbounds %struct.list_head, ptr %kip, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %4, %6
  br i1 %cmp.i.not, label %list_is_singular.exit.return_crit_edge, label %list_is_singular.exit.if.then2_crit_edge

list_is_singular.exit.if.then2_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then2

list_is_singular.exit.return_crit_edge:           ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then2:                                         ; preds = %list_is_singular.exit.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %insns = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip, i32 0, i32 1
  %7 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %insns, align 4
  %9 = ptrtoint ptr %8 to i32
  %conv = zext i32 %9 to i64
  %cache = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip, i32 0, i32 2
  %10 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cache, align 4
  %sym = getelementptr inbounds %struct.kprobe_insn_cache, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %sym to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sym, align 4
  tail call void @perf_event_ksymbol(i16 noundef zeroext 2, i64 noundef %conv, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %13) #16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %kip) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then2.list_del_rcu.exit_crit_edge

if.then2.list_del_rcu.exit_crit_edge:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %kip, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %kip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kip, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then2.list_del_rcu.exit_crit_edge
  %prev.i16 = getelementptr inbounds %struct.list_head, ptr %kip, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i16, align 4
  tail call void @synchronize_rcu() #16
  %21 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache, align 4
  %free = getelementptr inbounds %struct.kprobe_insn_cache, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %free, align 4
  %25 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %insns, align 4
  tail call void %24(ptr noundef %26) #16
  tail call void @kfree(ptr noundef %kip) #16
  br label %return

return:                                           ; preds = %list_del_rcu.exit, %list_is_singular.exit.return_crit_edge, %entry.return_crit_edge
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__is_insn_slot_addr(ptr noundef %c, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !263
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @__is_insn_slot_addr.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__is_insn_slot_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 302, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %pages = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %kip.0.in = phi ptr [ %pages, %do.end ], [ %kip.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %kip.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %kip.0 = load volatile ptr, ptr %kip.0.in, align 4
  %cmp.not = icmp eq ptr %kip.0, %pages
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %insns = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.0, i32 0, i32 1
  %5 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %insns, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp10.not = icmp ule i32 %7, %addr
  %add = add i32 %7, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %addr)
  %cmp13 = icmp ugt i32 %add, %addr
  %or.cond = and i1 %cmp10.not, %cmp13
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i32, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %for.end
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  %8 = xor i1 %cmp.not, true
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !264
  %9 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i39 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kprobe_cache_get_kallsym(ptr noundef %c, ptr nocapture noundef %symnum, ptr nocapture noundef writeonly %value, ptr nocapture noundef writeonly %type, ptr noundef %sym) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !263
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @kprobe_cache_get_kallsym.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @kprobe_cache_get_kallsym.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 321, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %pages = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %kip.0.in = phi ptr [ %pages, %do.end ], [ %kip.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %kip.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %kip.0 = load volatile ptr, ptr %kip.0.in, align 4
  %cmp.not = icmp eq ptr %kip.0, %pages
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = ptrtoint ptr %symnum to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %symnum, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %symnum, align 4
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %sym13 = getelementptr inbounds %struct.kprobe_insn_cache, ptr %c, i32 0, i32 3
  %7 = ptrtoint ptr %sym13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sym13, align 4
  %call14 = tail call i32 @strscpy(ptr noundef %sym, ptr noundef %8, i32 noundef 128) #16
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 116, ptr %type, align 1
  %insns = getelementptr inbounds %struct.kprobe_insn_page, ptr %kip.0, i32 0, i32 1
  %10 = ptrtoint ptr %insns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %insns, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 4
  br label %for.end

for.end:                                          ; preds = %if.end12, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.end12 ], [ -34, %for.cond.for.end_crit_edge ]
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !264
  %14 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i.i36 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @alloc_optinsn_page() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_insn_page()
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @free_optinsn_page(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @module_memfree(ptr noundef %page) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_kprobe(ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  %mul.i.i.i = mul i32 %0, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %shr.i.i
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.for.cond.preheader_crit_edge

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.for.cond.preheader_crit_edge, label %land.lhs.true7

land.lhs.true4.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b43 = load i1, ptr @get_kprobe.__warned, align 1
  br i1 %.b43, label %land.lhs.true7.for.cond.preheader_crit_edge, label %if.then

land.lhs.true7.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 383, ptr noundef nonnull @.str.4) #16
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true7.for.cond.preheader_crit_edge, %land.lhs.true4.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %p.0.in = phi ptr [ %p.0, %for.body.for.cond_crit_edge ], [ %arrayidx, %for.cond.preheader ]
  %1 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.0 = load volatile ptr, ptr %p.0.in, align 4
  %tobool16.not = icmp eq ptr %p.0, null
  br i1 %tobool16.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr17 = getelementptr inbounds %struct.kprobe, ptr %p.0, i32 0, i32 3
  %2 = ptrtoint ptr %addr17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr17, align 4
  %cmp = icmp eq ptr %3, %addr
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  ret ptr %p.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @opt_pre_handler(ptr noundef %p, ptr noundef %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @opt_pre_handler.__warned, align 1
  br i1 %.b37, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @opt_pre_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 426, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %list = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn42 = load volatile ptr, ptr %list, align 4
  %cmp.not44 = icmp eq ptr %.pn42, %list
  br i1 %cmp.not44, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %if.end20.for.body_crit_edge ], [ %.pn42, %do.end.for.body_crit_edge ]
  %kp.046 = getelementptr i8, ptr %.pn45, i32 -8
  %pre_handler = getelementptr i8, ptr %.pn45, i32 24
  %1 = ptrtoint ptr %pre_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pre_handler, align 4
  %tobool11.not = icmp eq ptr %2, null
  br i1 %tobool11.not, label %for.body.if.end20_crit_edge, label %land.lhs.true12

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

land.lhs.true12:                                  ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn45, i32 68
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then17, label %land.lhs.true12.if.end20_crit_edge, !prof !266

land.lhs.true12.if.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  %5 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @kprobe_instance to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %kp.046, ptr %11, align 4
  %13 = ptrtoint ptr %pre_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pre_handler, align 4
  %call19 = tail call i32 %14(ptr noundef %kp.046, ptr noundef %regs) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true12.if.end20_crit_edge, %for.body.if.end20_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i38 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i38 to ptr
  %cpu.i39 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i39, align 4
  %arrayidx.i40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i40, align 4
  %add.i41 = add i32 %20, ptrtoint (ptr @kprobe_instance to i32)
  %21 = inttoptr i32 %add.i41 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  %23 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load volatile ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %if.end20.for.end_crit_edge, label %if.end20.for.body_crit_edge

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_kprobe_optimizer() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %0 = load volatile ptr, ptr @optimizing_list, align 4
  %cmp.i.not = icmp eq ptr %0, @optimizing_list
  br i1 %cmp.i.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %1 = load volatile ptr, ptr @unoptimizing_list, align 4
  %cmp.i8.not = icmp eq ptr %1, @unoptimizing_list
  br i1 %cmp.i8.not, label %while.end, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  %call3 = tail call zeroext i1 @flush_delayed_work(ptr noundef nonnull @optimizing_work) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !267
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !268
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aggr_pre_handler(ptr noundef %p, ptr noundef %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @aggr_pre_handler.__warned, align 1
  br i1 %.b40, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @aggr_pre_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1199, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %list = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn45 = load volatile ptr, ptr %list, align 4
  %cmp.not47 = icmp eq ptr %.pn45, %list
  br i1 %cmp.not47, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %if.end23.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn48 = phi ptr [ %.pn, %if.end23.for.body_crit_edge ], [ %.pn45, %do.end.for.body_crit_edge ]
  %kp.049 = getelementptr i8, ptr %.pn48, i32 -8
  %pre_handler = getelementptr i8, ptr %.pn48, i32 24
  %1 = ptrtoint ptr %pre_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pre_handler, align 4
  %tobool11.not = icmp eq ptr %2, null
  br i1 %tobool11.not, label %for.body.if.end23_crit_edge, label %land.lhs.true12

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

land.lhs.true12:                                  ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn48, i32 68
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then17, label %land.lhs.true12.if.end23_crit_edge, !prof !266

land.lhs.true12.if.end23_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then17:                                        ; preds = %land.lhs.true12
  %5 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @kprobe_instance to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %kp.049, ptr %11, align 4
  %13 = ptrtoint ptr %pre_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pre_handler, align 4
  %call19 = tail call i32 %14(ptr noundef %kp.049, ptr noundef %regs) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.if.end23_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %land.lhs.true12.if.end23_crit_edge, %for.body.if.end23_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i41 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i41 to ptr
  %cpu.i42 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i42, align 4
  %arrayidx.i43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i43, align 4
  %add.i44 = add i32 %20, ptrtoint (ptr @kprobe_instance to i32)
  %21 = inttoptr i32 %add.i44 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  %23 = ptrtoint ptr %.pn48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load volatile ptr, ptr %.pn48, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 1, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aggr_post_handler(ptr noundef %p, ptr noundef %regs, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b36 = load i1, ptr @aggr_post_handler.__warned, align 1
  br i1 %.b36, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @aggr_post_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1216, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %list = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn41 = load volatile ptr, ptr %list, align 4
  %cmp.not43 = icmp eq ptr %.pn41, %list
  br i1 %cmp.not43, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn41, %do.end.for.body_crit_edge ]
  %kp.045 = getelementptr i8, ptr %.pn44, i32 -8
  %post_handler = getelementptr i8, ptr %.pn44, i32 28
  %1 = ptrtoint ptr %post_handler to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %post_handler, align 4
  %tobool11.not = icmp eq ptr %2, null
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %land.lhs.true12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true12:                                  ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn44, i32 68
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then17, label %land.lhs.true12.for.inc_crit_edge, !prof !266

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #18
  %5 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @kprobe_instance to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %kp.045, ptr %11, align 4
  %13 = ptrtoint ptr %post_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %post_handler, align 4
  tail call void %14(ptr noundef %kp.045, ptr noundef %regs, i32 noundef %flags) #16
  %15 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i37 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i37 to ptr
  %cpu.i38 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i38, align 4
  %arrayidx.i39 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i39, align 4
  %add.i40 = add i32 %20, ptrtoint (ptr @kprobe_instance to i32)
  %21 = inttoptr i32 %add.i40 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load volatile ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobes_inc_nmissed_count(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_handler.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i = icmp eq ptr %1, @aggr_pre_handler
  br i1 %cmp.i, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nmissed = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %nmissed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nmissed, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %nmissed, align 4
  br label %if.end24

do.body:                                          ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @kprobes_inc_nmissed_count.__warned, align 1
  br i1 %.b30, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @kprobes_inc_nmissed_count.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1234, ptr noundef nonnull @.str.4) #16
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %list = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn31 = load volatile ptr, ptr %list, align 4
  %cmp.not32 = icmp eq ptr %.pn31, %list
  br i1 %cmp.not32, label %do.end.if.end24_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn31, %do.end.for.body_crit_edge ]
  %nmissed13 = getelementptr i8, ptr %.pn33, i32 8
  %5 = ptrtoint ptr %nmissed13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nmissed13, align 4
  %inc14 = add i32 %6, 1
  store i32 %inc14, ptr %nmissed13, align 4
  %7 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.body.if.end24_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

if.end24:                                         ; preds = %for.body.if.end24_crit_edge, %do.end.if.end24_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_rp_inst_rcu(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rph = getelementptr inbounds %struct.kretprobe_instance, ptr %head, i32 0, i32 2
  %0 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rph, align 4
  %ref = getelementptr inbounds %struct.kretprobe_holder, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !266

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  %3 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rph, align 4
  tail call void @kfree(ptr noundef %4) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  tail call void @kfree(ptr noundef %head) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recycle_rp_inst(ptr noundef %ri) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.get_kretprobe.exit_crit_edge

entry.get_kretprobe.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.get_kretprobe.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.get_kretprobe.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b7.i = load i1, ptr @get_kretprobe.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.get_kretprobe.exit_crit_edge, label %if.then.i

land.lhs.true3.i.get_kretprobe.exit_crit_edge:    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kretprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 230, ptr noundef nonnull @.str.21) #16
  br label %get_kretprobe.exit

get_kretprobe.exit:                               ; preds = %if.then.i, %land.lhs.true3.i.get_kretprobe.exit_crit_edge, %land.lhs.true.i.get_kretprobe.exit_crit_edge, %entry.get_kretprobe.exit_crit_edge
  %rph.i = getelementptr inbounds %struct.kretprobe_instance, ptr %ri, i32 0, i32 2
  %0 = ptrtoint ptr %rph.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rph.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !272

if.then:                                          ; preds = %get_kretprobe.exit
  call void @__sanitizer_cov_trace_pc() #18
  %freelist = getelementptr inbounds %struct.kretprobe, ptr %3, i32 0, i32 6
  tail call fastcc void @freelist_add(ptr noundef %ri, ptr noundef %freelist)
  br label %if.end

if.else:                                          ; preds = %get_kretprobe.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @call_rcu(ptr noundef %ri, ptr noundef nonnull @free_rp_inst_rcu) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobe_busy_begin() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !273
  %4 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @current_kprobe to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kprobe_busy, ptr %10, align 4
  %12 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i16 = add i32 %17, ptrtoint (ptr @kprobe_ctlblk to i32)
  %18 = inttoptr i32 %add.i16 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobe_busy_end() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @current_kprobe to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !274
  %8 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %11, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobe_flush_task(ptr nocapture noundef %tk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @kprobes_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !272

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !273
  %5 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @current_kprobe to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @kprobe_busy, ptr %11, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i16.i = add i32 %18, ptrtoint (ptr @kprobe_ctlblk to i32)
  %19 = inttoptr i32 %add.i16.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %19, align 4
  %kretprobe_instances = getelementptr inbounds %struct.task_struct, ptr %tk, i32 0, i32 218
  %21 = ptrtoint ptr %kretprobe_instances to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kretprobe_instances, align 4
  store ptr null, ptr %kretprobe_instances, align 4
  %tobool4.not14 = icmp eq ptr %22, null
  br i1 %tobool4.not14, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %recycle_rp_inst.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %node.015 = phi ptr [ %24, %recycle_rp_inst.exit.while.body_crit_edge ], [ %22, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %node.015, i32 -8
  %23 = ptrtoint ptr %node.015 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node.015, align 4
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %while.body.get_kretprobe.exit.i_crit_edge

while.body.get_kretprobe.exit.i_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit.i

land.lhs.true.i.i:                                ; preds = %while.body
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.get_kretprobe.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.get_kretprobe.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b7.i.i = load i1, ptr @get_kretprobe.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.get_kretprobe.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.get_kretprobe.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kretprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 230, ptr noundef nonnull @.str.21) #16
  br label %get_kretprobe.exit.i

get_kretprobe.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true3.i.i.get_kretprobe.exit.i_crit_edge, %land.lhs.true.i.i.get_kretprobe.exit.i_crit_edge, %while.body.get_kretprobe.exit.i_crit_edge
  %rph.i.i = getelementptr i8, ptr %node.015, i32 4
  %25 = ptrtoint ptr %rph.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rph.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %26, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !272

if.then.i:                                        ; preds = %get_kretprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %freelist.i = getelementptr inbounds %struct.kretprobe, ptr %28, i32 0, i32 6
  tail call fastcc void @freelist_add(ptr noundef %add.ptr, ptr noundef %freelist.i) #16
  br label %recycle_rp_inst.exit

if.else.i:                                        ; preds = %get_kretprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @call_rcu(ptr noundef %add.ptr, ptr noundef nonnull @free_rp_inst_rcu) #16
  br label %recycle_rp_inst.exit

recycle_rp_inst.exit:                             ; preds = %if.else.i, %if.then.i
  %tobool4.not = icmp eq ptr %24, null
  br i1 %tobool4.not, label %recycle_rp_inst.exit.while.end_crit_edge, label %recycle_rp_inst.exit.while.body_crit_edge

recycle_rp_inst.exit.while.body_crit_edge:        ; preds = %recycle_rp_inst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

recycle_rp_inst.exit.while.end_crit_edge:         ; preds = %recycle_rp_inst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %recycle_rp_inst.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %29 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i8 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i8 to ptr
  %cpu.i9 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i9, align 4
  %arrayidx.i10 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i10, align 4
  %add.i11 = add i32 %34, ptrtoint (ptr @current_kprobe to i32)
  %35 = inttoptr i32 %add.i11 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !274
  %37 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i12 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i12 to ptr
  %preempt_count.i.i.i13 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i13, align 4
  %sub.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i13, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_within_kprobe_blacklist(i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__kprobes_text_start to i32))
  %cmp.not = icmp uge i32 %addr, ptrtoint (ptr @__kprobes_text_start to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__kprobes_text_end to i32))
  %cmp1 = icmp ult i32 %addr, ptrtoint (ptr @__kprobes_text_end to i32)
  %spec.select = and i1 %cmp.not, %cmp1
  ret i1 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @within_kprobe_blacklist(i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %symname = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %symname) #16
  %0 = call ptr @memset(ptr %symname, i32 255, i32 128)
  %call.i = tail call zeroext i1 @arch_within_kprobe_blacklist(i32 noundef %addr) #16
  br i1 %call.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %ent.014.i = load ptr, ptr @kprobe_blacklist, align 4
  %cmp.not15.i = icmp eq ptr %ent.014.i, @kprobe_blacklist
  br i1 %cmp.not15.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ent.016.i = phi ptr [ %ent.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ent.014.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %start_addr.i = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.016.i, i32 0, i32 1
  %1 = ptrtoint ptr %start_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %start_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %addr)
  %cmp1.not.i = icmp ugt i32 %2, %addr
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %end_addr.i = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.016.i, i32 0, i32 2
  %3 = ptrtoint ptr %end_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %addr)
  %cmp2.i = icmp ugt i32 %4, %addr
  br i1 %cmp2.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %ent.016.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ent.0.i = load ptr, ptr %ent.016.i, align 4
  %cmp.not.i = icmp eq ptr %ent.0.i, @kprobe_blacklist
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %call1 = call i32 @lookup_symbol_name(i32 noundef %addr, ptr noundef nonnull %symname) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %call4 = call ptr @strchr(ptr noundef nonnull %symname, i32 noundef 46)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then2.cleanup_crit_edge, label %if.end7

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.then2
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call4, align 1
  %call9 = call ptr @kprobe_lookup_name(ptr noundef nonnull %symname, i32 noundef 0)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.then11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then11:                                        ; preds = %if.end7
  %7 = ptrtoint ptr %call9 to i32
  %call.i20 = call zeroext i1 @arch_within_kprobe_blacklist(i32 noundef %7) #16
  br i1 %call.i20, label %if.then11.cleanup_crit_edge, label %for.cond.preheader.i23

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.i23:                           ; preds = %if.then11
  %ent.014.i21 = load ptr, ptr @kprobe_blacklist, align 4
  %cmp.not15.i22 = icmp eq ptr %ent.014.i21, @kprobe_blacklist
  br i1 %cmp.not15.i22, label %for.cond.preheader.i23.cleanup_crit_edge, label %for.cond.preheader.i23.for.body.i27_crit_edge

for.cond.preheader.i23.for.body.i27_crit_edge:    ; preds = %for.cond.preheader.i23
  br label %for.body.i27

for.cond.preheader.i23.cleanup_crit_edge:         ; preds = %for.cond.preheader.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i27:                                     ; preds = %for.inc.i33.for.body.i27_crit_edge, %for.cond.preheader.i23.for.body.i27_crit_edge
  %ent.016.i24 = phi ptr [ %ent.0.i31, %for.inc.i33.for.body.i27_crit_edge ], [ %ent.014.i21, %for.cond.preheader.i23.for.body.i27_crit_edge ]
  %start_addr.i25 = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.016.i24, i32 0, i32 1
  %8 = ptrtoint ptr %start_addr.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %start_addr.i25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp1.not.i26 = icmp ugt i32 %9, %7
  br i1 %cmp1.not.i26, label %for.body.i27.for.inc.i33_crit_edge, label %land.lhs.true.i30

for.body.i27.for.inc.i33_crit_edge:               ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i33

land.lhs.true.i30:                                ; preds = %for.body.i27
  %end_addr.i28 = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.016.i24, i32 0, i32 2
  %10 = ptrtoint ptr %end_addr.i28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_addr.i28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp2.i29 = icmp ugt i32 %11, %7
  br i1 %cmp2.i29, label %land.lhs.true.i30.cleanup_crit_edge, label %land.lhs.true.i30.for.inc.i33_crit_edge

land.lhs.true.i30.for.inc.i33_crit_edge:          ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i33

land.lhs.true.i30.cleanup_crit_edge:              ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.i33:                                      ; preds = %land.lhs.true.i30.for.inc.i33_crit_edge, %for.body.i27.for.inc.i33_crit_edge
  %12 = ptrtoint ptr %ent.016.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ent.0.i31 = load ptr, ptr %ent.016.i24, align 4
  %cmp.not.i32 = icmp eq ptr %ent.0.i31, @kprobe_blacklist
  br i1 %cmp.not.i32, label %for.inc.i33.cleanup_crit_edge, label %for.inc.i33.for.body.i27_crit_edge

for.inc.i33.for.body.i27_crit_edge:               ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i27

for.inc.i33.cleanup_crit_edge:                    ; preds = %for.inc.i33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i33.cleanup_crit_edge, %land.lhs.true.i30.cleanup_crit_edge, %for.cond.preheader.i23.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then2.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then11.cleanup_crit_edge ], [ false, %for.cond.preheader.i23.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ false, %for.inc.i33.cleanup_crit_edge ], [ true, %land.lhs.true.i30.cleanup_crit_edge ], [ true, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %symname) #16
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lookup_symbol_name(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_kprobe(ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %addr.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr.i, align 4
  %symbol_name.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %symbol_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %symbol_name.i, align 4
  %offset.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 5
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %tobool1.not.i.i = icmp ne ptr %1, null
  %or.cond26.i.i = xor i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond26.i.i, label %entry.if.then_crit_edge, label %if.end.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call ptr @kprobe_lookup_name(ptr noundef nonnull %3, i32 noundef %5) #16
  %tobool7.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i.i, label %if.then6.i.i.if.then_crit_edge, label %if.then6.i.i.if.end11.i.i_crit_edge

if.then6.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i.i

if.then6.i.i.if.then_crit_edge:                   ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end11.i.i:                                     ; preds = %if.then6.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %addr.addr.0.i.i = phi ptr [ %call.i.i, %if.then6.i.i.if.end11.i.i_crit_edge ], [ %1, %if.end.i.i.if.end11.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %addr.addr.0.i.i, i32 %5
  %tobool12.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool12.not.i.i, label %if.end11.i.i.if.then_crit_edge, label %kprobe_addr.exit

if.end11.i.i.if.then_crit_edge:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

kprobe_addr.exit:                                 ; preds = %if.end11.i.i
  %cmp.i = icmp ugt ptr %add.ptr.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %kprobe_addr.exit.if.then_crit_edge, label %if.end

kprobe_addr.exit.if.then_crit_edge:               ; preds = %kprobe_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %kprobe_addr.exit.if.then_crit_edge, %if.end11.i.i.if.then_crit_edge, %if.then6.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i.i94 = phi ptr [ %add.ptr.i.i, %kprobe_addr.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then6.i.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end11.i.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %6 = ptrtoint ptr %retval.0.i.i94 to i32
  br label %cleanup

if.end:                                           ; preds = %kprobe_addr.exit
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i, ptr %addr.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %call.i = tail call fastcc ptr @__get_valid_kprobe(ptr noundef %p) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end6, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end
  %.b41.i = load i1, ptr @warn_kprobe_rereg.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.warn_kprobe_rereg.exit.thread_crit_edge, label %if.then.i, !prof !266

land.rhs.i.warn_kprobe_rereg.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %warn_kprobe_rereg.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @warn_kprobe_rereg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1556, i32 noundef 9, ptr noundef null) #16
  br label %warn_kprobe_rereg.exit.thread

warn_kprobe_rereg.exit.thread:                    ; preds = %if.then.i, %land.rhs.i.warn_kprobe_rereg.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  %flags = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 2
  store i32 %and, ptr %flags, align 4
  %nmissed = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %nmissed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %nmissed, align 4
  %list = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %call.i.i65 = tail call i32 @ftrace_location(i32 noundef %15) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i.i66, label %if.end.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  tail call void @jump_label_lock() #16
  %16 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %19, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !275
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %call1.i = tail call i32 @kernel_text_address(i32 noundef %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.check_kprobe_address_safe.exit_crit_edge, label %lor.lhs.false.i

if.end.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %addr.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %call4.i = tail call zeroext i1 @within_kprobe_blacklist(i32 noundef %25) #16
  br i1 %call4.i, label %lor.lhs.false.i.check_kprobe_address_safe.exit_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 4
  %call8.i = tail call i32 @jump_label_text_reserved(ptr noundef %27, ptr noundef %27) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false5.i.check_kprobe_address_safe.exit_crit_edge

lor.lhs.false5.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

lor.lhs.false10.i:                                ; preds = %lor.lhs.false5.i
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %addr.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %call17.i = tail call ptr @find_bug(i32 noundef %30) #16
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %if.end20.i, label %lor.lhs.false10.i.check_kprobe_address_safe.exit_crit_edge

lor.lhs.false10.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

if.end20.i:                                       ; preds = %lor.lhs.false10.i
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %call22.i = tail call ptr @__module_text_address(i32 noundef %33) #16
  %tobool23.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool23.not.i, label %if.end20.i.check_kprobe_address_safe.exit_crit_edge, label %if.then24.i

if.end20.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

if.then24.i:                                      ; preds = %if.end20.i
  %call25.i = tail call zeroext i1 @try_module_get(ptr noundef nonnull %call22.i) #16
  br i1 %call25.i, label %if.end30.i, label %if.then24.i.check_kprobe_address_safe.exit_crit_edge, !prof !266

if.then24.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

if.end30.i:                                       ; preds = %if.then24.i
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr.i, align 4
  %init_layout.i.i = getelementptr inbounds %struct.module, ptr %call22.i, i32 0, i32 26
  %36 = ptrtoint ptr %init_layout.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_layout.i.i, align 16
  %cmp.not.i.i = icmp ugt ptr %37, %35
  br i1 %cmp.not.i.i, label %if.end30.i.check_kprobe_address_safe.exit_crit_edge, label %within_module_init.exit.i

if.end30.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

within_module_init.exit.i:                        ; preds = %if.end30.i
  %38 = ptrtoint ptr %35 to i32
  %39 = ptrtoint ptr %37 to i32
  %size.i.i = getelementptr inbounds %struct.module, ptr %call22.i, i32 0, i32 26, i32 1
  %40 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i.i, align 4
  %add.i58.i = add i32 %41, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i58.i, i32 %38)
  %cmp4.i.i = icmp ugt i32 %add.i58.i, %38
  br i1 %cmp4.i.i, label %land.lhs.true.i, label %within_module_init.exit.i.check_kprobe_address_safe.exit_crit_edge

within_module_init.exit.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %within_module_init.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

land.lhs.true.i:                                  ; preds = %within_module_init.exit.i
  %42 = ptrtoint ptr %call22.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call22.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 1
  br i1 %cmp.not.i, label %land.lhs.true.i.check_kprobe_address_safe.exit_crit_edge, label %if.then33.i

land.lhs.true.i.check_kprobe_address_safe.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_kprobe_address_safe.exit

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @module_put(ptr noundef nonnull %call22.i) #16
  br label %check_kprobe_address_safe.exit

check_kprobe_address_safe.exit:                   ; preds = %if.then33.i, %land.lhs.true.i.check_kprobe_address_safe.exit_crit_edge, %within_module_init.exit.i.check_kprobe_address_safe.exit_crit_edge, %if.end30.i.check_kprobe_address_safe.exit_crit_edge, %if.then24.i.check_kprobe_address_safe.exit_crit_edge, %if.end20.i.check_kprobe_address_safe.exit_crit_edge, %lor.lhs.false10.i.check_kprobe_address_safe.exit_crit_edge, %lor.lhs.false5.i.check_kprobe_address_safe.exit_crit_edge, %lor.lhs.false.i.check_kprobe_address_safe.exit_crit_edge, %if.end.i.check_kprobe_address_safe.exit_crit_edge
  %probed_mod.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.check_kprobe_address_safe.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false.i.check_kprobe_address_safe.exit_crit_edge ], [ null, %if.end20.i.check_kprobe_address_safe.exit_crit_edge ], [ %call22.i, %if.end30.i.check_kprobe_address_safe.exit_crit_edge ], [ %call22.i, %land.lhs.true.i.check_kprobe_address_safe.exit_crit_edge ], [ null, %if.then33.i ], [ %call22.i, %within_module_init.exit.i.check_kprobe_address_safe.exit_crit_edge ], [ %call22.i, %if.then24.i.check_kprobe_address_safe.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false10.i.check_kprobe_address_safe.exit_crit_edge ], [ inttoptr (i32 -1 to ptr), %lor.lhs.false5.i.check_kprobe_address_safe.exit_crit_edge ]
  %tobool8.not = phi i1 [ false, %if.end.i.check_kprobe_address_safe.exit_crit_edge ], [ false, %lor.lhs.false.i.check_kprobe_address_safe.exit_crit_edge ], [ true, %if.end20.i.check_kprobe_address_safe.exit_crit_edge ], [ true, %if.end30.i.check_kprobe_address_safe.exit_crit_edge ], [ true, %land.lhs.true.i.check_kprobe_address_safe.exit_crit_edge ], [ false, %if.then33.i ], [ true, %within_module_init.exit.i.check_kprobe_address_safe.exit_crit_edge ], [ false, %if.then24.i.check_kprobe_address_safe.exit_crit_edge ], [ false, %lor.lhs.false10.i.check_kprobe_address_safe.exit_crit_edge ], [ false, %lor.lhs.false5.i.check_kprobe_address_safe.exit_crit_edge ]
  %ret.0.i = phi i32 [ -22, %if.end.i.check_kprobe_address_safe.exit_crit_edge ], [ -22, %lor.lhs.false.i.check_kprobe_address_safe.exit_crit_edge ], [ 0, %if.end20.i.check_kprobe_address_safe.exit_crit_edge ], [ 0, %if.end30.i.check_kprobe_address_safe.exit_crit_edge ], [ 0, %land.lhs.true.i.check_kprobe_address_safe.exit_crit_edge ], [ -2, %if.then33.i ], [ 0, %within_module_init.exit.i.check_kprobe_address_safe.exit_crit_edge ], [ -2, %if.then24.i.check_kprobe_address_safe.exit_crit_edge ], [ -22, %lor.lhs.false10.i.check_kprobe_address_safe.exit_crit_edge ], [ -22, %lor.lhs.false5.i.check_kprobe_address_safe.exit_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !276
  %44 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i56.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i56.i to ptr
  %preempt_count.i.i57.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i57.i, align 4
  %sub.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i57.i, align 4
  tail call void @jump_label_unlock() #16
  br i1 %tobool8.not, label %if.end10, label %check_kprobe_address_safe.exit.cleanup_crit_edge

check_kprobe_address_safe.exit.cleanup_crit_edge: ; preds = %check_kprobe_address_safe.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %check_kprobe_address_safe.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %addr.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %mul.i.i.i.i = mul i32 %50, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 26
  %arrayidx.i = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %shr.i.i.i
  %call.i.i67 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i68 = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69, label %if.end10.for.cond.i.preheader_crit_edge

if.end10.for.cond.i.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

land.lhs.true.i69:                                ; preds = %if.end10
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i69.for.cond.i.preheader_crit_edge

land.lhs.true.i69.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i69
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b43.i = load i1, ptr @get_kprobe.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true7.i.for.cond.i.preheader_crit_edge, label %if.then.i70

land.lhs.true7.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

if.then.i70:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 383, ptr noundef nonnull @.str.4) #16
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i70, %land.lhs.true7.i.for.cond.i.preheader_crit_edge, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i69.for.cond.i.preheader_crit_edge, %if.end10.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %p.0.in.i = phi ptr [ %p.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %51 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %p.0.i = load volatile ptr, ptr %p.0.in.i, align 4
  %tobool16.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool16.not.i, label %if.end16, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %addr17.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 3
  %52 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr17.i, align 4
  %cmp.i71 = icmp eq ptr %53, %49
  br i1 %cmp.i71, label %if.then14, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.then14:                                        ; preds = %for.body.i
  %addr17.i.le = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 3
  tail call void @cpus_read_lock() #16
  tail call void @jump_label_lock() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @text_mutex, i32 noundef 0) #16
  %pre_handler.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 6
  %54 = ptrtoint ptr %pre_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pre_handler.i.i, align 4
  %cmp.i.i = icmp eq ptr %55, @aggr_pre_handler
  br i1 %cmp.i.i, label %land.lhs.true.i70.i, label %if.then.i73

if.then.i73:                                      ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 96) #20
  %tobool.not.i.i72 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i72, label %if.then.i73.out.i_crit_edge, label %if.end.i.i76

if.then.i73.out.i_crit_edge:                      ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end.i.i76:                                     ; preds = %if.then.i73
  %list.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %call7.i.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list.i.i, ptr %list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %addr17.i.le to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %addr17.i.le, align 4
  %addr1.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %addr1.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 10
  %62 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i75 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i75)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i75, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i76.if.end.i77_crit_edge

if.end.i.i76.if.end.i77_crit_edge:                ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i77

if.then.i.i.i:                                    ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i.i.i = tail call i32 @arch_prepare_optimized_kprobe(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %p.0.i) #16
  br label %if.end.i77

if.end.i77:                                       ; preds = %if.then.i.i.i, %if.end.i.i76.if.end.i77_crit_edge
  %opcode.i.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 8
  %opcode1.i.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 8
  %64 = ptrtoint ptr %opcode1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %opcode1.i.i.i, align 4
  %66 = ptrtoint ptr %opcode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %opcode.i.i.i, align 8
  %ainsn.i.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 9
  %ainsn2.i.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 9
  %67 = call ptr @memcpy(ptr %ainsn.i.i.i, ptr %ainsn2.i.i.i, i32 32)
  %68 = ptrtoint ptr %addr17.i.le to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr17.i.le, align 4
  %70 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %addr1.i.i, align 4
  %71 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i = and i32 %72, -5
  %flags2.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 10
  %73 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i.i, ptr %flags2.i.i, align 4
  %pre_handler.i63.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 6
  %74 = ptrtoint ptr %pre_handler.i63.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @aggr_pre_handler, ptr %pre_handler.i63.i, align 8
  %post_handler.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 7
  %75 = ptrtoint ptr %post_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %post_handler.i.i, align 4
  %tobool.not.i64.i = icmp ne ptr %76, null
  %and.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %or.cond.i = select i1 %tobool.not.i64.i, i1 %tobool.i.not.i.i, i1 false
  br i1 %or.cond.i, label %if.then.i.i, label %if.end.i77.if.end.i67.i_crit_edge

if.end.i77.if.end.i67.i_crit_edge:                ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i67.i

if.then.i.i:                                      ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  %post_handler3.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 7
  %77 = ptrtoint ptr %post_handler3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @aggr_post_handler, ptr %post_handler3.i.i, align 4
  br label %if.end.i67.i

if.end.i67.i:                                     ; preds = %if.then.i.i, %if.end.i77.if.end.i67.i_crit_edge
  %list.i65.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %list.i65.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %list.i65.i, ptr %list.i65.i, align 8
  %prev.i.i66.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %list.i65.i, ptr %prev.i.i66.i, align 4
  %80 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %call7.i.i.i.i, align 8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %pprev.i.i.i, align 4
  %list4.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list4.i.i, ptr noundef %list.i65.i, ptr noundef %list.i65.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i67.i.list_add_rcu.exit.i.i_crit_edge

if.end.i67.i.list_add_rcu.exit.i.i_crit_edge:     ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_rcu.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i67.i
  call void @__sanitizer_cov_trace_pc() #18
  %82 = ptrtoint ptr %list4.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %list.i65.i, ptr %list4.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %list.i65.i, ptr %prev2.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !265
  %84 = ptrtoint ptr %list.i65.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %list4.i.i, ptr %list.i65.i, align 8
  %85 = ptrtoint ptr %prev.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %list4.i.i, ptr %prev.i.i66.i, align 4
  br label %list_add_rcu.exit.i.i

list_add_rcu.exit.i.i:                            ; preds = %if.end.i.i.i.i, %if.end.i67.i.list_add_rcu.exit.i.i_crit_edge
  %86 = ptrtoint ptr %p.0.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p.0.i, align 4
  %88 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %call7.i.i.i.i, align 8
  %pprev.i22.i.i = getelementptr inbounds %struct.hlist_node, ptr %p.0.i, i32 0, i32 1
  %89 = ptrtoint ptr %pprev.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pprev.i22.i.i, align 4
  %91 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %90, ptr %pprev.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !277
  %92 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pprev.i.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call7.i.i.i.i, ptr %93, align 4
  %tobool.not.i.i.i = icmp eq ptr %87, null
  br i1 %tobool.not.i.i.i, label %list_add_rcu.exit.i.i.init_aggr_kprobe.exit.i_crit_edge, label %do.body50.i.i.i

list_add_rcu.exit.i.i.init_aggr_kprobe.exit.i_crit_edge: ; preds = %list_add_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_aggr_kprobe.exit.i

do.body50.i.i.i:                                  ; preds = %list_add_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %95 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i.i.i, align 8
  %pprev53.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %pprev53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call7.i.i.i.i, ptr %pprev53.i.i.i, align 4
  br label %init_aggr_kprobe.exit.i

init_aggr_kprobe.exit.i:                          ; preds = %do.body50.i.i.i, %list_add_rcu.exit.i.i.init_aggr_kprobe.exit.i_crit_edge
  %98 = ptrtoint ptr %pprev.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i22.i.i, align 4
  br label %if.end10.i

land.lhs.true.i70.i:                              ; preds = %if.then14
  %flags.i.i.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 10
  %99 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i68.i = and i32 %100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68.i)
  %tobool.i.not.i69.i = icmp eq i32 %and.i.i68.i, 0
  br i1 %tobool.i.not.i69.i, label %land.lhs.true.i70.i.if.end10.i_crit_edge, label %kprobe_unused.exit.i

land.lhs.true.i70.i.if.end10.i_crit_edge:         ; preds = %land.lhs.true.i70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

kprobe_unused.exit.i:                             ; preds = %land.lhs.true.i70.i
  %list.i71.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 1
  %101 = ptrtoint ptr %list.i71.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %list.i71.i, align 4
  %cmp.i5.i.i = icmp eq ptr %102, %list.i71.i
  br i1 %cmp.i5.i.i, label %if.then4.i, label %kprobe_unused.exit.i.if.end10.i_crit_edge

kprobe_unused.exit.i.if.end10.i_crit_edge:        ; preds = %kprobe_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10.i

if.then4.i:                                       ; preds = %kprobe_unused.exit.i
  %list.i72.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p.0.i, i32 0, i32 1
  %103 = ptrtoint ptr %list.i72.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile ptr, ptr %list.i72.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %104, %list.i72.i
  br i1 %cmp.i.not.i.i, label %land.rhs.i73.i, label %if.then4.i.if.end29.i.i_crit_edge

if.then4.i.if.end29.i.i_crit_edge:                ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

land.rhs.i73.i:                                   ; preds = %if.then4.i
  %.b46.i.i = load i1, ptr @reuse_unused_kprobe.__already_done, align 1
  br i1 %.b46.i.i, label %land.rhs.i73.i.if.end29.i.i_crit_edge, label %if.then.i74.i, !prof !266

land.rhs.i73.i.if.end29.i.i_crit_edge:            ; preds = %land.rhs.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

if.then.i74.i:                                    ; preds = %land.rhs.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @reuse_unused_kprobe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 777, i32 noundef 9, ptr noundef null) #16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i74.i, %land.rhs.i73.i.if.end29.i.i_crit_edge, %if.then4.i.if.end29.i.i_crit_edge
  %105 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags.i.i.i, align 4
  %and.i76.i = and i32 %106, -3
  store i32 %and.i76.i, ptr %flags.i.i.i, align 4
  %107 = ptrtoint ptr %pre_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pre_handler.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %108, @aggr_pre_handler
  br i1 %cmp.i.i.i.i, label %kprobe_optready.exit.i.i, label %if.end29.i.i.out.i_crit_edge

if.end29.i.i.out.i_crit_edge:                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

kprobe_optready.exit.i.i:                         ; preds = %if.end29.i.i
  %optinsn.i.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p.0.i, i32 0, i32 2
  %call1.i.i77.i = tail call i32 @arch_prepared_optinsn(ptr noundef %optinsn.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i77.i)
  %tobool38.not.i.i = icmp eq i32 %call1.i.i77.i, 0
  br i1 %tobool38.not.i.i, label %kprobe_optready.exit.i.i.out.i_crit_edge, label %reuse_unused_kprobe.exit.i

kprobe_optready.exit.i.i.out.i_crit_edge:         ; preds = %kprobe_optready.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

reuse_unused_kprobe.exit.i:                       ; preds = %kprobe_optready.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @optimize_kprobe(ptr noundef nonnull %p.0.i) #16
  br label %if.end10.i

if.end10.i:                                       ; preds = %reuse_unused_kprobe.exit.i, %kprobe_unused.exit.i.if.end10.i_crit_edge, %land.lhs.true.i70.i.if.end10.i_crit_edge, %init_aggr_kprobe.exit.i
  %ap.0.i = phi ptr [ %p.0.i, %reuse_unused_kprobe.exit.i ], [ %p.0.i, %kprobe_unused.exit.i.if.end10.i_crit_edge ], [ %call7.i.i.i.i, %init_aggr_kprobe.exit.i ], [ %p.0.i, %land.lhs.true.i70.i.if.end10.i_crit_edge ]
  %flags.i78.i = getelementptr inbounds %struct.kprobe, ptr %ap.0.i, i32 0, i32 10
  %109 = ptrtoint ptr %flags.i78.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags.i78.i, align 4
  %and.i79.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79.i)
  %tobool.i.not.i = icmp eq i32 %and.i79.i, 0
  br i1 %tobool.i.not.i, label %if.end10.i.if.end18.i_crit_edge, label %if.then12.i

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end10.i
  %call13.i = tail call i32 @arch_prepare_kprobe(ptr noundef nonnull %ap.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then12.i.out.i_crit_edge

if.then12.i.out.i_crit_edge:                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end16.i:                                       ; preds = %if.then12.i
  %111 = ptrtoint ptr %flags.i78.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i78.i, align 4
  %and.i.i.i81.i = and i32 %112, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i81.i)
  %tobool.i.not.i.i82.i = icmp eq i32 %and.i.i.i81.i, 0
  br i1 %tobool.i.not.i.i82.i, label %if.then.i.i84.i, label %if.end16.i.prepare_optimized_kprobe.exit.i_crit_edge

if.end16.i.prepare_optimized_kprobe.exit.i_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %prepare_optimized_kprobe.exit.i

if.then.i.i84.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i.i83.i = tail call i32 @arch_prepare_optimized_kprobe(ptr noundef nonnull %ap.0.i, ptr noundef nonnull %ap.0.i) #16
  br label %prepare_optimized_kprobe.exit.i

prepare_optimized_kprobe.exit.i:                  ; preds = %if.then.i.i84.i, %if.end16.i.prepare_optimized_kprobe.exit.i_crit_edge
  %113 = ptrtoint ptr %flags.i78.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i78.i, align 4
  %and.i = and i32 %114, -4
  %or.i = or i32 %and.i, 2
  store i32 %or.i, ptr %flags.i78.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %prepare_optimized_kprobe.exit.i, %if.end10.i.if.end18.i_crit_edge
  %opcode.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 8
  %opcode1.i.i = getelementptr inbounds %struct.kprobe, ptr %ap.0.i, i32 0, i32 8
  %115 = ptrtoint ptr %opcode1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %opcode1.i.i, align 4
  %117 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %opcode.i.i, align 4
  %ainsn.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 9
  %ainsn2.i.i = getelementptr inbounds %struct.kprobe, ptr %ap.0.i, i32 0, i32 9
  %118 = call ptr @memcpy(ptr %ainsn.i.i, ptr %ainsn2.i.i, i32 32)
  %post_handler.i85.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 7
  %119 = ptrtoint ptr %post_handler.i85.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %post_handler.i85.i, align 4
  %tobool.not.i86.i = icmp eq ptr %120, null
  br i1 %tobool.not.i86.i, label %if.end18.i.if.end.i90.i_crit_edge, label %if.then.i87.i

if.end18.i.if.end.i90.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i90.i

if.then.i87.i:                                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @unoptimize_kprobe(ptr noundef nonnull %ap.0.i, i1 noundef zeroext true) #16
  br label %if.end.i90.i

if.end.i90.i:                                     ; preds = %if.then.i87.i, %if.end18.i.if.end.i90.i_crit_edge
  %list1.i.i = getelementptr inbounds %struct.kprobe, ptr %ap.0.i, i32 0, i32 1
  %121 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %list1.i.i, align 4
  %call.i.i.i89.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %list1.i.i, ptr noundef %122) #16
  br i1 %call.i.i.i89.i, label %if.end.i.i.i92.i, label %if.end.i90.i.list_add_rcu.exit.i93.i_crit_edge

if.end.i90.i.list_add_rcu.exit.i93.i_crit_edge:   ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_rcu.exit.i93.i

if.end.i.i.i92.i:                                 ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #18
  %123 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %list, align 4
  %124 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %list1.i.i, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !265
  %125 = ptrtoint ptr %list1.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %list, ptr %list1.i.i, align 4
  %prev37.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  %126 = ptrtoint ptr %prev37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %list, ptr %prev37.i.i.i.i, align 4
  br label %list_add_rcu.exit.i93.i

list_add_rcu.exit.i93.i:                          ; preds = %if.end.i.i.i92.i, %if.end.i90.i.list_add_rcu.exit.i93.i_crit_edge
  %127 = ptrtoint ptr %post_handler.i85.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %post_handler.i85.i, align 4
  %tobool3.not.i.i = icmp eq ptr %128, null
  br i1 %tobool3.not.i.i, label %list_add_rcu.exit.i93.i.out.i_crit_edge, label %land.lhs.true.i94.i

list_add_rcu.exit.i93.i.out.i_crit_edge:          ; preds = %list_add_rcu.exit.i93.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

land.lhs.true.i94.i:                              ; preds = %list_add_rcu.exit.i93.i
  %post_handler4.i.i = getelementptr inbounds %struct.kprobe, ptr %ap.0.i, i32 0, i32 7
  %129 = ptrtoint ptr %post_handler4.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %post_handler4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %130, null
  br i1 %tobool5.not.i.i, label %if.then6.i.i78, label %land.lhs.true.i94.i.out.i_crit_edge

land.lhs.true.i94.i.out.i_crit_edge:              ; preds = %land.lhs.true.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.then6.i.i78:                                   ; preds = %land.lhs.true.i94.i
  call void @__sanitizer_cov_trace_pc() #18
  %131 = ptrtoint ptr %post_handler4.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @aggr_post_handler, ptr %post_handler4.i.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.then6.i.i78, %land.lhs.true.i94.i.out.i_crit_edge, %list_add_rcu.exit.i93.i.out.i_crit_edge, %if.then12.i.out.i_crit_edge, %kprobe_optready.exit.i.i.out.i_crit_edge, %if.end29.i.i.out.i_crit_edge, %if.then.i73.out.i_crit_edge
  %ret.0.i79 = phi i32 [ %call13.i, %if.then12.i.out.i_crit_edge ], [ -12, %if.then.i73.out.i_crit_edge ], [ 0, %list_add_rcu.exit.i93.i.out.i_crit_edge ], [ 0, %land.lhs.true.i94.i.out.i_crit_edge ], [ 0, %if.then6.i.i78 ], [ -22, %kprobe_optready.exit.i.i.out.i_crit_edge ], [ -22, %if.end29.i.i.out.i_crit_edge ]
  %ap.1.i = phi ptr [ %ap.0.i, %if.then12.i.out.i_crit_edge ], [ null, %if.then.i73.out.i_crit_edge ], [ %ap.0.i, %list_add_rcu.exit.i93.i.out.i_crit_edge ], [ %ap.0.i, %land.lhs.true.i94.i.out.i_crit_edge ], [ %ap.0.i, %if.then6.i.i78 ], [ %p.0.i, %kprobe_optready.exit.i.i.out.i_crit_edge ], [ %p.0.i, %if.end29.i.i.out.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @text_mutex) #16
  tail call void @jump_label_unlock() #16
  tail call void @cpus_read_unlock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i79)
  %cmp.i80 = icmp eq i32 %ret.0.i79, 0
  br i1 %cmp.i80, label %land.lhs.true.i81, label %out.i.out_crit_edge

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true.i81:                                ; preds = %out.i
  %flags.i95.i = getelementptr inbounds %struct.kprobe, ptr %ap.1.i, i32 0, i32 10
  %132 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i95.i, align 4
  %and.i96.i = and i32 %133, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96.i)
  %tobool.i97.not.i = icmp eq i32 %and.i96.i, 0
  br i1 %tobool.i97.not.i, label %land.lhs.true.i81.out_crit_edge, label %land.lhs.true21.i

land.lhs.true.i81.out_crit_edge:                  ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true21.i:                                ; preds = %land.lhs.true.i81
  %134 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags, align 4
  %and.i99.i = and i32 %135, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99.i)
  %tobool.i100.not.i = icmp eq i32 %and.i99.i, 0
  br i1 %tobool.i100.not.i, label %if.then23.i, label %land.lhs.true21.i.out_crit_edge

land.lhs.true21.i.out_crit_edge:                  ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then23.i:                                      ; preds = %land.lhs.true21.i
  %and25.i = and i32 %133, -3
  %136 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %and25.i, ptr %flags.i95.i, align 4
  %.b60.i = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b60.i, label %if.then23.i.out_crit_edge, label %if.then27.i

if.then23.i.out_crit_edge:                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then27.i:                                      ; preds = %if.then23.i
  %call28.i = tail call fastcc i32 @arm_kprobe(ptr noundef %ap.1.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then27.i.out_crit_edge, label %if.then30.i

if.then27.i.out_crit_edge:                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then30.i:                                      ; preds = %if.then27.i
  %137 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags.i95.i, align 4
  %or32.i = or i32 %138, 2
  store i32 %or32.i, ptr %flags.i95.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then30.i.list_del_rcu.exit.i_crit_edge

if.then30.i.list_del_rcu.exit.i_crit_edge:        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #18
  %139 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i, align 4
  %141 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %list, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev1.i.i.i.i, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %142, ptr %140, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then30.i.list_del_rcu.exit.i_crit_edge
  %145 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @synchronize_rcu() #16
  br label %out

if.end16:                                         ; preds = %for.cond.i
  tail call void @cpus_read_lock() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @text_mutex, i32 noundef 0) #16
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags, align 4
  %and.i.i82 = and i32 %147, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.i.not.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.i.not.i83, label %if.end.i85, label %if.end16.prepare_kprobe.exit_crit_edge

if.end16.prepare_kprobe.exit_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %prepare_kprobe.exit

if.end.i85:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %call2.i84 = tail call i32 @arch_prepare_kprobe(ptr noundef %p) #16
  br label %prepare_kprobe.exit

prepare_kprobe.exit:                              ; preds = %if.end.i85, %if.end16.prepare_kprobe.exit_crit_edge
  %retval.0.i86 = phi i32 [ %call2.i84, %if.end.i85 ], [ -22, %if.end16.prepare_kprobe.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @text_mutex) #16
  tail call void @cpus_read_unlock() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i86)
  %tobool18.not = icmp eq i32 %retval.0.i86, 0
  br i1 %tobool18.not, label %if.end20, label %prepare_kprobe.exit.out_crit_edge

prepare_kprobe.exit.out_crit_edge:                ; preds = %prepare_kprobe.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end20:                                         ; preds = %prepare_kprobe.exit
  %148 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %p, align 4
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %p, i32 0, i32 1
  %149 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %pprev.i, align 4
  %150 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %addr.i, align 4
  %152 = ptrtoint ptr %151 to i32
  %mul.i.i.i = mul i32 %152, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 26
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %shr.i.i
  %153 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx, align 4
  store ptr %154, ptr %p, align 4
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !278
  %155 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %p, ptr %arrayidx, align 4
  %tobool.not.i88 = icmp eq ptr %154, null
  br i1 %tobool.not.i88, label %if.end20.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end20.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %154, i32 0, i32 1
  %156 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %p, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end20.hlist_add_head_rcu.exit_crit_edge
  %.b64 = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b64, label %hlist_add_head_rcu.exit.if.end32_crit_edge, label %land.lhs.true

hlist_add_head_rcu.exit.if.end32_crit_edge:       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

land.lhs.true:                                    ; preds = %hlist_add_head_rcu.exit
  %157 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags, align 4
  %and.i89 = and i32 %158, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.i.not = icmp eq i32 %and.i89, 0
  br i1 %tobool.i.not, label %if.then26, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true
  %call27 = tail call fastcc i32 @arm_kprobe(ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end32_crit_edge, label %if.then29

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then29:                                        ; preds = %if.then26
  %159 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %p, align 4
  %161 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pprev.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %160, ptr %162, align 4
  %tobool.not.i.i90 = icmp eq ptr %160, null
  br i1 %tobool.not.i.i90, label %if.then29.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.then29.hlist_del_rcu.exit_crit_edge:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %160, i32 0, i32 1
  %164 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %162, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.then29.hlist_del_rcu.exit_crit_edge
  %165 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i, align 4
  tail call void @synchronize_rcu() #16
  br label %out

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %hlist_add_head_rcu.exit.if.end32_crit_edge
  tail call fastcc void @try_to_optimize_kprobe(ptr noundef %p)
  br label %out

out:                                              ; preds = %if.end32, %hlist_del_rcu.exit, %prepare_kprobe.exit.out_crit_edge, %list_del_rcu.exit.i, %if.then27.i.out_crit_edge, %if.then23.i.out_crit_edge, %land.lhs.true21.i.out_crit_edge, %land.lhs.true.i81.out_crit_edge, %out.i.out_crit_edge
  %ret.1 = phi i32 [ %retval.0.i86, %prepare_kprobe.exit.out_crit_edge ], [ 0, %if.end32 ], [ %call27, %hlist_del_rcu.exit ], [ 0, %land.lhs.true21.i.out_crit_edge ], [ 0, %if.then23.i.out_crit_edge ], [ %call28.i, %list_del_rcu.exit.i ], [ 0, %if.then27.i.out_crit_edge ], [ 0, %land.lhs.true.i81.out_crit_edge ], [ %ret.0.i79, %out.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  %tobool33.not = icmp eq ptr %probed_mod.0, null
  br i1 %tobool33.not, label %out.cleanup_crit_edge, label %if.then34

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then34:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @module_put(ptr noundef nonnull %probed_mod.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %out.cleanup_crit_edge, %check_kprobe_address_safe.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %warn_kprobe_rereg.exit.thread, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.0.i, %check_kprobe_address_safe.exit.cleanup_crit_edge ], [ %ret.1, %if.then34 ], [ %ret.1, %out.cleanup_crit_edge ], [ -22, %warn_kprobe_rereg.exit.thread ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_kprobe(ptr noundef %kp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge, !prof !266

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @text_mutex, i32 noundef 0) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.__arm_kprobe.exit_crit_edge, label %land.rhs.i

if.end.__arm_kprobe.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %__arm_kprobe.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @text_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__arm_kprobe.exit_crit_edge, !prof !272

land.rhs.i.__arm_kprobe.exit_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__arm_kprobe.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 988, i32 noundef 9, ptr noundef null) #16
  br label %__arm_kprobe.exit

__arm_kprobe.exit:                                ; preds = %do.end.i, %land.rhs.i.__arm_kprobe.exit_crit_edge, %if.end.__arm_kprobe.exit_crit_edge
  tail call void @arch_arm_kprobe(ptr noundef %kp) #16
  tail call fastcc void @optimize_kprobe(ptr noundef %kp) #16
  tail call void @mutex_unlock(ptr noundef nonnull @text_mutex) #16
  tail call void @cpus_read_unlock() #16
  br label %return

return:                                           ; preds = %__arm_kprobe.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %__arm_kprobe.exit ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @try_to_optimize_kprobe(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #16
  tail call void @jump_label_lock() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @text_mutex, i32 noundef 0) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 96) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end.i:                                         ; preds = %if.end
  %list.i = getelementptr inbounds %struct.optimized_kprobe, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list.i, ptr %prev.i.i, align 4
  %addr.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr.i, align 4
  %addr1.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %addr1.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.i, label %if.end.i.if.end3_crit_edge

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call1.i.i = tail call i32 @arch_prepare_optimized_kprobe(ptr noundef nonnull %call7.i.i.i, ptr noundef %p) #16
  br label %if.end3

if.end3:                                          ; preds = %if.then.i.i, %if.end.i.if.end3_crit_edge
  %optinsn = getelementptr inbounds %struct.optimized_kprobe, ptr %call7.i.i.i, i32 0, i32 2
  %call4 = tail call i32 @arch_prepared_optinsn(ptr noundef %optinsn) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @arch_remove_optimized_kprobe(ptr noundef nonnull %call7.i.i.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %out

if.end7:                                          ; preds = %if.end3
  %opcode.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 8
  %opcode1.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 8
  %10 = ptrtoint ptr %opcode1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %opcode1.i.i, align 4
  %12 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %opcode.i.i, align 8
  %ainsn.i.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 9
  %ainsn2.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 9
  %13 = call ptr @memcpy(ptr %ainsn.i.i, ptr %ainsn2.i.i, i32 32)
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %16 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %addr1.i, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i19 = and i32 %18, -5
  %flags2.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and.i19, ptr %flags2.i, align 4
  %pre_handler.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @aggr_pre_handler, ptr %pre_handler.i, align 8
  %post_handler.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 7
  %21 = ptrtoint ptr %post_handler.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %post_handler.i, align 4
  %tobool.not.i20 = icmp ne ptr %22, null
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %or.cond = select i1 %tobool.not.i20, i1 %tobool.i.not.i, i1 false
  br i1 %or.cond, label %if.then.i, label %if.end7.if.end.i23_crit_edge

if.end7.if.end.i23_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i23

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %post_handler3.i = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %post_handler3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @aggr_post_handler, ptr %post_handler3.i, align 4
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i, %if.end7.if.end.i23_crit_edge
  %list.i21 = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %list.i21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list.i21, ptr %list.i21, align 8
  %prev.i.i22 = getelementptr inbounds %struct.kprobe, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i21, ptr %prev.i.i22, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %call7.i.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pprev.i.i, align 4
  %list4.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list4.i, ptr noundef %list.i21, ptr noundef %list.i21) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i23.list_add_rcu.exit.i_crit_edge

if.end.i23.list_add_rcu.exit.i_crit_edge:         ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #18
  %28 = ptrtoint ptr %list4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list.i21, ptr %list4.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i21, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !265
  %30 = ptrtoint ptr %list.i21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list4.i, ptr %list.i21, align 8
  %31 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list4.i, ptr %prev.i.i22, align 4
  br label %list_add_rcu.exit.i

list_add_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end.i23.list_add_rcu.exit.i_crit_edge
  %32 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %p, align 4
  %34 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %call7.i.i.i, align 8
  %pprev.i22.i = getelementptr inbounds %struct.hlist_node, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i22.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev.i22.i, align 4
  %37 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !277
  %38 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i.i, ptr %39, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %list_add_rcu.exit.i.init_aggr_kprobe.exit_crit_edge, label %do.body50.i.i

list_add_rcu.exit.i.init_aggr_kprobe.exit_crit_edge: ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %init_aggr_kprobe.exit

do.body50.i.i:                                    ; preds = %list_add_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i.i, align 8
  %pprev53.i.i = getelementptr inbounds %struct.hlist_node, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %pprev53.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call7.i.i.i, ptr %pprev53.i.i, align 4
  br label %init_aggr_kprobe.exit

init_aggr_kprobe.exit:                            ; preds = %do.body50.i.i, %list_add_rcu.exit.i.init_aggr_kprobe.exit_crit_edge
  %44 = ptrtoint ptr %pprev.i22.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i22.i, align 4
  tail call fastcc void @optimize_kprobe(ptr noundef nonnull %call7.i.i.i)
  br label %out

out:                                              ; preds = %init_aggr_kprobe.exit, %if.then6, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @text_mutex) #16
  tail call void @jump_label_unlock() #16
  tail call void @cpus_read_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_kprobes(ptr nocapture noundef readonly %kps, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %kps, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @register_kprobe(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019)
  %cmp4.not = icmp eq i32 %i.019, 0
  br i1 %cmp4.not, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_kprobes(ptr noundef %kps, i32 noundef %i.019)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then5, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ %call, %if.then3.cleanup_crit_edge ], [ %call, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_kprobes(ptr nocapture noundef readonly %kps, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %kps, i32 %i.030
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @__unregister_kprobe_top(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %addr = getelementptr inbounds %struct.kprobe, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  tail call void @synchronize_rcu() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp731 = icmp sgt i32 %num, 0
  br i1 %cmp731, label %for.end.for.body8_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.body8:                                        ; preds = %for.inc14.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %i.132 = phi i32 [ %inc15, %for.inc14.for.body8_crit_edge ], [ 0, %for.end.for.body8_crit_edge ]
  %arrayidx9 = getelementptr ptr, ptr %kps, i32 %i.132
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx9, align 4
  %addr10 = getelementptr inbounds %struct.kprobe, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %addr10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr10, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body8.for.inc14_crit_edge, label %if.then11

for.body8.for.inc14_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc14

if.then11:                                        ; preds = %for.body8
  %list.i = getelementptr inbounds %struct.kprobe, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @arch_remove_kprobe(ptr noundef %6) #16
  br label %for.inc14

if.else.i:                                        ; preds = %if.then11
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %12, %list.i
  br i1 %cmp.i.not.i.i, label %if.else.i.for.inc14_crit_edge, label %list_is_singular.exit.i

if.else.i.for.inc14_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc14

list_is_singular.exit.i:                          ; preds = %if.else.i
  %prev.i.i = getelementptr inbounds %struct.kprobe, ptr %6, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %cmp.i12.not.i = icmp eq ptr %12, %14
  br i1 %cmp.i12.not.i, label %if.then4.i, label %list_is_singular.exit.i.for.inc14_crit_edge

list_is_singular.exit.i.for.inc14_crit_edge:      ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc14

if.then4.i:                                       ; preds = %list_is_singular.exit.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.list_del.exit.i_crit_edge

if.then4.i.list_del.exit.i_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then4.i.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @arch_remove_optimized_kprobe(ptr noundef %add.ptr.i) #16
  tail call void @arch_remove_kprobe(ptr noundef %add.ptr.i) #16
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  br label %for.inc14

for.inc14:                                        ; preds = %list_del.exit.i, %list_is_singular.exit.i.for.inc14_crit_edge, %if.else.i.for.inc14_crit_edge, %if.then.i, %for.body8.for.inc14_crit_edge
  %inc15 = add nuw nsw i32 %i.132, 1
  %exitcond33.not = icmp eq i32 %inc15, %num
  br i1 %exitcond33.not, label %for.inc14.cleanup_crit_edge, label %for.inc14.for.body8_crit_edge

for.inc14.for.body8_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body8

for.inc14.cleanup_crit_edge:                      ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc14.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_kprobe(ptr noundef %p) #0 align 64 {
entry:
  %p.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %p, ptr %p.addr, align 4
  call void @unregister_kprobes(ptr noundef nonnull %p.addr, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__unregister_kprobe_top(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__disable_kprobe(ptr noundef %p)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp = icmp eq ptr %call, %p
  br i1 %cmp, label %if.end.disarmed_crit_edge, label %if.end4

if.end.disarmed_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %disarmed

if.end4:                                          ; preds = %if.end
  %pre_handler.i = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i84 = icmp eq ptr %2, @aggr_pre_handler
  br i1 %cmp.i84, label %if.end4.if.end20_crit_edge, label %do.end, !prof !266

if.end4.if.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1777, i32 noundef 9, ptr noundef null) #16
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end4.if.end20_crit_edge
  %list = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %list
  br i1 %cmp.i.not.i, label %if.end20.if.else_crit_edge, label %list_is_singular.exit

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

list_is_singular.exit:                            ; preds = %if.end20
  %prev.i = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %cmp.i85.not = icmp eq ptr %4, %6
  br i1 %cmp.i85.not, label %land.lhs.true, label %list_is_singular.exit.if.else_crit_edge

list_is_singular.exit.if.else_crit_edge:          ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

land.lhs.true:                                    ; preds = %list_is_singular.exit
  %7 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i.i = icmp eq ptr %8, @aggr_pre_handler
  %flags.i7.i = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 10
  %9 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i7.i, align 4
  %and.i8.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i9.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  br i1 %tobool.i9.not.i, label %if.then.i.if.else_crit_edge, label %if.then.i.disarmed_crit_edge

if.then.i.disarmed_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %disarmed

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true
  br i1 %tobool.i9.not.i, label %if.end.i.if.else_crit_edge, label %kprobe_disarmed.exit

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

kprobe_disarmed.exit:                             ; preds = %if.end.i
  %list.i = getelementptr inbounds %struct.optimized_kprobe, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list.i, align 4
  %cmp.i10.i = icmp eq ptr %12, %list.i
  br i1 %cmp.i10.i, label %kprobe_disarmed.exit.disarmed_crit_edge, label %kprobe_disarmed.exit.if.else_crit_edge

kprobe_disarmed.exit.if.else_crit_edge:           ; preds = %kprobe_disarmed.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

kprobe_disarmed.exit.disarmed_crit_edge:          ; preds = %kprobe_disarmed.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %disarmed

if.else:                                          ; preds = %kprobe_disarmed.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.then.i.if.else_crit_edge, %list_is_singular.exit.if.else_crit_edge, %if.end20.if.else_crit_edge
  %post_handler = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 7
  %13 = ptrtoint ptr %post_handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %post_handler, align 4
  %tobool31.not = icmp eq ptr %14, null
  br i1 %tobool31.not, label %if.else.noclean_crit_edge, label %land.lhs.true32

if.else.noclean_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %noclean

land.lhs.true32:                                  ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %land.lhs.true32.noclean_crit_edge

land.lhs.true32.noclean_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #18
  br label %noclean

for.cond.preheader:                               ; preds = %land.lhs.true32
  %17 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn93 = load ptr, ptr %list, align 4
  %cmp39.not94 = icmp eq ptr %.pn93, %list
  br i1 %cmp39.not94, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn95 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn93, %for.cond.preheader.for.body_crit_edge ]
  %list_p.0 = getelementptr i8, ptr %.pn95, i32 -8
  %cmp42.not = icmp eq ptr %list_p.0, %p
  br i1 %cmp42.not, label %for.body.for.inc_crit_edge, label %land.lhs.true43

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true43:                                  ; preds = %for.body
  %post_handler44 = getelementptr i8, ptr %.pn95, i32 28
  %18 = ptrtoint ptr %post_handler44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %post_handler44, align 4
  %tobool45.not = icmp eq ptr %19, null
  br i1 %tobool45.not, label %land.lhs.true43.for.inc_crit_edge, label %land.lhs.true43.noclean_crit_edge

land.lhs.true43.noclean_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  br label %noclean

land.lhs.true43.for.inc_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true43.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn95, align 4
  %cmp39.not = icmp eq ptr %.pn, %list
  br i1 %cmp39.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %post_handler53 = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %post_handler53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %post_handler53, align 4
  br label %noclean

noclean:                                          ; preds = %for.end, %land.lhs.true43.noclean_crit_edge, %land.lhs.true32.noclean_crit_edge, %if.else.noclean_crit_edge
  %list55 = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list55) #16
  br i1 %call.i.i, label %if.end.i.i, label %noclean.list_del_rcu.exit_crit_edge

noclean.list_del_rcu.exit_crit_edge:              ; preds = %noclean
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %noclean
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %list55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list55, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %noclean.list_del_rcu.exit_crit_edge
  %prev.i87 = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i87, align 4
  %flags.i88 = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 10
  %29 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i88, align 4
  %and.i89 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.i90.not = icmp eq i32 %and.i89, 0
  br i1 %tobool.i90.not, label %land.lhs.true57, label %list_del_rcu.exit.cleanup_crit_edge

list_del_rcu.exit.cleanup_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true57:                                  ; preds = %list_del_rcu.exit
  %.b83 = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b83, label %land.lhs.true57.cleanup_crit_edge, label %if.then59

land.lhs.true57.cleanup_crit_edge:                ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @optimize_kprobe(ptr noundef %call)
  br label %cleanup

disarmed:                                         ; preds = %kprobe_disarmed.exit.disarmed_crit_edge, %if.then.i.disarmed_crit_edge, %if.end.disarmed_crit_edge
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %call, i32 0, i32 1
  %33 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pprev2.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %32, ptr %34, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %disarmed.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

disarmed.hlist_del_rcu.exit_crit_edge:            ; preds = %disarmed
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %disarmed
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %disarmed.hlist_del_rcu.exit_crit_edge
  %37 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_del_rcu.exit, %if.then59, %land.lhs.true57.cleanup_crit_edge, %list_del_rcu.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %hlist_del_rcu.exit ], [ 0, %list_del_rcu.exit.cleanup_crit_edge ], [ 0, %land.lhs.true57.cleanup_crit_edge ], [ 0, %if.then59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @kprobe_exceptions_notify(ptr noundef %self, i32 noundef %val, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @__kretprobe_find_ret_addr(ptr nocapture noundef readonly %tsk, ptr nocapture noundef %cur) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not = icmp eq ptr %1, null
  %kretprobe_instances = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 218
  %node.0.in = select i1 %tobool.not, ptr %kretprobe_instances, ptr %1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %node.1.in = phi ptr [ %node.0.in, %entry ], [ %node.1, %while.body.while.cond_crit_edge ]
  %2 = ptrtoint ptr %node.1.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.1 = load ptr, ptr %node.1.in, align 4
  %tobool1.not = icmp eq ptr %node.1, null
  br i1 %tobool1.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %ret_addr = getelementptr i8, ptr %node.1, i32 8
  %3 = ptrtoint ptr %ret_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ret_addr, align 4
  %cmp.not = icmp eq ptr %4, @__kretprobe_trampoline
  br i1 %cmp.not, label %while.body.while.cond_crit_edge, label %if.then2

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.then2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %ret_addr.le = getelementptr i8, ptr %node.1, i32 8
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node.1, ptr %cur, align 4
  %6 = ptrtoint ptr %ret_addr.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ret_addr.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then2 ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kretprobe_find_ret_addr(ptr nocapture noundef readonly %tsk, ptr noundef readnone %fp, ptr noundef %cur) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cur, null
  br i1 %tobool.not, label %land.rhs, label %do.body40.preheader

do.body40.preheader:                              ; preds = %entry
  %kretprobe_instances.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 218
  br label %do.body40

land.rhs:                                         ; preds = %entry
  %.b54 = load i1, ptr @kretprobe_find_ret_addr.__already_done, align 1
  br i1 %.b54, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !266

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @kretprobe_find_ret_addr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1932, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

do.body40:                                        ; preds = %if.end43.do.body40_crit_edge, %do.body40.preheader
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %node.0.in.i = select i1 %tobool.not.i, ptr %kretprobe_instances.i, ptr %1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %do.body40
  %node.1.in.i = phi ptr [ %node.0.in.i, %do.body40 ], [ %node.1.i, %while.body.i.while.cond.i_crit_edge ]
  %2 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.1.i = load ptr, ptr %node.1.in.i, align 4
  %tobool1.not.i = icmp eq ptr %node.1.i, null
  br i1 %tobool1.not.i, label %while.cond.i.do.end47_crit_edge, label %while.body.i

while.cond.i.do.end47_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

while.body.i:                                     ; preds = %while.cond.i
  %ret_addr.i = getelementptr i8, ptr %node.1.i, i32 8
  %3 = ptrtoint ptr %ret_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ret_addr.i, align 4
  %cmp.not.i = icmp eq ptr %4, @__kretprobe_trampoline
  br i1 %cmp.not.i, label %while.body.i.while.cond.i_crit_edge, label %__kretprobe_find_ret_addr.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

__kretprobe_find_ret_addr.exit:                   ; preds = %while.body.i
  %ret_addr.i.le = getelementptr i8, ptr %node.1.i, i32 8
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node.1.i, ptr %cur, align 4
  %6 = ptrtoint ptr %ret_addr.i.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ret_addr.i.le, align 4
  %tobool41.not = icmp eq ptr %7, null
  br i1 %tobool41.not, label %__kretprobe_find_ret_addr.exit.do.end47_crit_edge, label %if.end43

__kretprobe_find_ret_addr.exit.do.end47_crit_edge: ; preds = %__kretprobe_find_ret_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

if.end43:                                         ; preds = %__kretprobe_find_ret_addr.exit
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur, align 4
  %fp46 = getelementptr i8, ptr %9, i32 12
  %10 = ptrtoint ptr %fp46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fp46, align 4
  %cmp.not = icmp eq ptr %11, %fp
  br i1 %cmp.not, label %if.end43.do.end47_crit_edge, label %if.end43.do.body40_crit_edge

if.end43.do.body40_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body40

if.end43.do.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

do.end47:                                         ; preds = %if.end43.do.end47_crit_edge, %__kretprobe_find_ret_addr.exit.do.end47_crit_edge, %while.cond.i.do.end47_crit_edge
  %retval.0.i58 = phi ptr [ null, %while.cond.i.do.end47_crit_edge ], [ %7, %if.end43.do.end47_crit_edge ], [ null, %__kretprobe_find_ret_addr.exit.do.end47_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i58 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end47 ], [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_kretprobe_fixup_return(ptr noundef %regs, ptr noundef %correct_ret_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kretprobe_trampoline_handler(ptr noundef %regs, ptr noundef readnone %frame_pointer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %kretprobe_instances.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 218
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %node.1.in.i = phi ptr [ %kretprobe_instances.i, %entry ], [ %node.1.i, %while.body.i.while.cond.i_crit_edge ]
  %4 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.1.i = load ptr, ptr %node.1.in.i, align 4
  %tobool1.not.i = icmp eq ptr %node.1.i, null
  br i1 %tobool1.not.i, label %while.cond.i.do.end_crit_edge, label %while.body.i

while.cond.i.do.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

while.body.i:                                     ; preds = %while.cond.i
  %ret_addr.i = getelementptr i8, ptr %node.1.i, i32 8
  %5 = ptrtoint ptr %ret_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ret_addr.i, align 4
  %cmp.not.i = icmp eq ptr %6, @__kretprobe_trampoline
  br i1 %cmp.not.i, label %while.body.i.while.cond.i_crit_edge, label %__kretprobe_find_ret_addr.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

__kretprobe_find_ret_addr.exit:                   ; preds = %while.body.i
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %__kretprobe_find_ret_addr.exit.do.end_crit_edge, label %if.end

__kretprobe_find_ret_addr.exit.do.end_crit_edge:  ; preds = %__kretprobe_find_ret_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %__kretprobe_find_ret_addr.exit.do.end_crit_edge, %while.cond.i.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #21
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/kprobes.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1967, 0\0A.popsection", ""() #16, !srcloc !279
  unreachable

if.end:                                           ; preds = %__kretprobe_find_ret_addr.exit
  %7 = ptrtoint ptr %6 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %kretprobe_instances = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 218
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end105.while.cond_crit_edge, %if.end
  %first.0.in = phi ptr [ %kretprobe_instances, %if.end ], [ %first.0, %if.end105.while.cond_crit_edge ]
  %11 = ptrtoint ptr %first.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %first.0 = load ptr, ptr %first.0.in, align 4
  %tobool15.not = icmp eq ptr %first.0, null
  br i1 %tobool15.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %first.0, i32 -8
  %fp = getelementptr i8, ptr %first.0, i32 12
  %12 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fp, align 4
  %cmp.not = icmp eq ptr %13, %frame_pointer
  br i1 %cmp.not, label %if.end60.critedge, label %land.rhs

land.rhs:                                         ; preds = %while.body
  %.b148 = load i1, ptr @__kretprobe_trampoline_handler.__already_done, align 1
  br i1 %.b148, label %land.rhs.while.end_crit_edge, label %if.then24, !prof !266

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__kretprobe_trampoline_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1982, i32 noundef 9, ptr noundef null) #16
  br label %while.end

if.end60.critedge:                                ; preds = %while.body
  %call.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end60.critedge.get_kretprobe.exit_crit_edge

if.end60.critedge.get_kretprobe.exit_crit_edge:   ; preds = %if.end60.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit

land.lhs.true.i:                                  ; preds = %if.end60.critedge
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.get_kretprobe.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.get_kretprobe.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b7.i = load i1, ptr @get_kretprobe.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.get_kretprobe.exit_crit_edge, label %if.then.i

land.lhs.true3.i.get_kretprobe.exit_crit_edge:    ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kretprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 230, ptr noundef nonnull @.str.21) #16
  br label %get_kretprobe.exit

get_kretprobe.exit:                               ; preds = %if.then.i, %land.lhs.true3.i.get_kretprobe.exit_crit_edge, %land.lhs.true.i.get_kretprobe.exit_crit_edge, %if.end60.critedge.get_kretprobe.exit_crit_edge
  %rph.i = getelementptr i8, ptr %first.0, i32 4
  %14 = ptrtoint ptr %rph.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rph.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %15, align 4
  %tobool62.not = icmp eq ptr %17, null
  br i1 %tobool62.not, label %get_kretprobe.exit.if.end105_crit_edge, label %land.lhs.true

get_kretprobe.exit.if.end105_crit_edge:           ; preds = %get_kretprobe.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

land.lhs.true:                                    ; preds = %get_kretprobe.exit
  %handler = getelementptr inbounds %struct.kretprobe, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler, align 4
  %tobool63.not = icmp eq ptr %19, null
  br i1 %tobool63.not, label %land.lhs.true.if.end105_crit_edge, label %if.then64

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.then64:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %20 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i151 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i151, align 4
  %add.i = add i32 %25, ptrtoint (ptr @current_kprobe to i32)
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %add = add i32 %32, ptrtoint (ptr @current_kprobe to i32)
  %33 = inttoptr i32 %add to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %17, ptr %33, align 4
  %ret_addr = getelementptr i8, ptr %first.0, i32 8
  %35 = ptrtoint ptr %ret_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %6, ptr %ret_addr, align 4
  %36 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handler, align 4
  %call83 = tail call i32 %37(ptr noundef %add.ptr, ptr noundef %regs) #16
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx99 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx99, align 4
  %add100 = add i32 %41, ptrtoint (ptr @current_kprobe to i32)
  %42 = inttoptr i32 %add100 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %28, ptr %42, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then64, %land.lhs.true.if.end105_crit_edge, %get_kretprobe.exit.if.end105_crit_edge
  %cmp106 = icmp eq ptr %first.0, %node.1.i
  br i1 %cmp106, label %if.end105.while.end_crit_edge, label %if.end105.while.cond_crit_edge

if.end105.while.cond_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

if.end105.while.end_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end105.while.end_crit_edge, %if.then24, %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @arch_kretprobe_fixup_return(ptr noundef %regs, ptr noundef nonnull %6)
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %kretprobe_instances111 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 218
  %46 = ptrtoint ptr %kretprobe_instances111 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %kretprobe_instances111, align 4
  %48 = ptrtoint ptr %node.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %node.1.i, align 4
  store ptr %49, ptr %kretprobe_instances111, align 4
  store ptr null, ptr %node.1.i, align 4
  %tobool120.not161 = icmp eq ptr %47, null
  br i1 %tobool120.not161, label %while.end.while.end126_crit_edge, label %while.end.while.body121_crit_edge

while.end.while.body121_crit_edge:                ; preds = %while.end
  br label %while.body121

while.end.while.end126_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end126

while.body121:                                    ; preds = %recycle_rp_inst.exit.while.body121_crit_edge, %while.end.while.body121_crit_edge
  %first.1162 = phi ptr [ %51, %recycle_rp_inst.exit.while.body121_crit_edge ], [ %47, %while.end.while.body121_crit_edge ]
  %add.ptr124 = getelementptr i8, ptr %first.1162, i32 -8
  %50 = ptrtoint ptr %first.1162 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %first.1162, align 4
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %while.body121.get_kretprobe.exit.i_crit_edge

while.body121.get_kretprobe.exit.i_crit_edge:     ; preds = %while.body121
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit.i

land.lhs.true.i.i:                                ; preds = %while.body121
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.get_kretprobe.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.get_kretprobe.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b7.i.i = load i1, ptr @get_kretprobe.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.get_kretprobe.exit.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.get_kretprobe.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_kretprobe.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kretprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 230, ptr noundef nonnull @.str.21) #16
  br label %get_kretprobe.exit.i

get_kretprobe.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true3.i.i.get_kretprobe.exit.i_crit_edge, %land.lhs.true.i.i.get_kretprobe.exit.i_crit_edge, %while.body121.get_kretprobe.exit.i_crit_edge
  %rph.i.i = getelementptr i8, ptr %first.1162, i32 4
  %52 = ptrtoint ptr %rph.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rph.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile ptr, ptr %53, align 4
  %tobool.not.i152 = icmp eq ptr %55, null
  br i1 %tobool.not.i152, label %if.else.i, label %if.then.i153, !prof !272

if.then.i153:                                     ; preds = %get_kretprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %freelist.i = getelementptr inbounds %struct.kretprobe, ptr %55, i32 0, i32 6
  tail call fastcc void @freelist_add(ptr noundef %add.ptr124, ptr noundef %freelist.i) #16
  br label %recycle_rp_inst.exit

if.else.i:                                        ; preds = %get_kretprobe.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @call_rcu(ptr noundef %add.ptr124, ptr noundef nonnull @free_rp_inst_rcu) #16
  br label %recycle_rp_inst.exit

recycle_rp_inst.exit:                             ; preds = %if.else.i, %if.then.i153
  %tobool120.not = icmp eq ptr %51, null
  br i1 %tobool120.not, label %recycle_rp_inst.exit.while.end126_crit_edge, label %recycle_rp_inst.exit.while.body121_crit_edge

recycle_rp_inst.exit.while.body121_crit_edge:     ; preds = %recycle_rp_inst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body121

recycle_rp_inst.exit.while.end126_crit_edge:      ; preds = %recycle_rp_inst.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end126

while.end126:                                     ; preds = %recycle_rp_inst.exit.while.end126_crit_edge, %while.end.while.end126_crit_edge
  ret i32 %7
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pre_handler_kretprobe(ptr noundef %p, ptr noundef %regs) #0 align 64 {
entry:
  %head.i.i = alloca ptr, align 4
  %head.i = alloca ptr, align 4
  %refs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %freelist = getelementptr inbounds %struct.kretprobe, ptr %p, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head.i) #16
  %0 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %freelist, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !280
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %head.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refs.i) #16
  %3 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %refs.i, align 4, !annotation !281
  %tobool.not137.i = icmp eq ptr %1, null
  br i1 %tobool.not137.i, label %entry.freelist_try_get.exit.thread_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.freelist_try_get.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %freelist_try_get.exit.thread

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %4 = phi ptr [ %.be.i, %while.cond.backedge.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %4, i32 noundef 4) #16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %7 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %refs.i, align 4
  %and.i = and i32 %6, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %while.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

while.body.i.if.then.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 4
  %add.i = add i32 %6, 1
  %call.i.i127.i = call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #16
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %refs.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %refs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refs.i, align 4
  call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %lor.lhs.false.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %11, i32 %add.i, ptr elementtype(i32) %9) #16, !srcloc !282
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg_acquire.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_acquire.exit.i.i.i:           ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !283
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %11)
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i, label %do.end21.i, label %atomic_try_cmpxchg_acquire.exit.i, !prof !266

atomic_try_cmpxchg_acquire.exit.i:                ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %asmresult3.i.i.i.i.i, ptr %refs.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %atomic_try_cmpxchg_acquire.exit.i, %while.body.i.if.then.i_crit_edge
  %14 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %freelist, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !284
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %head.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end108.i, %if.then.i
  %.be.i = phi ptr [ %.pr.i, %if.end108.i ], [ %15, %if.then.i ]
  %tobool.not.i = icmp eq ptr %.be.i, null
  br i1 %tobool.not.i, label %while.cond.backedge.i.freelist_try_get.exit.thread_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.cond.backedge.i.freelist_try_get.exit.thread_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %freelist_try_get.exit.thread

do.end21.i:                                       ; preds = %arch_atomic_cmpxchg_acquire.exit.i.i.i
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 4
  %next23.i = getelementptr inbounds %struct.freelist_node, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %next23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %next23.i, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %freelist, i32 noundef 4) #16
  %call.i128.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head.i, i32 noundef 4) #16
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = ptrtoint ptr %20 to i32
  call void @llvm.prefetch.p0(ptr %freelist, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.end21.i
  %25 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %freelist, i32 %23, i32 %24) #16, !srcloc !285
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %25, 1
  %26 = inttoptr i32 %asmresult1.i.i to ptr
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !286
  %cmp35.not.i = icmp eq ptr %22, %26
  br i1 %cmp35.not.i, label %if.then48.i, label %if.end103.i, !prof !266

if.then48.i:                                      ; preds = %__cmpxchg.exit.i
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 4
  %call.i.i129.i = call zeroext i1 @__kasan_check_read(ptr noundef %28, i32 noundef 4) #16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %tobool52.not.i = icmp sgt i32 %30, -1
  br i1 %tobool52.not.i, label %if.then48.i.freelist_try_get.exit_crit_edge, label %land.rhs.i

if.then48.i.freelist_try_get.exit_crit_edge:      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %freelist_try_get.exit

land.rhs.i:                                       ; preds = %if.then48.i
  %.b126.i = load i1, ptr @freelist_try_get.__already_done, align 1
  br i1 %.b126.i, label %land.rhs.i.freelist_try_get.exit_crit_edge, label %if.then67.i, !prof !266

land.rhs.i.freelist_try_get.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %freelist_try_get.exit

if.then67.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @freelist_try_get.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 106, i32 noundef 9, ptr noundef null) #16
  br label %freelist_try_get.exit

if.end103.i:                                      ; preds = %__cmpxchg.exit.i
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %26, ptr %head.i, align 4
  %call.i.i131.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !287
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #16
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 -1, ptr nonnull elementtype(i32) %4) #16, !srcloc !288
  %asmresult.i.i.i132.i = extractvalue { i32, i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !289
  %33 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %asmresult.i.i.i132.i, ptr %refs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %asmresult.i.i.i132.i)
  %cmp106.i = icmp eq i32 %asmresult.i.i.i132.i, -2147483647
  br i1 %cmp106.i, label %if.then107.i, label %if.end103.i.if.end108.i_crit_edge

if.end103.i.if.end108.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end108.i

if.then107.i:                                     ; preds = %if.end103.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head.i.i) #16
  %34 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %freelist, align 4
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %head.i.i, align 4
  %next.i.i = getelementptr inbounds %struct.freelist_node, ptr %4, i32 0, i32 1
  %37 = ptrtoint ptr %4 to i32
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.then33.i.i.for.cond.i.i_crit_edge, %if.then107.i
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 4
  %40 = ptrtoint ptr %next.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %next.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !290
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 1, ptr %4, align 4
  %call.i.i133.i = call zeroext i1 @__kasan_check_write(ptr noundef %freelist, i32 noundef 4) #16
  %call.i51.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head.i.i, i32 noundef 4) #16
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !291
  %44 = ptrtoint ptr %43 to i32
  call void @llvm.prefetch.p0(ptr %freelist, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %for.cond.i.i
  %45 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %freelist, i32 %44, i32 %37) #16, !srcloc !285
  %asmresult.i.i.i = extractvalue { i32, i32 } %45, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %45, 1
  %46 = inttoptr i32 %asmresult1.i.i.i to ptr
  %cmp.not.i.i = icmp eq ptr %43, %46
  br i1 %cmp.not.i.i, label %__cmpxchg.exit.i.i.__freelist_add.exit.i_crit_edge, label %if.then33.i.i, !prof !266

__cmpxchg.exit.i.i.__freelist_add.exit.i_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__freelist_add.exit.i

if.then33.i.i:                                    ; preds = %__cmpxchg.exit.i.i
  %47 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %head.i.i, align 4
  %call.i.i52.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !292
  call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #16
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 2147483647, ptr nonnull elementtype(i32) %4) #16, !srcloc !288
  %asmresult.i.i.i.i134.i = extractvalue { i32, i32, i32 } %48, 0
  %cmp36.i.i = icmp eq i32 %asmresult.i.i.i.i134.i, 1
  br i1 %cmp36.i.i, label %if.then33.i.i.for.cond.i.i_crit_edge, label %if.then33.i.i.__freelist_add.exit.i_crit_edge

if.then33.i.i.__freelist_add.exit.i_crit_edge:    ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__freelist_add.exit.i

if.then33.i.i.for.cond.i.i_crit_edge:             ; preds = %if.then33.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

__freelist_add.exit.i:                            ; preds = %if.then33.i.i.__freelist_add.exit.i_crit_edge, %__cmpxchg.exit.i.i.__freelist_add.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i.i) #16
  br label %if.end108.i

if.end108.i:                                      ; preds = %__freelist_add.exit.i, %if.end103.i.if.end108.i_crit_edge
  %49 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr.i = load ptr, ptr %head.i, align 4
  br label %while.cond.backedge.i

freelist_try_get.exit.thread:                     ; preds = %while.cond.backedge.i.freelist_try_get.exit.thread_crit_edge, %entry.freelist_try_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refs.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i) #16
  br label %if.then

freelist_try_get.exit:                            ; preds = %if.then67.i, %land.rhs.i.freelist_try_get.exit_crit_edge, %if.then48.i.freelist_try_get.exit_crit_edge
  %50 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i, align 4
  %call.i.i130.i = call zeroext i1 @__kasan_check_write(ptr noundef %51, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !287
  call void @llvm.prefetch.p0(ptr %51, i32 1, i32 3, i32 1) #16
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 -2, ptr elementtype(i32) %51) #16, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !289
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refs.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i) #16
  %tobool.not = icmp eq ptr %54, null
  br i1 %tobool.not, label %freelist_try_get.exit.if.then_crit_edge, label %if.end

freelist_try_get.exit.if.then_crit_edge:          ; preds = %freelist_try_get.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %freelist_try_get.exit.if.then_crit_edge, %freelist_try_get.exit.thread
  %nmissed = getelementptr inbounds %struct.kretprobe, ptr %p, i32 0, i32 4
  %55 = ptrtoint ptr %nmissed to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nmissed, align 4
  %inc = add i32 %56, 1
  store i32 %inc, ptr %nmissed, align 4
  br label %cleanup

if.end:                                           ; preds = %freelist_try_get.exit
  %entry_handler = getelementptr inbounds %struct.kretprobe, ptr %p, i32 0, i32 2
  %57 = ptrtoint ptr %entry_handler to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %entry_handler, align 4
  %tobool4.not = icmp eq ptr %58, null
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %call6 = call i32 %58(ptr noundef nonnull %54, ptr noundef %regs) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @freelist_add(ptr noundef nonnull %54, ptr noundef %freelist)
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @arch_prepare_kretprobe(ptr noundef nonnull %54, ptr noundef %regs) #16
  %llist = getelementptr inbounds %struct.kretprobe_instance, ptr %54, i32 0, i32 1
  %59 = call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i24 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i24 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task, align 8
  %kretprobe_instances = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 218
  %63 = ptrtoint ptr %kretprobe_instances to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %kretprobe_instances, align 4
  %65 = ptrtoint ptr %llist to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %llist, align 4
  store ptr %llist, ptr %kretprobe_instances, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_kprobe_on_func_entry(i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp eq i32 %offset, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kprobe_on_func_entry(ptr noundef %addr, ptr noundef %sym, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %offset, ptr %offset.addr, align 4
  %tobool.not.i = icmp eq ptr %sym, null
  %tobool1.not.i = icmp ne ptr %addr, null
  %or.cond26.i = xor i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond26.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @kprobe_lookup_name(ptr noundef nonnull %sym, i32 noundef %offset) #16
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.then6.i.if.then_crit_edge, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then6.i.if.then_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %addr.addr.0.i = phi ptr [ %call.i, %if.then6.i.if.end11.i_crit_edge ], [ %addr, %if.end.i.if.end11.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %addr.addr.0.i, i32 %offset
  %tobool12.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool12.not.i, label %if.end11.i.if.then_crit_edge, label %_kprobe_addr.exit

if.end11.i.if.then_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

_kprobe_addr.exit:                                ; preds = %if.end11.i
  %cmp.i = icmp ugt ptr %add.ptr.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %_kprobe_addr.exit.if.then_crit_edge, label %if.end

_kprobe_addr.exit.if.then_crit_edge:              ; preds = %_kprobe_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %_kprobe_addr.exit.if.then_crit_edge, %if.end11.i.if.then_crit_edge, %if.then6.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i13 = phi ptr [ %add.ptr.i, %_kprobe_addr.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then6.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end11.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.if.then_crit_edge ]
  %1 = ptrtoint ptr %retval.0.i13 to i32
  br label %cleanup

if.end:                                           ; preds = %_kprobe_addr.exit
  %2 = ptrtoint ptr %add.ptr.i to i32
  %call3 = call i32 @kallsyms_lookup_size_offset(i32 noundef %2, ptr noundef null, ptr noundef nonnull %offset.addr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.addr, align 4
  %call6 = call zeroext i1 @arch_kprobe_on_func_entry(i32 noundef %4)
  %. = select i1 %call6, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ -2, %if.end.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_size_offset(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_kretprobe(ptr noundef %rp) #0 align 64 {
entry:
  %offset.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %rp, i32 0, i32 3
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr1, align 4
  %symbol_name = getelementptr inbounds %struct.kprobe, ptr %rp, i32 0, i32 4
  %2 = ptrtoint ptr %symbol_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %symbol_name, align 4
  %offset = getelementptr inbounds %struct.kprobe, ptr %rp, i32 0, i32 5
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.addr.i)
  %6 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %offset.addr.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %tobool1.not.i.i = icmp ne ptr %1, null
  %or.cond26.i.i = xor i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond26.i.i, label %entry.kprobe_on_func_entry.exit_crit_edge, label %if.end.i.i

entry.kprobe_on_func_entry.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_on_func_entry.exit

if.end.i.i:                                       ; preds = %entry
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call ptr @kprobe_lookup_name(ptr noundef nonnull %3, i32 noundef %5) #16
  %tobool7.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i.i, label %if.then6.i.i.kprobe_on_func_entry.exit_crit_edge, label %if.then6.i.i.if.end11.i.i_crit_edge

if.then6.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i.i

if.then6.i.i.kprobe_on_func_entry.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_on_func_entry.exit

if.end11.i.i:                                     ; preds = %if.then6.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %addr.addr.0.i.i = phi ptr [ %call.i.i, %if.then6.i.i.if.end11.i.i_crit_edge ], [ %1, %if.end.i.i.if.end11.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %addr.addr.0.i.i, i32 %5
  %tobool12.not.i.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool12.not.i.i, label %if.end11.i.i.kprobe_on_func_entry.exit_crit_edge, label %_kprobe_addr.exit.i

if.end11.i.i.kprobe_on_func_entry.exit_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_on_func_entry.exit

_kprobe_addr.exit.i:                              ; preds = %if.end11.i.i
  %cmp.i.i = icmp ugt ptr %add.ptr.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %_kprobe_addr.exit.i.kprobe_on_func_entry.exit_crit_edge, label %if.end.i

_kprobe_addr.exit.i.kprobe_on_func_entry.exit_crit_edge: ; preds = %_kprobe_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_on_func_entry.exit

if.end.i:                                         ; preds = %_kprobe_addr.exit.i
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  %call3.i = call i32 @kallsyms_lookup_size_offset(i32 noundef %7, ptr noundef null, ptr noundef nonnull %offset.addr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i.kprobe_on_func_entry.exit.thread_crit_edge, label %if.end5.i

if.end.i.kprobe_on_func_entry.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_on_func_entry.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %offset.addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset.addr.i, align 4
  %call6.i = call zeroext i1 @arch_kprobe_on_func_entry(i32 noundef %9) #16
  br i1 %call6.i, label %kprobe_on_func_entry.exit.thread119, label %if.end5.i.kprobe_on_func_entry.exit.thread_crit_edge

if.end5.i.kprobe_on_func_entry.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_on_func_entry.exit.thread

kprobe_on_func_entry.exit.thread119:              ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  %10 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr1, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %kprobe_on_func_entry.exit.thread119.if.end11_crit_edge, label %land.lhs.true

kprobe_on_func_entry.exit.thread119.if.end11_crit_edge: ; preds = %kprobe_on_func_entry.exit.thread119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

kprobe_on_func_entry.exit.thread:                 ; preds = %if.end5.i.kprobe_on_func_entry.exit.thread_crit_edge, %if.end.i.kprobe_on_func_entry.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end5.i.kprobe_on_func_entry.exit.thread_crit_edge ], [ -2, %if.end.i.kprobe_on_func_entry.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  br label %cleanup

kprobe_on_func_entry.exit:                        ; preds = %_kprobe_addr.exit.i.kprobe_on_func_entry.exit_crit_edge, %if.end11.i.i.kprobe_on_func_entry.exit_crit_edge, %if.then6.i.i.kprobe_on_func_entry.exit_crit_edge, %entry.kprobe_on_func_entry.exit_crit_edge
  %retval.0.i13.i = phi ptr [ %add.ptr.i.i, %_kprobe_addr.exit.i.kprobe_on_func_entry.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then6.i.i.kprobe_on_func_entry.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end11.i.i.kprobe_on_func_entry.exit_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.kprobe_on_func_entry.exit_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i13.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.addr.i)
  br label %cleanup

land.lhs.true:                                    ; preds = %kprobe_on_func_entry.exit.thread119
  call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %call.i = call fastcc ptr @__get_valid_kprobe(ptr noundef %rp) #16
  %tobool.not.i81 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i81, label %warn_kprobe_rereg.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true
  %.b41.i = load i1, ptr @warn_kprobe_rereg.__already_done, align 1
  br i1 %.b41.i, label %land.rhs.i.warn_kprobe_rereg.exit.thread_crit_edge, label %if.then.i82, !prof !266

land.rhs.i.warn_kprobe_rereg.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %warn_kprobe_rereg.exit.thread

if.then.i82:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @warn_kprobe_rereg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1556, i32 noundef 9, ptr noundef null) #16
  br label %warn_kprobe_rereg.exit.thread

warn_kprobe_rereg.exit.thread:                    ; preds = %if.then.i82, %land.rhs.i.warn_kprobe_rereg.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %cleanup

warn_kprobe_rereg.exit:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %if.end11

if.end11:                                         ; preds = %warn_kprobe_rereg.exit, %kprobe_on_func_entry.exit.thread119.if.end11_crit_edge
  %data_size = getelementptr inbounds %struct.kretprobe, ptr %rp, i32 0, i32 5
  %13 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %14)
  %cmp = icmp ugt i32 %14, 4096
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %pre_handler = getelementptr inbounds %struct.kprobe, ptr %rp, i32 0, i32 6
  %15 = ptrtoint ptr %pre_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pre_handler_kretprobe, ptr %pre_handler, align 4
  %post_handler = getelementptr inbounds %struct.kprobe, ptr %rp, i32 0, i32 7
  %16 = ptrtoint ptr %post_handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %post_handler, align 4
  %maxactive = getelementptr inbounds %struct.kretprobe, ptr %rp, i32 0, i32 3
  %17 = ptrtoint ptr %maxactive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp16 = icmp slt i32 %18, 1
  br i1 %cmp16, label %if.end.i.i83, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.end.i.i83:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %19) #16
  %20 = ptrtoint ptr %maxactive to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call4.i.i, ptr %maxactive, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i83, %if.end13.if.end20_crit_edge
  %freelist = getelementptr inbounds %struct.kretprobe, ptr %rp, i32 0, i32 6
  %21 = ptrtoint ptr %freelist to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %freelist, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 8) #20
  %rph = getelementptr inbounds %struct.kretprobe, ptr %rp, i32 0, i32 7
  %23 = ptrtoint ptr %rph to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %rph, align 4
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rp, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %maxactive to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp29128 = icmp sgt i32 %26, 0
  br i1 %cmp29128, label %if.end25.if.end8.i.i_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end25.if.end8.i.i_crit_edge:                   ; preds = %if.end25
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end35.if.end8.i.i_crit_edge, %if.end25.if.end8.i.i_crit_edge
  %i.0129 = phi i32 [ %inc, %if.end35.if.end8.i.i_crit_edge ], [ 0, %if.end25.if.end8.i.i_crit_edge ]
  %27 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_size, align 4
  %add = add i32 %28, 24
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #19
  %cmp32 = icmp eq ptr %call9.i.i, null
  %29 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rph, align 4
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end8.i.i
  %ref = getelementptr inbounds %struct.kretprobe_holder, ptr %30, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #16
  %31 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %i.0129, ptr %ref, align 4
  %32 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %freelist, align 4
  %tobool.not9.i = icmp eq ptr %33, null
  br i1 %tobool.not9.i, label %if.then33.while.end.i_crit_edge, label %if.then33.while.body.i_crit_edge

if.then33.while.body.i_crit_edge:                 ; preds = %if.then33
  br label %while.body.i

if.then33.while.end.i_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then33.while.body.i_crit_edge
  %node.011.i = phi ptr [ %35, %while.body.i.while.body.i_crit_edge ], [ %33, %if.then33.while.body.i_crit_edge ]
  %count.010.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then33.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.freelist_node, ptr %node.011.i, i32 0, i32 1
  %34 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next.i, align 4
  call void @kfree(ptr noundef nonnull %node.011.i) #16
  %inc.i = add i32 %count.010.i, 1
  %tobool.not.i90 = icmp eq ptr %35, null
  br i1 %tobool.not.i90, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then33.while.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.then33.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %36 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rph, align 4
  %ref.i = getelementptr inbounds %struct.kretprobe_holder, ptr %37, i32 0, i32 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %38 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 %count.0.lcssa.i, ptr elementtype(i32) %ref.i) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i.i, i32 %count.0.lcssa.i)
  %cmp.i.i.i91 = icmp eq i32 %asmresult.i.i.i.i.i.i, %count.0.lcssa.i
  br i1 %cmp.i.i.i91, label %if.then.i92, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %while.end.i
  %sub.i.i.i = sub i32 %asmresult.i.i.i.i.i.i, %count.0.lcssa.i
  %39 = or i32 %sub.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !266

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %cleanup

if.then.i92:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  %40 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rph, align 4
  call void @kfree(ptr noundef %41) #16
  %42 = ptrtoint ptr %rph to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %rph, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end8.i.i
  %rph37 = getelementptr inbounds %struct.kretprobe_instance, ptr %call9.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %rph37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %30, ptr %rph37, align 4
  call fastcc void @freelist_add(ptr noundef nonnull %call9.i.i, ptr noundef %freelist)
  %inc = add nuw nsw i32 %i.0129, 1
  %44 = ptrtoint ptr %maxactive to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maxactive, align 4
  %cmp29 = icmp slt i32 %inc, %45
  br i1 %cmp29, label %if.end35.if.end8.i.i_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end35.if.end8.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %if.end25.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end25.for.end_crit_edge ], [ %inc, %if.end35.for.end_crit_edge ]
  %46 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rph, align 4
  %ref40 = getelementptr inbounds %struct.kretprobe_holder, ptr %47, i32 0, i32 1
  %call.i.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef %ref40, i32 noundef 4) #16
  %48 = ptrtoint ptr %ref40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %i.0.lcssa, ptr %ref40, align 4
  %nmissed = getelementptr inbounds %struct.kretprobe, ptr %rp, i32 0, i32 4
  %49 = ptrtoint ptr %nmissed to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %nmissed, align 4
  %call42 = call i32 @register_kprobe(ptr noundef %rp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %for.end.cleanup_crit_edge, label %if.then44

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then44:                                        ; preds = %for.end
  %50 = ptrtoint ptr %freelist to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %freelist, align 4
  %tobool.not9.i96 = icmp eq ptr %51, null
  br i1 %tobool.not9.i96, label %if.then44.while.end.i109_crit_edge, label %if.then44.while.body.i102_crit_edge

if.then44.while.body.i102_crit_edge:              ; preds = %if.then44
  br label %while.body.i102

if.then44.while.end.i109_crit_edge:               ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i109

while.body.i102:                                  ; preds = %while.body.i102.while.body.i102_crit_edge, %if.then44.while.body.i102_crit_edge
  %node.011.i97 = phi ptr [ %53, %while.body.i102.while.body.i102_crit_edge ], [ %51, %if.then44.while.body.i102_crit_edge ]
  %count.010.i98 = phi i32 [ %inc.i100, %while.body.i102.while.body.i102_crit_edge ], [ 0, %if.then44.while.body.i102_crit_edge ]
  %next.i99 = getelementptr inbounds %struct.freelist_node, ptr %node.011.i97, i32 0, i32 1
  %52 = ptrtoint ptr %next.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %next.i99, align 4
  call void @kfree(ptr noundef nonnull %node.011.i97) #16
  %inc.i100 = add i32 %count.010.i98, 1
  %tobool.not.i101 = icmp eq ptr %53, null
  br i1 %tobool.not.i101, label %while.body.i102.while.end.i109_crit_edge, label %while.body.i102.while.body.i102_crit_edge

while.body.i102.while.body.i102_crit_edge:        ; preds = %while.body.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i102

while.body.i102.while.end.i109_crit_edge:         ; preds = %while.body.i102
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i109

while.end.i109:                                   ; preds = %while.body.i102.while.end.i109_crit_edge, %if.then44.while.end.i109_crit_edge
  %count.0.lcssa.i103 = phi i32 [ 0, %if.then44.while.end.i109_crit_edge ], [ %inc.i100, %while.body.i102.while.end.i109_crit_edge ]
  %54 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rph, align 4
  %ref.i105 = getelementptr inbounds %struct.kretprobe_holder, ptr %55, i32 0, i32 1
  %call.i.i.i.i.i106 = call zeroext i1 @__kasan_check_write(ptr noundef %ref.i105, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  call void @llvm.prefetch.p0(ptr %ref.i105, i32 1, i32 3, i32 1) #16
  %56 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i105, ptr %ref.i105, i32 %count.0.lcssa.i103, ptr elementtype(i32) %ref.i105) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i107 = extractvalue { i32, i32, i32 } %56, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i.i107, i32 %count.0.lcssa.i103)
  %cmp.i.i.i108 = icmp eq i32 %asmresult.i.i.i.i.i.i107, %count.0.lcssa.i103
  br i1 %cmp.i.i.i108, label %if.then.i114, label %if.end5.i.i.i112

if.end5.i.i.i112:                                 ; preds = %while.end.i109
  %sub.i.i.i110 = sub i32 %asmresult.i.i.i.i.i.i107, %count.0.lcssa.i103
  %57 = or i32 %sub.i.i.i110, %asmresult.i.i.i.i.i.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %.not.i.i.i111 = icmp sgt i32 %57, -1
  br i1 %.not.i.i.i111, label %if.end5.i.i.i112.cleanup_crit_edge, label %if.then10.i.i.i113, !prof !266

if.end5.i.i.i112.cleanup_crit_edge:               ; preds = %if.end5.i.i.i112
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i113:                               ; preds = %if.end5.i.i.i112
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %ref.i105, i32 noundef 3) #16
  br label %cleanup

if.then.i114:                                     ; preds = %while.end.i109
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  %58 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rph, align 4
  call void @kfree(ptr noundef %59) #16
  %60 = ptrtoint ptr %rph to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %rph, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i114, %if.then10.i.i.i113, %if.end5.i.i.i112.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then.i92, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %warn_kprobe_rereg.exit.thread, %kprobe_on_func_entry.exit, %kprobe_on_func_entry.exit.thread
  %retval.0 = phi i32 [ %12, %kprobe_on_func_entry.exit ], [ -7, %if.end11.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.i.ph, %kprobe_on_func_entry.exit.thread ], [ -22, %warn_kprobe_rereg.exit.thread ], [ -12, %if.end5.i.i.i.cleanup_crit_edge ], [ -12, %if.then10.i.i.i ], [ -12, %if.then.i92 ], [ %call42, %if.end5.i.i.i112.cleanup_crit_edge ], [ %call42, %if.then10.i.i.i113 ], [ %call42, %if.then.i114 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @freelist_add(ptr noundef %node, ptr noundef %list) unnamed_addr #3 align 64 {
entry:
  %head.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %node, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !292
  tail call void @llvm.prefetch.p0(ptr %node, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %node, ptr %node, i32 -2147483648, ptr elementtype(i32) %node) #16, !srcloc !288
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head.i) #16
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list, align 4
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %head.i, align 4
  %next.i = getelementptr inbounds %struct.freelist_node, ptr %node, i32 0, i32 1
  %4 = ptrtoint ptr %node to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then33.i.for.cond.i_crit_edge, %if.then
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 4
  %7 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %next.i, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %node, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !290
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %node, align 4
  %call.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef %list, i32 noundef 4) #16
  %call.i51.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head.i, i32 noundef 4) #16
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !291
  %11 = ptrtoint ptr %10 to i32
  call void @llvm.prefetch.p0(ptr %list, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.cond.i
  %12 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %list, i32 %11, i32 %4) #16, !srcloc !285
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %12, 1
  %13 = inttoptr i32 %asmresult1.i.i to ptr
  %cmp.not.i = icmp eq ptr %10, %13
  br i1 %cmp.not.i, label %__cmpxchg.exit.i.__freelist_add.exit_crit_edge, label %if.then33.i, !prof !266

__cmpxchg.exit.i.__freelist_add.exit_crit_edge:   ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__freelist_add.exit

if.then33.i:                                      ; preds = %__cmpxchg.exit.i
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %head.i, align 4
  %call.i.i52.i = call zeroext i1 @__kasan_check_write(ptr noundef %node, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !292
  call void @llvm.prefetch.p0(ptr %node, i32 1, i32 3, i32 1) #16
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %node, ptr %node, i32 2147483647, ptr elementtype(i32) %node) #16, !srcloc !288
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  %cmp36.i = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp36.i, label %if.then33.i.for.cond.i_crit_edge, label %if.then33.i.__freelist_add.exit_crit_edge

if.then33.i.__freelist_add.exit_crit_edge:        ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__freelist_add.exit

if.then33.i.for.cond.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

__freelist_add.exit:                              ; preds = %if.then33.i.__freelist_add.exit_crit_edge, %__cmpxchg.exit.i.__freelist_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i) #16
  br label %if.end

if.end:                                           ; preds = %__freelist_add.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_kretprobes(ptr nocapture noundef readonly %rps, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %rps, i32 %i.019
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @register_kretprobe(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.019)
  %cmp4.not = icmp eq i32 %i.019, 0
  br i1 %cmp4.not, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @unregister_kretprobes(ptr noundef %rps, i32 noundef %i.019)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then5, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then5 ], [ %call, %if.then3.cleanup_crit_edge ], [ %call, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_kretprobes(ptr nocapture noundef readonly %rps, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp slt i32 %num, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  br label %for.body

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.body.preheader
  %i.040 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %rps, i32 %i.040
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @__unregister_kprobe_top(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then3, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %addr = getelementptr inbounds %struct.kprobe, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %for.body.if.end6_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %rph = getelementptr inbounds %struct.kretprobe, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %rph to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rph, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end6
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  tail call void @synchronize_rcu() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp941 = icmp sgt i32 %num, 0
  br i1 %cmp941, label %for.end.for.body10_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end.for.body10_crit_edge:                     ; preds = %for.end
  br label %for.body10

for.body10:                                       ; preds = %for.inc19.for.body10_crit_edge, %for.end.for.body10_crit_edge
  %i.142 = phi i32 [ %inc20, %for.inc19.for.body10_crit_edge ], [ 0, %for.end.for.body10_crit_edge ]
  %arrayidx11 = getelementptr ptr, ptr %rps, i32 %i.142
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %addr13 = getelementptr inbounds %struct.kprobe, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr13, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.body10.for.inc19_crit_edge, label %if.then14

for.body10.for.inc19_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

if.then14:                                        ; preds = %for.body10
  %list.i = getelementptr inbounds %struct.kprobe, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @arch_remove_kprobe(ptr noundef %11) #16
  br label %__unregister_kprobe_bottom.exit

if.else.i:                                        ; preds = %if.then14
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %17, %list.i
  br i1 %cmp.i.not.i.i, label %if.else.i.__unregister_kprobe_bottom.exit_crit_edge, label %list_is_singular.exit.i

if.else.i.__unregister_kprobe_bottom.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__unregister_kprobe_bottom.exit

list_is_singular.exit.i:                          ; preds = %if.else.i
  %prev.i.i = getelementptr inbounds %struct.kprobe, ptr %11, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %cmp.i12.not.i = icmp eq ptr %17, %19
  br i1 %cmp.i12.not.i, label %if.then4.i, label %list_is_singular.exit.i.__unregister_kprobe_bottom.exit_crit_edge

list_is_singular.exit.i.__unregister_kprobe_bottom.exit_crit_edge: ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__unregister_kprobe_bottom.exit

if.then4.i:                                       ; preds = %list_is_singular.exit.i
  %add.ptr.i = getelementptr i8, ptr %17, i32 -8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.list_del.exit.i_crit_edge

if.then4.i.list_del.exit.i_crit_edge:             ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then4.i.list_del.exit.i_crit_edge
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @arch_remove_optimized_kprobe(ptr noundef %add.ptr.i) #16
  tail call void @arch_remove_kprobe(ptr noundef %add.ptr.i) #16
  tail call void @kfree(ptr noundef %add.ptr.i) #16
  br label %__unregister_kprobe_bottom.exit

__unregister_kprobe_bottom.exit:                  ; preds = %list_del.exit.i, %list_is_singular.exit.i.__unregister_kprobe_bottom.exit_crit_edge, %if.else.i.__unregister_kprobe_bottom.exit_crit_edge, %if.then.i
  %28 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx11, align 4
  %freelist.i = getelementptr inbounds %struct.kretprobe, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %freelist.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %freelist.i, align 4
  %tobool.not9.i = icmp eq ptr %31, null
  br i1 %tobool.not9.i, label %__unregister_kprobe_bottom.exit.while.end.i_crit_edge, label %__unregister_kprobe_bottom.exit.while.body.i_crit_edge

__unregister_kprobe_bottom.exit.while.body.i_crit_edge: ; preds = %__unregister_kprobe_bottom.exit
  br label %while.body.i

__unregister_kprobe_bottom.exit.while.end.i_crit_edge: ; preds = %__unregister_kprobe_bottom.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %__unregister_kprobe_bottom.exit.while.body.i_crit_edge
  %node.011.i = phi ptr [ %33, %while.body.i.while.body.i_crit_edge ], [ %31, %__unregister_kprobe_bottom.exit.while.body.i_crit_edge ]
  %count.010.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %__unregister_kprobe_bottom.exit.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.freelist_node, ptr %node.011.i, i32 0, i32 1
  %32 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next.i, align 4
  tail call void @kfree(ptr noundef nonnull %node.011.i) #16
  %inc.i = add i32 %count.010.i, 1
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %__unregister_kprobe_bottom.exit.while.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %__unregister_kprobe_bottom.exit.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %rph.i = getelementptr inbounds %struct.kretprobe, ptr %29, i32 0, i32 7
  %34 = ptrtoint ptr %rph.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rph.i, align 4
  %ref.i = getelementptr inbounds %struct.kretprobe_holder, ptr %35, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #16
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 %count.0.lcssa.i, ptr elementtype(i32) %ref.i) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i.i, i32 %count.0.lcssa.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, %count.0.lcssa.i
  br i1 %cmp.i.i.i, label %if.then.i38, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %while.end.i
  %sub.i.i.i = sub i32 %asmresult.i.i.i.i.i.i, %count.0.lcssa.i
  %37 = or i32 %sub.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %.not.i.i.i = icmp sgt i32 %37, -1
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc19_crit_edge, label %if.then10.i.i.i, !prof !266

if.end5.i.i.i.for.inc19_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc19

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #16
  br label %for.inc19

if.then.i38:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  %38 = ptrtoint ptr %rph.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rph.i, align 4
  tail call void @kfree(ptr noundef %39) #16
  %40 = ptrtoint ptr %rph.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %rph.i, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %if.then.i38, %if.then10.i.i.i, %if.end5.i.i.i.for.inc19_crit_edge, %for.body10.for.inc19_crit_edge
  %inc20 = add nuw nsw i32 %i.142, 1
  %exitcond43.not = icmp eq i32 %inc20, %num
  br i1 %exitcond43.not, label %for.inc19.cleanup_crit_edge, label %for.inc19.for.body10_crit_edge

for.inc19.for.body10_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body10

for.inc19.cleanup_crit_edge:                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.inc19.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_kretprobe(ptr noundef %rp) #0 align 64 {
entry:
  %rp.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rp.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rp, ptr %rp.addr, align 4
  call void @unregister_kretprobes(ptr noundef nonnull %rp.addr, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @disable_kprobe(ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %call = tail call fastcc ptr @__disable_kprobe(ptr noundef %kp)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %0, i32 0
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__disable_kprobe(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !272

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1724, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call fastcc ptr @__get_valid_kprobe(ptr noundef %p)
  %cmp25 = icmp eq ptr %call24, null
  br i1 %cmp25, label %if.end.cleanup_crit_edge, label %if.end34, !prof !272

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then36, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then36:                                        ; preds = %if.end34
  %cmp37.not = icmp eq ptr %call24, %p
  br i1 %cmp37.not, label %if.then36.if.then42_crit_edge, label %lor.lhs.false

if.then36.if.then42_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.then36
  %or = or i32 %2, 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %flags.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end.i_crit_edge, label %land.rhs.i

lor.lhs.false.if.end.i_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %lor.lhs.false
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !272

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1706, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %lor.lhs.false.if.end.i_crit_edge
  %list.i = getelementptr inbounds %struct.kprobe, ptr %call24, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp27.not.i = icmp eq ptr %.pn.i, %list.i
  br i1 %cmp27.not.i, label %for.cond.i.if.then42_crit_edge, label %for.body.i

for.cond.i.if.then42_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then42

for.body.i:                                       ; preds = %for.cond.i
  %flags.i.i = getelementptr i8, ptr %.pn.i, i32 68
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 3
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then42:                                        ; preds = %for.cond.i.if.then42_crit_edge, %if.then36.if.then42_crit_edge
  %.b70 = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b70, label %if.then42.if.end51_crit_edge, label %if.then44

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then44:                                        ; preds = %if.then42
  %call45 = tail call fastcc i32 @disarm_kprobe(ptr noundef nonnull %call24, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.if.end51_crit_edge, label %if.then47

if.then44.if.end51_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end51

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and = and i32 %9, -3
  store i32 %and, ptr %flags.i, align 4
  %10 = inttoptr i32 %call45 to ptr
  br label %cleanup

if.end51:                                         ; preds = %if.then44.if.end51_crit_edge, %if.then42.if.end51_crit_edge
  %flags52 = getelementptr inbounds %struct.kprobe, ptr %call24, i32 0, i32 10
  %11 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags52, align 4
  %or53 = or i32 %12, 2
  store i32 %or53, ptr %flags52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then47, %for.body.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then47 ], [ %call24, %if.end51 ], [ %call24, %if.end34.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ %call24, %for.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enable_kprobe(ptr noundef %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %call = tail call fastcc ptr @__get_valid_kprobe(ptr noundef %kp)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end, !prof !272

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end4:                                          ; preds = %if.end
  %cmp5.not = icmp eq ptr %call, %kp
  br i1 %cmp5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %and = and i32 %1, -3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %flags.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %.b28 = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b28, label %if.end7.out_crit_edge, label %land.lhs.true

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true:                                    ; preds = %if.end7
  %flags.i29 = getelementptr inbounds %struct.kprobe, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i29, align 4
  %and.i30 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.i31.not = icmp eq i32 %and.i30, 0
  br i1 %tobool.i31.not, label %land.lhs.true.out_crit_edge, label %if.then10

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then10:                                        ; preds = %land.lhs.true
  %and12 = and i32 %4, -3
  %5 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and12, ptr %flags.i29, align 4
  %call13 = tail call fastcc i32 @arm_kprobe(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then10.out_crit_edge, label %if.then15

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i29, align 4
  %or = or i32 %7, 2
  store i32 %or, ptr %flags.i29, align 4
  br label %out

out:                                              ; preds = %if.then15, %if.then10.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end7.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end7.out_crit_edge ], [ %call13, %if.then15 ], [ 0, %if.then10.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__get_valid_kprobe(ptr noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !272

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1530, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %addr = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr, align 4
  %3 = ptrtoint ptr %2 to i32
  %mul.i.i.i.i = mul i32 %3, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 26
  %arrayidx.i = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %shr.i.i.i
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.for.cond.i.preheader_crit_edge

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b43.i = load i1, ptr @get_kprobe.__warned, align 1
  br i1 %.b43.i, label %land.lhs.true7.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true7.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_kprobe.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 383, ptr noundef nonnull @.str.4) #16
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true7.i.for.cond.i.preheader_crit_edge, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %p.0.in.i = phi ptr [ %p.0.i, %for.body.i.for.cond.i_crit_edge ], [ %arrayidx.i, %for.cond.i.preheader ]
  %4 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.0.i = load volatile ptr, ptr %p.0.in.i, align 4
  %tobool16.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool16.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %addr17.i = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %addr17.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr17.i, align 4
  %cmp.i = icmp eq ptr %6, %2
  br i1 %cmp.i, label %if.end35, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end35:                                         ; preds = %for.body.i
  %cmp36.not = icmp eq ptr %p.0.i, %p
  br i1 %cmp36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %list = getelementptr inbounds %struct.kprobe, ptr %p.0.i, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then37
  %.pn.in = phi ptr [ %list, %if.then37 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp41.not = icmp eq ptr %.pn, %list
  br i1 %cmp41.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %list_p.0 = getelementptr i8, ptr %.pn, i32 -8
  %cmp44 = icmp eq ptr %list_p.0, %p
  br i1 %cmp44, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %p, %if.end35.cleanup_crit_edge ], [ %p.0.i, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_kprobe(ptr nocapture noundef readonly %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %symbol_name = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 4
  %0 = ptrtoint ptr %symbol_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %symbol_name, align 4
  %offset = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 5
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %addr = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 3
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %1, i32 noundef %3, ptr noundef %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kprobe_add_ksym_blacklist(i32 noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #16
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %size, align 4
  %call = tail call i32 @kernel_text_address(i32 noundef %entry1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @kallsyms_lookup_size_offset(i32 noundef %entry1, ptr noundef nonnull %size, ptr noundef nonnull %offset) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 16) #20
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %start_addr = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %start_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %entry1, ptr %start_addr, align 8
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %add = add i32 %5, %entry1
  %end_addr = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %end_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %end_addr, align 4
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i, ptr %call7.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %prev.i, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kprobe_blacklist, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %9, ptr noundef nonnull @kprobe_blacklist) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %call7.i, ptr getelementptr inbounds (%struct.list_head, ptr @kprobe_blacklist, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kprobe_blacklist, ptr %call7.i, align 8
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %list_add_tail.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_text_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kprobe_add_area_blacklist(i32 noundef %start, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start, i32 %end)
  %cmp12 = icmp ult i32 %start, %end
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.013 = phi i32 [ %add, %if.end.for.body_crit_edge ], [ %start, %entry.for.body_crit_edge ]
  %call = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %entry1.013)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp eq i32 %call, 0
  %spec.store.select = select i1 %cmp3, i32 1, i32 %call
  %add = add i32 %spec.store.select, %entry1.013
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_kprobe_get_kallsym(ptr noundef %symnum, ptr noundef %value, ptr noundef %type, ptr noundef %sym) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kprobe_get_kallsym(i32 noundef %symnum, ptr noundef %value, ptr noundef %type, ptr noundef %sym) local_unnamed_addr #0 align 64 {
entry:
  %symnum.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %symnum.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %symnum, ptr %symnum.addr, align 4
  %call = call i32 @kprobe_cache_get_kallsym(ptr noundef nonnull @kprobe_insn_slots, ptr noundef nonnull %symnum.addr, ptr noundef %value, ptr noundef %type, ptr noundef %sym)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @kprobe_cache_get_kallsym(ptr noundef nonnull @kprobe_optinsn_slots, ptr noundef nonnull %symnum.addr, ptr noundef %value, ptr noundef %type, ptr noundef %sym)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call5 = call i32 @arch_kprobe_get_kallsym(ptr noundef nonnull %symnum.addr, ptr noundef %value, ptr noundef %type, ptr noundef %sym)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %. = select i1 %tobool6.not, i32 0, i32 -34
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_populate_kprobe_blacklist() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobe_free_init_mem() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc18.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.031 = load ptr, ptr %arrayidx, align 4
  %tobool3.not32 = icmp eq ptr %p.031, null
  br i1 %tobool3.not32, label %for.body.for.inc18_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %p.033 = phi ptr [ %p.0, %for.inc.for.body4_crit_edge ], [ %p.031, %for.body.for.body4_crit_edge ]
  %addr = getelementptr inbounds %struct.kprobe, ptr %p.033, i32 0, i32 3
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %addr, align 4
  %cmp5.not = icmp uge ptr %2, @__init_begin
  %cmp7 = icmp ult ptr %2, @__init_end
  %or.cond = and i1 %cmp5.not, %cmp7
  br i1 %or.cond, label %if.then, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @kill_kprobe(ptr noundef nonnull %p.033)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body4.for.inc_crit_edge
  %3 = ptrtoint ptr %p.033 to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0 = load ptr, ptr %p.033, align 4
  %tobool3.not = icmp eq ptr %p.0, null
  br i1 %tobool3.not, label %for.inc.for.inc18_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body4

for.inc.for.inc18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end19, label %for.inc18.for.body_crit_edge

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end19:                                        ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kill_kprobe(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @kprobe_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !272

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2236, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 1
  store i32 %or, ptr %flags, align 4
  %pre_handler.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 6
  %3 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i = icmp eq ptr %4, @aggr_pre_handler
  br i1 %cmp.i, label %if.then25, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then25:                                        ; preds = %if.end
  %list = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn65 = load ptr, ptr %list, align 4
  %cmp29.not66 = icmp eq ptr %.pn65, %list
  br i1 %cmp29.not66, label %if.then25.for.end_crit_edge, label %if.then25.for.body_crit_edge

if.then25.for.body_crit_edge:                     ; preds = %if.then25
  br label %for.body

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then25.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn65, %if.then25.for.body_crit_edge ]
  %flags32 = getelementptr i8, ptr %.pn67, i32 68
  %6 = ptrtoint ptr %flags32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags32, align 4
  %or33 = or i32 %7, 1
  store i32 %or33, ptr %flags32, align 4
  %8 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp29.not = icmp eq ptr %.pn, %list
  br i1 %cmp29.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then25.for.end_crit_edge
  %post_handler = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 7
  %9 = ptrtoint ptr %post_handler to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %post_handler, align 4
  %list.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %list.i
  br i1 %cmp.i.not.i, label %for.end.if.end.i_crit_edge, label %if.then.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %for.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list.i, ptr %prev.i3.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %list_del_init.exit.i, %for.end.if.end.i_crit_edge
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and.i = and i32 %21, -5
  store i32 %and.i, ptr %flags, align 4
  %22 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i.i.i = icmp ne ptr %23, @aggr_pre_handler
  %and.i.i.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %or.cond.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.i.not.i.i
  br i1 %or.cond.i, label %if.end.i.kill_optimized_kprobe.exit_crit_edge, label %kprobe_unused.exit.i

if.end.i.kill_optimized_kprobe.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kill_optimized_kprobe.exit

kprobe_unused.exit.i:                             ; preds = %if.end.i
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %list, align 4
  %cmp.i5.i.i = icmp eq ptr %25, %list
  br i1 %cmp.i5.i.i, label %if.then3.i, label %kprobe_unused.exit.i.kill_optimized_kprobe.exit_crit_edge

kprobe_unused.exit.i.kill_optimized_kprobe.exit_crit_edge: ; preds = %kprobe_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kill_optimized_kprobe.exit

if.then3.i:                                       ; preds = %kprobe_unused.exit.i
  %26 = load ptr, ptr @freeing_list, align 4
  %call.i.i13.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef nonnull @freeing_list, ptr noundef %26) #16
  br i1 %call.i.i13.i, label %if.end.i.i14.i, label %if.then3.i.list_add.exit.i_crit_edge

if.then3.i.list_add.exit.i_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit.i

if.end.i.i14.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @freeing_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %list.i, ptr @freeing_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i14.i, %if.then3.i.list_add.exit.i_crit_edge
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %p, i32 0, i32 1
  %32 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pprev2.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %31, ptr %33, align 4
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %list_add.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

list_add.exit.i.hlist_del_rcu.exit.i_crit_edge:   ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %31, i32 0, i32 1
  %35 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %list_add.exit.i.hlist_del_rcu.exit.i_crit_edge
  %36 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  br label %kill_optimized_kprobe.exit

kill_optimized_kprobe.exit:                       ; preds = %hlist_del_rcu.exit.i, %kprobe_unused.exit.i.kill_optimized_kprobe.exit_crit_edge, %if.end.i.kill_optimized_kprobe.exit_crit_edge
  tail call void @arch_remove_optimized_kprobe(ptr noundef %p) #16
  br label %if.end39

if.end39:                                         ; preds = %kill_optimized_kprobe.exit, %if.end.if.end39_crit_edge
  tail call void @arch_remove_kprobe(ptr noundef %p) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_kprobes() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @kprobe_table, i32 0, i32 256)
  %call = tail call fastcc i32 @populate_kprobe_blacklist() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  store i1 false, ptr @kprobes_all_disarmed, align 1
  store i32 sub (i32 ptrtoint (ptr @optprobe_template_end to i32), i32 ptrtoint (ptr @optprobe_template_entry to i32)), ptr getelementptr inbounds (%struct.kprobe_insn_cache, ptr @kprobe_optinsn_slots, i32 0, i32 5), align 4
  %call2 = tail call i32 @arch_init_kprobes() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end6:                                          ; preds = %if.end
  %call5 = tail call i32 @register_die_notifier(ptr noundef nonnull @kprobe_exceptions_nb) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  %call9 = tail call i32 @register_module_notifier(ptr noundef nonnull @kprobe_module_nb) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %err.1 = phi i32 [ %call5, %if.end6.if.end10_crit_edge ], [ %call9, %if.then8 ], [ %call2, %if.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp11 = icmp eq i32 %err.1, 0
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, ptr @kprobes_initialized, align 4
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.26, ptr noundef nonnull @kprobe_sysctls, ptr noundef nonnull @.str.27) #16
  ret i32 %err.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_optprobes() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @optimize_all_kprobes()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @debugfs_kprobe_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.35, ptr noundef null) #16
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef %call, ptr noundef null, ptr noundef nonnull @kprobes_fops) #16
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.37, i16 noundef zeroext 384, ptr noundef %call, ptr noundef null, ptr noundef nonnull @fops_kp) #16
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.38, i16 noundef zeroext 256, ptr noundef %call, ptr noundef null, ptr noundef nonnull @kprobe_blacklist_fops) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_memfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kprobe_optimizer(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  tail call void @cpus_read_lock() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @text_mutex, i32 noundef 0) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @text_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !272

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 554, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @lockdep_assert_cpus_held() #16
  %1 = load volatile ptr, ptr @unoptimizing_list, align 4
  %cmp.i.not.i = icmp eq ptr %1, @unoptimizing_list
  br i1 %cmp.i.not.i, label %if.end.i.do_unoptimize_kprobes.exit_crit_edge, label %if.end28.i

if.end.i.do_unoptimize_kprobes.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_unoptimize_kprobes.exit

if.end28.i:                                       ; preds = %if.end.i
  tail call void @arch_unoptimize_kprobes(ptr noundef nonnull @unoptimizing_list, ptr noundef nonnull @freeing_list) #16
  %2 = load ptr, ptr @freeing_list, align 4
  %cmp34.not66.i = icmp eq ptr %2, @freeing_list
  br i1 %cmp34.not66.i, label %if.end28.i.do_unoptimize_kprobes.exit_crit_edge, label %if.end28.i.for.body.i_crit_edge

if.end28.i.for.body.i_crit_edge:                  ; preds = %if.end28.i
  br label %for.body.i

if.end28.i.do_unoptimize_kprobes.exit_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_unoptimize_kprobes.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end28.i.for.body.i_crit_edge
  %.pn.in67.i = phi ptr [ %.pn71.i, %for.inc.i.for.body.i_crit_edge ], [ %2, %if.end28.i.for.body.i_crit_edge ]
  %op.070.i = getelementptr i8, ptr %.pn.in67.i, i32 -80
  %3 = ptrtoint ptr %.pn.in67.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn71.i = load ptr, ptr %.pn.in67.i, align 4
  %flags.i = getelementptr i8, ptr %.pn.in67.i, i32 -4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, -5
  store i32 %and.i, ptr %flags.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.if.end41.i_crit_edge, label %if.then39.i

for.body.i.if.end41.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41.i

if.then39.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @arch_disarm_kprobe(ptr noundef %op.070.i) #16
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then39.i, %for.body.i.if.end41.i_crit_edge
  %pre_handler.i.i.i = getelementptr i8, ptr %.pn.in67.i, i32 -48
  %6 = ptrtoint ptr %pre_handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pre_handler.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %7, @aggr_pre_handler
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %if.end41.i.if.else.i_crit_edge

if.end41.i.if.else.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

land.lhs.true.i.i:                                ; preds = %if.end41.i
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i.if.else.i_crit_edge, label %kprobe_unused.exit.i

land.lhs.true.i.i.if.else.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

kprobe_unused.exit.i:                             ; preds = %land.lhs.true.i.i
  %list.i.i = getelementptr i8, ptr %.pn.in67.i, i32 -72
  %10 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i5.i.i = icmp eq ptr %11, %list.i.i
  br i1 %cmp.i5.i.i, label %if.then44.i, label %kprobe_unused.exit.i.if.else.i_crit_edge

kprobe_unused.exit.i.if.else.i_crit_edge:         ; preds = %kprobe_unused.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i

if.then44.i:                                      ; preds = %kprobe_unused.exit.i
  %12 = ptrtoint ptr %op.070.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %op.070.i, align 4
  %pprev2.i.i.i = getelementptr i8, ptr %.pn.in67.i, i32 -76
  %14 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %13, ptr %15, align 4
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.then44.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

if.then44.i.hlist_del_rcu.exit.i_crit_edge:       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %if.then44.i.hlist_del_rcu.exit.i_crit_edge
  %18 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %kprobe_unused.exit.i.if.else.i_crit_edge, %land.lhs.true.i.i.if.else.i_crit_edge, %if.end41.i.if.else.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in67.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.list_del_init.exit.i_crit_edge

if.else.i.list_del_init.exit.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in67.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %.pn.in67.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in67.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.else.i.list_del_init.exit.i_crit_edge
  %25 = ptrtoint ptr %.pn.in67.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn.in67.i, ptr %.pn.in67.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in67.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.pn.in67.i, ptr %prev.i3.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_init.exit.i, %hlist_del_rcu.exit.i
  %cmp34.not.i = icmp eq ptr %.pn71.i, @freeing_list
  br i1 %cmp34.not.i, label %for.inc.i.do_unoptimize_kprobes.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.inc.i.do_unoptimize_kprobes.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_unoptimize_kprobes.exit

do_unoptimize_kprobes.exit:                       ; preds = %for.inc.i.do_unoptimize_kprobes.exit_crit_edge, %if.end28.i.do_unoptimize_kprobes.exit_crit_edge, %if.end.i.do_unoptimize_kprobes.exit_crit_edge
  tail call void @synchronize_rcu_tasks() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %27 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i3 = icmp eq i32 %27, 0
  br i1 %tobool.not.i3, label %do_unoptimize_kprobes.exit.if.end.i8_crit_edge, label %land.rhs.i6

do_unoptimize_kprobes.exit.if.end.i8_crit_edge:   ; preds = %do_unoptimize_kprobes.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i8

land.rhs.i6:                                      ; preds = %do_unoptimize_kprobes.exit
  %call.i.i4 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @text_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp.not.i5 = icmp eq i32 %call.i.i4, 0
  br i1 %cmp.not.i5, label %do.end.i7, label %land.rhs.i6.if.end.i8_crit_edge, !prof !272

land.rhs.i6.if.end.i8_crit_edge:                  ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i8

do.end.i7:                                        ; preds = %land.rhs.i6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 525, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i8

if.end.i8:                                        ; preds = %do.end.i7, %land.rhs.i6.if.end.i8_crit_edge, %do_unoptimize_kprobes.exit.if.end.i8_crit_edge
  tail call void @lockdep_assert_cpus_held() #16
  %.b33.i = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b33.i, label %if.end.i8.do_optimize_kprobes.exit_crit_edge, label %lor.lhs.false.i

if.end.i8.do_optimize_kprobes.exit_crit_edge:     ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_optimize_kprobes.exit

lor.lhs.false.i:                                  ; preds = %if.end.i8
  %.b3234.i = load i1, ptr @kprobes_allow_optimization, align 1
  br i1 %.b3234.i, label %lor.lhs.false26.i, label %lor.lhs.false.i.do_optimize_kprobes.exit_crit_edge

lor.lhs.false.i.do_optimize_kprobes.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_optimize_kprobes.exit

lor.lhs.false26.i:                                ; preds = %lor.lhs.false.i
  %28 = load volatile ptr, ptr @optimizing_list, align 4
  %cmp.i.not.i9 = icmp eq ptr %28, @optimizing_list
  br i1 %cmp.i.not.i9, label %lor.lhs.false26.i.do_optimize_kprobes.exit_crit_edge, label %if.end30.i

lor.lhs.false26.i.do_optimize_kprobes.exit_crit_edge: ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_optimize_kprobes.exit

if.end30.i:                                       ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @arch_optimize_kprobes(ptr noundef nonnull @optimizing_list) #16
  br label %do_optimize_kprobes.exit

do_optimize_kprobes.exit:                         ; preds = %if.end30.i, %lor.lhs.false26.i.do_optimize_kprobes.exit_crit_edge, %lor.lhs.false.i.do_optimize_kprobes.exit_crit_edge, %if.end.i8.do_optimize_kprobes.exit_crit_edge
  %29 = load ptr, ptr @freeing_list, align 4
  %cmp.not65.i = icmp eq ptr %29, @freeing_list
  br i1 %cmp.not65.i, label %do_optimize_kprobes.exit.do_free_cleaned_kprobes.exit_crit_edge, label %do_optimize_kprobes.exit.for.body.i11_crit_edge

do_optimize_kprobes.exit.for.body.i11_crit_edge:  ; preds = %do_optimize_kprobes.exit
  br label %for.body.i11

do_optimize_kprobes.exit.do_free_cleaned_kprobes.exit_crit_edge: ; preds = %do_optimize_kprobes.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_free_cleaned_kprobes.exit

for.body.i11:                                     ; preds = %for.inc.i27.for.body.i11_crit_edge, %do_optimize_kprobes.exit.for.body.i11_crit_edge
  %.pn.in66.i = phi ptr [ %.pn68.i, %for.inc.i27.for.body.i11_crit_edge ], [ %29, %do_optimize_kprobes.exit.for.body.i11_crit_edge ]
  %op.067.i = getelementptr i8, ptr %.pn.in66.i, i32 -80
  %30 = ptrtoint ptr %.pn.in66.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn68.i = load ptr, ptr %.pn.in66.i, align 4
  %call.i.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in66.i) #16
  br i1 %call.i.i.i10, label %if.end.i.i.i14, label %for.body.i11.list_del_init.exit.i18_crit_edge

for.body.i11.list_del_init.exit.i18_crit_edge:    ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit.i18

if.end.i.i.i14:                                   ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %.pn.in66.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i12, align 4
  %33 = ptrtoint ptr %.pn.in66.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn.in66.i, align 4
  %prev1.i.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i13, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del_init.exit.i18

list_del_init.exit.i18:                           ; preds = %if.end.i.i.i14, %for.body.i11.list_del_init.exit.i18_crit_edge
  %37 = ptrtoint ptr %.pn.in66.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %.pn.in66.i, ptr %.pn.in66.i, align 4
  %prev.i3.i.i15 = getelementptr inbounds %struct.list_head, ptr %.pn.in66.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i3.i.i15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in66.i, ptr %prev.i3.i.i15, align 4
  %pre_handler.i.i.i16 = getelementptr i8, ptr %.pn.in66.i, i32 -48
  %39 = ptrtoint ptr %pre_handler.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pre_handler.i.i.i16, align 4
  %cmp.i.i.i17 = icmp eq ptr %40, @aggr_pre_handler
  br i1 %cmp.i.i.i17, label %land.lhs.true.i.i21, label %list_del_init.exit.i18.land.rhs.i25_crit_edge

list_del_init.exit.i18.land.rhs.i25_crit_edge:    ; preds = %list_del_init.exit.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i25

land.lhs.true.i.i21:                              ; preds = %list_del_init.exit.i18
  %flags.i.i.i = getelementptr i8, ptr %.pn.in66.i, i32 -4
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i19 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i19)
  %tobool.i.not.i.i20 = icmp eq i32 %and.i.i.i19, 0
  br i1 %tobool.i.not.i.i20, label %land.lhs.true.i.i21.land.rhs.i25_crit_edge, label %kprobe_unused.exit.i24

land.lhs.true.i.i21.land.rhs.i25_crit_edge:       ; preds = %land.lhs.true.i.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i25

kprobe_unused.exit.i24:                           ; preds = %land.lhs.true.i.i21
  %list.i.i22 = getelementptr i8, ptr %.pn.in66.i, i32 -72
  %43 = ptrtoint ptr %list.i.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %list.i.i22, align 4
  %cmp.i5.i.i23 = icmp eq ptr %44, %list.i.i22
  br i1 %cmp.i5.i.i23, label %if.end46.critedge.i, label %kprobe_unused.exit.i24.land.rhs.i25_crit_edge

kprobe_unused.exit.i24.land.rhs.i25_crit_edge:    ; preds = %kprobe_unused.exit.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i25

land.rhs.i25:                                     ; preds = %kprobe_unused.exit.i24.land.rhs.i25_crit_edge, %land.lhs.true.i.i21.land.rhs.i25_crit_edge, %list_del_init.exit.i18.land.rhs.i25_crit_edge
  %.b60.i = load i1, ptr @do_free_cleaned_kprobes.__already_done, align 1
  br i1 %.b60.i, label %land.rhs.i25.for.inc.i27_crit_edge, label %if.then.i, !prof !266

land.rhs.i25.for.inc.i27_crit_edge:               ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i27

if.then.i:                                        ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @do_free_cleaned_kprobes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 589, i32 noundef 9, ptr noundef null) #16
  br label %for.inc.i27

if.end46.critedge.i:                              ; preds = %kprobe_unused.exit.i24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @arch_remove_optimized_kprobe(ptr noundef %op.067.i) #16
  tail call void @arch_remove_kprobe(ptr noundef %op.067.i) #16
  tail call void @kfree(ptr noundef %op.067.i) #16
  br label %for.inc.i27

for.inc.i27:                                      ; preds = %if.end46.critedge.i, %if.then.i, %land.rhs.i25.for.inc.i27_crit_edge
  %cmp.not.i26 = icmp eq ptr %.pn68.i, @freeing_list
  br i1 %cmp.not.i26, label %for.inc.i27.do_free_cleaned_kprobes.exit_crit_edge, label %for.inc.i27.for.body.i11_crit_edge

for.inc.i27.for.body.i11_crit_edge:               ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i11

for.inc.i27.do_free_cleaned_kprobes.exit_crit_edge: ; preds = %for.inc.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_free_cleaned_kprobes.exit

do_free_cleaned_kprobes.exit:                     ; preds = %for.inc.i27.do_free_cleaned_kprobes.exit_crit_edge, %do_optimize_kprobes.exit.do_free_cleaned_kprobes.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @text_mutex) #16
  tail call void @cpus_read_unlock() #16
  %45 = load volatile ptr, ptr @optimizing_list, align 4
  %cmp.i.not = icmp eq ptr %45, @optimizing_list
  br i1 %cmp.i.not, label %lor.lhs.false, label %do_free_cleaned_kprobes.exit.if.then_crit_edge

do_free_cleaned_kprobes.exit.if.then_crit_edge:   ; preds = %do_free_cleaned_kprobes.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %do_free_cleaned_kprobes.exit
  %46 = load volatile ptr, ptr @unoptimizing_list, align 4
  %cmp.i28.not = icmp eq ptr %46, @unoptimizing_list
  br i1 %cmp.i28.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %do_free_cleaned_kprobes.exit.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i.i30 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef nonnull @optimizing_work, i32 noundef 5) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_tasks() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_unoptimize_kprobes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_disarm_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_optimize_kprobes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_remove_optimized_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_remove_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @jump_label_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jump_label_text_reserved(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_bug(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__module_text_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jump_label_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_location(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prepare_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prepare_optimized_kprobe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optimize_kprobe(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_handler.i.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %pre_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pre_handler.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @aggr_pre_handler
  br i1 %cmp.i.i, label %kprobe_optready.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

kprobe_optready.exit:                             ; preds = %entry
  %optinsn.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 2
  %call1.i = tail call i32 @arch_prepared_optinsn(ptr noundef %optinsn.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %kprobe_optready.exit.cleanup_crit_edge, label %lor.lhs.false

kprobe_optready.exit.cleanup_crit_edge:           ; preds = %kprobe_optready.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %kprobe_optready.exit
  %.b7779 = load i1, ptr @kprobes_allow_optimization, align 1
  br i1 %.b7779, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false4, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %.b80 = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %.b80, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %post_handler = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %post_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %post_handler, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @arch_check_optimized_kprobe(ptr noundef %p) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end17, label %if.end11.for.cond.i_crit_edge

if.end11.for.cond.i_crit_edge:                    ; preds = %if.end11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end11.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ], [ @unoptimizing_list, %if.end11.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @unoptimizing_list
  %_op.0.i = getelementptr i8, ptr %.pn.i, i32 -80
  %cmp1.i = icmp eq ptr %_op.0.i, %p
  %or.cond.i = or i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %optprobe_queued_unopt.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

optprobe_queued_unopt.exit:                       ; preds = %for.cond.i
  br i1 %cmp.not.i, label %optprobe_queued_unopt.exit.cleanup_crit_edge, label %if.then15

optprobe_queued_unopt.exit.cleanup_crit_edge:     ; preds = %optprobe_queued_unopt.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then15:                                        ; preds = %optprobe_queued_unopt.exit
  %list = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.then15.list_del_init.exit_crit_edge

if.then15.list_del_init.exit_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then15.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i3.i, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %or = or i32 %7, 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %flags.i, align 4
  %list20 = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1
  %18 = ptrtoint ptr %list20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %list20, align 4
  %cmp.i.not = icmp eq ptr %19, %list20
  br i1 %cmp.i.not, label %if.end64, label %land.rhs

land.rhs:                                         ; preds = %if.end17
  %.b7881 = load i1, ptr @optimize_kprobe.__already_done, align 1
  br i1 %.b7881, label %land.rhs.cleanup_crit_edge, label %if.then31, !prof !266

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then31:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @optimize_kprobe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 711, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end64:                                         ; preds = %if.end17
  %20 = load ptr, ptr @optimizing_list, align 4
  %call.i.i83 = tail call zeroext i1 @__list_add_valid(ptr noundef %list20, ptr noundef nonnull @optimizing_list, ptr noundef %20) #16
  br i1 %call.i.i83, label %if.end.i.i84, label %if.end64.list_add.exit_crit_edge

if.end64.list_add.exit_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i84:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list20, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %list20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %list20, align 4
  %prev3.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @optimizing_list, ptr %prev3.i.i, align 4
  store volatile ptr %list20, ptr @optimizing_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i84, %if.end64.list_add.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef nonnull @optimizing_work, i32 noundef 5) #16
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then31, %land.rhs.cleanup_crit_edge, %list_del_init.exit, %optprobe_queued_unopt.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %kprobe_optready.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_prepared_optinsn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_check_optimized_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unoptimize_kprobe(ptr noundef %p, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_handler.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i = icmp eq ptr %1, @aggr_pre_handler
  br i1 %cmp.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i7.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %2 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i7.i, align 4
  %and.i8.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.i9.not.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.i9.not.i, label %if.end, label %kprobe_disarmed.exit

kprobe_disarmed.exit:                             ; preds = %if.end.i
  %list.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %list.i, align 4
  %cmp.i10.i = icmp ne ptr %5, %list.i
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %or.cond = select i1 %cmp.i10.i, i1 %tobool.i, i1 false
  br i1 %or.cond, label %kprobe_disarmed.exit.if.end4_crit_edge, label %kprobe_disarmed.exit.cleanup_crit_edge

kprobe_disarmed.exit.cleanup_crit_edge:           ; preds = %kprobe_disarmed.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

kprobe_disarmed.exit.if.end4_crit_edge:           ; preds = %kprobe_disarmed.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end:                                           ; preds = %if.end.i
  %and.i.old = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.old)
  %tobool.i.old.not = icmp eq i32 %and.i.old, 0
  br i1 %tobool.i.old.not, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %kprobe_disarmed.exit.if.end4_crit_edge
  %list = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %cmp.i32.not = icmp eq ptr %7, %list
  br i1 %cmp.i32.not, label %if.end15, label %if.end4.for.cond.i_crit_edge

if.end4.for.cond.i_crit_edge:                     ; preds = %if.end4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end4.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ], [ @unoptimizing_list, %if.end4.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @unoptimizing_list
  %_op.0.i = getelementptr i8, ptr %.pn.i, i32 -80
  %cmp1.i = icmp eq ptr %_op.0.i, %p
  %or.cond.i = or i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond.i, label %optprobe_queued_unopt.exit, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

optprobe_queued_unopt.exit:                       ; preds = %for.cond.i
  br i1 %cmp.not.i, label %if.else, label %if.then8

if.then8:                                         ; preds = %optprobe_queued_unopt.exit
  br i1 %force, label %if.then10, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @force_unoptimize_kprobe(ptr noundef %p)
  tail call fastcc void @list_move(ptr noundef %list)
  br label %cleanup

if.else:                                          ; preds = %optprobe_queued_unopt.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i3.i, align 4
  %17 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i7.i, align 4
  %and = and i32 %18, -5
  store i32 %and, ptr %flags.i7.i, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  br i1 %force, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lockdep_assert_cpus_held() #16
  tail call void @arch_unoptimize_kprobe(ptr noundef %p) #16
  %19 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i7.i, align 4
  %and.i34 = and i32 %20, -5
  store i32 %and.i34, ptr %flags.i7.i, align 4
  br label %cleanup

if.else18:                                        ; preds = %if.end15
  %21 = load ptr, ptr @unoptimizing_list, align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @unoptimizing_list, ptr noundef %21) #16
  br i1 %call.i.i35, label %if.end.i.i36, label %if.else18.list_add.exit_crit_edge

if.else18.list_add.exit_crit_edge:                ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i36:                                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %p, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @unoptimizing_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @unoptimizing_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i36, %if.else18.list_add.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %25, ptr noundef nonnull @optimizing_work, i32 noundef 5) #16
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then17, %list_del_init.exit, %if.then10, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %kprobe_disarmed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @force_unoptimize_kprobe(ptr noundef %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lockdep_assert_cpus_held() #16
  tail call void @arch_unoptimize_kprobe(ptr noundef %op) #16
  %flags = getelementptr inbounds %struct.kprobe, ptr %op, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, -5
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #16
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = load ptr, ptr @freeing_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @freeing_list, ptr noundef %6) #16
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i1 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev1.i.i1, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @freeing_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @freeing_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_unoptimize_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_arm_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kretprobe_trampoline() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_prepare_kretprobe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @disarm_kprobe(ptr noundef %kp, i1 noundef zeroext %reopt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 10
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge, !prof !266

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #16
  tail call void @mutex_lock_nested(ptr noundef nonnull @text_mutex, i32 noundef 0) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.rhs.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @text_mutex, i32 0, i32 5), i32 noundef -1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !272

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1005, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %.b44.i = load i1, ptr @kprobes_all_disarmed, align 1
  tail call fastcc void @unoptimize_kprobe(ptr noundef %kp, i1 noundef zeroext %.b44.i) #16
  %pre_handler.i.i.i = getelementptr inbounds %struct.kprobe, ptr %kp, i32 0, i32 6
  %3 = ptrtoint ptr %pre_handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pre_handler.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %4, @aggr_pre_handler
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.if.then26.i_crit_edge

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.then.i.i:                                      ; preds = %if.end.i
  %list.i.i = getelementptr inbounds %struct.optimized_kprobe, ptr %kp, i32 0, i32 1
  %5 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i5.not.i.i = icmp eq ptr %6, %list.i.i
  br i1 %cmp.i5.not.i.i, label %if.then.i.i.if.then26.i_crit_edge, label %if.then.i.i.__disarm_kprobe.exit_crit_edge

if.then.i.i.__disarm_kprobe.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__disarm_kprobe.exit

if.then.i.i.if.then26.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then.i.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  tail call void @arch_disarm_kprobe(ptr noundef %kp) #16
  br label %__disarm_kprobe.exit

__disarm_kprobe.exit:                             ; preds = %if.then26.i, %if.then.i.i.__disarm_kprobe.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @text_mutex) #16
  tail call void @cpus_read_unlock() #16
  br label %return

return:                                           ; preds = %__disarm_kprobe.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %__disarm_kprobe.exit ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @populate_kprobe_blacklist() unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 icmp ult (ptr @__start_kprobe_blacklist, ptr @__stop_kprobe_blacklist), label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %iter.020, i32 1
  %cmp = icmp ult ptr %incdec.ptr, @__stop_kprobe_blacklist
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.020 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ @__start_kprobe_blacklist, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %iter.020 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iter.020, align 4
  %call2 = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call2)
  %cmp3 = icmp ne i32 %call2, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  %or.cond = and i1 %cmp3, %cmp4
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  br i1 icmp ult (ptr @__kprobes_text_start, ptr @__kprobes_text_end), label %for.end.for.body.i_crit_edge, label %for.end.if.end9_crit_edge

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %entry1.013.i = phi i32 [ %add.i, %if.end.i.for.body.i_crit_edge ], [ ptrtoint (ptr @__kprobes_text_start to i32), %for.end.for.body.i_crit_edge ]
  %call.i = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %entry1.013.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %cmp3.i, i32 1, i32 %call.i
  %add.i = add i32 %spec.store.select.i, %entry1.013.i
  %cmp.i = icmp ult i32 %add.i, ptrtoint (ptr @__kprobes_text_end to i32)
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end9_crit_edge

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end9:                                          ; preds = %if.end.i.if.end9_crit_edge, %for.end.if.end9_crit_edge
  br i1 icmp ult (ptr @__noinstr_text_start, ptr @__noinstr_text_end), label %if.end9.for.body.i4_crit_edge, label %if.end9.cond.false_crit_edge

if.end9.cond.false_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

if.end9.for.body.i4_crit_edge:                    ; preds = %if.end9
  br label %for.body.i4

for.body.i4:                                      ; preds = %if.end.i9.for.body.i4_crit_edge, %if.end9.for.body.i4_crit_edge
  %entry1.013.i1 = phi i32 [ %add.i7, %if.end.i9.for.body.i4_crit_edge ], [ ptrtoint (ptr @__noinstr_text_start to i32), %if.end9.for.body.i4_crit_edge ]
  %call.i2 = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %entry1.013.i1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp2.i3 = icmp slt i32 %call.i2, 0
  br i1 %cmp2.i3, label %for.body.i4.cleanup_crit_edge, label %if.end.i9

for.body.i4.cleanup_crit_edge:                    ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i9:                                        ; preds = %for.body.i4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp3.i5 = icmp eq i32 %call.i2, 0
  %spec.store.select.i6 = select i1 %cmp3.i5, i32 1, i32 %call.i2
  %add.i7 = add i32 %spec.store.select.i6, %entry1.013.i1
  %cmp.i8 = icmp ult i32 %add.i7, ptrtoint (ptr @__noinstr_text_end to i32)
  br i1 %cmp.i8, label %if.end.i9.for.body.i4_crit_edge, label %if.end.i9.cond.false_crit_edge

if.end.i9.cond.false_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false

if.end.i9.for.body.i4_crit_edge:                  ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i4

cond.false:                                       ; preds = %if.end.i9.cond.false_crit_edge, %if.end9.cond.false_crit_edge
  %call12 = tail call i32 @arch_populate_kprobe_blacklist() #22
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %for.body.i4.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %cond.false ], [ %call.i2, %for.body.i4.cleanup_crit_edge ], [ %call.i, %for.body.i.cleanup_crit_edge ], [ %call2, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_init_kprobes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobes_module_callback(ptr nocapture noundef readnone %nb, i32 noundef %val, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp = icmp eq i32 %val, 2
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %val, label %entry.cleanup_crit_edge [
    i32 1, label %if.then
    i32 2, label %entry.if.end8_crit_edge
    i32 0, label %entry.if.end8_crit_edge91
  ]

entry.if.end8_crit_edge91:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %kprobe_blacklist.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 59
  %1 = ptrtoint ptr %kprobe_blacklist.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %kprobe_blacklist.i, align 32
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %for.cond.preheader.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.cond.preheader.i:                             ; preds = %if.then
  %num_kprobe_blacklist.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 60
  %3 = ptrtoint ptr %num_kprobe_blacklist.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_kprobe_blacklist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp38.not.i = icmp eq i32 %4, 0
  br i1 %cmp38.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %kprobe_blacklist.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kprobe_blacklist.i, align 32
  %arrayidx.i = getelementptr i32, ptr %6, i32 %i.039.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %8) #16
  %inc.i = add nuw i32 %i.039.i, 1
  %9 = ptrtoint ptr %num_kprobe_blacklist.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_kprobe_blacklist.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %kprobes_text_start.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 57
  %11 = ptrtoint ptr %kprobes_text_start.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kprobes_text_start.i, align 8
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %13 = ptrtoint ptr %12 to i32
  %kprobes_text_size.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 58
  %14 = ptrtoint ptr %kprobes_text_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %kprobes_text_size.i, align 4
  %add.i = add i32 %15, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp12.i.i = icmp ugt i32 %add.i, %13
  br i1 %cmp12.i.i, label %if.then3.i.for.body.i.i_crit_edge, label %if.then3.i.if.end5.i_crit_edge

if.then3.i.if.end5.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.then3.i.for.body.i.i_crit_edge:                ; preds = %if.then3.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then3.i.for.body.i.i_crit_edge
  %entry1.013.i.i = phi i32 [ %add.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ %13, %if.then3.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %entry1.013.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %for.body.i.i.if.end5.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end5.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp eq i32 %call.i.i, 0
  %spec.store.select.i.i = select i1 %cmp3.i.i, i32 1, i32 %call.i.i
  %add.i.i = add i32 %spec.store.select.i.i, %entry1.013.i.i
  %cmp.i.i = icmp ult i32 %add.i.i, %add.i
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end5.i_crit_edge

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

if.end5.i:                                        ; preds = %if.end.i.i.if.end5.i_crit_edge, %for.body.i.i.if.end5.i_crit_edge, %if.then3.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %noinstr_text_start.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 39
  %16 = ptrtoint ptr %noinstr_text_start.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %noinstr_text_start.i, align 16
  %tobool6.not.i = icmp eq ptr %17, null
  br i1 %tobool6.not.i, label %if.end5.i.cleanup.sink.split_crit_edge, label %if.then7.i

if.end5.i.cleanup.sink.split_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then7.i:                                       ; preds = %if.end5.i
  %18 = ptrtoint ptr %17 to i32
  %noinstr_text_size.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 40
  %19 = ptrtoint ptr %noinstr_text_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %noinstr_text_size.i, align 4
  %add8.i = add i32 %20, %18
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %18)
  %cmp12.i26.i = icmp ugt i32 %add8.i, %18
  br i1 %cmp12.i26.i, label %if.then7.i.for.body.i30.i_crit_edge, label %if.then7.i.cleanup.sink.split_crit_edge

if.then7.i.cleanup.sink.split_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then7.i.for.body.i30.i_crit_edge:              ; preds = %if.then7.i
  br label %for.body.i30.i

for.body.i30.i:                                   ; preds = %if.end.i35.i.for.body.i30.i_crit_edge, %if.then7.i.for.body.i30.i_crit_edge
  %entry1.013.i27.i = phi i32 [ %add.i33.i, %if.end.i35.i.for.body.i30.i_crit_edge ], [ %18, %if.then7.i.for.body.i30.i_crit_edge ]
  %call.i28.i = tail call i32 @kprobe_add_ksym_blacklist(i32 noundef %entry1.013.i27.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp2.i29.i = icmp slt i32 %call.i28.i, 0
  br i1 %cmp2.i29.i, label %for.body.i30.i.cleanup.sink.split_crit_edge, label %if.end.i35.i

for.body.i30.i.cleanup.sink.split_crit_edge:      ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end.i35.i:                                     ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %cmp3.i31.i = icmp eq i32 %call.i28.i, 0
  %spec.store.select.i32.i = select i1 %cmp3.i31.i, i32 1, i32 %call.i28.i
  %add.i33.i = add i32 %spec.store.select.i32.i, %entry1.013.i27.i
  %cmp.i34.i = icmp ult i32 %add.i33.i, %add8.i
  br i1 %cmp.i34.i, label %if.end.i35.i.for.body.i30.i_crit_edge, label %if.end.i35.i.cleanup.sink.split_crit_edge

if.end.i35.i.cleanup.sink.split_crit_edge:        ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end.i35.i.for.body.i30.i_crit_edge:            ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i30.i

if.end8:                                          ; preds = %entry.if.end8_crit_edge, %entry.if.end8_crit_edge91
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %init_layout.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 26
  %size.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 26, i32 1
  %core_layout.i = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 25
  %size.i62 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 25, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %if.end8
  %i.088 = phi i32 [ 0, %if.end8 ], [ %inc, %for.inc33.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %i.088
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %p.085 = load ptr, ptr %arrayidx, align 4
  %tobool13.not86 = icmp eq ptr %p.085, null
  br i1 %tobool13.not86, label %for.body.for.inc33_crit_edge, label %for.body.for.body14_crit_edge

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body.for.inc33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc33

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %p.087 = phi ptr [ %p.0, %for.inc.for.body14_crit_edge ], [ %p.085, %for.body.for.body14_crit_edge ]
  %addr = getelementptr inbounds %struct.kprobe, ptr %p.087, i32 0, i32 3
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = ptrtoint ptr %init_layout.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_layout.i, align 16
  %cmp.not.i = icmp ugt ptr %26, %23
  br i1 %cmp.not.i, label %for.body14.lor.lhs.false_crit_edge, label %within_module_init.exit

for.body14.lor.lhs.false_crit_edge:               ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

within_module_init.exit:                          ; preds = %for.body14
  %27 = ptrtoint ptr %26 to i32
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %add.i60 = add i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i60, i32 %24)
  %cmp4.i = icmp ugt i32 %add.i60, %24
  br i1 %cmp4.i, label %within_module_init.exit.if.then21_crit_edge, label %within_module_init.exit.lor.lhs.false_crit_edge

within_module_init.exit.lor.lhs.false_crit_edge:  ; preds = %within_module_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

within_module_init.exit.if.then21_crit_edge:      ; preds = %within_module_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

lor.lhs.false:                                    ; preds = %within_module_init.exit.lor.lhs.false_crit_edge, %for.body14.lor.lhs.false_crit_edge
  br i1 %cmp, label %land.lhs.true17, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %core_layout.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core_layout.i, align 128
  %cmp.not.i61 = icmp ugt ptr %31, %23
  br i1 %cmp.not.i61, label %land.lhs.true17.for.inc_crit_edge, label %within_module_core.exit

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

within_module_core.exit:                          ; preds = %land.lhs.true17
  %32 = ptrtoint ptr %31 to i32
  %33 = ptrtoint ptr %size.i62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i62, align 4
  %add.i63 = add i32 %34, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i63, i32 %24)
  %cmp4.i64 = icmp ugt i32 %add.i63, %24
  br i1 %cmp4.i64, label %within_module_core.exit.if.then21_crit_edge, label %within_module_core.exit.for.inc_crit_edge

within_module_core.exit.for.inc_crit_edge:        ; preds = %within_module_core.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

within_module_core.exit.if.then21_crit_edge:      ; preds = %within_module_core.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then21

if.then21:                                        ; preds = %within_module_core.exit.if.then21_crit_edge, %within_module_init.exit.if.then21_crit_edge
  tail call fastcc void @kill_kprobe(ptr noundef nonnull %p.087)
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %within_module_core.exit.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %35 = ptrtoint ptr %p.087 to i32
  call void @__asan_load4_noabort(i32 %35)
  %p.0 = load ptr, ptr %p.087, align 4
  %tobool13.not = icmp eq ptr %p.0, null
  br i1 %tobool13.not, label %for.inc.for.inc33_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body14

for.inc.for.inc33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc33

for.inc33:                                        ; preds = %for.inc.for.inc33_crit_edge, %for.body.for.inc33_crit_edge
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end34, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end34:                                        ; preds = %for.inc33
  br i1 %cmp, label %if.then37, label %for.end34.cleanup.sink.split_crit_edge

for.end34.cleanup.sink.split_crit_edge:           ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then37:                                        ; preds = %for.end34
  %kprobe_blacklist.i66 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 59
  %36 = ptrtoint ptr %kprobe_blacklist.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kprobe_blacklist.i66, align 32
  %tobool.not.i67 = icmp eq ptr %37, null
  br i1 %tobool.not.i67, label %if.then37.if.end.i77_crit_edge, label %for.cond.preheader.i69

if.then37.if.end.i77_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i77

for.cond.preheader.i69:                           ; preds = %if.then37
  %num_kprobe_blacklist.i68 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 60
  %38 = ptrtoint ptr %num_kprobe_blacklist.i68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_kprobe_blacklist.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp43.not.i = icmp eq i32 %39, 0
  br i1 %cmp43.not.i, label %for.cond.preheader.i69.if.end.i77_crit_edge, label %for.cond.preheader.i69.for.body.i72_crit_edge

for.cond.preheader.i69.for.body.i72_crit_edge:    ; preds = %for.cond.preheader.i69
  br label %for.body.i72

for.cond.preheader.i69.if.end.i77_crit_edge:      ; preds = %for.cond.preheader.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i77

for.body.i72:                                     ; preds = %kprobe_remove_ksym_blacklist.exit.i.for.body.i72_crit_edge, %for.cond.preheader.i69.for.body.i72_crit_edge
  %i.044.i = phi i32 [ %inc.i73, %kprobe_remove_ksym_blacklist.exit.i.for.body.i72_crit_edge ], [ 0, %for.cond.preheader.i69.for.body.i72_crit_edge ]
  %40 = ptrtoint ptr %kprobe_blacklist.i66 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %kprobe_blacklist.i66, align 32
  %arrayidx.i70 = getelementptr i32, ptr %41, i32 %i.044.i
  %42 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i70, align 4
  %add.i.i71 = add i32 %43, 1
  %44 = load ptr, ptr @kprobe_blacklist, align 4
  %cmp.not21.i.i.i = icmp eq ptr %44, @kprobe_blacklist
  br i1 %cmp.not21.i.i.i, label %for.body.i72.kprobe_remove_ksym_blacklist.exit.i_crit_edge, label %for.body.i72.for.body.i.i.i_crit_edge

for.body.i72.for.body.i.i.i_crit_edge:            ; preds = %for.body.i72
  br label %for.body.i.i.i

for.body.i72.kprobe_remove_ksym_blacklist.exit.i_crit_edge: ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_remove_ksym_blacklist.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i72.for.body.i.i.i_crit_edge
  %ent.022.i.i.i = phi ptr [ %n.024.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %44, %for.body.i72.for.body.i.i.i_crit_edge ]
  %45 = ptrtoint ptr %ent.022.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %n.024.i.i.i = load ptr, ptr %ent.022.i.i.i, align 4
  %start_addr.i.i.i = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.022.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %start_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %start_addr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %43)
  %cmp5.i.i.i = icmp uge i32 %47, %43
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add.i.i71)
  %cmp7.not.i.i.i = icmp ult i32 %47, %add.i.i71
  %or.cond.i.i.i = and i1 %cmp5.i.i.i, %cmp7.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.022.i.i.i) #16
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.list_del.exit.i.i.i_crit_edge

if.end.i.i.i.list_del.exit.i.i.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ent.022.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %ent.022.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ent.022.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.list_del.exit.i.i.i_crit_edge
  %54 = ptrtoint ptr %ent.022.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.022.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ent.022.i.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  tail call void @kfree(ptr noundef %ent.022.i.i.i) #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %list_del.exit.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq ptr %n.024.i.i.i, @kprobe_blacklist
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.kprobe_remove_ksym_blacklist.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i.i.kprobe_remove_ksym_blacklist.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kprobe_remove_ksym_blacklist.exit.i

kprobe_remove_ksym_blacklist.exit.i:              ; preds = %for.inc.i.i.i.kprobe_remove_ksym_blacklist.exit.i_crit_edge, %for.body.i72.kprobe_remove_ksym_blacklist.exit.i_crit_edge
  %inc.i73 = add nuw i32 %i.044.i, 1
  %56 = ptrtoint ptr %num_kprobe_blacklist.i68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_kprobe_blacklist.i68, align 4
  %cmp.i74 = icmp ult i32 %inc.i73, %57
  br i1 %cmp.i74, label %kprobe_remove_ksym_blacklist.exit.i.for.body.i72_crit_edge, label %kprobe_remove_ksym_blacklist.exit.i.if.end.i77_crit_edge

kprobe_remove_ksym_blacklist.exit.i.if.end.i77_crit_edge: ; preds = %kprobe_remove_ksym_blacklist.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i77

kprobe_remove_ksym_blacklist.exit.i.for.body.i72_crit_edge: ; preds = %kprobe_remove_ksym_blacklist.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i72

if.end.i77:                                       ; preds = %kprobe_remove_ksym_blacklist.exit.i.if.end.i77_crit_edge, %for.cond.preheader.i69.if.end.i77_crit_edge, %if.then37.if.end.i77_crit_edge
  %kprobes_text_start.i75 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 57
  %58 = ptrtoint ptr %kprobes_text_start.i75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kprobes_text_start.i75, align 8
  %tobool2.not.i76 = icmp eq ptr %59, null
  br i1 %tobool2.not.i76, label %if.end.i77.if.end4.i_crit_edge, label %if.then3.i80

if.end.i77.if.end4.i_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.then3.i80:                                     ; preds = %if.end.i77
  %60 = ptrtoint ptr %59 to i32
  %kprobes_text_size.i78 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 58
  %61 = ptrtoint ptr %kprobes_text_size.i78 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %kprobes_text_size.i78, align 4
  %add.i79 = add i32 %62, %60
  %63 = load ptr, ptr @kprobe_blacklist, align 4
  %cmp.not21.i.i = icmp eq ptr %63, @kprobe_blacklist
  br i1 %cmp.not21.i.i, label %if.then3.i80.if.end4.i_crit_edge, label %if.then3.i80.for.body.i.i81_crit_edge

if.then3.i80.for.body.i.i81_crit_edge:            ; preds = %if.then3.i80
  br label %for.body.i.i81

if.then3.i80.if.end4.i_crit_edge:                 ; preds = %if.then3.i80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

for.body.i.i81:                                   ; preds = %for.inc.i.i.for.body.i.i81_crit_edge, %if.then3.i80.for.body.i.i81_crit_edge
  %ent.022.i.i = phi ptr [ %n.024.i.i, %for.inc.i.i.for.body.i.i81_crit_edge ], [ %63, %if.then3.i80.for.body.i.i81_crit_edge ]
  %64 = ptrtoint ptr %ent.022.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %n.024.i.i = load ptr, ptr %ent.022.i.i, align 4
  %start_addr.i.i = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.022.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %start_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %start_addr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %60)
  %cmp5.i.i = icmp uge i32 %66, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %add.i79)
  %cmp7.not.i.i = icmp ult i32 %66, %add.i79
  %or.cond.i.i = and i1 %cmp5.i.i, %cmp7.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i82, label %for.body.i.i81.for.inc.i.i_crit_edge

for.body.i.i81.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end.i.i82:                                     ; preds = %for.body.i.i81
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.022.i.i) #16
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i82.list_del.exit.i.i_crit_edge

if.end.i.i82.list_del.exit.i.i_crit_edge:         ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i82
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i24.i = getelementptr inbounds %struct.list_head, ptr %ent.022.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i24.i, align 4
  %69 = ptrtoint ptr %ent.022.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ent.022.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev1.i.i.i.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %68, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i82.list_del.exit.i.i_crit_edge
  %73 = ptrtoint ptr %ent.022.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.022.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ent.022.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %ent.022.i.i) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %list_del.exit.i.i, %for.body.i.i81.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %n.024.i.i, @kprobe_blacklist
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end4.i_crit_edge, label %for.inc.i.i.for.body.i.i81_crit_edge

for.inc.i.i.for.body.i.i81_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i81

for.inc.i.i.if.end4.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.inc.i.i.if.end4.i_crit_edge, %if.then3.i80.if.end4.i_crit_edge, %if.end.i77.if.end4.i_crit_edge
  %noinstr_text_start.i83 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 39
  %75 = ptrtoint ptr %noinstr_text_start.i83 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %noinstr_text_start.i83, align 16
  %tobool5.not.i = icmp eq ptr %76, null
  br i1 %tobool5.not.i, label %if.end4.i.cleanup.sink.split_crit_edge, label %if.then6.i

if.end4.i.cleanup.sink.split_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then6.i:                                       ; preds = %if.end4.i
  %77 = ptrtoint ptr %76 to i32
  %noinstr_text_size.i84 = getelementptr inbounds %struct.module, ptr %data, i32 0, i32 40
  %78 = ptrtoint ptr %noinstr_text_size.i84 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %noinstr_text_size.i84, align 4
  %add7.i = add i32 %79, %77
  %80 = load ptr, ptr @kprobe_blacklist, align 4
  %cmp.not21.i25.i = icmp eq ptr %80, @kprobe_blacklist
  br i1 %cmp.not21.i25.i, label %if.then6.i.cleanup.sink.split_crit_edge, label %if.then6.i.for.body.i32.i_crit_edge

if.then6.i.for.body.i32.i_crit_edge:              ; preds = %if.then6.i
  br label %for.body.i32.i

if.then6.i.cleanup.sink.split_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

for.body.i32.i:                                   ; preds = %for.inc.i41.i.for.body.i32.i_crit_edge, %if.then6.i.for.body.i32.i_crit_edge
  %ent.022.i26.i = phi ptr [ %n.024.i27.i, %for.inc.i41.i.for.body.i32.i_crit_edge ], [ %80, %if.then6.i.for.body.i32.i_crit_edge ]
  %81 = ptrtoint ptr %ent.022.i26.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %n.024.i27.i = load ptr, ptr %ent.022.i26.i, align 4
  %start_addr.i28.i = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %ent.022.i26.i, i32 0, i32 1
  %82 = ptrtoint ptr %start_addr.i28.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %start_addr.i28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %77)
  %cmp5.i29.i = icmp uge i32 %83, %77
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %add7.i)
  %cmp7.not.i30.i = icmp ult i32 %83, %add7.i
  %or.cond.i31.i = and i1 %cmp5.i29.i, %cmp7.not.i30.i
  br i1 %or.cond.i31.i, label %if.end.i34.i, label %for.body.i32.i.for.inc.i41.i_crit_edge

for.body.i32.i.for.inc.i41.i_crit_edge:           ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i41.i

if.end.i34.i:                                     ; preds = %for.body.i32.i
  %call.i.i.i33.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ent.022.i26.i) #16
  br i1 %call.i.i.i33.i, label %if.end.i.i.i37.i, label %if.end.i34.i.list_del.exit.i39.i_crit_edge

if.end.i34.i.list_del.exit.i39.i_crit_edge:       ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit.i39.i

if.end.i.i.i37.i:                                 ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i35.i = getelementptr inbounds %struct.list_head, ptr %ent.022.i26.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i35.i, align 4
  %86 = ptrtoint ptr %ent.022.i26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ent.022.i26.i, align 4
  %prev1.i.i.i.i36.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i36.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del.exit.i39.i

list_del.exit.i39.i:                              ; preds = %if.end.i.i.i37.i, %if.end.i34.i.list_del.exit.i39.i_crit_edge
  %90 = ptrtoint ptr %ent.022.i26.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %ent.022.i26.i, align 4
  %prev.i.i38.i = getelementptr inbounds %struct.list_head, ptr %ent.022.i26.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i38.i, align 4
  tail call void @kfree(ptr noundef %ent.022.i26.i) #16
  br label %for.inc.i41.i

for.inc.i41.i:                                    ; preds = %list_del.exit.i39.i, %for.body.i32.i.for.inc.i41.i_crit_edge
  %cmp.not.i40.i = icmp eq ptr %n.024.i27.i, @kprobe_blacklist
  br i1 %cmp.not.i40.i, label %for.inc.i41.i.cleanup.sink.split_crit_edge, label %for.inc.i41.i.for.body.i32.i_crit_edge

for.inc.i41.i.for.body.i32.i_crit_edge:           ; preds = %for.inc.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i32.i

for.inc.i41.i.cleanup.sink.split_crit_edge:       ; preds = %for.inc.i41.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.i41.i.cleanup.sink.split_crit_edge, %if.then6.i.cleanup.sink.split_crit_edge, %if.end4.i.cleanup.sink.split_crit_edge, %for.end34.cleanup.sink.split_crit_edge, %if.end.i35.i.cleanup.sink.split_crit_edge, %for.body.i30.i.cleanup.sink.split_crit_edge, %if.then7.i.cleanup.sink.split_crit_edge, %if.end5.i.cleanup.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_kprobes_optimization_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %length, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_sysctl_mutex, i32 noundef 0) #16
  %.b2 = load i1, ptr @kprobes_allow_optimization, align 1
  %cond = zext i1 %.b2 to i32
  store i32 %cond, ptr @sysctl_kprobes_optimization, align 4
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %length, ptr noundef %ppos) #16
  %0 = load i32, ptr @sysctl_kprobes_optimization, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @optimize_all_kprobes()
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %.b32.i = load i1, ptr @kprobes_allow_optimization, align 1
  br i1 %.b32.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %if.end

if.end.i:                                         ; preds = %if.else
  tail call void @cpus_read_lock() #16
  store i1 false, ptr @kprobes_allow_optimization, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %if.end.i
  %i.037.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc18.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %i.037.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.034.i = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not35.i = icmp eq ptr %p.034.i, null
  br i1 %tobool4.not35.i, label %for.body.i.for.inc18.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %p.036.i = phi ptr [ %p.0.i, %for.inc.i.for.body5.i_crit_edge ], [ %p.034.i, %for.body.i.for.body5.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.kprobe, ptr %p.036.i, i32 0, i32 10
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then6.i, label %for.body5.i.for.inc.i_crit_edge

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @unoptimize_kprobe(ptr noundef nonnull %p.036.i, i1 noundef zeroext false) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body5.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %p.036.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.0.i = load ptr, ptr %p.036.i, align 4
  %tobool4.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool4.not.i, label %for.inc.i.for.inc18.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5.i

for.inc.i.for.inc18.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %for.inc.i.for.inc18.i_crit_edge, %for.body.i.for.inc18.i_crit_edge
  %inc.i = add nuw nsw i32 %i.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end19.i, label %for.inc18.i.for.body.i_crit_edge

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end19.i:                                      ; preds = %for.inc18.i
  tail call void @cpus_read_unlock() #16
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %for.end19.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %5 = load volatile ptr, ptr @optimizing_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %5, @optimizing_list
  br i1 %cmp.i.not.i.i, label %lor.rhs.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %6 = load volatile ptr, ptr @unoptimizing_list, align 4
  %cmp.i8.not.i.i = icmp eq ptr %6, @unoptimizing_list
  br i1 %cmp.i8.not.i.i, label %wait_for_kprobe_optimizer.exit.i, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  %call3.i.i = tail call zeroext i1 @flush_delayed_work(ptr noundef nonnull @optimizing_work) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !267
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !268
  br label %while.cond.i.i

wait_for_kprobe_optimizer.exit.i:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #21
  br label %if.end

if.end:                                           ; preds = %wait_for_kprobe_optimizer.exit.i, %if.then.i, %if.then
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_sysctl_mutex) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optimize_all_kprobes() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %.b30 = load i1, ptr @kprobes_allow_optimization, align 1
  br i1 %.b30, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  tail call void @cpus_read_lock() #16
  store i1 true, ptr @kprobes_allow_optimization, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %if.end
  %i.035 = phi i32 [ 0, %if.end ], [ %inc, %for.inc18.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %i.035
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.032 = load ptr, ptr %arrayidx, align 4
  %tobool4.not33 = icmp eq ptr %p.032, null
  br i1 %tobool4.not33, label %for.body.for.inc18_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %p.034 = phi ptr [ %p.0, %for.inc.for.body5_crit_edge ], [ %p.032, %for.body.for.body5_crit_edge ]
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %p.034, i32 0, i32 10
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then6, label %for.body5.for.inc_crit_edge

for.body5.for.inc_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then6:                                         ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @optimize_kprobe(ptr noundef nonnull %p.034)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body5.for.inc_crit_edge
  %3 = ptrtoint ptr %p.034 to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0 = load ptr, ptr %p.034, align 4
  %tobool4.not = icmp eq ptr %p.0, null
  br i1 %tobool4.not, label %for.inc.for.inc18_crit_edge, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5

for.inc.for.inc18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc18

for.inc18:                                        ; preds = %for.inc.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end19, label %for.inc18.for.body_crit_edge

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end19:                                        ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @cpus_read_unlock() #16
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #21
  br label %out

out:                                              ; preds = %for.end19, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobes_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @kprobes_sops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @kprobe_seq_start(ptr nocapture noundef readnone %f, ptr noundef readonly %pos) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 64, i64 %1)
  %cmp = icmp slt i64 %1, 64
  %spec.select = select i1 %cmp, ptr %pos, ptr null
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kprobe_seq_stop(ptr nocapture noundef %f, ptr nocapture noundef %v) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @kprobe_seq_next(ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %v, ptr noundef %pos) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 63, i64 %inc)
  %cmp = icmp sgt i64 %inc, 63
  %.pos = select i1 %cmp, ptr null, ptr %pos
  ret ptr %.pos
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_kprobe_addr(ptr noundef %pi, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %modname = alloca ptr, align 4
  %namebuf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %v, align 8
  %conv = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #16
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %modname) #16
  %3 = ptrtoint ptr %modname to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %modname, align 4, !annotation !281
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %namebuf) #16
  %4 = call ptr @memset(ptr %namebuf, i32 255, i32 128)
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %conv
  %5 = tail call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !293
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b90 = load i1, ptr @show_kprobe_addr.__warned, align 1
  br i1 %.b90, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @show_kprobe_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2689, ptr noundef nonnull @.str.4) #16
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %p.097 = load volatile ptr, ptr %arrayidx, align 4
  %tobool15.not98 = icmp eq ptr %p.097, null
  br i1 %tobool15.not98, label %do.end7.do.body71_crit_edge, label %do.end7.for.body_crit_edge

do.end7.for.body_crit_edge:                       ; preds = %do.end7
  br label %for.body

do.end7.do.body71_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body71

for.body:                                         ; preds = %for.inc53.for.body_crit_edge, %do.end7.for.body_crit_edge
  %p.099 = phi ptr [ %p.0, %for.inc53.for.body_crit_edge ], [ %p.097, %do.end7.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.kprobe, ptr %p.099, i32 0, i32 3
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %12 = ptrtoint ptr %11 to i32
  %call16 = call ptr @kallsyms_lookup(i32 noundef %12, ptr noundef null, ptr noundef nonnull %offset, ptr noundef nonnull %modname, ptr noundef nonnull %namebuf) #16
  %pre_handler.i = getelementptr inbounds %struct.kprobe, ptr %p.099, i32 0, i32 6
  %13 = ptrtoint ptr %pre_handler.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pre_handler.i, align 4
  %cmp.i = icmp eq ptr %14, @aggr_pre_handler
  br i1 %cmp.i, label %do.body19, label %if.else

do.body19:                                        ; preds = %for.body
  %call20 = call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %do.body19.do.end30_crit_edge

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.body19
  %call23 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b8889 = load i1, ptr @show_kprobe_addr.__warned.39, align 1
  br i1 %.b8889, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @show_kprobe_addr.__warned.39, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 2693, ptr noundef nonnull @.str.4) #16
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.body19.do.end30_crit_edge
  %list = getelementptr inbounds %struct.kprobe, ptr %p.099, i32 0, i32 1
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn94 = load volatile ptr, ptr %list, align 4
  %cmp.not95 = icmp eq ptr %.pn94, %list
  br i1 %cmp.not95, label %do.end30.for.inc53_crit_edge, label %do.end30.for.body42_crit_edge

do.end30.for.body42_crit_edge:                    ; preds = %do.end30
  br label %for.body42

do.end30.for.inc53_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc53

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %do.end30.for.body42_crit_edge
  %.pn96 = phi ptr [ %.pn, %for.body42.for.body42_crit_edge ], [ %.pn94, %do.end30.for.body42_crit_edge ]
  %kp.0 = getelementptr i8, ptr %.pn96, i32 -8
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %18 = ptrtoint ptr %modname to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modname, align 4
  call fastcc void @report_probe(ptr noundef %pi, ptr noundef %kp.0, ptr noundef %call16, i32 noundef %17, ptr noundef %19, ptr noundef nonnull %p.099)
  %20 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load volatile ptr, ptr %.pn96, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.body42.for.inc53_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body42

for.body42.for.inc53_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc53

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset, align 4
  %23 = ptrtoint ptr %modname to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %modname, align 4
  call fastcc void @report_probe(ptr noundef %pi, ptr noundef nonnull %p.099, ptr noundef %call16, i32 noundef %22, ptr noundef %24, ptr noundef null)
  br label %for.inc53

for.inc53:                                        ; preds = %if.else, %for.body42.for.inc53_crit_edge, %do.end30.for.inc53_crit_edge
  %25 = ptrtoint ptr %p.099 to i32
  call void @__asan_load4_noabort(i32 %25)
  %p.0 = load volatile ptr, ptr %p.099, align 4
  %tobool15.not = icmp eq ptr %p.0, null
  br i1 %tobool15.not, label %for.inc53.do.body71_crit_edge, label %for.inc53.for.body_crit_edge

for.inc53.for.body_crit_edge:                     ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc53.do.body71_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body71

do.body71:                                        ; preds = %for.inc53.do.body71_crit_edge, %do.end7.do.body71_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !294
  %26 = call i32 @llvm.read_register.i32(metadata !253) #16
  %and.i.i.i92 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i92 to ptr
  %preempt_count.i.i93 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i93 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i93, align 4
  %sub.i = add i32 %29, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i93, align 4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %namebuf) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %modname) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kallsyms_lookup(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @report_probe(ptr noundef %pi, ptr nocapture noundef readonly %p, ptr noundef %sym, i32 noundef %offset, ptr noundef %modname, ptr noundef readonly %pp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr1, align 4
  %pre_handler = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 6
  %2 = ptrtoint ptr %pre_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pre_handler, align 4
  %cmp = icmp eq ptr %3, @pre_handler_kretprobe
  %.str.40..str.41 = select i1 %cmp, ptr @.str.40, ptr @.str.41
  %file = getelementptr inbounds %struct.seq_file, ptr %pi, i32 0, i32 10
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_cred, align 8
  %call = tail call zeroext i1 @kallsyms_show_value(ptr noundef %7) #16
  %addr.0 = select i1 %call, ptr %1, ptr null
  %tobool.not = icmp eq ptr %sym, null
  br i1 %tobool.not, label %if.else6, label %if.then4

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tobool5.not = icmp eq ptr %modname, null
  %spec.select = select i1 %tobool5.not, ptr @.str.43, ptr %modname
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %pi, ptr noundef nonnull @.str.42, ptr noundef %addr.0, ptr noundef nonnull %.str.40..str.41, ptr noundef nonnull %sym, i32 noundef %offset, ptr noundef nonnull %spec.select) #16
  br label %if.end8

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %pi, ptr noundef nonnull @.str.44, ptr noundef %addr.0, ptr noundef nonnull %.str.40..str.41, ptr noundef %9) #16
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4
  %tobool9.not = icmp eq ptr %pp, null
  %spec.select36 = select i1 %tobool9.not, ptr %p, ptr %pp
  %flags.i = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 10
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i38 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.i39.not = icmp eq i32 %and.i38, 0
  %phi.sel = select i1 %tobool.i.not, ptr @.str.48, ptr @.str.47
  %spec.select49 = select i1 %tobool.i39.not, ptr @.str.47, ptr %phi.sel
  %cond13 = select i1 %tobool.i.not, ptr @.str.47, ptr @.str.46
  %flags.i43 = getelementptr inbounds %struct.kprobe, ptr %spec.select36, i32 0, i32 10
  %12 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i43, align 4
  %and.i44 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.i45.not = icmp eq i32 %and.i44, 0
  %cond18 = select i1 %tobool.i45.not, ptr @.str.47, ptr @.str.49
  %and.i47 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool.i48.not = icmp eq i32 %and.i47, 0
  %cond20 = select i1 %tobool.i48.not, ptr @.str.47, ptr @.str.50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %pi, ptr noundef nonnull @.str.45, ptr noundef nonnull %cond13, ptr noundef nonnull %spec.select49, ptr noundef nonnull %cond18, ptr noundef nonnull %cond20) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kallsyms_show_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_enabled_file_bool(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #16
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %.b4 = load i1, ptr @kprobes_all_disarmed, align 1
  %. = select i1 %.b4, i8 48, i8 49
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %., ptr %buf, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %1, align 1
  %call = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef 2) #16
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @write_enabled_file_bool(ptr nocapture noundef readnone %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #16
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %enable, align 1, !annotation !281
  %call = call i32 @kstrtobool_from_user(ptr noundef %user_buf, i32 noundef %count, ptr noundef nonnull %enable) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %.b57.i = load i1, ptr @kprobes_all_disarmed, align 1
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br i1 %.b57.i, label %if.end.i, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  store i1 false, ptr @kprobes_all_disarmed, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc23.i.for.body.i_crit_edge, %if.end.i
  %i.063.i = phi i32 [ 0, %if.end.i ], [ %inc24.i, %for.inc23.i.for.body.i_crit_edge ]
  %total.062.i = phi i32 [ 0, %if.end.i ], [ %total.1.lcssa.i, %for.inc23.i.for.body.i_crit_edge ]
  %errors.061.i = phi i32 [ 0, %if.end.i ], [ %errors.1.lcssa.i, %for.inc23.i.for.body.i_crit_edge ]
  %ret.060.i = phi i32 [ 0, %if.end.i ], [ %ret.1.lcssa.i, %for.inc23.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %i.063.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.052.i = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not53.i = icmp eq ptr %p.052.i, null
  br i1 %tobool4.not53.i, label %for.body.i.for.inc23.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.inc23.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc23.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %p.057.i = phi ptr [ %p.0.i, %for.inc.i.for.body5.i_crit_edge ], [ %p.052.i, %for.body.i.for.body5.i_crit_edge ]
  %total.156.i = phi i32 [ %total.2.i, %for.inc.i.for.body5.i_crit_edge ], [ %total.062.i, %for.body.i.for.body5.i_crit_edge ]
  %errors.155.i = phi i32 [ %errors.3.i, %for.inc.i.for.body5.i_crit_edge ], [ %errors.061.i, %for.body.i.for.body5.i_crit_edge ]
  %ret.154.i = phi i32 [ %ret.3.i, %for.inc.i.for.body5.i_crit_edge ], [ %ret.060.i, %for.body.i.for.body5.i_crit_edge ]
  %flags.i.i = getelementptr inbounds %struct.kprobe, ptr %p.057.i, i32 0, i32 10
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then6.i, label %for.body5.i.for.inc.i_crit_edge

for.body5.i.for.inc.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = call fastcc i32 @arm_kprobe(ptr noundef nonnull %p.057.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %spec.select49.i = select i1 %tobool8.not.i, i32 %ret.154.i, i32 %call7.i
  %not.tobool8.not.i = xor i1 %tobool8.not.i, true
  %inc.i = zext i1 %not.tobool8.not.i to i32
  %spec.select50.i = add i32 %errors.155.i, %inc.i
  %inc11.i = add i32 %total.156.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body5.i.for.inc.i_crit_edge
  %ret.3.i = phi i32 [ %ret.154.i, %for.body5.i.for.inc.i_crit_edge ], [ %spec.select49.i, %if.then6.i ]
  %errors.3.i = phi i32 [ %errors.155.i, %for.body5.i.for.inc.i_crit_edge ], [ %spec.select50.i, %if.then6.i ]
  %total.2.i = phi i32 [ %total.156.i, %for.body5.i.for.inc.i_crit_edge ], [ %inc11.i, %if.then6.i ]
  %6 = ptrtoint ptr %p.057.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0.i = load ptr, ptr %p.057.i, align 4
  %tobool4.not.i = icmp eq ptr %p.0.i, null
  br i1 %tobool4.not.i, label %for.inc.i.for.inc23.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5.i

for.inc.i.for.inc23.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %for.inc.i.for.inc23.i_crit_edge, %for.body.i.for.inc23.i_crit_edge
  %ret.1.lcssa.i = phi i32 [ %ret.060.i, %for.body.i.for.inc23.i_crit_edge ], [ %ret.3.i, %for.inc.i.for.inc23.i_crit_edge ]
  %errors.1.lcssa.i = phi i32 [ %errors.061.i, %for.body.i.for.inc23.i_crit_edge ], [ %errors.3.i, %for.inc.i.for.inc23.i_crit_edge ]
  %total.1.lcssa.i = phi i32 [ %total.062.i, %for.body.i.for.inc23.i_crit_edge ], [ %total.2.i, %for.inc.i.for.inc23.i_crit_edge ]
  %inc24.i = add nuw nsw i32 %i.063.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 64
  br i1 %exitcond.not.i, label %for.end25.i, label %for.inc23.i.for.body.i_crit_edge

for.inc23.i.for.body.i_crit_edge:                 ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end25.i:                                      ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.1.lcssa.i)
  %tobool26.not.i = icmp eq i32 %errors.1.lcssa.i, 0
  br i1 %tobool26.not.i, label %do.end32.i, label %do.end.i

do.end.i:                                         ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %errors.1.lcssa.i, i32 noundef %total.1.lcssa.i) #21
  br label %cond.end

do.end32.i:                                       ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #21
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br i1 %.b57.i, label %cond.false.cond.end_crit_edge, label %if.end.i12

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

if.end.i12:                                       ; preds = %cond.false
  store i1 true, ptr @kprobes_all_disarmed, align 1
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.inc25.i.for.body.i14_crit_edge, %if.end.i12
  %i.072.i = phi i32 [ 0, %if.end.i12 ], [ %inc26.i, %for.inc25.i.for.body.i14_crit_edge ]
  %total.071.i = phi i32 [ 0, %if.end.i12 ], [ %total.1.lcssa.i28, %for.inc25.i.for.body.i14_crit_edge ]
  %errors.070.i = phi i32 [ 0, %if.end.i12 ], [ %errors.1.lcssa.i27, %for.inc25.i.for.body.i14_crit_edge ]
  %ret.069.i = phi i32 [ 0, %if.end.i12 ], [ %ret.1.lcssa.i26, %for.inc25.i.for.body.i14_crit_edge ]
  %arrayidx.i13 = getelementptr [64 x %struct.hlist_head], ptr @kprobe_table, i32 0, i32 %i.072.i
  %7 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.061.i = load ptr, ptr %arrayidx.i13, align 4
  %tobool4.not62.i = icmp eq ptr %p.061.i, null
  br i1 %tobool4.not62.i, label %for.body.i14.for.inc25.i_crit_edge, label %for.body.i14.for.body5.i15_crit_edge

for.body.i14.for.body5.i15_crit_edge:             ; preds = %for.body.i14
  br label %for.body5.i15

for.body.i14.for.inc25.i_crit_edge:               ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc25.i

for.body5.i15:                                    ; preds = %for.inc.i25.for.body5.i15_crit_edge, %for.body.i14.for.body5.i15_crit_edge
  %p.066.i = phi ptr [ %p.0.i23, %for.inc.i25.for.body5.i15_crit_edge ], [ %p.061.i, %for.body.i14.for.body5.i15_crit_edge ]
  %total.165.i = phi i32 [ %total.2.i22, %for.inc.i25.for.body5.i15_crit_edge ], [ %total.071.i, %for.body.i14.for.body5.i15_crit_edge ]
  %errors.164.i = phi i32 [ %errors.3.i21, %for.inc.i25.for.body5.i15_crit_edge ], [ %errors.070.i, %for.body.i14.for.body5.i15_crit_edge ]
  %ret.163.i = phi i32 [ %ret.3.i20, %for.inc.i25.for.body5.i15_crit_edge ], [ %ret.069.i, %for.body.i14.for.body5.i15_crit_edge ]
  %call.i = call i32 @arch_trampoline_kprobe(ptr noundef nonnull %p.066.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %for.body5.i15.for.inc.i25_crit_edge

for.body5.i15.for.inc.i25_crit_edge:              ; preds = %for.body5.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i25

land.lhs.true.i:                                  ; preds = %for.body5.i15
  %flags.i.i16 = getelementptr inbounds %struct.kprobe, ptr %p.066.i, i32 0, i32 10
  %8 = ptrtoint ptr %flags.i.i16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i16, align 4
  %and.i.i17 = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17)
  %tobool.i.not.i18 = icmp eq i32 %and.i.i17, 0
  br i1 %tobool.i.not.i18, label %if.then8.i, label %land.lhs.true.i.for.inc.i25_crit_edge

land.lhs.true.i.for.inc.i25_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i25

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %call9.i = call fastcc i32 @disarm_kprobe(ptr noundef nonnull %p.066.i, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %spec.select58.i = select i1 %tobool10.not.i, i32 %ret.163.i, i32 %call9.i
  %not.tobool10.not.i = xor i1 %tobool10.not.i, true
  %inc.i19 = zext i1 %not.tobool10.not.i to i32
  %spec.select59.i = add i32 %errors.164.i, %inc.i19
  %inc13.i = add i32 %total.165.i, 1
  br label %for.inc.i25

for.inc.i25:                                      ; preds = %if.then8.i, %land.lhs.true.i.for.inc.i25_crit_edge, %for.body5.i15.for.inc.i25_crit_edge
  %ret.3.i20 = phi i32 [ %ret.163.i, %for.body5.i15.for.inc.i25_crit_edge ], [ %ret.163.i, %land.lhs.true.i.for.inc.i25_crit_edge ], [ %spec.select58.i, %if.then8.i ]
  %errors.3.i21 = phi i32 [ %errors.164.i, %for.body5.i15.for.inc.i25_crit_edge ], [ %errors.164.i, %land.lhs.true.i.for.inc.i25_crit_edge ], [ %spec.select59.i, %if.then8.i ]
  %total.2.i22 = phi i32 [ %total.165.i, %for.body5.i15.for.inc.i25_crit_edge ], [ %total.165.i, %land.lhs.true.i.for.inc.i25_crit_edge ], [ %inc13.i, %if.then8.i ]
  %10 = ptrtoint ptr %p.066.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %p.0.i23 = load ptr, ptr %p.066.i, align 4
  %tobool4.not.i24 = icmp eq ptr %p.0.i23, null
  br i1 %tobool4.not.i24, label %for.inc.i25.for.inc25.i_crit_edge, label %for.inc.i25.for.body5.i15_crit_edge

for.inc.i25.for.body5.i15_crit_edge:              ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body5.i15

for.inc.i25.for.inc25.i_crit_edge:                ; preds = %for.inc.i25
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %for.inc.i25.for.inc25.i_crit_edge, %for.body.i14.for.inc25.i_crit_edge
  %ret.1.lcssa.i26 = phi i32 [ %ret.069.i, %for.body.i14.for.inc25.i_crit_edge ], [ %ret.3.i20, %for.inc.i25.for.inc25.i_crit_edge ]
  %errors.1.lcssa.i27 = phi i32 [ %errors.070.i, %for.body.i14.for.inc25.i_crit_edge ], [ %errors.3.i21, %for.inc.i25.for.inc25.i_crit_edge ]
  %total.1.lcssa.i28 = phi i32 [ %total.071.i, %for.body.i14.for.inc25.i_crit_edge ], [ %total.2.i22, %for.inc.i25.for.inc25.i_crit_edge ]
  %inc26.i = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i29 = icmp eq i32 %inc26.i, 64
  br i1 %exitcond.not.i29, label %for.end27.i, label %for.inc25.i.for.body.i14_crit_edge

for.inc25.i.for.body.i14_crit_edge:               ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14

for.end27.i:                                      ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %errors.1.lcssa.i27)
  %tobool28.not.i = icmp eq i32 %errors.1.lcssa.i27, 0
  br i1 %tobool28.not.i, label %do.end34.i, label %do.end.i30

do.end.i30:                                       ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %errors.1.lcssa.i27, i32 noundef %total.1.lcssa.i28) #21
  br label %if.end37.i

do.end34.i:                                       ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #21
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.end34.i, %do.end.i30
  call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.end37.i
  call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %11 = load volatile ptr, ptr @optimizing_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, @optimizing_list
  br i1 %cmp.i.not.i.i, label %lor.rhs.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %12 = load volatile ptr, ptr @unoptimizing_list, align 4
  %cmp.i8.not.i.i = icmp eq ptr %12, @unoptimizing_list
  br i1 %cmp.i8.not.i.i, label %lor.rhs.i.i.cond.end_crit_edge, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

lor.rhs.i.i.cond.end_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  %call3.i.i = call zeroext i1 @flush_delayed_work(ptr noundef nonnull @optimizing_work) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !267
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !268
  br label %while.cond.i.i

cond.end:                                         ; preds = %lor.rhs.i.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %do.end32.i, %do.end.i, %cond.true.cond.end_crit_edge
  %cond = phi i32 [ %ret.1.lcssa.i, %do.end.i ], [ %ret.1.lcssa.i, %do.end32.i ], [ 0, %cond.true.cond.end_crit_edge ], [ 0, %cond.false.cond.end_crit_edge ], [ %ret.1.lcssa.i26, %lor.rhs.i.i.cond.end_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool4.not = icmp eq i32 %cond, 0
  %count.cond = select i1 %tobool4.not, i32 %count, i32 %cond
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %count.cond, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool_from_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_trampoline_kprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobe_blacklist_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @kprobe_blacklist_sops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %private, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kprobe_blacklist_seq_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kprobe_mutex, i32 noundef 0) #16
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef nonnull @kprobe_blacklist, i64 noundef %1) #16
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kprobe_blacklist_seq_stop(ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @kprobe_mutex) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kprobe_blacklist_seq_next(ptr nocapture noundef readnone %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @kprobe_blacklist, ptr noundef %pos) #16
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobe_blacklist_seq_show(ptr noundef %m, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_cred = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %f_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_cred, align 8
  %call = tail call zeroext i1 @kallsyms_show_value(ptr noundef %3) #16
  %start_addr1 = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %v, i32 0, i32 1
  %4 = ptrtoint ptr %start_addr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_addr1, align 4
  %6 = inttoptr i32 %5 to ptr
  br i1 %call, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, ptr noundef %6) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %end_addr = getelementptr inbounds %struct.kprobe_blacklist_entry, ptr %v, i32 0, i32 2
  %7 = ptrtoint ptr %end_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %end_addr, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.61, ptr noundef %6, ptr noundef %9, ptr noundef %6) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !152, !154, !155, !157, !159, !160, !161, !162, !164, !166, !168, !169, !171, !173, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !251}
!llvm.named.register.sp = !{!253}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/kprobes.c", i32 130, i32 11}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../kernel/kprobes.c", i32 133, i32 9}
!5 = !{ptr @kprobe_insn_slots, !6, !"kprobe_insn_slots", i1 false, i1 false}
!6 = !{!"../kernel/kprobes.c", i32 129, i32 26}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../kernel/kprobes.c", i32 153, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../kernel/kprobes.c", i32 264, i32 2}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../kernel/kprobes.c", i32 302, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../kernel/kprobes.c", i32 321, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/kprobes.c", i32 348, i32 11}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/kprobes.c", i32 351, i32 9}
!22 = !{ptr @kprobe_optinsn_slots, !23, !"kprobe_optinsn_slots", i1 false, i1 false}
!23 = !{!"../kernel/kprobes.c", i32 347, i32 26}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../kernel/kprobes.c", i32 382, i32 2}
!26 = !{ptr @_kbl_addr_get_kprobe, !27, !"_kbl_addr_get_kprobe", i1 false, i1 false}
!27 = !{!"../kernel/kprobes.c", i32 390, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../kernel/kprobes.c", i32 426, i32 2}
!30 = !{ptr @_kbl_addr_opt_pre_handler, !31, !"_kbl_addr_opt_pre_handler", i1 false, i1 false}
!31 = !{!"../kernel/kprobes.c", i32 434, i32 1}
!32 = !{ptr @_kbl_addr_aggr_pre_handler, !33, !"_kbl_addr_aggr_pre_handler", i1 false, i1 false}
!33 = !{!"../kernel/kprobes.c", i32 1209, i32 1}
!34 = !{ptr @_kbl_addr_aggr_post_handler, !35, !"_kbl_addr_aggr_post_handler", i1 false, i1 false}
!35 = !{!"../kernel/kprobes.c", i32 1224, i32 1}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../kernel/kprobes.c", i32 1234, i32 3}
!38 = !{ptr @_kbl_addr_kprobes_inc_nmissed_count, !39, !"_kbl_addr_kprobes_inc_nmissed_count", i1 false, i1 false}
!39 = !{!"../kernel/kprobes.c", i32 1238, i32 1}
!40 = !{ptr @_kbl_addr_free_rp_inst_rcu, !41, !"_kbl_addr_free_rp_inst_rcu", i1 false, i1 false}
!41 = !{!"../kernel/kprobes.c", i32 1248, i32 1}
!42 = !{ptr @_kbl_addr_recycle_rp_inst, !43, !"_kbl_addr_recycle_rp_inst", i1 false, i1 false}
!43 = !{!"../kernel/kprobes.c", i32 1259, i32 1}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/kprobes.c", i32 1270, i32 2}
!46 = !{ptr @_kbl_addr_kprobe_flush_task, !47, !"_kbl_addr_kprobe_flush_task", i1 false, i1 false}
!47 = !{!"../kernel/kprobes.c", i32 1308, i32 1}
!48 = !{ptr @__ksymtab_register_kprobe, !49, !"__ksymtab_register_kprobe", i1 false, i1 false}
!49 = !{!"../kernel/kprobes.c", i32 1699, i32 1}
!50 = !{ptr @__ksymtab_register_kprobes, !51, !"__ksymtab_register_kprobes", i1 false, i1 false}
!51 = !{!"../kernel/kprobes.c", i32 1846, i32 1}
!52 = !{ptr @__ksymtab_unregister_kprobe, !53, !"__ksymtab_unregister_kprobe", i1 false, i1 false}
!53 = !{!"../kernel/kprobes.c", i32 1852, i32 1}
!54 = !{ptr @__ksymtab_unregister_kprobes, !55, !"__ksymtab_unregister_kprobes", i1 false, i1 false}
!55 = !{!"../kernel/kprobes.c", i32 1871, i32 1}
!56 = !{ptr @_kbl_addr_kprobe_exceptions_notify, !57, !"_kbl_addr_kprobe_exceptions_notify", i1 false, i1 false}
!57 = !{!"../kernel/kprobes.c", i32 1878, i32 1}
!58 = !{ptr @_kbl_addr___kretprobe_find_ret_addr, !59, !"_kbl_addr___kretprobe_find_ret_addr", i1 false, i1 false}
!59 = !{!"../kernel/kprobes.c", i32 1909, i32 1}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../kernel/kprobes.c", i32 1932, i32 6}
!62 = !{ptr @_kbl_addr_kretprobe_find_ret_addr, !63, !"_kbl_addr_kretprobe_find_ret_addr", i1 false, i1 false}
!63 = !{!"../kernel/kprobes.c", i32 1944, i32 1}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/kprobes.c", i32 1966, i32 3}
!66 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__kretprobe_trampoline_handler._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @__kretprobe_trampoline_handler._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../kernel/kprobes.c", i32 1982, i32 7}
!71 = !{ptr @_kbl_addr___kretprobe_trampoline_handler, !72, !"_kbl_addr___kretprobe_trampoline_handler", i1 false, i1 false}
!72 = !{!"../kernel/kprobes.c", i32 2017, i32 1}
!73 = !{ptr @_kbl_addr_pre_handler_kretprobe, !74, !"_kbl_addr_pre_handler_kretprobe", i1 false, i1 false}
!74 = !{!"../kernel/kprobes.c", i32 2048, i32 1}
!75 = !{ptr @__ksymtab_register_kretprobe, !76, !"__ksymtab_register_kretprobe", i1 false, i1 false}
!76 = !{!"../kernel/kprobes.c", i32 2150, i32 1}
!77 = !{ptr @__ksymtab_register_kretprobes, !78, !"__ksymtab_register_kretprobes", i1 false, i1 false}
!78 = !{!"../kernel/kprobes.c", i32 2168, i32 1}
!79 = !{ptr @__ksymtab_unregister_kretprobe, !80, !"__ksymtab_unregister_kretprobe", i1 false, i1 false}
!80 = !{!"../kernel/kprobes.c", i32 2174, i32 1}
!81 = !{ptr @__ksymtab_unregister_kretprobes, !82, !"__ksymtab_unregister_kretprobes", i1 false, i1 false}
!82 = !{!"../kernel/kprobes.c", i32 2198, i32 1}
!83 = !{ptr @__ksymtab_disable_kprobe, !84, !"__ksymtab_disable_kprobe", i1 false, i1 false}
!84 = !{!"../kernel/kprobes.c", i32 2280, i32 1}
!85 = !{ptr @__ksymtab_enable_kprobe, !86, !"__ksymtab_enable_kprobe", i1 false, i1 false}
!86 = !{!"../kernel/kprobes.c", i32 2316, i32 1}
!87 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../kernel/kprobes.c", i32 2321, i32 2}
!89 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @dump_kprobe._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @dump_kprobe._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @_kbl_addr_dump_kprobe, !93, !"_kbl_addr_dump_kprobe", i1 false, i1 false}
!93 = !{!"../kernel/kprobes.c", i32 2324, i32 1}
!94 = !{ptr @__initcall__kmod_kprobes__278_2611_init_kprobesearly, !95, !"__initcall__kmod_kprobes__278_2611_init_kprobesearly", i1 false, i1 false}
!95 = !{!"../kernel/kprobes.c", i32 2611, i32 1}
!96 = !{ptr @__initcall__kmod_kprobes__279_2625_init_optprobes4, !97, !"__initcall__kmod_kprobes__279_2625_init_optprobes4", i1 false, i1 false}
!97 = !{!"../kernel/kprobes.c", i32 2625, i32 1}
!98 = !{ptr @__initcall__kmod_kprobes__286_2904_debugfs_kprobe_init7, !99, !"__initcall__kmod_kprobes__286_2904_debugfs_kprobe_init7", i1 false, i1 false}
!99 = !{!"../kernel/kprobes.c", i32 2904, i32 1}
!100 = !{ptr @kprobes_initialized, !101, !"kprobes_initialized", i1 false, i1 false}
!101 = !{!"../kernel/kprobes.c", i32 55, i32 12}
!102 = !{ptr @kprobe_table, !103, !"kprobe_table", i1 false, i1 false}
!103 = !{!"../kernel/kprobes.c", i32 61, i32 26}
!104 = distinct !{null, !105, !"kprobes_all_disarmed", i1 false, i1 false}
!105 = !{!"../kernel/kprobes.c", i32 64, i32 13}
!106 = !{ptr @__pcpu_unique_kprobe_instance, !107, !"__pcpu_unique_kprobe_instance", i1 false, i1 false}
!107 = !{!"../kernel/kprobes.c", i32 68, i32 8}
!108 = !{ptr @kprobe_instance, !107, !"kprobe_instance", i1 false, i1 false}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!111 = !{ptr @.str.13, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.14, !110, !"<string literal>", i1 false, i1 false}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!115 = !{ptr @.str.15, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.16, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/kprobes.c", i32 67, i32 8}
!118 = !{ptr @.str.17, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @kprobe_mutex, !117, !"kprobe_mutex", i1 false, i1 false}
!120 = !{ptr @optimizing_list, !121, !"optimizing_list", i1 false, i1 false}
!121 = !{!"../kernel/kprobes.c", i32 511, i32 8}
!122 = !{ptr @unoptimizing_list, !123, !"unoptimizing_list", i1 false, i1 false}
!123 = !{!"../kernel/kprobes.c", i32 512, i32 8}
!124 = !{ptr @.str.18, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/kprobes.c", i32 516, i32 8}
!126 = !{ptr @.str.19, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @optimizing_work, !125, !"optimizing_work", i1 false, i1 false}
!128 = !{ptr @freeing_list, !129, !"freeing_list", i1 false, i1 false}
!129 = !{!"../kernel/kprobes.c", i32 513, i32 8}
!130 = distinct !{null, !131, !"kprobes_allow_optimization", i1 false, i1 false}
!131 = !{!"../kernel/kprobes.c", i32 416, i32 13}
!132 = distinct !{null, !133, !"__already_done", i1 false, i1 false}
!133 = !{!"../kernel/kprobes.c", i32 589, i32 7}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../kernel/kprobes.c", i32 1199, i32 2}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../kernel/kprobes.c", i32 1216, i32 2}
!138 = !{ptr @kprobe_busy, !139, !"kprobe_busy", i1 false, i1 false}
!139 = !{!"../kernel/kprobes.c", i32 1261, i32 22}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../kernel/kprobes.c", i32 1556, i32 6}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../kernel/kprobes.c", i32 777, i32 2}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../kernel/kprobes.c", i32 711, i32 6}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../include/linux/kprobes.h", i32 229, i32 2}
!148 = !{ptr @.str.20, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.21, !147, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../include/linux/kprobes.h", i32 373, i32 9}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../include/linux/freelist.h", i32 106, i32 4}
!154 = !{ptr @.str.23, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @kprobe_blacklist, !156, !"kprobe_blacklist", i1 false, i1 false}
!156 = !{!"../kernel/kprobes.c", i32 80, i32 8}
!157 = !{ptr @.str.24, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../kernel/kprobes.c", i32 2580, i32 3}
!159 = !{ptr @.str.25, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @init_kprobes._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @init_kprobes._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @kprobe_exceptions_nb, !163, !"kprobe_exceptions_nb", i1 false, i1 false}
!163 = !{!"../kernel/kprobes.c", i32 1880, i32 30}
!164 = !{ptr @kprobe_module_nb, !165, !"kprobe_module_nb", i1 false, i1 false}
!165 = !{!"../kernel/kprobes.c", i32 2541, i32 30}
!166 = !{ptr @.str.26, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/kprobes.c", i32 979, i32 2}
!168 = !{ptr @.str.27, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.28, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../kernel/kprobes.c", i32 966, i32 15}
!171 = !{ptr @kprobe_sysctls, !172, !"kprobe_sysctls", i1 false, i1 false}
!172 = !{!"../kernel/kprobes.c", i32 964, i32 25}
!173 = !{ptr @sysctl_kprobes_optimization, !174, !"sysctl_kprobes_optimization", i1 false, i1 false}
!174 = !{!"../kernel/kprobes.c", i32 944, i32 12}
!175 = !{ptr @.str.29, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../kernel/kprobes.c", i32 943, i32 8}
!177 = !{ptr @.str.30, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @kprobe_sysctl_mutex, !176, !"kprobe_sysctl_mutex", i1 false, i1 false}
!179 = !{ptr @.str.31, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../kernel/kprobes.c", i32 907, i32 2}
!181 = !{ptr @.str.32, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @optimize_all_kprobes._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @optimize_all_kprobes._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.33, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../kernel/kprobes.c", i32 940, i32 2}
!186 = !{ptr @.str.34, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @unoptimize_all_kprobes._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @unoptimize_all_kprobes._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.35, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../kernel/kprobes.c", i32 2892, i32 27}
!191 = !{ptr @.str.36, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../kernel/kprobes.c", i32 2894, i32 22}
!193 = !{ptr @.str.37, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../kernel/kprobes.c", i32 2896, i32 22}
!195 = !{ptr @.str.38, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../kernel/kprobes.c", i32 2898, i32 22}
!197 = !{ptr @kprobes_fops, !198, !"kprobes_fops", i1 false, i1 false}
!198 = !{!"../kernel/kprobes.c", i32 2709, i32 1}
!199 = !{ptr @kprobes_sops, !200, !"kprobes_sops", i1 false, i1 false}
!200 = !{!"../kernel/kprobes.c", i32 2702, i32 36}
!201 = distinct !{null, !202, !"__warned", i1 false, i1 false}
!202 = !{!"../kernel/kprobes.c", i32 2689, i32 2}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../kernel/kprobes.c", i32 2693, i32 4}
!205 = !{ptr @.str.40, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../kernel/kprobes.c", i32 2636, i32 17}
!207 = !{ptr @.str.41, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../kernel/kprobes.c", i32 2638, i32 17}
!209 = !{ptr @.str.42, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../kernel/kprobes.c", i32 2644, i32 18}
!211 = !{ptr @.str.43, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../kernel/kprobes.c", i32 2646, i32 25}
!213 = !{ptr @.str.44, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../kernel/kprobes.c", i32 2648, i32 18}
!215 = !{ptr @.str.45, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../kernel/kprobes.c", i32 2653, i32 17}
!217 = !{ptr @.str.46, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../kernel/kprobes.c", i32 2654, i32 21}
!219 = !{ptr @.str.47, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../kernel/kprobes.c", i32 2654, i32 32}
!221 = !{ptr @.str.48, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../kernel/kprobes.c", i32 2655, i32 47}
!223 = !{ptr @.str.49, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../kernel/kprobes.c", i32 2656, i32 27}
!225 = !{ptr @.str.50, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../kernel/kprobes.c", i32 2657, i32 24}
!227 = !{ptr @fops_kp, !228, !"fops_kp", i1 false, i1 false}
!228 = !{!"../kernel/kprobes.c", i32 2882, i32 37}
!229 = !{ptr @.str.51, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../kernel/kprobes.c", i32 2790, i32 3}
!231 = !{ptr @.str.52, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @arm_all_kprobes._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @arm_all_kprobes._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.54, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../kernel/kprobes.c", i32 2793, i32 3}
!236 = !{ptr @arm_all_kprobes._entry.53, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @arm_all_kprobes._entry_ptr.55, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.56, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../kernel/kprobes.c", i32 2833, i32 3}
!240 = !{ptr @.str.57, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @disarm_all_kprobes._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @disarm_all_kprobes._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.59, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../kernel/kprobes.c", i32 2836, i32 3}
!245 = !{ptr @disarm_all_kprobes._entry.58, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @disarm_all_kprobes._entry_ptr.60, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @kprobe_blacklist_fops, !248, !"kprobe_blacklist_fops", i1 false, i1 false}
!248 = !{!"../kernel/kprobes.c", i32 2752, i32 1}
!249 = !{ptr @kprobe_blacklist_sops, !250, !"kprobe_blacklist_sops", i1 false, i1 false}
!250 = !{!"../kernel/kprobes.c", i32 2746, i32 36}
!251 = !{ptr @.str.61, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../kernel/kprobes.c", i32 2733, i32 17}
!253 = !{!"sp"}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{i64 2149344150}
!264 = !{i64 2149344416}
!265 = !{i64 2149764418}
!266 = !{!"branch_weights", i32 2000, i32 1}
!267 = !{i64 2155131811}
!268 = !{i64 2155131653}
!269 = !{i64 2148642349}
!270 = !{i64 2148556789, i64 2148556821, i64 2148556850, i64 2148556884, i64 2148556915, i64 2148556938}
!271 = !{i64 2149907866}
!272 = !{!"branch_weights", i32 1, i32 2000}
!273 = !{i64 2155270921}
!274 = !{i64 2155281673}
!275 = !{i64 2155293579}
!276 = !{i64 2155293751}
!277 = !{i64 2149804557}
!278 = !{i64 2149840637}
!279 = !{i64 2155320725, i64 2155321207, i64 2155320762, i64 2155320818, i64 2155320852, i64 2155320876, i64 2155320917, i64 2155320938, i64 2155320966, i64 2155321000}
!280 = !{i64 2154050163}
!281 = !{!"auto-init"}
!282 = !{i64 1038307, i64 1038331, i64 1038352, i64 1038369, i64 1038386}
!283 = !{i64 2148653791}
!284 = !{i64 2154055839}
!285 = !{i64 1062286, i64 1062307, i64 1062330, i64 1062349, i64 1062368}
!286 = !{i64 2154060072}
!287 = !{i64 2148639749}
!288 = !{i64 2148554324, i64 2148554356, i64 2148554385, i64 2148554419, i64 2148554450, i64 2148554473}
!289 = !{i64 2148639977}
!290 = !{i64 2148634779}
!291 = !{i64 2154043833}
!292 = !{i64 2148639308}
!293 = !{i64 2155380469}
!294 = !{i64 2155435071}
!295 = !{i8 0, i8 2}
