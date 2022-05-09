; ModuleID = '/llk/IR_all_yes/arch/arm/vfp/vfpmodule.c_pt.bc'
source_filename = "../arch/arm/vfp/vfpmodule.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kernel_neon_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_neon_begin\09\09\09\09"
module asm "\09.long\09__crc_kernel_neon_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_neon_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_neon_begin\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_neon_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kernel_neon_end\22, \22a\22\09"
module asm "\09.weak\09__crc_kernel_neon_end\09\09\09\09"
module asm "\09.long\09__crc_kernel_neon_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_neon_end:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_neon_end\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_neon_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.37, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.37 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_vfp = type { [32 x i64], i32 }
%struct.user_vfp_exc = type { i32, i32, i32 }

@vfp_vector = dso_local global { ptr, [28 x i8] } { ptr @vfp_null_entry, [28 x i8] zeroinitializer }, align 32
@VFP_bounce.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfpmodule\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VFP_bounce\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/vfp/vfpmodule.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VFP: bounce: trigger %08x fpexc %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@VFP_arch = internal unnamed_addr global i32 0, section ".init.data", align 4
@vfp_disable.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfp_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: should be called prior to vfp_init\0A\00", [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_vfpmodule__204_709_vfp_kmode_exception_hook_init4 = internal global ptr @vfp_kmode_exception_hook_init, section ".initcall4.init", align 4
@vfp_current_hw_state = dso_local global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__kstrtab_kernel_neon_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_neon_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_neon_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_neon_begin to i32), ptr @__kstrtab_kernel_neon_begin, ptr @__kstrtabns_kernel_neon_begin }, section "___ksymtab+kernel_neon_begin", align 4
@__kstrtab_kernel_neon_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_neon_end = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_neon_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_neon_end to i32), ptr @__kstrtab_kernel_neon_end, ptr @__kstrtabns_kernel_neon_end }, section "___ksymtab+kernel_neon_end", align 4
@__initcall__kmod_vfpmodule__205_870_vfp_init1 = internal global ptr @vfp_init, section ".initcall1.init", align 4
@vfp_raise_exceptions.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vfp_raise_exceptions\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VFP: raising exceptions %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unhandled bounce\00", [47 x i8] zeroinitializer }, align 32
@vfp_panic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013VFP: Error: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfp_panic\00", [22 x i8] zeroinitializer }, align 32
@vfp_panic._entry_ptr = internal global ptr @vfp_panic._entry, section ".printk_index", align 4
@vfp_panic._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013VFP: EXC 0x%08x SCR 0x%08x INST 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@vfp_panic._entry_ptr.13 = internal global ptr @vfp_panic._entry.11, section ".printk_index", align 4
@vfp_panic._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013VFP: s%2u: 0x%08x s%2u: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@vfp_panic._entry_ptr.16 = internal global ptr @vfp_panic._entry.14, section ".printk_index", align 4
@vfp_emulate_instruction.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vfp_emulate_instruction\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VFP: emulate: INST=0x%08x SCR=0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@vfp_kmode_exception_hook = internal global { [5 x %struct.undef_hook], [52 x i8] } { [5 x %struct.undef_hook] [%struct.undef_hook { %struct.list_head zeroinitializer, i32 -33554432, i32 -234881024, i32 63, i32 19, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 -15728640, i32 -201326592, i32 63, i32 19, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 -285212672, i32 -285212672, i32 63, i32 51, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 -15728640, i32 -117440512, i32 63, i32 51, ptr @vfp_kmode_exception }, %struct.undef_hook { %struct.list_head zeroinitializer, i32 201330176, i32 201329152, i32 31, i32 19, ptr @vfp_kmode_exception }], [52 x i8] zeroinitializer }, align 32
@vfp_kmode_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\012BUG: unsupported FP instruction in kernel mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vfp_kmode_exception\00", [44 x i8] zeroinitializer }, align 32
@vfp_kmode_exception._entry_ptr = internal global ptr @vfp_kmode_exception._entry, section ".printk_index", align 4
@vfp_kmode_exception._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\012BUG: FP instruction issued in kernel mode with FP unit disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@vfp_kmode_exception._entry_ptr.23 = internal global ptr @vfp_kmode_exception._entry.21, section ".printk_index", align 4
@vfp_kmode_exception._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\012FPEXC == 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@vfp_kmode_exception._entry_ptr.26 = internal global ptr @vfp_kmode_exception._entry.24, section ".printk_index", align 4
@vfp_detect_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 201330176, i32 201329152, i32 31, i32 19, ptr @vfp_detect }, section ".init.data", align 4
@vfp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016VFP support v0.3: \00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfp_init\00", [23 x i8] zeroinitializer }, align 32
@vfp_init._entry_ptr = internal global ptr @vfp_init._entry, section ".printk_index", align 4
@vfp_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cnot present\0A\00", [17 x i8] zeroinitializer }, align 32
@vfp_init._entry_ptr.31 = internal global ptr @vfp_init._entry.29, section ".printk_index", align 4
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@vfp_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01cno double precision support\0A\00", [33 x i8] zeroinitializer }, align 32
@vfp_init._entry_ptr.34 = internal global ptr @vfp_init._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm/vfp:starting\00", [47 x i8] zeroinitializer }, align 32
@vfp_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @vfp_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vfp_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\01cimplementor %02x architecture %d part %02x variant %x rev %x\0A\00", [32 x i8] zeroinitializer }, align 32
@vfp_init._entry_ptr.38 = internal global ptr @vfp_init._entry.36, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@thread_notify_head = external dso_local global %struct.atomic_notifier_head, align 4
@vfp_cpu_pm_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @vfp_cpu_pm_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vfp_pm_suspend.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vfp_pm_suspend\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: saving vfp state\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"vfp_vector\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 38, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 327, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 442, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"vfp_current_hw_state\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 56, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 247, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 250, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 232, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 233, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 236, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 291, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"vfp_kmode_exception_hook\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 669, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 662, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 664, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 665, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 797, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 799, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 838, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 846, i32 7 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"vfp_notifier_block\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 206, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 860, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"vfp_cpu_pm_notifier_block\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 499, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [28 x i8] c"../arch/arm/vfp/vfpmodule.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 456, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__initcall__kmod_vfpmodule__204_709_vfp_kmode_exception_hook_init4, ptr @__initcall__kmod_vfpmodule__205_870_vfp_init1, ptr @__ksymtab_kernel_neon_begin, ptr @__ksymtab_kernel_neon_end, ptr @vfp_init._entry, ptr @vfp_init._entry.29, ptr @vfp_init._entry.32, ptr @vfp_init._entry.36, ptr @vfp_init._entry_ptr, ptr @vfp_init._entry_ptr.31, ptr @vfp_init._entry_ptr.34, ptr @vfp_init._entry_ptr.38, ptr @vfp_kmode_exception._entry, ptr @vfp_kmode_exception._entry.21, ptr @vfp_kmode_exception._entry.24, ptr @vfp_kmode_exception._entry_ptr, ptr @vfp_kmode_exception._entry_ptr.23, ptr @vfp_kmode_exception._entry_ptr.26, ptr @vfp_panic._entry, ptr @vfp_panic._entry.11, ptr @vfp_panic._entry.14, ptr @vfp_panic._entry_ptr, ptr @vfp_panic._entry_ptr.13, ptr @vfp_panic._entry_ptr.16, ptr @vfp_vector, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vfp_current_hw_state, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @vfp_kmode_exception_hook, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @vfp_notifier_block, ptr @.str.37, ptr @vfp_cpu_pm_notifier_block, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_vector to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_current_hw_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_panic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_panic._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_panic._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_kmode_exception_hook to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_kmode_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_kmode_exception._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_kmode_exception._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfp_cpu_pm_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_null_entry() #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @VFP_bounce(i32 noundef %trigger, i32 noundef %fpexc, ptr nocapture noundef %regs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @VFP_bounce.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@VFP_bounce, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @VFP_bounce.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.3, i32 noundef %trigger, i32 noundef %fpexc) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fpexc, 1207959392
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and) #8, !srcloc !102
  %0 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSID", "=r,~{cc}"() #11, !srcloc !103
  %1 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSCR", "=r,~{cc}"() #11, !srcloc !104
  %and6 = and i32 %0, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %and6)
  %cmp = icmp ne i32 %and6, 65536
  %and7 = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.end10, label %do.end.emulate_crit_edge

do.end.emulate_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %emulate

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fpexc)
  %tobool12.not = icmp sgt i32 %fpexc, -1
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %2 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPINST", "=r,~{cc}"() #11, !srcloc !105
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %4, -4
  store i32 %sub, ptr %arrayidx, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end10
  %and16 = and i32 %fpexc, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vfp_raise_exceptions(i32 noundef -257, i32 noundef %trigger, i32 noundef %1, ptr noundef %regs)
  br label %do.body41

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %if.then13
  %trigger.addr.0 = phi i32 [ %2, %if.then13 ], [ %trigger, %if.else.if.end20_crit_edge ]
  %and21 = and i32 %fpexc, -2013265920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %and24 = and i32 %1, -458753
  %add = shl i32 %fpexc, 8
  %and25 = add i32 %add, 65536
  %shl = and i32 %and25, 458752
  %or = or i32 %and24, %shl
  %fpscr.0 = select i1 %tobool22.not, i32 %1, i32 %or
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_emulate_instruction.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@VFP_bounce, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !101

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_emulate_instruction.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.18, i32 noundef %trigger.addr.0, i32 noundef %fpscr.0) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end20
  %5 = and i32 %trigger.addr.0, 251658256
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %5)
  %6 = icmp eq i32 %5, 234881024
  br i1 %6, label %if.then6.i, label %do.end.i.if.then29_crit_edge

do.end.i.if.then29_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then6.i:                                       ; preds = %do.end.i
  %and7.i = and i32 %trigger.addr.0, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %and7.i)
  %cmp8.i = icmp eq i32 %and7.i, 2560
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i = tail call i32 @vfp_single_cpdo(i32 noundef %trigger.addr.0, i32 noundef %fpscr.0) #8
  br label %vfp_emulate_instruction.exit

if.else.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = tail call i32 @vfp_double_cpdo(i32 noundef %trigger.addr.0, i32 noundef %fpscr.0) #8
  br label %vfp_emulate_instruction.exit

vfp_emulate_instruction.exit:                     ; preds = %if.else.i, %if.then9.i
  %exceptions.0.i = phi i32 [ %call10.i, %if.then9.i ], [ %call11.i, %if.else.i ]
  %and17.i = and i32 %exceptions.0.i, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool28.not = icmp eq i32 %and17.i, 0
  br i1 %tobool28.not, label %vfp_emulate_instruction.exit.if.end30_crit_edge, label %vfp_emulate_instruction.exit.if.then29_crit_edge

vfp_emulate_instruction.exit.if.then29_crit_edge: ; preds = %vfp_emulate_instruction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

vfp_emulate_instruction.exit.if.end30_crit_edge:  ; preds = %vfp_emulate_instruction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then29:                                        ; preds = %vfp_emulate_instruction.exit.if.then29_crit_edge, %do.end.i.if.then29_crit_edge
  %and17.i85 = phi i32 [ %and17.i, %vfp_emulate_instruction.exit.if.then29_crit_edge ], [ -257, %do.end.i.if.then29_crit_edge ]
  tail call fastcc void @vfp_raise_exceptions(i32 noundef %and17.i85, i32 noundef %trigger.addr.0, i32 noundef %1, ptr noundef %regs)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %vfp_emulate_instruction.exit.if.end30_crit_edge
  %and31 = and i32 %fpexc, -1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, -1879048192
  br i1 %cmp32.not, label %if.end34, label %if.end30.do.body41_crit_edge

if.end30.do.body41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !106
  %7 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPINST2", "=r,~{cc}"() #11, !srcloc !107
  br label %emulate

emulate:                                          ; preds = %if.end34, %do.end.emulate_crit_edge
  %trigger.addr.1 = phi i32 [ %7, %if.end34 ], [ %trigger, %do.end.emulate_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_emulate_instruction.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@VFP_bounce, %if.then.i69)) #8
          to label %do.end.i70 [label %if.then.i69], !srcloc !101

if.then.i69:                                      ; preds = %emulate
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_emulate_instruction.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.18, i32 noundef %trigger.addr.1, i32 noundef %1) #8
  br label %do.end.i70

do.end.i70:                                       ; preds = %if.then.i69, %emulate
  %8 = and i32 %trigger.addr.1, 251658256
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %8)
  %9 = icmp eq i32 %8, 234881024
  br i1 %9, label %if.then6.i73, label %do.end.i70.if.then39_crit_edge

do.end.i70.if.then39_crit_edge:                   ; preds = %do.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.then6.i73:                                     ; preds = %do.end.i70
  %and7.i71 = and i32 %trigger.addr.1, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %and7.i71)
  %cmp8.i72 = icmp eq i32 %and7.i71, 2560
  br i1 %cmp8.i72, label %if.then9.i75, label %if.else.i77

if.then9.i75:                                     ; preds = %if.then6.i73
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i74 = tail call i32 @vfp_single_cpdo(i32 noundef %trigger.addr.1, i32 noundef %1) #8
  br label %vfp_emulate_instruction.exit80

if.else.i77:                                      ; preds = %if.then6.i73
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i76 = tail call i32 @vfp_double_cpdo(i32 noundef %trigger.addr.1, i32 noundef %1) #8
  br label %vfp_emulate_instruction.exit80

vfp_emulate_instruction.exit80:                   ; preds = %if.else.i77, %if.then9.i75
  %exceptions.0.i78 = phi i32 [ %call10.i74, %if.then9.i75 ], [ %call11.i76, %if.else.i77 ]
  %and17.i79 = and i32 %exceptions.0.i78, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i79)
  %tobool38.not = icmp eq i32 %and17.i79, 0
  br i1 %tobool38.not, label %vfp_emulate_instruction.exit80.do.body41_crit_edge, label %vfp_emulate_instruction.exit80.if.then39_crit_edge

vfp_emulate_instruction.exit80.if.then39_crit_edge: ; preds = %vfp_emulate_instruction.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

vfp_emulate_instruction.exit80.do.body41_crit_edge: ; preds = %vfp_emulate_instruction.exit80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body41

if.then39:                                        ; preds = %vfp_emulate_instruction.exit80.if.then39_crit_edge, %do.end.i70.if.then39_crit_edge
  %and17.i7989 = phi i32 [ %and17.i79, %vfp_emulate_instruction.exit80.if.then39_crit_edge ], [ -257, %do.end.i70.if.then39_crit_edge ]
  tail call fastcc void @vfp_raise_exceptions(i32 noundef %and17.i7989, i32 noundef %trigger.addr.1, i32 noundef %1, ptr noundef %regs)
  br label %do.body41

do.body41:                                        ; preds = %if.then39, %vfp_emulate_instruction.exit80.do.body41_crit_edge, %if.end30.do.body41_crit_edge, %if.then18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !108
  %10 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %13, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfp_raise_exceptions(i32 noundef %exceptions, i32 noundef %inst, i32 noundef %fpscr, ptr nocapture noundef readonly %regs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_raise_exceptions.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_raise_exceptions, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_raise_exceptions.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.7, i32 noundef %exceptions) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %exceptions)
  %cmp = icmp eq i32 %exceptions, -257
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #12
  %0 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !109
  %1 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSCR", "=r,~{cc}"() #11, !srcloc !110
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %0, i32 noundef %1, i32 noundef %inst) #12
  %call13.i = tail call i32 @vfp_get_float(i32 noundef 0) #8
  %call15.i = tail call i32 @vfp_get_float(i32 noundef 1) #8
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 0, i32 noundef %call13.i, i32 noundef 1, i32 noundef %call15.i) #12
  %call13.1.i = tail call i32 @vfp_get_float(i32 noundef 2) #8
  %call15.1.i = tail call i32 @vfp_get_float(i32 noundef 3) #8
  %call16.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef %call13.1.i, i32 noundef 3, i32 noundef %call15.1.i) #12
  %call13.2.i = tail call i32 @vfp_get_float(i32 noundef 4) #8
  %call15.2.i = tail call i32 @vfp_get_float(i32 noundef 5) #8
  %call16.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef %call13.2.i, i32 noundef 5, i32 noundef %call15.2.i) #12
  %call13.3.i = tail call i32 @vfp_get_float(i32 noundef 6) #8
  %call15.3.i = tail call i32 @vfp_get_float(i32 noundef 7) #8
  %call16.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 6, i32 noundef %call13.3.i, i32 noundef 7, i32 noundef %call15.3.i) #12
  %call13.4.i = tail call i32 @vfp_get_float(i32 noundef 8) #8
  %call15.4.i = tail call i32 @vfp_get_float(i32 noundef 9) #8
  %call16.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 8, i32 noundef %call13.4.i, i32 noundef 9, i32 noundef %call15.4.i) #12
  %call13.5.i = tail call i32 @vfp_get_float(i32 noundef 10) #8
  %call15.5.i = tail call i32 @vfp_get_float(i32 noundef 11) #8
  %call16.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 10, i32 noundef %call13.5.i, i32 noundef 11, i32 noundef %call15.5.i) #12
  %call13.6.i = tail call i32 @vfp_get_float(i32 noundef 12) #8
  %call15.6.i = tail call i32 @vfp_get_float(i32 noundef 13) #8
  %call16.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 12, i32 noundef %call13.6.i, i32 noundef 13, i32 noundef %call15.6.i) #12
  %call13.7.i = tail call i32 @vfp_get_float(i32 noundef 14) #8
  %call15.7.i = tail call i32 @vfp_get_float(i32 noundef 15) #8
  %call16.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 14, i32 noundef %call13.7.i, i32 noundef 15, i32 noundef %call15.7.i) #12
  %call13.8.i = tail call i32 @vfp_get_float(i32 noundef 16) #8
  %call15.8.i = tail call i32 @vfp_get_float(i32 noundef 17) #8
  %call16.8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 16, i32 noundef %call13.8.i, i32 noundef 17, i32 noundef %call15.8.i) #12
  %call13.9.i = tail call i32 @vfp_get_float(i32 noundef 18) #8
  %call15.9.i = tail call i32 @vfp_get_float(i32 noundef 19) #8
  %call16.9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 18, i32 noundef %call13.9.i, i32 noundef 19, i32 noundef %call15.9.i) #12
  %call13.10.i = tail call i32 @vfp_get_float(i32 noundef 20) #8
  %call15.10.i = tail call i32 @vfp_get_float(i32 noundef 21) #8
  %call16.10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 20, i32 noundef %call13.10.i, i32 noundef 21, i32 noundef %call15.10.i) #12
  %call13.11.i = tail call i32 @vfp_get_float(i32 noundef 22) #8
  %call15.11.i = tail call i32 @vfp_get_float(i32 noundef 23) #8
  %call16.11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 22, i32 noundef %call13.11.i, i32 noundef 23, i32 noundef %call15.11.i) #12
  %call13.12.i = tail call i32 @vfp_get_float(i32 noundef 24) #8
  %call15.12.i = tail call i32 @vfp_get_float(i32 noundef 25) #8
  %call16.12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 24, i32 noundef %call13.12.i, i32 noundef 25, i32 noundef %call15.12.i) #12
  %call13.13.i = tail call i32 @vfp_get_float(i32 noundef 26) #8
  %call15.13.i = tail call i32 @vfp_get_float(i32 noundef 27) #8
  %call16.13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 26, i32 noundef %call13.13.i, i32 noundef 27, i32 noundef %call15.13.i) #12
  %call13.14.i = tail call i32 @vfp_get_float(i32 noundef 28) #8
  %call15.14.i = tail call i32 @vfp_get_float(i32 noundef 29) #8
  %call16.14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 28, i32 noundef %call13.14.i, i32 noundef 29, i32 noundef %call15.14.i) #12
  %call13.15.i = tail call i32 @vfp_get_float(i32 noundef 30) #8
  %call15.15.i = tail call i32 @vfp_get_float(i32 noundef 31) #8
  %call16.15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 30, i32 noundef %call13.15.i, i32 noundef 31, i32 noundef %call15.15.i) #12
  br label %cleanup.sink.split

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %exceptions)
  %tobool5.not = icmp ult i32 %exceptions, 268435456
  %and7 = and i32 %fpscr, 268435455
  %spec.select = select i1 %tobool5.not, i32 %fpscr, i32 %and7
  %or = or i32 %spec.select, %exceptions
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPSCR, $0", "r,~{cc}"(i32 %or) #8, !srcloc !111
  %and9 = and i32 %exceptions, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %and11 = and i32 %or, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = or i1 %tobool10.not, %tobool12.not
  %si_code.0 = select i1 %or.cond, i32 0, i32 3
  %and15 = and i32 %exceptions, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and18 = and i32 %or, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %or.cond63 = or i1 %tobool16.not, %tobool19.not
  %si_code.1 = select i1 %or.cond63, i32 %si_code.0, i32 6
  %and22 = and i32 %exceptions, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %and25 = and i32 %or, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond64 = or i1 %tobool23.not, %tobool26.not
  %si_code.2 = select i1 %or.cond64, i32 %si_code.1, i32 5
  %and29 = and i32 %exceptions, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %and32 = and i32 %or, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or.cond65 = or i1 %tobool30.not, %tobool33.not
  %si_code.3 = select i1 %or.cond65, i32 %si_code.2, i32 4
  %and36 = and i32 %exceptions, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and39 = and i32 %or, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond66 = or i1 %tobool37.not, %tobool40.not
  %si_code.4 = select i1 %or.cond66, i32 %si_code.3, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %si_code.4)
  %tobool43.not = icmp eq i32 %si_code.4, 0
  br i1 %tobool43.not, label %if.end4.cleanup_crit_edge, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end4.cleanup.sink.split_crit_edge, %if.then3
  %si_code.4.sink = phi i32 [ 7, %if.then3 ], [ %si_code.4, %if.end4.cleanup.sink.split_crit_edge ]
  %2 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task.i, align 8
  %error_code.i69 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 219, i32 2
  %6 = ptrtoint ptr %error_code.i69 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error_code.i69, align 8
  %7 = load ptr, ptr %task.i, align 8
  %trap_no.i70 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 219, i32 1
  %8 = ptrtoint ptr %trap_no.i70 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %trap_no.i70, align 4
  %arrayidx.i71 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %9 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i71, align 4
  %sub.i72 = add i32 %10, -4
  %11 = inttoptr i32 %sub.i72 to ptr
  %12 = load ptr, ptr %task.i, align 8
  %call6.i73 = tail call i32 @send_sig_fault(i32 noundef 8, i32 noundef %si_code.4.sink, ptr noundef %11, ptr noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @vfp_disable() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @VFP_arch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_disable.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_disable, %if.then4)) #8
          to label %return [label %if.then4], !srcloc !101

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_disable.__UNIQUE_ID_ddebug202, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i32 1, ptr @VFP_arch, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfp_sync_hwstate(ptr noundef %thread) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %4 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1, align 4
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %thread, i32 0, i32 10, i32 0, i32 5
  %8 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i, label %vfp_state_in_hw.exit, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

vfp_state_in_hw.exit:                             ; preds = %entry
  %vfpstate.i = getelementptr inbounds %struct.thread_info, ptr %thread, i32 0, i32 10
  %arrayidx.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %11, %vfpstate.i
  br i1 %cmp3.i, label %if.then, label %vfp_state_in_hw.exit.do.body5_crit_edge

vfp_state_in_hw.exit.do.body5_crit_edge:          ; preds = %vfp_state_in_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

if.then:                                          ; preds = %vfp_state_in_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !113
  %or = or i32 %12, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or) #8, !srcloc !114
  tail call void @vfp_save_state(ptr noundef %vfpstate.i, i32 noundef %or) #8
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %12) #8, !srcloc !115
  br label %do.body5

do.body5:                                         ; preds = %if.then, %vfp_state_in_hw.exit.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i11 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i11 to ptr
  %preempt_count.i.i12 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i12, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_save_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vfp_flush_hwstate(ptr noundef %thread) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  %4 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1, align 4
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %thread, i32 0, i32 10, i32 0, i32 5
  %8 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i.i, label %vfp_state_in_hw.exit.i, label %entry.vfp_force_reload.exit_crit_edge

entry.vfp_force_reload.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_force_reload.exit

vfp_state_in_hw.exit.i:                           ; preds = %entry
  %vfpstate.i.i = getelementptr inbounds %struct.thread_info, ptr %thread, i32 0, i32 10
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp3.i.i = icmp eq ptr %11, %vfpstate.i.i
  br i1 %cmp3.i.i, label %if.then.i, label %vfp_state_in_hw.exit.i.vfp_force_reload.exit_crit_edge

vfp_state_in_hw.exit.i.vfp_force_reload.exit_crit_edge: ; preds = %vfp_state_in_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_force_reload.exit

if.then.i:                                        ; preds = %vfp_state_in_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !118
  %and.i7 = and i32 %12, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and.i7) #8, !srcloc !119
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %vfp_force_reload.exit

vfp_force_reload.exit:                            ; preds = %if.then.i, %vfp_state_in_hw.exit.i.vfp_force_reload.exit_crit_edge, %entry.vfp_force_reload.exit_crit_edge
  %14 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %cpu1.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %15 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i5 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i5 to ptr
  %preempt_count.i.i6 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i6, align 4
  %sub.i = add i32 %18, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfp_preserve_user_clear_hwstate(ptr nocapture noundef writeonly %ufp, ptr nocapture noundef writeonly %ufp_exc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %vfpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %4 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i, align 4
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 5
  %8 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i.i, label %vfp_state_in_hw.exit.i, label %entry.vfp_sync_hwstate.exit_crit_edge

entry.vfp_sync_hwstate.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_sync_hwstate.exit

vfp_state_in_hw.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp3.i.i = icmp eq ptr %11, %vfpstate
  br i1 %cmp3.i.i, label %if.then.i, label %vfp_state_in_hw.exit.i.vfp_sync_hwstate.exit_crit_edge

vfp_state_in_hw.exit.i.vfp_sync_hwstate.exit_crit_edge: ; preds = %vfp_state_in_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_sync_hwstate.exit

if.then.i:                                        ; preds = %vfp_state_in_hw.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !113
  %or.i = or i32 %12, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or.i) #8, !srcloc !114
  tail call void @vfp_save_state(ptr noundef %vfpstate, i32 noundef %or.i) #8
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %12) #8, !srcloc !115
  br label %vfp_sync_hwstate.exit

vfp_sync_hwstate.exit:                            ; preds = %if.then.i, %vfp_state_in_hw.exit.i.vfp_sync_hwstate.exit_crit_edge, %entry.vfp_sync_hwstate.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %13 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i11.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i11.i to ptr
  %preempt_count.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i12.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i12.i, align 4
  %17 = call ptr @memcpy(ptr %ufp, ptr %vfpstate, i32 256)
  %fpscr = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 2
  %18 = ptrtoint ptr %fpscr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fpscr, align 4
  %fpscr2 = getelementptr inbounds %struct.user_vfp, ptr %ufp, i32 0, i32 1
  %20 = ptrtoint ptr %fpscr2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %fpscr2, align 8
  %fpexc = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 1
  %21 = ptrtoint ptr %fpexc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fpexc, align 8
  %23 = ptrtoint ptr %ufp_exc to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ufp_exc, align 4
  %fpinst = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 3
  %24 = ptrtoint ptr %fpinst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fpinst, align 512
  %fpinst4 = getelementptr inbounds %struct.user_vfp_exc, ptr %ufp_exc, i32 0, i32 1
  %26 = ptrtoint ptr %fpinst4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fpinst4, align 4
  %fpinst2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 4
  %27 = ptrtoint ptr %fpinst2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fpinst2, align 4
  %fpinst25 = getelementptr inbounds %struct.user_vfp_exc, ptr %ufp_exc, i32 0, i32 2
  %29 = ptrtoint ptr %fpinst25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %fpinst25, align 4
  %30 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i.i17 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i17 to ptr
  %preempt_count.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i18, align 4
  %add.i.i19 = add i32 %33, 1
  store volatile i32 %add.i.i19, ptr %preempt_count.i.i.i18, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  %34 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i20 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i20 to ptr
  %cpu1.i21 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu1.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu1.i21, align 4
  %38 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.not.i.i.i = icmp eq i32 %39, %37
  br i1 %cmp.not.i.i.i, label %vfp_state_in_hw.exit.i.i, label %vfp_sync_hwstate.exit.vfp_flush_hwstate.exit_crit_edge

vfp_sync_hwstate.exit.vfp_flush_hwstate.exit_crit_edge: ; preds = %vfp_sync_hwstate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_flush_hwstate.exit

vfp_state_in_hw.exit.i.i:                         ; preds = %vfp_sync_hwstate.exit
  %arrayidx.i.i.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %37
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %41, %vfpstate
  br i1 %cmp3.i.i.i, label %if.then.i.i, label %vfp_state_in_hw.exit.i.i.vfp_flush_hwstate.exit_crit_edge

vfp_state_in_hw.exit.i.i.vfp_flush_hwstate.exit_crit_edge: ; preds = %vfp_state_in_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_flush_hwstate.exit

if.then.i.i:                                      ; preds = %vfp_state_in_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !118
  %and.i7.i = and i32 %42, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and.i7.i) #8, !srcloc !119
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %vfp_flush_hwstate.exit

vfp_flush_hwstate.exit:                           ; preds = %if.then.i.i, %vfp_state_in_hw.exit.i.i.vfp_flush_hwstate.exit_crit_edge, %vfp_sync_hwstate.exit.vfp_flush_hwstate.exit_crit_edge
  %44 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %cpu1.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %45 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i5.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i5.i to ptr
  %preempt_count.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i6.i, align 4
  %sub.i.i22 = add i32 %48, -1
  store volatile i32 %sub.i.i22, ptr %preempt_count.i.i6.i, align 4
  %49 = ptrtoint ptr %fpscr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fpscr, align 4
  %and = and i32 %50, -3604481
  store i32 %and, ptr %fpscr, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfp_restore_user_hwstate(ptr nocapture noundef readonly %ufp, ptr nocapture noundef readonly %ufp_exc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %vfpstate = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  %4 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu1.i, align 4
  %cpu1.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 5
  %8 = ptrtoint ptr %cpu1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not.i.i.i = icmp eq i32 %9, %7
  br i1 %cmp.not.i.i.i, label %vfp_state_in_hw.exit.i.i, label %entry.vfp_flush_hwstate.exit_crit_edge

entry.vfp_flush_hwstate.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_flush_hwstate.exit

vfp_state_in_hw.exit.i.i:                         ; preds = %entry
  %arrayidx.i.i.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %11, %vfpstate
  br i1 %cmp3.i.i.i, label %if.then.i.i, label %vfp_state_in_hw.exit.i.i.vfp_flush_hwstate.exit_crit_edge

vfp_state_in_hw.exit.i.i.vfp_flush_hwstate.exit_crit_edge: ; preds = %vfp_state_in_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_flush_hwstate.exit

if.then.i.i:                                      ; preds = %vfp_state_in_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !118
  %and.i7.i = and i32 %12, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and.i7.i) #8, !srcloc !119
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  br label %vfp_flush_hwstate.exit

vfp_flush_hwstate.exit:                           ; preds = %if.then.i.i, %vfp_state_in_hw.exit.i.i.vfp_flush_hwstate.exit_crit_edge, %entry.vfp_flush_hwstate.exit_crit_edge
  %14 = ptrtoint ptr %cpu1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %cpu1.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %15 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i5.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i5.i to ptr
  %preempt_count.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i6.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i6.i, align 4
  %19 = call ptr @memcpy(ptr %vfpstate, ptr %ufp, i32 256)
  %fpscr = getelementptr inbounds %struct.user_vfp, ptr %ufp, i32 0, i32 1
  %20 = ptrtoint ptr %fpscr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fpscr, align 8
  %fpscr2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 2
  %22 = ptrtoint ptr %fpscr2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fpscr2, align 4
  %23 = ptrtoint ptr %ufp_exc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ufp_exc, align 4
  %or = and i32 %24, 805306367
  %and = or i32 %or, 1073741824
  %fpexc4 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 1
  %25 = ptrtoint ptr %fpexc4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %fpexc4, align 8
  %fpinst = getelementptr inbounds %struct.user_vfp_exc, ptr %ufp_exc, i32 0, i32 1
  %26 = ptrtoint ptr %fpinst to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fpinst, align 4
  %fpinst5 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 3
  %28 = ptrtoint ptr %fpinst5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %fpinst5, align 512
  %fpinst2 = getelementptr inbounds %struct.user_vfp_exc, ptr %ufp_exc, i32 0, i32 2
  %29 = ptrtoint ptr %fpinst2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fpinst2, align 4
  %fpinst26 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 4
  %31 = ptrtoint ptr %fpinst26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fpinst26, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_kmode_exception_hook_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.undef_hook], ptr @vfp_kmode_exception_hook, i32 0, i32 %i.03
  tail call void @register_undef_hook(ptr noundef %arrayidx) #8
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_neon_begin() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i28 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i28 to ptr
  %preempt_count.i29 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i29, align 4
  %and3 = and i32 %7, 983040
  %or = or i32 %and3, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i30 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i30 to ptr
  %preempt_count.i31 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i31, align 4
  %and5 = and i32 %11, 65280
  %or6 = or i32 %or, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %do.body15, label %do.body9, !prof !121

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/vfp/vfpmodule.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 725, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body15:                                        ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %15, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !123
  %cpu19 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %cpu19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu19, align 4
  %18 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !124
  %or21 = or i32 %18, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or21) #8, !srcloc !125
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10, i32 0, i32 5
  %19 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %17)
  %cmp.not.i = icmp eq i32 %20, %17
  br i1 %cmp.not.i, label %vfp_state_in_hw.exit, label %do.body15.if.end24_crit_edge

do.body15.if.end24_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

vfp_state_in_hw.exit:                             ; preds = %do.body15
  %vfpstate.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 10
  %arrayidx.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %17
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %cmp3.i = icmp eq ptr %22, %vfpstate.i
  br i1 %cmp3.i, label %if.then23, label %vfp_state_in_hw.exit.if.end24_crit_edge

vfp_state_in_hw.exit.if.end24_crit_edge:          ; preds = %vfp_state_in_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %vfp_state_in_hw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfp_save_state(ptr noundef %vfpstate.i, i32 noundef %or21) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %vfp_state_in_hw.exit.if.end24_crit_edge, %do.body15.if.end24_crit_edge
  %arrayidx = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %17
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernel_neon_end() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !126
  %and = and i32 %0, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and) #8, !srcloc !127
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %1 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %4, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpu_architecture() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp = icmp ugt i32 %call, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @vfp_enable, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @register_undef_hook(ptr noundef nonnull @vfp_detect_hook) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !129
  %0 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPSID", "=r,~{cc}"() #11, !srcloc !130
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !131
  tail call void @unregister_undef_hook(ptr noundef nonnull @vfp_detect_hook) #8
  store ptr @vfp_null_entry, ptr @vfp_vector, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  %1 = load i32, ptr @VFP_arch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #11, !srcloc !132
  %and = and i32 %2, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 983040, i32 %and)
  %cmp10 = icmp eq i32 %and, 983040
  br i1 %cmp10, label %if.then11, label %if.else44

if.then11:                                        ; preds = %if.else
  %and12 = lshr i32 %0, 16
  %shr = and i32 %and12, 127
  store i32 %shr, ptr @VFP_arch, align 4
  %3 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, MVFR1", "=r,~{cc}"() #11, !srcloc !133
  %and15 = and i32 %3, 1048320
  call void @__sanitizer_cov_trace_const_cmp4(i32 69888, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 69888
  br i1 %cmp16, label %if.then17, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %4 = load i32, ptr @elf_hwcap, align 4
  %or = or i32 %4, 4096
  store i32 %or, ptr @elf_hwcap, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then11.if.end18_crit_edge
  %5 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, MVFR0", "=r,~{cc}"() #11, !srcloc !134
  %6 = and i32 %5, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %6)
  %cmp23 = icmp eq i32 %6, 512
  %7 = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp26 = icmp eq i32 %7, 32
  %or.cond = or i1 %cmp23, %cmp26
  br i1 %or.cond, label %if.then27, label %if.end18.if.end36_crit_edge

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then27:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %8 = load i32, ptr @elf_hwcap, align 4
  %and29 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 1
  %. = select i1 %cmp30, i32 24576, i32 532480
  %or32 = or i32 %8, %.
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  store i32 %or32, ptr @elf_hwcap, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %if.end18.if.end36_crit_edge
  %and39 = and i32 %3, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 268435456
  br i1 %cmp40, label %if.then41, label %if.end36.if.end57_crit_edge

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %9 = load i32, ptr @elf_hwcap, align 4
  %or42 = or i32 %9, 65536
  store i32 %or42, ptr @elf_hwcap, align 4
  br label %if.end57

if.else44:                                        ; preds = %if.else
  %and45 = and i32 %0, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end53, label %do.end50

do.end50:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end53:                                         ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %and54 = lshr i32 %0, 16
  %shr55 = and i32 %and54, 15
  store i32 %shr55, ptr @VFP_arch, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.then41, %if.end36.if.end57_crit_edge
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 115, ptr noundef nonnull @.str.35, i1 noundef zeroext false, ptr noundef nonnull @vfp_starting_cpu, ptr noundef nonnull @vfp_dying_cpu, i1 noundef zeroext false) #8
  store ptr @vfp_support_entry, ptr @vfp_vector, align 4
  %call.i83 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @thread_notify_head, ptr noundef nonnull @vfp_notifier_block) #8
  %call.i84 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @vfp_cpu_pm_notifier_block) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %10 = load i32, ptr @elf_hwcap, align 4
  %or60 = or i32 %10, 64
  store i32 %or60, ptr @elf_hwcap, align 4
  %shr66 = lshr i32 %0, 24
  %11 = load i32, ptr @VFP_arch, align 4
  %and67 = lshr i32 %0, 8
  %shr68 = and i32 %and67, 255
  %and69 = lshr i32 %0, 4
  %shr70 = and i32 %and69, 15
  %and71 = and i32 %0, 15
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %shr66, i32 noundef %11, i32 noundef %shr68, i32 noundef %shr70, i32 noundef %and71) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %do.end50, %do.end6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_get_float(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig_fault(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_single_cpdo(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfp_double_cpdo(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_kmode_exception(ptr nocapture noundef readnone %regs, i32 noundef %instr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !135
  %and = and i32 %0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.22..str.19 = select i1 %tobool.not, ptr @.str.22, ptr @.str.19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22..str.19) #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %0) #12
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfp_enable(ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end22_crit_edge

entry.do.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

land.rhs:                                         ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !136
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.body15, label %land.rhs.do.end22_crit_edge, !prof !137

land.rhs.do.end22_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.body15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/vfp/vfpmodule.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #8, !srcloc !138
  unreachable

do.end22:                                         ; preds = %land.rhs.do.end22_crit_edge, %entry.do.end22_crit_edge
  %5 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #11, !srcloc !139
  %or24 = or i32 %5, 15728640
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_undef_hook(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_starting_cpu(i32 noundef %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %land.rhs.i, label %entry.vfp_enable.exit_crit_edge

entry.vfp_enable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_enable.exit

land.rhs.i:                                       ; preds = %entry
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !136
  %and.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body15.i, label %land.rhs.i.vfp_enable.exit_crit_edge, !prof !137

land.rhs.i.vfp_enable.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_enable.exit

do.body15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/vfp/vfpmodule.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #8, !srcloc !138
  unreachable

vfp_enable.exit:                                  ; preds = %land.rhs.i.vfp_enable.exit_crit_edge, %entry.vfp_enable.exit_crit_edge
  %5 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #11, !srcloc !139
  %or24.i = or i32 %5, 15728640
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vfp_dying_cpu(i32 noundef %cpu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfp_support_entry() #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vfp_detect(ptr nocapture noundef %regs, i32 noundef %instr) #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 -1, ptr @VFP_arch, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 4
  store i32 %add, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_notifier(ptr nocapture noundef readnone %self, i32 noundef %cmd, ptr noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb6
    i32 3, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !142
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %land.lhs.true

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @vfp_save_state(ptr noundef nonnull %5, i32 noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %and4 = and i32 %1, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and4) #8, !srcloc !143
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %vfpstate.i = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 10
  %6 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !144
  %10 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %15, %vfpstate.i
  br i1 %cmp.i, label %if.then.i, label %sw.bb5.vfp_thread_flush.exit_crit_edge

sw.bb5.vfp_thread_flush.exit_crit_edge:           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_thread_flush.exit

if.then.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx.i, align 4
  br label %vfp_thread_flush.exit

vfp_thread_flush.exit:                            ; preds = %if.then.i, %sw.bb5.vfp_thread_flush.exit_crit_edge
  %17 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !145
  %and.i = and i32 %17, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and.i) #8, !srcloc !146
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !147
  %18 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i13.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i13.i to ptr
  %preempt_count.i.i14.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i14.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i14.i, align 4
  %22 = call ptr @memset(ptr %vfpstate.i, i32 0, i32 280)
  %fpexc.i = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 10, i32 0, i32 1
  %23 = ptrtoint ptr %fpexc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1073741824, ptr %fpexc.i, align 8
  %cpu7.i = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 10, i32 0, i32 5
  %24 = ptrtoint ptr %cpu7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %cpu7.i, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %vfpstate.i14 = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 10
  %25 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i.i15 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %add.i.i17 = add i32 %28, 1
  store volatile i32 %add.i.i17, ptr %preempt_count.i.i.i16, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !148
  %29 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i18 to ptr
  %cpu1.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu1.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu1.i19, align 4
  %arrayidx.i20 = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i20, align 4
  %cmp.i21 = icmp eq ptr %34, %vfpstate.i14
  br i1 %cmp.i21, label %if.then.i22, label %sw.bb6.vfp_thread_exit.exit_crit_edge

sw.bb6.vfp_thread_exit.exit_crit_edge:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_thread_exit.exit

if.then.i22:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.i20, align 4
  br label %vfp_thread_exit.exit

vfp_thread_exit.exit:                             ; preds = %if.then.i22, %sw.bb6.vfp_thread_exit.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !149
  %36 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i7.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i23 = add i32 %39, -1
  store volatile i32 %sub.i.i23, ptr %preempt_count.i.i8.i, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %40 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i24 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i24 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
  %44 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %cpu1.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu1.i.i, align 4
  %cpu1.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 10, i32 0, i32 5
  %48 = ptrtoint ptr %cpu1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu1.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %47)
  %cmp.not.i.i.i = icmp eq i32 %49, %47
  br i1 %cmp.not.i.i.i, label %vfp_state_in_hw.exit.i.i, label %sw.bb7.vfp_thread_copy.exit_crit_edge

sw.bb7.vfp_thread_copy.exit_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_thread_copy.exit

vfp_state_in_hw.exit.i.i:                         ; preds = %sw.bb7
  %vfpstate.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 10
  %arrayidx.i.i.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %47
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i.i, align 4
  %cmp3.i.i.i = icmp eq ptr %51, %vfpstate.i.i.i
  br i1 %cmp3.i.i.i, label %if.then.i.i, label %vfp_state_in_hw.exit.i.i.vfp_thread_copy.exit_crit_edge

vfp_state_in_hw.exit.i.i.vfp_thread_copy.exit_crit_edge: ; preds = %vfp_state_in_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_thread_copy.exit

if.then.i.i:                                      ; preds = %vfp_state_in_hw.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !113
  %or.i.i = or i32 %52, 1073741824
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %or.i.i) #8, !srcloc !114
  tail call void @vfp_save_state(ptr noundef %vfpstate.i.i.i, i32 noundef %or.i.i) #8
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %52) #8, !srcloc !115
  br label %vfp_thread_copy.exit

vfp_thread_copy.exit:                             ; preds = %if.then.i.i, %vfp_state_in_hw.exit.i.i.vfp_thread_copy.exit_crit_edge, %sw.bb7.vfp_thread_copy.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %53 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i11.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i11.i.i to ptr
  %preempt_count.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i12.i.i, align 4
  %sub.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i12.i.i, align 4
  %vfpstate.i25 = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 10
  %vfpstate1.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 10
  %57 = call ptr @memcpy(ptr %vfpstate.i25, ptr %vfpstate1.i, i32 280)
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %v, i32 0, i32 10, i32 0, i32 5
  %58 = ptrtoint ptr %cpu.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %cpu.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %vfp_thread_copy.exit, %vfp_thread_exit.exit, %vfp_thread_flush.exit, %if.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfp_cpu_pm_notifier(ptr nocapture noundef readnone %self, i32 noundef %cmd, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge3
  ]

entry.sw.bb1_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %3 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !150
  %and.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.vfp_pm_suspend.exit_crit_edge, label %do.body.i

sw.bb.vfp_pm_suspend.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_pm_suspend.exit

do.body.i:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vfp_pm_suspend.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vfp_cpu_pm_notifier, %if.then6.i)) #8
          to label %do.end.i [label %if.then6.i], !srcloc !101

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vfp_pm_suspend.__UNIQUE_ID_ddebug203, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %vfpstate.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 10
  tail call void @vfp_save_state(ptr noundef %vfpstate.i, i32 noundef %3) #8
  %and9.i = and i32 %3, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and9.i) #8, !srcloc !151
  br label %vfp_pm_suspend.exit

vfp_pm_suspend.exit:                              ; preds = %do.end.i, %sw.bb.vfp_pm_suspend.exit_crit_edge
  %cpu14.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %cpu14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu14.i, align 4
  %arrayidx15.i = getelementptr [4 x ptr], ptr @vfp_current_hw_state, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx15.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge3
  %7 = tail call i32 @llvm.read_register.i32(metadata !91) #8
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %sw.bb1.vfp_pm_resume.exit_crit_edge

sw.bb1.vfp_pm_resume.exit_crit_edge:              ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_pm_resume.exit

land.rhs.i.i:                                     ; preds = %sw.bb1
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !136
  %and.i.i.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.body15.i.i, label %land.rhs.i.i.vfp_pm_resume.exit_crit_edge, !prof !137

land.rhs.i.i.vfp_pm_resume.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vfp_pm_resume.exit

do.body15.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/vfp/vfpmodule.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 426, 0\0A.popsection", ""() #8, !srcloc !138
  unreachable

vfp_pm_resume.exit:                               ; preds = %land.rhs.i.i.vfp_pm_resume.exit_crit_edge, %sw.bb1.vfp_pm_resume.exit_crit_edge
  %12 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 2 @ get copro access", "=r,~{cc}"() #11, !srcloc !139
  %or24.i.i = or i32 %12, 15728640
  tail call void asm sideeffect "mcr p15, 0, $0, c1, c0, 2 @ set copro access", "r,~{cc}"(i32 %or24.i.i) #8, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %13 = tail call i32 asm ".fpu\09vfpv2\0Avmrs\09$0, FPEXC", "=r,~{cc}"() #11, !srcloc !152
  %and.i2 = and i32 %13, -1073741825
  tail call void asm sideeffect ".fpu\09vfpv2\0Avmsr\09FPEXC, $0", "r,~{cc}"(i32 %and.i2) #8, !srcloc !153
  br label %sw.epilog

sw.epilog:                                        ; preds = %vfp_pm_resume.exit, %vfp_pm_suspend.exit, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !83, !85, !87, !89, !90}
!llvm.named.register.sp = !{!91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @vfp_vector, !1, !"vfp_vector", i1 false, i1 false}
!1 = !{!"../arch/arm/vfp/vfpmodule.c", i32 38, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/vfp/vfpmodule.c", i32 327, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @VFP_bounce.__UNIQUE_ID_ddebug201, !3, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/vfp/vfpmodule.c", i32 442, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vfp_disable.__UNIQUE_ID_ddebug202, !9, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_vfpmodule__204_709_vfp_kmode_exception_hook_init4, !13, !"__initcall__kmod_vfpmodule__204_709_vfp_kmode_exception_hook_init4", i1 false, i1 false}
!13 = !{!"../arch/arm/vfp/vfpmodule.c", i32 709, i32 1}
!14 = !{ptr @__ksymtab_kernel_neon_begin, !15, !"__ksymtab_kernel_neon_begin", i1 false, i1 false}
!15 = !{!"../arch/arm/vfp/vfpmodule.c", i32 743, i32 1}
!16 = !{ptr @__ksymtab_kernel_neon_end, !17, !"__ksymtab_kernel_neon_end", i1 false, i1 false}
!17 = !{!"../arch/arm/vfp/vfpmodule.c", i32 751, i32 1}
!18 = !{ptr @__initcall__kmod_vfpmodule__205_870_vfp_init1, !19, !"__initcall__kmod_vfpmodule__205_870_vfp_init1", i1 false, i1 false}
!19 = !{!"../arch/arm/vfp/vfpmodule.c", i32 870, i32 1}
!20 = !{ptr @VFP_arch, !21, !"VFP_arch", i1 false, i1 false}
!21 = !{!"../arch/arm/vfp/vfpmodule.c", i32 45, i32 32}
!22 = !{ptr @vfp_current_hw_state, !23, !"vfp_current_hw_state", i1 false, i1 false}
!23 = !{!"../arch/arm/vfp/vfpmodule.c", i32 56, i32 18}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/vfp/vfpmodule.c", i32 247, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vfp_raise_exceptions.__UNIQUE_ID_ddebug199, !25, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/vfp/vfpmodule.c", i32 250, i32 13}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/vfp/vfpmodule.c", i32 232, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vfp_panic._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @vfp_panic._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/vfp/vfpmodule.c", i32 233, i32 2}
!37 = !{ptr @vfp_panic._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @vfp_panic._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/vfp/vfpmodule.c", i32 236, i32 3}
!41 = !{ptr @vfp_panic._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @vfp_panic._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/vfp/vfpmodule.c", i32 291, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vfp_emulate_instruction.__UNIQUE_ID_ddebug200, !44, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!47 = !{ptr @vfp_kmode_exception_hook, !48, !"vfp_kmode_exception_hook", i1 false, i1 false}
!48 = !{!"../arch/arm/vfp/vfpmodule.c", i32 669, i32 26}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/vfp/vfpmodule.c", i32 662, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vfp_kmode_exception._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @vfp_kmode_exception._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/vfp/vfpmodule.c", i32 664, i32 3}
!56 = !{ptr @vfp_kmode_exception._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @vfp_kmode_exception._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/vfp/vfpmodule.c", i32 665, i32 2}
!60 = !{ptr @vfp_kmode_exception._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vfp_kmode_exception._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/vfp/vfpmodule.c", i32 797, i32 2}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @vfp_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @vfp_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../arch/arm/vfp/vfpmodule.c", i32 799, i32 3}
!69 = !{ptr @vfp_init._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vfp_init._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/vfp/vfpmodule.c", i32 838, i32 4}
!73 = !{ptr @vfp_init._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vfp_init._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/vfp/vfpmodule.c", i32 846, i32 7}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/vfp/vfpmodule.c", i32 860, i32 2}
!79 = !{ptr @vfp_init._entry.36, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @vfp_init._entry_ptr.38, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @vfp_detect_hook, !82, !"vfp_detect_hook", i1 false, i1 false}
!82 = !{!"../arch/arm/vfp/vfpmodule.c", i32 762, i32 26}
!83 = !{ptr @vfp_notifier_block, !84, !"vfp_notifier_block", i1 false, i1 false}
!84 = !{!"../arch/arm/vfp/vfpmodule.c", i32 206, i32 30}
!85 = !{ptr @vfp_cpu_pm_notifier_block, !86, !"vfp_cpu_pm_notifier_block", i1 false, i1 false}
!86 = !{!"../arch/arm/vfp/vfpmodule.c", i32 499, i32 30}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/vfp/vfpmodule.c", i32 456, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vfp_pm_suspend.__UNIQUE_ID_ddebug203, !88, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!91 = !{!"sp"}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148310052, i64 2148310057, i64 2148310070, i64 2148310114, i64 2148310148, i64 2148310169}
!102 = !{i64 2153196513, i64 2153196536}
!103 = !{i64 2153196906, i64 2153196929}
!104 = !{i64 2153197029, i64 2153197052}
!105 = !{i64 2153197205, i64 2153197228}
!106 = !{i64 2153197506}
!107 = !{i64 2153197549, i64 2153197572}
!108 = !{i64 2153197728}
!109 = !{i64 2153186661, i64 2153186684}
!110 = !{i64 2153186784, i64 2153186807}
!111 = !{i64 2153191027, i64 2153191050}
!112 = !{i64 2153206654}
!113 = !{i64 2153206750, i64 2153206773}
!114 = !{i64 2153206851, i64 2153206874}
!115 = !{i64 2153206975, i64 2153206998}
!116 = !{i64 2153207160}
!117 = !{i64 2153207400}
!118 = !{i64 2153181649, i64 2153181672}
!119 = !{i64 2153181408, i64 2153181431}
!120 = !{i64 2153207567}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2153222153, i64 2153222642, i64 2153222190, i64 2153222246, i64 2153222280, i64 2153222304, i64 2153222345, i64 2153222366, i64 2153222394, i64 2153222428}
!123 = !{i64 2153223640}
!124 = !{i64 2153223736, i64 2153223759}
!125 = !{i64 2153223847, i64 2153223870}
!126 = !{i64 2153225659, i64 2153225682}
!127 = !{i64 2153225418, i64 2153225441}
!128 = !{i64 2153225853}
!129 = !{i64 2153227867}
!130 = !{i64 2153227910, i64 2153227933}
!131 = !{i64 2153228028}
!132 = !{i64 2153145628}
!133 = !{i64 2153231507, i64 2153231530}
!134 = !{i64 2153232180, i64 2153232203}
!135 = !{i64 2153207770, i64 2153207793}
!136 = !{i64 893649}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 2153199453, i64 2153199942, i64 2153199490, i64 2153199546, i64 2153199580, i64 2153199604, i64 2153199645, i64 2153199666, i64 2153199694, i64 2153199728}
!139 = !{i64 5651034}
!140 = !{i64 5651194}
!141 = !{i64 2153136557}
!142 = !{i64 2153183035, i64 2153183058}
!143 = !{i64 2153183146, i64 2153183169}
!144 = !{i64 2153181950}
!145 = !{i64 2153182277, i64 2153182300}
!146 = !{i64 2153182036, i64 2153182059}
!147 = !{i64 2153182471}
!148 = !{i64 2153182746}
!149 = !{i64 2153182925}
!150 = !{i64 2153203419, i64 2153203442}
!151 = !{i64 2153205768, i64 2153205791}
!152 = !{i64 2153206375, i64 2153206398}
!153 = !{i64 2153206134, i64 2153206157}
