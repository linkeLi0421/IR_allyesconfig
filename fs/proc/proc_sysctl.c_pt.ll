; ModuleID = '/llk/IR_all_yes/fs/proc/proc_sysctl.c_pt.bc'
source_filename = "../fs/proc/proc_sysctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sysctl_vals\22, \22a\22\09"
module asm "\09.weak\09__crc_sysctl_vals\09\09\09\09"
module asm "\09.long\09__crc_sysctl_vals\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_vals\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sysctl_long_vals\22, \22a\22\09"
module asm "\09.weak\09__crc_sysctl_long_vals\09\09\09\09"
module asm "\09.long\09__crc_sysctl_long_vals\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_long_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_long_vals\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_long_vals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_sysctl_mount_point\22, \22a\22\09"
module asm "\09.weak\09__crc_register_sysctl_mount_point\09\09\09\09"
module asm "\09.long\09__crc_register_sysctl_mount_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_sysctl\22, \22a\22\09"
module asm "\09.weak\09__crc_register_sysctl\09\09\09\09"
module asm "\09.long\09__crc_register_sysctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_sysctl_paths\22, \22a\22\09"
module asm "\09.weak\09__crc_register_sysctl_paths\09\09\09\09"
module asm "\09.long\09__crc_register_sysctl_paths\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl_paths:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl_paths\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl_paths:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_sysctl_table\22, \22a\22\09"
module asm "\09.weak\09__crc_register_sysctl_table\09\09\09\09"
module asm "\09.long\09__crc_register_sysctl_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22register_sysctl_table\22\09\09\09\09\09"
module asm "__kstrtabns_register_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_sysctl_table\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_sysctl_table\09\09\09\09"
module asm "\09.long\09__crc_unregister_sysctl_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_sysctl_table\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_sysctl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ctl_table_root = type { %struct.ctl_table_set, ptr, ptr, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.2, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ctl_path = type { ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.68 }
%struct.atomic_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.user_namespace = type opaque
%struct.sysctl_alias = type { ptr, ptr }
%struct.ctl_table_poll = type { %struct.atomic_t, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ctl_node = type { %struct.rb_node, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.76, ptr, %union.anon.77, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.path = type { ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.spinlock, i32 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.75 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.48 }
%struct.llist_node = type { ptr }
%union.anon.48 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.35 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.35 = type { %struct.callback_head }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.file = type { %union.anon.21, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.21 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.22, %union.anon.23 }
%union.anon.22 = type { ptr }
%union.anon.23 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.dir_context = type { ptr, i64 }
%struct.anon.5 = type { i32, i32 }

@sysctl_vals = dso_local constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 -1, i32 0, i32 1, i32 2, i32 4, i32 100, i32 200, i32 1000, i32 3000, i32 2147483647, i32 65535], [52 x i8] zeroinitializer }, align 32
@__kstrtab_sysctl_vals = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_vals = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_vals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_vals to i32), ptr @__kstrtab_sysctl_vals, ptr @__kstrtabns_sysctl_vals }, section "___ksymtab+sysctl_vals", align 4
@sysctl_long_vals = dso_local constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2147483647], [20 x i8] zeroinitializer }, align 32
@__kstrtab_sysctl_long_vals = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_long_vals = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_long_vals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_long_vals to i32), ptr @__kstrtab_sysctl_long_vals, ptr @__kstrtabns_sysctl_long_vals }, section "___ksymtab_gpl+sysctl_long_vals", align 4
@sysctl_mount_point = dso_local global { [1 x %struct.ctl_table], [60 x i8] } zeroinitializer, align 32
@__kstrtab_register_sysctl_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl_mount_point to i32), ptr @__kstrtab_register_sysctl_mount_point, ptr @__kstrtabns_register_sysctl_mount_point }, section "___ksymtab+register_sysctl_mount_point", align 4
@sysctl_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sysctl_table_root = internal global { %struct.ctl_table_root, [32 x i8] } { %struct.ctl_table_root { %struct.ctl_table_set { ptr null, %struct.ctl_dir { %struct.ctl_table_header { %union.anon.2 { %struct.anon.3 { ptr @root_table, i32 0, i32 1, i32 1 } }, ptr null, ptr @root_table, ptr @sysctl_table_root, ptr @sysctl_table_root, ptr null, ptr null, %struct.hlist_head zeroinitializer }, %struct.rb_root zeroinitializer } }, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_register_sysctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl to i32), ptr @__kstrtab_register_sysctl, ptr @__kstrtabns_register_sysctl }, section "___ksymtab+register_sysctl", align 4
@__register_sysctl_init._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1430, ptr null, ptr null }, align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed when register_sysctl %s to %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__register_sysctl_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/proc/proc_sysctl.c\00", [42 x i8] zeroinitializer }, align 32
@__register_sysctl_init._entry_ptr = internal global ptr @__register_sysctl_init._entry, section ".printk_index", align 4
@__kstrtab_register_sysctl_paths = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl_paths = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl_paths = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl_paths to i32), ptr @__kstrtab_register_sysctl_paths, ptr @__kstrtabns_register_sysctl_paths }, section "___ksymtab+register_sysctl_paths", align 4
@register_sysctl_table.null_path = internal constant { [1 x %struct.ctl_path], [28 x i8] } zeroinitializer, align 32
@__kstrtab_register_sysctl_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_sysctl_table = external dso_local constant [0 x i8], align 1
@__ksymtab_register_sysctl_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_sysctl_table to i32), ptr @__kstrtab_register_sysctl_table, ptr @__kstrtabns_register_sysctl_table }, section "___ksymtab+register_sysctl_table", align 4
@__kstrtab_unregister_sysctl_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_sysctl_table = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_sysctl_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_sysctl_table to i32), ptr @__kstrtab_unregister_sysctl_table, ptr @__kstrtabns_unregister_sysctl_table }, section "___ksymtab+unregister_sysctl_table", align 4
@root_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.32, ptr null, i32 0, i16 16749, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@proc_sys_dir_operations = internal constant %struct.inode_operations { ptr @proc_sys_lookup, ptr null, ptr @proc_sys_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_sys_setattr, ptr @proc_sys_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_sys_dir_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_sys_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saved_command_line = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to allocate copy of command line\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.do_sysctl_args = private unnamed_addr constant [15 x i8] c"do_sysctl_args\00", align 1
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Setting sysctl args\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sysctl_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Not a file\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"No data\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"No maxlen\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No proc_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bogus .mode 0%o\00", [16 x i8] zeroinitializer }, align 32
@sysctl_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013sysctl table check failed: %s/%s %pV\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysctl_err\00", [21 x i8] zeroinitializer }, align 32
@sysctl_err._entry_ptr = internal global ptr @sysctl_err._entry, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"array not allowed\00", [46 x i8] zeroinitializer }, align 32
@get_subdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013sysctl could not get directory: \00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"get_subdir\00", [21 x i8] zeroinitializer }, align 32
@get_subdir._entry_ptr = internal global ptr @get_subdir._entry, section ".printk_index", align 4
@get_subdir._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c%*.*s %ld\0A\00", [19 x i8] zeroinitializer }, align 32
@get_subdir._entry_ptr.19 = internal global ptr @get_subdir._entry.17, section ".printk_index", align 4
@sysctl_print_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s/\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sysctl_print_dir\00", [47 x i8] zeroinitializer }, align 32
@sysctl_print_dir._entry_ptr = internal global ptr @sysctl_print_dir._entry, section ".printk_index", align 4
@insert_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013sysctl duplicate entry: \00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"insert_entry\00", [19 x i8] zeroinitializer }, align 32
@insert_entry._entry_ptr = internal global ptr @insert_entry._entry, section ".printk_index", align 4
@insert_entry._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s\0A\00", [26 x i8] zeroinitializer }, align 32
@insert_entry._entry_ptr.26 = internal global ptr @insert_entry._entry.24, section ".printk_index", align 4
@put_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013sysctl link missing during unregister: \00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"put_links\00", [22 x i8] zeroinitializer }, align 32
@put_links._entry_ptr = internal global ptr @put_links._entry, section ".printk_index", align 4
@put_links._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.28, ptr @.str.2, i32 1687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@put_links._entry_ptr.30 = internal global ptr @put_links._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@proc_sys_dentry_operations = internal constant %struct.dentry_operations { ptr @proc_sys_revalidate, ptr null, ptr null, ptr @proc_sys_compare, ptr @proc_sys_delete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [76 x i8] undef }, align 128
@proc_sys_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr @proc_sys_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_sys_setattr, ptr @proc_sys_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_sys_file_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr null, ptr @proc_sys_read, ptr @proc_sys_write, ptr null, ptr null, ptr null, ptr @proc_sys_poll, ptr null, ptr null, ptr null, i32 0, ptr @proc_sys_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@proc_sys_compare.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@proc_sys_fill_cache.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sysctl\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"proc\00", [27 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Failed to find procfs to set sysctl from command line\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_sysctl_arg\00", [45 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr = internal global ptr @process_sysctl_arg._entry, section ".printk_index", align 4
@process_sysctl_arg._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Failed to mount procfs to set sysctl from command line\0A\00", [38 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.45 = internal global ptr @process_sysctl_arg._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys/%s\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to allocate path for %s\0A\00", [60 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.42, ptr @.str.2, i32 1873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Failed to set sysctl parameter '%s=%s': parameter not found\0A\00", [33 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.50 = internal global ptr @process_sysctl_arg._entry.48, section ".printk_index", align 4
@process_sysctl_arg._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.42, ptr @.str.2, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013Failed to set sysctl parameter '%s=%s': permission denied (read-only?)\0A\00", [54 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.53 = internal global ptr @process_sysctl_arg._entry.51, section ".printk_index", align 4
@process_sysctl_arg._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.42, ptr @.str.2, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Error %pe opening proc file to set sysctl parameter '%s=%s'\0A\00", [33 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.56 = internal global ptr @process_sysctl_arg._entry.54, section ".printk_index", align 4
@process_sysctl_arg._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.42, ptr @.str.2, i32 1887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Failed to set sysctl parameter '%s=%s': invalid value\0A\00", [39 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.59 = internal global ptr @process_sysctl_arg._entry.57, section ".printk_index", align 4
@process_sysctl_arg._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.42, ptr @.str.2, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013Error %pe writing to proc file to set sysctl parameter '%s=%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.62 = internal global ptr @process_sysctl_arg._entry.60, section ".printk_index", align 4
@process_sysctl_arg._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.42, ptr @.str.2, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013Wrote only %zd bytes of %d writing to proc file %s to set sysctl parameter '%s=%s\0A\00", [43 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.65 = internal global ptr @process_sysctl_arg._entry.63, section ".printk_index", align 4
@process_sysctl_arg._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.42, ptr @.str.2, i32 1899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Error %pe closing proc file to set sysctl parameter '%s=%s\0A\00", [34 x i8] zeroinitializer }, align 32
@process_sysctl_arg._entry_ptr.68 = internal global ptr @process_sysctl_arg._entry.66, section ".printk_index", align 4
@sysctl_aliases = internal constant { [6 x %struct.sysctl_alias], [48 x i8] } { [6 x %struct.sysctl_alias] [%struct.sysctl_alias { ptr @.str.69, ptr @.str.70 }, %struct.sysctl_alias { ptr @.str.71, ptr @.str.72 }, %struct.sysctl_alias { ptr @.str.73, ptr @.str.74 }, %struct.sysctl_alias { ptr @.str.75, ptr @.str.76 }, %struct.sysctl_alias { ptr @.str.77, ptr @.str.78 }, %struct.sysctl_alias zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hardlockup_all_cpu_backtrace\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kernel.hardlockup_all_cpu_backtrace\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hung_task_panic\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel.hung_task_panic\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"numa_zonelist_order\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vm.numa_zonelist_order\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"softlockup_all_cpu_backtrace\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kernel.softlockup_all_cpu_backtrace\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"softlockup_panic\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel.softlockup_panic\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967283, i64 4294967294]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"sysctl_vals\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 29, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"sysctl_long_vals\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 32, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"sysctl_mount_point\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 37, i32 18 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"sysctl_lock\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"sysctl_table_root\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 87, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1430, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"null_path\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1643, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"root_table\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 80, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1766, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [29 x i8] c"proc_sys_dir_file_operations\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 877, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1912, i32 9 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1914, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 98, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1136, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1150, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1152, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1157, i32 35 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1160, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1106, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1120, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1039, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1041, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 110, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 182, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 184, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1685, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1687, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 87, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 82, i32 15 }
@___asan_gen_.214 = private unnamed_addr constant [25 x i8] c"proc_sys_file_operations\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 867, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 230, i32 6 }
@___asan_gen_.221 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 214, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 939, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 3566, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 3571, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 699, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1822, i32 21 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1850, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1852, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1858, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1863, i32 31 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1865, i32 9 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1872, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1875, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1878, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1886, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1889, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1892, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1898, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [15 x i8] c"sysctl_aliases\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1788, i32 34 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1789, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1789, i32 35 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1790, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1790, i32 24 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1791, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1791, i32 28 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1792, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1792, i32 35 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1793, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.338 = private constant [25 x i8] c"../fs/proc/proc_sysctl.c\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 1793, i32 25 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @__ksymtab_register_sysctl, ptr @__ksymtab_register_sysctl_mount_point, ptr @__ksymtab_register_sysctl_paths, ptr @__ksymtab_register_sysctl_table, ptr @__ksymtab_sysctl_long_vals, ptr @__ksymtab_sysctl_vals, ptr @__ksymtab_unregister_sysctl_table, ptr @__register_sysctl_init._entry, ptr @__register_sysctl_init._entry_ptr, ptr @get_subdir._entry, ptr @get_subdir._entry.17, ptr @get_subdir._entry_ptr, ptr @get_subdir._entry_ptr.19, ptr @insert_entry._entry, ptr @insert_entry._entry.24, ptr @insert_entry._entry_ptr, ptr @insert_entry._entry_ptr.26, ptr @process_sysctl_arg._entry, ptr @process_sysctl_arg._entry.43, ptr @process_sysctl_arg._entry.48, ptr @process_sysctl_arg._entry.51, ptr @process_sysctl_arg._entry.54, ptr @process_sysctl_arg._entry.57, ptr @process_sysctl_arg._entry.60, ptr @process_sysctl_arg._entry.63, ptr @process_sysctl_arg._entry.66, ptr @process_sysctl_arg._entry_ptr, ptr @process_sysctl_arg._entry_ptr.45, ptr @process_sysctl_arg._entry_ptr.50, ptr @process_sysctl_arg._entry_ptr.53, ptr @process_sysctl_arg._entry_ptr.56, ptr @process_sysctl_arg._entry_ptr.59, ptr @process_sysctl_arg._entry_ptr.62, ptr @process_sysctl_arg._entry_ptr.65, ptr @process_sysctl_arg._entry_ptr.68, ptr @put_links._entry, ptr @put_links._entry.29, ptr @put_links._entry_ptr, ptr @put_links._entry_ptr.30, ptr @sysctl_err._entry, ptr @sysctl_err._entry_ptr, ptr @sysctl_print_dir._entry, ptr @sysctl_print_dir._entry_ptr, ptr @sysctl_vals, ptr @sysctl_long_vals, ptr @sysctl_mount_point, ptr @sysctl_lock, ptr @sysctl_table_root, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @register_sysctl_table.null_path, ptr @root_table, ptr @.str.3, ptr @proc_sys_dir_file_operations, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @proc_sys_file_operations, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @proc_sys_fill_cache.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @sysctl_aliases, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_vals to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_long_vals to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_mount_point to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_table_root to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_sysctl_table.null_path to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sys_dir_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_subdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_subdir._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_print_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @insert_entry._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @put_links._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sys_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_sys_fill_cache.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_sysctl_arg._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_aliases to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_sysctl_mount_point(ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__register_sysctl_table(ptr noundef nonnull @sysctl_table_root, ptr noundef %path, ptr noundef nonnull @sysctl_mount_point) #20
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_sysctl(ptr noundef %path, ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__register_sysctl_table(ptr noundef nonnull @sysctl_table_root, ptr noundef %path, ptr noundef %table)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_sys_poll_notify(ptr noundef %poll) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %poll, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %poll, i32 noundef 4) #20
  tail call void @llvm.prefetch.p0(ptr nonnull %poll, i32 1, i32 3, i32 1) #20
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %poll, ptr nonnull %poll, i32 1, ptr nonnull elementtype(i32) %poll) #20, !srcloc !200
  %wait = getelementptr inbounds %struct.ctl_table_poll, ptr %poll, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #20
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_sys_evict_inode(ptr noundef %inode, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %pprev.i.i = getelementptr i8, ptr %inode, i32 -12
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %sibling_inodes = getelementptr i8, ptr %inode, i32 -16
  %2 = ptrtoint ptr %sibling_inodes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sibling_inodes, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  %count = getelementptr inbounds %struct.anon.3, ptr %head, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp ne i32 %dec, 0
  %tobool1.not = icmp eq ptr %head, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %hlist_del_init_rcu.exit.if.end6_crit_edge, label %do.end

hlist_del_init_rcu.exit.if.end6_crit_edge:        ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end6

do.end:                                           ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kvfree_call_rcu(ptr noundef nonnull %head, ptr noundef null) #20
  br label %if.end6

if.end6:                                          ; preds = %do.end, %hlist_del_init_rcu.exit.if.end6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__register_sysctl_table(ptr noundef %set, ptr noundef %path, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1
  %root1 = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root1, align 4
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %tobool.not100 = icmp eq ptr %3, null
  br i1 %tobool.not100, label %entry.if.end8.i.i_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end8.i.i

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %nr_entries.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %entry4.0101 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %table, %entry.for.body_crit_edge ]
  %inc = add i32 %nr_entries.0102, 1
  %incdec.ptr = getelementptr %struct.ctl_table, ptr %entry4.0101, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %phi.bo = shl i32 %inc, 4
  %phi.bo141 = add i32 %phi.bo, 44
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %for.end.loopexit, %entry.if.end8.i.i_crit_edge
  %nr_entries.0.lcssa = phi i32 [ 44, %entry.if.end8.i.i_crit_edge ], [ %phi.bo141, %for.end.loopexit ]
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %nr_entries.0.lcssa, i32 noundef 3520) #23
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.cleanup36_crit_edge, label %if.end

if.end8.i.i.cleanup36_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup36

if.end:                                           ; preds = %if.end8.i.i
  %add.ptr = getelementptr %struct.ctl_table_header, ptr %call9.i.i, i32 1
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %table, ptr %call9.i.i, align 128
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %table, ptr %ctl_table_arg.i, align 4
  %used.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %used.i, align 4
  %count.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %count.i, align 8
  %nreg.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %nreg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %nreg.i, align 4
  %unregistering.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %unregistering.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %unregistering.i, align 16
  %root1.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %root1.i, align 8
  %set2.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %set2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %set, ptr %set2.i, align 4
  %parent.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %parent.i, align 32
  %node3.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %node3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %node3.i, align 4
  %inodes.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %inodes.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %inodes.i, align 8
  %17 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %table, align 4
  %tobool5.not24.i = icmp eq ptr %18, null
  br i1 %tobool5.not24.i, label %if.end.if.end9_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %entry4.026.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %table, %if.end.for.body.i_crit_edge ]
  %node.addr.025.i = phi ptr [ %incdec.ptr6.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %if.end.for.body.i_crit_edge ]
  %header.i = getelementptr inbounds %struct.ctl_node, ptr %node.addr.025.i, i32 0, i32 1
  %19 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i, ptr %header.i, align 4
  %incdec.ptr.i = getelementptr %struct.ctl_table, ptr %entry4.026.i, i32 1
  %incdec.ptr6.i = getelementptr %struct.ctl_node, ptr %node.addr.025.i, i32 1
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool5.not.i = icmp eq ptr %21, null
  br i1 %tobool5.not.i, label %init_header.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

init_header.exit:                                 ; preds = %for.body.i
  %22 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %table, align 4
  %tobool.not106.i = icmp eq ptr %.pr, null
  br i1 %tobool.not106.i, label %init_header.exit.if.end9_crit_edge, label %init_header.exit.for.body.i69_crit_edge

init_header.exit.for.body.i69_crit_edge:          ; preds = %init_header.exit
  br label %for.body.i69

init_header.exit.if.end9_crit_edge:               ; preds = %init_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

for.body.i69:                                     ; preds = %for.inc.i.for.body.i69_crit_edge, %init_header.exit.for.body.i69_crit_edge
  %err.0114.i = phi i32 [ %err.5.i, %for.inc.i.for.body.i69_crit_edge ], [ 0, %init_header.exit.for.body.i69_crit_edge ]
  %table.addr.0107.i = phi ptr [ %incdec.ptr.i72, %for.inc.i.for.body.i69_crit_edge ], [ %table, %init_header.exit.for.body.i69_crit_edge ]
  %child.i = getelementptr inbounds %struct.ctl_table, ptr %table.addr.0107.i, i32 0, i32 4
  %23 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %child.i, align 4
  %tobool1.not.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i, label %for.body.i69.if.end.i_crit_edge, label %if.then.i

for.body.i69.if.end.i_crit_edge:                  ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.7) #20
  %or.i = or i32 %err.0114.i, -22
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i69.if.end.i_crit_edge
  %err.1.i = phi i32 [ %or.i, %if.then.i ], [ %err.0114.i, %for.body.i69.if.end.i_crit_edge ]
  %proc_handler.i = getelementptr inbounds %struct.ctl_table, ptr %table.addr.0107.i, i32 0, i32 5
  %25 = ptrtoint ptr %proc_handler.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %proc_handler.i, align 4
  %cmp.i = icmp eq ptr %26, @proc_dostring
  %cmp3.i = icmp eq ptr %26, @proc_dointvec
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  %cmp6.i = icmp eq ptr %26, @proc_douintvec
  %or.cond97.i = or i1 %cmp6.i, %or.cond.i
  %cmp9.i = icmp eq ptr %26, @proc_douintvec_minmax
  %or.cond98.i = or i1 %cmp9.i, %or.cond97.i
  %cmp12.i = icmp eq ptr %26, @proc_dointvec_minmax
  %or.cond99.i = or i1 %cmp12.i, %or.cond98.i
  %cmp15.i = icmp eq ptr %26, @proc_dou8vec_minmax
  %or.cond100.i = or i1 %cmp15.i, %or.cond99.i
  %cmp18.i = icmp eq ptr %26, @proc_dointvec_jiffies
  %or.cond101.i = or i1 %cmp18.i, %or.cond100.i
  %cmp21.i = icmp eq ptr %26, @proc_dointvec_userhz_jiffies
  %or.cond102.i = or i1 %cmp21.i, %or.cond101.i
  %cmp24.i = icmp eq ptr %26, @proc_dointvec_ms_jiffies
  %or.cond103.i = or i1 %cmp24.i, %or.cond102.i
  %cmp27.i = icmp eq ptr %26, @proc_doulongvec_minmax
  %or.cond104.i = or i1 %cmp27.i, %or.cond103.i
  %cmp30.i = icmp eq ptr %26, @proc_doulongvec_ms_jiffies_minmax
  %or.cond105.i = or i1 %cmp30.i, %or.cond104.i
  br i1 %or.cond105.i, label %if.then31.i, label %if.end.i.if.end44.i_crit_edge

if.end.i.if.end44.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end44.i

if.then31.i:                                      ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.addr.0107.i, i32 0, i32 1
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %tobool32.not.i = icmp eq ptr %28, null
  br i1 %tobool32.not.i, label %if.then33.i, label %if.then31.i.if.end36.i_crit_edge

if.then31.i.if.end36.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.8) #20
  %or35.i = or i32 %err.1.i, -22
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.then31.i.if.end36.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %if.then31.i.if.end36.i_crit_edge ], [ %or35.i, %if.then33.i ]
  %maxlen.i = getelementptr inbounds %struct.ctl_table, ptr %table.addr.0107.i, i32 0, i32 2
  %29 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maxlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool37.not.i = icmp eq i32 %30, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.else.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.9) #20
  %or40.i = or i32 %err.2.i, -22
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end36.i
  %31 = ptrtoint ptr %proc_handler.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proc_handler.i, align 4
  %cmp.i.i70 = icmp eq ptr %32, @proc_douintvec
  %cmp2.i.i = icmp eq ptr %32, @proc_douintvec_minmax
  %or.cond.i.i = or i1 %cmp.i.i70, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i71, label %if.else.i.if.end5.i.i_crit_edge

if.else.i.if.end5.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i.i

if.then.i.i71:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp3.not.i.i = icmp eq i32 %30, 4
  br i1 %cmp3.not.i.i, label %if.then.i.i71.if.end5thread-pre-split.i.i_crit_edge, label %if.then4.i.i

if.then.i.i71.if.end5thread-pre-split.i.i_crit_edge: ; preds = %if.then.i.i71
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5thread-pre-split.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i71
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.14) #20
  br label %if.end5thread-pre-split.i.i

if.end5thread-pre-split.i.i:                      ; preds = %if.then4.i.i, %if.then.i.i71.if.end5thread-pre-split.i.i_crit_edge
  %err.0.ph.i.i = phi i32 [ 0, %if.then.i.i71.if.end5thread-pre-split.i.i_crit_edge ], [ -22, %if.then4.i.i ]
  %33 = ptrtoint ptr %proc_handler.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i.i = load ptr, ptr %proc_handler.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end5thread-pre-split.i.i, %if.else.i.if.end5.i.i_crit_edge
  %34 = phi ptr [ %.pr.i.i, %if.end5thread-pre-split.i.i ], [ %32, %if.else.i.if.end5.i.i_crit_edge ]
  %err.0.i.i = phi i32 [ %err.0.ph.i.i, %if.end5thread-pre-split.i.i ], [ 0, %if.else.i.if.end5.i.i_crit_edge ]
  %cmp7.i.i = icmp eq ptr %34, @proc_dou8vec_minmax
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.end5.i.i.sysctl_check_table_array.exit.i_crit_edge

if.end5.i.i.sysctl_check_table_array.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_check_table_array.exit.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %35 = ptrtoint ptr %maxlen.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maxlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp10.not.i.i = icmp eq i32 %36, 1
  br i1 %cmp10.not.i.i, label %if.then8.i.i.sysctl_check_table_array.exit.i_crit_edge, label %if.then11.i.i

if.then8.i.i.sysctl_check_table_array.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_check_table_array.exit.i

if.then11.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.14) #20
  br label %sysctl_check_table_array.exit.i

sysctl_check_table_array.exit.i:                  ; preds = %if.then11.i.i, %if.then8.i.i.sysctl_check_table_array.exit.i_crit_edge, %if.end5.i.i.sysctl_check_table_array.exit.i_crit_edge
  %err.1.i.i = phi i32 [ -22, %if.then11.i.i ], [ %err.0.i.i, %if.then8.i.i.sysctl_check_table_array.exit.i_crit_edge ], [ %err.0.i.i, %if.end5.i.i.sysctl_check_table_array.exit.i_crit_edge ]
  %or42.i = or i32 %err.1.i.i, %err.2.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %sysctl_check_table_array.exit.i, %if.then38.i, %if.end.i.if.end44.i_crit_edge
  %err.3.i = phi i32 [ %or42.i, %sysctl_check_table_array.exit.i ], [ %or40.i, %if.then38.i ], [ %err.1.i, %if.end.i.if.end44.i_crit_edge ]
  %37 = ptrtoint ptr %proc_handler.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %proc_handler.i, align 4
  %tobool46.not.i = icmp eq ptr %38, null
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end44.i.if.end50.i_crit_edge

if.end44.i.if.end50.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end50.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.10) #20
  %or49.i = or i32 %err.3.i, -22
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end50.i_crit_edge
  %err.4.i = phi i32 [ %err.3.i, %if.end44.i.if.end50.i_crit_edge ], [ %or49.i, %if.then47.i ]
  %mode.i = getelementptr inbounds %struct.ctl_table, ptr %table.addr.0107.i, i32 0, i32 3
  %39 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mode.i, align 4
  %conv.i = zext i16 %40 to i32
  %and.i = and i32 %conv.i, 438
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %conv.i)
  %cmp53.not.i = icmp eq i32 %and.i, %conv.i
  br i1 %cmp53.not.i, label %if.end50.i.for.inc.i_crit_edge, label %if.then55.i

if.end50.i.for.inc.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, ptr, ptr, ...) @sysctl_err(ptr noundef %path, ptr noundef %table.addr.0107.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #20
  %or59.i = or i32 %err.4.i, -22
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then55.i, %if.end50.i.for.inc.i_crit_edge
  %err.5.i = phi i32 [ %or59.i, %if.then55.i ], [ %err.4.i, %if.end50.i.for.inc.i_crit_edge ]
  %incdec.ptr.i72 = getelementptr %struct.ctl_table, ptr %table.addr.0107.i, i32 1
  %41 = ptrtoint ptr %incdec.ptr.i72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %incdec.ptr.i72, align 4
  %tobool.not.i73 = icmp eq ptr %42, null
  br i1 %tobool.not.i73, label %sysctl_check_table.exit, label %for.inc.i.for.body.i69_crit_edge

for.inc.i.for.body.i69_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i69

sysctl_check_table.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %tobool7.not = icmp eq i32 %err.5.i, 0
  br i1 %tobool7.not, label %sysctl_check_table.exit.if.end9_crit_edge, label %sysctl_check_table.exit.fail_crit_edge

sysctl_check_table.exit.fail_crit_edge:           ; preds = %sysctl_check_table.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %fail

sysctl_check_table.exit.if.end9_crit_edge:        ; preds = %sysctl_check_table.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end9

if.end9:                                          ; preds = %sysctl_check_table.exit.if.end9_crit_edge, %init_header.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %nreg = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %43 = ptrtoint ptr %nreg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nreg, align 4
  %inc12 = add i32 %44, 1
  store i32 %inc12, ptr %nreg, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %tobool14.not103 = icmp eq ptr %path, null
  br i1 %tobool14.not103, label %if.end9.for.end29_crit_edge, label %if.end9.for.body15_crit_edge

if.end9.for.body15_crit_edge:                     ; preds = %if.end9
  br label %for.body15

if.end9.for.end29_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end29

for.body15:                                       ; preds = %for.inc28.for.body15_crit_edge, %if.end9.for.body15_crit_edge
  %dir3.0105 = phi ptr [ %dir3.1.ph, %for.inc28.for.body15_crit_edge ], [ %dir, %if.end9.for.body15_crit_edge ]
  %name.0104 = phi ptr [ %nextname.0, %for.inc28.for.body15_crit_edge ], [ %path, %if.end9.for.body15_crit_edge ]
  %call16 = tail call ptr @strchr(ptr noundef nonnull %name.0104, i32 noundef 47)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast = ptrtoint ptr %call16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %name.0104 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %incdec.ptr19 = getelementptr i8, ptr %call16, i32 1
  br label %if.end21

if.else:                                          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #22
  %call20 = tail call i32 @strlen(ptr noundef nonnull %name.0104) #24
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %nextname.0 = phi ptr [ %incdec.ptr19, %if.then18 ], [ null, %if.else ]
  %namelen.0 = phi i32 [ %sub.ptr.sub, %if.then18 ], [ %call20, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %namelen.0)
  %cmp = icmp eq i32 %namelen.0, 0
  br i1 %cmp, label %if.end21.for.inc28_crit_edge, label %if.end23

if.end21.for.inc28_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc28

if.end23:                                         ; preds = %if.end21
  %set1.i = getelementptr inbounds %struct.ctl_table_header, ptr %dir3.0105, i32 0, i32 4
  %45 = ptrtoint ptr %set1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set1.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %root.i.i.i = getelementptr inbounds %struct.ctl_dir, ptr %dir3.0105, i32 0, i32 1
  %47 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %node.027.i.i.i = load ptr, ptr %root.i.i.i, align 4
  %tobool.not28.i.i.i = icmp eq ptr %node.027.i.i.i, null
  br i1 %tobool.not28.i.i.i, label %if.end23.if.end5.i_crit_edge, label %if.end23.while.body.i.i.i_crit_edge

if.end23.while.body.i.i.i_crit_edge:              ; preds = %if.end23
  br label %while.body.i.i.i

if.end23.if.end5.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %if.end23.while.body.i.i.i_crit_edge
  %node.029.i.i.i = phi ptr [ %node.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %node.027.i.i.i, %if.end23.while.body.i.i.i_crit_edge ]
  %header.i.i.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %header.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %header.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %node2.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %49, i32 0, i32 6
  %52 = ptrtoint ptr %node2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %node2.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %node.029.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 4
  %arrayidx.i.i.i = getelementptr %struct.ctl_table, ptr %51, i32 %sub.ptr.div.i.i.i
  %54 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call i32 @strlen(ptr noundef %55) #25
  %56 = tail call i32 @llvm.smin.i32(i32 %namelen.0, i32 %call.i.i.i) #20
  %call.i.i.i.i = tail call i32 @memcmp(ptr noundef nonnull %name.0104, ptr noundef %55, i32 noundef %56) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp2.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  %sub.i.i.i.i74 = sub i32 %namelen.0, %call.i.i.i
  %cmp.0.i.i.i.i = select i1 %cmp2.i.i.i.i, i32 %sub.i.i.i.i74, i32 %call.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %cmp.0.i.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i.i, i32 0, i32 2
  br label %cleanup.i.i.i

if.else.i.i.i:                                    ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i.i)
  %cmp6.not.i.i.i = icmp eq i32 %cmp.0.i.i.i.i, 0
  br i1 %cmp6.not.i.i.i, label %find_entry.exit.i.i, label %if.then7.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i.i.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i.i, i32 0, i32 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then7.i.i.i, %if.then.i.i.i
  %node.1.in.i.i.i = phi ptr [ %rb_left.i.i.i, %if.then.i.i.i ], [ %rb_right.i.i.i, %if.then7.i.i.i ]
  %57 = ptrtoint ptr %node.1.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %node.0.i.i.i = load ptr, ptr %node.1.in.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %node.0.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cleanup.i.i.i.if.end5.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i.i

cleanup.i.i.i.if.end5.i_crit_edge:                ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

find_entry.exit.i.i:                              ; preds = %if.else.i.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i, label %find_entry.exit.i.i.if.end5.i_crit_edge, label %if.end.i.i76

find_entry.exit.i.i.if.end5.i_crit_edge:          ; preds = %find_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

if.end.i.i76:                                     ; preds = %find_entry.exit.i.i
  %mode.i.i = getelementptr %struct.ctl_table, ptr %51, i32 %sub.ptr.div.i.i.i, i32 3
  %58 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %mode.i.i, align 4
  %60 = and i16 %59, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %60)
  %cmp.i.i75 = icmp eq i16 %60, 16384
  br i1 %cmp.i.i75, label %find_subdir.exit.i, label %if.end.i.i76.do.end.i_crit_edge

if.end.i.i76.do.end.i_crit_edge:                  ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

find_subdir.exit.i:                               ; preds = %if.end.i.i76
  %cmp.i64.i = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.end.i77, label %find_subdir.exit.i.found.i_crit_edge

find_subdir.exit.i.found.i_crit_edge:             ; preds = %find_subdir.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %found.i

if.end.i77:                                       ; preds = %find_subdir.exit.i
  %cmp.not.i = icmp eq ptr %49, inttoptr (i32 -2 to ptr)
  br i1 %cmp.not.i, label %if.end.i77.if.end5.i_crit_edge, label %if.end.i77.failed.i_crit_edge

if.end.i77.failed.i_crit_edge:                    ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #22
  br label %failed.i

if.end.i77.if.end5.i_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i77.if.end5.i_crit_edge, %find_entry.exit.i.i.if.end5.i_crit_edge, %cleanup.i.i.i.if.end5.i_crit_edge, %if.end23.if.end5.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %add1.i.i = add i32 %namelen.0, 137
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i.i, i32 noundef 3520) #23
  %tobool.not.i65.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i65.i, label %new_dir.exit.thread.i, label %if.end.i68.i

new_dir.exit.thread.i:                            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  br label %do.end.i

if.end.i68.i:                                     ; preds = %if.end5.i
  %add.ptr.i.i = getelementptr %struct.ctl_dir, ptr %call9.i.i.i.i, i32 1
  %add.ptr2.i.i = getelementptr %struct.ctl_dir, ptr %call9.i.i.i.i, i32 1, i32 0, i32 1
  %add.ptr3.i.i = getelementptr %struct.ctl_dir, ptr %call9.i.i.i.i, i32 2, i32 0, i32 7
  %61 = call ptr @memcpy(ptr %add.ptr3.i.i, ptr %name.0104, i32 %namelen.0)
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr3.i.i, i32 %namelen.0
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx.i.i, align 1
  %63 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr3.i.i, ptr %add.ptr2.i.i, align 64
  %mode.i66.i = getelementptr %struct.ctl_dir, ptr %call9.i.i.i.i, i32 1, i32 0, i32 4
  %64 = ptrtoint ptr %mode.i66.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 16749, ptr %mode.i66.i, align 4
  %root.i.i = getelementptr inbounds %struct.ctl_table_set, ptr %46, i32 0, i32 1, i32 0, i32 3
  %65 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %root.i.i, align 4
  %67 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr2.i.i, ptr %call9.i.i.i.i, align 128
  %ctl_table_arg.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 2
  %68 = ptrtoint ptr %ctl_table_arg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr2.i.i, ptr %ctl_table_arg.i.i.i, align 4
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %used.i.i.i, align 4
  %count.i.i.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %count.i.i.i, align 8
  %nreg.i.i.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %nreg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %nreg.i.i.i, align 4
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %unregistering.i.i.i, align 16
  %root1.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %root1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %66, ptr %root1.i.i.i, align 8
  %set2.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 4
  %74 = ptrtoint ptr %set2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %46, ptr %set2.i.i.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 5
  %75 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %parent.i.i.i, align 32
  %node3.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %node3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i.i, ptr %node3.i.i.i, align 4
  %inodes.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i.i, i32 0, i32 7
  %77 = ptrtoint ptr %inodes.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %inodes.i.i.i, align 8
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i68.i
  %entry4.026.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr2.i.i, %if.end.i68.i ]
  %node.addr.025.i.i.i = phi ptr [ %incdec.ptr6.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i, %if.end.i68.i ]
  %header.i.i69.i = getelementptr inbounds %struct.ctl_node, ptr %node.addr.025.i.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %header.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call9.i.i.i.i, ptr %header.i.i69.i, align 4
  %incdec.ptr.i.i.i = getelementptr %struct.ctl_table, ptr %entry4.026.i.i.i, i32 1
  %incdec.ptr6.i.i.i = getelementptr %struct.ctl_node, ptr %node.addr.025.i.i.i, i32 1
  %79 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %incdec.ptr.i.i.i, align 4
  %tobool5.not.i.i.i = icmp eq ptr %80, null
  br i1 %tobool5.not.i.i.i, label %new_dir.exit.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i.i

new_dir.exit.i:                                   ; preds = %for.body.i.i.i
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %81 = ptrtoint ptr %root.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %node.027.i.i72.i = load ptr, ptr %root.i.i.i, align 4
  %tobool.not28.i.i73.i = icmp eq ptr %node.027.i.i72.i, null
  br i1 %tobool.not28.i.i73.i, label %new_dir.exit.i.if.end17.i_crit_edge, label %new_dir.exit.i.while.body.i.i88.i_crit_edge

new_dir.exit.i.while.body.i.i88.i_crit_edge:      ; preds = %new_dir.exit.i
  br label %while.body.i.i88.i

new_dir.exit.i.if.end17.i_crit_edge:              ; preds = %new_dir.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

while.body.i.i88.i:                               ; preds = %cleanup.i.i98.i.while.body.i.i88.i_crit_edge, %new_dir.exit.i.while.body.i.i88.i_crit_edge
  %node.029.i.i74.i = phi ptr [ %node.0.i.i96.i, %cleanup.i.i98.i.while.body.i.i88.i_crit_edge ], [ %node.027.i.i72.i, %new_dir.exit.i.while.body.i.i88.i_crit_edge ]
  %header.i.i75.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i.i74.i, i32 0, i32 1
  %82 = ptrtoint ptr %header.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %header.i.i75.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %node2.i.i76.i = getelementptr inbounds %struct.ctl_table_header, ptr %83, i32 0, i32 6
  %86 = ptrtoint ptr %node2.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %node2.i.i76.i, align 4
  %sub.ptr.lhs.cast.i.i77.i = ptrtoint ptr %node.029.i.i74.i to i32
  %sub.ptr.rhs.cast.i.i78.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i.i79.i = sub i32 %sub.ptr.lhs.cast.i.i77.i, %sub.ptr.rhs.cast.i.i78.i
  %sub.ptr.div.i.i80.i = ashr exact i32 %sub.ptr.sub.i.i79.i, 4
  %arrayidx.i.i81.i = getelementptr %struct.ctl_table, ptr %85, i32 %sub.ptr.div.i.i80.i
  %88 = ptrtoint ptr %arrayidx.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i.i81.i, align 4
  %call.i.i82.i = tail call i32 @strlen(ptr noundef %89) #25
  %90 = tail call i32 @llvm.smin.i32(i32 %namelen.0, i32 %call.i.i82.i) #20
  %call.i.i.i83.i = tail call i32 @memcmp(ptr noundef nonnull %name.0104, ptr noundef %89, i32 noundef %90) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i83.i)
  %cmp2.i.i.i84.i = icmp eq i32 %call.i.i.i83.i, 0
  %sub.i.i.i85.i = sub i32 %namelen.0, %call.i.i82.i
  %cmp.0.i.i.i86.i = select i1 %cmp2.i.i.i84.i, i32 %sub.i.i.i85.i, i32 %call.i.i.i83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i86.i)
  %cmp5.i.i87.i = icmp slt i32 %cmp.0.i.i.i86.i, 0
  br i1 %cmp5.i.i87.i, label %if.then.i.i90.i, label %if.else.i.i92.i

if.then.i.i90.i:                                  ; preds = %while.body.i.i88.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i.i89.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i74.i, i32 0, i32 2
  br label %cleanup.i.i98.i

if.else.i.i92.i:                                  ; preds = %while.body.i.i88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i86.i)
  %cmp6.not.i.i91.i = icmp eq i32 %cmp.0.i.i.i86.i, 0
  br i1 %cmp6.not.i.i91.i, label %find_entry.exit.i100.i, label %if.then7.i.i94.i

if.then7.i.i94.i:                                 ; preds = %if.else.i.i92.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i.i93.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i74.i, i32 0, i32 1
  br label %cleanup.i.i98.i

cleanup.i.i98.i:                                  ; preds = %if.then7.i.i94.i, %if.then.i.i90.i
  %node.1.in.i.i95.i = phi ptr [ %rb_left.i.i89.i, %if.then.i.i90.i ], [ %rb_right.i.i93.i, %if.then7.i.i94.i ]
  %91 = ptrtoint ptr %node.1.in.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %node.0.i.i96.i = load ptr, ptr %node.1.in.i.i95.i, align 4
  %tobool.not.i.i97.i = icmp eq ptr %node.0.i.i96.i, null
  br i1 %tobool.not.i.i97.i, label %cleanup.i.i98.i.if.end17.i_crit_edge, label %cleanup.i.i98.i.while.body.i.i88.i_crit_edge

cleanup.i.i98.i.while.body.i.i88.i_crit_edge:     ; preds = %cleanup.i.i98.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i88.i

cleanup.i.i98.i.if.end17.i_crit_edge:             ; preds = %cleanup.i.i98.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

find_entry.exit.i100.i:                           ; preds = %if.else.i.i92.i
  %tobool.not.i99.i = icmp eq ptr %arrayidx.i.i81.i, null
  br i1 %tobool.not.i99.i, label %find_entry.exit.i100.i.if.end17.i_crit_edge, label %if.end.i104.i

find_entry.exit.i100.i.if.end17.i_crit_edge:      ; preds = %find_entry.exit.i100.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

if.end.i104.i:                                    ; preds = %find_entry.exit.i100.i
  %mode.i101.i = getelementptr %struct.ctl_table, ptr %85, i32 %sub.ptr.div.i.i80.i, i32 3
  %92 = ptrtoint ptr %mode.i101.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %mode.i101.i, align 4
  %94 = and i16 %93, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %94)
  %cmp.i102.i = icmp eq i16 %94, 16384
  br i1 %cmp.i102.i, label %find_subdir.exit106.i, label %if.end.i104.i.do.end.i_crit_edge

if.end.i104.i.do.end.i_crit_edge:                 ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

find_subdir.exit106.i:                            ; preds = %if.end.i104.i
  %cmp.i107.i = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107.i, label %if.end13.i, label %find_subdir.exit106.i.found.i_crit_edge

find_subdir.exit106.i.found.i_crit_edge:          ; preds = %find_subdir.exit106.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %found.i

if.end13.i:                                       ; preds = %find_subdir.exit106.i
  %cmp15.not.i = icmp eq ptr %83, inttoptr (i32 -2 to ptr)
  br i1 %cmp15.not.i, label %if.end13.i.if.end17.i_crit_edge, label %if.end13.i.failed.i_crit_edge

if.end13.i.failed.i_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %failed.i

if.end13.i.if.end17.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end13.i.if.end17.i_crit_edge, %find_entry.exit.i100.i.if.end17.i_crit_edge, %cleanup.i.i98.i.if.end17.i_crit_edge, %new_dir.exit.i.if.end17.i_crit_edge
  %call19.i = tail call fastcc i32 @insert_header(ptr noundef %dir3.0105, ptr noundef nonnull %call9.i.i.i.i) #20
  %95 = inttoptr i32 %call19.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool21.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool21.not.i, label %if.end17.i.found.i_crit_edge, label %if.end17.i.failed.i_crit_edge

if.end17.i.failed.i_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %failed.i

if.end17.i.found.i_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %found.i

found.i:                                          ; preds = %if.end17.i.found.i_crit_edge, %find_subdir.exit106.i.found.i_crit_edge, %find_subdir.exit.i.found.i_crit_edge
  %new.0.i = phi ptr [ %call9.i.i.i.i, %find_subdir.exit106.i.found.i_crit_edge ], [ null, %find_subdir.exit.i.found.i_crit_edge ], [ %call9.i.i.i.i, %if.end17.i.found.i_crit_edge ]
  %subdir.0.i = phi ptr [ %83, %find_subdir.exit106.i.found.i_crit_edge ], [ %49, %find_subdir.exit.i.found.i_crit_edge ], [ %call9.i.i.i.i, %if.end17.i.found.i_crit_edge ]
  %nreg.i80 = getelementptr inbounds %struct.anon.3, ptr %subdir.0.i, i32 0, i32 3
  %96 = ptrtoint ptr %nreg.i80 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %nreg.i80, align 4
  %inc.i = add i32 %97, 1
  store i32 %inc.i, ptr %nreg.i80, align 4
  br label %failed.i

failed.i:                                         ; preds = %found.i, %if.end17.i.failed.i_crit_edge, %if.end13.i.failed.i_crit_edge, %if.end.i77.failed.i_crit_edge
  %new.1.i = phi ptr [ null, %if.end.i77.failed.i_crit_edge ], [ %call9.i.i.i.i, %if.end13.i.failed.i_crit_edge ], [ %call9.i.i.i.i, %if.end17.i.failed.i_crit_edge ], [ %new.0.i, %found.i ]
  %subdir.1.i = phi ptr [ %49, %if.end.i77.failed.i_crit_edge ], [ %83, %if.end13.i.failed.i_crit_edge ], [ %95, %if.end17.i.failed.i_crit_edge ], [ %subdir.0.i, %found.i ]
  %cmp.i108.i = icmp ugt ptr %subdir.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108.i, label %failed.i.do.end.i_crit_edge, label %failed.i.if.end34.i_crit_edge

failed.i.if.end34.i_crit_edge:                    ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end34.i

failed.i.do.end.i_crit_edge:                      ; preds = %failed.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end.i

do.end.i:                                         ; preds = %failed.i.do.end.i_crit_edge, %if.end.i104.i.do.end.i_crit_edge, %new_dir.exit.thread.i, %if.end.i.i76.do.end.i_crit_edge
  %subdir.1124.i = phi ptr [ %subdir.1.i, %failed.i.do.end.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %new_dir.exit.thread.i ], [ inttoptr (i32 -20 to ptr), %if.end.i.i76.do.end.i_crit_edge ], [ inttoptr (i32 -20 to ptr), %if.end.i104.i.do.end.i_crit_edge ]
  %new.1122.i = phi ptr [ %new.1.i, %failed.i.do.end.i_crit_edge ], [ null, %new_dir.exit.thread.i ], [ null, %if.end.i.i76.do.end.i_crit_edge ], [ %call9.i.i.i.i, %if.end.i104.i.do.end.i_crit_edge ]
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #26
  tail call fastcc void @sysctl_print_dir(ptr noundef %dir3.0105) #20
  %98 = ptrtoint ptr %subdir.1124.i to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %namelen.0, i32 noundef %namelen.0, ptr noundef nonnull %name.0104, i32 noundef %98) #26
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end.i, %failed.i.if.end34.i_crit_edge
  %subdir.1123.i = phi ptr [ %subdir.1124.i, %do.end.i ], [ %subdir.1.i, %failed.i.if.end34.i_crit_edge ]
  %new.1121.i = phi ptr [ %new.1122.i, %do.end.i ], [ %new.1.i, %failed.i.if.end34.i_crit_edge ]
  tail call fastcc void @drop_sysctl_table(ptr noundef %dir3.0105) #20
  %tobool36.not.i = icmp eq ptr %new.1121.i, null
  br i1 %tobool36.not.i, label %if.end34.i.get_subdir.exit_crit_edge, label %if.then37.i

if.end34.i.get_subdir.exit_crit_edge:             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %get_subdir.exit

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @drop_sysctl_table(ptr noundef nonnull %new.1121.i) #20
  br label %get_subdir.exit

get_subdir.exit:                                  ; preds = %if.then37.i, %if.end34.i.get_subdir.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %cmp.i81 = icmp ugt ptr %subdir.1123.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %get_subdir.exit.fail_crit_edge, label %get_subdir.exit.for.inc28_crit_edge

get_subdir.exit.for.inc28_crit_edge:              ; preds = %get_subdir.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc28

get_subdir.exit.fail_crit_edge:                   ; preds = %get_subdir.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %fail

for.inc28:                                        ; preds = %get_subdir.exit.for.inc28_crit_edge, %if.end21.for.inc28_crit_edge
  %dir3.1.ph = phi ptr [ %subdir.1123.i, %get_subdir.exit.for.inc28_crit_edge ], [ %dir3.0105, %if.end21.for.inc28_crit_edge ]
  %tobool14.not = icmp eq ptr %nextname.0, null
  br i1 %tobool14.not, label %for.inc28.for.end29_crit_edge, label %for.inc28.for.body15_crit_edge

for.inc28.for.body15_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body15

for.inc28.for.end29_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end29

for.end29:                                        ; preds = %for.inc28.for.end29_crit_edge, %if.end9.for.end29_crit_edge
  %dir3.0.lcssa = phi ptr [ %dir, %if.end9.for.end29_crit_edge ], [ %dir3.1.ph, %for.inc28.for.end29_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %call30 = tail call fastcc i32 @insert_header(ptr noundef %dir3.0.lcssa, ptr noundef nonnull %call9.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  tail call fastcc void @drop_sysctl_table(ptr noundef %dir3.0.lcssa)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br i1 %tobool31.not, label %for.end29.cleanup36_crit_edge, label %for.end29.fail_crit_edge

for.end29.fail_crit_edge:                         ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %fail

for.end29.cleanup36_crit_edge:                    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup36

fail:                                             ; preds = %for.end29.fail_crit_edge, %get_subdir.exit.fail_crit_edge, %sysctl_check_table.exit.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #20
  tail call void @dump_stack() #26
  br label %cleanup36

cleanup36:                                        ; preds = %fail, %for.end29.cleanup36_crit_edge, %if.end8.i.i.cleanup36_crit_edge
  %retval.0 = phi ptr [ null, %fail ], [ null, %if.end8.i.i.cleanup36_crit_edge ], [ %call9.i.i, %for.end29.cleanup36_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @insert_header(ptr noundef %dir, ptr nocapture noundef %header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dir, align 4
  %child.i = getelementptr inbounds %struct.ctl_table, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child.i, align 4
  %cmp.i = icmp eq ptr %3, @sysctl_mount_point
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %header, align 4
  %cmp = icmp eq ptr %5, @sysctl_mount_point
  br i1 %cmp, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

do.end:                                           ; preds = %if.end
  %root = getelementptr inbounds %struct.ctl_dir, ptr %dir, i32 0, i32 1
  %6 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %root, align 4
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #22
  %8 = ptrtoint ptr %child.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sysctl_mount_point, ptr %child.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  %nreg = getelementptr inbounds %struct.anon.3, ptr %dir, i32 0, i32 3
  %9 = ptrtoint ptr %nreg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nreg, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %nreg, align 4
  %parent = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 5
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dir, ptr %parent, align 4
  %set.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 4
  %12 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set.i, align 4
  %cmp.i44 = icmp eq ptr %13, @sysctl_table_root
  br i1 %cmp.i44, label %if.end7.if.end11_crit_edge, label %if.end.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.end.i:                                         ; preds = %if.end7
  %call.i = tail call fastcc ptr @xlate_dir(ptr noundef nonnull @sysctl_table_root, ptr noundef %dir) #20
  %cmp.i63 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.end.i.if.end11_crit_edge, label %if.end3.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %header, align 4
  %root.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 3
  %16 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root.i, align 4
  %call4.i = tail call fastcc zeroext i1 @get_links(ptr noundef %call.i, ptr noundef %15, ptr noundef %17) #20
  br i1 %call4.i, label %if.end3.i.if.end11_crit_edge, label %if.end6.i

if.end3.i.if.end11_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.end6.i:                                        ; preds = %if.end3.i
  %nreg.i = getelementptr inbounds %struct.anon.3, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %nreg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nreg.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %nreg.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %20 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %header, align 4
  %22 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %tobool.not66.i = icmp eq ptr %25, null
  br i1 %tobool.not66.i, label %if.end6.i.for.end.i_crit_edge, label %if.end6.i.for.body.i55_crit_edge

if.end6.i.for.body.i55_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i55

if.end6.i.for.end.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.body.i55:                                     ; preds = %for.body.i55.for.body.i55_crit_edge, %if.end6.i.for.body.i55_crit_edge
  %26 = phi ptr [ %28, %for.body.i55.for.body.i55_crit_edge ], [ %25, %if.end6.i.for.body.i55_crit_edge ]
  %name_bytes.069.i = phi i32 [ %add3.i, %for.body.i55.for.body.i55_crit_edge ], [ 0, %if.end6.i.for.body.i55_crit_edge ]
  %nr_entries.068.i = phi i32 [ %inc.i51, %for.body.i55.for.body.i55_crit_edge ], [ 0, %if.end6.i.for.body.i55_crit_edge ]
  %entry1.067.i = phi ptr [ %incdec.ptr.i53, %for.body.i55.for.body.i55_crit_edge ], [ %21, %if.end6.i.for.body.i55_crit_edge ]
  %inc.i51 = add i32 %nr_entries.068.i, 1
  %call.i52 = tail call i32 @strlen(ptr noundef nonnull %26) #25
  %add.i = add i32 %name_bytes.069.i, 1
  %add3.i = add i32 %add.i, %call.i52
  %incdec.ptr.i53 = getelementptr %struct.ctl_table, ptr %entry1.067.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr.i53, align 4
  %tobool.not.i54 = icmp eq ptr %28, null
  br i1 %tobool.not.i54, label %for.body.i55.for.end.i_crit_edge, label %for.body.i55.for.body.i55_crit_edge

for.body.i55.for.body.i55_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i55

for.body.i55.for.end.i_crit_edge:                 ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i55.for.end.i_crit_edge, %if.end6.i.for.end.i_crit_edge
  %nr_entries.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i_crit_edge ], [ %inc.i51, %for.body.i55.for.end.i_crit_edge ]
  %name_bytes.0.lcssa.i = phi i32 [ 0, %if.end6.i.for.end.i_crit_edge ], [ %add3.i, %for.body.i55.for.end.i_crit_edge ]
  %add5.i = add i32 %nr_entries.0.lcssa.i, 1
  %mul.i = shl i32 %nr_entries.0.lcssa.i, 4
  %add4.i = add i32 %mul.i, 44
  %add7.i = add i32 %add4.i, %name_bytes.0.lcssa.i
  %mul6.i = mul i32 %add5.i, 36
  %add8.i = add i32 %add7.i, %mul6.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add8.i, i32 noundef 3520) #23
  %tobool10.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i, label %new_links.exit.thread, label %if.end.i56

new_links.exit.thread:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  br label %insert_links.exit.thread69

if.end.i56:                                       ; preds = %for.end.i
  %add.ptr.i = getelementptr %struct.ctl_table_header, ptr %call9.i.i.i, i32 1
  %add.ptr11.i = getelementptr %struct.ctl_node, ptr %add.ptr.i, i32 %nr_entries.0.lcssa.i
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %21, align 4
  %tobool15.not71.i = icmp eq ptr %30, null
  br i1 %tobool15.not71.i, label %if.end.i56.for.end26.i_crit_edge, label %for.body16.preheader.i

if.end.i56.for.end26.i_crit_edge:                 ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end26.i

for.body16.preheader.i:                           ; preds = %if.end.i56
  %arrayidx.i57 = getelementptr %struct.ctl_table, ptr %add.ptr11.i, i32 %add5.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.preheader.i
  %31 = phi ptr [ %37, %for.body16.i.for.body16.i_crit_edge ], [ %30, %for.body16.preheader.i ]
  %link_name.074.i = phi ptr [ %add.ptr22.i, %for.body16.i.for.body16.i_crit_edge ], [ %arrayidx.i57, %for.body16.preheader.i ]
  %link.073.i = phi ptr [ %incdec.ptr24.i, %for.body16.i.for.body16.i_crit_edge ], [ %add.ptr11.i, %for.body16.preheader.i ]
  %entry1.172.i = phi ptr [ %incdec.ptr25.i, %for.body16.i.for.body16.i_crit_edge ], [ %21, %for.body16.preheader.i ]
  %call18.i = tail call i32 @strlen(ptr noundef nonnull %31) #25
  %add19.i = add i32 %call18.i, 1
  %32 = call ptr @memcpy(ptr %link_name.074.i, ptr %31, i32 %add19.i)
  %33 = ptrtoint ptr %link.073.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %link_name.074.i, ptr %link.073.i, align 4
  %mode.i = getelementptr inbounds %struct.ctl_table, ptr %link.073.i, i32 0, i32 3
  %34 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -24065, ptr %mode.i, align 4
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %link.073.i, i32 0, i32 1
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %23, ptr %data.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %link_name.074.i, i32 %add19.i
  %incdec.ptr24.i = getelementptr %struct.ctl_table, ptr %link.073.i, i32 1
  %incdec.ptr25.i = getelementptr %struct.ctl_table, ptr %entry1.172.i, i32 1
  %36 = ptrtoint ptr %incdec.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %incdec.ptr25.i, align 4
  %tobool15.not.i = icmp eq ptr %37, null
  br i1 %tobool15.not.i, label %for.body16.i.for.end26.i_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body16.i

for.body16.i.for.end26.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.end26.i

for.end26.i:                                      ; preds = %for.body16.i.for.end26.i_crit_edge, %if.end.i56.for.end26.i_crit_edge
  %root.i58 = getelementptr inbounds %struct.ctl_table_header, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %root.i58 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %root.i58, align 4
  %set.i59 = getelementptr inbounds %struct.ctl_table_header, ptr %call.i, i32 0, i32 4
  %40 = ptrtoint ptr %set.i59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set.i59, align 4
  %42 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr11.i, ptr %call9.i.i.i, align 128
  %ctl_table_arg.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %ctl_table_arg.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr11.i, ptr %ctl_table_arg.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %used.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %count.i.i, align 8
  %nreg.i.i = getelementptr inbounds %struct.anon.3, ptr %call9.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %nreg.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %nreg.i.i, align 4
  %unregistering.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %unregistering.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %unregistering.i.i, align 16
  %root1.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %root1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %39, ptr %root1.i.i, align 8
  %set2.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %set2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %41, ptr %set2.i.i, align 4
  %parent.i.i60 = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %parent.i.i60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %parent.i.i60, align 32
  %node3.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %node3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i, ptr %node3.i.i, align 4
  %inodes.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %inodes.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %inodes.i.i, align 8
  %53 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr11.i, align 4
  %tobool5.not24.i.i = icmp eq ptr %54, null
  br i1 %tobool5.not24.i.i, label %for.end26.i.new_links.exit_crit_edge, label %for.end26.i.for.body.i.i_crit_edge

for.end26.i.for.body.i.i_crit_edge:               ; preds = %for.end26.i
  br label %for.body.i.i

for.end26.i.new_links.exit_crit_edge:             ; preds = %for.end26.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %new_links.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.end26.i.for.body.i.i_crit_edge
  %entry4.026.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr11.i, %for.end26.i.for.body.i.i_crit_edge ]
  %node.addr.025.i.i = phi ptr [ %incdec.ptr6.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i, %for.end26.i.for.body.i.i_crit_edge ]
  %header.i.i = getelementptr inbounds %struct.ctl_node, ptr %node.addr.025.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call9.i.i.i, ptr %header.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.ctl_table, ptr %entry4.026.i.i, i32 1
  %incdec.ptr6.i.i = getelementptr %struct.ctl_node, ptr %node.addr.025.i.i, i32 1
  %56 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %57, null
  br i1 %tobool5.not.i.i, label %for.body.i.i.new_links.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body.i.i.new_links.exit_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %new_links.exit

new_links.exit:                                   ; preds = %for.body.i.i.new_links.exit_crit_edge, %for.end26.i.new_links.exit_crit_edge
  %58 = ptrtoint ptr %nreg.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %nr_entries.0.lcssa.i, ptr %nreg.i.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %59 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %header, align 4
  %61 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %root.i, align 4
  %call14.i = tail call fastcc zeroext i1 @get_links(ptr noundef %call.i, ptr noundef %60, ptr noundef %62) #20
  br i1 %call14.i, label %if.then15.i, label %if.end16.i

if.then15.i:                                      ; preds = %new_links.exit
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #20
  br label %insert_links.exit

if.end16.i:                                       ; preds = %new_links.exit
  %call17.i = tail call fastcc i32 @insert_header(ptr noundef %call.i, ptr noundef nonnull %call9.i.i.i) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.insert_links.exit_crit_edge, label %if.then19.i

if.end16.i.insert_links.exit_crit_edge:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %insert_links.exit

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #20
  br label %insert_links.exit.thread69

insert_links.exit.thread69:                       ; preds = %if.then19.i, %new_links.exit.thread
  %err.0.i.ph = phi i32 [ -12, %new_links.exit.thread ], [ %call17.i, %if.then19.i ]
  tail call fastcc void @drop_sysctl_table(ptr noundef %call.i) #20
  br label %fail_links

insert_links.exit:                                ; preds = %if.end16.i.insert_links.exit_crit_edge, %if.then15.i
  tail call fastcc void @drop_sysctl_table(ptr noundef %call.i) #20
  br label %if.end11

if.end11:                                         ; preds = %insert_links.exit, %if.end3.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %63 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %header, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool13.not76 = icmp eq ptr %66, null
  br i1 %tobool13.not76, label %if.end11.cleanup_crit_edge, label %for.body.lr.ph

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end11
  %node2.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %67 = phi ptr [ %66, %for.body.lr.ph ], [ %95, %for.inc.for.body_crit_edge ]
  %entry1.077 = phi ptr [ %64, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %68 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %node2.i, align 4
  %70 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %header, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %entry1.077 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %arrayidx.i = getelementptr %struct.ctl_node, ptr %69, i32 %sub.ptr.div.i
  %72 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent, align 4
  %root.i46 = getelementptr inbounds %struct.ctl_dir, ptr %73, i32 0, i32 1
  %call.i47 = tail call i32 @strlen(ptr noundef nonnull %67) #25
  %74 = ptrtoint ptr %root.i46 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %root.i46, align 4
  %tobool.not61.i = icmp eq ptr %75, null
  br i1 %tobool.not61.i, label %for.body.for.inc_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %76 = phi ptr [ %87, %cleanup.i.while.body.i_crit_edge ], [ %75, %for.body.while.body.i_crit_edge ]
  %header.i = getelementptr inbounds %struct.ctl_node, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %header.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %node6.i = getelementptr inbounds %struct.ctl_table_header, ptr %78, i32 0, i32 6
  %81 = ptrtoint ptr %node6.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %node6.i, align 4
  %sub.ptr.lhs.cast7.i = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast8.i = ptrtoint ptr %82 to i32
  %sub.ptr.sub9.i = sub i32 %sub.ptr.lhs.cast7.i, %sub.ptr.rhs.cast8.i
  %sub.ptr.div10.i = ashr exact i32 %sub.ptr.sub9.i, 4
  %arrayidx11.i = getelementptr %struct.ctl_table, ptr %80, i32 %sub.ptr.div10.i
  %83 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx11.i, align 4
  %call13.i = tail call i32 @strlen(ptr noundef %84) #25
  %85 = tail call i32 @llvm.smin.i32(i32 %call.i47, i32 %call13.i) #20
  %call.i.i = tail call i32 @memcmp(ptr noundef nonnull %67, ptr noundef %84, i32 noundef %85) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i, 0
  %sub.i.i = sub i32 %call.i47, %call13.i
  %cmp.0.i.i = select i1 %cmp2.i.i, i32 %sub.i.i, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp15.i = icmp slt i32 %cmp.0.i.i, 0
  br i1 %cmp15.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %76, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp16.not.i = icmp eq i32 %cmp.0.i.i, 0
  br i1 %cmp16.not.i, label %fail, label %if.then17.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %76, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then17.i, %if.then.i
  %p.2.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then17.i ]
  %86 = ptrtoint ptr %p.2.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p.2.i, align 4
  %tobool.not.i48 = icmp eq ptr %87, null
  br i1 %tobool.not.i48, label %for.inc.loopexit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

for.inc.loopexit:                                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  %sub.ptr.lhs.cast7.i.le = ptrtoint ptr %76 to i32
  br label %for.inc

for.inc:                                          ; preds = %for.inc.loopexit, %for.body.for.inc_crit_edge
  %parent4.0.lcssa.i = phi i32 [ 0, %for.body.for.inc_crit_edge ], [ %sub.ptr.lhs.cast7.i.le, %for.inc.loopexit ]
  %p.0.lcssa.i = phi ptr [ %root.i46, %for.body.for.inc_crit_edge ], [ %p.2.i, %for.inc.loopexit ]
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %parent4.0.lcssa.i, ptr %arrayidx.i, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %arrayidx.i, i32 0, i32 1
  %89 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %arrayidx.i, i32 0, i32 2
  %90 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %rb_left.i.i, align 4
  %91 = ptrtoint ptr %p.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %arrayidx.i, ptr %p.0.lcssa.i, align 4
  %92 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %parent, align 4
  %root34.i = getelementptr inbounds %struct.ctl_dir, ptr %93, i32 0, i32 1
  tail call void @rb_insert_color(ptr noundef %arrayidx.i, ptr noundef %root34.i) #20
  %incdec.ptr = getelementptr %struct.ctl_table, ptr %entry1.077, i32 1
  %94 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %incdec.ptr, align 4
  %tobool13.not = icmp eq ptr %95, null
  br i1 %tobool13.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

fail:                                             ; preds = %if.else.i
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #26
  %96 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent, align 4
  tail call fastcc void @sysctl_print_dir(ptr noundef %97) #20
  %98 = ptrtoint ptr %entry1.077 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %entry1.077, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %99) #26
  %100 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %header, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %tobool.not5.i = icmp eq ptr %103, null
  br i1 %tobool.not5.i, label %fail.erase_header.exit_crit_edge, label %fail.for.body.i_crit_edge

fail.for.body.i_crit_edge:                        ; preds = %fail
  br label %for.body.i

fail.erase_header.exit_crit_edge:                 ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #22
  br label %erase_header.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %fail.for.body.i_crit_edge
  %entry1.06.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %101, %fail.for.body.i_crit_edge ]
  %104 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %node2.i, align 4
  %106 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %header, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %entry1.06.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %arrayidx.i.i = getelementptr %struct.ctl_node, ptr %105, i32 %sub.ptr.div.i.i
  %108 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent, align 4
  %root.i.i = getelementptr inbounds %struct.ctl_dir, ptr %109, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %arrayidx.i.i, ptr noundef %root.i.i) #20
  %incdec.ptr.i = getelementptr %struct.ctl_table, ptr %entry1.06.i, i32 1
  %110 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i49 = icmp eq ptr %111, null
  br i1 %tobool.not.i49, label %for.body.i.erase_header.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i

for.body.i.erase_header.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %erase_header.exit

erase_header.exit:                                ; preds = %for.body.i.erase_header.exit_crit_edge, %fail.erase_header.exit_crit_edge
  tail call fastcc void @put_links(ptr noundef %header)
  br label %fail_links

fail_links:                                       ; preds = %erase_header.exit, %insert_links.exit.thread69
  %err.0 = phi i32 [ -17, %erase_header.exit ], [ %err.0.i.ph, %insert_links.exit.thread69 ]
  %112 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %header, align 4
  %cmp19 = icmp eq ptr %113, @sysctl_mount_point
  br i1 %cmp19, label %if.then20, label %fail_links.if.end21_crit_edge

fail_links.if.end21_crit_edge:                    ; preds = %fail_links
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end21

if.then20:                                        ; preds = %fail_links
  call void @__sanitizer_cov_trace_pc() #22
  %114 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dir, align 4
  %child.i50 = getelementptr inbounds %struct.ctl_table, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %child.i50 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %child.i50, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %fail_links.if.end21_crit_edge
  %117 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %parent, align 4
  tail call fastcc void @drop_sysctl_table(ptr noundef %dir)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.inc.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end21 ], [ -30, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_sysctl_table(ptr noundef %header) unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 5
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %nreg = getelementptr inbounds %struct.anon.3, ptr %header, i32 0, i32 3
  %2 = ptrtoint ptr %nreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nreg, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %nreg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then3:                                         ; preds = %if.end
  tail call fastcc void @put_links(ptr noundef %header)
  %used.i = getelementptr inbounds %struct.anon.3, ptr %header, i32 0, i32 1
  %4 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !201

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait.i) #20
  %6 = getelementptr inbounds i8, ptr %wait.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 52)
  %8 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait.i, align 4
  call void @__init_swait_queue_head(ptr noundef %6, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #20
  %unregistering.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 1
  %9 = ptrtoint ptr %unregistering.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wait.i, ptr %unregistering.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  call void @wait_for_completion(ptr noundef nonnull %wait.i) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i) #20
  br label %if.end.i

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #22
  %unregistering3.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 1
  %10 = ptrtoint ptr %unregistering3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -22 to ptr), ptr %unregistering3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %inodes.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 7
  call void @proc_invalidate_siblings_dcache(ptr noundef %inodes.i.i, ptr noundef nonnull @sysctl_lock) #20
  call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %11 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %header, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not5.i.i = icmp eq ptr %14, null
  br i1 %tobool.not5.i.i, label %if.end.i.if.end4_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %node2.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %entry1.06.i.i = phi ptr [ %12, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %node2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node2.i.i.i, align 4
  %17 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %header, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %entry1.06.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 36
  %arrayidx.i.i.i = getelementptr %struct.ctl_node, ptr %16, i32 %sub.ptr.div.i.i.i
  %19 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent1, align 4
  %root.i.i.i = getelementptr inbounds %struct.ctl_dir, ptr %20, i32 0, i32 1
  call void @rb_erase(ptr noundef %arrayidx.i.i.i, ptr noundef %root.i.i.i) #20
  %incdec.ptr.i.i = getelementptr %struct.ctl_table, ptr %entry1.06.i.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end4_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.body.i.i.if.end4_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.end4:                                          ; preds = %for.body.i.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %count = getelementptr inbounds %struct.anon.3, ptr %header, i32 0, i32 2
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  %dec5 = add i32 %24, -1
  store i32 %dec5, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec5)
  %tobool6.not = icmp ne i32 %dec5, 0
  %tobool8.not = icmp eq ptr %header, null
  %or.cond = or i1 %tobool8.not, %tobool6.not
  br i1 %or.cond, label %if.end4.if.end14_crit_edge, label %do.end

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end14

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #22
  call void @kvfree_call_rcu(ptr noundef nonnull %header, ptr noundef null) #20
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end4.if.end14_crit_edge
  br i1 %tobool2.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  call fastcc void @drop_sysctl_table(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @__register_sysctl_init(ptr noundef %path, ptr noundef %table, ptr noundef %table_name) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__register_sysctl_table(ptr noundef nonnull @sysctl_table_root, ptr noundef %path, ptr noundef %table) #20
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !202

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %table_name, ptr noundef %path) #26
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kmemleak_not_leak(ptr noundef nonnull %call.i) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_not_leak(ptr noundef) local_unnamed_addr #1 section ".ref.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__register_sysctl_paths(ptr noundef %set, ptr nocapture noundef readonly %path, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  %subheader = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @count_subheaders(ptr noundef %table)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subheader) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #27
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call7.i, align 8
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %tobool2.not108 = icmp eq ptr %3, null
  br i1 %tobool2.not108, label %if.end.while.cond.preheader_crit_edge, label %for.body.lr.ph

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call7.i to i32
  %sub.ptr.sub.i = sub i32 2, %sub.ptr.rhs.cast.i
  br label %for.body

for.cond:                                         ; preds = %append_path.exit
  %incdec.ptr = getelementptr %struct.ctl_path, ptr %component.0109, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.cond.while.cond.preheader_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.cond.while.cond.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.while.cond.preheader_crit_edge, %if.end.while.cond.preheader_crit_edge
  %pos.0.lcssa = phi ptr [ %call7.i, %if.end.while.cond.preheader_crit_edge ], [ %arrayidx3.i, %for.cond.while.cond.preheader_crit_edge ]
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table, align 4
  %tobool9.not111 = icmp eq ptr %7, null
  br i1 %tobool9.not111, label %while.cond.preheader.while.end_crit_edge, label %land.lhs.true.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %while.cond.preheader
  %sub.ptr.rhs.cast.i86 = ptrtoint ptr %call7.i to i32
  %sub.ptr.sub.i87 = sub i32 2, %sub.ptr.rhs.cast.i86
  br label %land.lhs.true

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %3, %for.body.lr.ph ], [ %5, %for.cond.for.body_crit_edge ]
  %pos.0110 = phi ptr [ %call7.i, %for.body.lr.ph ], [ %arrayidx3.i, %for.cond.for.body_crit_edge ]
  %component.0109 = phi ptr [ %path, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  %call.i = tail call i32 @strlen(ptr noundef nonnull %8) #25
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pos.0110 to i32
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  %add1.i = add i32 %add.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add1.i)
  %cmp.i = icmp sgt i32 %add1.i, 4095
  br i1 %cmp.i, label %for.body.out_crit_edge, label %append_path.exit

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

append_path.exit:                                 ; preds = %for.body
  %9 = call ptr @memcpy(ptr %pos.0110, ptr %8, i32 %call.i)
  %arrayidx.i = getelementptr i8, ptr %pos.0110, i32 %call.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 47, ptr %arrayidx.i, align 1
  %add2.i = add i32 %call.i, 1
  %arrayidx3.i = getelementptr i8, ptr %pos.0110, i32 %add2.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx3.i, align 1
  %tobool5.not = icmp eq ptr %arrayidx3.i, null
  br i1 %tobool5.not, label %append_path.exit.out_crit_edge, label %for.cond

append_path.exit.out_crit_edge:                   ; preds = %append_path.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

land.lhs.true:                                    ; preds = %if.end18.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %12 = phi ptr [ %7, %land.lhs.true.lr.ph ], [ %23, %if.end18.land.lhs.true_crit_edge ]
  %table.addr.0113 = phi ptr [ %table, %land.lhs.true.lr.ph ], [ %21, %if.end18.land.lhs.true_crit_edge ]
  %pos.1112 = phi ptr [ %pos.0.lcssa, %land.lhs.true.lr.ph ], [ %arrayidx3.i93, %if.end18.land.lhs.true_crit_edge ]
  %child = getelementptr inbounds %struct.ctl_table, ptr %table.addr.0113, i32 0, i32 4
  %13 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %child, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %land.lhs.true.while.end_crit_edge, label %land.rhs

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true
  %arrayidx11 = getelementptr %struct.ctl_table, ptr %table.addr.0113, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call.i84 = tail call i32 @strlen(ptr noundef nonnull %12) #25
  %sub.ptr.lhs.cast.i85 = ptrtoint ptr %pos.1112 to i32
  %add.i88 = add i32 %sub.ptr.sub.i87, %sub.ptr.lhs.cast.i85
  %add1.i89 = add i32 %add.i88, %call.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add1.i89)
  %cmp.i90 = icmp sgt i32 %add1.i89, 4095
  br i1 %cmp.i90, label %while.body.out_crit_edge, label %append_path.exit96

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

append_path.exit96:                               ; preds = %while.body
  %17 = call ptr @memcpy(ptr %pos.1112, ptr %12, i32 %call.i84)
  %arrayidx.i91 = getelementptr i8, ptr %pos.1112, i32 %call.i84
  %18 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 47, ptr %arrayidx.i91, align 1
  %add2.i92 = add i32 %call.i84, 1
  %arrayidx3.i93 = getelementptr i8, ptr %pos.1112, i32 %add2.i92
  %19 = ptrtoint ptr %arrayidx3.i93 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx3.i93, align 1
  %tobool16.not = icmp eq ptr %arrayidx3.i93, null
  br i1 %tobool16.not, label %append_path.exit96.out_crit_edge, label %if.end18

append_path.exit96.out_crit_edge:                 ; preds = %append_path.exit96
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end18:                                         ; preds = %append_path.exit96
  %20 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %child, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.end18.while.end_crit_edge, label %if.end18.land.lhs.true_crit_edge

if.end18.land.lhs.true_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %land.lhs.true

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %land.rhs.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %pos.1.lcssa = phi ptr [ %pos.0.lcssa, %while.cond.preheader.while.end_crit_edge ], [ %arrayidx3.i93, %if.end18.while.end_crit_edge ], [ %pos.1112, %land.lhs.true.while.end_crit_edge ], [ %pos.1112, %land.rhs.while.end_crit_edge ]
  %table.addr.0.lcssa = phi ptr [ %table, %while.cond.preheader.while.end_crit_edge ], [ %21, %if.end18.while.end_crit_edge ], [ %table.addr.0113, %land.lhs.true.while.end_crit_edge ], [ %table.addr.0113, %land.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then20, label %if.end8.i.i

if.then20:                                        ; preds = %while.end
  %call21 = tail call ptr @__register_sysctl_table(ptr noundef %set, ptr noundef nonnull %call7.i, ptr noundef %table.addr.0.lcssa)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then20.out_crit_edge, label %if.then23

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  %ctl_table_arg24 = getelementptr inbounds %struct.ctl_table_header, ptr %call21, i32 0, i32 2
  %24 = ptrtoint ptr %ctl_table_arg24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %table, ptr %ctl_table_arg24, align 4
  br label %out

if.end8.i.i:                                      ; preds = %while.end
  %mul = shl i32 %call, 2
  %add = add i32 %mul, 44
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #23
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.out_crit_edge, label %if.end29

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end29:                                         ; preds = %if.end8.i.i
  %add.ptr = getelementptr %struct.ctl_table_header, ptr %call9.i.i, i32 1
  %25 = ptrtoint ptr %subheader to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %subheader, align 4
  %ctl_table_arg30 = getelementptr inbounds %struct.ctl_table_header, ptr %call9.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %ctl_table_arg30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %table, ptr %ctl_table_arg30, align 4
  %call31 = call fastcc i32 @register_leaf_sysctl_tables(ptr noundef nonnull %call7.i, ptr noundef nonnull %pos.1.lcssa, ptr noundef nonnull %subheader, ptr noundef %set, ptr noundef %table.addr.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.out_crit_edge, label %while.cond36.preheader

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

while.cond36.preheader:                           ; preds = %if.end29
  %27 = ptrtoint ptr %subheader to i32
  call void @__asan_load4_noabort(i32 %27)
  %subheader.promoted = load ptr, ptr %subheader, align 4
  %cmp37121 = icmp ugt ptr %subheader.promoted, %add.ptr
  br i1 %cmp37121, label %while.cond36.preheader.while.body38_crit_edge, label %while.cond36.preheader.while.end42_crit_edge

while.cond36.preheader.while.end42_crit_edge:     ; preds = %while.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end42

while.cond36.preheader.while.body38_crit_edge:    ; preds = %while.cond36.preheader
  br label %while.body38

out:                                              ; preds = %while.end42, %if.end29.out_crit_edge, %if.end8.i.i.out_crit_edge, %if.then23, %if.then20.out_crit_edge, %append_path.exit96.out_crit_edge, %while.body.out_crit_edge, %append_path.exit.out_crit_edge, %for.body.out_crit_edge
  %header.0 = phi ptr [ %call21, %if.then23 ], [ null, %if.then20.out_crit_edge ], [ null, %while.end42 ], [ %call9.i.i, %if.end29.out_crit_edge ], [ null, %if.end8.i.i.out_crit_edge ], [ null, %append_path.exit96.out_crit_edge ], [ null, %while.body.out_crit_edge ], [ null, %append_path.exit.out_crit_edge ], [ null, %for.body.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #20
  br label %cleanup

while.body38:                                     ; preds = %while.body38.while.body38_crit_edge, %while.cond36.preheader.while.body38_crit_edge
  %incdec.ptr39120122 = phi ptr [ %incdec.ptr39, %while.body38.while.body38_crit_edge ], [ %subheader.promoted, %while.cond36.preheader.while.body38_crit_edge ]
  %incdec.ptr39 = getelementptr ptr, ptr %incdec.ptr39120122, i32 -1
  %28 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %incdec.ptr39, align 4
  %ctl_table_arg41 = getelementptr inbounds %struct.ctl_table_header, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ctl_table_arg41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl_table_arg41, align 4
  tail call void @unregister_sysctl_table(ptr noundef %29)
  tail call void @kfree(ptr noundef %31) #20
  %cmp37 = icmp ugt ptr %incdec.ptr39, %add.ptr
  br i1 %cmp37, label %while.body38.while.body38_crit_edge, label %while.body38.while.end42_crit_edge

while.body38.while.end42_crit_edge:               ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.end42

while.body38.while.body38_crit_edge:              ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body38

while.end42:                                      ; preds = %while.body38.while.end42_crit_edge, %while.cond36.preheader.while.end42_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #20
  br label %out

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %header.0, %out ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subheader) #20
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @count_subheaders(ptr noundef readonly %table) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %table, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %entry1.021 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %table, %lor.lhs.false.for.body_crit_edge ]
  %nr_subheaders.020 = phi i32 [ %nr_subheaders.1, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %has_files.019 = phi i32 [ %has_files.1, %for.inc.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %child = getelementptr inbounds %struct.ctl_table, ptr %entry1.021, i32 0, i32 4
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  %call = tail call fastcc i32 @count_subheaders(ptr noundef nonnull %3)
  %add = add i32 %call, %nr_subheaders.020
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %has_files.1 = phi i32 [ %has_files.019, %if.then6 ], [ 1, %for.body.for.inc_crit_edge ]
  %nr_subheaders.1 = phi i32 [ %add, %if.then6 ], [ %nr_subheaders.020, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.ctl_table, ptr %entry1.021, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq ptr %.pr, null
  br i1 %tobool4.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  %add9 = add i32 %nr_subheaders.1, %has_files.1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add9, %for.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_leaf_sysctl_tables(ptr noundef %path, ptr noundef %pos, ptr nocapture noundef %subheader, ptr noundef %set, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not116 = icmp eq ptr %1, null
  br i1 %tobool.not116, label %entry.if.then25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then25

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %nr_dirs.0119 = phi i32 [ %nr_dirs.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %nr_files.0118 = phi i32 [ %nr_files.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %entry1.0117 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %table, %entry.for.body_crit_edge ]
  %child = getelementptr inbounds %struct.ctl_table, ptr %entry1.0117, i32 0, i32 4
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %child, align 4
  %tobool2.not = icmp eq ptr %3, null
  %inc3 = zext i1 %tobool2.not to i32
  %nr_files.1 = add i32 %nr_files.0118, %inc3
  %not.tobool2.not = xor i1 %tobool2.not, true
  %inc = zext i1 %not.tobool2.not to i32
  %nr_dirs.1 = add i32 %nr_dirs.0119, %inc
  %incdec.ptr = getelementptr %struct.ctl_table, ptr %entry1.0117, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_dirs.1)
  %phi.cmp = icmp eq i32 %nr_dirs.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_files.1)
  %tobool5.not = icmp eq i32 %nr_files.1, 0
  %or.cond = select i1 %phi.cmp, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %for.end.if.end22_crit_edge, label %if.then6

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.then6:                                         ; preds = %for.end
  %add = add i32 %nr_files.1, 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 36) #20
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.then6.cleanup60_crit_edge, label %if.end7.i.i, !prof !202

if.then6.cleanup60_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

if.end7.i.i:                                      ; preds = %if.then6
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #23
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup60_crit_edge, label %for.cond10.preheader

if.end7.i.i.cleanup60_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

for.cond10.preheader:                             ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table, align 4
  %tobool12.not121 = icmp eq ptr %10, null
  br i1 %tobool12.not121, label %for.cond10.preheader.if.end22_crit_edge, label %for.cond10.preheader.for.body13_crit_edge

for.cond10.preheader.for.body13_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body13

for.cond10.preheader.if.end22_crit_edge:          ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

for.body13:                                       ; preds = %for.inc19.for.body13_crit_edge, %for.cond10.preheader.for.body13_crit_edge
  %new.0124 = phi ptr [ %new.1, %for.inc19.for.body13_crit_edge ], [ %call8.i.i, %for.cond10.preheader.for.body13_crit_edge ]
  %entry1.1122 = phi ptr [ %incdec.ptr20, %for.inc19.for.body13_crit_edge ], [ %table, %for.cond10.preheader.for.body13_crit_edge ]
  %child14 = getelementptr inbounds %struct.ctl_table, ptr %entry1.1122, i32 0, i32 4
  %11 = ptrtoint ptr %child14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %child14, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end17, label %for.body13.for.inc19_crit_edge

for.body13.for.inc19_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc19

if.end17:                                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #22
  %13 = call ptr @memcpy(ptr %new.0124, ptr %entry1.1122, i32 36)
  %incdec.ptr18 = getelementptr %struct.ctl_table, ptr %new.0124, i32 1
  br label %for.inc19

for.inc19:                                        ; preds = %if.end17, %for.body13.for.inc19_crit_edge
  %new.1 = phi ptr [ %new.0124, %for.body13.for.inc19_crit_edge ], [ %incdec.ptr18, %if.end17 ]
  %incdec.ptr20 = getelementptr %struct.ctl_table, ptr %entry1.1122, i32 1
  %14 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %incdec.ptr20, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %for.inc19.if.end22_crit_edge, label %for.inc19.for.body13_crit_edge

for.inc19.for.body13_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body13

for.inc19.if.end22_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end22

if.end22:                                         ; preds = %for.inc19.if.end22_crit_edge, %for.cond10.preheader.if.end22_crit_edge, %for.end.if.end22_crit_edge
  %ctl_table_arg.1 = phi ptr [ null, %for.end.if.end22_crit_edge ], [ %call8.i.i, %for.cond10.preheader.if.end22_crit_edge ], [ %call8.i.i, %for.inc19.if.end22_crit_edge ]
  %files.0 = phi ptr [ %table, %for.end.if.end22_crit_edge ], [ %call8.i.i, %for.cond10.preheader.if.end22_crit_edge ], [ %call8.i.i, %for.inc19.if.end22_crit_edge ]
  %tobool23.not.not = xor i1 %tobool5.not, true
  %brmerge = select i1 %tobool23.not.not, i1 true, i1 %phi.cmp
  br i1 %brmerge, label %if.end22.if.then25_crit_edge, label %if.end22.if.end35_crit_edge

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end35

if.end22.if.then25_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then25

if.then25:                                        ; preds = %if.end22.if.then25_crit_edge, %entry.if.then25_crit_edge
  %files.0147 = phi ptr [ %files.0, %if.end22.if.then25_crit_edge ], [ %table, %entry.if.then25_crit_edge ]
  %ctl_table_arg.1146 = phi ptr [ %ctl_table_arg.1, %if.end22.if.then25_crit_edge ], [ null, %entry.if.then25_crit_edge ]
  %call26 = tail call ptr @__register_sysctl_table(ptr noundef %set, ptr noundef %path, ptr noundef %files.0147)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %cleanup32, label %cleanup32.thread

cleanup32.thread:                                 ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  %ctl_table_arg30 = getelementptr inbounds %struct.ctl_table_header, ptr %call26, i32 0, i32 2
  %16 = ptrtoint ptr %ctl_table_arg30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ctl_table_arg.1146, ptr %ctl_table_arg30, align 4
  %17 = ptrtoint ptr %subheader to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %subheader, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call26, ptr %18, align 4
  %20 = load ptr, ptr %subheader, align 4
  %incdec.ptr31 = getelementptr ptr, ptr %20, i32 1
  store ptr %incdec.ptr31, ptr %subheader, align 4
  br label %if.end35

cleanup32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef %ctl_table_arg.1146) #20
  br label %cleanup60

if.end35:                                         ; preds = %cleanup32.thread, %if.end22.if.end35_crit_edge
  %21 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %table, align 4
  %tobool38.not125 = icmp eq ptr %22, null
  br i1 %tobool38.not125, label %if.end35.cleanup60_crit_edge, label %for.body39.lr.ph

if.end35.cleanup60_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

for.body39.lr.ph:                                 ; preds = %if.end35
  %sub.ptr.lhs.cast.i = ptrtoint ptr %pos to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %path to i32
  %sub.ptr.sub.i = sub i32 2, %sub.ptr.rhs.cast.i
  %add.i = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  br label %for.body39

for.body39:                                       ; preds = %for.inc57.for.body39_crit_edge, %for.body39.lr.ph
  %23 = phi ptr [ %22, %for.body39.lr.ph ], [ %33, %for.inc57.for.body39_crit_edge ]
  %entry1.2126 = phi ptr [ %table, %for.body39.lr.ph ], [ %incdec.ptr58, %for.inc57.for.body39_crit_edge ]
  %child40 = getelementptr inbounds %struct.ctl_table, ptr %entry1.2126, i32 0, i32 4
  %24 = ptrtoint ptr %child40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %child40, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %for.body39.for.inc57_crit_edge, label %if.end43

for.body39.for.inc57_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc57

if.end43:                                         ; preds = %for.body39
  %call.i = tail call i32 @strlen(ptr noundef nonnull %23) #25
  %add1.i = add i32 %add.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add1.i)
  %cmp.i = icmp sgt i32 %add1.i, 4095
  br i1 %cmp.i, label %if.end43.cleanup60_crit_edge, label %append_path.exit

if.end43.cleanup60_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

append_path.exit:                                 ; preds = %if.end43
  %26 = call ptr @memcpy(ptr %pos, ptr %23, i32 %call.i)
  %arrayidx.i = getelementptr i8, ptr %pos, i32 %call.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 47, ptr %arrayidx.i, align 1
  %add2.i = add i32 %call.i, 1
  %arrayidx3.i = getelementptr i8, ptr %pos, i32 %add2.i
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx3.i, align 1
  %tobool46.not = icmp eq ptr %arrayidx3.i, null
  br i1 %tobool46.not, label %append_path.exit.cleanup60_crit_edge, label %if.end48

append_path.exit.cleanup60_crit_edge:             ; preds = %append_path.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

if.end48:                                         ; preds = %append_path.exit
  %29 = ptrtoint ptr %child40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %child40, align 4
  %call50 = tail call fastcc i32 @register_leaf_sysctl_tables(ptr noundef %path, ptr noundef nonnull %arrayidx3.i, ptr noundef %subheader, ptr noundef %set, ptr noundef %30)
  %31 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.for.inc57_crit_edge, label %if.end48.cleanup60_crit_edge

if.end48.cleanup60_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

if.end48.for.inc57_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc57

for.inc57:                                        ; preds = %if.end48.for.inc57_crit_edge, %for.body39.for.inc57_crit_edge
  %incdec.ptr58 = getelementptr %struct.ctl_table, ptr %entry1.2126, i32 1
  %32 = ptrtoint ptr %incdec.ptr58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %incdec.ptr58, align 4
  %tobool38.not = icmp eq ptr %33, null
  br i1 %tobool38.not, label %for.inc57.cleanup60_crit_edge, label %for.inc57.for.body39_crit_edge

for.inc57.for.body39_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body39

for.inc57.cleanup60_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup60

cleanup60:                                        ; preds = %for.inc57.cleanup60_crit_edge, %if.end48.cleanup60_crit_edge, %append_path.exit.cleanup60_crit_edge, %if.end43.cleanup60_crit_edge, %if.end35.cleanup60_crit_edge, %cleanup32, %if.end7.i.i.cleanup60_crit_edge, %if.then6.cleanup60_crit_edge
  %retval.0 = phi i32 [ -12, %cleanup32 ], [ -12, %if.end7.i.i.cleanup60_crit_edge ], [ -12, %if.then6.cleanup60_crit_edge ], [ 0, %if.end35.cleanup60_crit_edge ], [ 0, %for.inc57.cleanup60_crit_edge ], [ -36, %append_path.exit.cleanup60_crit_edge ], [ %call50, %if.end48.cleanup60_crit_edge ], [ -36, %if.end43.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_sysctl_table(ptr noundef %header) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1721) #20
  %cmp = icmp eq ptr %header, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctl_table_arg = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 2
  %0 = ptrtoint ptr %ctl_table_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_table_arg, align 4
  %call = tail call fastcc i32 @count_subheaders(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp4 = icmp sgt i32 %call, 1
  br i1 %cmp4, label %for.body.preheader, label %if.end9, !prof !202

for.body.preheader:                               ; preds = %if.end
  %add.ptr = getelementptr %struct.ctl_table_header, ptr %header, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.020.in = phi i32 [ %i.020, %for.body.for.body_crit_edge ], [ %call, %for.body.preheader ]
  %i.020 = add nsw i32 %i.020.in, -1
  %arrayidx = getelementptr ptr, ptr %add.ptr, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %ctl_table_arg8 = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ctl_table_arg8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_table_arg8, align 4
  tail call void @unregister_sysctl_table(ptr noundef %3)
  tail call void @kfree(ptr noundef %5) #20
  %cmp7 = icmp sgt i32 %i.020.in, 1
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @kfree(ptr noundef nonnull %header) #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  tail call fastcc void @drop_sysctl_table(ptr noundef nonnull %header)
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_sysctl_paths(ptr nocapture noundef readonly %path, ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__register_sysctl_paths(ptr noundef nonnull @sysctl_table_root, ptr noundef %path, ptr noundef %table)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @register_sysctl_table(ptr noundef %table) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__register_sysctl_paths(ptr noundef nonnull @sysctl_table_root, ptr noundef nonnull @register_sysctl_table.null_path, ptr noundef %table) #20
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__register_sysctl_base(ptr noundef %base_table) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__register_sysctl_paths(ptr noundef nonnull @sysctl_table_root, ptr noundef nonnull @register_sysctl_table.null_path, ptr noundef %base_table) #20
  tail call void @kmemleak_not_leak(ptr noundef %call.i.i) #20
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @setup_sysctl_set(ptr noundef %set, ptr noundef %root, ptr noundef %is_seen) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %set, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %is_seen, ptr %set, align 4
  %dir = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1
  %3 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @root_table, ptr %dir, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @root_table, ptr %ctl_table_arg.i, align 4
  %used.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %used.i, align 4
  %count.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %count.i, align 4
  %nreg.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %7 = ptrtoint ptr %nreg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %nreg.i, align 4
  %unregistering.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %unregistering.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %unregistering.i, align 4
  %root1.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %root1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %root, ptr %root1.i, align 4
  %set2.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %set2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %set, ptr %set2.i, align 4
  %parent.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %parent.i, align 4
  %node3.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 6
  %12 = ptrtoint ptr %node3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %node3.i, align 4
  %inodes.i = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 0, i32 7
  %13 = ptrtoint ptr %inodes.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %inodes.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @retire_sysctl_set(ptr noundef %set) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end11, !prof !201

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1759, i32 noundef 9, ptr noundef null) #20
  br label %if.end

if.end:                                           ; preds = %do.end11, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_sys_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.3, ptr noundef null) #20
  %proc_iops = getelementptr inbounds %struct.proc_dir_entry, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %proc_iops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @proc_sys_dir_operations, ptr %proc_iops, align 8
  %1 = getelementptr inbounds %struct.proc_dir_entry, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @proc_sys_dir_file_operations, ptr %1, align 4
  %nlink = getelementptr inbounds %struct.proc_dir_entry, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %nlink to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nlink, align 8
  %call1 = tail call i32 @sysctl_init_bases() #20
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysctl_init_bases() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_sysctl_args() local_unnamed_addr #0 align 64 {
entry:
  %proc_mnt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proc_mnt) #20
  %0 = ptrtoint ptr %proc_mnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %proc_mnt, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saved_command_line to i32))
  %1 = load ptr, ptr @saved_command_line, align 4
  %call = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.do_sysctl_args) #28
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call ptr @parse_args(ptr noundef nonnull @.str.5, ptr noundef nonnull %call, ptr noundef null, i32 noundef 0, i16 noundef signext -1, i16 noundef signext -1, ptr noundef nonnull %proc_mnt, ptr noundef nonnull @process_sysctl_arg) #20
  %2 = ptrtoint ptr %proc_mnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_mnt, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  call void @kern_unmount(ptr noundef nonnull %3) #20
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call void @kfree(ptr noundef nonnull %call) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proc_mnt) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parse_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_sysctl_arg(ptr noundef %param, ptr noundef %val, ptr nocapture noundef readnone %unused, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.path, align 4
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #20
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %pos, align 8
  %call = tail call i32 @strncmp(ptr noundef %param, ptr noundef nonnull dereferenceable(7) @.str.39, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %param, i32 6
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %add.ptr, align 1
  %3 = and i8 %2, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %3)
  %switch = icmp eq i8 %3, 46
  br i1 %switch, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  %incdec.ptr = getelementptr i8, ptr %param, i32 7
  br label %if.end11

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(29) @.str.69, ptr noundef %param) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.else.sysctl_find_alias.exit_crit_edge, label %for.inc.i

if.else.sysctl_find_alias.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_find_alias.exit

for.inc.i:                                        ; preds = %if.else
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.71, ptr noundef %param) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.inc.i.sysctl_find_alias.exit_crit_edge, label %for.inc.1.i

for.inc.i.sysctl_find_alias.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_find_alias.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %call.2.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @.str.73, ptr noundef %param) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.sysctl_find_alias.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.sysctl_find_alias.exit_crit_edge:     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_find_alias.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(29) @.str.75, ptr noundef %param) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.sysctl_find_alias.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.sysctl_find_alias.exit_crit_edge:     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_find_alias.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(17) @.str.77, ptr noundef %param) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp2.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp2.4.i, label %for.inc.3.i.sysctl_find_alias.exit_crit_edge, label %for.inc.3.i.cleanup_crit_edge

for.inc.3.i.cleanup_crit_edge:                    ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.inc.3.i.sysctl_find_alias.exit_crit_edge:     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_find_alias.exit

sysctl_find_alias.exit:                           ; preds = %for.inc.3.i.sysctl_find_alias.exit_crit_edge, %for.inc.2.i.sysctl_find_alias.exit_crit_edge, %for.inc.1.i.sysctl_find_alias.exit_crit_edge, %for.inc.i.sysctl_find_alias.exit_crit_edge, %if.else.sysctl_find_alias.exit_crit_edge
  %alias.07.lcssa.i = phi ptr [ @sysctl_aliases, %if.else.sysctl_find_alias.exit_crit_edge ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 1), %for.inc.i.sysctl_find_alias.exit_crit_edge ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 2), %for.inc.1.i.sysctl_find_alias.exit_crit_edge ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 3), %for.inc.2.i.sysctl_find_alias.exit_crit_edge ], [ getelementptr inbounds ([6 x %struct.sysctl_alias], ptr @sysctl_aliases, i32 0, i32 4), %for.inc.3.i.sysctl_find_alias.exit_crit_edge ]
  %sysctl_param.i = getelementptr inbounds %struct.sysctl_alias, ptr %alias.07.lcssa.i, i32 0, i32 1
  %4 = ptrtoint ptr %sysctl_param.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysctl_param.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %sysctl_find_alias.exit.cleanup_crit_edge, label %sysctl_find_alias.exit.if.end11_crit_edge

sysctl_find_alias.exit.if.end11_crit_edge:        ; preds = %sysctl_find_alias.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

sysctl_find_alias.exit.cleanup_crit_edge:         ; preds = %sysctl_find_alias.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end11:                                         ; preds = %sysctl_find_alias.exit.if.end11_crit_edge, %if.end
  %param.addr.0 = phi ptr [ %incdec.ptr, %if.end ], [ %5, %sysctl_find_alias.exit.if.end11_crit_edge ]
  %tobool12.not = icmp eq ptr %val, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %call15 = tail call i32 @strlen(ptr noundef nonnull %val) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arg, align 4
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %if.then21, label %if.end19.if.end36_crit_edge

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

if.then21:                                        ; preds = %if.end19
  %call22 = tail call ptr @get_fs_type(ptr noundef nonnull @.str.40) #20
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end, label %if.end26

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #22
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #26
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  %call27 = tail call ptr @kern_mount(ptr noundef nonnull %call22) #20
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %arg, align 4
  tail call void @put_filesystem(ptr noundef nonnull %call22) #20
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg, align 4
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end32, label %if.end26.if.end36_crit_edge

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end36

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #22
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #26
  br label %cleanup

if.end36:                                         ; preds = %if.end26.if.end36_crit_edge, %if.end19.if.end36_crit_edge
  %call37 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.46, ptr noundef %param.addr.0) #20
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #22
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.42, ptr noundef %param.addr.0) #28
  unreachable

if.end40:                                         ; preds = %if.end36
  %call41 = tail call ptr @strreplace(ptr noundef nonnull %call37, i8 noundef zeroext 46, i8 noundef zeroext 47) #20
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %13 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %.compoundliteral.i, align 4
  %dentry.i = getelementptr inbounds %struct.path, ptr %.compoundliteral.i, i32 0, i32 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 4
  %16 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dentry.i, align 4
  %call.i168 = call ptr @file_open_root(ptr noundef nonnull %.compoundliteral.i, ptr noundef nonnull %call37, i32 noundef 1, i16 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %cmp.i169 = icmp ugt ptr %call.i168, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then44, label %if.end71

if.then44:                                        ; preds = %if.end40
  %17 = ptrtoint ptr %call.i168 to i32
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end66 [
    i32 -2, label %do.end51
    i32 -13, label %do.end60
  ]

do.end51:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #22
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %out

do.end60:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #22
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %out

do.end66:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #22
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull %call.i168, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %out

if.end71:                                         ; preds = %if.end40
  %call72 = call i32 @kernel_write(ptr noundef %call.i168, ptr noundef nonnull %val, i32 noundef %call15, ptr noundef nonnull %pos) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.else92

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call72)
  %cmp76 = icmp eq i32 %call72, -22
  br i1 %cmp76, label %do.end81, label %do.end87

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #22
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %if.end102

do.end87:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #22
  %19 = inttoptr i32 %call72 to ptr
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %19, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %if.end102

if.else92:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_cmp4(i32 %call72, i32 %call15)
  %cmp93.not = icmp eq i32 %call72, %call15
  br i1 %cmp93.not, label %if.else92.if.end102_crit_edge, label %do.end98

if.else92.if.end102_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end102

do.end98:                                         ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #22
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %call72, i32 noundef %call15, ptr noundef nonnull %call37, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %if.end102

if.end102:                                        ; preds = %do.end98, %if.else92.if.end102_crit_edge, %do.end87, %do.end81
  %call103 = call i32 @filp_close(ptr noundef %call.i168, ptr noundef null) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.out_crit_edge, label %do.end108

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #22
  %20 = inttoptr i32 %call103 to ptr
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull %20, ptr noundef %param.addr.0, ptr noundef nonnull %val) #26
  br label %out

out:                                              ; preds = %do.end108, %if.end102.out_crit_edge, %do.end66, %do.end60, %do.end51
  call void @kfree(ptr noundef nonnull %call37) #20
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end32, %do.end, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %sysctl_find_alias.exit.cleanup_crit_edge, %for.inc.3.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 0, %do.end32 ], [ 0, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %sysctl_find_alias.exit.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ 0, %for.inc.3.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sysctl_err(ptr noundef %path, ptr nocapture noundef readonly %table, ptr noundef %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #20
  %0 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #20
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !203
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %0, align 4
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %path, ptr noundef %5, ptr noundef nonnull %vaf) #26
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_douintvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_userhz_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_ms_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_ms_jiffies_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sysctl_print_dir(ptr nocapture noundef readonly %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.ctl_table_header, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call fastcc void @sysctl_print_dir(ptr noundef nonnull %1)
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %5) #26
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_links(ptr nocapture noundef readonly %header) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %root1 = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 3
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root1, align 4
  %parent2 = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 5
  %2 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent2, align 4
  %set = getelementptr inbounds %struct.ctl_table_header, ptr %header, i32 0, i32 4
  %4 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set, align 4
  %cmp = icmp eq ptr %5, @sysctl_table_root
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @xlate_dir(ptr noundef nonnull @sysctl_table_root, ptr noundef %3)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %header, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not62 = icmp eq ptr %9, null
  br i1 %tobool.not62, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %root.i = getelementptr inbounds %struct.ctl_dir, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end34.for.body_crit_edge, %for.body.lr.ph
  %10 = phi ptr [ %9, %for.body.lr.ph ], [ %32, %if.end34.for.body_crit_edge ]
  %entry3.063 = phi ptr [ %7, %for.body.lr.ph ], [ %incdec.ptr, %if.end34.for.body_crit_edge ]
  %call8 = tail call i32 @strlen(ptr noundef nonnull %10) #24
  %11 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.027.i = load ptr, ptr %root.i, align 4
  %tobool.not28.i = icmp eq ptr %node.027.i, null
  br i1 %tobool.not28.i, label %for.body.do.end_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %node.029.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.027.i, %for.body.while.body.i_crit_edge ]
  %header.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i, i32 0, i32 1
  %12 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %header.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %node2.i = getelementptr inbounds %struct.ctl_table_header, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node2.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %node.029.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr %struct.ctl_table, ptr %15, i32 %sub.ptr.div.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %19) #25
  %20 = tail call i32 @llvm.smin.i32(i32 %call8, i32 %call.i) #20
  %call.i.i = tail call i32 @memcmp(ptr noundef nonnull %10, ptr noundef %19, i32 noundef %20) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i, 0
  %sub.i.i = sub i32 %call8, %call.i
  %cmp.0.i.i = select i1 %cmp2.i.i, i32 %sub.i.i, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp5.i = icmp slt i32 %cmp.0.i.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp6.not.i = icmp eq i32 %cmp.0.i.i, 0
  br i1 %cmp6.not.i, label %find_entry.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then7.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then7.i ]
  %21 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.do.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

cleanup.i.do.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

find_entry.exit:                                  ; preds = %if.else.i
  %tobool10.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool10.not, label %find_entry.exit.do.end_crit_edge, label %land.lhs.true

find_entry.exit.do.end_crit_edge:                 ; preds = %find_entry.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true:                                    ; preds = %find_entry.exit
  %mode = getelementptr %struct.ctl_table, ptr %15, i32 %sub.ptr.div.i, i32 3
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mode, align 4
  %24 = and i16 %23, -4096
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %24, label %land.lhs.true.do.end_crit_edge [
    i16 16384, label %land.lhs.true13
    i16 -24576, label %land.lhs.true24
  ]

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %mode14 = getelementptr inbounds %struct.ctl_table, ptr %entry3.063, i32 0, i32 3
  %26 = ptrtoint ptr %mode14 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mode14, align 4
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp17 = icmp eq i16 %28, 16384
  br i1 %cmp17, label %land.lhs.true13.if.then27_crit_edge, label %land.lhs.true13.do.end_crit_edge

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true13.if.then27_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27

land.lhs.true24:                                  ; preds = %land.lhs.true
  %data = getelementptr %struct.ctl_table, ptr %15, i32 %sub.ptr.div.i, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %cmp25 = icmp eq ptr %30, %1
  br i1 %cmp25, label %land.lhs.true24.if.then27_crit_edge, label %land.lhs.true24.do.end_crit_edge

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end

land.lhs.true24.if.then27_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then27

if.then27:                                        ; preds = %land.lhs.true24.if.then27_crit_edge, %land.lhs.true13.if.then27_crit_edge
  tail call fastcc void @drop_sysctl_table(ptr noundef %13)
  br label %if.end34

do.end:                                           ; preds = %land.lhs.true24.do.end_crit_edge, %land.lhs.true13.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %find_entry.exit.do.end_crit_edge, %cleanup.i.do.end_crit_edge, %for.body.do.end_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #26
  tail call fastcc void @sysctl_print_dir(ptr noundef %3)
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %10) #26
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then27
  %incdec.ptr = getelementptr %struct.ctl_table, ptr %entry3.063, i32 1
  %31 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %if.end34.cleanup_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

cleanup:                                          ; preds = %if.end34.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xlate_dir(ptr noundef readonly %set, ptr nocapture noundef readonly %dir) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.ctl_table_header, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %dir2 = getelementptr inbounds %struct.ctl_table_set, ptr %set, i32 0, i32 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @xlate_dir(ptr noundef %set, ptr noundef nonnull %1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dir, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call10 = tail call i32 @strlen(ptr noundef %5) #24
  %root.i.i = getelementptr inbounds %struct.ctl_dir, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.027.i.i = load ptr, ptr %root.i.i, align 4
  %tobool.not28.i.i = icmp eq ptr %node.027.i.i, null
  br i1 %tobool.not28.i.i, label %if.end7.cleanup_crit_edge, label %if.end7.while.body.i.i_crit_edge

if.end7.while.body.i.i_crit_edge:                 ; preds = %if.end7
  br label %while.body.i.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end7.while.body.i.i_crit_edge
  %node.029.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.027.i.i, %if.end7.while.body.i.i_crit_edge ]
  %header.i.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %header.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %node2.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %node2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node2.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %node.029.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 4
  %arrayidx.i.i = getelementptr %struct.ctl_table, ptr %10, i32 %sub.ptr.div.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %14) #25
  %15 = tail call i32 @llvm.smin.i32(i32 %call10, i32 %call.i.i) #20
  %call.i.i.i = tail call i32 @memcmp(ptr noundef %5, ptr noundef %14, i32 noundef %15) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %call.i.i.i, 0
  %sub.i.i.i = sub i32 %call10, %call.i.i
  %cmp.0.i.i.i = select i1 %cmp2.i.i.i, i32 %sub.i.i.i, i32 %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i)
  %cmp5.i.i = icmp slt i32 %cmp.0.i.i.i, 0
  br i1 %cmp5.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i)
  %cmp6.not.i.i = icmp eq i32 %cmp.0.i.i.i, 0
  br i1 %cmp6.not.i.i, label %find_entry.exit.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then7.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then7.i.i ]
  %16 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.cleanup_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i

cleanup.i.i.cleanup_crit_edge:                    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

find_entry.exit.i:                                ; preds = %if.else.i.i
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %find_entry.exit.i.cleanup_crit_edge, label %if.end.i

find_entry.exit.i.cleanup_crit_edge:              ; preds = %find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i:                                         ; preds = %find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %mode.i = getelementptr %struct.ctl_table, ptr %10, i32 %sub.ptr.div.i.i, i32 3
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mode.i, align 4
  %19 = and i16 %18, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %19)
  %cmp.i19 = icmp eq i16 %19, 16384
  %spec.select.i = select i1 %cmp.i19, ptr %8, ptr inttoptr (i32 -20 to ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %find_entry.exit.i.cleanup_crit_edge, %cleanup.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dir2, %if.then ], [ %call, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %find_entry.exit.i.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end7.cleanup_crit_edge ], [ %spec.select.i, %if.end.i ], [ inttoptr (i32 -2 to ptr), %cleanup.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @get_links(ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %table, ptr noundef readnone %link_root) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not100 = icmp eq ptr %1, null
  br i1 %tobool.not100, label %entry.cleanup35_crit_edge, label %for.body.lr.ph

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

for.body.lr.ph:                                   ; preds = %entry
  %root.i = getelementptr inbounds %struct.ctl_dir, ptr %dir, i32 0, i32 1
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.027.i = load ptr, ptr %root.i, align 4
  %tobool.not28.i = icmp eq ptr %node.027.i, null
  br label %for.body

for.cond24.preheader:                             ; preds = %for.inc
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load ptr, ptr %table, align 4
  %tobool26.not104 = icmp eq ptr %.pr, null
  br i1 %tobool26.not104, label %for.cond24.preheader.cleanup35_crit_edge, label %for.body27.lr.ph

for.cond24.preheader.cleanup35_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

for.body27.lr.ph:                                 ; preds = %for.cond24.preheader
  %root.i53 = getelementptr inbounds %struct.ctl_dir, ptr %dir, i32 0, i32 1
  br label %for.body27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %25, %for.inc.for.body_crit_edge ]
  %entry1.0101 = phi ptr [ %table, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef nonnull %4) #24
  br i1 %tobool.not28.i, label %for.body.cleanup35_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.cleanup35_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %node.029.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.027.i, %for.body.while.body.i_crit_edge ]
  %header.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i, i32 0, i32 1
  %5 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %header.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %node2.i = getelementptr inbounds %struct.ctl_table_header, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node2.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %node.029.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr %struct.ctl_table, ptr %8, i32 %sub.ptr.div.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %12) #25
  %13 = tail call i32 @llvm.smin.i32(i32 %call, i32 %call.i) #20
  %call.i.i = tail call i32 @memcmp(ptr noundef nonnull %4, ptr noundef %12, i32 noundef %13) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i, 0
  %sub.i.i = sub i32 %call, %call.i
  %cmp.0.i.i = select i1 %cmp2.i.i, i32 %sub.i.i, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp5.i = icmp slt i32 %cmp.0.i.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp6.not.i = icmp eq i32 %cmp.0.i.i, 0
  br i1 %cmp6.not.i, label %find_entry.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then7.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then7.i ]
  %14 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.cleanup35_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

cleanup.i.cleanup35_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

find_entry.exit:                                  ; preds = %if.else.i
  %tobool5.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool5.not, label %find_entry.exit.cleanup35_crit_edge, label %if.end

find_entry.exit.cleanup35_crit_edge:              ; preds = %find_entry.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

if.end:                                           ; preds = %find_entry.exit
  %mode = getelementptr %struct.ctl_table, ptr %8, i32 %sub.ptr.div.i, i32 3
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode, align 4
  %17 = and i16 %16, -4096
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.80)
  switch i16 %17, label %if.end.cleanup35_crit_edge [
    i16 16384, label %land.lhs.true
    i16 -24576, label %land.lhs.true19
  ]

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

land.lhs.true:                                    ; preds = %if.end
  %mode7 = getelementptr inbounds %struct.ctl_table, ptr %entry1.0101, i32 0, i32 3
  %19 = ptrtoint ptr %mode7 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mode7, align 4
  %21 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp10 = icmp eq i16 %21, 16384
  br i1 %cmp10, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.cleanup35_crit_edge

land.lhs.true.cleanup35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

land.lhs.true19:                                  ; preds = %if.end
  %data = getelementptr %struct.ctl_table, ptr %8, i32 %sub.ptr.div.i, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %cmp20 = icmp eq ptr %23, %link_root
  br i1 %cmp20, label %land.lhs.true19.for.inc_crit_edge, label %land.lhs.true19.cleanup35_crit_edge

land.lhs.true19.cleanup35_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true19.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.ctl_table, ptr %entry1.0101, i32 1
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %for.cond24.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

for.body27:                                       ; preds = %find_entry.exit83.for.body27_crit_edge, %for.body27.lr.ph
  %26 = phi ptr [ %.pr, %for.body27.lr.ph ], [ %41, %find_entry.exit83.for.body27_crit_edge ]
  %entry1.1106 = phi ptr [ %table, %for.body27.lr.ph ], [ %incdec.ptr33, %find_entry.exit83.for.body27_crit_edge ]
  %head.2105 = phi ptr [ %6, %for.body27.lr.ph ], [ %head.3, %find_entry.exit83.for.body27_crit_edge ]
  %call30 = tail call i32 @strlen(ptr noundef nonnull %26) #24
  %27 = ptrtoint ptr %root.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %node.027.i54 = load ptr, ptr %root.i53, align 4
  %tobool.not28.i55 = icmp eq ptr %node.027.i54, null
  br i1 %tobool.not28.i55, label %for.body27.find_entry.exit83_crit_edge, label %for.body27.while.body.i70_crit_edge

for.body27.while.body.i70_crit_edge:              ; preds = %for.body27
  br label %while.body.i70

for.body27.find_entry.exit83_crit_edge:           ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #22
  br label %find_entry.exit83

while.body.i70:                                   ; preds = %cleanup.i81.while.body.i70_crit_edge, %for.body27.while.body.i70_crit_edge
  %node.029.i56 = phi ptr [ %node.0.i79, %cleanup.i81.while.body.i70_crit_edge ], [ %node.027.i54, %for.body27.while.body.i70_crit_edge ]
  %header.i57 = getelementptr inbounds %struct.ctl_node, ptr %node.029.i56, i32 0, i32 1
  %28 = ptrtoint ptr %header.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %header.i57, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %node2.i58 = getelementptr inbounds %struct.ctl_table_header, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %node2.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %node2.i58, align 4
  %sub.ptr.lhs.cast.i59 = ptrtoint ptr %node.029.i56 to i32
  %sub.ptr.rhs.cast.i60 = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i61 = sub i32 %sub.ptr.lhs.cast.i59, %sub.ptr.rhs.cast.i60
  %sub.ptr.div.i62 = ashr exact i32 %sub.ptr.sub.i61, 4
  %arrayidx.i63 = getelementptr %struct.ctl_table, ptr %31, i32 %sub.ptr.div.i62
  %34 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i63, align 4
  %call.i64 = tail call i32 @strlen(ptr noundef %35) #25
  %36 = tail call i32 @llvm.smin.i32(i32 %call30, i32 %call.i64) #20
  %call.i.i65 = tail call i32 @memcmp(ptr noundef nonnull %26, ptr noundef %35, i32 noundef %36) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %cmp2.i.i66 = icmp eq i32 %call.i.i65, 0
  %sub.i.i67 = sub i32 %call30, %call.i64
  %cmp.0.i.i68 = select i1 %cmp2.i.i66, i32 %sub.i.i67, i32 %call.i.i65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i68)
  %cmp5.i69 = icmp slt i32 %cmp.0.i.i68, 0
  br i1 %cmp5.i69, label %if.then.i72, label %if.else.i74

if.then.i72:                                      ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i71 = getelementptr inbounds %struct.rb_node, ptr %node.029.i56, i32 0, i32 2
  br label %cleanup.i81

if.else.i74:                                      ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i68)
  %cmp6.not.i73 = icmp eq i32 %cmp.0.i.i68, 0
  br i1 %cmp6.not.i73, label %if.else.i74.find_entry.exit83_crit_edge, label %if.then7.i76

if.else.i74.find_entry.exit83_crit_edge:          ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #22
  br label %find_entry.exit83

if.then7.i76:                                     ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i75 = getelementptr inbounds %struct.rb_node, ptr %node.029.i56, i32 0, i32 1
  br label %cleanup.i81

cleanup.i81:                                      ; preds = %if.then7.i76, %if.then.i72
  %node.1.in.i78 = phi ptr [ %rb_left.i71, %if.then.i72 ], [ %rb_right.i75, %if.then7.i76 ]
  %37 = ptrtoint ptr %node.1.in.i78 to i32
  call void @__asan_load4_noabort(i32 %37)
  %node.0.i79 = load ptr, ptr %node.1.in.i78, align 4
  %tobool.not.i80 = icmp eq ptr %node.0.i79, null
  br i1 %tobool.not.i80, label %cleanup.i81.find_entry.exit83_crit_edge, label %cleanup.i81.while.body.i70_crit_edge

cleanup.i81.while.body.i70_crit_edge:             ; preds = %cleanup.i81
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i70

cleanup.i81.find_entry.exit83_crit_edge:          ; preds = %cleanup.i81
  call void @__sanitizer_cov_trace_pc() #22
  br label %find_entry.exit83

find_entry.exit83:                                ; preds = %cleanup.i81.find_entry.exit83_crit_edge, %if.else.i74.find_entry.exit83_crit_edge, %for.body27.find_entry.exit83_crit_edge
  %head.3 = phi ptr [ %head.2105, %for.body27.find_entry.exit83_crit_edge ], [ %29, %if.else.i74.find_entry.exit83_crit_edge ], [ %head.2105, %cleanup.i81.find_entry.exit83_crit_edge ]
  %nreg = getelementptr inbounds %struct.anon.3, ptr %head.3, i32 0, i32 3
  %38 = ptrtoint ptr %nreg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nreg, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %nreg, align 4
  %incdec.ptr33 = getelementptr %struct.ctl_table, ptr %entry1.1106, i32 1
  %40 = ptrtoint ptr %incdec.ptr33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %incdec.ptr33, align 4
  %tobool26.not = icmp eq ptr %41, null
  br i1 %tobool26.not, label %find_entry.exit83.cleanup35_crit_edge, label %find_entry.exit83.for.body27_crit_edge

find_entry.exit83.for.body27_crit_edge:           ; preds = %find_entry.exit83
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body27

find_entry.exit83.cleanup35_crit_edge:            ; preds = %find_entry.exit83
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup35

cleanup35:                                        ; preds = %find_entry.exit83.cleanup35_crit_edge, %land.lhs.true19.cleanup35_crit_edge, %land.lhs.true.cleanup35_crit_edge, %if.end.cleanup35_crit_edge, %find_entry.exit.cleanup35_crit_edge, %cleanup.i.cleanup35_crit_edge, %for.body.cleanup35_crit_edge, %for.cond24.preheader.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %tobool.not97 = phi i1 [ true, %for.cond24.preheader.cleanup35_crit_edge ], [ true, %entry.cleanup35_crit_edge ], [ true, %find_entry.exit83.cleanup35_crit_edge ], [ false, %cleanup.i.cleanup35_crit_edge ], [ false, %find_entry.exit.cleanup35_crit_edge ], [ false, %land.lhs.true19.cleanup35_crit_edge ], [ false, %for.body.cleanup35_crit_edge ], [ false, %land.lhs.true.cleanup35_crit_edge ], [ false, %if.end.cleanup35_crit_edge ]
  ret i1 %tobool.not97
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_invalidate_siblings_dcache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_sys_lookup(ptr nocapture noundef readonly %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %h = alloca ptr, align 4
  %p = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl.i = getelementptr i8, ptr %dir, i32 -24
  %0 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %use_table.exit.i.i, label %entry.grab_header.exit_crit_edge, !prof !201

entry.grab_header.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %grab_header.exit

use_table.exit.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  br label %grab_header.exit

grab_header.exit:                                 ; preds = %use_table.exit.i.i, %entry.grab_header.exit_crit_edge
  %head.addr.0.i.i = phi ptr [ %spec.store.select.i, %use_table.exit.i.i ], [ inttoptr (i32 -2 to ptr), %entry.grab_header.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %h) #20
  %6 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %h, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #20
  %cmp.i = icmp ugt ptr %head.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %grab_header.exit.cleanup_crit_edge, label %if.end

grab_header.exit.cleanup_crit_edge:               ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %grab_header.exit
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name4 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name4, align 8
  %9 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %d_name, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %root.i.i = getelementptr inbounds %struct.ctl_dir, ptr %head.addr.0.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %root.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.027.i.i = load ptr, ptr %root.i.i, align 4
  %tobool.not28.i.i = icmp eq ptr %node.027.i.i, null
  br i1 %tobool.not28.i.i, label %if.end.lookup_entry.exit.thread_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.lookup_entry.exit.thread_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %lookup_entry.exit.thread

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %node.029.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.027.i.i, %if.end.while.body.i.i_crit_edge ]
  %header.i.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %header.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %node2.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %node2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node2.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %node.029.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i32 %sub.ptr.sub.i.i, 4
  %arrayidx.i.i = getelementptr %struct.ctl_table, ptr %15, i32 %sub.ptr.div.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %19) #25
  %20 = tail call i32 @llvm.smin.i32(i32 %10, i32 %call.i.i) #20
  %call.i.i.i = tail call i32 @memcmp(ptr noundef %8, ptr noundef %19, i32 noundef %20) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %call.i.i.i, 0
  %sub.i.i.i = sub i32 %10, %call.i.i
  %cmp.0.i.i.i = select i1 %cmp2.i.i.i, i32 %sub.i.i.i, i32 %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i)
  %cmp5.i.i = icmp slt i32 %cmp.0.i.i.i, 0
  br i1 %cmp5.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i.i)
  %cmp6.not.i.i = icmp eq i32 %cmp.0.i.i.i, 0
  br i1 %cmp6.not.i.i, label %find_entry.exit.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then7.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then7.i.i ]
  %21 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.lookup_entry.exit.thread_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i.i

cleanup.i.i.lookup_entry.exit.thread_crit_edge:   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lookup_entry.exit.thread

find_entry.exit.i:                                ; preds = %if.else.i.i
  %tobool.not.i45 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i45, label %find_entry.exit.i.lookup_entry.exit.thread_crit_edge, label %land.lhs.true.i

find_entry.exit.i.lookup_entry.exit.thread_crit_edge: ; preds = %find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lookup_entry.exit.thread

land.lhs.true.i:                                  ; preds = %find_entry.exit.i
  %unregistering.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %unregistering.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unregistering.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %23, null
  br i1 %tobool.not.i5.i, label %if.end7, label %land.lhs.true.i.lookup_entry.exit.thread_crit_edge, !prof !201

land.lhs.true.i.lookup_entry.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %lookup_entry.exit.thread

lookup_entry.exit.thread:                         ; preds = %land.lhs.true.i.lookup_entry.exit.thread_crit_edge, %find_entry.exit.i.lookup_entry.exit.thread_crit_edge, %cleanup.i.i.lookup_entry.exit.thread_crit_edge, %if.end.lookup_entry.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %24 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %p, align 4
  br label %out

if.end7:                                          ; preds = %land.lhs.true.i
  %used.i.i = getelementptr inbounds %struct.anon.3, ptr %13, i32 0, i32 1
  %25 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %26, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %27 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %13, ptr %h, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %28 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.i.i, ptr %p, align 4
  %mode = getelementptr %struct.ctl_table, ptr %15, i32 %sub.ptr.div.i.i, i32 3
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mode, align 4
  %31 = and i16 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %31)
  %cmp = icmp eq i16 %31, -24576
  br i1 %cmp, label %if.then9, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  %call10 = call fastcc i32 @sysctl_follow_link(ptr noundef nonnull %h, ptr noundef nonnull %p)
  %32 = inttoptr i32 %call10 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool12.not = icmp eq i32 %call10, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end15

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %35 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %h, align 4
  %tobool16.not = icmp eq ptr %36, null
  %call. = select i1 %tobool16.not, ptr %head.addr.0.i.i, ptr %36
  %37 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %p, align 4
  %call17 = tail call fastcc ptr @proc_sys_make_inode(ptr noundef %34, ptr noundef %call., ptr noundef %38)
  %cmp.i46 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.end15.out_crit_edge, label %if.end21

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @d_set_d_op(ptr noundef %dentry, ptr noundef nonnull @proc_sys_dentry_operations) #20
  %call22 = tail call ptr @d_splice_alias(ptr noundef %call17, ptr noundef %dentry) #20
  br label %out

out:                                              ; preds = %if.end21, %if.end15.out_crit_edge, %if.then9.out_crit_edge, %lookup_entry.exit.thread
  %err.0 = phi ptr [ %32, %if.then9.out_crit_edge ], [ %call22, %if.end21 ], [ inttoptr (i32 -2 to ptr), %lookup_entry.exit.thread ], [ %call17, %if.end15.out_crit_edge ]
  %39 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %h, align 4
  %tobool23.not = icmp eq ptr %40, null
  br i1 %tobool23.not, label %out.if.end25_crit_edge, label %if.end.i

out.if.end25_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.end.i:                                         ; preds = %out
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %used.i.i48 = getelementptr inbounds %struct.anon.3, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %used.i.i48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %used.i.i48, align 4
  %dec.i.i = add i32 %42, -1
  store i32 %dec.i.i, ptr %used.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i49 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i49, label %if.then.i.i51, label %if.end.i.sysctl_head_finish.exit_crit_edge

if.end.i.sysctl_head_finish.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then.i.i51:                                    ; preds = %if.end.i
  %unregistering.i.i50 = getelementptr inbounds %struct.ctl_table_header, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %unregistering.i.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %unregistering.i.i50, align 4
  %tobool1.not.i.i = icmp eq ptr %44, null
  br i1 %tobool1.not.i.i, label %if.then.i.i51.sysctl_head_finish.exit_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i51.sysctl_head_finish.exit_crit_edge:  ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then4.i.i:                                     ; preds = %if.then.i.i51
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %44) #20
  br label %sysctl_head_finish.exit

sysctl_head_finish.exit:                          ; preds = %if.then4.i.i, %if.then.i.i51.sysctl_head_finish.exit_crit_edge, %if.end.i.sysctl_head_finish.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %if.end25

if.end25:                                         ; preds = %sysctl_head_finish.exit, %out.if.end25_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %used.i.i52 = getelementptr inbounds %struct.anon.3, ptr %head.addr.0.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %used.i.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %used.i.i52, align 4
  %dec.i.i53 = add i32 %46, -1
  store i32 %dec.i.i53, ptr %used.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i53)
  %tobool.not.i.i54 = icmp eq i32 %dec.i.i53, 0
  br i1 %tobool.not.i.i54, label %if.then.i.i58, label %if.end25.sysctl_head_finish.exit61_crit_edge

if.end25.sysctl_head_finish.exit61_crit_edge:     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit61

if.then.i.i58:                                    ; preds = %if.end25
  %unregistering.i.i56 = getelementptr inbounds %struct.ctl_table_header, ptr %head.addr.0.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %unregistering.i.i56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %unregistering.i.i56, align 4
  %tobool1.not.i.i57 = icmp eq ptr %48, null
  br i1 %tobool1.not.i.i57, label %if.then.i.i58.sysctl_head_finish.exit61_crit_edge, label %if.then4.i.i59, !prof !201

if.then.i.i58.sysctl_head_finish.exit61_crit_edge: ; preds = %if.then.i.i58
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit61

if.then4.i.i59:                                   ; preds = %if.then.i.i58
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %48) #20
  br label %sysctl_head_finish.exit61

sysctl_head_finish.exit61:                        ; preds = %if.then4.i.i59, %if.then.i.i58.sysctl_head_finish.exit61_crit_edge, %if.end25.sysctl_head_finish.exit61_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_head_finish.exit61, %grab_header.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %sysctl_head_finish.exit61 ], [ %head.addr.0.i.i, %grab_header.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %h) #20
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_permission(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp = icmp eq i16 %2, -32768
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sysctl.i = getelementptr i8, ptr %inode, i32 -24
  %3 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %5 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %grab_header.exit, label %grab_header.exit.thread, !prof !201

grab_header.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %if.then4

grab_header.exit:                                 ; preds = %if.end
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %7 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %cmp.i = icmp ugt ptr %spec.store.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %grab_header.exit.if.then4_crit_edge, label %if.end6

grab_header.exit.if.then4_crit_edge:              ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then4

if.then4:                                         ; preds = %grab_header.exit.if.then4_crit_edge, %grab_header.exit.thread
  %head.addr.0.i.i31 = phi ptr [ inttoptr (i32 -2 to ptr), %grab_header.exit.thread ], [ %spec.store.select.i, %grab_header.exit.if.then4_crit_edge ]
  %9 = ptrtoint ptr %head.addr.0.i.i31 to i32
  br label %cleanup

if.end6:                                          ; preds = %grab_header.exit
  %sysctl_entry = getelementptr i8, ptr %inode, i32 -20
  %10 = ptrtoint ptr %sysctl_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysctl_entry, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #22
  %and10 = and i32 %mask, 2
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %root1.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 3
  %12 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %root1.i, align 4
  %permissions.i = getelementptr inbounds %struct.ctl_table_root, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %permissions.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %permissions.i, align 4
  %tobool.not.i25 = icmp eq ptr %15, null
  br i1 %tobool.not.i25, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 %15(ptr noundef %spec.store.select.i, ptr noundef nonnull %11) #20
  br label %if.end.i

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  %mode3.i = getelementptr inbounds %struct.ctl_table, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode3.i, align 4
  %conv.i = zext i16 %17 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %mode.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %18 = tail call i32 @llvm.read_register.i32(metadata !190) #20
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i.i, align 16
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %euid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agg.tmp.sroa.0.0.copyload.i.i)
  %cmp.i.i.i = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %shr.i.i = ashr i32 %mode.0.i, 6
  br label %sysctl_perm.exit

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i.i = tail call i32 @in_egroup_p([1 x i32] zeroinitializer) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  %shr8.i.i = ashr i32 %mode.0.i, 3
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %mode.0.i, i32 %shr8.i.i
  br label %sysctl_perm.exit

sysctl_perm.exit:                                 ; preds = %if.else.i.i, %if.then.i.i
  %mode.addr.0.i.i = phi i32 [ %shr.i.i, %if.then.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %neg.i.i = xor i32 %mode.addr.0.i.i, -1
  %and.i.i = and i32 %mask, 7
  %and10.i.i = and i32 %and.i.i, %neg.i.i
  br label %if.end14

if.end14:                                         ; preds = %sysctl_perm.exit, %if.then9
  %and10.i.i.sink = phi i32 [ %and10.i.i, %sysctl_perm.exit ], [ %and10, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.sink)
  %cmp.i.i = icmp eq i32 %and10.i.i.sink, 0
  %..i.i = select i1 %cmp.i.i, i32 0, i32 -13
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %25 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %used.i.i.i, align 4
  %dec.i.i = add i32 %26, -1
  store i32 %dec.i.i, ptr %used.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i26 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i26, label %if.then.i.i28, label %if.end14.sysctl_head_finish.exit_crit_edge

if.end14.sysctl_head_finish.exit_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then.i.i28:                                    ; preds = %if.end14
  %27 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %28, null
  br i1 %tobool1.not.i.i, label %if.then.i.i28.sysctl_head_finish.exit_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i28.sysctl_head_finish.exit_crit_edge:  ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then4.i.i:                                     ; preds = %if.then.i.i28
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %28) #20
  br label %sysctl_head_finish.exit

sysctl_head_finish.exit:                          ; preds = %if.then4.i.i, %if.then.i.i28.sysctl_head_finish.exit_crit_edge, %if.end14.sysctl_head_finish.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_head_finish.exit, %if.then4, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then4 ], [ %..i.i, %sysctl_head_finish.exit ], [ -13, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_setattr(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 8
  %and = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %attr) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %attr) #20
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_getattr(ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 noundef %request_mask, i32 noundef %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %sysctl.i = getelementptr i8, ptr %3, i32 -24
  %4 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %grab_header.exit, label %grab_header.exit.thread, !prof !201

grab_header.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %if.then

grab_header.exit:                                 ; preds = %entry
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %8 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %sysctl_entry = getelementptr i8, ptr %3, i32 -20
  %10 = ptrtoint ptr %sysctl_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysctl_entry, align 4
  %cmp.i = icmp ugt ptr %spec.store.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %grab_header.exit.if.then_crit_edge, label %if.end

grab_header.exit.if.then_crit_edge:               ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %grab_header.exit.if.then_crit_edge, %grab_header.exit.thread
  %head.addr.0.i.i25 = phi ptr [ inttoptr (i32 -2 to ptr), %grab_header.exit.thread ], [ %spec.store.select.i, %grab_header.exit.if.then_crit_edge ]
  %12 = ptrtoint ptr %head.addr.0.i.i25 to i32
  br label %cleanup

if.end:                                           ; preds = %grab_header.exit
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #20
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %mode = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mode, align 4
  %15 = and i16 %14, -4096
  %mode6 = getelementptr inbounds %struct.ctl_table, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %mode6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mode6, align 4
  %or20 = or i16 %15, %17
  store i16 %or20, ptr %mode, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %18 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i.i.i, align 4
  %dec.i.i = add i32 %19, -1
  store i32 %dec.i.i, ptr %used.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end10.sysctl_head_finish.exit_crit_edge

if.end10.sysctl_head_finish.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then.i.i:                                      ; preds = %if.end10
  %20 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.sysctl_head_finish.exit_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i.sysctl_head_finish.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %21) #20
  br label %sysctl_head_finish.exit

sysctl_head_finish.exit:                          ; preds = %if.then4.i.i, %if.then.i.i.sysctl_head_finish.exit_crit_edge, %if.end10.sysctl_head_finish.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_head_finish.exit, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ 0, %sysctl_head_finish.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysctl_follow_link(ptr nocapture noundef %phead, ptr nocapture noundef %pentry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %0 = ptrtoint ptr %pentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pentry, align 4
  %data = getelementptr inbounds %struct.ctl_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %lookup.i = getelementptr inbounds %struct.ctl_table_root, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lookup.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.lookup_header_set.exit_crit_edge, label %if.then.i

entry.lookup_header_set.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %lookup_header_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call ptr %5(ptr noundef %3) #20
  br label %lookup_header_set.exit

lookup_header_set.exit:                           ; preds = %if.then.i, %entry.lookup_header_set.exit_crit_edge
  %set.0.i = phi ptr [ %call.i, %if.then.i ], [ %3, %entry.lookup_header_set.exit_crit_edge ]
  %6 = ptrtoint ptr %phead to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phead, align 4
  %parent = getelementptr inbounds %struct.ctl_table_header, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %call2 = tail call fastcc ptr @xlate_dir(ptr noundef %set.0.i, ptr noundef %9)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %lookup_header_set.exit
  call void @__sanitizer_cov_trace_pc() #22
  %10 = ptrtoint ptr %call2 to i32
  br label %if.end11

if.else:                                          ; preds = %lookup_header_set.exit
  %11 = ptrtoint ptr %pentry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pentry, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call6 = tail call i32 @strlen(ptr noundef %14) #24
  %root.i = getelementptr inbounds %struct.ctl_dir, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %node.027.i = load ptr, ptr %root.i, align 4
  %tobool.not28.i = icmp eq ptr %node.027.i, null
  br i1 %tobool.not28.i, label %if.else.if.end11_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %node.029.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.027.i, %if.else.while.body.i_crit_edge ]
  %header.i = getelementptr inbounds %struct.ctl_node, ptr %node.029.i, i32 0, i32 1
  %16 = ptrtoint ptr %header.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %header.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %node2.i = getelementptr inbounds %struct.ctl_table_header, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %node2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %node2.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %node.029.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr %struct.ctl_table, ptr %19, i32 %sub.ptr.div.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %call.i20 = tail call i32 @strlen(ptr noundef %23) #25
  %24 = tail call i32 @llvm.smin.i32(i32 %call6, i32 %call.i20) #20
  %call.i.i = tail call i32 @memcmp(ptr noundef %14, ptr noundef %23, i32 noundef %24) #25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i, 0
  %sub.i.i = sub i32 %call6, %call.i20
  %cmp.0.i.i = select i1 %cmp2.i.i, i32 %sub.i.i, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp5.i = icmp slt i32 %cmp.0.i.i, 0
  br i1 %cmp5.i, label %if.then.i21, label %if.else.i

if.then.i21:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmp.0.i.i)
  %cmp6.not.i = icmp eq i32 %cmp.0.i.i, 0
  br i1 %cmp6.not.i, label %find_entry.exit, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.029.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then7.i, %if.then.i21
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i21 ], [ %rb_right.i, %if.then7.i ]
  %25 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i22 = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i22, label %cleanup.i.if.end11_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %while.body.i

cleanup.i.if.end11_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

find_entry.exit:                                  ; preds = %if.else.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_entry.exit.if.end11_crit_edge, label %land.lhs.true

find_entry.exit.if.end11_crit_edge:               ; preds = %find_entry.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

land.lhs.true:                                    ; preds = %find_entry.exit
  %unregistering.i = getelementptr inbounds %struct.ctl_table_header, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %unregistering.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unregistering.i, align 4
  %tobool.not.i23 = icmp eq ptr %27, null
  br i1 %tobool.not.i23, label %if.then10, label %land.lhs.true.if.end11_crit_edge, !prof !201

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %used.i = getelementptr inbounds %struct.anon.3, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %29, 1
  store i32 %inc.i, ptr %used.i, align 4
  %30 = ptrtoint ptr %phead to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phead, align 4
  %used.i24 = getelementptr inbounds %struct.anon.3, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %used.i24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used.i24, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %used.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i25 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i25, label %if.then.i27, label %if.then10.unuse_table.exit_crit_edge

if.then10.unuse_table.exit_crit_edge:             ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #22
  br label %unuse_table.exit

if.then.i27:                                      ; preds = %if.then10
  %unregistering.i26 = getelementptr inbounds %struct.ctl_table_header, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %unregistering.i26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unregistering.i26, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %if.then.i27.unuse_table.exit_crit_edge, label %if.then4.i, !prof !201

if.then.i27.unuse_table.exit_crit_edge:           ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #22
  br label %unuse_table.exit

if.then4.i:                                       ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %35) #20
  br label %unuse_table.exit

unuse_table.exit:                                 ; preds = %if.then4.i, %if.then.i27.unuse_table.exit_crit_edge, %if.then10.unuse_table.exit_crit_edge
  %36 = ptrtoint ptr %phead to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %17, ptr %phead, align 4
  %37 = ptrtoint ptr %pentry to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx.i, ptr %pentry, align 4
  br label %if.end11

if.end11:                                         ; preds = %unuse_table.exit, %land.lhs.true.if.end11_crit_edge, %find_entry.exit.if.end11_crit_edge, %cleanup.i.if.end11_crit_edge, %if.else.if.end11_crit_edge, %if.then
  %ret.1 = phi i32 [ %10, %if.then ], [ 0, %unuse_table.exit ], [ -2, %find_entry.exit.if.end11_crit_edge ], [ -2, %if.else.if.end11_crit_edge ], [ -2, %land.lhs.true.if.end11_crit_edge ], [ -2, %cleanup.i.if.end11_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @proc_sys_make_inode(ptr noundef %sb, ptr noundef %head, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %root1 = getelementptr inbounds %struct.ctl_table_header, ptr %head, i32 0, i32 3
  %0 = ptrtoint ptr %root1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root1, align 4
  %call = tail call ptr @new_inode(ptr noundef %sb) #20
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @get_next_ino() #20
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call3, ptr %i_ino, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering = getelementptr inbounds %struct.ctl_table_header, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %unregistering to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unregistering, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end10, label %if.then8, !prof !201

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  tail call void @iput(ptr noundef nonnull %call) #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %sysctl = getelementptr i8, ptr %call, i32 -24
  %5 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %sysctl, align 8
  %sysctl_entry = getelementptr i8, ptr %call, i32 -20
  %6 = ptrtoint ptr %sysctl_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %table, ptr %sysctl_entry, align 4
  %sibling_inodes = getelementptr i8, ptr %call, i32 -16
  %inodes = getelementptr inbounds %struct.ctl_table_header, ptr %head, i32 0, i32 7
  %7 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %inodes, align 4
  %9 = ptrtoint ptr %sibling_inodes to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sibling_inodes, align 4
  %pprev.i = getelementptr i8, ptr %call, i32 -12
  %10 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %inodes, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #20, !srcloc !204
  %11 = ptrtoint ptr %inodes to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %sibling_inodes, ptr %inodes, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end10.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end10.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #22
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %sibling_inodes, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end10.hlist_add_head_rcu.exit_crit_edge
  %count = getelementptr inbounds %struct.anon.3, ptr %head, i32 0, i32 2
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %count, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #20
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call) #20
  %15 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #20
  %16 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %17 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %mode = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 3
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mode, align 4
  %20 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %call, align 8
  %21 = load i16, ptr %mode, align 4
  %22 = and i16 %21, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %22)
  %cmp = icmp eq i16 %22, 16384
  br i1 %cmp, label %if.else, label %if.then13

if.then13:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #22
  %23 = or i16 %19, -32768
  %24 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %call, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %25 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @proc_sys_inode_operations, ptr %i_op, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @proc_sys_file_operations, ptr %26, align 8
  br label %if.end25

if.else:                                          ; preds = %hlist_add_head_rcu.exit
  %28 = or i16 %19, 16384
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %call, align 8
  %i_op21 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %30 = ptrtoint ptr %i_op21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @proc_sys_dir_operations, ptr %i_op21, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @proc_sys_dir_file_operations, ptr %31, align 8
  %33 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head, align 4
  %child.i = getelementptr inbounds %struct.ctl_table, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %child.i, align 4
  %cmp.i = icmp eq ptr %36, @sysctl_mount_point
  br i1 %cmp.i, label %if.then23, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #22
  call void @make_empty_dir_inode(ptr noundef nonnull %call) #20
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge, %if.then13
  %set_ownership = getelementptr inbounds %struct.ctl_table_root, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %set_ownership to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_ownership, align 4
  %tobool26.not = icmp eq ptr %38, null
  %i_uid30 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  call void %38(ptr noundef %head, ptr noundef %table, ptr noundef %i_uid30, ptr noundef %i_gid) #20
  br label %cleanup

if.else29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #22
  %39 = ptrtoint ptr %i_uid30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %i_uid30, align 4
  %i_gid31 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %40 = ptrtoint ptr %i_gid31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %i_gid31, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then27, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then8 ], [ %call, %if.else29 ], [ %call, %if.then27 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_read(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_sys_call_handler(ptr noundef %iocb, ptr noundef %iter, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_write(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @proc_sys_call_handler(ptr noundef %iocb, ptr noundef %iter, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_poll(ptr noundef %filp, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %sysctl.i = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %grab_header.exit, label %entry.cleanup.sink.split_crit_edge, !prof !201

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

grab_header.exit:                                 ; preds = %entry
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %sysctl_entry = getelementptr i8, ptr %1, i32 -20
  %8 = ptrtoint ptr %sysctl_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sysctl_entry, align 4
  %cmp.i = icmp ugt ptr %spec.store.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %grab_header.exit.cleanup_crit_edge, label %if.end

grab_header.exit.cleanup_crit_edge:               ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %grab_header.exit
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %proc_handler to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_handler, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end5:                                          ; preds = %if.end
  %poll = getelementptr inbounds %struct.ctl_table, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %poll, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end8:                                          ; preds = %if.end5
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data, align 4
  %16 = ptrtoint ptr %15 to i32
  %wait10 = getelementptr inbounds %struct.ctl_table_poll, ptr %13, i32 0, i32 1
  %tobool.not.i32 = icmp eq ptr %wait, null
  br i1 %tobool.not.i32, label %if.end8.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.end8.poll_wait.exit_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %17 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  %tobool3.not.i = icmp eq ptr %wait10, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void %18(ptr noundef %filp, ptr noundef nonnull %wait10, ptr noundef nonnull %wait) #20
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.end8.poll_wait.exit_crit_edge
  %19 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %poll, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %20, i32 noundef 4) #20
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp.not = icmp eq i32 %22, %16
  br i1 %cmp.not, label %poll_wait.exit.out_crit_edge, label %if.then14

poll_wait.exit.out_crit_edge:                     ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.then14:                                        ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #22
  %23 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %poll, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %24, i32 noundef 4) #20
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %private_data, align 4
  br label %out

out:                                              ; preds = %if.then14, %poll_wait.exit.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 75, %if.then14 ], [ 325, %poll_wait.exit.out_crit_edge ], [ 325, %if.end5.out_crit_edge ], [ 325, %if.end.out_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %29 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i.i.i, align 4
  %dec.i.i = add i32 %30, -1
  store i32 %dec.i.i, ptr %used.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %out.cleanup.sink.split_crit_edge

out.cleanup.sink.split_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.then.i.i:                                      ; preds = %out
  %31 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %32, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.cleanup.sink.split_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup.sink.split

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %32) #20
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then4.i.i, %if.then.i.i.cleanup.sink.split_crit_edge, %out.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 24, %entry.cleanup.sink.split_crit_edge ], [ %ret.0, %out.cleanup.sink.split_crit_edge ], [ %ret.0, %if.then.i.i.cleanup.sink.split_crit_edge ], [ %ret.0, %if.then4.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %grab_header.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 24, %grab_header.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl.i = getelementptr i8, ptr %inode, i32 -24
  %0 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %2 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %grab_header.exit, label %grab_header.exit.thread, !prof !201

grab_header.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %if.then

grab_header.exit:                                 ; preds = %entry
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %cmp.i = icmp ugt ptr %spec.store.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %grab_header.exit.if.then_crit_edge, label %if.end

grab_header.exit.if.then_crit_edge:               ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %grab_header.exit.if.then_crit_edge, %grab_header.exit.thread
  %head.addr.0.i.i17 = phi ptr [ inttoptr (i32 -2 to ptr), %grab_header.exit.thread ], [ %spec.store.select.i, %grab_header.exit.if.then_crit_edge ]
  %6 = ptrtoint ptr %head.addr.0.i.i17 to i32
  br label %cleanup

if.end:                                           ; preds = %grab_header.exit
  %sysctl_entry = getelementptr i8, ptr %inode, i32 -20
  %7 = ptrtoint ptr %sysctl_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysctl_entry, align 4
  %poll = getelementptr inbounds %struct.ctl_table, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %poll, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %10, i32 noundef 4) #20
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %13 = inttoptr i32 %12 to ptr
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %private_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %15 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used.i.i.i, align 4
  %dec.i.i = add i32 %16, -1
  store i32 %dec.i.i, ptr %used.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end7.sysctl_head_finish.exit_crit_edge

if.end7.sysctl_head_finish.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then.i.i:                                      ; preds = %if.end7
  %17 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.sysctl_head_finish.exit_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i.sysctl_head_finish.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %18) #20
  br label %sysctl_head_finish.exit

sysctl_head_finish.exit:                          ; preds = %if.then4.i.i, %if.then.i.i.sysctl_head_finish.exit_crit_edge, %if.end7.sysctl_head_finish.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_head_finish.exit, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ 0, %sysctl_head_finish.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @proc_sys_call_handler(ptr noundef %iocb, ptr noundef %iter, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  %kbuf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %sysctl.i = getelementptr i8, ptr %3, i32 -24
  %4 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %use_table.exit.i.i, label %entry.grab_header.exit_crit_edge, !prof !201

entry.grab_header.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %grab_header.exit

use_table.exit.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %8 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %9, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  br label %grab_header.exit

grab_header.exit:                                 ; preds = %use_table.exit.i.i, %entry.grab_header.exit_crit_edge
  %head.addr.0.i.i = phi ptr [ %spec.store.select.i, %use_table.exit.i.i ], [ inttoptr (i32 -2 to ptr), %entry.grab_header.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %sysctl_entry = getelementptr i8, ptr %3, i32 -20
  %10 = ptrtoint ptr %sysctl_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysctl_entry, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #20
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 8
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kbuf) #20
  %15 = ptrtoint ptr %kbuf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -1 to ptr), ptr %kbuf, align 4, !annotation !203
  %cmp.i76 = icmp ugt ptr %head.addr.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then, label %if.end

if.then:                                          ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  %16 = ptrtoint ptr %head.addr.0.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %cond = select i1 %tobool.not, i32 4, i32 2
  %root1.i = getelementptr inbounds %struct.ctl_table_header, ptr %head.addr.0.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %root1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %root1.i, align 4
  %permissions.i = getelementptr inbounds %struct.ctl_table_root, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %permissions.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %permissions.i, align 4
  %tobool.not.i77 = icmp eq ptr %20, null
  br i1 %tobool.not.i77, label %if.else.i78, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 %20(ptr noundef %head.addr.0.i.i, ptr noundef %11) #20
  br label %if.end.i80

if.else.i78:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %mode3.i = getelementptr inbounds %struct.ctl_table, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mode3.i, align 4
  %conv.i = zext i16 %22 to i32
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.else.i78, %if.then.i
  %mode.0.i = phi i32 [ %call.i, %if.then.i ], [ %conv.i, %if.else.i78 ]
  %23 = tail call i32 @llvm.read_register.i32(metadata !190) #20
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i.i, align 8
  %cred.i.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 99
  %27 = ptrtoint ptr %cred.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cred.i.i, align 16
  %euid.i.i = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %euid.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %agg.tmp.sroa.0.0.copyload.i.i = load i32, ptr %euid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %agg.tmp.sroa.0.0.copyload.i.i)
  %cmp.i.i.i79 = icmp eq i32 %agg.tmp.sroa.0.0.copyload.i.i, 0
  br i1 %cmp.i.i.i79, label %if.then.i.i81, label %if.else.i.i83

if.then.i.i81:                                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #22
  %shr.i.i = ashr i32 %mode.0.i, 6
  br label %sysctl_perm.exit

if.else.i.i83:                                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #22
  %call6.i.i = tail call i32 @in_egroup_p([1 x i32] zeroinitializer) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  %shr8.i.i = ashr i32 %mode.0.i, 3
  %spec.select.i.i82 = select i1 %tobool.not.i.i, i32 %mode.0.i, i32 %shr8.i.i
  br label %sysctl_perm.exit

sysctl_perm.exit:                                 ; preds = %if.else.i.i83, %if.then.i.i81
  %mode.addr.0.i.i = phi i32 [ %shr.i.i, %if.then.i.i81 ], [ %spec.select.i.i82, %if.else.i.i83 ]
  %30 = and i32 %mode.addr.0.i.i, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i84.not = icmp eq i32 %30, 0
  br i1 %cmp.i.i84.not, label %sysctl_perm.exit.out_crit_edge, label %if.end9

sysctl_perm.exit.out_crit_edge:                   ; preds = %sysctl_perm.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end9:                                          ; preds = %sysctl_perm.exit
  %proc_handler = getelementptr inbounds %struct.ctl_table, ptr %11, i32 0, i32 5
  %31 = ptrtoint ptr %proc_handler to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %proc_handler, align 4
  %tobool10.not = icmp eq ptr %32, null
  br i1 %tobool10.not, label %if.end9.out_crit_edge, label %if.end12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end12:                                         ; preds = %if.end9
  %33 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %34)
  %cmp = icmp ugt i32 %34, 8388607
  br i1 %cmp, label %if.end12.out_crit_edge, label %if.end14

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end14:                                         ; preds = %if.end12
  %add = add nuw nsw i32 %34, 1
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3520, i32 noundef -1) #23
  %35 = ptrtoint ptr %kbuf to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i.i, ptr %kbuf, align 4
  %tobool16.not = icmp eq ptr %call.i.i, null
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.end18

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end18:                                         ; preds = %if.end14
  br i1 %tobool.not, label %if.end18.if.end24_crit_edge, label %if.then20

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i.i.i = icmp slt i32 %37, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then20
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !201

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i, i32 noundef %37, i1 noundef zeroext false) #20
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call.i.i, i32 noundef %37, ptr noundef %iter) #20
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %37)
  %cmp.i = icmp eq i32 %retval.0.i.i, %37
  br i1 %cmp.i, label %if.end23, label %copy_from_iter_full.exit, !prof !201

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @iov_iter_revert(ptr noundef %iter, i32 noundef %retval.0.i.i) #20
  br label %out_free_buf

if.end23:                                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #22
  %38 = ptrtoint ptr %kbuf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %kbuf, align 4
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count, align 4
  %arrayidx = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end18.if.end24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 13), ptr blockaddress(@proc_sys_call_handler, %if.then29)) #20
          to label %if.end31 [label %if.then29], !srcloc !205

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #22
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %call30 = call i32 @__cgroup_bpf_run_filter_sysctl(ptr noundef %head.addr.0.i.i, ptr noundef %11, i32 noundef %write, ptr noundef nonnull %kbuf, ptr noundef nonnull %count, ptr noundef %ki_pos, i32 noundef 13) #20
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end24
  %__ret.0 = phi i32 [ %call30, %if.then29 ], [ 0, %if.end24 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool33.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_free_buf_crit_edge

if.end31.out_free_buf_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_buf

if.end35:                                         ; preds = %if.end31
  %43 = ptrtoint ptr %proc_handler to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %proc_handler, align 4
  %45 = ptrtoint ptr %kbuf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %kbuf, align 4
  %ki_pos37 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %call38 = call i32 %44(ptr noundef %11, i32 noundef %write, ptr noundef %46, ptr noundef nonnull %count, ptr noundef %ki_pos37) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.out_free_buf_crit_edge

if.end35.out_free_buf_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_buf

if.end41:                                         ; preds = %if.end35
  br i1 %tobool.not, label %if.then43, label %if.end41.if.end48_crit_edge

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48

if.then43:                                        ; preds = %if.end41
  %47 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp9.i.i = icmp slt i32 %48, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i74

land.rhs16.i.i:                                   ; preds = %if.then43
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit_crit_edge, label %if.then27.i.i, !prof !201

land.rhs16.i.i.copy_to_iter.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %copy_to_iter.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 230, i32 noundef 9, ptr noundef null) #20
  br label %copy_to_iter.exit

if.then.i.i.i74:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #22
  %49 = ptrtoint ptr %kbuf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %kbuf, align 4
  call void @__check_object_size(ptr noundef %50, i32 noundef %48, i1 noundef zeroext true) #20
  %call3.i = call i32 @_copy_to_iter(ptr noundef %50, i32 noundef %48, ptr noundef %iter) #20
  br label %copy_to_iter.exit

copy_to_iter.exit:                                ; preds = %if.then.i.i.i74, %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit_crit_edge
  %retval.0.i75 = phi i32 [ %call3.i, %if.then.i.i.i74 ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.copy_to_iter.exit_crit_edge ]
  %51 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i75, i32 %52)
  %cmp45 = icmp ult i32 %retval.0.i75, %52
  br i1 %cmp45, label %copy_to_iter.exit.out_free_buf_crit_edge, label %copy_to_iter.exit.if.end48_crit_edge

copy_to_iter.exit.if.end48_crit_edge:             ; preds = %copy_to_iter.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end48

copy_to_iter.exit.out_free_buf_crit_edge:         ; preds = %copy_to_iter.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out_free_buf

if.end48:                                         ; preds = %copy_to_iter.exit.if.end48_crit_edge, %if.end41.if.end48_crit_edge
  %53 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count, align 4
  br label %out_free_buf

out_free_buf:                                     ; preds = %if.end48, %copy_to_iter.exit.out_free_buf_crit_edge, %if.end35.out_free_buf_crit_edge, %if.end31.out_free_buf_crit_edge, %copy_from_iter_full.exit
  %error.0 = phi i32 [ %__ret.0, %if.end31.out_free_buf_crit_edge ], [ %call38, %if.end35.out_free_buf_crit_edge ], [ %54, %if.end48 ], [ -14, %copy_to_iter.exit.out_free_buf_crit_edge ], [ -14, %copy_from_iter_full.exit ]
  %55 = ptrtoint ptr %kbuf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %kbuf, align 4
  call void @kvfree(ptr noundef %56) #20
  br label %out

out:                                              ; preds = %out_free_buf, %if.end14.out_crit_edge, %if.end12.out_crit_edge, %if.end9.out_crit_edge, %sysctl_perm.exit.out_crit_edge
  %error.1 = phi i32 [ -1, %sysctl_perm.exit.out_crit_edge ], [ -12, %if.end12.out_crit_edge ], [ %error.0, %out_free_buf ], [ -12, %if.end14.out_crit_edge ], [ -22, %if.end9.out_crit_edge ]
  call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %used.i.i = getelementptr inbounds %struct.anon.3, ptr %head.addr.0.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used.i.i, align 4
  %dec.i.i = add i32 %58, -1
  store i32 %dec.i.i, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i85 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i85, label %if.then.i.i87, label %out.sysctl_head_finish.exit_crit_edge

out.sysctl_head_finish.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then.i.i87:                                    ; preds = %out
  %unregistering.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %head.addr.0.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %unregistering.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %unregistering.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i, label %if.then.i.i87.sysctl_head_finish.exit_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i87.sysctl_head_finish.exit_crit_edge:  ; preds = %if.then.i.i87
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit

if.then4.i.i:                                     ; preds = %if.then.i.i87
  call void @__sanitizer_cov_trace_pc() #22
  call void @complete(ptr noundef nonnull %60) #20
  br label %sysctl_head_finish.exit

sysctl_head_finish.exit:                          ; preds = %if.then4.i.i, %if.then.i.i87.sysctl_head_finish.exit_crit_edge, %out.sysctl_head_finish.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_head_finish.exit, %if.then
  %retval.0 = phi i32 [ %16, %if.then ], [ %error.1, %sysctl_head_finish.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kbuf) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #20
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_sysctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_egroup_p([1 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @proc_sys_revalidate(ptr nocapture noundef readonly %dentry, i32 noundef %flags) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %sysctl = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl, align 8
  %unregistering = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unregistering to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unregistering, align 4
  %tobool2.not = icmp eq ptr %5, null
  %lnot.ext = zext i1 %tobool2.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ -10, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_compare(ptr noundef %dentry, i32 noundef %len, ptr nocapture noundef readonly %str, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %d_inode.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %name, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp.not = icmp eq i32 %3, %len
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %name4 = getelementptr inbounds %struct.qstr, ptr %name, i32 0, i32 1
  %4 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name4, align 8
  %bcmp = tail call i32 @bcmp(ptr %5, ptr %str, i32 %len) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %sysctl = getelementptr i8, ptr %1, i32 -24
  %6 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sysctl, align 8
  %call11 = tail call i32 @rcu_read_lock_held() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true, label %if.end8.do.end20_crit_edge

if.end8.do.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end20

land.lhs.true:                                    ; preds = %if.end8
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true15

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end20

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b30 = load i1, ptr @proc_sys_compare.__warned, align 1
  br i1 %.b30, label %land.lhs.true15.do.end20_crit_edge, label %if.then17

land.lhs.true15.do.end20_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  br label %do.end20

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #22
  store i1 true, ptr @proc_sys_compare.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 939, ptr noundef nonnull @.str.35) #20
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %land.lhs.true15.do.end20_crit_edge, %land.lhs.true.do.end20_crit_edge, %if.end8.do.end20_crit_edge
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %do.end20.cleanup_crit_edge, label %lor.rhs

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

lor.rhs:                                          ; preds = %do.end20
  %set1.i = getelementptr inbounds %struct.ctl_table_header, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %set1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set1.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i = getelementptr inbounds %struct.ctl_table_header, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %unregistering.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %unregistering.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %lor.rhs.sysctl_is_seen.exit_crit_edge

lor.rhs.sysctl_is_seen.exit_crit_edge:            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_is_seen.exit

if.else.i:                                        ; preds = %lor.rhs
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.else.i.sysctl_is_seen.exit_crit_edge, label %if.else4.i

if.else.i.sysctl_is_seen.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_is_seen.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #22
  %call.i = tail call i32 %13(ptr noundef %9) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp = icmp eq i32 %call.i, 0
  %phi.cast31 = zext i1 %phi.cmp to i32
  br label %sysctl_is_seen.exit

sysctl_is_seen.exit:                              ; preds = %if.else4.i, %if.else.i.sysctl_is_seen.exit_crit_edge, %lor.rhs.sysctl_is_seen.exit_crit_edge
  %res.0.i = phi i32 [ %phi.cast31, %if.else4.i ], [ 1, %lor.rhs.sysctl_is_seen.exit_crit_edge ], [ 0, %if.else.i.sysctl_is_seen.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_is_seen.exit, %do.end20.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 1, %do.end20.cleanup_crit_edge ], [ %res.0.i, %sysctl_is_seen.exit ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @proc_sys_delete(ptr nocapture noundef readonly %dentry) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %sysctl = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %sysctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl, align 8
  %unregistering = getelementptr inbounds %struct.ctl_table_header, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %unregistering to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unregistering, align 4
  %tobool = icmp ne ptr %5, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_sys_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %sysctl.i = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr getelementptr inbounds (%struct.ctl_table_root, ptr @sysctl_table_root, i32 0, i32 0, i32 1), ptr %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %spec.store.select.i, i32 0, i32 1
  %4 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %grab_header.exit, label %grab_header.exit.thread, !prof !201

grab_header.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %if.then

grab_header.exit:                                 ; preds = %entry
  %used.i.i.i = getelementptr inbounds %struct.anon.3, ptr %spec.store.select.i, i32 0, i32 1
  %6 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %cmp.i = icmp ugt ptr %spec.store.select.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %grab_header.exit.if.then_crit_edge, label %if.end

grab_header.exit.if.then_crit_edge:               ; preds = %grab_header.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then

if.then:                                          ; preds = %grab_header.exit.if.then_crit_edge, %grab_header.exit.thread
  %head.addr.0.i.i80 = phi ptr [ inttoptr (i32 -2 to ptr), %grab_header.exit.thread ], [ %spec.store.select.i, %grab_header.exit.if.then_crit_edge ]
  %8 = ptrtoint ptr %head.addr.0.i.i80 to i32
  br label %cleanup

if.end:                                           ; preds = %grab_header.exit
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.81)
  switch i64 %10, label %if.end.if.end7_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then6.i

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end7

if.then.i:                                        ; preds = %if.end
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %18 to i64
  %call.i.i = tail call i32 %12(ptr noundef %ctx, ptr noundef nonnull @.str.36, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.out_crit_edge

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #22
  %19 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1, ptr %pos.i, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #20
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #20
  %conv.i20.i = zext i32 %29 to i64
  %call1.i.i = tail call i32 %21(ptr noundef %ctx, ptr noundef nonnull @.str.37, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.out_crit_edge

if.then6.i.out_crit_edge:                         ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #22
  %30 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 2, ptr %pos.i, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end9.i, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %root.i = getelementptr inbounds %struct.ctl_dir, ptr %spec.store.select.i, i32 0, i32 1
  %call.i = tail call ptr @rb_first(ptr noundef %root.i) #20
  %tobool.not10.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not10.i.i, label %if.end7.out.sink.split_crit_edge, label %if.end7.for.body.i.i_crit_edge

if.end7.for.body.i.i_crit_edge:                   ; preds = %if.end7
  br label %for.body.i.i

if.end7.out.sink.split_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end7.for.body.i.i_crit_edge
  %node.addr.011.i.i = phi ptr [ %call2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i, %if.end7.for.body.i.i_crit_edge ]
  %header.i.i = getelementptr inbounds %struct.ctl_node, ptr %node.addr.011.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %header.i.i, align 4
  %unregistering.i.i.i22 = getelementptr inbounds %struct.ctl_table_header, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %unregistering.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unregistering.i.i.i22, align 4
  %tobool.not.i.i.i23 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i23, label %first_entry.exit, label %for.inc.i.i, !prof !201

for.inc.i.i:                                      ; preds = %for.body.i.i
  %call2.i.i = tail call ptr @rb_next(ptr noundef nonnull %node.addr.011.i.i) #20
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.out.sink.split_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i

for.inc.i.i.out.sink.split_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

first_entry.exit:                                 ; preds = %for.body.i.i
  %header.i.i.le = getelementptr inbounds %struct.ctl_node, ptr %node.addr.011.i.i, i32 0, i32 1
  %used.i.i.i24 = getelementptr inbounds %struct.anon.3, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %used.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used.i.i.i24, align 4
  %inc.i.i.i25 = add i32 %36, 1
  store i32 %inc.i.i.i25, ptr %used.i.i.i24, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %37 = ptrtoint ptr %header.i.i.le to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %header.i.i.le, align 4
  %tobool.not95 = icmp eq ptr %38, null
  br i1 %tobool.not95, label %first_entry.exit.out_crit_edge, label %for.body.preheader

first_entry.exit.out_crit_edge:                   ; preds = %first_entry.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

for.body.preheader:                               ; preds = %first_entry.exit
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %node.addr.011.i.i to i32
  %node.i = getelementptr inbounds %struct.ctl_table_header, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %node.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr %struct.ctl_table, ptr %40, i32 %sub.ptr.div.i
  br label %for.body

for.body:                                         ; preds = %next_entry.exit.for.body_crit_edge, %for.body.preheader
  %pos.0100 = phi i32 [ %inc.i, %next_entry.exit.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %entry2.099 = phi ptr [ %arrayidx10.i, %next_entry.exit.for.body_crit_edge ], [ %arrayidx.i, %for.body.preheader ]
  %h.096 = phi ptr [ %68, %next_entry.exit.for.body_crit_edge ], [ %38, %for.body.preheader ]
  %inc.i = add i32 %pos.0100, 1
  %conv.i = zext i32 %pos.0100 to i64
  %43 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pos.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv.i)
  %cmp.i27 = icmp sgt i64 %44, %conv.i
  br i1 %cmp.i27, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %mode.i = getelementptr inbounds %struct.ctl_table, ptr %entry2.099, i32 0, i32 3
  %45 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %mode.i, align 4
  %47 = and i16 %46, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %47)
  %cmp4.i = icmp eq i16 %47, -24576
  br i1 %cmp4.i, label %if.then7.i, label %if.end10.i, !prof !202

if.then7.i:                                       ; preds = %if.end.i
  %call.i28 = tail call fastcc zeroext i1 @proc_sys_link_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %h.096, ptr noundef %entry2.099) #20
  br i1 %call.i28, label %if.then7.i.if.then12.i_crit_edge, label %if.then7.i.if.end.i32_crit_edge

if.then7.i.if.end.i32_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i32

if.then7.i.if.then12.i_crit_edge:                 ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12.i

if.end10.i:                                       ; preds = %if.end.i
  %call8.i = tail call fastcc zeroext i1 @proc_sys_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef nonnull %h.096, ptr noundef %entry2.099) #20
  br i1 %call8.i, label %if.end10.i.if.then12.i_crit_edge, label %if.end10.i.if.end.i32_crit_edge

if.end10.i.if.end.i32_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end.i32

if.end10.i.if.then12.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i.if.then12.i_crit_edge, %if.then7.i.if.then12.i_crit_edge
  %conv13.i = zext i32 %inc.i to i64
  %48 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv13.i, ptr %pos.i, align 8
  br label %for.inc

if.end.i32:                                       ; preds = %if.end10.i.if.end.i32_crit_edge, %if.then7.i.if.end.i32_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %used.i.i = getelementptr inbounds %struct.anon.3, ptr %h.096, i32 0, i32 1
  %49 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %used.i.i, align 4
  %dec.i.i = add i32 %50, -1
  store i32 %dec.i.i, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i31 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i31, label %if.then.i.i, label %if.end.i32.out.sink.split_crit_edge

if.end.i32.out.sink.split_crit_edge:              ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

if.then.i.i:                                      ; preds = %if.end.i32
  %unregistering.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %h.096, i32 0, i32 1
  %51 = ptrtoint ptr %unregistering.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unregistering.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.out.sink.split_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i.out.sink.split_crit_edge:             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %52) #20
  br label %out.sink.split

for.inc:                                          ; preds = %if.then12.i, %for.body.for.inc_crit_edge
  %node.i33 = getelementptr inbounds %struct.ctl_table_header, ptr %h.096, i32 0, i32 6
  %53 = ptrtoint ptr %node.i33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %node.i33, align 4
  %55 = ptrtoint ptr %h.096 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %h.096, align 4
  %sub.ptr.lhs.cast.i34 = ptrtoint ptr %entry2.099 to i32
  %sub.ptr.rhs.cast.i35 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i36 = sub i32 %sub.ptr.lhs.cast.i34, %sub.ptr.rhs.cast.i35
  %sub.ptr.div.i37 = sdiv exact i32 %sub.ptr.sub.i36, 36
  %arrayidx.i38 = getelementptr %struct.ctl_node, ptr %54, i32 %sub.ptr.div.i37
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %used.i.i39 = getelementptr inbounds %struct.anon.3, ptr %h.096, i32 0, i32 1
  %57 = ptrtoint ptr %used.i.i39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used.i.i39, align 4
  %dec.i.i40 = add i32 %58, -1
  store i32 %dec.i.i40, ptr %used.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %dec.i.i40, 0
  br i1 %tobool.not.i.i41, label %if.then.i.i44, label %for.inc.unuse_table.exit.i48_crit_edge

for.inc.unuse_table.exit.i48_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #22
  br label %unuse_table.exit.i48

if.then.i.i44:                                    ; preds = %for.inc
  %unregistering.i.i42 = getelementptr inbounds %struct.ctl_table_header, ptr %h.096, i32 0, i32 1
  %59 = ptrtoint ptr %unregistering.i.i42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %unregistering.i.i42, align 4
  %tobool1.not.i.i43 = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i43, label %if.then.i.i44.unuse_table.exit.i48_crit_edge, label %if.then4.i.i45, !prof !201

if.then.i.i44.unuse_table.exit.i48_crit_edge:     ; preds = %if.then.i.i44
  call void @__sanitizer_cov_trace_pc() #22
  br label %unuse_table.exit.i48

if.then4.i.i45:                                   ; preds = %if.then.i.i44
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %60) #20
  br label %unuse_table.exit.i48

unuse_table.exit.i48:                             ; preds = %if.then4.i.i45, %if.then.i.i44.unuse_table.exit.i48_crit_edge, %for.inc.unuse_table.exit.i48_crit_edge
  %call.i46 = tail call ptr @rb_next(ptr noundef %arrayidx.i38) #20
  %tobool.not10.i.i47 = icmp eq ptr %call.i46, null
  br i1 %tobool.not10.i.i47, label %unuse_table.exit.i48.out.sink.split_crit_edge, label %unuse_table.exit.i48.for.body.i.i53_crit_edge

unuse_table.exit.i48.for.body.i.i53_crit_edge:    ; preds = %unuse_table.exit.i48
  br label %for.body.i.i53

unuse_table.exit.i48.out.sink.split_crit_edge:    ; preds = %unuse_table.exit.i48
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

for.body.i.i53:                                   ; preds = %for.inc.i.i55.for.body.i.i53_crit_edge, %unuse_table.exit.i48.for.body.i.i53_crit_edge
  %node.addr.011.i.i49 = phi ptr [ %call2.i.i54, %for.inc.i.i55.for.body.i.i53_crit_edge ], [ %call.i46, %unuse_table.exit.i48.for.body.i.i53_crit_edge ]
  %header.i.i50 = getelementptr inbounds %struct.ctl_node, ptr %node.addr.011.i.i49, i32 0, i32 1
  %61 = ptrtoint ptr %header.i.i50 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %header.i.i50, align 4
  %unregistering.i.i.i51 = getelementptr inbounds %struct.ctl_table_header, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %unregistering.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %unregistering.i.i.i51, align 4
  %tobool.not.i.i.i52 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i52, label %next_entry.exit, label %for.inc.i.i55, !prof !201

for.inc.i.i55:                                    ; preds = %for.body.i.i53
  %call2.i.i54 = tail call ptr @rb_next(ptr noundef nonnull %node.addr.011.i.i49) #20
  %tobool.not.i22.i = icmp eq ptr %call2.i.i54, null
  br i1 %tobool.not.i22.i, label %for.inc.i.i55.out.sink.split_crit_edge, label %for.inc.i.i55.for.body.i.i53_crit_edge

for.inc.i.i55.for.body.i.i53_crit_edge:           ; preds = %for.inc.i.i55
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body.i.i53

for.inc.i.i55.out.sink.split_crit_edge:           ; preds = %for.inc.i.i55
  call void @__sanitizer_cov_trace_pc() #22
  br label %out.sink.split

next_entry.exit:                                  ; preds = %for.body.i.i53
  %header.i.i50.le = getelementptr inbounds %struct.ctl_node, ptr %node.addr.011.i.i49, i32 0, i32 1
  %used.i.i.i58 = getelementptr inbounds %struct.anon.3, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %used.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %used.i.i.i58, align 4
  %inc.i.i.i59 = add i32 %66, 1
  store i32 %inc.i.i.i59, ptr %used.i.i.i58, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %67 = ptrtoint ptr %header.i.i50.le to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %header.i.i50.le, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %node5.i = getelementptr inbounds %struct.ctl_table_header, ptr %68, i32 0, i32 6
  %71 = ptrtoint ptr %node5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %node5.i, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %node.addr.011.i.i49 to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %72 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %sub.ptr.div9.i = ashr exact i32 %sub.ptr.sub8.i, 4
  %arrayidx10.i = getelementptr %struct.ctl_table, ptr %70, i32 %sub.ptr.div9.i
  %tobool.not = icmp eq ptr %68, null
  br i1 %tobool.not, label %next_entry.exit.out_crit_edge, label %next_entry.exit.for.body_crit_edge

next_entry.exit.for.body_crit_edge:               ; preds = %next_entry.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %for.body

next_entry.exit.out_crit_edge:                    ; preds = %next_entry.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

out.sink.split:                                   ; preds = %for.inc.i.i55.out.sink.split_crit_edge, %unuse_table.exit.i48.out.sink.split_crit_edge, %if.then4.i.i, %if.then.i.i.out.sink.split_crit_edge, %if.end.i32.out.sink.split_crit_edge, %for.inc.i.i.out.sink.split_crit_edge, %if.end7.out.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %out

out:                                              ; preds = %out.sink.split, %next_entry.exit.out_crit_edge, %first_entry.exit.out_crit_edge, %if.then6.i.out_crit_edge, %if.then.i.out_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %73 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %used.i.i.i, align 4
  %dec.i.i65 = add i32 %74, -1
  store i32 %dec.i.i65, ptr %used.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %dec.i.i65, 0
  br i1 %tobool.not.i.i66, label %if.then.i.i70, label %out.sysctl_head_finish.exit73_crit_edge

out.sysctl_head_finish.exit73_crit_edge:          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit73

if.then.i.i70:                                    ; preds = %out
  %75 = ptrtoint ptr %unregistering.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unregistering.i.i.i, align 4
  %tobool1.not.i.i69 = icmp eq ptr %76, null
  br i1 %tobool1.not.i.i69, label %if.then.i.i70.sysctl_head_finish.exit73_crit_edge, label %if.then4.i.i71, !prof !201

if.then.i.i70.sysctl_head_finish.exit73_crit_edge: ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #22
  br label %sysctl_head_finish.exit73

if.then4.i.i71:                                   ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %76) #20
  br label %sysctl_head_finish.exit73

sysctl_head_finish.exit73:                        ; preds = %if.then4.i.i71, %if.then.i.i70.sysctl_head_finish.exit73_crit_edge, %out.sysctl_head_finish.exit73_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %sysctl_head_finish.exit73, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %sysctl_head_finish.exit73 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @proc_sys_link_fill_cache(ptr nocapture noundef readonly %file, ptr noundef %ctx, ptr noundef %head, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  %head.addr = alloca ptr, align 4
  %table.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %table, ptr %table.addr, align 4
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !202

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/proc/proc_sysctl.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 323, 0\0A.popsection", ""() #20, !srcloc !206
  unreachable

do.end7.i:                                        ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %unregistering.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %unregistering.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unregistering.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %sysctl_head_grab.exit, label %sysctl_head_grab.exit.thread, !prof !201

sysctl_head_grab.exit.thread:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %3 = ptrtoint ptr %head.addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %head.addr, align 4
  br label %cleanup

sysctl_head_grab.exit:                            ; preds = %do.end7.i
  %used.i.i = getelementptr inbounds %struct.anon.3, ptr %head, i32 0, i32 1
  %4 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  %6 = ptrtoint ptr %head.addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %head.addr, align 4
  %cmp.i = icmp ugt ptr %head, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sysctl_head_grab.exit.cleanup_crit_edge, label %if.end

sysctl_head_grab.exit.cleanup_crit_edge:          ; preds = %sysctl_head_grab.exit
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end:                                           ; preds = %sysctl_head_grab.exit
  %call2 = call fastcc i32 @sysctl_follow_link(ptr noundef nonnull %head.addr, ptr noundef nonnull %table.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %7 = ptrtoint ptr %head.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.addr, align 4
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  %9 = ptrtoint ptr %table.addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table.addr, align 4
  %call5 = tail call fastcc zeroext i1 @proc_sys_fill_cache(ptr noundef %file, ptr noundef %ctx, ptr noundef %8, ptr noundef %10)
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge
  %ret.0.off0 = phi i1 [ %call5, %if.end4 ], [ true, %if.end.out_crit_edge ]
  %tobool.not.i7 = icmp eq ptr %8, null
  br i1 %tobool.not.i7, label %out.cleanup_crit_edge, label %if.end.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup

if.end.i:                                         ; preds = %out
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysctl_lock) #20
  %used.i.i8 = getelementptr inbounds %struct.anon.3, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %used.i.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %used.i.i8, align 4
  %dec.i.i = add i32 %12, -1
  store i32 %dec.i.i, ptr %used.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i9 = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i9, label %if.then.i.i, label %if.end.i.unuse_table.exit.i_crit_edge

if.end.i.unuse_table.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %unuse_table.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %unregistering.i.i10 = getelementptr inbounds %struct.ctl_table_header, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %unregistering.i.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unregistering.i.i10, align 4
  %tobool1.not.i.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i.i, label %if.then.i.i.unuse_table.exit.i_crit_edge, label %if.then4.i.i, !prof !201

if.then.i.i.unuse_table.exit.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  br label %unuse_table.exit.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #22
  tail call void @complete(ptr noundef nonnull %14) #20
  br label %unuse_table.exit.i

unuse_table.exit.i:                               ; preds = %if.then4.i.i, %if.then.i.i.unuse_table.exit.i_crit_edge, %if.end.i.unuse_table.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysctl_lock) #20
  br label %cleanup

cleanup:                                          ; preds = %unuse_table.exit.i, %out.cleanup_crit_edge, %sysctl_head_grab.exit.cleanup_crit_edge, %sysctl_head_grab.exit.thread
  %retval.0 = phi i1 [ false, %sysctl_head_grab.exit.cleanup_crit_edge ], [ false, %sysctl_head_grab.exit.thread ], [ %ret.0.off0, %out.cleanup_crit_edge ], [ %ret.0.off0, %unuse_table.exit.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @proc_sys_fill_cache(ptr nocapture noundef readonly %file, ptr noundef %ctx, ptr noundef %head, ptr noundef %table) unnamed_addr #0 align 64 {
entry:
  %qname = alloca %struct.qstr, align 8
  %wq = alloca %struct.wait_queue_head, align 4
  call void @__sanitizer_cov_trace_pc() #22
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qname) #20
  %2 = getelementptr inbounds i8, ptr %qname, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %name = getelementptr inbounds %struct.qstr, ptr %qname, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %name, align 8
  %call = tail call i32 @strlen(ptr noundef %5) #24
  %7 = ptrtoint ptr %qname to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %qname, align 8
  %call4 = tail call i32 @full_name_hash(ptr noundef %1, ptr noundef %5, i32 noundef %call) #29
  %hash = getelementptr inbounds %struct.anon.5, ptr %qname, i32 0, i32 1
  %8 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call4, ptr %hash, align 4
  %call5 = call ptr @d_lookup(ptr noundef %1, ptr noundef nonnull %qname) #20
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #22
  br label %if.end29

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq) #20
  %9 = call ptr @memset(ptr %wq, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq, ptr noundef nonnull @.str.38, ptr noundef nonnull @proc_sys_fill_cache.__key) #20
  %call6 = call ptr @d_alloc_parallel(ptr noundef %1, ptr noundef nonnull %qname, ptr noundef nonnull %wq) #20
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup26.thread_crit_edge, label %if.end

if.then.cleanup26.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup26.thread

if.end:                                           ; preds = %if.then
  %10 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call6, align 8
  %and.i = and i32 %11, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %if.end.cleanup26_crit_edge, label %if.then11

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup26

if.then11:                                        ; preds = %if.end
  %d_sb = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %call12 = call fastcc ptr @proc_sys_make_inode(ptr noundef %13, ptr noundef %head, ptr noundef %table)
  %cmp.i64 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  %14 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call6, align 8
  %and.i.i = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then14.d_lookup_done.exit_crit_edge, label %if.then.i, !prof !201

if.then14.d_lookup_done.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  br label %d_lookup_done.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #22
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %call6, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i) #20
  call void @__d_lookup_done(ptr noundef %call6) #20
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #20
  br label %d_lookup_done.exit

d_lookup_done.exit:                               ; preds = %if.then.i, %if.then14.d_lookup_done.exit_crit_edge
  call void @dput(ptr noundef %call6) #20
  br label %cleanup26.thread

if.end15:                                         ; preds = %if.then11
  call void @d_set_d_op(ptr noundef %call6, ptr noundef nonnull @proc_sys_dentry_operations) #20
  %call16 = call ptr @d_splice_alias(ptr noundef %call12, ptr noundef %call6) #20
  %16 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call6, align 8
  %and.i.i65 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i66, label %if.end15.d_lookup_done.exit69_crit_edge, label %if.then.i68, !prof !201

if.end15.d_lookup_done.exit69_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  br label %d_lookup_done.exit69

if.then.i68:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #22
  %d_lockref.i67 = getelementptr inbounds %struct.dentry, ptr %call6, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i67) #20
  call void @__d_lookup_done(ptr noundef %call6) #20
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i67) #20
  br label %d_lookup_done.exit69

d_lookup_done.exit69:                             ; preds = %if.then.i68, %if.end15.d_lookup_done.exit69_crit_edge
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %d_lookup_done.exit69.cleanup26_crit_edge, label %if.then20, !prof !201

d_lookup_done.exit69.cleanup26_crit_edge:         ; preds = %d_lookup_done.exit69
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup26

if.then20:                                        ; preds = %d_lookup_done.exit69
  %cmp.i70 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  call void @dput(ptr noundef %call6) #20
  br i1 %cmp.i70, label %if.then20.cleanup26.thread_crit_edge, label %if.then20.cleanup26_crit_edge

if.then20.cleanup26_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup26

if.then20.cleanup26.thread_crit_edge:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #22
  br label %cleanup26.thread

cleanup26.thread:                                 ; preds = %if.then20.cleanup26.thread_crit_edge, %d_lookup_done.exit, %if.then.cleanup26.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #20
  br label %cleanup35

cleanup26:                                        ; preds = %if.then20.cleanup26_crit_edge, %d_lookup_done.exit69.cleanup26_crit_edge, %if.end.cleanup26_crit_edge
  %child.3 = phi ptr [ %call6, %if.end.cleanup26_crit_edge ], [ %call6, %d_lookup_done.exit69.cleanup26_crit_edge ], [ %call16, %if.then20.cleanup26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq) #20
  br label %if.end29

if.end29:                                         ; preds = %cleanup26, %entry.if.end29_crit_edge
  %child.4 = phi ptr [ %call5, %entry.if.end29_crit_edge ], [ %child.3, %cleanup26 ]
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child.4, i32 0, i32 5
  %18 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino, align 8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %19, align 8
  %24 = lshr i16 %23, 12
  %25 = zext i16 %24 to i32
  call void @dput(ptr noundef %child.4) #20
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 8
  %28 = ptrtoint ptr %qname to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %qname, align 8
  %conv33 = zext i32 %21 to i64
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 8
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %32 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pos.i, align 8
  %call.i = call i32 %31(ptr noundef %ctx, ptr noundef %27, i32 noundef %29, i64 noundef %33, i64 noundef %conv33, i32 noundef %25) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i71 = icmp eq i32 %call.i, 0
  br label %cleanup35

cleanup35:                                        ; preds = %if.end29, %cleanup26.thread
  %retval.3 = phi i1 [ %cmp.i71, %if.end29 ], [ false, %cleanup26.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qname) #20
  ret i1 %retval.3
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #20

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #21 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #21 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind readonly }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #22 = { nomerge }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(2) }
attributes #28 = { cold noreturn nounwind }
attributes #29 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109, !111, !113, !114, !116, !118, !120, !122, !123, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188}
!llvm.named.register.sp = !{!190}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @sysctl_vals, !1, !"sysctl_vals", i1 false, i1 false}
!1 = !{!"../fs/proc/proc_sysctl.c", i32 29, i32 11}
!2 = !{ptr @__ksymtab_sysctl_vals, !3, !"__ksymtab_sysctl_vals", i1 false, i1 false}
!3 = !{!"../fs/proc/proc_sysctl.c", i32 30, i32 1}
!4 = !{ptr @sysctl_long_vals, !5, !"sysctl_long_vals", i1 false, i1 false}
!5 = !{!"../fs/proc/proc_sysctl.c", i32 32, i32 21}
!6 = !{ptr @__ksymtab_sysctl_long_vals, !7, !"__ksymtab_sysctl_long_vals", i1 false, i1 false}
!7 = !{!"../fs/proc/proc_sysctl.c", i32 33, i32 1}
!8 = !{ptr @sysctl_mount_point, !9, !"sysctl_mount_point", i1 false, i1 false}
!9 = !{!"../fs/proc/proc_sysctl.c", i32 37, i32 18}
!10 = !{ptr @__ksymtab_register_sysctl_mount_point, !11, !"__ksymtab_register_sysctl_mount_point", i1 false, i1 false}
!11 = !{!"../fs/proc/proc_sysctl.c", i32 53, i32 1}
!12 = !{ptr @__ksymtab_register_sysctl, !13, !"__ksymtab_register_sysctl", i1 false, i1 false}
!13 = !{!"../fs/proc/proc_sysctl.c", i32 1402, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/proc/proc_sysctl.c", i32 1430, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__register_sysctl_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @__register_sysctl_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_register_sysctl_paths, !21, !"__ksymtab_register_sysctl_paths", i1 false, i1 false}
!21 = !{!"../fs/proc/proc_sysctl.c", i32 1630, i32 1}
!22 = !{ptr @register_sysctl_table.null_path, !23, !"null_path", i1 false, i1 false}
!23 = !{!"../fs/proc/proc_sysctl.c", i32 1643, i32 31}
!24 = !{ptr @__ksymtab_register_sysctl_table, !25, !"__ksymtab_register_sysctl_table", i1 false, i1 false}
!25 = !{!"../fs/proc/proc_sysctl.c", i32 1647, i32 1}
!26 = !{ptr @__ksymtab_unregister_sysctl_table, !27, !"__ksymtab_unregister_sysctl_table", i1 false, i1 false}
!27 = !{!"../fs/proc/proc_sysctl.c", i32 1746, i32 1}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/proc/proc_sysctl.c", i32 1766, i32 29}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/proc/proc_sysctl.c", i32 1912, i32 9}
!32 = !{ptr @__func__.do_sysctl_args, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/proc/proc_sysctl.c", i32 1912, i32 58}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/proc/proc_sysctl.c", i32 1914, i32 13}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/proc/proc_sysctl.c", i32 98, i32 8}
!38 = !{ptr @sysctl_lock, !37, !"sysctl_lock", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/proc/proc_sysctl.c", i32 1136, i32 35}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/proc/proc_sysctl.c", i32 1150, i32 36}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/proc/proc_sysctl.c", i32 1152, i32 36}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/proc/proc_sysctl.c", i32 1157, i32 35}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/proc/proc_sysctl.c", i32 1160, i32 35}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/proc/proc_sysctl.c", i32 1106, i32 2}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sysctl_err._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sysctl_err._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/proc/proc_sysctl.c", i32 1120, i32 35}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/proc/proc_sysctl.c", i32 1039, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @get_subdir._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @get_subdir._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/proc/proc_sysctl.c", i32 1041, i32 3}
!63 = !{ptr @get_subdir._entry.17, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @get_subdir._entry_ptr.19, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/proc/proc_sysctl.c", i32 110, i32 2}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sysctl_print_dir._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sysctl_print_dir._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/proc/proc_sysctl.c", i32 182, i32 4}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @insert_entry._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @insert_entry._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/proc/proc_sysctl.c", i32 184, i32 4}
!77 = !{ptr @insert_entry._entry.24, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @insert_entry._entry_ptr.26, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../fs/proc/proc_sysctl.c", i32 1685, i32 4}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @put_links._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @put_links._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @put_links._entry.29, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../fs/proc/proc_sysctl.c", i32 1687, i32 4}
!86 = !{ptr @put_links._entry_ptr.30, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @sysctl_table_root, !88, !"sysctl_table_root", i1 false, i1 false}
!88 = !{!"../fs/proc/proc_sysctl.c", i32 87, i32 30}
!89 = !{ptr @init_completion.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../include/linux/completion.h", i32 87, i32 2}
!91 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/proc/proc_sysctl.c", i32 82, i32 15}
!94 = !{ptr @root_table, !95, !"root_table", i1 false, i1 false}
!95 = !{!"../fs/proc/proc_sysctl.c", i32 80, i32 25}
!96 = !{ptr @proc_sys_dir_operations, !97, !"proc_sys_dir_operations", i1 false, i1 false}
!97 = !{!"../fs/proc/proc_sysctl.c", i32 889, i32 38}
!98 = !{ptr @proc_sys_inode_operations, !99, !"proc_sys_inode_operations", i1 false, i1 false}
!99 = !{!"../fs/proc/proc_sysctl.c", i32 883, i32 38}
!100 = !{ptr @proc_sys_file_operations, !101, !"proc_sys_file_operations", i1 false, i1 false}
!101 = !{!"../fs/proc/proc_sysctl.c", i32 867, i32 37}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../fs/proc/proc_sysctl.c", i32 423, i32 13}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!106 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!109 = !{ptr @proc_sys_dentry_operations, !110, !"proc_sys_dentry_operations", i1 false, i1 false}
!110 = !{!"../fs/proc/proc_sysctl.c", i32 943, i32 39}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../fs/proc/proc_sysctl.c", i32 939, i32 9}
!113 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @proc_sys_dir_file_operations, !115, !"proc_sys_dir_file_operations", i1 false, i1 false}
!115 = !{!"../fs/proc/proc_sysctl.c", i32 877, i32 37}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!120 = !{ptr @proc_sys_fill_cache.__key, !121, !"__key", i1 false, i1 false}
!121 = !{!"../fs/proc/proc_sysctl.c", i32 699, i32 3}
!122 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/proc/proc_sysctl.c", i32 1822, i32 21}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../fs/proc/proc_sysctl.c", i32 1850, i32 30}
!127 = !{ptr @.str.41, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../fs/proc/proc_sysctl.c", i32 1852, i32 4}
!129 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @process_sysctl_arg._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @process_sysctl_arg._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/proc/proc_sysctl.c", i32 1858, i32 4}
!134 = !{ptr @process_sysctl_arg._entry.43, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @process_sysctl_arg._entry_ptr.45, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../fs/proc/proc_sysctl.c", i32 1863, i32 31}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/proc/proc_sysctl.c", i32 1865, i32 9}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../fs/proc/proc_sysctl.c", i32 1872, i32 4}
!142 = !{ptr @process_sysctl_arg._entry.48, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @process_sysctl_arg._entry_ptr.50, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/proc/proc_sysctl.c", i32 1875, i32 4}
!146 = !{ptr @process_sysctl_arg._entry.51, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @process_sysctl_arg._entry_ptr.53, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../fs/proc/proc_sysctl.c", i32 1878, i32 4}
!150 = !{ptr @process_sysctl_arg._entry.54, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @process_sysctl_arg._entry_ptr.56, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../fs/proc/proc_sysctl.c", i32 1886, i32 4}
!154 = !{ptr @process_sysctl_arg._entry.57, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @process_sysctl_arg._entry_ptr.59, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../fs/proc/proc_sysctl.c", i32 1889, i32 4}
!158 = !{ptr @process_sysctl_arg._entry.60, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @process_sysctl_arg._entry_ptr.62, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../fs/proc/proc_sysctl.c", i32 1892, i32 3}
!162 = !{ptr @process_sysctl_arg._entry.63, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @process_sysctl_arg._entry_ptr.65, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.67, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../fs/proc/proc_sysctl.c", i32 1898, i32 3}
!166 = !{ptr @process_sysctl_arg._entry.66, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @process_sysctl_arg._entry_ptr.68, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../fs/proc/proc_sysctl.c", i32 1789, i32 3}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/proc/proc_sysctl.c", i32 1789, i32 35}
!172 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../fs/proc/proc_sysctl.c", i32 1790, i32 3}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/proc/proc_sysctl.c", i32 1790, i32 24}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../fs/proc/proc_sysctl.c", i32 1791, i32 3}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../fs/proc/proc_sysctl.c", i32 1791, i32 28}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/proc/proc_sysctl.c", i32 1792, i32 3}
!182 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../fs/proc/proc_sysctl.c", i32 1792, i32 35}
!184 = !{ptr @.str.77, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../fs/proc/proc_sysctl.c", i32 1793, i32 3}
!186 = !{ptr @.str.78, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../fs/proc/proc_sysctl.c", i32 1793, i32 25}
!188 = !{ptr @sysctl_aliases, !189, !"sysctl_aliases", i1 false, i1 false}
!189 = !{!"../fs/proc/proc_sysctl.c", i32 1788, i32 34}
!190 = !{!"sp"}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{i64 2148335266, i64 2148335292, i64 2148335321, i64 2148335355, i64 2148335386, i64 2148335409}
!201 = !{!"branch_weights", i32 2000, i32 1}
!202 = !{!"branch_weights", i32 1, i32 2000}
!203 = !{!"auto-init"}
!204 = !{i64 2149760420}
!205 = !{i64 2148788261, i64 2148788266, i64 2148788279, i64 2148788323, i64 2148788357, i64 2148788378}
!206 = !{i64 2154295697, i64 2154296183, i64 2154295734, i64 2154295790, i64 2154295824, i64 2154295848, i64 2154295889, i64 2154295910, i64 2154295938, i64 2154295972}
