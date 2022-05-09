; ModuleID = '/llk/IR_all_yes/drivers/tty/tty_ioctl.c_pt.bc'
source_filename = "../drivers/tty/tty_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tty_chars_in_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_chars_in_buffer\09\09\09\09"
module asm "\09.long\09__crc_tty_chars_in_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_chars_in_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_chars_in_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_tty_chars_in_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_write_room\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_write_room\09\09\09\09"
module asm "\09.long\09__crc_tty_write_room\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_write_room:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_write_room\22\09\09\09\09\09"
module asm "__kstrtabns_tty_write_room:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_driver_flush_buffer\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_driver_flush_buffer\09\09\09\09"
module asm "\09.long\09__crc_tty_driver_flush_buffer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_driver_flush_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_driver_flush_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_tty_driver_flush_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_unthrottle\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_unthrottle\09\09\09\09"
module asm "\09.long\09__crc_tty_unthrottle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_unthrottle:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_unthrottle\22\09\09\09\09\09"
module asm "__kstrtabns_tty_unthrottle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_wait_until_sent\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_wait_until_sent\09\09\09\09"
module asm "\09.long\09__crc_tty_wait_until_sent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_wait_until_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_wait_until_sent\22\09\09\09\09\09"
module asm "__kstrtabns_tty_wait_until_sent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_termios_copy_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_termios_copy_hw\09\09\09\09"
module asm "\09.long\09__crc_tty_termios_copy_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_copy_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_copy_hw\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_copy_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tty_termios_hw_change\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_termios_hw_change\09\09\09\09"
module asm "\09.long\09__crc_tty_termios_hw_change\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_termios_hw_change:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_termios_hw_change\22\09\09\09\09\09"
module asm "__kstrtabns_tty_termios_hw_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_get_char_size\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_get_char_size\09\09\09\09"
module asm "\09.long\09__crc_tty_get_char_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_char_size:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_char_size\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_char_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_get_frame_size\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_get_frame_size\09\09\09\09"
module asm "\09.long\09__crc_tty_get_frame_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_get_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_get_frame_size\22\09\09\09\09\09"
module asm "__kstrtabns_tty_get_frame_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_set_termios\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_set_termios\09\09\09\09"
module asm "\09.long\09__crc_tty_set_termios\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_set_termios\22\09\09\09\09\09"
module asm "__kstrtabns_tty_set_termios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_mode_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_mode_ioctl\09\09\09\09"
module asm "\09.long\09__crc_tty_mode_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_mode_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_mode_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_tty_mode_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tty_perform_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_tty_perform_flush\09\09\09\09"
module asm "\09.long\09__crc_tty_perform_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_perform_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_perform_flush\22\09\09\09\09\09"
module asm "__kstrtabns_tty_perform_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+n_tty_ioctl_helper\22, \22a\22\09"
module asm "\09.weak\09__crc_n_tty_ioctl_helper\09\09\09\09"
module asm "\09.long\09__crc_n_tty_ioctl_helper\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_n_tty_ioctl_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22n_tty_ioctl_helper\22\09\09\09\09\09"
module asm "__kstrtabns_n_tty_ioctl_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.71, %struct.anon.72, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.71 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.72 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.termio = type { i16, i16, i16, i16, i8, [8 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_tty_chars_in_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_chars_in_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_chars_in_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_chars_in_buffer to i32), ptr @__kstrtab_tty_chars_in_buffer, ptr @__kstrtabns_tty_chars_in_buffer }, section "___ksymtab+tty_chars_in_buffer", align 4
@__kstrtab_tty_write_room = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_write_room = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_write_room = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_write_room to i32), ptr @__kstrtab_tty_write_room, ptr @__kstrtabns_tty_write_room }, section "___ksymtab+tty_write_room", align 4
@__kstrtab_tty_driver_flush_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_driver_flush_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_driver_flush_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_driver_flush_buffer to i32), ptr @__kstrtab_tty_driver_flush_buffer, ptr @__kstrtabns_tty_driver_flush_buffer }, section "___ksymtab+tty_driver_flush_buffer", align 4
@__kstrtab_tty_unthrottle = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_unthrottle = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_unthrottle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_unthrottle to i32), ptr @__kstrtab_tty_unthrottle, ptr @__kstrtabns_tty_unthrottle }, section "___ksymtab+tty_unthrottle", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/tty/tty_ioctl.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_tty_wait_until_sent = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_wait_until_sent = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_wait_until_sent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_wait_until_sent to i32), ptr @__kstrtab_tty_wait_until_sent, ptr @__kstrtabns_tty_wait_until_sent }, section "___ksymtab+tty_wait_until_sent", align 4
@__kstrtab_tty_termios_copy_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_copy_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_copy_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_copy_hw to i32), ptr @__kstrtab_tty_termios_copy_hw, ptr @__kstrtabns_tty_termios_copy_hw }, section "___ksymtab+tty_termios_copy_hw", align 4
@__kstrtab_tty_termios_hw_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_termios_hw_change = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_termios_hw_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_termios_hw_change to i32), ptr @__kstrtab_tty_termios_hw_change, ptr @__kstrtabns_tty_termios_hw_change }, section "___ksymtab+tty_termios_hw_change", align 4
@__kstrtab_tty_get_char_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_char_size = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_char_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_char_size to i32), ptr @__kstrtab_tty_get_char_size, ptr @__kstrtabns_tty_get_char_size }, section "___ksymtab_gpl+tty_get_char_size", align 4
@__kstrtab_tty_get_frame_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_get_frame_size = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_get_frame_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_get_frame_size to i32), ptr @__kstrtab_tty_get_frame_size, ptr @__kstrtabns_tty_get_frame_size }, section "___ksymtab_gpl+tty_get_frame_size", align 4
@__kstrtab_tty_set_termios = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_set_termios = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_set_termios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_set_termios to i32), ptr @__kstrtab_tty_set_termios, ptr @__kstrtabns_tty_set_termios }, section "___ksymtab_gpl+tty_set_termios", align 4
@__kstrtab_tty_mode_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_mode_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_mode_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_mode_ioctl to i32), ptr @__kstrtab_tty_mode_ioctl, ptr @__kstrtabns_tty_mode_ioctl }, section "___ksymtab_gpl+tty_mode_ioctl", align 4
@__kstrtab_tty_perform_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_perform_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_perform_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_perform_flush to i32), ptr @__kstrtab_tty_perform_flush, ptr @__kstrtabns_tty_perform_flush }, section "___ksymtab_gpl+tty_perform_flush", align 4
@__kstrtab_n_tty_ioctl_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_n_tty_ioctl_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_n_tty_ioctl_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @n_tty_ioctl_helper to i32), ptr @__kstrtab_n_tty_ioctl_helper, ptr @__kstrtabns_n_tty_ioctl_helper }, section "___ksymtab+n_tty_ioctl_helper", align 4
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/asm-generic/termios.h\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 21505, i64 21506, i64 21507, i64 21508, i64 21509, i64 21510, i64 21511, i64 21512, i64 21529, i64 21530, i64 21554, i64 21555, i64 21556, i64 21557, i64 21590, i64 21591, i64 1076646955, i64 1076646956, i64 1076646957, i64 2150388778]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 21514, i64 21515]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private constant [27 x i8] c"../drivers/tty/tty_ioctl.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 204, i32 12 }
@___asan_gen_.12 = private unnamed_addr constant [33 x i8] c"../include/asm-generic/termios.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 25, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 156, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_n_tty_ioctl_helper, ptr @__ksymtab_tty_chars_in_buffer, ptr @__ksymtab_tty_driver_flush_buffer, ptr @__ksymtab_tty_get_char_size, ptr @__ksymtab_tty_get_frame_size, ptr @__ksymtab_tty_mode_ioctl, ptr @__ksymtab_tty_perform_flush, ptr @__ksymtab_tty_set_termios, ptr @__ksymtab_tty_termios_copy_hw, ptr @__ksymtab_tty_termios_hw_change, ptr @__ksymtab_tty_unthrottle, ptr @__ksymtab_tty_wait_until_sent, ptr @__ksymtab_tty_write_room, ptr @.str, ptr @.str.1, ptr @.str.4], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_chars_in_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %chars_in_buffer = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chars_in_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chars_in_buffer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %tty) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_write_room(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write_room = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %write_room to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_room, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %3(ptr noundef %tty) #7
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 2048, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_driver_flush_buffer(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %flush_buffer = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flush_buffer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %tty) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_unthrottle(ptr noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem) #7
  %flags = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %unthrottle = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %unthrottle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unthrottle, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %tty) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flow_change = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %4 = ptrtoint ptr %flow_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flow_change, align 4
  tail call void @up_write(ptr noundef %termios_rwsem) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_throttle_safe(ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %throttle_mutex, i32 noundef 0) #7
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %flow_change = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %2 = ptrtoint ptr %flow_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.else, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %if.then
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #7
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %throttle = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %throttle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %throttle, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else.if.end6_crit_edge, label %if.then2

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %tty) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end6_crit_edge ], [ 0, %if.then2 ], [ 0, %if.else.if.end6_crit_edge ], [ 1, %if.then.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %throttle_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_unthrottle_safe(ptr noundef %tty) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %throttle_mutex = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %throttle_mutex, i32 noundef 0) #7
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %flow_change = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %2 = ptrtoint ptr %flow_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.else, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %if.then
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #7
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %unthrottle = getelementptr inbounds %struct.tty_operations, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %unthrottle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unthrottle, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else.if.end6_crit_edge, label %if.then2

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %7(ptr noundef %tty) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.else.if.end6_crit_edge ], [ 0, %entry.if.end6_crit_edge ], [ 1, %if.then.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %throttle_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_wait_until_sent(ptr noundef %tty, i32 noundef %timeout) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %spec.store.select58 = select i1 %tobool.not, i32 2147483647, i32 %timeout
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 205) #7
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %chars_in_buffer.i = getelementptr inbounds %struct.tty_operations, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %chars_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chars_in_buffer.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end44_crit_edge, label %tty_chars_in_buffer.exit

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

tty_chars_in_buffer.exit:                         ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %tty_chars_in_buffer.exit.if.end44_crit_edge, label %if.then15

tty_chars_in_buffer.exit.if.end44_crit_edge:      ; preds = %tty_chars_in_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then15:                                        ; preds = %tty_chars_in_buffer.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %write_wait = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 26
  %call17108 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %chars_in_buffer.i79109 = getelementptr inbounds %struct.tty_operations, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %chars_in_buffer.i79109 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chars_in_buffer.i79109, align 4
  %tobool.not.i80110 = icmp eq ptr %8, null
  br i1 %tobool.not.i80110, label %if.then15.tty_chars_in_buffer.exit84.thread_crit_edge, label %if.then15.tty_chars_in_buffer.exit84_crit_edge

if.then15.tty_chars_in_buffer.exit84_crit_edge:   ; preds = %if.then15
  br label %tty_chars_in_buffer.exit84

if.then15.tty_chars_in_buffer.exit84.thread_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_chars_in_buffer.exit84.thread

tty_chars_in_buffer.exit84.thread:                ; preds = %cleanup.tty_chars_in_buffer.exit84.thread_crit_edge, %if.then15.tty_chars_in_buffer.exit84.thread_crit_edge
  %__ret16.0.lcssa = phi i32 [ %spec.store.select58, %if.then15.tty_chars_in_buffer.exit84.thread_crit_edge ], [ %call41, %cleanup.tty_chars_in_buffer.exit84.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0.lcssa)
  %tobool25.not89 = icmp eq i32 %__ret16.0.lcssa, 0
  %spec.store.select5690 = select i1 %tobool25.not89, i32 1, i32 %__ret16.0.lcssa
  br label %for.end

tty_chars_in_buffer.exit84:                       ; preds = %cleanup.tty_chars_in_buffer.exit84_crit_edge, %if.then15.tty_chars_in_buffer.exit84_crit_edge
  %9 = phi ptr [ %15, %cleanup.tty_chars_in_buffer.exit84_crit_edge ], [ %8, %if.then15.tty_chars_in_buffer.exit84_crit_edge ]
  %call17112 = phi i32 [ %call17, %cleanup.tty_chars_in_buffer.exit84_crit_edge ], [ %call17108, %if.then15.tty_chars_in_buffer.exit84_crit_edge ]
  %__ret16.0111 = phi i32 [ %call41, %cleanup.tty_chars_in_buffer.exit84_crit_edge ], [ %spec.store.select58, %if.then15.tty_chars_in_buffer.exit84_crit_edge ]
  %call.i81 = call i32 %9(ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool20.not = icmp eq i32 %call.i81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.0111)
  %tobool25.not = icmp eq i32 %__ret16.0111, 0
  %10 = select i1 %tobool20.not, i1 %tobool25.not, i1 false
  %__ret16.1 = select i1 %10, i32 1, i32 %__ret16.0111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret16.1)
  %tobool31.not = icmp eq i32 %__ret16.1, 0
  %11 = select i1 %tobool20.not, i1 true, i1 %tobool31.not
  br i1 %11, label %tty_chars_in_buffer.exit84.for.end_crit_edge, label %if.end37

tty_chars_in_buffer.exit84.for.end_crit_edge:     ; preds = %tty_chars_in_buffer.exit84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end37:                                         ; preds = %tty_chars_in_buffer.exit84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17112)
  %tobool38.not = icmp eq i32 %call17112, 0
  br i1 %tobool38.not, label %cleanup, label %if.end37.__out_crit_edge

if.end37.__out_crit_edge:                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end37
  %call41 = call i32 @schedule_timeout(i32 noundef %__ret16.1) #7
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %chars_in_buffer.i79 = getelementptr inbounds %struct.tty_operations, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %chars_in_buffer.i79 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chars_in_buffer.i79, align 4
  %tobool.not.i80 = icmp eq ptr %15, null
  br i1 %tobool.not.i80, label %cleanup.tty_chars_in_buffer.exit84.thread_crit_edge, label %cleanup.tty_chars_in_buffer.exit84_crit_edge

cleanup.tty_chars_in_buffer.exit84_crit_edge:     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_chars_in_buffer.exit84

cleanup.tty_chars_in_buffer.exit84.thread_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_chars_in_buffer.exit84.thread

for.end:                                          ; preds = %tty_chars_in_buffer.exit84.for.end_crit_edge, %tty_chars_in_buffer.exit84.thread
  %__ret16.2.ph = phi i32 [ %spec.store.select5690, %tty_chars_in_buffer.exit84.thread ], [ %__ret16.1, %tty_chars_in_buffer.exit84.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end37.__out_crit_edge
  %__ret16.295 = phi i32 [ %__ret16.2.ph, %for.end ], [ %call17112, %if.end37.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end44

if.end44:                                         ; preds = %__out, %tty_chars_in_buffer.exit.if.end44_crit_edge, %entry.if.end44_crit_edge
  %__ret.1 = phi i32 [ %spec.store.select58, %tty_chars_in_buffer.exit.if.end44_crit_edge ], [ %__ret16.295, %__out ], [ %spec.store.select58, %entry.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1)
  %cmp = icmp slt i32 %__ret.1, 1
  br i1 %cmp, label %if.end44.if.end55_crit_edge, label %if.end47

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end47:                                         ; preds = %if.end44
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %wait_until_sent = getelementptr inbounds %struct.tty_operations, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %wait_until_sent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wait_until_sent, align 4
  %tobool51.not = icmp eq ptr %19, null
  br i1 %tobool51.not, label %if.end47.if.end55_crit_edge, label %if.then52

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %__ret.1)
  %cmp48 = icmp eq i32 %__ret.1, 2147483647
  %spec.store.select57 = select i1 %cmp48, i32 0, i32 %__ret.1
  call void %19(ptr noundef %tty, i32 noundef %spec.store.select57) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end47.if.end55_crit_edge, %if.end44.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tty_termios_copy_hw(ptr nocapture noundef %new, ptr nocapture noundef readonly %old) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %new, i32 0, i32 2
  %0 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_cflag, align 4
  %and = and i32 %1, 3200
  store i32 %and, ptr %c_cflag, align 4
  %c_cflag1 = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 2
  %2 = ptrtoint ptr %c_cflag1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag1, align 4
  %and2 = and i32 %3, -3201
  %or = or i32 %and2, %and
  store i32 %or, ptr %c_cflag, align 4
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 6
  %4 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_ispeed, align 4
  %c_ispeed4 = getelementptr inbounds %struct.ktermios, ptr %new, i32 0, i32 6
  %6 = ptrtoint ptr %c_ispeed4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %c_ispeed4, align 4
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %old, i32 0, i32 7
  %7 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_ospeed, align 4
  %c_ospeed5 = getelementptr inbounds %struct.ktermios, ptr %new, i32 0, i32 7
  %9 = ptrtoint ptr %c_ospeed5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %c_ospeed5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tty_termios_hw_change(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_ispeed, align 4
  %c_ispeed1 = getelementptr inbounds %struct.ktermios, ptr %b, i32 0, i32 6
  %2 = ptrtoint ptr %c_ispeed1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_ispeed1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %a, i32 0, i32 7
  %4 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_ospeed, align 4
  %c_ospeed2 = getelementptr inbounds %struct.ktermios, ptr %b, i32 0, i32 7
  %6 = ptrtoint ptr %c_ospeed2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_ospeed2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp eq i32 %5, %7
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %a, i32 0, i32 2
  %8 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_cflag, align 4
  %c_cflag4 = getelementptr inbounds %struct.ktermios, ptr %b, i32 0, i32 2
  %10 = ptrtoint ptr %c_cflag4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_cflag4, align 4
  %xor = xor i32 %11, %9
  %and = and i32 %xor, -3201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %. = zext i1 %tobool.not to i32
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @tty_get_char_size(i32 noundef %cflag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %cflag to i8
  %1 = lshr i8 %0, 4
  %switch.idx.cast = and i8 %1, 3
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 5
  ret i8 %switch.offset
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @tty_get_frame_size(i32 noundef %cflag) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %cflag to i8
  %1 = lshr i8 %0, 4
  %switch.idx.cast = and i8 %1, 3
  %switch.offset = add nuw nsw i8 %switch.idx.cast, 5
  %and = and i32 %cflag, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select.v = select i1 %tobool.not, i8 2, i8 3
  %and2 = lshr i32 %cflag, 8
  %2 = trunc i32 %and2 to i8
  %3 = and i8 %2, 1
  %spec.select = add nuw nsw i8 %3, %spec.select.v
  %bits.1 = add nuw nsw i8 %spec.select, %switch.offset
  ret i8 %bits.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_set_termios(ptr noundef %tty, ptr nocapture noundef readonly %new_termios) #0 align 64 {
entry:
  %old_termios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %old_termios) #7
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp = icmp eq i16 %3, 4
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp4 = icmp eq i16 %5, 1
  br i1 %cmp4, label %do.end, label %land.rhs.if.end_crit_edge, !prof !47

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem) #7
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %6 = call ptr @memcpy(ptr %old_termios, ptr %termios, i32 44)
  %7 = call ptr @memcpy(ptr %termios, ptr %new_termios, i32 44)
  %termios_locked.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 14
  %8 = ptrtoint ptr %termios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %termios, align 4
  %10 = ptrtoint ptr %termios_locked.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %termios_locked.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %9, %neg.i
  %12 = ptrtoint ptr %old_termios to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old_termios, align 4
  %and5.i = and i32 %13, %11
  %or.i = or i32 %and5.i, %and.i
  store i32 %or.i, ptr %termios, align 4
  %c_oflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %c_oflag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_oflag.i, align 4
  %c_oflag7.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %c_oflag7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_oflag7.i, align 4
  %neg8.i = xor i32 %17, -1
  %and9.i = and i32 %15, %neg8.i
  %c_oflag10.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 1
  %18 = ptrtoint ptr %c_oflag10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_oflag10.i, align 4
  %and12.i = and i32 %19, %17
  %or13.i = or i32 %and12.i, %and9.i
  store i32 %or13.i, ptr %c_oflag.i, align 4
  %c_cflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %c_cflag.i, align 4
  %c_cflag15.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 14, i32 2
  %22 = ptrtoint ptr %c_cflag15.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_cflag15.i, align 4
  %neg16.i = xor i32 %23, -1
  %and17.i = and i32 %21, %neg16.i
  %c_cflag18.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 2
  %24 = ptrtoint ptr %c_cflag18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_cflag18.i, align 4
  %and20.i = and i32 %25, %23
  %or21.i = or i32 %and20.i, %and17.i
  store i32 %or21.i, ptr %c_cflag.i, align 4
  %c_lflag.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %26 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %c_lflag.i, align 4
  %c_lflag23.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 14, i32 3
  %28 = ptrtoint ptr %c_lflag23.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_lflag23.i, align 4
  %neg24.i = xor i32 %29, -1
  %and25.i = and i32 %27, %neg24.i
  %c_lflag26.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 3
  %30 = ptrtoint ptr %c_lflag26.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %c_lflag26.i, align 4
  %and28.i = and i32 %31, %29
  %or29.i = or i32 %and28.i, %and25.i
  store i32 %or29.i, ptr %c_lflag.i, align 4
  %c_line.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 14, i32 4
  %32 = ptrtoint ptr %c_line.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %c_line.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  %c_line31.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 4
  %c_line33.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 4
  %cond.in.in.i = select i1 %tobool.not.i, ptr %c_line33.i, ptr %c_line31.i
  %34 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %cond.in84.i = load i8, ptr %cond.in.in.i, align 4
  %35 = ptrtoint ptr %c_line33.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %cond.in84.i, ptr %c_line33.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.086.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 14, i32 5, i32 %i.086.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool39.not.i = icmp eq i8 %37, 0
  %arrayidx42.i = getelementptr %struct.ktermios, ptr %old_termios, i32 0, i32 5, i32 %i.086.i
  %arrayidx46.i = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 %i.086.i
  %cond49.in.in.i = select i1 %tobool39.not.i, ptr %arrayidx46.i, ptr %arrayidx42.i
  %38 = ptrtoint ptr %cond49.in.in.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %cond49.in85.i = load i8, ptr %cond49.in.in.i, align 1
  %39 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %cond49.in85.i, ptr %arrayidx46.i, align 1
  %inc.i = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %unset_locked_termios.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

unset_locked_termios.exit:                        ; preds = %for.body.i
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %set_termios = getelementptr inbounds %struct.tty_operations, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %set_termios to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_termios, align 4
  %tobool25.not = icmp eq ptr %43, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %unset_locked_termios.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %43(ptr noundef %tty, ptr noundef nonnull %old_termios) #7
  br label %if.end30

if.else:                                          ; preds = %unset_locked_termios.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %c_cflag.i, align 4
  %and.i61 = and i32 %45, 3200
  %and2.i = and i32 %25, -3201
  %or.i62 = or i32 %and.i61, %and2.i
  store i32 %or.i62, ptr %c_cflag.i, align 4
  %c_ispeed.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 6
  %46 = ptrtoint ptr %c_ispeed.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c_ispeed.i, align 4
  %c_ispeed4.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 6
  %48 = ptrtoint ptr %c_ispeed4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %c_ispeed4.i, align 4
  %c_ospeed.i = getelementptr inbounds %struct.ktermios, ptr %old_termios, i32 0, i32 7
  %49 = ptrtoint ptr %c_ospeed.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %c_ospeed.i, align 4
  %c_ospeed5.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 7
  %51 = ptrtoint ptr %c_ospeed5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %c_ospeed5.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %call = call ptr @tty_ldisc_ref(ptr noundef %tty) #7
  %cmp31.not = icmp eq ptr %call, null
  br i1 %cmp31.not, label %if.end30.if.end41_crit_edge, label %if.then33

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then33:                                        ; preds = %if.end30
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %set_termios35 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %set_termios35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_termios35, align 4
  %tobool36.not = icmp eq ptr %55, null
  br i1 %tobool36.not, label %if.then33.if.end40_crit_edge, label %if.then37

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  call void %55(ptr noundef %tty, ptr noundef nonnull %old_termios) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then33.if.end40_crit_edge
  call void @tty_ldisc_deref(ptr noundef nonnull %call) #7
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end30.if.end41_crit_edge
  call void @up_write(ptr noundef %termios_rwsem) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %old_termios) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %kterm.i = alloca %struct.ktermios, align 4
  %kterm = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %kterm) #7
  %1 = call ptr @memset(ptr %kterm, i32 255, i32 44)
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp = icmp eq i16 %5, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp4 = icmp eq i16 %7, 1
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %link = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 24
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %real_tty.0 = phi ptr [ %9, %if.then ], [ %tty, %land.lhs.true.if.end_crit_edge ], [ %tty, %entry.if.end_crit_edge ]
  %10 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 21508, label %sw.bb
    i32 21507, label %sw.bb6
    i32 21506, label %sw.bb8
    i32 21505, label %sw.bb10
    i32 -2144578518, label %sw.bb14
    i32 1076646957, label %sw.bb19
    i32 1076646956, label %sw.bb21
    i32 1076646955, label %sw.bb23
    i32 21509, label %sw.bb25
    i32 21512, label %sw.bb27
    i32 21511, label %sw.bb29
    i32 21510, label %sw.bb31
    i32 21590, label %sw.bb33
    i32 21591, label %sw.bb38
    i32 21554, label %if.end.cleanup_crit_edge
    i32 21555, label %if.end.cleanup_crit_edge169
    i32 21557, label %if.end.cleanup_crit_edge170
    i32 21556, label %if.end.cleanup_crit_edge171
    i32 21529, label %sw.bb48
    i32 21530, label %sw.bb52
  ]

if.end.cleanup_crit_edge171:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge170:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge169:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 11)
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 10)
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 8)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %termios_rwsem.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem.i) #7
  %termios.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 13
  %11 = call ptr @memcpy(ptr %kterm, ptr %termios.i, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem.i) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %sw.bb10.cleanup_crit_edge, label %if.end.i.i.i

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %sw.bb10
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 36, i32 -1226833920) #10, !srcloc !48
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %kernel_termios_to_user_termios_1.exit, label %if.end.i.i.i.cleanup_crit_edge

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

kernel_termios_to_user_termios_1.exit:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kterm, i32 noundef 36) #7
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %kterm, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  %termios_rwsem.i117 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem.i117) #7
  %termios.i118 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 13
  %13 = call ptr @memcpy(ptr %kterm, ptr %termios.i118, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem.i117) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #7
  %call.i.i.i121 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i121, label %sw.bb14.cleanup_crit_edge, label %if.end.i.i.i125

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i125:                                  ; preds = %sw.bb14
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 44, i32 -1226833920) #10, !srcloc !48
  %asmresult.i.i.i123 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i123)
  %cmp.i6.i.i124 = icmp eq i32 %asmresult.i.i.i123, 0
  br i1 %cmp.i6.i.i124, label %kernel_termios_to_user_termios.exit, label %if.end.i.i.i125.cleanup_crit_edge

if.end.i.i.i125.cleanup_crit_edge:                ; preds = %if.end.i.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

kernel_termios_to_user_termios.exit:              ; preds = %if.end.i.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i126 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kterm, i32 noundef 44) #7
  %call.i12.i.i.i127 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %kterm, i32 noundef 44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i127)
  %tobool16.not = icmp eq i32 %call.i12.i.i.i127, 0
  %spec.select167 = select i1 %tobool16.not, i32 0, i32 -14
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 3)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 2)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 0)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %kterm.i) #7
  %termios_rwsem.i.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem.i.i) #7
  %termios.i.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 13
  %15 = call ptr @memcpy(ptr %kterm.i, ptr %termios.i.i, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem.i.i) #7
  %16 = ptrtoint ptr %kterm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kterm.i, align 4
  %conv.i.i = trunc i32 %17 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 59) #7
  %18 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #6, !srcloc !49
  %and.i.i.i130 = and i32 %20, -13
  %or.i.i.i = or i32 %and.i.i.i130, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %21 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i16 %conv.i.i, i32 -1226833921) #7, !srcloc !52
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i = icmp slt i32 %21, 0
  br i1 %cmp.i.i, label %sw.bb25.kernel_termios_to_user_termio.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

sw.bb25.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %sw.bb25
  %c_oflag.i.i = getelementptr inbounds %struct.termio, ptr %0, i32 0, i32 1
  %c_oflag8.i.i = getelementptr inbounds %struct.ktermios, ptr %kterm.i, i32 0, i32 1
  %22 = ptrtoint ptr %c_oflag8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_oflag8.i.i, align 4
  %conv9.i.i = trunc i32 %23 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 60) #7
  %24 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i98.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i98.i.i to ptr
  %cpu_domain.i.i99.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i99.i.i) #6, !srcloc !49
  %and.i100.i.i = and i32 %26, -13
  %or.i101.i.i = or i32 %and.i100.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i101.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %c_oflag.i.i, i16 %conv9.i.i, i32 -1226833921) #7, !srcloc !53
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp21.i.i = icmp slt i32 %27, 0
  br i1 %cmp21.i.i, label %lor.lhs.false.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, label %lor.lhs.false23.i.i

lor.lhs.false.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

lor.lhs.false23.i.i:                              ; preds = %lor.lhs.false.i.i
  %c_cflag.i.i = getelementptr inbounds %struct.termio, ptr %0, i32 0, i32 2
  %c_cflag28.i.i = getelementptr inbounds %struct.ktermios, ptr %kterm.i, i32 0, i32 2
  %28 = ptrtoint ptr %c_cflag28.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_cflag28.i.i, align 4
  %conv29.i.i = trunc i32 %29 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 61) #7
  %30 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i102.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i102.i.i to ptr
  %cpu_domain.i.i103.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 4
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i103.i.i) #6, !srcloc !49
  %and.i104.i.i = and i32 %32, -13
  %or.i105.i.i = or i32 %and.i104.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i105.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %33 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %c_cflag.i.i, i16 %conv29.i.i, i32 -1226833921) #7, !srcloc !54
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp41.i.i = icmp slt i32 %33, 0
  br i1 %cmp41.i.i, label %lor.lhs.false23.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, label %lor.lhs.false43.i.i

lor.lhs.false23.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

lor.lhs.false43.i.i:                              ; preds = %lor.lhs.false23.i.i
  %c_lflag.i.i = getelementptr inbounds %struct.termio, ptr %0, i32 0, i32 3
  %c_lflag48.i.i = getelementptr inbounds %struct.ktermios, ptr %kterm.i, i32 0, i32 3
  %34 = ptrtoint ptr %c_lflag48.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %c_lflag48.i.i, align 4
  %conv49.i.i = trunc i32 %35 to i16
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 62) #7
  %36 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i106.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i106.i.i to ptr
  %cpu_domain.i.i107.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i107.i.i) #6, !srcloc !49
  %and.i108.i.i = and i32 %38, -13
  %or.i109.i.i = or i32 %and.i108.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i109.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %c_lflag.i.i, i16 %conv49.i.i, i32 -1226833921) #7, !srcloc !55
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp61.i.i = icmp slt i32 %39, 0
  br i1 %cmp61.i.i, label %lor.lhs.false43.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, label %lor.lhs.false63.i.i

lor.lhs.false43.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %lor.lhs.false43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

lor.lhs.false63.i.i:                              ; preds = %lor.lhs.false43.i.i
  %c_line.i.i = getelementptr inbounds %struct.termio, ptr %0, i32 0, i32 4
  %c_line68.i.i = getelementptr inbounds %struct.ktermios, ptr %kterm.i, i32 0, i32 4
  %40 = ptrtoint ptr %c_line68.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %c_line68.i.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 63) #7
  %42 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i110.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i110.i.i to ptr
  %cpu_domain.i.i111.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i111.i.i) #6, !srcloc !49
  %and.i112.i.i = and i32 %44, -13
  %or.i113.i.i = or i32 %and.i112.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i113.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %c_line.i.i, i8 %41, i32 -1226833921) #7, !srcloc !56
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp80.i.i = icmp slt i32 %45, 0
  br i1 %cmp80.i.i, label %lor.lhs.false63.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, label %lor.lhs.false82.i.i

lor.lhs.false63.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %lor.lhs.false63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

lor.lhs.false82.i.i:                              ; preds = %lor.lhs.false63.i.i
  %c_cc.i.i = getelementptr inbounds %struct.termio, ptr %0, i32 0, i32 5
  %c_cc83.i.i = getelementptr inbounds %struct.ktermios, ptr %kterm.i, i32 0, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #7
  %call.i.i.i.i131 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i.i131, label %lor.lhs.false82.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false82.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %lor.lhs.false82.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false82.i.i
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %c_cc.i.i, i32 8, i32 -1226833920) #10, !srcloc !48
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %copy_to_user.exit.i.i, label %if.end.i.i.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge

if.end.i.i.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

copy_to_user.exit.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %c_cc83.i.i, i32 noundef 8) #7
  %call.i12.i.i.i.i = call i32 @arm_copy_to_user(ptr noundef %c_cc.i.i, ptr noundef %c_cc83.i.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i.i)
  %cmp86.not.i.i = icmp eq i32 %call.i12.i.i.i.i, 0
  br i1 %cmp86.not.i.i, label %copy_to_user.exit.i.i.get_termio.exit_crit_edge, label %copy_to_user.exit.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge

copy_to_user.exit.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge: ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kernel_termios_to_user_termio.exit.thread.i

copy_to_user.exit.i.i.get_termio.exit_crit_edge:  ; preds = %copy_to_user.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_termio.exit

kernel_termios_to_user_termio.exit.thread.i:      ; preds = %copy_to_user.exit.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %if.end.i.i.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %lor.lhs.false82.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %lor.lhs.false63.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %lor.lhs.false43.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %lor.lhs.false23.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %lor.lhs.false.i.i.kernel_termios_to_user_termio.exit.thread.i_crit_edge, %sw.bb25.kernel_termios_to_user_termio.exit.thread.i_crit_edge
  br label %get_termio.exit

get_termio.exit:                                  ; preds = %kernel_termios_to_user_termio.exit.thread.i, %copy_to_user.exit.i.i.get_termio.exit_crit_edge
  %47 = phi i32 [ -14, %kernel_termios_to_user_termio.exit.thread.i ], [ 0, %copy_to_user.exit.i.i.get_termio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %kterm.i) #7
  br label %cleanup

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 7)
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 6)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call fastcc i32 @set_termios(ptr noundef %real_tty.0, ptr noundef %0, i32 noundef 4)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  %termios_rwsem.i132 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem.i132) #7
  %termios_locked.i = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 14
  %48 = call ptr @memcpy(ptr %kterm, ptr %termios_locked.i, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem.i132) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #7
  %call.i.i.i135 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i135, label %sw.bb33.cleanup_crit_edge, label %if.end.i.i.i139

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i139:                                  ; preds = %sw.bb33
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 36, i32 -1226833920) #10, !srcloc !48
  %asmresult.i.i.i137 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i137)
  %cmp.i6.i.i138 = icmp eq i32 %asmresult.i.i.i137, 0
  br i1 %cmp.i6.i.i138, label %kernel_termios_to_user_termios_1.exit144, label %if.end.i.i.i139.cleanup_crit_edge

if.end.i.i.i139.cleanup_crit_edge:                ; preds = %if.end.i.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

kernel_termios_to_user_termios_1.exit144:         ; preds = %if.end.i.i.i139
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i140 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kterm, i32 noundef 36) #7
  %call.i12.i.i.i141 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %kterm, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i141)
  %tobool35.not = icmp eq i32 %call.i12.i.i.i141, 0
  %spec.select168 = select i1 %tobool35.not, i32 0, i32 -14
  br label %cleanup

sw.bb38:                                          ; preds = %if.end
  %call39 = tail call zeroext i1 @capable(i32 noundef 21) #7
  br i1 %call39, label %if.end41, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %sw.bb38
  %termios_rwsem.i145 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem.i145) #7
  %termios_locked.i146 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 14
  %50 = call ptr @memcpy(ptr %kterm, ptr %termios_locked.i146, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem.i145) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #7
  %call.i.i.i149 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i149, label %if.end41.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end41.if.then11.i.i.i_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end41
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 36, i32 -1226833920) #10, !srcloc !57
  %asmresult.i.i.i151 = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i151)
  %cmp.i6.i.i152 = icmp eq i32 %asmresult.i.i.i151, 0
  br i1 %cmp.i6.i.i152, label %if.end.i.i.i155, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !58

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i155:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i153 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kterm, i32 noundef 36) #7
  %52 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 4
  %54 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !49
  %and.i.i.i.i.i154 = and i32 %54, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i154, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kterm, ptr noundef %0, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end45, label %if.end.i.i.i155.if.then11.i.i.i_crit_edge, !prof !58

if.end.i.i.i155.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i155.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end41.if.then11.i.i.i_crit_edge
  %res.0.i.i3.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i155.if.then11.i.i.i_crit_edge ], [ 36, %if.end41.if.then11.i.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 36, %res.0.i.i3.i
  %add.ptr.i.i.i = getelementptr i8, ptr %kterm, i32 %sub.i.i.i
  %55 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i3.i)
  br label %cleanup

if.end45:                                         ; preds = %if.end.i.i.i155
  call void @__sanitizer_cov_trace_pc() #9
  call void @down_write(ptr noundef %termios_rwsem.i145) #7
  %56 = call ptr @memcpy(ptr %termios_locked.i146, ptr %kterm, i32 44)
  call void @up_write(ptr noundef %termios_rwsem.i145) #7
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %termios_rwsem.i157 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem.i157) #7
  %termios.i158 = getelementptr inbounds %struct.tty_struct, ptr %real_tty.0, i32 0, i32 13
  %57 = call ptr @memcpy(ptr %kterm, ptr %termios.i158, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem.i157) #7
  %c_cflag = getelementptr inbounds %struct.ktermios, ptr %kterm, i32 0, i32 2
  %58 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %c_cflag, align 4
  %and = lshr i32 %59, 11
  %and.lobit = and i32 %and, 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 802) #7
  %60 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !49
  %and.i = and i32 %62, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %and.lobit, i32 -1226833921) #7, !srcloc !59
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 805) #7
  %64 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i113 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i113 to ptr
  %cpu_domain.i.i114 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i114) #6, !srcloc !49
  %and.i115 = and i32 %66, -13
  %or.i116 = or i32 %and.i115, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i116) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %67 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #7, !srcloc !60
  %asmresult = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool63.not = icmp eq i32 %asmresult, 0
  br i1 %tobool63.not, label %if.end65, label %sw.bb52.cleanup_crit_edge

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end65:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #9
  %asmresult61 = extractvalue { i32, i32 } %67, 1
  %call66 = tail call fastcc i32 @tty_change_softcar(ptr noundef %real_tty.0, i32 noundef %asmresult61)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end65, %sw.bb52.cleanup_crit_edge, %sw.bb48, %if.end45, %if.then11.i.i.i, %sw.bb38.cleanup_crit_edge, %kernel_termios_to_user_termios_1.exit144, %if.end.i.i.i139.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb31, %sw.bb29, %sw.bb27, %get_termio.exit, %sw.bb23, %sw.bb21, %sw.bb19, %kernel_termios_to_user_termios.exit, %if.end.i.i.i125.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %kernel_termios_to_user_termios_1.exit, %if.end.i.i.i.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb8, %sw.bb6, %sw.bb, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge169, %if.end.cleanup_crit_edge170, %if.end.cleanup_crit_edge171
  %retval.0 = phi i32 [ -515, %sw.default ], [ %call66, %if.end65 ], [ %63, %sw.bb48 ], [ 0, %if.end45 ], [ %call32, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %47, %get_termio.exit ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call, %sw.bb ], [ -1, %sw.bb38.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge169 ], [ -25, %if.end.cleanup_crit_edge170 ], [ -25, %if.end.cleanup_crit_edge171 ], [ -14, %sw.bb52.cleanup_crit_edge ], [ -14, %sw.bb10.cleanup_crit_edge ], [ -14, %if.end.i.i.i.cleanup_crit_edge ], [ -14, %sw.bb14.cleanup_crit_edge ], [ -14, %if.end.i.i.i125.cleanup_crit_edge ], [ -14, %sw.bb33.cleanup_crit_edge ], [ -14, %if.end.i.i.i139.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ %spec.select, %kernel_termios_to_user_termios_1.exit ], [ %spec.select167, %kernel_termios_to_user_termios.exit ], [ %spec.select168, %kernel_termios_to_user_termios_1.exit144 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %kterm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_termios(ptr noundef %tty, ptr noundef %arg, i32 noundef %opt) unnamed_addr #0 align 64 {
entry:
  %tmp_termios = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp_termios) #7
  %call = tail call i32 @tty_check_change(ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_read(ptr noundef %termios_rwsem) #7
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %0 = call ptr @memcpy(ptr %tmp_termios, ptr %termios, i32 44)
  tail call void @up_read(ptr noundef %termios_rwsem) #7
  %and = and i32 %opt, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 25) #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !49
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %arg, i32 -1226833921) #7, !srcloc !61
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp slt i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then4.cleanup_crit_edge, label %if.end.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %asmresult2.i = extractvalue { i32, i32 } %4, 1
  %5 = ptrtoint ptr %tmp_termios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp_termios, align 4
  %and.i = and i32 %6, -65536
  %conv6.i = and i32 %asmresult2.i, 65535
  %or.i = or i32 %and.i, %conv6.i
  store i32 %or.i, ptr %tmp_termios, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 29) #7
  %c_oflag.i = getelementptr inbounds %struct.termio, ptr %arg, i32 0, i32 1
  %7 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i116.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i116.i to ptr
  %cpu_domain.i.i117.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i117.i) #6, !srcloc !49
  %and.i118.i = and i32 %9, -13
  %or.i119.i = or i32 %and.i118.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i119.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %c_oflag.i, i32 -1226833921) #7, !srcloc !62
  %asmresult17.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult17.i)
  %cmp21.i = icmp slt i32 %asmresult17.i, 0
  br i1 %cmp21.i, label %if.end.i.cleanup_crit_edge, label %if.end24.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.i:                                       ; preds = %if.end.i
  %asmresult18.i = extractvalue { i32, i32 } %10, 1
  %c_oflag25.i = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 1
  %11 = ptrtoint ptr %c_oflag25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_oflag25.i, align 4
  %and26.i = and i32 %12, -65536
  %conv27.i = and i32 %asmresult18.i, 65535
  %or28.i = or i32 %and26.i, %conv27.i
  store i32 %or28.i, ptr %c_oflag25.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 33) #7
  %c_cflag.i = getelementptr inbounds %struct.termio, ptr %arg, i32 0, i32 2
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i120.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i120.i to ptr
  %cpu_domain.i.i121.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i121.i) #6, !srcloc !49
  %and.i122.i = and i32 %15, -13
  %or.i123.i = or i32 %and.i122.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i123.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %16 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %c_cflag.i, i32 -1226833921) #7, !srcloc !63
  %asmresult39.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult39.i)
  %cmp43.i = icmp slt i32 %asmresult39.i, 0
  br i1 %cmp43.i, label %if.end24.i.cleanup_crit_edge, label %if.end46.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46.i:                                       ; preds = %if.end24.i
  %asmresult40.i = extractvalue { i32, i32 } %16, 1
  %c_cflag47.i = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 2
  %17 = ptrtoint ptr %c_cflag47.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %c_cflag47.i, align 4
  %and48.i = and i32 %18, -65536
  %conv49.i = and i32 %asmresult40.i, 65535
  %or50.i = or i32 %and48.i, %conv49.i
  store i32 %or50.i, ptr %c_cflag47.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 37) #7
  %c_lflag.i = getelementptr inbounds %struct.termio, ptr %arg, i32 0, i32 3
  %19 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i124.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i124.i to ptr
  %cpu_domain.i.i125.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i125.i) #6, !srcloc !49
  %and.i126.i = and i32 %21, -13
  %or.i127.i = or i32 %and.i126.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i127.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %22 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %c_lflag.i, i32 -1226833921) #7, !srcloc !64
  %asmresult61.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult61.i)
  %cmp65.i = icmp slt i32 %asmresult61.i, 0
  br i1 %cmp65.i, label %if.end46.i.cleanup_crit_edge, label %if.end68.i

if.end46.i.cleanup_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68.i:                                       ; preds = %if.end46.i
  %asmresult62.i = extractvalue { i32, i32 } %22, 1
  %c_lflag69.i = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 3
  %23 = ptrtoint ptr %c_lflag69.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %c_lflag69.i, align 4
  %and70.i = and i32 %24, -65536
  %conv71.i = and i32 %asmresult62.i, 65535
  %or72.i = or i32 %and70.i, %conv71.i
  store i32 %or72.i, ptr %c_lflag69.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 41) #7
  %c_line.i = getelementptr inbounds %struct.termio, ptr %arg, i32 0, i32 4
  %25 = tail call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i128.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i128.i to ptr
  %cpu_domain.i.i129.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i129.i) #6, !srcloc !49
  %and.i130.i = and i32 %27, -13
  %or.i131.i = or i32 %and.i130.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i131.i) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %28 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %c_line.i, i32 -1226833921) #7, !srcloc !65
  %asmresult83.i = extractvalue { i32, i32 } %28, 0
  %asmresult84.i = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %conv85.i = trunc i32 %asmresult84.i to i8
  %c_line86.i = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 4
  %29 = ptrtoint ptr %c_line86.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv85.i, ptr %c_line86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult83.i)
  %cmp88.i = icmp slt i32 %asmresult83.i, 0
  br i1 %cmp88.i, label %if.end68.i.cleanup_crit_edge, label %if.end91.i

if.end68.i.cleanup_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end91.i:                                       ; preds = %if.end68.i
  %c_cc.i = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 5
  %c_cc92.i = getelementptr inbounds %struct.termio, ptr %arg, i32 0, i32 5
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %if.end91.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end91.i.if.then11.i.i.i_crit_edge:             ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end91.i
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %c_cc92.i, i32 8, i32 -1226833920) #10, !srcloc !57
  %asmresult.i.i.i = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !58

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %c_cc.i, i32 noundef 8) #7
  %31 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !49
  %and.i.i.i.i.i = and i32 %33, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %c_cc.i, ptr noundef %c_cc92.i, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end22_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !58

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i.if.end22_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end91.i.if.then11.i.i.i_crit_edge
  %res.0.i.i134.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end91.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i134.i
  %add.ptr.i.i.i = getelementptr i8, ptr %c_cc.i, i32 %sub.i.i.i
  %34 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i134.i)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and9 = and i32 %opt, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #7
  %call.i.i.i83 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %tobool10.not, label %if.end59.i.i.i84, label %if.end59.i.i.i66

if.end59.i.i.i66:                                 ; preds = %if.else
  br i1 %call.i.i.i83, label %if.end59.i.i.i66.if.then11.i.i.i80_crit_edge, label %land.lhs.true.i.i.i69

if.end59.i.i.i66.if.then11.i.i.i80_crit_edge:     ; preds = %if.end59.i.i.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i80

land.lhs.true.i.i.i69:                            ; preds = %if.end59.i.i.i66
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 36, i32 -1226833920) #10, !srcloc !57
  %asmresult.i.i.i67 = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i67)
  %cmp.i6.i.i68 = icmp eq i32 %asmresult.i.i.i67, 0
  br i1 %cmp.i6.i.i68, label %if.end.i.i.i77, label %land.lhs.true.i.i.i69.if.then11.i.i.i80_crit_edge, !prof !58

land.lhs.true.i.i.i69.if.then11.i.i.i80_crit_edge: ; preds = %land.lhs.true.i.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i80

if.end.i.i.i77:                                   ; preds = %land.lhs.true.i.i.i69
  %call.i.i.i.i70 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp_termios, i32 noundef 36) #7
  %36 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i.i71 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i.i.i71 to ptr
  %cpu_domain.i.i.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i72) #6, !srcloc !49
  %and.i.i.i.i.i73 = and i32 %38, -13
  %or.i.i.i.i.i74 = or i32 %and.i.i.i.i.i73, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i74) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i.i75 = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp_termios, ptr noundef %arg, i32 noundef 36) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i75)
  %tobool4.not.i.i.i76 = icmp eq i32 %call1.i.i.i.i75, 0
  br i1 %tobool4.not.i.i.i76, label %if.end.i.i.i77.if.end22_crit_edge, label %if.end.i.i.i77.if.then11.i.i.i80_crit_edge, !prof !58

if.end.i.i.i77.if.then11.i.i.i80_crit_edge:       ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i80

if.end.i.i.i77.if.end22_crit_edge:                ; preds = %if.end.i.i.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then11.i.i.i80:                                ; preds = %if.end.i.i.i77.if.then11.i.i.i80_crit_edge, %land.lhs.true.i.i.i69.if.then11.i.i.i80_crit_edge, %if.end59.i.i.i66.if.then11.i.i.i80_crit_edge
  %res.0.i.i3.i = phi i32 [ %call1.i.i.i.i75, %if.end.i.i.i77.if.then11.i.i.i80_crit_edge ], [ 36, %if.end59.i.i.i66.if.then11.i.i.i80_crit_edge ], [ 36, %land.lhs.true.i.i.i69.if.then11.i.i.i80_crit_edge ]
  %sub.i.i.i78 = sub i32 36, %res.0.i.i3.i
  %add.ptr.i.i.i79 = getelementptr i8, ptr %tmp_termios, i32 %sub.i.i.i78
  %39 = call ptr @memset(ptr %add.ptr.i.i.i79, i32 0, i32 %res.0.i.i3.i)
  br label %cleanup

if.end59.i.i.i84:                                 ; preds = %if.else
  br i1 %call.i.i.i83, label %if.end59.i.i.i84.if.then11.i.i.i99_crit_edge, label %land.lhs.true.i.i.i87

if.end59.i.i.i84.if.then11.i.i.i99_crit_edge:     ; preds = %if.end59.i.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i99

land.lhs.true.i.i.i87:                            ; preds = %if.end59.i.i.i84
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 44, i32 -1226833920) #10, !srcloc !57
  %asmresult.i.i.i85 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i85)
  %cmp.i6.i.i86 = icmp eq i32 %asmresult.i.i.i85, 0
  br i1 %cmp.i6.i.i86, label %if.end.i.i.i95, label %land.lhs.true.i.i.i87.if.then11.i.i.i99_crit_edge, !prof !58

land.lhs.true.i.i.i87.if.then11.i.i.i99_crit_edge: ; preds = %land.lhs.true.i.i.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i99

if.end.i.i.i95:                                   ; preds = %land.lhs.true.i.i.i87
  %call.i.i.i.i88 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp_termios, i32 noundef 44) #7
  %41 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i.i.i.i.i.i.i89 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i89 to ptr
  %cpu_domain.i.i.i.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i90) #6, !srcloc !49
  %and.i.i.i.i.i91 = and i32 %43, -13
  %or.i.i.i.i.i92 = or i32 %and.i.i.i.i.i91, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i92) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %call1.i.i.i.i93 = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp_termios, ptr noundef %arg, i32 noundef 44) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #7, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i93)
  %tobool4.not.i.i.i94 = icmp eq i32 %call1.i.i.i.i93, 0
  br i1 %tobool4.not.i.i.i94, label %if.end.i.i.i95.if.end22_crit_edge, label %if.end.i.i.i95.if.then11.i.i.i99_crit_edge, !prof !58

if.end.i.i.i95.if.then11.i.i.i99_crit_edge:       ; preds = %if.end.i.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i99

if.end.i.i.i95.if.end22_crit_edge:                ; preds = %if.end.i.i.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then11.i.i.i99:                                ; preds = %if.end.i.i.i95.if.then11.i.i.i99_crit_edge, %land.lhs.true.i.i.i87.if.then11.i.i.i99_crit_edge, %if.end59.i.i.i84.if.then11.i.i.i99_crit_edge
  %res.0.i.i3.i96 = phi i32 [ %call1.i.i.i.i93, %if.end.i.i.i95.if.then11.i.i.i99_crit_edge ], [ 44, %if.end59.i.i.i84.if.then11.i.i.i99_crit_edge ], [ 44, %land.lhs.true.i.i.i87.if.then11.i.i.i99_crit_edge ]
  %sub.i.i.i97 = sub i32 44, %res.0.i.i3.i96
  %add.ptr.i.i.i98 = getelementptr i8, ptr %tmp_termios, i32 %sub.i.i.i97
  %44 = call ptr @memset(ptr %add.ptr.i.i.i98, i32 0, i32 %res.0.i.i3.i96)
  br label %cleanup

if.end22:                                         ; preds = %if.end.i.i.i95.if.end22_crit_edge, %if.end.i.i.i77.if.end22_crit_edge, %if.end.i.i.i.if.end22_crit_edge
  %call23 = call i32 @tty_termios_input_baud_rate(ptr noundef nonnull %tmp_termios) #7
  %c_ispeed = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 6
  %45 = ptrtoint ptr %c_ispeed to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call23, ptr %c_ispeed, align 4
  %call24 = call i32 @tty_termios_baud_rate(ptr noundef nonnull %tmp_termios) #7
  %c_ospeed = getelementptr inbounds %struct.ktermios, ptr %tmp_termios, i32 0, i32 7
  %46 = ptrtoint ptr %c_ospeed to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call24, ptr %c_ospeed, align 4
  %call25 = call ptr @tty_ldisc_ref(ptr noundef %tty) #7
  %cmp.not = icmp eq ptr %call25, null
  br i1 %cmp.not, label %if.end22.if.end34_crit_edge, label %if.then26

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then26:                                        ; preds = %if.end22
  %and27 = and i32 %opt, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then26.if.end33_crit_edge, label %land.lhs.true

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %if.then26
  %47 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call25, align 4
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %flush_buffer, align 4
  %tobool29.not = icmp eq ptr %50, null
  br i1 %tobool29.not, label %land.lhs.true.if.end33_crit_edge, label %if.then30

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void %50(ptr noundef %tty) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %land.lhs.true.if.end33_crit_edge, %if.then26.if.end33_crit_edge
  call void @tty_ldisc_deref(ptr noundef nonnull %call25) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end22.if.end34_crit_edge
  %and35 = and i32 %opt, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end43_crit_edge, label %if.then37

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then37:                                        ; preds = %if.end34
  call void @tty_wait_until_sent(ptr noundef %tty, i32 noundef 0)
  %51 = call i32 @llvm.read_register.i32(metadata !37) #7
  %and.i101 = and i32 %51, -16384
  %52 = inttoptr i32 %and.i101 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stack.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %59 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then37.cleanup_crit_edge, !prof !58

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

signal_pending.exit:                              ; preds = %if.then37
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %56, align 4
  %and1.i.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool40.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool40.not, label %signal_pending.exit.if.end43_crit_edge, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

signal_pending.exit.if.end43_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %signal_pending.exit.if.end43_crit_edge, %if.end34.if.end43_crit_edge
  %call44 = call i32 @tty_set_termios(ptr noundef %tty, ptr noundef nonnull %tmp_termios)
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %signal_pending.exit.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then11.i.i.i99, %if.then11.i.i.i80, %if.then11.i.i.i, %if.end68.i.cleanup_crit_edge, %if.end46.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ %call, %entry.cleanup_crit_edge ], [ -512, %signal_pending.exit.cleanup_crit_edge ], [ -14, %if.end68.i.cleanup_crit_edge ], [ -14, %if.end46.i.cleanup_crit_edge ], [ -14, %if.end24.i.cleanup_crit_edge ], [ -14, %if.end.i.cleanup_crit_edge ], [ -14, %if.then4.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then11.i.i.i80 ], [ -14, %if.then11.i.i.i99 ], [ -512, %if.then37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp_termios) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tty_change_softcar(ptr noundef %tty, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  %old = alloca %struct.ktermios, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %cond = select i1 %tobool.not, i32 0, i32 2048
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %old) #7
  %termios_rwsem = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem) #7
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %0 = call ptr @memcpy(ptr %old, ptr %termios, i32 44)
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %1 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %c_cflag, align 4
  %and = and i32 %2, -2049
  %or = or i32 %and, %cond
  store i32 %or, ptr %c_cflag, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %set_termios = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %set_termios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_termios, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void %6(ptr noundef %tty, ptr noundef nonnull %old) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_cflag, align 4
  %and9 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %cond)
  %cmp.not = icmp eq i32 %and9, %cond
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  call void @up_write(ptr noundef %termios_rwsem) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %old) #7
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_perform_flush(ptr noundef %tty, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_check_change(ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @tty_ldisc_ref_wait(ptr noundef %tty) #7
  %call3 = tail call fastcc i32 @__tty_perform_flush(ptr noundef %tty, i32 noundef %arg)
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_ldisc_deref(ptr noundef nonnull %call2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_check_change(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tty_perform_flush(ptr noundef %tty, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ldisc = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 7
  %0 = ptrtoint ptr %ldisc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ldisc, align 4
  %2 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %arg, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 1, label %entry.sw.bb14_crit_edge
  ]

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %land.lhs.true

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %flush_buffer = getelementptr inbounds %struct.tty_ldisc_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %flush_buffer, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  tail call void %6(ptr noundef %tty) #7
  %termios_rwsem.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem.i) #7
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.tty_unthrottle.exit_crit_edge, label %land.lhs.true.i

if.then.tty_unthrottle.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_unthrottle.exit

land.lhs.true.i:                                  ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %unthrottle.i = getelementptr inbounds %struct.tty_operations, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %unthrottle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unthrottle.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.tty_unthrottle.exit_crit_edge, label %if.then.i

land.lhs.true.i.tty_unthrottle.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_unthrottle.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %tty) #7
  br label %tty_unthrottle.exit

tty_unthrottle.exit:                              ; preds = %if.then.i, %land.lhs.true.i.tty_unthrottle.exit_crit_edge, %if.then.tty_unthrottle.exit_crit_edge
  %flow_change.i = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %11 = ptrtoint ptr %flow_change.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flow_change.i, align 4
  tail call void @up_write(ptr noundef %termios_rwsem.i) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %sw.bb4.sw.bb14_crit_edge, label %land.lhs.true6

sw.bb4.sw.bb14_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

land.lhs.true6:                                   ; preds = %sw.bb4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %flush_buffer8 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %flush_buffer8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flush_buffer8, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %land.lhs.true6.sw.bb14_crit_edge, label %if.then10

land.lhs.true6.sw.bb14_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

if.then10:                                        ; preds = %land.lhs.true6
  tail call void %15(ptr noundef %tty) #7
  %termios_rwsem.i27 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 11
  tail call void @down_write(ptr noundef %termios_rwsem.i27) #7
  %flags.i28 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 16
  %call.i29 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.then10.tty_unthrottle.exit37_crit_edge, label %land.lhs.true.i34

if.then10.tty_unthrottle.exit37_crit_edge:        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_unthrottle.exit37

land.lhs.true.i34:                                ; preds = %if.then10
  %ops.i31 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %16 = ptrtoint ptr %ops.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i31, align 4
  %unthrottle.i32 = getelementptr inbounds %struct.tty_operations, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %unthrottle.i32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unthrottle.i32, align 4
  %tobool1.not.i33 = icmp eq ptr %19, null
  br i1 %tobool1.not.i33, label %land.lhs.true.i34.tty_unthrottle.exit37_crit_edge, label %if.then.i35

land.lhs.true.i34.tty_unthrottle.exit37_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %tty_unthrottle.exit37

if.then.i35:                                      ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %tty) #7
  br label %tty_unthrottle.exit37

tty_unthrottle.exit37:                            ; preds = %if.then.i35, %land.lhs.true.i34.tty_unthrottle.exit37_crit_edge, %if.then10.tty_unthrottle.exit37_crit_edge
  %flow_change.i36 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 23
  %20 = ptrtoint ptr %flow_change.i36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flow_change.i36, align 4
  tail call void @up_write(ptr noundef %termios_rwsem.i27) #7
  br label %sw.bb14

sw.bb14:                                          ; preds = %tty_unthrottle.exit37, %land.lhs.true6.sw.bb14_crit_edge, %sw.bb4.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge
  %ops.i38 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i38, align 4
  %flush_buffer.i = getelementptr inbounds %struct.tty_operations, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %flush_buffer.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flush_buffer.i, align 4
  %tobool.not.i39 = icmp eq ptr %24, null
  br i1 %tobool.not.i39, label %sw.bb14.cleanup_crit_edge, label %if.then.i40

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i40:                                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %24(ptr noundef %tty) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i40, %sw.bb14.cleanup_crit_edge, %tty_unthrottle.exit, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %tty_unthrottle.exit ], [ 0, %sw.bb14.cleanup_crit_edge ], [ 0, %if.then.i40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @n_tty_ioctl_helper(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %cmd, label %sw.default50 [
    i32 21514, label %sw.bb
    i32 21515, label %sw.bb44
  ]

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @tty_check_change(ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %1 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %arg, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb11
    i32 2, label %sw.bb23
    i32 3, label %sw.bb31
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %flow = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %flow) #7
  %tco_stopped = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %tco_stopped to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tco_stopped, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.then5, label %sw.bb2.if.end8_crit_edge

sw.bb2.if.end8_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %tco_stopped to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %tco_stopped, align 1
  tail call void @__stop_tty(ptr noundef %tty) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %sw.bb2.if.end8_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %flow) #7
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %flow12 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19
  tail call void @_raw_spin_lock_irq(ptr noundef %flow12) #7
  %tco_stopped15 = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 19, i32 2
  %5 = ptrtoint ptr %tco_stopped15 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tco_stopped15, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not = icmp eq i8 %6, 0
  br i1 %tobool16.not, label %sw.bb11.if.end20_crit_edge, label %if.then17

sw.bb11.if.end20_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %tco_stopped15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tco_stopped15, align 1
  tail call void @__start_tty(ptr noundef %tty) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %sw.bb11.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %flow12) #7
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %sw.bb23.cleanup_crit_edge, label %if.then25

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @tty_send_xchar(ptr noundef %tty, i8 noundef zeroext %9) #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %arrayidx34 = getelementptr %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 5, i32 8
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp36.not = icmp eq i8 %11, 0
  br i1 %cmp36.not, label %sw.bb31.cleanup_crit_edge, label %if.then38

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 @tty_send_xchar(ptr noundef %tty, i8 noundef zeroext %11) #7
  br label %cleanup

sw.bb44:                                          ; preds = %entry
  %call45 = tail call i32 @tty_check_change(ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = tail call fastcc i32 @__tty_perform_flush(ptr noundef %tty, i32 noundef %arg)
  br label %cleanup

sw.default50:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 @tty_mode_ioctl(ptr noundef %tty, i32 noundef %cmd, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %sw.default50, %if.end48, %sw.bb44.cleanup_crit_edge, %if.then38, %sw.bb31.cleanup_crit_edge, %if.then25, %sw.bb23.cleanup_crit_edge, %if.end20, %if.end8, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %sw.default50 ], [ %call49, %if.end48 ], [ %call, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call42, %if.then38 ], [ 0, %sw.bb31.cleanup_crit_edge ], [ %call29, %if.then25 ], [ 0, %sw.bb23.cleanup_crit_edge ], [ 0, %if.end20 ], [ 0, %if.end8 ], [ %call45, %sw.bb44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__stop_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__start_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_send_xchar(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_input_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__ksymtab_tty_chars_in_buffer, !1, !"__ksymtab_tty_chars_in_buffer", i1 false, i1 false}
!1 = !{!"../drivers/tty/tty_ioctl.c", i32 63, i32 1}
!2 = !{ptr @__ksymtab_tty_write_room, !3, !"__ksymtab_tty_write_room", i1 false, i1 false}
!3 = !{!"../drivers/tty/tty_ioctl.c", i32 82, i32 1}
!4 = !{ptr @__ksymtab_tty_driver_flush_buffer, !5, !"__ksymtab_tty_driver_flush_buffer", i1 false, i1 false}
!5 = !{!"../drivers/tty/tty_ioctl.c", i32 97, i32 1}
!6 = !{ptr @__ksymtab_tty_unthrottle, !7, !"__ksymtab_tty_unthrottle", i1 false, i1 false}
!7 = !{!"../drivers/tty/tty_ioctl.c", i32 121, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/tty/tty_ioctl.c", i32 204, i32 12}
!10 = !{ptr @__ksymtab_tty_wait_until_sent, !11, !"__ksymtab_tty_wait_until_sent", i1 false, i1 false}
!11 = !{!"../drivers/tty/tty_ioctl.c", i32 215, i32 1}
!12 = !{ptr @__ksymtab_tty_termios_copy_hw, !13, !"__ksymtab_tty_termios_copy_hw", i1 false, i1 false}
!13 = !{!"../drivers/tty/tty_ioctl.c", i32 261, i32 1}
!14 = !{ptr @__ksymtab_tty_termios_hw_change, !15, !"__ksymtab_tty_termios_hw_change", i1 false, i1 false}
!15 = !{!"../drivers/tty/tty_ioctl.c", i32 280, i32 1}
!16 = !{ptr @__ksymtab_tty_get_char_size, !17, !"__ksymtab_tty_get_char_size", i1 false, i1 false}
!17 = !{!"../drivers/tty/tty_ioctl.c", i32 303, i32 1}
!18 = !{ptr @__ksymtab_tty_get_frame_size, !19, !"__ksymtab_tty_get_frame_size", i1 false, i1 false}
!19 = !{!"../drivers/tty/tty_ioctl.c", i32 325, i32 1}
!20 = !{ptr @__ksymtab_tty_set_termios, !21, !"__ksymtab_tty_set_termios", i1 false, i1 false}
!21 = !{!"../drivers/tty/tty_ioctl.c", i32 371, i32 1}
!22 = !{ptr @__ksymtab_tty_mode_ioctl, !23, !"__ksymtab_tty_mode_ioctl", i1 false, i1 false}
!23 = !{!"../drivers/tty/tty_ioctl.c", i32 812, i32 1}
!24 = !{ptr @__ksymtab_tty_perform_flush, !25, !"__ksymtab_tty_perform_flush", i1 false, i1 false}
!25 = !{!"../drivers/tty/tty_ioctl.c", i32 855, i32 1}
!26 = !{ptr @__ksymtab_n_tty_ioctl_helper, !27, !"__ksymtab_n_tty_ioctl_helper", i1 false, i1 false}
!27 = !{!"../drivers/tty/tty_ioctl.c", i32 906, i32 1}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/asm-generic/termios.h", i32 25, i32 6}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 2150522969, i64 2150522994}
!49 = !{i64 3017843}
!50 = !{i64 3018040}
!51 = !{i64 2150503273}
!52 = !{i64 2150613154, i64 2150613434, i64 2150613768, i64 2150614102}
!53 = !{i64 2150622021, i64 2150622301, i64 2150622635, i64 2150622969}
!54 = !{i64 2150630888, i64 2150631168, i64 2150631502, i64 2150631836}
!55 = !{i64 2150639755, i64 2150640035, i64 2150640369, i64 2150640703}
!56 = !{i64 2150646653, i64 2150646933, i64 2150647267, i64 2150647601}
!57 = !{i64 2150522288, i64 2150522313}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2154118336, i64 2154118616, i64 2154118950, i64 2154119284}
!60 = !{i64 2154133971, i64 2154134251, i64 2154134585, i64 2154134919}
!61 = !{i64 2150553904, i64 2150554184, i64 2150554518, i64 2150554852}
!62 = !{i64 2150566115, i64 2150566395, i64 2150566729, i64 2150567063}
!63 = !{i64 2150578326, i64 2150578606, i64 2150578940, i64 2150579274}
!64 = !{i64 2150590537, i64 2150590817, i64 2150591151, i64 2150591485}
!65 = !{i64 2150600288, i64 2150600568, i64 2150600902, i64 2150601236}
!66 = !{i8 0, i8 2}
