; ModuleID = '/llk/IR_all_yes/arch/arm/mm/alignment.c_pt.bc'
source_filename = "../arch/arm/mm/alignment.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon }
%union.anon = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.41, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.9 }
%struct.llist_node = type { ptr }
%union.anon.9 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.41 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_alignment = internal constant [10 x i8] c"alignment\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ai_usermode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_alignment = internal constant %struct.kernel_param { ptr @__param_str_alignment, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon { ptr @ai_usermode } }, section "__param", align 4
@__setup_str_noalign_setup = internal constant [8 x i8] c"noalign\00", section ".init.rodata", align 1
@__setup_noalign_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_noalign_setup, ptr @noalign_setup, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_alignment__200_1049_alignment_init5 = internal global ptr @alignment_init, section ".initcall5.init", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu/alignment\00", [18 x i8] zeroinitializer }, align 32
@alignment_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @alignment_proc_open, ptr @seq_read, ptr null, ptr @alignment_proc_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@cr_no_alignment = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alignment exception\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"User:\09\09%lu\0A\00", [20 x i8] zeroinitializer }, align 32
@ai_user = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"System:\09\09%lu (%pS)\0A\00", [44 x i8] zeroinitializer }, align 32
@ai_sys = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ai_sys_last_pc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Skipped:\09%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@ai_skipped = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Half:\09\09%lu\0A\00", [20 x i8] zeroinitializer }, align 32
@ai_half = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Word:\09\09%lu\0A\00", [20 x i8] zeroinitializer }, align 32
@ai_word = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DWord:\09\09%lu\0A\00", [19 x i8] zeroinitializer }, align 32
@ai_dword = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Multi:\09\09%lu\0A\00", [19 x i8] zeroinitializer }, align 32
@ai_multi = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"User faults:\09%i (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@usermode_action = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ignored\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"warn\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fixup\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fixup+warn\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"signal+warn\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arch/arm/mm/alignment.c\00", [40 x i8] zeroinitializer }, align 32
@safe_usermode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.16, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014alignment: ignoring faults is unsafe on this CPU.  Defaulting to fixup mode.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"safe_usermode\00", [18 x i8] zeroinitializer }, align 32
@safe_usermode._entry_ptr = internal global ptr @safe_usermode._entry, section ".printk_index", align 4
@do_alignment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.16, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Alignment trap: not handling swp instruction\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_alignment\00", [19 x i8] zeroinitializer }, align 32
@do_alignment._entry_ptr = internal global ptr @do_alignment._entry, section ".printk_index", align 4
@do_alignment._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.16, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Alignment trap: not handling instruction %0*x at [<%08lx>]\0A\00", [34 x i8] zeroinitializer }, align 32
@do_alignment._entry_ptr.23 = internal global ptr @do_alignment._entry.21, section ".printk_index", align 4
@do_alignment._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.16, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Alignment trap: %s (%d) PC=0x%08lx Instr=0x%0*x Address=0x%08lx FSR 0x%03x\0A\00", [52 x i8] zeroinitializer }, align 32
@do_alignment._entry_ptr.26 = internal global ptr @do_alignment._entry.24, section ".printk_index", align 4
@thumb2arm.subset = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -411041792, i32 -511704912, i32 -406847488, i32 -510656304, i32 -409993216, i32 -510656336, i32 -405798912, i32 -510656272], [32 x i8] zeroinitializer }, align 32
@thumb2arm.subset.27 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 -382926848, i32 -382910464, i32 -390266880, i32 -390234112], [16 x i8] zeroinitializer }, align 32
@__const.do_alignment_t32_to_handler.subset = private unnamed_addr constant [2 x i32] [i32 -382926848, i32 -390266880], align 4
@do_alignment_ldmstm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.16, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013LDMSTM: PC = %08lx, instr = %08x, addr = %08lx, eaddr = %08lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"do_alignment_ldmstm\00", [44 x i8] zeroinitializer }, align 32
@do_alignment_ldmstm._entry_ptr = internal global ptr @do_alignment_ldmstm._entry, section ".printk_index", align 4
@do_alignment_ldmstm._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.16, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Alignment trap: not handling ldm with s-bit set\0A\00", [45 x i8] zeroinitializer }, align 32
@do_alignment_ldmstm._entry_ptr.32 = internal global ptr @do_alignment_ldmstm._entry.30, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 208, i64 240, i64 1048816]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [13 x i64] [i64 11, i64 16, i64 59488, i64 59520, i64 59552, i64 59616, i64 59648, i64 59680, i64 59712, i64 59744, i64 59840, i64 59872, i64 63552]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"ai_usermode\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 84, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1018, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"alignment_proc_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 165, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"cr_no_alignment\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 85, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 1032, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 132, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"ai_user\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 76, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 133, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"ai_sys\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 77, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"ai_sys_last_pc\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 78, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 134, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"ai_skipped\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 79, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 135, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"ai_half\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 80, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 136, i32 16 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"ai_word\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 81, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 138, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"ai_dword\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 82, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 139, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"ai_multi\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 83, i32 22 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 140, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"usermode_action\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 121, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 122, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 123, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 124, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 125, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 126, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 127, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 157, i32 7 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 114, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 950, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 956, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 967, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 638, i32 21 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"subset\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 688, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 541, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [27 x i8] c"../arch/arm/mm/alignment.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 587, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__initcall__kmod_alignment__200_1049_alignment_init5, ptr @__param_alignment, ptr @__setup_noalign_setup, ptr @do_alignment._entry, ptr @do_alignment._entry.21, ptr @do_alignment._entry.24, ptr @do_alignment._entry_ptr, ptr @do_alignment._entry_ptr.23, ptr @do_alignment._entry_ptr.26, ptr @do_alignment_ldmstm._entry, ptr @do_alignment_ldmstm._entry.30, ptr @do_alignment_ldmstm._entry_ptr, ptr @do_alignment_ldmstm._entry_ptr.32, ptr @safe_usermode._entry, ptr @safe_usermode._entry_ptr, ptr @ai_usermode, ptr @.str, ptr @alignment_proc_ops, ptr @cr_no_alignment, ptr @.str.1, ptr @.str.2, ptr @ai_user, ptr @.str.3, ptr @ai_sys, ptr @ai_sys_last_pc, ptr @.str.4, ptr @ai_skipped, ptr @.str.5, ptr @ai_half, ptr @.str.6, ptr @ai_word, ptr @.str.7, ptr @ai_dword, ptr @.str.8, ptr @ai_multi, ptr @.str.9, ptr @usermode_action, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @thumb2arm.subset, ptr @thumb2arm.subset.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_usermode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alignment_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cr_no_alignment to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_user to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_sys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_sys_last_pc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_skipped to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_half to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_word to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_dword to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_multi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usermode_action to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safe_usermode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_alignment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_alignment._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_alignment._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thumb2arm.subset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thumb2arm.subset.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_alignment_ldmstm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_alignment_ldmstm._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @noalign_setup(ptr nocapture noundef readnone %__unused) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__clear_cr(i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %call) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alignment_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 420, ptr noundef null, ptr noundef nonnull @alignment_proc_ops) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @cpu_architecture() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 7
  br i1 %cmp.i, label %cpu_is_v6_unaligned.exit, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

cpu_is_v6_unaligned.exit:                         ; preds = %if.end
  %0 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #12
  %and.i = and i32 %0, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %cpu_is_v6_unaligned.exit.if.end5_crit_edge, label %if.then2

cpu_is_v6_unaligned.exit.if.end5_crit_edge:       ; preds = %cpu_is_v6_unaligned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then2:                                         ; preds = %cpu_is_v6_unaligned.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @__clear_cr(i32 noundef 2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %call3) #8, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  %1 = load i32, ptr @ai_usermode, align 4
  %call.i.i = tail call i32 @cpu_architecture() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 7
  %and.i10 = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i = icmp eq i32 %and.i10, 0
  %or.i = or i32 %1, 2
  %2 = select i1 %cmp.i.i, i1 %tobool.not.i, i1 false
  %new_usermode.addr.0.i = select i1 %2, i32 %or.i, i32 %1
  store i32 %new_usermode.addr.0.i, ptr @ai_usermode, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %cpu_is_v6_unaligned.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %3 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #12, !srcloc !109
  %and = and i32 %3, -3
  store i32 %and, ptr @cr_no_alignment, align 4
  tail call void @hook_fault_code(i32 noundef 1, ptr noundef nonnull @do_alignment, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.1) #8
  %call7 = tail call i32 @cpu_architecture() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call7)
  %cmp = icmp slt i32 %call7, 9
  br i1 %cmp, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hook_fault_code(i32 noundef 3, ptr noundef nonnull @do_alignment, i32 noundef 7, i32 noundef 1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clear_cr(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hook_fault_code(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_alignment(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #3 align 64 {
entry:
  %instr.i271 = alloca i32, align 4
  %instr.i250 = alloca i16, align 2
  %instr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !110
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and5 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else26, label %if.then7

if.then7:                                         ; preds = %if.end
  %and8 = and i32 %3, -2
  %6 = inttoptr i32 %and8 to ptr
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %instr.i) #8
  %7 = ptrtoint ptr %instr.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %instr.i, align 2
  %and.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 790) #8
  %8 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !111
  %and.i.i = and i32 %10, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %6, i32 -1226833921) #8, !srcloc !114
  %asmresult.i = extractvalue { i32, i32 } %11, 0
  %asmresult1.i = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %conv.i = trunc i32 %asmresult1.i to i16
  %12 = ptrtoint ptr %instr.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %instr.i, align 2
  br label %alignment_get_thumb.exit

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %instr.i, ptr noundef %6, i32 noundef 2) #8
  br label %alignment_get_thumb.exit

alignment_get_thumb.exit:                         ; preds = %if.else.i, %if.then.i
  %fault.0.i = phi i32 [ %asmresult.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %13 = ptrtoint ptr %instr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %instr.i, align 2
  %15 = call i16 @llvm.bswap.i16(i16 %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %instr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fault.0.i)
  %tobool9.not = icmp eq i32 %fault.0.i, 0
  br i1 %tobool9.not, label %if.then10, label %alignment_get_thumb.exit.if.end149_crit_edge

alignment_get_thumb.exit.if.end149_crit_edge:     ; preds = %alignment_get_thumb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then10:                                        ; preds = %alignment_get_thumb.exit
  %call11 = call i32 @cpu_architecture() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call11)
  %cmp = icmp sgt i32 %call11, 8
  %conv = zext i16 %15 to i32
  br i1 %cmp, label %land.lhs.true, label %if.then10.if.else_crit_edge

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.then10
  %and12 = and i32 %conv, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 57344, i32 %and12)
  %cmp13 = icmp ne i32 %and12, 57344
  %and17 = and i32 %conv, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or.cond = or i1 %cmp13, %tobool18.not
  br i1 %or.cond, label %land.lhs.true.if.else_crit_edge, label %if.then19

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then19:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr i16, ptr %6, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %instr.i250) #8
  %16 = ptrtoint ptr %instr.i250 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %instr.i250, align 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %and.i252 = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252)
  %cmp.i253 = icmp eq i32 %and.i252, 0
  br i1 %cmp.i253, label %if.then.i261, label %if.else.i263

if.then.i261:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 790) #8
  %19 = call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i254 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i254 to ptr
  %cpu_domain.i.i.i255 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i255) #5, !srcloc !111
  %and.i.i256 = and i32 %21, -13
  %or.i.i257 = or i32 %and.i.i256, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i257) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %22 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #8, !srcloc !114
  %asmresult.i258 = extractvalue { i32, i32 } %22, 0
  %asmresult1.i259 = extractvalue { i32, i32 } %22, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %conv.i260 = trunc i32 %asmresult1.i259 to i16
  %23 = ptrtoint ptr %instr.i250 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i260, ptr %instr.i250, align 2
  br label %alignment_get_thumb.exit265

if.else.i263:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i262 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %instr.i250, ptr noundef %add.ptr, i32 noundef 2) #8
  br label %alignment_get_thumb.exit265

alignment_get_thumb.exit265:                      ; preds = %if.else.i263, %if.then.i261
  %fault.0.i264 = phi i32 [ %asmresult.i258, %if.then.i261 ], [ %call4.i262, %if.else.i263 ]
  %24 = ptrtoint ptr %instr.i250 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %instr.i250, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %instr.i250) #8
  %shl = shl nuw i32 %conv, 16
  %conv22 = zext i16 %26 to i32
  %or = or i32 %shl, %conv22
  br label %if.end28

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then10.if.else_crit_edge
  %and.i267 = lshr i32 %conv, 11
  %27 = and i32 %and.i267, 1
  %28 = zext i32 %and.i267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i267, label %if.else.if.end31_crit_edge [
    i32 12, label %if.else.sw.bb.i_crit_edge
    i32 13, label %if.else.sw.bb.i_crit_edge337
    i32 14, label %if.else.sw.bb.i_crit_edge338
    i32 15, label %if.else.sw.bb.i_crit_edge339
    i32 16, label %if.else.sw.bb22.i_crit_edge
    i32 17, label %if.else.sw.bb22.i_crit_edge340
    i32 10, label %if.else.sw.bb41.i_crit_edge
    i32 11, label %if.else.sw.bb41.i_crit_edge341
    i32 9, label %sw.bb57.i
    i32 18, label %if.else.sw.bb66.i_crit_edge
    i32 19, label %if.else.sw.bb66.i_crit_edge342
    i32 24, label %if.else.sw.bb77.i_crit_edge
    i32 25, label %if.else.sw.bb77.i_crit_edge343
    i32 22, label %if.else.sw.bb95.i_crit_edge
    i32 23, label %if.else.sw.bb95.i_crit_edge344
  ]

if.else.sw.bb95.i_crit_edge344:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb95.i

if.else.sw.bb95.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb95.i

if.else.sw.bb77.i_crit_edge343:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb77.i

if.else.sw.bb77.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb77.i

if.else.sw.bb66.i_crit_edge342:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i

if.else.sw.bb66.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i

if.else.sw.bb41.i_crit_edge341:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41.i

if.else.sw.bb41.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb41.i

if.else.sw.bb22.i_crit_edge340:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22.i

if.else.sw.bb22.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb22.i

if.else.sw.bb.i_crit_edge339:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge338:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge337:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.sw.bb.i_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

sw.bb.i:                                          ; preds = %if.else.sw.bb.i_crit_edge, %if.else.sw.bb.i_crit_edge337, %if.else.sw.bb.i_crit_edge338, %if.else.sw.bb.i_crit_edge339
  %and5.i = and i32 %conv, 4096
  %shl.i = shl nuw nsw i32 %and5.i, 10
  %shl6.i = shl nuw nsw i32 %27, 20
  %or.i = or i32 %shl6.i, %shl.i
  %and9.i = shl nuw nsw i32 %conv, 12
  %shl10.i = and i32 %and9.i, 28672
  %or7.i = or i32 %or.i, %shl10.i
  %and13.i = shl nuw nsw i32 %conv, 13
  %shl14.i = and i32 %and13.i, 458752
  %or11.i = or i32 %or7.i, %shl14.i
  %and17.i = and i32 %conv, 1984
  %29 = lshr exact i32 %and5.i, 11
  %sub.i = or i32 %29, 4
  %shr20.i = lshr i32 %and17.i, %sub.i
  %or15.i = or i32 %or11.i, %shr20.i
  %or21.i = or i32 %or15.i, -444596224
  br label %if.end31

sw.bb22.i:                                        ; preds = %if.else.sw.bb22.i_crit_edge, %if.else.sw.bb22.i_crit_edge340
  %shl23.i = shl nuw nsw i32 %27, 20
  %and26.i = shl nuw nsw i32 %conv, 12
  %shl27.i = and i32 %and26.i, 28672
  %or24.i = or i32 %shl23.i, %shl27.i
  %and30.i = shl nuw nsw i32 %conv, 13
  %shl31.i = and i32 %and30.i, 458752
  %or28.i = or i32 %or24.i, %shl31.i
  %and34.i = lshr i32 %conv, 5
  %30 = and i32 %and34.i, 14
  %or32.i = or i32 %or28.i, %30
  %and38.i = lshr i32 %conv, 1
  %31 = and i32 %and38.i, 768
  %or36.i = or i32 %or32.i, %31
  %or40.i = or i32 %or36.i, -507510608
  br label %if.end31

sw.bb41.i:                                        ; preds = %if.else.sw.bb41.i_crit_edge, %if.else.sw.bb41.i_crit_edge341
  %and43.i = lshr i32 %conv, 9
  %32 = and i32 %and43.i, 7
  %arrayidx.i268 = getelementptr [8 x i32], ptr @thumb2arm.subset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i268 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i268, align 4
  %and46.i = shl nuw nsw i32 %conv, 12
  %shl47.i = and i32 %and46.i, 28672
  %and50.i = shl nuw nsw i32 %conv, 13
  %shl51.i = and i32 %and50.i, 458752
  %and54.i = lshr i32 %conv, 6
  %35 = and i32 %and54.i, 7
  %or48.i = or i32 %shl51.i, %shl47.i
  %or52.i = or i32 %or48.i, %35
  %or56.i = or i32 %or52.i, %34
  br label %if.end31

sw.bb57.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and59.i = shl nuw nsw i32 %conv, 4
  %shl60.i = and i32 %and59.i, 28672
  %and63.i = shl nuw nsw i32 %conv, 2
  %shl64.i = and i32 %and63.i, 1020
  %or61.i = or i32 %shl60.i, %shl64.i
  %or65.i = or i32 %or61.i, -442564608
  br label %if.end31

sw.bb66.i:                                        ; preds = %if.else.sw.bb66.i_crit_edge, %if.else.sw.bb66.i_crit_edge342
  %shl67.i = shl nuw nsw i32 %27, 20
  %and70.i = shl nuw nsw i32 %conv, 4
  %shl71.i = and i32 %and70.i, 28672
  %or68.i = or i32 %shl67.i, %shl71.i
  %and74.i = shl nuw nsw i32 %conv, 2
  %shl75.i = and i32 %and74.i, 1020
  %or72.i = or i32 %or68.i, %shl75.i
  %or76.i = or i32 %or72.i, -443744256
  br label %if.end31

sw.bb77.i:                                        ; preds = %if.else.sw.bb77.i_crit_edge, %if.else.sw.bb77.i_crit_edge343
  %and79.i = lshr i32 %conv, 8
  %36 = and i32 %and79.i, 7
  %shl81.i = shl nuw nsw i32 %27, %36
  %and83.i = and i32 %conv, 255
  %and84.i = and i32 %shl81.i, %and83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  %or87.i = select i1 %tobool85.not.i, i32 -392167424, i32 -394264576
  %shl88.i = shl nuw nsw i32 %27, 20
  %or89.i = or i32 %or87.i, %shl88.i
  %shl90.i = shl nuw nsw i32 %36, 16
  %or91.i = or i32 %or89.i, %shl90.i
  %or94.i = or i32 %or91.i, %and83.i
  br label %if.end31

sw.bb95.i:                                        ; preds = %if.else.sw.bb95.i_crit_edge, %if.else.sw.bb95.i_crit_edge344
  %and97.i = and i32 %conv, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and97.i)
  %cmp.i269 = icmp eq i32 %and97.i, 1024
  br i1 %cmp.i269, label %if.then.i270, label %sw.bb95.i.if.end31_crit_edge

sw.bb95.i.if.end31_crit_edge:                     ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then.i270:                                     ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl99.i = shl nuw nsw i32 %27, 1
  %and101.i = lshr i32 %conv, 8
  %37 = and i32 %and101.i, 1
  %or103.i = or i32 %shl99.i, %37
  %arrayidx104.i = getelementptr [4 x i32], ptr @thumb2arm.subset.27, i32 0, i32 %or103.i
  %38 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx104.i, align 4
  %and106.i = and i32 %conv, 255
  %or107.i = or i32 %39, %and106.i
  br label %if.end31

if.else26:                                        ; preds = %if.end
  %40 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %instr.i271) #8
  %41 = ptrtoint ptr %instr.i271 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %instr.i271, align 4
  %and.i273 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i273)
  %cmp.i274 = icmp eq i32 %and.i273, 0
  br i1 %cmp.i274, label %if.then.i281, label %if.else.i283

if.then.i281:                                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 775) #8
  %42 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i.i275 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i275 to ptr
  %cpu_domain.i.i.i276 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i276) #5, !srcloc !111
  %and.i.i277 = and i32 %44, -13
  %or.i.i278 = or i32 %and.i.i277, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i278) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %45 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %40, i32 -1226833921) #8, !srcloc !115
  %asmresult.i279 = extractvalue { i32, i32 } %45, 0
  %asmresult1.i280 = extractvalue { i32, i32 } %45, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %46 = ptrtoint ptr %instr.i271 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %asmresult1.i280, ptr %instr.i271, align 4
  br label %alignment_get_arm.exit

if.else.i283:                                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i282 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %instr.i271, ptr noundef %40, i32 noundef 4) #8
  br label %alignment_get_arm.exit

alignment_get_arm.exit:                           ; preds = %if.else.i283, %if.then.i281
  %fault.0.i284 = phi i32 [ %asmresult.i279, %if.then.i281 ], [ %call4.i282, %if.else.i283 ]
  %47 = ptrtoint ptr %instr.i271 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %instr.i271, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %instr.i271) #8
  br label %if.end28

if.end28:                                         ; preds = %alignment_get_arm.exit, %alignment_get_thumb.exit265
  %instr.0 = phi i32 [ %49, %alignment_get_arm.exit ], [ %or, %alignment_get_thumb.exit265 ]
  %tinstr.0 = phi i16 [ 0, %alignment_get_arm.exit ], [ %15, %alignment_get_thumb.exit265 ]
  %thumb2_32b.1 = phi i32 [ 0, %alignment_get_arm.exit ], [ 1, %alignment_get_thumb.exit265 ]
  %fault.1 = phi i32 [ %fault.0.i284, %alignment_get_arm.exit ], [ %fault.0.i264, %alignment_get_thumb.exit265 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fault.1)
  %tobool29.not = icmp eq i32 %fault.1, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.end28.if.end149_crit_edge

if.end28.if.end149_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end31:                                         ; preds = %if.end28.if.end31_crit_edge, %if.then.i270, %sw.bb95.i.if.end31_crit_edge, %sw.bb77.i, %sw.bb66.i, %sw.bb57.i, %sw.bb41.i, %sw.bb22.i, %sw.bb.i, %if.else.if.end31_crit_edge
  %thumb2_32b.1320 = phi i32 [ %thumb2_32b.1, %if.end28.if.end31_crit_edge ], [ 0, %if.else.if.end31_crit_edge ], [ 0, %sw.bb.i ], [ 0, %sw.bb22.i ], [ 0, %sw.bb41.i ], [ 0, %sw.bb57.i ], [ 0, %sw.bb66.i ], [ 0, %sw.bb77.i ], [ 0, %sw.bb95.i.if.end31_crit_edge ], [ 0, %if.then.i270 ]
  %cmp159 = phi i1 [ false, %if.end28.if.end31_crit_edge ], [ true, %if.else.if.end31_crit_edge ], [ true, %sw.bb.i ], [ true, %sw.bb22.i ], [ true, %sw.bb41.i ], [ true, %sw.bb57.i ], [ true, %sw.bb66.i ], [ true, %sw.bb77.i ], [ true, %sw.bb95.i.if.end31_crit_edge ], [ true, %if.then.i270 ]
  %isize.1319 = phi i32 [ 4, %if.end28.if.end31_crit_edge ], [ 2, %if.else.if.end31_crit_edge ], [ 2, %sw.bb.i ], [ 2, %sw.bb22.i ], [ 2, %sw.bb41.i ], [ 2, %sw.bb57.i ], [ 2, %sw.bb66.i ], [ 2, %sw.bb77.i ], [ 2, %sw.bb95.i.if.end31_crit_edge ], [ 2, %if.then.i270 ]
  %tinstr.0318 = phi i16 [ %tinstr.0, %if.end28.if.end31_crit_edge ], [ %15, %if.else.if.end31_crit_edge ], [ %15, %sw.bb.i ], [ %15, %sw.bb22.i ], [ %15, %sw.bb41.i ], [ %15, %sw.bb57.i ], [ %15, %sw.bb66.i ], [ %15, %sw.bb77.i ], [ %15, %sw.bb95.i.if.end31_crit_edge ], [ %15, %if.then.i270 ]
  %instr.0314 = phi i32 [ %instr.0, %if.end28.if.end31_crit_edge ], [ -559038242, %if.else.if.end31_crit_edge ], [ %or21.i, %sw.bb.i ], [ %or40.i, %sw.bb22.i ], [ %or56.i, %sw.bb41.i ], [ %or65.i, %sw.bb57.i ], [ %or76.i, %sw.bb66.i ], [ %or94.i, %sw.bb77.i ], [ -559038242, %sw.bb95.i.if.end31_crit_edge ], [ %or107.i, %if.then.i270 ]
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %and34 = and i32 %51, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35 = icmp eq i32 %and34, 0
  br i1 %cmp35, label %user, label %if.end38

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %52 = load i32, ptr @ai_sys, align 4
  %add = add i32 %52, 1
  store i32 %add, ptr @ai_sys, align 4
  %53 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2, align 4
  %55 = inttoptr i32 %54 to ptr
  store ptr %55, ptr @ai_sys_last_pc, align 4
  br label %fixup

fixup:                                            ; preds = %if.end185.fixup_crit_edge, %if.end38
  %56 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2, align 4
  %add43 = add i32 %57, %isize.1319
  store i32 %add43, ptr %arrayidx2, align 4
  %and44 = lshr i32 %instr.0314, 25
  %58 = and i32 %and44, 7
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %58, label %fixup.do.end156_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb80
    i32 3, label %sw.bb87
    i32 4, label %sw.bb121
  ]

fixup.do.end156_crit_edge:                        ; preds = %fixup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

sw.bb:                                            ; preds = %fixup
  %and45 = and i32 %instr.0314, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else51, label %if.then47

if.then47:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %and48 = lshr i32 %instr.0314, 4
  %shr = and i32 %and48, 240
  %and49 = and i32 %instr.0314, 15
  %or50 = or i32 %shr, %and49
  br label %if.end55

if.else51:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %and53 = and i32 %instr.0314, 15
  %arrayidx54 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and53
  %60 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %if.then47
  %storemerge = phi i32 [ %61, %if.else51 ], [ %or50, %if.then47 ]
  %and56 = and i32 %instr.0314, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %and56)
  %cmp57 = icmp eq i32 %and56, 176
  br i1 %cmp57, label %if.end55.if.end130_crit_edge, label %lor.lhs.false

if.end55.if.end130_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

lor.lhs.false:                                    ; preds = %if.end55
  %and59 = and i32 %instr.0314, 1048816
  %62 = zext i32 %and59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and59, label %if.else72 [
    i32 1048816, label %lor.lhs.false.if.end130_crit_edge
    i32 208, label %lor.lhs.false.if.then71_crit_edge
    i32 240, label %lor.lhs.false.if.then71_crit_edge345
  ]

lor.lhs.false.if.then71_crit_edge345:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then71

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then71

lor.lhs.false.if.end130_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then71:                                        ; preds = %lor.lhs.false.if.then71_crit_edge, %lor.lhs.false.if.then71_crit_edge345
  br label %if.end130

if.else72:                                        ; preds = %lor.lhs.false
  %and73 = and i32 %instr.0314, 32509936
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777360, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 16777360
  br i1 %cmp74, label %do.end152, label %if.else72.do.end156_crit_edge

if.else72.do.end156_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

sw.bb80:                                          ; preds = %fixup
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %instr.0314)
  %cmp82 = icmp ugt i32 %instr.0314, -268435457
  br i1 %cmp82, label %sw.bb80.do.end156_crit_edge, label %if.end85

sw.bb80.do.end156_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

if.end85:                                         ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  %and86 = and i32 %instr.0314, 4095
  br label %if.end130

sw.bb87:                                          ; preds = %fixup
  %and89 = and i32 %instr.0314, 15
  %arrayidx90 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and89
  %63 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx90, align 4
  %and91 = and i32 %instr.0314, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %sw.bb87.if.end130_crit_edge, label %if.then93

sw.bb87.if.end130_crit_edge:                      ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then93:                                        ; preds = %sw.bb87
  %shr94 = lshr i32 %instr.0314, 7
  %and95 = and i32 %shr94, 31
  %and96 = lshr i32 %instr.0314, 5
  %65 = and i32 %and96, 3
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %65, label %if.then93.unreachabledefault [
    i32 0, label %sw.bb97
    i32 1, label %sw.bb99
    i32 2, label %sw.bb101
    i32 3, label %sw.bb103
  ]

sw.bb97:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %shl98 = shl i32 %64, %and95
  br label %if.end130

sw.bb99:                                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %shr100 = lshr i32 %64, %and95
  br label %if.end130

sw.bb101:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %shr102 = ashr i32 %64, %and95
  br label %if.end130

sw.bb103:                                         ; preds = %if.then93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %cmp104 = icmp eq i32 %and95, 0
  br i1 %cmp104, label %if.then106, label %if.else115

if.then106:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #10
  %shr107 = lshr i32 %64, 1
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %and110 = shl i32 %68, 2
  %69 = and i32 %and110, -2147483648
  %70 = or i32 %69, %shr107
  br label %if.end130

if.else115:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #10
  %or118 = call i32 @llvm.fshr.i32(i32 %64, i32 %64, i32 %and95)
  br label %if.end130

if.then93.unreachabledefault:                     ; preds = %if.then93
  unreachable

sw.bb121:                                         ; preds = %fixup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %thumb2_32b.1320)
  %tobool122.not = icmp eq i32 %thumb2_32b.1320, 0
  br i1 %tobool122.not, label %sw.bb121.if.end130_crit_edge, label %if.then123

sw.bb121.if.end130_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then123:                                       ; preds = %sw.bb121
  %shr.i = lshr i32 %instr.0314, 16
  %71 = trunc i32 %shr.i to i16
  %trunc.i = and i16 %71, -32
  %72 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %trunc.i, label %if.then123.do.end156_crit_edge [
    i16 -6016, label %if.then123.if.end130_crit_edge
    i16 -5984, label %if.then123.if.end130_crit_edge346
    i16 -5888, label %if.then123.if.end130_crit_edge347
    i16 -5856, label %if.then123.if.end130_crit_edge348
    i16 -1984, label %sw.bb5.i
    i16 -6048, label %if.then123.sw.bb17.i_crit_edge
    i16 -5792, label %if.then123.sw.bb17.i_crit_edge349
    i16 -5920, label %if.then123.sw.bb17.i_crit_edge350
    i16 -5664, label %if.then123.sw.bb17.i_crit_edge351
    i16 -5824, label %if.then123.sw.bb21.i_crit_edge
    i16 -5696, label %if.then123.sw.bb21.i_crit_edge352
  ]

if.then123.sw.bb21.i_crit_edge352:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i

if.then123.sw.bb21.i_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i

if.then123.sw.bb17.i_crit_edge351:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then123.sw.bb17.i_crit_edge350:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then123.sw.bb17.i_crit_edge349:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then123.sw.bb17.i_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17.i

if.then123.if.end130_crit_edge348:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then123.if.end130_crit_edge347:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then123.if.end130_crit_edge346:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then123.if.end130_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then123.do.end156_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

sw.bb5.i:                                         ; preds = %if.then123
  %73 = and i32 %instr.0314, 985599
  call void @__sanitizer_cov_trace_const_cmp4(i32 854276, i32 %73)
  %74 = icmp eq i32 %73, 854276
  br i1 %74, label %if.then.i289, label %sw.bb5.i.do.end156_crit_edge

sw.bb5.i.do.end156_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

if.then.i289:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #10
  %and13.i285 = lshr i32 %instr.0314, 20
  %and13.lobit.i = and i32 %and13.i285, 1
  %arrayidx.i286 = getelementptr [2 x i32], ptr @__const.do_alignment_t32_to_handler.subset, i32 0, i32 %and13.lobit.i
  %75 = ptrtoint ptr %arrayidx.i286 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i286, align 4
  %shr15.i = lshr i32 %instr.0314, 12
  %and16.i = and i32 %shr15.i, 15
  %shl.i287 = shl nuw nsw i32 1, %and16.i
  %or.i288 = or i32 %76, %shl.i287
  br label %if.end130

sw.bb17.i:                                        ; preds = %if.then123.sw.bb17.i_crit_edge, %if.then123.sw.bb17.i_crit_edge349, %if.then123.sw.bb17.i_crit_edge350, %if.then123.sw.bb17.i_crit_edge351
  %and19.i = shl i32 %instr.0314, 2
  %shl20.i = and i32 %and19.i, 1020
  br label %sw.bb21.i

sw.bb21.i:                                        ; preds = %sw.bb17.i, %if.then123.sw.bb21.i_crit_edge, %if.then123.sw.bb21.i_crit_edge352
  %offset.sroa.0.0 = phi i32 [ 0, %if.then123.sw.bb21.i_crit_edge ], [ 0, %if.then123.sw.bb21.i_crit_edge352 ], [ %shl20.i, %sw.bb17.i ]
  br label %if.end130

if.end130:                                        ; preds = %sw.bb21.i, %if.then.i289, %if.then123.if.end130_crit_edge, %if.then123.if.end130_crit_edge346, %if.then123.if.end130_crit_edge347, %if.then123.if.end130_crit_edge348, %sw.bb121.if.end130_crit_edge, %if.else115, %if.then106, %sw.bb101, %sw.bb99, %sw.bb97, %sw.bb87.if.end130_crit_edge, %if.end85, %if.then71, %lor.lhs.false.if.end130_crit_edge, %if.end55.if.end130_crit_edge
  %offset.sroa.0.2.ph = phi i32 [ 0, %sw.bb121.if.end130_crit_edge ], [ 0, %if.then123.if.end130_crit_edge ], [ 0, %if.then123.if.end130_crit_edge346 ], [ 0, %if.then123.if.end130_crit_edge347 ], [ 0, %if.then123.if.end130_crit_edge348 ], [ 0, %if.then.i289 ], [ %offset.sroa.0.0, %sw.bb21.i ], [ %storemerge, %lor.lhs.false.if.end130_crit_edge ], [ %storemerge, %if.then71 ], [ %storemerge, %if.end55.if.end130_crit_edge ], [ %and86, %if.end85 ], [ %shl98, %sw.bb97 ], [ %shr100, %sw.bb99 ], [ %shr102, %sw.bb101 ], [ %or118, %if.else115 ], [ %64, %sw.bb87.if.end130_crit_edge ], [ %70, %if.then106 ]
  %instr.2.ph = phi i32 [ %instr.0314, %sw.bb121.if.end130_crit_edge ], [ %instr.0314, %if.then123.if.end130_crit_edge ], [ %instr.0314, %if.then123.if.end130_crit_edge346 ], [ %instr.0314, %if.then123.if.end130_crit_edge347 ], [ %instr.0314, %if.then123.if.end130_crit_edge348 ], [ %or.i288, %if.then.i289 ], [ %instr.0314, %sw.bb21.i ], [ %instr.0314, %lor.lhs.false.if.end130_crit_edge ], [ %instr.0314, %if.then71 ], [ %instr.0314, %if.end55.if.end130_crit_edge ], [ %instr.0314, %if.end85 ], [ %instr.0314, %sw.bb97 ], [ %instr.0314, %sw.bb99 ], [ %instr.0314, %sw.bb101 ], [ %instr.0314, %if.else115 ], [ %instr.0314, %sw.bb87.if.end130_crit_edge ], [ %instr.0314, %if.then106 ]
  %handler.0.ph = phi ptr [ @do_alignment_ldmstm, %sw.bb121.if.end130_crit_edge ], [ @do_alignment_ldmstm, %if.then123.if.end130_crit_edge ], [ @do_alignment_ldmstm, %if.then123.if.end130_crit_edge346 ], [ @do_alignment_ldmstm, %if.then123.if.end130_crit_edge347 ], [ @do_alignment_ldmstm, %if.then123.if.end130_crit_edge348 ], [ @do_alignment_ldmstm, %if.then.i289 ], [ @do_alignment_ldrdstrd, %sw.bb21.i ], [ @do_alignment_ldrhstrh, %lor.lhs.false.if.end130_crit_edge ], [ @do_alignment_ldrdstrd, %if.then71 ], [ @do_alignment_ldrhstrh, %if.end55.if.end130_crit_edge ], [ @do_alignment_ldrstr, %if.end85 ], [ @do_alignment_ldrstr, %sw.bb97 ], [ @do_alignment_ldrstr, %sw.bb99 ], [ @do_alignment_ldrstr, %sw.bb101 ], [ @do_alignment_ldrstr, %if.else115 ], [ @do_alignment_ldrstr, %sw.bb87.if.end130_crit_edge ], [ @do_alignment_ldrstr, %if.then106 ]
  %call131 = call i32 %handler.0.ph(i32 noundef %addr, i32 noundef %instr.2.ph, ptr noundef %regs) #8, !callees !116
  %77 = zext i32 %call131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call131, label %if.end130.cleanup_crit_edge [
    i32 0, label %if.end130.if.then137_crit_edge
    i32 1, label %if.end130.if.then137_crit_edge353
    i32 2, label %if.then144
  ]

if.end130.if.then137_crit_edge353:                ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

if.end130.if.then137_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then137

if.end130.cleanup_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then137:                                       ; preds = %if.end130.if.then137_crit_edge, %if.end130.if.then137_crit_edge353
  %78 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx2, align 4
  %sub140 = sub i32 %79, %isize.1319
  store i32 %sub140, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %phi.cmp = icmp eq i32 %call131, 0
  br i1 %phi.cmp, label %if.then137.do.end156_crit_edge, label %if.then137.if.end149_crit_edge

if.then137.if.end149_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then137.do.end156_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end156

if.then144:                                       ; preds = %if.end130
  %80 = and i32 %instr.2.ph, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %80)
  %.not.i = icmp eq i32 %80, 16777216
  br i1 %.not.i, label %if.then144.cleanup_crit_edge, label %if.then9.i

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9.i:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %instr.2.ph, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %and.i291 = and i32 %instr.2.ph, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i291)
  %tobool.not.i = icmp eq i32 %and.i291, 0
  %sub.i292 = sub i32 0, %offset.sroa.0.2.ph
  %spec.select.i = select i1 %tobool.not.i, i32 %sub.i292, i32 %offset.sroa.0.2.ph
  %add.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 0
  %addr.addr.0.i = add i32 %add.i, %addr
  %shr.i293 = lshr i32 %instr.2.ph, 16
  %and10.i = and i32 %shr.i293, 15
  %arrayidx.i294 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and10.i
  %81 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %addr.addr.0.i, ptr %arrayidx.i294, align 4
  br label %cleanup

if.end149:                                        ; preds = %if.then137.if.end149_crit_edge, %if.end28.if.end149_crit_edge, %alignment_get_thumb.exit.if.end149_crit_edge
  call void @do_bad_area(i32 noundef %addr, i32 noundef %fsr, ptr noundef %regs) #8
  br label %cleanup

do.end152:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  br label %do.end156

do.end156:                                        ; preds = %do.end152, %if.then137.do.end156_crit_edge, %sw.bb5.i.do.end156_crit_edge, %if.then123.do.end156_crit_edge, %sw.bb80.do.end156_crit_edge, %if.else72.do.end156_crit_edge, %fixup.do.end156_crit_edge
  %instr.3 = phi i32 [ %instr.0314, %fixup.do.end156_crit_edge ], [ %instr.2.ph, %if.then137.do.end156_crit_edge ], [ %instr.0314, %sw.bb80.do.end156_crit_edge ], [ %instr.0314, %do.end152 ], [ %instr.0314, %if.else72.do.end156_crit_edge ], [ %instr.0314, %sw.bb5.i.do.end156_crit_edge ], [ %instr.0314, %if.then123.do.end156_crit_edge ]
  %shl158 = shl nuw nsw i32 %isize.1319, 1
  %conv161 = zext i16 %tinstr.0318 to i32
  %spec.select335 = select i1 %cmp159, i32 %conv161, i32 %instr.3
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %shl158, i32 noundef %spec.select335, i32 noundef %3) #13
  %82 = load i32, ptr @ai_skipped, align 4
  %add163 = add i32 %82, 1
  store i32 %add163, ptr @ai_skipped, align 4
  br label %cleanup

user:                                             ; preds = %if.end31
  %83 = load i32, ptr @ai_user, align 4
  %add164 = add i32 %83, 1
  store i32 %add164, ptr @ai_user, align 4
  %84 = load i32, ptr @ai_usermode, align 4
  %and165 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %user.if.end185_crit_edge, label %do.end170

user.if.end185_crit_edge:                         ; preds = %user
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

do.end170:                                        ; preds = %user
  call void @__sanitizer_cov_trace_pc() #10
  %85 = call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i295 = and i32 %85, -16384
  %86 = inttoptr i32 %and.i295 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 101
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 68
  %89 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %pid.i, align 8
  %shl176 = shl nuw nsw i32 %isize.1319, 1
  %conv180 = zext i16 %tinstr.0318 to i32
  %spec.select336 = select i1 %cmp159, i32 %conv180, i32 %instr.0314
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %comm, i32 noundef %90, i32 noundef %3, i32 noundef %shl176, i32 noundef %spec.select336, i32 noundef %addr, i32 noundef %fsr) #13
  br label %if.end185

if.end185:                                        ; preds = %do.end170, %user.if.end185_crit_edge
  %91 = load i32, ptr @ai_usermode, align 4
  %and186 = and i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end185.fixup_crit_edge

if.end185.fixup_crit_edge:                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup

if.end189:                                        ; preds = %if.end185
  %and190 = and i32 %91, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.else194, label %if.then192

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  %92 = inttoptr i32 %addr to ptr
  %call193 = call i32 @force_sig_fault(i32 noundef 7, i32 noundef 1, ptr noundef %92) #8
  br label %cleanup

if.else194:                                       ; preds = %if.end189
  call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #8, !srcloc !117
  %93 = call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i296 = and i32 %93, -16384
  %94 = inttoptr i32 %and.i296 to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 16384
  %and197 = and i32 %96, 271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.then199, label %if.else194.cleanup_crit_edge

if.else194.cleanup_crit_edge:                     ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then199:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #10
  %97 = load i32, ptr @cr_no_alignment, align 4
  call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\09@ set CR", "r,~{cc}"(i32 %97) #8, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %cleanup

cleanup:                                          ; preds = %if.then199, %if.else194.cleanup_crit_edge, %if.then192, %do.end156, %if.end149, %if.then9.i, %if.then144.cleanup_crit_edge, %if.end130.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end156 ], [ 0, %if.end149 ], [ 0, %if.end130.cleanup_crit_edge ], [ 0, %if.else194.cleanup_crit_edge ], [ 0, %if.then199 ], [ 0, %if.then192 ], [ 0, %if.then144.cleanup_crit_edge ], [ 0, %if.then9.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alignment_proc_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @alignment_proc_show, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alignment_proc_write(ptr nocapture noundef readnone %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.16, i32 noundef 157) #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !111
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buffer, i32 -1226833921) #8, !srcloc !118
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  %conv4 = and i32 %asmresult1, 255
  %4 = add nsw i32 %conv4, -48
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end
  %call.i.i = tail call i32 @cpu_architecture() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, 7
  br i1 %cmp.i.i, label %cpu_is_v6_unaligned.exit.i, label %if.then10.safe_usermode.exit_crit_edge

if.then10.safe_usermode.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %safe_usermode.exit

cpu_is_v6_unaligned.exit.i:                       ; preds = %if.then10
  %6 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 0\09@ get CR", "=r,~{cc}"() #12, !srcloc !109
  %and.i.i = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %and.i18 = and i32 %asmresult1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i = icmp eq i32 %and.i18, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool.i.i
  br i1 %or.cond.i, label %if.then.i, label %cpu_is_v6_unaligned.exit.i.safe_usermode.exit_crit_edge

cpu_is_v6_unaligned.exit.i.safe_usermode.exit_crit_edge: ; preds = %cpu_is_v6_unaligned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %safe_usermode.exit

if.then.i:                                        ; preds = %cpu_is_v6_unaligned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i19 = or i32 %4, 2
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %safe_usermode.exit

safe_usermode.exit:                               ; preds = %if.then.i, %cpu_is_v6_unaligned.exit.i.safe_usermode.exit_crit_edge, %if.then10.safe_usermode.exit_crit_edge
  %new_usermode.addr.0.i = phi i32 [ %or.i19, %if.then.i ], [ %4, %cpu_is_v6_unaligned.exit.i.safe_usermode.exit_crit_edge ], [ %4, %if.then10.safe_usermode.exit_crit_edge ]
  store i32 %new_usermode.addr.0.i, ptr @ai_usermode, align 4
  br label %cleanup

cleanup:                                          ; preds = %safe_usermode.exit, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count, %safe_usermode.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alignment_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ai_user, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %0) #8
  %1 = load i32, ptr @ai_sys, align 4
  %2 = load ptr, ptr @ai_sys_last_pc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef %2) #8
  %3 = load i32, ptr @ai_skipped, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %3) #8
  %4 = load i32, ptr @ai_half, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %4) #8
  %5 = load i32, ptr @ai_word, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  %call = tail call i32 @cpu_architecture() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp = icmp sgt i32 %call, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @ai_dword, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = load i32, ptr @ai_multi, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %7) #8
  %8 = load i32, ptr @ai_usermode, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @usermode_action, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, i32 noundef %8, ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_alignment_ldrhstrh(i32 noundef %addr, i32 noundef %instr, ptr nocapture noundef %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %instr, 12
  %and = and i32 %shr, 15
  %0 = load i32, ptr @ai_half, align 4
  %add = add i32 %0, 1
  store i32 %add, ptr @ai_half, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %and1 = and i32 %2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp = icmp eq i32 %and1, 0
  %and45 = and i32 %instr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %cmp, label %user, label %if.end

if.end:                                           ; preds = %entry
  br i1 %tobool46.not, label %do.body25, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %addr) #12, !srcloc !119
  %asmresult = extractvalue { i32, i32, i32 } %3, 0
  %asmresult5 = extractvalue { i32, i32, i32 } %3, 2
  %4 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult, i32 %asmresult5) #12, !srcloc !120
  %asmresult6 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult6)
  %tobool10.not = icmp eq i32 %asmresult6, 0
  br i1 %tobool10.not, label %cleanup22.thread, label %if.then3.cleanup110_crit_edge

if.then3.cleanup110_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

cleanup22.thread:                                 ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult4 = extractvalue { i32, i32, i32 } %3, 1
  %shl = shl i32 %asmresult4, 8
  %asmresult7 = extractvalue { i32, i32, i32 } %4, 1
  %or = or i32 %shl, %asmresult7
  %and15 = and i32 %instr, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %sext = shl i32 %or, 16
  %conv18 = ashr exact i32 %sext, 16
  %val.0 = select i1 %tobool16.not, i32 %or, i32 %conv18
  %arrayidx21 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val.0, ptr %arrayidx21, align 4
  br label %cleanup110

do.body25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx29, align 4
  %8 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #8\0A1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strb\09$1, [$2]\0A3:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, #1\0A\09b\093b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4b\0A\09.long\092b, 4b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %7, i32 %addr) #12, !srcloc !121
  %asmresult31 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult31)
  %tobool34.not.not = icmp eq i32 %asmresult31, 0
  %spec.select = select i1 %tobool34.not.not, i32 2, i32 1
  br label %cleanup110

user:                                             ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i161 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i161 to ptr
  %cpu_domain.i.i162 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i162) #5
  %and.i163 = and i32 %11, -13
  %or.i164 = or i32 %and.i163, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i164) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool46.not, label %if.else84, label %if.then47

if.then47:                                        ; preds = %user
  %12 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %addr) #12, !srcloc !122
  %asmresult53 = extractvalue { i32, i32, i32 } %12, 0
  %asmresult55 = extractvalue { i32, i32, i32 } %12, 2
  %13 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult53, i32 %asmresult55) #12, !srcloc !123
  %asmresult57 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult57)
  %tobool62.not = icmp eq i32 %asmresult57, 0
  br i1 %tobool62.not, label %cleanup80.thread, label %if.then47.cleanup110_crit_edge

if.then47.cleanup110_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

cleanup80.thread:                                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult54 = extractvalue { i32, i32, i32 } %12, 1
  %shl56 = shl i32 %asmresult54, 8
  %asmresult58 = extractvalue { i32, i32, i32 } %13, 1
  %or61 = or i32 %shl56, %asmresult58
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %and72 = and i32 %instr, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %sext147 = shl i32 %or61, 16
  %conv76 = ashr exact i32 %sext147, 16
  %val48.0 = select i1 %tobool73.not, i32 %or61, i32 %conv76
  %arrayidx79 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %14 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %val48.0, ptr %arrayidx79, align 4
  br label %cleanup110

if.else84:                                        ; preds = %user
  %arrayidx91 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %15 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx91, align 4
  %17 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #8\0A1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strbt\09$1, [$2]\0A3:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, #1\0A\09b\093b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4b\0A\09.long\092b, 4b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %16, i32 %addr) #12, !srcloc !124
  %asmresult93 = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult93)
  %tobool96.not = icmp eq i32 %asmresult93, 0
  br i1 %tobool96.not, label %cleanup106.thread, label %if.else84.cleanup110_crit_edge

if.else84.cleanup110_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup110

cleanup106.thread:                                ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  br label %cleanup110

cleanup110:                                       ; preds = %cleanup106.thread, %if.else84.cleanup110_crit_edge, %cleanup80.thread, %if.then47.cleanup110_crit_edge, %do.body25, %cleanup22.thread, %if.then3.cleanup110_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.body25 ], [ 2, %cleanup22.thread ], [ 2, %cleanup80.thread ], [ 2, %cleanup106.thread ], [ 1, %if.then3.cleanup110_crit_edge ], [ 1, %if.then47.cleanup110_crit_edge ], [ 1, %if.else84.cleanup110_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_alignment_ldrdstrd(i32 noundef %addr, i32 noundef %instr, ptr nocapture noundef %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %instr, 12
  %and = and i32 %shr, 15
  %and1 = and i32 %instr, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 -402653184, i32 %and1)
  %cmp = icmp eq i32 %and1, -402653184
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr2 = lshr i32 %instr, 8
  %and3 = and i32 %shr2, 15
  %and4 = and i32 %instr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool = icmp ne i32 %and4, 0
  br label %if.end13

if.else:                                          ; preds = %entry
  %0 = and i32 %instr, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp7.not = icmp ne i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and)
  %cmp8 = icmp eq i32 %and, 14
  %or.cond = or i1 %cmp7.not, %cmp8
  br i1 %or.cond, label %if.else.cleanup250_crit_edge, label %if.else10

if.else.cleanup250_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and11 = and i32 %instr, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 208
  %add = add nuw nsw i32 %and, 1
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then
  %load.0.in = phi i1 [ %tobool, %if.then ], [ %cmp12, %if.else10 ]
  %rd2.0 = phi i32 [ %and3, %if.then ], [ %add, %if.else10 ]
  %1 = load i32, ptr @ai_dword, align 4
  %add14 = add i32 %1, 1
  store i32 %add14, ptr @ai_dword, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and15 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %user, label %if.end19

if.end19:                                         ; preds = %if.end13
  br i1 %load.0.in, label %if.then21, label %do.body85

if.then21:                                        ; preds = %if.end19
  %4 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %addr) #12, !srcloc !125
  %asmresult = extractvalue { i32, i32, i32 } %4, 0
  %asmresult23 = extractvalue { i32, i32, i32 } %4, 2
  %5 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult, i32 %asmresult23) #12, !srcloc !126
  %asmresult24 = extractvalue { i32, i32, i32 } %5, 0
  %asmresult26 = extractvalue { i32, i32, i32 } %5, 2
  %6 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult24, i32 %asmresult26) #12, !srcloc !127
  %asmresult28 = extractvalue { i32, i32, i32 } %6, 0
  %asmresult30 = extractvalue { i32, i32, i32 } %6, 2
  %7 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult28, i32 %asmresult30) #12, !srcloc !128
  %asmresult33 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult33)
  %tobool38.not = icmp eq i32 %asmresult33, 0
  br i1 %tobool38.not, label %do.end, label %if.then21.cleanup250_crit_edge

if.then21.cleanup250_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

do.end:                                           ; preds = %if.then21
  %asmresult22 = extractvalue { i32, i32, i32 } %4, 1
  %shl = shl i32 %asmresult22, 24
  %asmresult25 = extractvalue { i32, i32, i32 } %5, 1
  %shl27 = shl i32 %asmresult25, 16
  %or = or i32 %shl27, %shl
  %asmresult29 = extractvalue { i32, i32, i32 } %6, 1
  %shl31 = shl i32 %asmresult29, 8
  %or32 = or i32 %or, %shl31
  %asmresult34 = extractvalue { i32, i32, i32 } %7, 1
  %or37 = or i32 %or32, %asmresult34
  %arrayidx44 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or37, ptr %arrayidx44, align 4
  %add49 = add i32 %addr, 4
  %9 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %add49) #12, !srcloc !129
  %asmresult50 = extractvalue { i32, i32, i32 } %9, 0
  %asmresult52 = extractvalue { i32, i32, i32 } %9, 2
  %10 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult50, i32 %asmresult52) #12, !srcloc !130
  %asmresult54 = extractvalue { i32, i32, i32 } %10, 0
  %asmresult56 = extractvalue { i32, i32, i32 } %10, 2
  %11 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult54, i32 %asmresult56) #12, !srcloc !131
  %asmresult59 = extractvalue { i32, i32, i32 } %11, 0
  %asmresult61 = extractvalue { i32, i32, i32 } %11, 2
  %12 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult59, i32 %asmresult61) #12, !srcloc !132
  %asmresult64 = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult64)
  %tobool69.not = icmp eq i32 %asmresult64, 0
  br i1 %tobool69.not, label %cleanup81.thread, label %do.end.cleanup250_crit_edge

do.end.cleanup250_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

cleanup81.thread:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult51 = extractvalue { i32, i32, i32 } %9, 1
  %shl53 = shl i32 %asmresult51, 24
  %asmresult55 = extractvalue { i32, i32, i32 } %10, 1
  %shl57 = shl i32 %asmresult55, 16
  %or58 = or i32 %shl57, %shl53
  %asmresult60 = extractvalue { i32, i32, i32 } %11, 1
  %shl62 = shl i32 %asmresult60, 8
  %or63 = or i32 %or58, %shl62
  %asmresult65 = extractvalue { i32, i32, i32 } %12, 1
  %or68 = or i32 %or63, %asmresult65
  %arrayidx80 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd2.0
  %13 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or68, ptr %arrayidx80, align 4
  br label %cleanup250

do.body85:                                        ; preds = %if.end19
  %arrayidx89 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %14 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx89, align 4
  %16 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %15, i32 %addr) #12, !srcloc !133
  %asmresult91 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult91)
  %tobool94.not = icmp eq i32 %asmresult91, 0
  br i1 %tobool94.not, label %do.body104, label %do.body85.fault_crit_edge

do.body85.fault_crit_edge:                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %fault

do.body104:                                       ; preds = %do.body85
  %arrayidx108 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd2.0
  %17 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx108, align 4
  %add110 = add i32 %addr, 4
  %19 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %18, i32 %add110) #12, !srcloc !134
  %asmresult111 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult111)
  %tobool114.not.not = icmp eq i32 %asmresult111, 0
  br i1 %tobool114.not.not, label %do.body104.cleanup250_crit_edge, label %do.body104.fault_crit_edge

do.body104.fault_crit_edge:                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %fault

do.body104.cleanup250_crit_edge:                  ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

user:                                             ; preds = %if.end13
  %20 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5
  %and.i = and i32 %22, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8
  br i1 %load.0.in, label %if.then126, label %if.else204

if.then126:                                       ; preds = %user
  %23 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %addr) #12, !srcloc !135
  %asmresult132 = extractvalue { i32, i32, i32 } %23, 0
  %asmresult133 = extractvalue { i32, i32, i32 } %23, 1
  %asmresult134 = extractvalue { i32, i32, i32 } %23, 2
  %shl135 = shl i32 %asmresult133, 24
  %24 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult132, i32 %asmresult134) #12, !srcloc !136
  %asmresult136 = extractvalue { i32, i32, i32 } %24, 0
  %asmresult137 = extractvalue { i32, i32, i32 } %24, 1
  %asmresult138 = extractvalue { i32, i32, i32 } %24, 2
  %shl139 = shl i32 %asmresult137, 16
  %or140 = or i32 %shl139, %shl135
  %25 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult136, i32 %asmresult138) #12, !srcloc !137
  %asmresult141 = extractvalue { i32, i32, i32 } %25, 0
  %asmresult142 = extractvalue { i32, i32, i32 } %25, 1
  %asmresult143 = extractvalue { i32, i32, i32 } %25, 2
  %shl144 = shl i32 %asmresult142, 8
  %or145 = or i32 %or140, %shl144
  %26 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult141, i32 %asmresult143) #12, !srcloc !138
  %asmresult146 = extractvalue { i32, i32, i32 } %26, 0
  %asmresult147 = extractvalue { i32, i32, i32 } %26, 1
  %or150 = or i32 %or145, %asmresult147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult146)
  %tobool151.not = icmp eq i32 %asmresult146, 0
  br i1 %tobool151.not, label %do.body161, label %if.then126.cleanup250_crit_edge

if.then126.cleanup250_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

do.body161:                                       ; preds = %if.then126
  %add165 = add i32 %addr, 4
  %27 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %add165) #12, !srcloc !139
  %asmresult166 = extractvalue { i32, i32, i32 } %27, 0
  %asmresult168 = extractvalue { i32, i32, i32 } %27, 2
  %28 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult166, i32 %asmresult168) #12, !srcloc !140
  %asmresult170 = extractvalue { i32, i32, i32 } %28, 0
  %asmresult172 = extractvalue { i32, i32, i32 } %28, 2
  %29 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult170, i32 %asmresult172) #12, !srcloc !141
  %asmresult175 = extractvalue { i32, i32, i32 } %29, 0
  %asmresult177 = extractvalue { i32, i32, i32 } %29, 2
  %30 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult175, i32 %asmresult177) #12, !srcloc !142
  %asmresult180 = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult180)
  %tobool185.not = icmp eq i32 %asmresult180, 0
  br i1 %tobool185.not, label %cleanup199.thread, label %do.body161.cleanup250_crit_edge

do.body161.cleanup250_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

cleanup199.thread:                                ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult167 = extractvalue { i32, i32, i32 } %27, 1
  %shl169 = shl i32 %asmresult167, 24
  %asmresult171 = extractvalue { i32, i32, i32 } %28, 1
  %shl173 = shl i32 %asmresult171, 16
  %or174 = or i32 %shl173, %shl169
  %asmresult176 = extractvalue { i32, i32, i32 } %29, 1
  %shl178 = shl i32 %asmresult176, 8
  %or179 = or i32 %or174, %shl178
  %asmresult181 = extractvalue { i32, i32, i32 } %30, 1
  %or184 = or i32 %or179, %asmresult181
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %arrayidx196 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %31 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or150, ptr %arrayidx196, align 4
  %arrayidx198 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd2.0
  %32 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or184, ptr %arrayidx198, align 4
  br label %cleanup250

if.else204:                                       ; preds = %user
  %arrayidx211 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %33 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx211, align 4
  %35 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %34, i32 %addr) #12, !srcloc !143
  %asmresult213 = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult213)
  %tobool216.not = icmp eq i32 %asmresult213, 0
  br i1 %tobool216.not, label %do.body226, label %if.else204.cleanup250_crit_edge

if.else204.cleanup250_crit_edge:                  ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

do.body226:                                       ; preds = %if.else204
  %arrayidx230 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd2.0
  %36 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx230, align 4
  %add232 = add i32 %addr, 4
  %38 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %37, i32 %add232) #12, !srcloc !144
  %asmresult233 = extractvalue { i32, i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult233)
  %tobool236.not = icmp eq i32 %asmresult233, 0
  br i1 %tobool236.not, label %cleanup246.thread, label %do.body226.cleanup250_crit_edge

do.body226.cleanup250_crit_edge:                  ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup250

cleanup246.thread:                                ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  br label %cleanup250

fault:                                            ; preds = %do.body104.fault_crit_edge, %do.body85.fault_crit_edge
  br label %cleanup250

cleanup250:                                       ; preds = %fault, %cleanup246.thread, %do.body226.cleanup250_crit_edge, %if.else204.cleanup250_crit_edge, %cleanup199.thread, %do.body161.cleanup250_crit_edge, %if.then126.cleanup250_crit_edge, %do.body104.cleanup250_crit_edge, %cleanup81.thread, %do.end.cleanup250_crit_edge, %if.then21.cleanup250_crit_edge, %if.else.cleanup250_crit_edge
  %retval.0 = phi i32 [ 1, %fault ], [ 2, %do.body104.cleanup250_crit_edge ], [ 0, %if.else.cleanup250_crit_edge ], [ 2, %cleanup81.thread ], [ 2, %cleanup199.thread ], [ 2, %cleanup246.thread ], [ 1, %do.end.cleanup250_crit_edge ], [ 1, %if.then21.cleanup250_crit_edge ], [ 1, %do.body161.cleanup250_crit_edge ], [ 1, %if.then126.cleanup250_crit_edge ], [ 1, %do.body226.cleanup250_crit_edge ], [ 1, %if.else204.cleanup250_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_alignment_ldrstr(i32 noundef %addr, i32 noundef %instr, ptr nocapture noundef %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %instr, 12
  %and = and i32 %shr, 15
  %0 = load i32, ptr @ai_word, align 4
  %add = add i32 %0, 1
  store i32 %add, ptr @ai_word, align 4
  %1 = and i32 %instr, 18874368
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %1)
  %.not = icmp eq i32 %1, 2097152
  br i1 %.not, label %entry.trans_crit_edge, label %lor.lhs.false

entry.trans_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %trans

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and4 = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %lor.lhs.false.trans_crit_edge, label %if.end

lor.lhs.false.trans_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %trans

if.end:                                           ; preds = %lor.lhs.false
  %and5 = and i32 %instr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.body34, label %if.then7

if.then7:                                         ; preds = %if.end
  %4 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %addr) #12, !srcloc !145
  %asmresult = extractvalue { i32, i32, i32 } %4, 0
  %asmresult9 = extractvalue { i32, i32, i32 } %4, 2
  %5 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult, i32 %asmresult9) #12, !srcloc !146
  %asmresult10 = extractvalue { i32, i32, i32 } %5, 0
  %asmresult12 = extractvalue { i32, i32, i32 } %5, 2
  %6 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult10, i32 %asmresult12) #12, !srcloc !147
  %asmresult14 = extractvalue { i32, i32, i32 } %6, 0
  %asmresult16 = extractvalue { i32, i32, i32 } %6, 2
  %7 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult14, i32 %asmresult16) #12, !srcloc !148
  %asmresult19 = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult19)
  %tobool24.not = icmp eq i32 %asmresult19, 0
  br i1 %tobool24.not, label %cleanup31.thread, label %if.then7.cleanup123_crit_edge

if.then7.cleanup123_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

cleanup31.thread:                                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult8 = extractvalue { i32, i32, i32 } %4, 1
  %shl = shl i32 %asmresult8, 24
  %asmresult11 = extractvalue { i32, i32, i32 } %5, 1
  %shl13 = shl i32 %asmresult11, 16
  %or = or i32 %shl13, %shl
  %asmresult15 = extractvalue { i32, i32, i32 } %6, 1
  %shl17 = shl i32 %asmresult15, 8
  %or18 = or i32 %or, %shl17
  %asmresult20 = extractvalue { i32, i32, i32 } %7, 1
  %or23 = or i32 %or18, %asmresult20
  %arrayidx30 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or23, ptr %arrayidx30, align 4
  br label %cleanup123

do.body34:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx38 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %9 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx38, align 4
  %11 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %10, i32 %addr) #12, !srcloc !149
  %asmresult40 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult40)
  %tobool43.not.not = icmp eq i32 %asmresult40, 0
  %spec.select = select i1 %tobool43.not.not, i32 2, i32 1
  br label %cleanup123

trans:                                            ; preds = %lor.lhs.false.trans_crit_edge, %entry.trans_crit_edge
  %and54 = and i32 %instr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %12 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i187 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i187 to ptr
  %cpu_domain.i.i188 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i188) #5
  %and.i189 = and i32 %14, -13
  %or.i190 = or i32 %and.i189, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i190) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool55.not, label %if.else97, label %if.then56

if.then56:                                        ; preds = %trans
  %15 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %addr) #12, !srcloc !150
  %asmresult62 = extractvalue { i32, i32, i32 } %15, 0
  %asmresult64 = extractvalue { i32, i32, i32 } %15, 2
  %16 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult62, i32 %asmresult64) #12, !srcloc !151
  %asmresult66 = extractvalue { i32, i32, i32 } %16, 0
  %asmresult68 = extractvalue { i32, i32, i32 } %16, 2
  %17 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult66, i32 %asmresult68) #12, !srcloc !152
  %asmresult71 = extractvalue { i32, i32, i32 } %17, 0
  %asmresult73 = extractvalue { i32, i32, i32 } %17, 2
  %18 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult71, i32 %asmresult73) #12, !srcloc !153
  %asmresult76 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult76)
  %tobool81.not = icmp eq i32 %asmresult76, 0
  br i1 %tobool81.not, label %cleanup93.thread, label %if.then56.cleanup123_crit_edge

if.then56.cleanup123_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

cleanup93.thread:                                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult63 = extractvalue { i32, i32, i32 } %15, 1
  %shl65 = shl i32 %asmresult63, 24
  %asmresult67 = extractvalue { i32, i32, i32 } %16, 1
  %shl69 = shl i32 %asmresult67, 16
  %or70 = or i32 %shl69, %shl65
  %asmresult72 = extractvalue { i32, i32, i32 } %17, 1
  %shl74 = shl i32 %asmresult72, 8
  %or75 = or i32 %or70, %shl74
  %asmresult77 = extractvalue { i32, i32, i32 } %18, 1
  %or80 = or i32 %or75, %asmresult77
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %arrayidx92 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %19 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or80, ptr %arrayidx92, align 4
  br label %cleanup123

if.else97:                                        ; preds = %trans
  %arrayidx104 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %20 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx104, align 4
  %22 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %21, i32 %addr) #12, !srcloc !154
  %asmresult106 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult106)
  %tobool109.not = icmp eq i32 %asmresult106, 0
  br i1 %tobool109.not, label %cleanup119.thread, label %if.else97.cleanup123_crit_edge

if.else97.cleanup123_crit_edge:                   ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

cleanup119.thread:                                ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  br label %cleanup123

cleanup123:                                       ; preds = %cleanup119.thread, %if.else97.cleanup123_crit_edge, %cleanup93.thread, %if.then56.cleanup123_crit_edge, %do.body34, %cleanup31.thread, %if.then7.cleanup123_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.body34 ], [ 2, %cleanup31.thread ], [ 2, %cleanup93.thread ], [ 2, %cleanup119.thread ], [ 1, %if.then7.cleanup123_crit_edge ], [ 1, %if.then56.cleanup123_crit_edge ], [ 1, %if.else97.cleanup123_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_alignment_ldmstm(i32 noundef %addr, i32 noundef %instr, ptr noundef %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %instr, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end346

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 4
  store i32 %add, ptr %arrayidx, align 4
  %2 = load i32, ptr @ai_multi, align 4
  %add1 = add i32 %2, 1
  store i32 %add1, ptr @ai_multi, align 4
  %and2 = and i32 %instr, 65535
  %call.i = tail call i32 @__sw_hweight16(i32 noundef %and2) #8
  %.pre = lshr i32 %instr, 1
  %mul = shl i32 %call.i, 2
  %shr150 = lshr i32 %instr, 16
  %and151 = and i32 %shr150, 15
  %arrayidx153 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and151
  %3 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx153, align 4
  %and154 = and i32 %instr, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  %sub = sub i32 0, %mul
  %spec.select = select i1 %tobool155.not, i32 %sub, i32 %mul
  %add158 = add i32 %spec.select, %4
  %eaddr.0 = select i1 %tobool155.not, i32 %add158, i32 %4
  %xor = xor i32 %.pre, %instr
  %and164 = and i32 %xor, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %cmp = icmp eq i32 %and164, 0
  %add167 = add i32 %eaddr.0, 4
  %eaddr.1 = select i1 %cmp, i32 %add167, i32 %eaddr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %eaddr.1, i32 %addr)
  %cmp169.not = icmp eq i32 %eaddr.1, %addr
  br i1 %cmp169.not, label %if.end.if.end175_crit_edge, label %do.end

if.end.if.end175_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %6, i32 noundef %instr, i32 noundef %addr, i32 noundef %eaddr.1) #13
  tail call void @show_regs(ptr noundef %regs) #8
  br label %if.end175

if.end175:                                        ; preds = %do.end, %if.end.if.end175_crit_edge
  %arrayidx177 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %7 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx177, align 4
  %and178 = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and178)
  %cmp179 = icmp eq i32 %and178, 0
  br i1 %cmp179, label %if.then181, label %for.cond249.preheader

for.cond249.preheader:                            ; preds = %if.end175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool250.not471 = icmp eq i32 %and2, 0
  br i1 %tobool250.not471, label %for.cond249.preheader.if.end324_crit_edge, label %for.body251.lr.ph

for.cond249.preheader.if.end324_crit_edge:        ; preds = %for.cond249.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end324

for.body251.lr.ph:                                ; preds = %for.cond249.preheader
  %and255 = and i32 %instr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  br label %for.body251

if.then181:                                       ; preds = %if.end175
  %9 = tail call i32 @llvm.read_register.i32(metadata !97) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !111
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool184.not478 = icmp eq i32 %and2, 0
  br i1 %tobool184.not478, label %if.then181.cleanup244.thread_crit_edge, label %for.body.lr.ph

if.then181.cleanup244.thread_crit_edge:           ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244.thread

for.body.lr.ph:                                   ; preds = %if.then181
  %and188 = and i32 %instr, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rd.0482 = phi i32 [ 0, %for.body.lr.ph ], [ %add243, %for.inc.for.body_crit_edge ]
  %regbits.0481 = phi i32 [ %and2, %for.body.lr.ph ], [ %shr242, %for.inc.for.body_crit_edge ]
  %eaddr.2479 = phi i32 [ %eaddr.1, %for.body.lr.ph ], [ %eaddr.3, %for.inc.for.body_crit_edge ]
  %and185 = and i32 %regbits.0481, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %for.body.for.inc_crit_edge, label %if.then187

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then187:                                       ; preds = %for.body
  br i1 %tobool189.not, label %do.body220, label %if.then190

if.then190:                                       ; preds = %if.then187
  %12 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %eaddr.2479) #12, !srcloc !155
  %asmresult = extractvalue { i32, i32, i32 } %12, 0
  %asmresult193 = extractvalue { i32, i32, i32 } %12, 2
  %13 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult, i32 %asmresult193) #12, !srcloc !156
  %asmresult194 = extractvalue { i32, i32, i32 } %13, 0
  %asmresult196 = extractvalue { i32, i32, i32 } %13, 2
  %14 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult194, i32 %asmresult196) #12, !srcloc !157
  %asmresult198 = extractvalue { i32, i32, i32 } %14, 0
  %asmresult200 = extractvalue { i32, i32, i32 } %14, 2
  %15 = tail call { i32, i32, i32 } asm "1:\09ldrbt\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult198, i32 %asmresult200) #12, !srcloc !158
  %asmresult203 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult203)
  %tobool208.not = icmp eq i32 %asmresult203, 0
  br i1 %tobool208.not, label %cleanup217.thread, label %if.then190.fault_crit_edge

if.then190.fault_crit_edge:                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #10
  br label %fault

cleanup217.thread:                                ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult192 = extractvalue { i32, i32, i32 } %12, 1
  %shl = shl i32 %asmresult192, 24
  %asmresult195 = extractvalue { i32, i32, i32 } %13, 1
  %shl197 = shl i32 %asmresult195, 16
  %or = or i32 %shl197, %shl
  %asmresult199 = extractvalue { i32, i32, i32 } %14, 1
  %shl201 = shl i32 %asmresult199, 8
  %or202 = or i32 %or, %shl201
  %asmresult204 = extractvalue { i32, i32, i32 } %15, 1
  %or207 = or i32 %or202, %asmresult204
  %arrayidx216 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd.0482
  %16 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or207, ptr %arrayidx216, align 4
  br label %if.end239

do.body220:                                       ; preds = %if.then187
  %arrayidx224 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd.0482
  %17 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx224, align 4
  %19 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strbt\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strbt\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %18, i32 %eaddr.2479) #12, !srcloc !159
  %asmresult226 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult226)
  %tobool229.not = icmp eq i32 %asmresult226, 0
  br i1 %tobool229.not, label %do.body220.if.end239_crit_edge, label %do.body220.fault_crit_edge

do.body220.fault_crit_edge:                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #10
  br label %fault

do.body220.if.end239_crit_edge:                   ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

if.end239:                                        ; preds = %do.body220.if.end239_crit_edge, %cleanup217.thread
  %add240 = add i32 %eaddr.2479, 4
  br label %for.inc

for.inc:                                          ; preds = %if.end239, %for.body.for.inc_crit_edge
  %eaddr.3 = phi i32 [ %add240, %if.end239 ], [ %eaddr.2479, %for.body.for.inc_crit_edge ]
  %shr242 = lshr i32 %regbits.0481, 1
  %add243 = add nuw nsw i32 %rd.0482, 1
  %tobool184.not = icmp ult i32 %regbits.0481, 2
  br i1 %tobool184.not, label %for.inc.cleanup244.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup244.thread_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup244.thread

cleanup244.thread:                                ; preds = %for.inc.cleanup244.thread_crit_edge, %if.then181.cleanup244.thread_crit_edge
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  br label %if.end324

for.body251:                                      ; preds = %for.inc320.for.body251_crit_edge, %for.body251.lr.ph
  %rd.1475 = phi i32 [ 0, %for.body251.lr.ph ], [ %add322, %for.inc320.for.body251_crit_edge ]
  %regbits.1474 = phi i32 [ %and2, %for.body251.lr.ph ], [ %shr321, %for.inc320.for.body251_crit_edge ]
  %eaddr.4472 = phi i32 [ %eaddr.1, %for.body251.lr.ph ], [ %eaddr.5, %for.inc320.for.body251_crit_edge ]
  %and252 = and i32 %regbits.1474, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and252)
  %tobool253.not = icmp eq i32 %and252, 0
  br i1 %tobool253.not, label %for.body251.for.inc320_crit_edge, label %if.then254

for.body251.for.inc320_crit_edge:                 ; preds = %for.body251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc320

if.then254:                                       ; preds = %for.body251
  br i1 %tobool256.not, label %do.body298, label %if.then257

if.then257:                                       ; preds = %if.then254
  %20 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 0, i32 %eaddr.4472) #12, !srcloc !160
  %asmresult263 = extractvalue { i32, i32, i32 } %20, 0
  %asmresult265 = extractvalue { i32, i32, i32 } %20, 2
  %21 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult263, i32 %asmresult265) #12, !srcloc !161
  %asmresult267 = extractvalue { i32, i32, i32 } %21, 0
  %asmresult269 = extractvalue { i32, i32, i32 } %21, 2
  %22 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult267, i32 %asmresult269) #12, !srcloc !162
  %asmresult272 = extractvalue { i32, i32, i32 } %22, 0
  %asmresult274 = extractvalue { i32, i32, i32 } %22, 2
  %23 = tail call { i32, i32, i32 } asm "1:\09ldrb\09$1, [$2], #1\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, #1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection\0A", "=r,=&r,=r,0,2"(i32 %asmresult272, i32 %asmresult274) #12, !srcloc !163
  %asmresult277 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult277)
  %tobool282.not = icmp eq i32 %asmresult277, 0
  br i1 %tobool282.not, label %cleanup294.thread, label %if.then257.fault_crit_edge

if.then257.fault_crit_edge:                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #10
  br label %fault

cleanup294.thread:                                ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult264 = extractvalue { i32, i32, i32 } %20, 1
  %shl266 = shl i32 %asmresult264, 24
  %asmresult268 = extractvalue { i32, i32, i32 } %21, 1
  %shl270 = shl i32 %asmresult268, 16
  %or271 = or i32 %shl270, %shl266
  %asmresult273 = extractvalue { i32, i32, i32 } %22, 1
  %shl275 = shl i32 %asmresult273, 8
  %or276 = or i32 %or271, %shl275
  %asmresult278 = extractvalue { i32, i32, i32 } %23, 1
  %or281 = or i32 %or276, %asmresult278
  %arrayidx293 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd.1475
  %24 = ptrtoint ptr %arrayidx293 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or281, ptr %arrayidx293, align 4
  br label %if.end317

do.body298:                                       ; preds = %if.then254
  %arrayidx302 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %rd.1475
  %25 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx302, align 4
  %27 = tail call { i32, i32, i32 } asm "mov\09$1, $1, ror #24\0A1:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A2:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A3:\09strb\09$1, [$2], #1\0A\09mov\09$1, $1, ror #24\0A4:\09strb\09$1, [$2]\0A5:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A6:\09mov\09$0, #1\0A\09b\095b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 6b\0A\09.long\092b, 6b\0A\09.long\093b, 6b\0A\09.long\094b, 6b\0A\09.popsection\0A", "=r,=&r,=&r,0,1,2"(i32 0, i32 %26, i32 %eaddr.4472) #12, !srcloc !164
  %asmresult304 = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult304)
  %tobool307.not = icmp eq i32 %asmresult304, 0
  br i1 %tobool307.not, label %do.body298.if.end317_crit_edge, label %do.body298.fault_crit_edge

do.body298.fault_crit_edge:                       ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #10
  br label %fault

do.body298.if.end317_crit_edge:                   ; preds = %do.body298
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end317

if.end317:                                        ; preds = %do.body298.if.end317_crit_edge, %cleanup294.thread
  %add318 = add i32 %eaddr.4472, 4
  br label %for.inc320

for.inc320:                                       ; preds = %if.end317, %for.body251.for.inc320_crit_edge
  %eaddr.5 = phi i32 [ %add318, %if.end317 ], [ %eaddr.4472, %for.body251.for.inc320_crit_edge ]
  %shr321 = lshr i32 %regbits.1474, 1
  %add322 = add nuw nsw i32 %rd.1475, 1
  %tobool250.not = icmp ult i32 %regbits.1474, 2
  br i1 %tobool250.not, label %for.inc320.if.end324_crit_edge, label %for.inc320.for.body251_crit_edge

for.inc320.for.body251_crit_edge:                 ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body251

for.inc320.if.end324_crit_edge:                   ; preds = %for.inc320
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end324

if.end324:                                        ; preds = %for.inc320.if.end324_crit_edge, %cleanup244.thread, %for.cond249.preheader.if.end324_crit_edge
  %and325 = and i32 %instr, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.end324.if.end330_crit_edge, label %if.then327

if.end324.if.end330_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end330

if.then327:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add158, ptr %arrayidx153, align 4
  br label %if.end330

if.end330:                                        ; preds = %if.then327, %if.end324.if.end330_crit_edge
  %29 = and i32 %instr, 1081344
  call void @__sanitizer_cov_trace_const_cmp4(i32 1081344, i32 %29)
  %.not = icmp eq i32 %29, 1081344
  br i1 %.not, label %if.end330.cleanup349_crit_edge, label %if.then336

if.end330.cleanup349_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup349

if.then336:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %sub339 = add i32 %31, -4
  store i32 %sub339, ptr %arrayidx, align 4
  br label %cleanup349

fault:                                            ; preds = %do.body298.fault_crit_edge, %if.then257.fault_crit_edge, %do.body220.fault_crit_edge, %if.then190.fault_crit_edge
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %sub343 = add i32 %33, -4
  store i32 %sub343, ptr %arrayidx, align 4
  br label %cleanup349

do.end346:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call348 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  br label %cleanup349

cleanup349:                                       ; preds = %do.end346, %fault, %if.then336, %if.end330.cleanup349_crit_edge
  %retval.0 = phi i32 [ 0, %do.end346 ], [ 1, %fault ], [ 3, %if.end330.cleanup349_crit_edge ], [ 3, %if.then336 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_bad_area(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @force_sig_fault(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshr.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96}
!llvm.named.register.sp = !{!97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__param_alignment, !1, !"__param_alignment", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/alignment.c", i32 87, i32 1}
!2 = !{ptr @__setup_noalign_setup, !3, !"__setup_noalign_setup", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/alignment.c", i32 1005, i32 1}
!4 = !{ptr @__initcall__kmod_alignment__200_1049_alignment_init5, !5, !"__initcall__kmod_alignment__200_1049_alignment_init5", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/alignment.c", i32 1049, i32 1}
!6 = !{ptr @ai_usermode, !7, !"ai_usermode", i1 false, i1 false}
!7 = !{!"../arch/arm/mm/alignment.c", i32 84, i32 12}
!8 = !{ptr @__param_str_alignment, !1, !"__param_str_alignment", i1 false, i1 false}
!9 = !{ptr @__setup_str_noalign_setup, !3, !"__setup_str_noalign_setup", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mm/alignment.c", i32 1018, i32 20}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mm/alignment.c", i32 1032, i32 4}
!14 = !{ptr @alignment_proc_ops, !15, !"alignment_proc_ops", i1 false, i1 false}
!15 = !{!"../arch/arm/mm/alignment.c", i32 165, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/alignment.c", i32 132, i32 16}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mm/alignment.c", i32 133, i32 16}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mm/alignment.c", i32 134, i32 16}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mm/alignment.c", i32 135, i32 16}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mm/alignment.c", i32 136, i32 16}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mm/alignment.c", i32 138, i32 17}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mm/alignment.c", i32 139, i32 16}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mm/alignment.c", i32 140, i32 16}
!32 = !{ptr @ai_user, !33, !"ai_user", i1 false, i1 false}
!33 = !{!"../arch/arm/mm/alignment.c", i32 76, i32 22}
!34 = !{ptr @ai_sys, !35, !"ai_sys", i1 false, i1 false}
!35 = !{!"../arch/arm/mm/alignment.c", i32 77, i32 22}
!36 = !{ptr @ai_sys_last_pc, !37, !"ai_sys_last_pc", i1 false, i1 false}
!37 = !{!"../arch/arm/mm/alignment.c", i32 78, i32 14}
!38 = !{ptr @ai_skipped, !39, !"ai_skipped", i1 false, i1 false}
!39 = !{!"../arch/arm/mm/alignment.c", i32 79, i32 22}
!40 = !{ptr @ai_half, !41, !"ai_half", i1 false, i1 false}
!41 = !{!"../arch/arm/mm/alignment.c", i32 80, i32 22}
!42 = !{ptr @ai_word, !43, !"ai_word", i1 false, i1 false}
!43 = !{!"../arch/arm/mm/alignment.c", i32 81, i32 22}
!44 = !{ptr @ai_dword, !45, !"ai_dword", i1 false, i1 false}
!45 = !{!"../arch/arm/mm/alignment.c", i32 82, i32 22}
!46 = !{ptr @ai_multi, !47, !"ai_multi", i1 false, i1 false}
!47 = !{!"../arch/arm/mm/alignment.c", i32 83, i32 22}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mm/alignment.c", i32 122, i32 2}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mm/alignment.c", i32 123, i32 2}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mm/alignment.c", i32 124, i32 2}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mm/alignment.c", i32 125, i32 2}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mm/alignment.c", i32 126, i32 2}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mm/alignment.c", i32 127, i32 2}
!60 = !{ptr @usermode_action, !61, !"usermode_action", i1 false, i1 false}
!61 = !{!"../arch/arm/mm/alignment.c", i32 121, i32 20}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mm/alignment.c", i32 157, i32 7}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mm/alignment.c", i32 114, i32 4}
!66 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @safe_usermode._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @safe_usermode._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cr_no_alignment, !70, !"cr_no_alignment", i1 false, i1 false}
!70 = !{!"../arch/arm/mm/alignment.c", i32 85, i32 22}
!71 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mm/alignment.c", i32 950, i32 2}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @do_alignment._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @do_alignment._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mm/alignment.c", i32 956, i32 2}
!78 = !{ptr @do_alignment._entry.21, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @do_alignment._entry_ptr.23, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/mm/alignment.c", i32 967, i32 3}
!82 = !{ptr @do_alignment._entry.24, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @do_alignment._entry_ptr.26, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @thumb2arm.subset, !85, !"subset", i1 false, i1 false}
!85 = !{!"../arch/arm/mm/alignment.c", i32 638, i32 21}
!86 = !{ptr @thumb2arm.subset.27, !87, !"subset", i1 false, i1 false}
!87 = !{!"../arch/arm/mm/alignment.c", i32 688, i32 21}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mm/alignment.c", i32 541, i32 3}
!90 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @do_alignment_ldmstm._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @do_alignment_ldmstm._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../arch/arm/mm/alignment.c", i32 587, i32 2}
!95 = !{ptr @do_alignment_ldmstm._entry.30, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @do_alignment_ldmstm._entry_ptr.32, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{!"sp"}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i64 5138987}
!108 = !{i64 2152625160}
!109 = !{i64 5138849}
!110 = !{i64 663152}
!111 = !{i64 4719035}
!112 = !{i64 4719232}
!113 = !{i64 2152204465}
!114 = !{i64 2153005317, i64 2153005597, i64 2153005931, i64 2153006265}
!115 = !{i64 2152995400, i64 2152995680, i64 2152996014, i64 2152996348}
!116 = !{ptr @do_alignment_ldmstm, ptr @do_alignment_ldrdstrd, ptr @do_alignment_ldrhstrh, ptr @do_alignment_ldrstr}
!117 = !{i64 663342}
!118 = !{i64 2152937576, i64 2152937856, i64 2152938190, i64 2152938524}
!119 = !{i64 2152947325, i64 2152946987, i64 2152947002, i64 2152947042, i64 2152947062, i64 2152947085, i64 2152947101, i64 2152947124, i64 2152947162, i64 2152947182, i64 2152947205}
!120 = !{i64 2152947818, i64 2152947480, i64 2152947495, i64 2152947535, i64 2152947555, i64 2152947578, i64 2152947594, i64 2152947617, i64 2152947655, i64 2152947675, i64 2152947698}
!121 = !{i64 2152948616, i64 2152948642, i64 2152948112, i64 2152948146, i64 2152948174, i64 2152948190, i64 2152948231, i64 2152948252, i64 2152948276, i64 2152948293, i64 2152948317, i64 2152948356, i64 2152948377, i64 2152948401, i64 2152948425}
!122 = !{i64 2152949503, i64 2152949163, i64 2152949178, i64 2152949218, i64 2152949238, i64 2152949261, i64 2152949277, i64 2152949300, i64 2152949338, i64 2152949358, i64 2152949381}
!123 = !{i64 2152949999, i64 2152949659, i64 2152949674, i64 2152949714, i64 2152949734, i64 2152949757, i64 2152949773, i64 2152949796, i64 2152949834, i64 2152949854, i64 2152949877}
!124 = !{i64 2152950802, i64 2152950828, i64 2152950295, i64 2152950329, i64 2152950357, i64 2152950373, i64 2152950414, i64 2152950435, i64 2152950459, i64 2152950476, i64 2152950500, i64 2152950539, i64 2152950560, i64 2152950584, i64 2152950608}
!125 = !{i64 2152951939, i64 2152951601, i64 2152951616, i64 2152951656, i64 2152951676, i64 2152951699, i64 2152951715, i64 2152951738, i64 2152951776, i64 2152951796, i64 2152951819}
!126 = !{i64 2152952432, i64 2152952094, i64 2152952109, i64 2152952149, i64 2152952169, i64 2152952192, i64 2152952208, i64 2152952231, i64 2152952269, i64 2152952289, i64 2152952312}
!127 = !{i64 2152952925, i64 2152952587, i64 2152952602, i64 2152952642, i64 2152952662, i64 2152952685, i64 2152952701, i64 2152952724, i64 2152952762, i64 2152952782, i64 2152952805}
!128 = !{i64 2152953418, i64 2152953080, i64 2152953095, i64 2152953135, i64 2152953155, i64 2152953178, i64 2152953194, i64 2152953217, i64 2152953255, i64 2152953275, i64 2152953298}
!129 = !{i64 2152954433, i64 2152954095, i64 2152954110, i64 2152954150, i64 2152954170, i64 2152954193, i64 2152954209, i64 2152954232, i64 2152954270, i64 2152954290, i64 2152954313}
!130 = !{i64 2152954926, i64 2152954588, i64 2152954603, i64 2152954643, i64 2152954663, i64 2152954686, i64 2152954702, i64 2152954725, i64 2152954763, i64 2152954783, i64 2152954806}
!131 = !{i64 2152955419, i64 2152955081, i64 2152955096, i64 2152955136, i64 2152955156, i64 2152955179, i64 2152955195, i64 2152955218, i64 2152955256, i64 2152955276, i64 2152955299}
!132 = !{i64 2152955912, i64 2152955574, i64 2152955589, i64 2152955629, i64 2152955649, i64 2152955672, i64 2152955688, i64 2152955711, i64 2152955749, i64 2152955769, i64 2152955792}
!133 = !{i64 2152957072, i64 2152957099, i64 2152956208, i64 2152957142, i64 2152956350, i64 2152957185, i64 2152956492, i64 2152956526, i64 2152956554, i64 2152956570, i64 2152956611, i64 2152956632, i64 2152956656, i64 2152956673, i64 2152956697, i64 2152956736, i64 2152956757, i64 2152956781, i64 2152956805, i64 2152956829, i64 2152956853}
!134 = !{i64 2152958362, i64 2152958389, i64 2152957493, i64 2152958432, i64 2152957635, i64 2152958475, i64 2152957777, i64 2152957811, i64 2152957839, i64 2152957855, i64 2152957896, i64 2152957917, i64 2152957941, i64 2152957958, i64 2152957982, i64 2152958021, i64 2152958042, i64 2152958066, i64 2152958090, i64 2152958114, i64 2152958138}
!135 = !{i64 2152959498, i64 2152959158, i64 2152959173, i64 2152959213, i64 2152959233, i64 2152959256, i64 2152959272, i64 2152959295, i64 2152959333, i64 2152959353, i64 2152959376}
!136 = !{i64 2152959994, i64 2152959654, i64 2152959669, i64 2152959709, i64 2152959729, i64 2152959752, i64 2152959768, i64 2152959791, i64 2152959829, i64 2152959849, i64 2152959872}
!137 = !{i64 2152960490, i64 2152960150, i64 2152960165, i64 2152960205, i64 2152960225, i64 2152960248, i64 2152960264, i64 2152960287, i64 2152960325, i64 2152960345, i64 2152960368}
!138 = !{i64 2152960986, i64 2152960646, i64 2152960661, i64 2152960701, i64 2152960721, i64 2152960744, i64 2152960760, i64 2152960783, i64 2152960821, i64 2152960841, i64 2152960864}
!139 = !{i64 2152962014, i64 2152961674, i64 2152961689, i64 2152961729, i64 2152961749, i64 2152961772, i64 2152961788, i64 2152961811, i64 2152961849, i64 2152961869, i64 2152961892}
!140 = !{i64 2152962510, i64 2152962170, i64 2152962185, i64 2152962225, i64 2152962245, i64 2152962268, i64 2152962284, i64 2152962307, i64 2152962345, i64 2152962365, i64 2152962388}
!141 = !{i64 2152963006, i64 2152962666, i64 2152962681, i64 2152962721, i64 2152962741, i64 2152962764, i64 2152962780, i64 2152962803, i64 2152962841, i64 2152962861, i64 2152962884}
!142 = !{i64 2152963502, i64 2152963162, i64 2152963177, i64 2152963217, i64 2152963237, i64 2152963260, i64 2152963276, i64 2152963299, i64 2152963337, i64 2152963357, i64 2152963380}
!143 = !{i64 2152964671, i64 2152964698, i64 2152963800, i64 2152964742, i64 2152963942, i64 2152964786, i64 2152964084, i64 2152964118, i64 2152964146, i64 2152964162, i64 2152964203, i64 2152964224, i64 2152964248, i64 2152964265, i64 2152964289, i64 2152964328, i64 2152964349, i64 2152964373, i64 2152964397, i64 2152964421, i64 2152964445}
!144 = !{i64 2152965972, i64 2152965999, i64 2152965096, i64 2152966043, i64 2152965238, i64 2152966087, i64 2152965380, i64 2152965414, i64 2152965442, i64 2152965458, i64 2152965499, i64 2152965520, i64 2152965544, i64 2152965561, i64 2152965585, i64 2152965624, i64 2152965645, i64 2152965669, i64 2152965693, i64 2152965717, i64 2152965741}
!145 = !{i64 2152967244, i64 2152966906, i64 2152966921, i64 2152966961, i64 2152966981, i64 2152967004, i64 2152967020, i64 2152967043, i64 2152967081, i64 2152967101, i64 2152967124}
!146 = !{i64 2152967737, i64 2152967399, i64 2152967414, i64 2152967454, i64 2152967474, i64 2152967497, i64 2152967513, i64 2152967536, i64 2152967574, i64 2152967594, i64 2152967617}
!147 = !{i64 2152968230, i64 2152967892, i64 2152967907, i64 2152967947, i64 2152967967, i64 2152967990, i64 2152968006, i64 2152968029, i64 2152968067, i64 2152968087, i64 2152968110}
!148 = !{i64 2152968723, i64 2152968385, i64 2152968400, i64 2152968440, i64 2152968460, i64 2152968483, i64 2152968499, i64 2152968522, i64 2152968560, i64 2152968580, i64 2152968603}
!149 = !{i64 2152969883, i64 2152969910, i64 2152969019, i64 2152969953, i64 2152969161, i64 2152969996, i64 2152969303, i64 2152969337, i64 2152969365, i64 2152969381, i64 2152969422, i64 2152969443, i64 2152969467, i64 2152969484, i64 2152969508, i64 2152969547, i64 2152969568, i64 2152969592, i64 2152969616, i64 2152969640, i64 2152969664}
!150 = !{i64 2152971041, i64 2152970701, i64 2152970716, i64 2152970756, i64 2152970776, i64 2152970799, i64 2152970815, i64 2152970838, i64 2152970876, i64 2152970896, i64 2152970919}
!151 = !{i64 2152971537, i64 2152971197, i64 2152971212, i64 2152971252, i64 2152971272, i64 2152971295, i64 2152971311, i64 2152971334, i64 2152971372, i64 2152971392, i64 2152971415}
!152 = !{i64 2152972033, i64 2152971693, i64 2152971708, i64 2152971748, i64 2152971768, i64 2152971791, i64 2152971807, i64 2152971830, i64 2152971868, i64 2152971888, i64 2152971911}
!153 = !{i64 2152972529, i64 2152972189, i64 2152972204, i64 2152972244, i64 2152972264, i64 2152972287, i64 2152972303, i64 2152972326, i64 2152972364, i64 2152972384, i64 2152972407}
!154 = !{i64 2152973698, i64 2152973725, i64 2152972827, i64 2152973769, i64 2152972969, i64 2152973813, i64 2152973111, i64 2152973145, i64 2152973173, i64 2152973189, i64 2152973230, i64 2152973251, i64 2152973275, i64 2152973292, i64 2152973316, i64 2152973355, i64 2152973376, i64 2152973400, i64 2152973424, i64 2152973448, i64 2152973472}
!155 = !{i64 2152978252, i64 2152977912, i64 2152977927, i64 2152977967, i64 2152977987, i64 2152978010, i64 2152978026, i64 2152978049, i64 2152978087, i64 2152978107, i64 2152978130}
!156 = !{i64 2152978748, i64 2152978408, i64 2152978423, i64 2152978463, i64 2152978483, i64 2152978506, i64 2152978522, i64 2152978545, i64 2152978583, i64 2152978603, i64 2152978626}
!157 = !{i64 2152979244, i64 2152978904, i64 2152978919, i64 2152978959, i64 2152978979, i64 2152979002, i64 2152979018, i64 2152979041, i64 2152979079, i64 2152979099, i64 2152979122}
!158 = !{i64 2152979740, i64 2152979400, i64 2152979415, i64 2152979455, i64 2152979475, i64 2152979498, i64 2152979514, i64 2152979537, i64 2152979575, i64 2152979595, i64 2152979618}
!159 = !{i64 2152980911, i64 2152980938, i64 2152980039, i64 2152980982, i64 2152980181, i64 2152981026, i64 2152980323, i64 2152980357, i64 2152980385, i64 2152980401, i64 2152980442, i64 2152980463, i64 2152980487, i64 2152980504, i64 2152980528, i64 2152980567, i64 2152980588, i64 2152980612, i64 2152980636, i64 2152980660, i64 2152980684}
!160 = !{i64 2152982084, i64 2152981746, i64 2152981761, i64 2152981801, i64 2152981821, i64 2152981844, i64 2152981860, i64 2152981883, i64 2152981921, i64 2152981941, i64 2152981964}
!161 = !{i64 2152982577, i64 2152982239, i64 2152982254, i64 2152982294, i64 2152982314, i64 2152982337, i64 2152982353, i64 2152982376, i64 2152982414, i64 2152982434, i64 2152982457}
!162 = !{i64 2152983070, i64 2152982732, i64 2152982747, i64 2152982787, i64 2152982807, i64 2152982830, i64 2152982846, i64 2152982869, i64 2152982907, i64 2152982927, i64 2152982950}
!163 = !{i64 2152983563, i64 2152983225, i64 2152983240, i64 2152983280, i64 2152983300, i64 2152983323, i64 2152983339, i64 2152983362, i64 2152983400, i64 2152983420, i64 2152983443}
!164 = !{i64 2152984725, i64 2152984752, i64 2152983860, i64 2152984795, i64 2152984002, i64 2152984838, i64 2152984144, i64 2152984178, i64 2152984206, i64 2152984222, i64 2152984263, i64 2152984284, i64 2152984308, i64 2152984325, i64 2152984349, i64 2152984388, i64 2152984409, i64 2152984433, i64 2152984457, i64 2152984481, i64 2152984505}
