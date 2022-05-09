; ModuleID = '/llk/IR_all_yes/mm/usercopy.c_pt.bc'
source_filename = "../mm/usercopy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__check_object_size\22, \22a\22\09"
module asm "\09.weak\09__crc___check_object_size\09\09\09\09"
module asm "\09.long\09__crc___check_object_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___check_object_size:\09\09\09\09\09"
module asm "\09.asciz \09\22__check_object_size\22\09\09\09\09\09"
module asm "__kstrtabns___check_object_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.page = type { i32, %union.anon.8, %union.anon.49, %struct.atomic_t, i32 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.49 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.50 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@usercopy_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm/usercopy.c\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"Bad or missing usercopy whitelist? Kernel memory %s attempt detected %s %s%s%s%s (offset %lu, size %lu)!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"exposure\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"overwrite\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"from\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"to\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"unknown?!\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" '\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"'\00", [30 x i8] zeroinitializer }, align 32
@usercopy_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\010usercopy: Kernel memory %s attempt detected %s %s%s%s%s (offset %lu, size %lu)!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usercopy_abort\00", [17 x i8] zeroinitializer }, align 32
@usercopy_abort._entry_ptr = internal global ptr @usercopy_abort._entry, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"process stack\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab___check_object_size = external dso_local constant [0 x i8], align 1
@__kstrtabns___check_object_size = external dso_local constant [0 x i8], align 1
@__ksymtab___check_object_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__check_object_size to i32), ptr @__kstrtab___check_object_size, ptr @__kstrtabns___check_object_size }, section "___ksymtab+__check_object_size", align 4
@__setup_str_parse_hardened_usercopy = internal constant [19 x i8] c"hardened_usercopy=\00", section ".init.rodata", align 1
@__setup_parse_hardened_usercopy = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_hardened_usercopy, ptr @parse_hardened_usercopy, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_usercopy__295_310_set_hardened_usercopy7 = internal global ptr @set_hardened_usercopy, section ".initcall7.init", align 4
@bypass_usercopy_checks = internal global { { %struct.atomic_t, { ptr } } } zeroinitializer, section ".data..ro_after_init", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wrapped address\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"null address\00", [19 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rodata\00", [25 x i8] zeroinitializer }, align 32
@_sdata = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@__bss_start = external dso_local global [0 x i8], align 1
@__bss_stop = external dso_local global [0 x i8], align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spans multiple pages\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"spans Reserved and non-Reserved pages\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spans CMA and non-CMA pages\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@_stext = external dso_local global [0 x i8], align 1
@_etext = external dso_local global [0 x i8], align 1
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kernel text\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"linear kernel text\00", [45 x i8] zeroinitializer }, align 32
@enable_checks = internal global i8 1, section ".init.data", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 76, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 88, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 283, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 153, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 157, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 260, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 179, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 210, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 215, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 218, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 440, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 126, i32 18 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [17 x i8] c"../mm/usercopy.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 144, i32 18 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__initcall__kmod_usercopy__295_310_set_hardened_usercopy7, ptr @__ksymtab___check_object_size, ptr @__setup_parse_hardened_usercopy, ptr @usercopy_abort._entry, ptr @usercopy_abort._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usercopy_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usercopy_warn(ptr noundef %name, ptr noundef %detail, i1 noundef zeroext %to_user, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b52 = load i1, ptr @usercopy_warn.__already_done, align 1
  br i1 %.b52, label %entry.if.end39_crit_edge, label %if.then, !prof !62

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @usercopy_warn.__already_done, align 1
  %cond = select i1 %to_user, ptr @.str.2, ptr @.str.3
  %cond16 = select i1 %to_user, ptr @.str.4, ptr @.str.5
  %tobool17.not = icmp eq ptr %name, null
  %..str.6 = select i1 %tobool17.not, ptr @.str.6, ptr %name
  %tobool19.not = icmp eq ptr %detail, null
  %cond20 = select i1 %tobool19.not, ptr @.str.8, ptr @.str.7
  %cond25 = select i1 %tobool19.not, ptr @.str.8, ptr %detail
  %cond27 = select i1 %tobool19.not, ptr @.str.8, ptr @.str.9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond, ptr noundef nonnull %cond16, ptr noundef %..str.6, ptr noundef nonnull %cond20, ptr noundef %cond25, ptr noundef nonnull %cond27, i32 noundef %offset, i32 noundef %len) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then, %entry.if.end39_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usercopy_abort(ptr noundef %name, ptr noundef %detail, i1 noundef zeroext %to_user, i32 noundef %offset, i32 noundef %len) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %to_user, ptr @.str.2, ptr @.str.3
  %cond2 = select i1 %to_user, ptr @.str.4, ptr @.str.5
  %tobool3.not = icmp eq ptr %name, null
  %cond4 = select i1 %tobool3.not, ptr @.str.6, ptr %name
  %tobool5.not = icmp eq ptr %detail, null
  %cond6 = select i1 %tobool5.not, ptr @.str.8, ptr @.str.7
  %cond11 = select i1 %tobool5.not, ptr @.str.8, ptr %detail
  %cond13 = select i1 %tobool5.not, ptr @.str.8, ptr @.str.9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, ptr noundef nonnull %cond2, ptr noundef %cond4, ptr noundef nonnull %cond6, ptr noundef %cond11, ptr noundef nonnull %cond13, i32 noundef %offset, i32 noundef %len) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/usercopy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #7, !srcloc !63
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__check_object_size(ptr noundef %ptr, i32 noundef %n, i1 noundef zeroext %to_user) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bypass_usercopy_checks, ptr blockaddress(@__check_object_size, %return)) #7
          to label %arch_static_branch.exit [label %return], !srcloc !64

arch_static_branch.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %tobool4.not = icmp eq i32 %n, 0
  br i1 %tobool4.not, label %arch_static_branch.exit.return_crit_edge, label %if.end6

arch_static_branch.exit.return_crit_edge:         ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end6:                                          ; preds = %arch_static_branch.exit
  %0 = ptrtoint ptr %ptr to i32
  %sub.i = add i32 %n, -1
  %1 = xor i32 %0, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp.i = icmp ugt i32 %sub.i, %1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add1.i = add i32 %0, %n
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.14, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef 0, i32 noundef %add1.i) #11
  unreachable

if.end.i:                                         ; preds = %if.end6
  %cmp2.i = icmp ult ptr %ptr, inttoptr (i32 17 to ptr)
  br i1 %cmp2.i, label %if.then3.i, label %check_bogus_address.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.15, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef %0, i32 noundef %n) #11
  unreachable

check_bogus_address.exit:                         ; preds = %if.end.i
  %call8 = tail call fastcc i32 @check_stack_object(ptr noundef %ptr, i32 noundef %n)
  %2 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %check_bogus_address.exit.return_crit_edge
    i32 2, label %check_bogus_address.exit.return_crit_edge54
  ]

check_bogus_address.exit.return_crit_edge54:      ; preds = %check_bogus_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

check_bogus_address.exit.return_crit_edge:        ; preds = %check_bogus_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %check_bogus_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.12, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef 0, i32 noundef %n) #12
  unreachable

sw.epilog:                                        ; preds = %check_bogus_address.exit
  %cmp.i23 = icmp ugt ptr %ptr, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i23, label %land.lhs.true.i, label %sw.epilog.check_heap_object.exit_crit_edge

sw.epilog.check_heap_object.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %3 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %3, %ptr
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.check_heap_object.exit_crit_edge

land.lhs.true.i.check_heap_object.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sub.i24 = add i32 %0, 1073741824
  %shr.i = lshr i32 %sub.i24, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %4, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i.check_heap_object.exit_crit_edge, label %if.end.i25

land.lhs.true2.i.check_heap_object.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

if.end.i25:                                       ; preds = %land.lhs.true2.i
  %call.i.i = tail call ptr @__kmap_to_page(ptr noundef nonnull %ptr) #7
  %5 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !62

if.then.i.i:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_slab.exit.i, label %if.then.i.i.i, !prof !62

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.16) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

folio_test_slab.exit.i:                           ; preds = %_compound_head.exit.i
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %folio_test_slab.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__check_heap_object(ptr noundef nonnull %ptr, i32 noundef %n, ptr noundef %9, i1 noundef zeroext %to_user) #7
  br label %check_heap_object.exit

if.else.i:                                        ; preds = %folio_test_slab.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %ptr, i32 %n
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -1
  %cmp.not.i.i = icmp ult ptr %ptr, @__start_rodata
  %cmp2.not.i.i = icmp ugt ptr %add.ptr1.i.i, @__end_rodata
  %or.cond.i.i = or i1 %cmp.not.i.i, %cmp2.not.i.i
  br i1 %or.cond.i.i, label %if.end5.i.i, label %if.then.i19.i

if.then.i19.i:                                    ; preds = %if.else.i
  br i1 %to_user, label %if.then.i19.i.check_heap_object.exit_crit_edge, label %if.then3.i.i

if.then.i19.i.check_heap_object.exit_crit_edge:   ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

if.then3.i.i:                                     ; preds = %if.then.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.18, ptr noundef null, i1 noundef zeroext false, i32 noundef 0, i32 noundef %n) #11
  unreachable

if.end5.i.i:                                      ; preds = %if.else.i
  %cmp6.not.i.i = icmp ult ptr %ptr, @_sdata
  %cmp8.not.i.i = icmp ugt ptr %add.ptr1.i.i, @_edata
  %or.cond98.i.i = or i1 %cmp6.not.i.i, %cmp8.not.i.i
  br i1 %or.cond98.i.i, label %if.end10.i.i, label %if.end5.i.i.check_heap_object.exit_crit_edge

if.end5.i.i.check_heap_object.exit_crit_edge:     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %cmp11.not.i.i = icmp uge ptr %ptr, @__bss_start
  %cmp13.not.i.i = icmp ule ptr %add.ptr1.i.i, @__bss_stop
  %or.cond99.not.i.i = and i1 %cmp11.not.i.i, %cmp13.not.i.i
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  %17 = xor i32 %16, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %17)
  %cmp17.i.i = icmp ult i32 %17, 4096
  %or.cond102.i.i = or i1 %or.cond99.not.i.i, %cmp17.i.i
  br i1 %or.cond102.i.i, label %if.end10.i.i.check_heap_object.exit_crit_edge, label %if.end21.i.i, !prof !66

if.end10.i.i.check_heap_object.exit_crit_edge:    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

if.end21.i.i:                                     ; preds = %if.end10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub.i.i.i = add i32 %16, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %19 = getelementptr %struct.page, ptr %18, i32 %shr.i.i.i, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i20.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i20.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !62

if.then.i.i.i.i:                                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i.i.i = add i32 %21, -1
  br label %virt_to_head_page.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i.i
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  br label %virt_to_head_page.exit.i.i

virt_to_head_page.exit.i.i:                       ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %22, %if.end.i.i.i.i ]
  %23 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %cmp22.i.i = icmp eq ptr %23, %9
  br i1 %cmp22.i.i, label %virt_to_head_page.exit.i.i.check_heap_object.exit_crit_edge, label %if.end30.i.i, !prof !62

virt_to_head_page.exit.i.i.check_heap_object.exit_crit_edge: ; preds = %virt_to_head_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

if.end30.i.i:                                     ; preds = %virt_to_head_page.exit.i.i
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i.i.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i21.i, label %PageReserved.exit.i.i, !prof !67

if.then.i.i21.i:                                  ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.22) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #7, !srcloc !68
  unreachable

PageReserved.exit.i.i:                            ; preds = %if.end30.i.i
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %9, align 4
  %28 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool32.not.i.i = icmp eq i32 %28, 0
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %retval.0.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %29 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %29, %sub.ptr.div.i.i
  %call34.i.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef %9, i32 noundef %add.i.i, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call34.i.i)
  %cmp35.i.i = icmp eq i32 %call34.i.i, 4
  %tobool32.not.not.i.i = xor i1 %tobool32.not.i.i, true
  %brmerge.i.i = select i1 %tobool32.not.not.i.i, i1 true, i1 %cmp35.i.i
  br i1 %brmerge.i.i, label %for.cond.preheader.i.i, label %if.then40.i.i

for.cond.preheader.i.i:                           ; preds = %PageReserved.exit.i.i
  %ptr.addr.0120.i.i = getelementptr i8, ptr %ptr, i32 4096
  %cmp44.not121.i.i = icmp ugt ptr %ptr.addr.0120.i.i, %add.ptr1.i.i
  br i1 %cmp44.not121.i.i, label %for.cond.preheader.i.i.check_heap_object.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.check_heap_object.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

if.then40.i.i:                                    ; preds = %PageReserved.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.19, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef 0, i32 noundef %n) #11
  unreachable

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %ptr.addr.0122.i.i = phi ptr [ %ptr.addr.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ptr.addr.0120.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %ptr.addr.0122.i.i to i32
  %sub.i108.i.i = add i32 %31, 1073741824
  %shr.i109.i.i = lshr i32 %sub.i108.i.i, 12
  %32 = getelementptr %struct.page, ptr %30, i32 %shr.i109.i.i, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i110.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i110.i.i)
  %tobool.not.i.i111.i.i = icmp eq i32 %and.i.i110.i.i, 0
  br i1 %tobool.not.i.i111.i.i, label %if.end.i.i115.i.i, label %if.then.i.i113.i.i, !prof !62

if.then.i.i113.i.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i112.i.i = add i32 %34, -1
  br label %virt_to_head_page.exit117.i.i

if.end.i.i115.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i114.i.i = getelementptr %struct.page, ptr %30, i32 %shr.i109.i.i
  %35 = ptrtoint ptr %add.ptr.i114.i.i to i32
  br label %virt_to_head_page.exit117.i.i

virt_to_head_page.exit117.i.i:                    ; preds = %if.end.i.i115.i.i, %if.then.i.i113.i.i
  %retval.0.i.i116.i.i = phi i32 [ %sub.i.i112.i.i, %if.then.i.i113.i.i ], [ %35, %if.end.i.i115.i.i ]
  %36 = inttoptr i32 %retval.0.i.i116.i.i to ptr
  br i1 %tobool32.not.i.i, label %virt_to_head_page.exit117.i.i.if.end52.i.i_crit_edge, label %land.lhs.true47.i.i

virt_to_head_page.exit117.i.i.if.end52.i.i_crit_edge: ; preds = %virt_to_head_page.exit117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i

land.lhs.true47.i.i:                              ; preds = %virt_to_head_page.exit117.i.i
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp.i.not.i103.i.i = icmp eq i32 %38, -1
  br i1 %cmp.i.not.i103.i.i, label %if.then.i104.i.i, label %PageReserved.exit107.i.i, !prof !67

if.then.i104.i.i:                                 ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = inttoptr i32 %retval.0.i.i116.i.i to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.22) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #7, !srcloc !68
  unreachable

PageReserved.exit107.i.i:                         ; preds = %land.lhs.true47.i.i
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %36, align 4
  %42 = and i32 %41, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool49.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool49.not.i.i, label %if.then50.i.i, label %PageReserved.exit107.i.i.if.end52.i.i_crit_edge

PageReserved.exit107.i.i.if.end52.i.i_crit_edge:  ; preds = %PageReserved.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i.i

if.then50.i.i:                                    ; preds = %PageReserved.exit107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.20, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef 0, i32 noundef %n) #11
  unreachable

if.end52.i.i:                                     ; preds = %PageReserved.exit107.i.i.if.end52.i.i_crit_edge, %virt_to_head_page.exit117.i.i.if.end52.i.i_crit_edge
  br i1 %cmp35.i.i, label %land.lhs.true54.i.i, label %if.end52.i.i.for.inc.i.i_crit_edge

if.end52.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true54.i.i:                              ; preds = %if.end52.i.i
  %sub.ptr.rhs.cast56.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub57.i.i = sub i32 %retval.0.i.i116.i.i, %sub.ptr.rhs.cast56.i.i
  %sub.ptr.div58.i.i = sdiv exact i32 %sub.ptr.sub57.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add59.i.i = add i32 %43, %sub.ptr.div58.i.i
  %call60.i.i = tail call i32 @get_pfnblock_flags_mask(ptr noundef %36, i32 noundef %add59.i.i, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call60.i.i)
  %cmp61.i.i = icmp eq i32 %call60.i.i, 4
  br i1 %cmp61.i.i, label %land.lhs.true54.i.i.for.inc.i.i_crit_edge, label %if.then62.i.i

land.lhs.true54.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.21, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef 0, i32 noundef %n) #11
  unreachable

for.inc.i.i:                                      ; preds = %land.lhs.true54.i.i.for.inc.i.i_crit_edge, %if.end52.i.i.for.inc.i.i_crit_edge
  %ptr.addr.0.i.i = getelementptr i8, ptr %ptr.addr.0122.i.i, i32 4096
  %cmp44.not.i.i = icmp ugt ptr %ptr.addr.0.i.i, %add.ptr1.i.i
  br i1 %cmp44.not.i.i, label %for.inc.i.i.check_heap_object.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.check_heap_object.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_heap_object.exit

check_heap_object.exit:                           ; preds = %for.inc.i.i.check_heap_object.exit_crit_edge, %for.cond.preheader.i.i.check_heap_object.exit_crit_edge, %virt_to_head_page.exit.i.i.check_heap_object.exit_crit_edge, %if.end10.i.i.check_heap_object.exit_crit_edge, %if.end5.i.i.check_heap_object.exit_crit_edge, %if.then.i19.i.check_heap_object.exit_crit_edge, %if.then6.i, %land.lhs.true2.i.check_heap_object.exit_crit_edge, %land.lhs.true.i.check_heap_object.exit_crit_edge, %sw.epilog.check_heap_object.exit_crit_edge
  %cmp.not.i.i26 = icmp ult ptr %ptr, @_etext
  %add.i.i27 = add i32 %0, %n
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i27, i32 ptrtoint (ptr @_stext to i32))
  %cmp1.not.i.i = icmp ugt i32 %add.i.i27, ptrtoint (ptr @_stext to i32)
  %or.cond.i.i28 = and i1 %cmp.not.i.i26, %cmp1.not.i.i
  br i1 %or.cond.i.i28, label %if.then.i30, label %if.end.i32

if.then.i30:                                      ; preds = %check_heap_object.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i29 = sub i32 %0, ptrtoint (ptr @_stext to i32)
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.23, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef %sub.i29, i32 noundef %n) #11
  unreachable

if.end.i32:                                       ; preds = %check_heap_object.exit
  %call1.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @_stext to i32)) #7
  %44 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call1.i, i32 -2130706432, i32 8454144) #13, !srcloc !69
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 ptrtoint (ptr @_stext to i32))
  %cmp.i31 = icmp eq i32 %44, ptrtoint (ptr @_stext to i32)
  br i1 %cmp.i31, label %if.end.i32.return_crit_edge, label %if.end4.i

if.end.i32.return_crit_edge:                      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i:                                        ; preds = %if.end.i32
  %call8.i = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @_etext to i32)) #7
  %45 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %call8.i, i32 -2130706432, i32 8454144) #13, !srcloc !69
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %0)
  %cmp.not.i31.i = icmp ugt i32 %45, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i27, i32 %44)
  %cmp1.not.i33.i = icmp ugt i32 %add.i.i27, %44
  %or.cond.i34.i = and i1 %cmp1.not.i33.i, %cmp.not.i31.i
  br i1 %or.cond.i34.i, label %if.then11.i, label %if.end4.i.return_crit_edge

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then11.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub13.i = sub i32 %0, %44
  call void @__asan_handle_no_return()
  tail call void @usercopy_abort(ptr noundef nonnull @.str.24, ptr noundef null, i1 noundef zeroext %to_user, i32 noundef %sub13.i, i32 noundef %n) #11
  unreachable

return:                                           ; preds = %if.end4.i.return_crit_edge, %if.end.i32.return_crit_edge, %check_bogus_address.exit.return_crit_edge, %check_bogus_address.exit.return_crit_edge54, %arch_static_branch.exit.return_crit_edge, %entry
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @check_stack_object(ptr noundef readnone %obj, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !52) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16384
  %add.ptr2 = getelementptr i8, ptr %obj, i32 %len
  %cmp.not = icmp ugt ptr %add.ptr2, %5
  %cmp3.not = icmp ugt ptr %add.ptr, %obj
  %or.cond = and i1 %cmp.not, %cmp3.not
  %cmp4 = icmp ugt ptr %5, %obj
  %cmp7 = icmp ult ptr %add.ptr, %add.ptr2
  %or.cond27 = or i1 %cmp4, %cmp7
  %spec.select = select i1 %or.cond27, i32 -1, i32 2
  %retval.0 = select i1 %or.cond, i32 %spec.select, i32 0
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @parse_hardened_usercopy(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtobool(ptr noundef %str, ptr noundef nonnull @enable_checks) #7
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_hardened_usercopy() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_checks, align 1, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @static_key_enable(ptr noundef nonnull @bypass_usercopy_checks) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_heap_object(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree noinline nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../mm/usercopy.c", i32 76, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/usercopy.c", i32 88, i32 2}
!14 = !{ptr @.str.11, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @usercopy_abort._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @usercopy_abort._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../mm/usercopy.c", i32 283, i32 18}
!19 = !{ptr @__ksymtab___check_object_size, !20, !"__ksymtab___check_object_size", i1 false, i1 false}
!20 = !{!"../mm/usercopy.c", i32 292, i32 1}
!21 = !{ptr @__setup_parse_hardened_usercopy, !22, !"__setup_parse_hardened_usercopy", i1 false, i1 false}
!22 = !{!"../mm/usercopy.c", i32 301, i32 1}
!23 = !{ptr @__initcall__kmod_usercopy__295_310_set_hardened_usercopy7, !24, !"__initcall__kmod_usercopy__295_310_set_hardened_usercopy7", i1 false, i1 false}
!24 = !{!"../mm/usercopy.c", i32 310, i32 1}
!25 = !{ptr @bypass_usercopy_checks, !26, !"bypass_usercopy_checks", i1 false, i1 false}
!26 = !{!"../mm/usercopy.c", i32 248, i32 8}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../mm/usercopy.c", i32 153, i32 18}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../mm/usercopy.c", i32 157, i32 18}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../mm/usercopy.c", i32 179, i32 19}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../mm/usercopy.c", i32 210, i32 18}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../mm/usercopy.c", i32 215, i32 19}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../mm/usercopy.c", i32 218, i32 19}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../mm/usercopy.c", i32 126, i32 18}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../mm/usercopy.c", i32 144, i32 18}
!49 = !{ptr @__setup_str_parse_hardened_usercopy, !22, !"__setup_str_parse_hardened_usercopy", i1 false, i1 false}
!50 = !{ptr @enable_checks, !51, !"enable_checks", i1 false, i1 false}
!51 = !{!"../mm/usercopy.c", i32 294, i32 13}
!52 = !{!"sp"}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2154932662, i64 2154937201, i64 2154932699, i64 2154932755, i64 2154932789, i64 2154932813, i64 2154932854, i64 2154932875, i64 2154932903, i64 2154932937}
!64 = !{i64 2148273760, i64 2148273765, i64 2148273778, i64 2148273822, i64 2148273856, i64 2148273877}
!65 = !{i64 2150228081, i64 2150228572, i64 2150228118, i64 2150228174, i64 2150228208, i64 2150228232, i64 2150228273, i64 2150228294, i64 2150228322, i64 2150228356}
!66 = !{!"branch_weights", i32 4001, i32 1}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 2150620145, i64 2150620636, i64 2150620182, i64 2150620238, i64 2150620272, i64 2150620296, i64 2150620337, i64 2150620358, i64 2150620386, i64 2150620420}
!69 = !{i64 2149080178, i64 2149080201, i64 2149080233, i64 2149080265, i64 2149080303, i64 2149080333}
!70 = !{i8 0, i8 2}
