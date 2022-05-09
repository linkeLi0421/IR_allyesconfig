; ModuleID = '/llk/IR_all_yes/kernel/kexec_core.c_pt.bc'
source_filename = "../kernel/kexec_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kexec_crash_loaded\22, \22a\22\09"
module asm "\09.weak\09__crc_kexec_crash_loaded\09\09\09\09"
module asm "\09.long\09__crc_kexec_crash_loaded\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kexec_crash_loaded:\09\09\09\09\09"
module asm "\09.asciz \09\22kexec_crash_loaded\22\09\09\09\09\09"
module asm "__kstrtabns_kexec_crash_loaded:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
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
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kimage = type { i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [16 x %struct.kexec_segment], %struct.list_head, %struct.list_head, %struct.list_head, i32, i8, %struct.kimage_arch, ptr, i32, i32 }
%struct.kexec_segment = type { %union.anon.108, i32, i32, i32 }
%union.anon.108 = type { ptr }
%struct.kimage_arch = type { i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.73, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.73 = type { %struct.atomic_t }
%struct.pt_regs = type { [18 x i32] }
%struct.elf_prstatus = type { %struct.elf_prstatus_common, [18 x i32], i32 }
%struct.elf_prstatus_common = type { %struct.elf_siginfo, i16, i32, i32, i32, i32, i32, i32, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval, %struct.__kernel_old_timeval }
%struct.elf_siginfo = type { i32, i32, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kexec_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@kexec_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kexec_mutex, i64 52), ptr getelementptr (i8, ptr @kexec_mutex, i64 52) }, ptr @kexec_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kexec_mutex\00", [20 x i8] zeroinitializer }, align 32
@kexec_in_progress = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Crash kernel\00", [19 x i8] zeroinitializer }, align 32
@crashk_res = dso_local global { %struct.resource, [32 x i8] } { %struct.resource { i32 0, i32 0, ptr @.str.2, i32 -2130705920, i32 1, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@crashk_low_res = dso_local global { %struct.resource, [32 x i8] } { %struct.resource { i32 0, i32 0, ptr @.str.2, i32 -2130705920, i32 1, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@crash_kexec_post_notifiers = external dso_local local_unnamed_addr global i8, align 1
@panic_on_oops = external dso_local local_unnamed_addr global i32, align 4
@kexec_crash_image = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_kexec_crash_loaded = external dso_local constant [0 x i8], align 1
@__kstrtabns_kexec_crash_loaded = external dso_local constant [0 x i8], align 1
@__ksymtab_kexec_crash_loaded = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kexec_crash_loaded to i32), ptr @__kstrtab_kexec_crash_loaded, ptr @__kstrtabns_kexec_crash_loaded }, section "___ksymtab_gpl+kexec_crash_loaded", align 4
@kimage_crash_copy_vmcoreinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014kexec_core: Could not allocate vmcoreinfo buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kimage_crash_copy_vmcoreinfo\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/kexec_core.c\00", [44 x i8] zeroinitializer }, align 32
@kimage_crash_copy_vmcoreinfo._entry_ptr = internal global ptr @kimage_crash_copy_vmcoreinfo._entry, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@kimage_crash_copy_vmcoreinfo._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014kexec_core: Could not vmap vmcoreinfo buffer\0A\00", [48 x i8] zeroinitializer }, align 32
@kimage_crash_copy_vmcoreinfo._entry_ptr.8 = internal global ptr @kimage_crash_copy_vmcoreinfo._entry.6, section ".printk_index", align 4
@panic_cpu = external dso_local global %struct.atomic_t, align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"System RAM\00", [21 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@crash_notes = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CORE\00", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_kexec_core__310_1118_crash_notes_memory_init4 = internal global ptr @crash_notes_memory_init, section ".initcall4.init", align 4
@kexec_image = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kexec reboot\00", [19 x i8] zeroinitializer }, align 32
@kernel_kexec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015kexec_core: Starting new kernel\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kernel_kexec\00", [19 x i8] zeroinitializer }, align 32
@kernel_kexec._entry_ptr = internal global ptr @kernel_kexec._entry, section ".printk_index", align 4
@kexec_load_disabled = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@arch_phys_to_idmap_offset = external dso_local local_unnamed_addr global i64, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_set = external dso_local global %struct.tracepoint, align 4
@crash_notes_memory_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014kexec_core: Memory allocation for saving cpu register states failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"crash_notes_memory_init\00", [40 x i8] zeroinitializer }, align 32
@crash_notes_memory_init._entry_ptr = internal global ptr @crash_notes_memory_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"kexec_mutex\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 49, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"kexec_in_progress\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 55, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 60, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"crashk_res\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 59, i32 17 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"crashk_low_res\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 66, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"kexec_crash_image\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 937, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 520, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 525, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1050, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"crash_notes\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 52, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1082, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"kexec_image\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 936, i32 16 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1169, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1179, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"kexec_load_disabled\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 938, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 440, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 44, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 230, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 214, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 156, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [23 x i8] c"../kernel/kexec_core.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 1113, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_kexec_core__310_1118_crash_notes_memory_init4, ptr @__ksymtab_kexec_crash_loaded, ptr @crash_notes_memory_init._entry, ptr @crash_notes_memory_init._entry_ptr, ptr @kernel_kexec._entry, ptr @kernel_kexec._entry_ptr, ptr @kimage_crash_copy_vmcoreinfo._entry, ptr @kimage_crash_copy_vmcoreinfo._entry.6, ptr @kimage_crash_copy_vmcoreinfo._entry_ptr, ptr @kimage_crash_copy_vmcoreinfo._entry_ptr.8, ptr @.str, ptr @kexec_mutex, ptr @.str.1, ptr @kexec_in_progress, ptr @.str.2, ptr @crashk_res, ptr @crashk_low_res, ptr @kexec_crash_image, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @crash_notes, ptr @.str.10, ptr @kexec_image, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @kexec_load_disabled, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kexec_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kexec_in_progress to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crashk_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crashk_low_res to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kexec_crash_image to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kimage_crash_copy_vmcoreinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kimage_crash_copy_vmcoreinfo._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_notes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kexec_image to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernel_kexec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kexec_load_disabled to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crash_notes_memory_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kexec_should_crash(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @crash_kexec_post_notifiers to i32))
  %0 = load i8, ptr @crash_kexec_post_notifiers, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %4, 15728640
  %5 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i16 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i16 to ptr
  %preempt_count.i17 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i17, align 4
  %and2 = and i32 %8, 983040
  %or = or i32 %and2, %and
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i18 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i18 to ptr
  %preempt_count.i19 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i19, align 4
  %and4 = and i32 %12, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool6.not = icmp eq i32 %or5, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %pid = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 68
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false8

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %tgid.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 69
  %15 = ptrtoint ptr %tgid.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tgid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.not = icmp eq i32 %16, 1
  br i1 %cmp.i.not, label %lor.lhs.false8.return_crit_edge, label %lor.lhs.false11

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @panic_on_oops to i32))
  %17 = load i32, ptr @panic_on_oops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp ne i32 %17, 0
  %spec.select = zext i1 %tobool12.not to i32
  br label %return

return:                                           ; preds = %lor.lhs.false11, %lor.lhs.false8.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %lor.lhs.false8.return_crit_edge ], [ 1, %lor.lhs.false.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ %spec.select, %lor.lhs.false11 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kexec_crash_loaded() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kexec_crash_image, align 4
  %tobool = icmp ne ptr %0, null
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sanity_check_segment_list(ptr nocapture noundef readonly %image) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_segments1 = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 7
  %0 = ptrtoint ptr %nr_segments1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_segments1, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %2 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp199.not = icmp eq i32 %1, 0
  br i1 %cmp199.not, label %entry.cleanup122_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup122_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.0200, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.cond13.preheader:                             ; preds = %for.cond
  br i1 %cmp199.not, label %for.cond13.preheader.cleanup122_crit_edge, label %for.cond13.preheader.for.body15_crit_edge

for.cond13.preheader.for.body15_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body15

for.cond13.preheader.cleanup122_crit_edge:        ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0200 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mem = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.0200, i32 2
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem, align 4
  %memsz = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.0200, i32 3
  %5 = ptrtoint ptr %memsz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %memsz, align 4
  %add = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add)
  %cmp4 = icmp ugt i32 %4, %add
  br i1 %cmp4, label %for.body.cleanup122_crit_edge, label %if.end

for.body.cleanup122_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

if.end:                                           ; preds = %for.body
  %and = and i32 %4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %add, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or.cond = select i1 %tobool.not, i1 %tobool6.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp9 = icmp ne i32 %add, -1
  %or.cond185 = select i1 %or.cond, i1 %cmp9, i1 false
  br i1 %or.cond185, label %for.cond, label %if.end.cleanup122_crit_edge

if.end.cleanup122_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.cond54.preheader:                             ; preds = %for.inc51
  br i1 %cmp199.not, label %for.cond54.preheader.cleanup122_crit_edge, label %for.cond54.preheader.for.body56_crit_edge

for.cond54.preheader.for.body56_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body56

for.cond54.preheader.cleanup122_crit_edge:        ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.body15:                                       ; preds = %for.inc51.for.body15_crit_edge, %for.cond13.preheader.for.body15_crit_edge
  %i.1205 = phi i32 [ %inc52, %for.inc51.for.body15_crit_edge ], [ 0, %for.cond13.preheader.for.body15_crit_edge ]
  %mem20 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.1205, i32 2
  %7 = ptrtoint ptr %mem20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mem20, align 4
  %memsz23 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.1205, i32 3
  %9 = ptrtoint ptr %memsz23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memsz23, align 4
  %add24 = add i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1205)
  %cmp26201.not = icmp eq i32 %i.1205, 0
  br i1 %cmp26201.not, label %for.body15.for.inc51_crit_edge, label %for.body15.for.body27_crit_edge

for.body15.for.body27_crit_edge:                  ; preds = %for.body15
  br label %for.body27

for.body15.for.inc51_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51

for.body27:                                       ; preds = %for.inc43.for.body27_crit_edge, %for.body15.for.body27_crit_edge
  %j.0202 = phi i32 [ %inc44, %for.inc43.for.body27_crit_edge ], [ 0, %for.body15.for.body27_crit_edge ]
  %mem30 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %j.0202, i32 2
  %11 = ptrtoint ptr %mem30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %12)
  %cmp35 = icmp ugt i32 %add24, %12
  br i1 %cmp35, label %land.lhs.true, label %for.body27.for.inc43_crit_edge

for.body27.for.inc43_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc43

land.lhs.true:                                    ; preds = %for.body27
  %memsz33 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %j.0202, i32 3
  %13 = ptrtoint ptr %memsz33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %memsz33, align 4
  %add34 = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add34)
  %cmp36 = icmp ult i32 %8, %add34
  br i1 %cmp36, label %land.lhs.true.cleanup122_crit_edge, label %land.lhs.true.for.inc43_crit_edge

land.lhs.true.for.inc43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc43

land.lhs.true.cleanup122_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.inc43:                                        ; preds = %land.lhs.true.for.inc43_crit_edge, %for.body27.for.inc43_crit_edge
  %inc44 = add nuw i32 %j.0202, 1
  %exitcond223.not = icmp eq i32 %inc44, %i.1205
  br i1 %exitcond223.not, label %for.inc43.for.inc51_crit_edge, label %for.inc43.for.body27_crit_edge

for.inc43.for.body27_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body27

for.inc43.for.inc51_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc51

for.inc51:                                        ; preds = %for.inc43.for.inc51_crit_edge, %for.body15.for.inc51_crit_edge
  %inc52 = add nuw i32 %i.1205, 1
  %exitcond224.not = icmp eq i32 %inc52, %1
  br i1 %exitcond224.not, label %for.cond54.preheader, label %for.inc51.for.body15_crit_edge

for.inc51.for.body15_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body15

for.cond54:                                       ; preds = %for.body56
  %inc66 = add nuw i32 %i.2208, 1
  %exitcond225.not = icmp eq i32 %inc66, %1
  br i1 %exitcond225.not, label %for.cond68.preheader, label %for.cond54.for.body56_crit_edge

for.cond54.for.body56_crit_edge:                  ; preds = %for.cond54
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body56

for.cond68.preheader:                             ; preds = %for.cond54
  br i1 %cmp199.not, label %for.cond68.preheader.cleanup122_crit_edge, label %for.body70.lr.ph

for.cond68.preheader.cleanup122_crit_edge:        ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.body70.lr.ph:                                 ; preds = %for.cond68.preheader
  %div183 = lshr i32 %2, 1
  br label %for.body70

for.body56:                                       ; preds = %for.cond54.for.body56_crit_edge, %for.cond54.preheader.for.body56_crit_edge
  %i.2208 = phi i32 [ %inc66, %for.cond54.for.body56_crit_edge ], [ 0, %for.cond54.preheader.for.body56_crit_edge ]
  %bufsz = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.2208, i32 1
  %15 = ptrtoint ptr %bufsz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bufsz, align 4
  %memsz61 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.2208, i32 3
  %17 = ptrtoint ptr %memsz61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memsz61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp62 = icmp ugt i32 %16, %18
  br i1 %cmp62, label %for.body56.cleanup122_crit_edge, label %for.cond54

for.body56.cleanup122_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.body70:                                       ; preds = %if.end77.for.body70_crit_edge, %for.body70.lr.ph
  %i.3211 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc86, %if.end77.for.body70_crit_edge ]
  %total_pages.0210 = phi i32 [ 0, %for.body70.lr.ph ], [ %add84, %if.end77.for.body70_crit_edge ]
  %memsz73 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.3211, i32 3
  %19 = ptrtoint ptr %memsz73 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %memsz73, align 4
  %sub = add i32 %20, 4095
  %shr = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %div183)
  %cmp75 = icmp ugt i32 %shr, %div183
  br i1 %cmp75, label %for.body70.cleanup122_crit_edge, label %if.end77

for.body70.cleanup122_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

if.end77:                                         ; preds = %for.body70
  %add84 = add i32 %shr, %total_pages.0210
  %inc86 = add nuw i32 %i.3211, 1
  %exitcond226.not = icmp eq i32 %inc86, %1
  br i1 %exitcond226.not, label %for.end87, label %if.end77.for.body70_crit_edge

if.end77.for.body70_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body70

for.end87:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %div183)
  %cmp89 = icmp ugt i32 %add84, %div183
  br i1 %cmp89, label %for.end87.cleanup122_crit_edge, label %if.end91

for.end87.cleanup122_crit_edge:                   ; preds = %for.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

if.end91:                                         ; preds = %for.end87
  %type = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 13
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp92 = icmp slt i8 %bf.load, 0
  br i1 %cmp92, label %for.body96.lr.ph, label %if.end91.cleanup122_crit_edge

if.end91.cleanup122_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.body96.lr.ph:                                 ; preds = %if.end91
  %22 = load i32, ptr @crashk_res, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %23 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %24 = trunc i64 %23 to i32
  %addr.addr.0.i.i = add i32 %22, %24
  br label %for.body96

for.cond94:                                       ; preds = %cleanup114
  %inc119 = add nuw i32 %i.4213, 1
  %exitcond227.not = icmp eq i32 %inc119, %1
  br i1 %exitcond227.not, label %for.cond94.cleanup122_crit_edge, label %for.cond94.for.body96_crit_edge

for.cond94.for.body96_crit_edge:                  ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body96

for.cond94.cleanup122_crit_edge:                  ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

for.body96:                                       ; preds = %for.cond94.for.body96_crit_edge, %for.body96.lr.ph
  %i.4213 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc119, %for.cond94.for.body96_crit_edge ]
  %mem101 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.4213, i32 2
  %25 = ptrtoint ptr %mem101 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem101, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %addr.addr.0.i.i)
  %cmp108 = icmp ult i32 %26, %addr.addr.0.i.i
  br i1 %cmp108, label %for.body96.cleanup122_crit_edge, label %cleanup114

for.body96.cleanup122_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

cleanup114:                                       ; preds = %for.body96
  %memsz104 = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.4213, i32 3
  %27 = ptrtoint ptr %memsz104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %memsz104, align 4
  %add105 = add i32 %26, -1
  %sub106 = add i32 %add105, %28
  %29 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %addr.addr.0.i.i187 = add i32 %29, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106, i32 %addr.addr.0.i.i187)
  %cmp111 = icmp ugt i32 %sub106, %addr.addr.0.i.i187
  br i1 %cmp111, label %cleanup114.cleanup122_crit_edge, label %for.cond94

cleanup114.cleanup122_crit_edge:                  ; preds = %cleanup114
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup122

cleanup122:                                       ; preds = %cleanup114.cleanup122_crit_edge, %for.body96.cleanup122_crit_edge, %for.cond94.cleanup122_crit_edge, %if.end91.cleanup122_crit_edge, %for.end87.cleanup122_crit_edge, %for.body70.cleanup122_crit_edge, %for.body56.cleanup122_crit_edge, %for.cond68.preheader.cleanup122_crit_edge, %land.lhs.true.cleanup122_crit_edge, %for.cond54.preheader.cleanup122_crit_edge, %if.end.cleanup122_crit_edge, %for.body.cleanup122_crit_edge, %for.cond13.preheader.cleanup122_crit_edge, %entry.cleanup122_crit_edge
  %retval.8 = phi i32 [ -22, %for.end87.cleanup122_crit_edge ], [ 0, %if.end91.cleanup122_crit_edge ], [ 0, %entry.cleanup122_crit_edge ], [ 0, %for.cond13.preheader.cleanup122_crit_edge ], [ 0, %for.cond54.preheader.cleanup122_crit_edge ], [ 0, %for.cond68.preheader.cleanup122_crit_edge ], [ -99, %cleanup114.cleanup122_crit_edge ], [ 0, %for.cond94.cleanup122_crit_edge ], [ -99, %for.body96.cleanup122_crit_edge ], [ -22, %for.body70.cleanup122_crit_edge ], [ -22, %for.body56.cleanup122_crit_edge ], [ -22, %land.lhs.true.cleanup122_crit_edge ], [ -99, %for.body.cleanup122_crit_edge ], [ -99, %if.end.cleanup122_crit_edge ]
  ret i32 %retval.8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @do_kimage_alloc_init() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 336) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i.i, align 8
  %entry2 = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %entry2, align 4
  %last_entry = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %last_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %last_entry, align 8
  %control_page = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 12
  %4 = ptrtoint ptr %control_page to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %control_page, align 8
  %type = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %type, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %type, align 4
  %control_pages = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %control_pages to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %control_pages, ptr %control_pages, align 8
  %prev.i = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %control_pages, ptr %prev.i, align 4
  %dest_pages = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %dest_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %dest_pages, ptr %dest_pages, align 8
  %prev.i15 = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dest_pages, ptr %prev.i15, align 4
  %unusable_pages = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %unusable_pages to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %unusable_pages, ptr %unusable_pages, align 8
  %prev.i16 = getelementptr inbounds %struct.kimage, ptr %call7.i.i, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %unusable_pages, ptr %prev.i16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kimage_is_destination_range(ptr nocapture noundef readonly %image, i32 noundef %start, i32 noundef %end) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_segments = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 7
  %0 = ptrtoint ptr %nr_segments to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_segments, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %entry.cleanup6_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup6

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.critedge.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mem = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.014, i32 2
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %end)
  %cmp3 = icmp ult i32 %3, %end
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc.critedge_crit_edge

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %memsz = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.014, i32 3
  %4 = ptrtoint ptr %memsz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %memsz, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start)
  %cmp4 = icmp ugt i32 %add, %start
  br i1 %cmp4, label %land.lhs.true.cleanup6_crit_edge, label %land.lhs.true.for.inc.critedge_crit_edge

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.critedge

land.lhs.true.cleanup6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup6

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.critedge.cleanup6_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.critedge.cleanup6_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.critedge.cleanup6_crit_edge, %land.lhs.true.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup6_crit_edge ], [ 0, %for.inc.critedge.cleanup6_crit_edge ], [ 1, %land.lhs.true.cleanup6_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kimage_free_page_list(ptr noundef readonly %list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not19 = icmp eq ptr %1, %list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in20 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %page.0 = getelementptr i8, ptr %.pn.in20, i32 -4
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @kimage_free_pages(ptr noundef %page.0)
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kimage_free_pages(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #15
  br label %for.body

for.body:                                         ; preds = %ClearPageReserved.exit.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %ClearPageReserved.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.page, ptr %page, i32 %i.09
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %for.body.if.then.i_crit_edge

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %for.body
  %5 = getelementptr %struct.page, ptr %page, i32 %i.09, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !75

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.14) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !76
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageReserved.exit, !prof !77

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.15) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !78
  unreachable

ClearPageReserved.exit:                           ; preds = %do.body7.i
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %add.ptr) #15
  %inc = add i32 %i.09, 1
  %i.0.highbits = lshr i32 %inc, %1
  %cmp = icmp eq i32 %i.0.highbits, 0
  br i1 %cmp, label %ClearPageReserved.exit.for.body_crit_edge, label %for.end

ClearPageReserved.exit.for.body_crit_edge:        ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__free_pages(ptr noundef %page, i32 noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kimage_alloc_control_pages(ptr noundef %image, i32 noundef %order) local_unnamed_addr #2 align 64 {
entry:
  %extra_pages.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 13
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %trunc = icmp sgt i8 %bf.load, -1
  br i1 %trunc, label %sw.bb, label %sw.bb1

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %extra_pages.i) #15
  %1 = getelementptr inbounds %struct.list_head, ptr %extra_pages.i, i32 0, i32 1
  %shl.i = shl nuw i32 1, %order
  %2 = ptrtoint ptr %extra_pages.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %extra_pages.i, ptr %extra_pages.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %extra_pages.i, ptr %1, align 4
  %nr_segments.i.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %sw.bb
  %call.i = call fastcc ptr @kimage_alloc_pages(i32 noundef 68800, i32 noundef %order) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i.if.end15.i_crit_edge, label %if.end.i

do.body.i.if.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %5
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %6 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %7 = lshr i64 %6, 12
  %8 = trunc i64 %7 to i32
  %conv2.i.i = add i32 %add.i.i, %8
  %add.i = add i32 %conv2.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048574, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 1048574
  br i1 %cmp.i, label %if.end.i.if.then6.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then6.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %shl3.i = shl nuw i32 %add.i, 12
  %shl2.i = shl i32 %conv2.i.i, 12
  %9 = ptrtoint ptr %nr_segments.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_segments.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp13.not.i.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.for.body.i.i_crit_edge

lor.lhs.false.i.for.body.i.i_crit_edge:           ; preds = %lor.lhs.false.i
  br label %for.body.i.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

for.body.i.i:                                     ; preds = %for.inc.critedge.i.i.for.body.i.i_crit_edge, %lor.lhs.false.i.for.body.i.i_crit_edge
  %i.014.i.i = phi i32 [ %inc.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i.i_crit_edge ]
  %mem.i.i = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.014.i.i, i32 2
  %11 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %shl3.i)
  %cmp3.i.i = icmp ult i32 %12, %shl3.i
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.critedge.i.i_crit_edge

for.body.i.i.for.inc.critedge.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.critedge.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %memsz.i.i = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.014.i.i, i32 3
  %13 = ptrtoint ptr %memsz.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %memsz.i.i, align 4
  %add.i29.i = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i29.i, i32 %shl2.i)
  %cmp4.i.i = icmp ugt i32 %add.i29.i, %shl2.i
  br i1 %cmp4.i.i, label %land.lhs.true.i.i.if.then6.i_crit_edge, label %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge

land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.critedge.i.i

land.lhs.true.i.i.if.then6.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

for.inc.critedge.i.i:                             ; preds = %land.lhs.true.i.i.for.inc.critedge.i.i_crit_edge, %for.body.i.i.for.inc.critedge.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.inc.critedge.i.i.cleanup.i_crit_edge, label %for.inc.critedge.i.i.for.body.i.i_crit_edge

for.inc.critedge.i.i.for.body.i.i_crit_edge:      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.critedge.i.i.cleanup.i_crit_edge:         ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then6.i:                                       ; preds = %land.lhs.true.i.i.if.then6.i_crit_edge, %if.end.i.if.then6.i_crit_edge
  %15 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %extra_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extra_pages.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %15, ptr noundef nonnull %extra_pages.i, ptr noundef %17) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.i.cleanup.i_crit_edge

if.then6.i.cleanup.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %15, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %extra_pages.i, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %extra_pages.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %15, ptr %extra_pages.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.then6.i.cleanup.i_crit_edge, %for.inc.critedge.i.i.cleanup.i_crit_edge
  %pages.1.i = phi ptr [ null, %if.then6.i.cleanup.i_crit_edge ], [ null, %if.end.i.i.i ], [ %call.i, %for.inc.critedge.i.i.cleanup.i_crit_edge ]
  %tobool11.not.i = icmp eq ptr %pages.1.i, null
  br i1 %tobool11.not.i, label %cleanup.i.do.body.i_crit_edge, label %cleanup.i.if.then13.i_crit_edge

cleanup.i.if.then13.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then13.i:                                      ; preds = %cleanup.i.if.then13.i_crit_edge, %lor.lhs.false.i.if.then13.i_crit_edge
  %pages.14354.i = phi ptr [ %call.i, %lor.lhs.false.i.if.then13.i_crit_edge ], [ %pages.1.i, %cleanup.i.if.then13.i_crit_edge ]
  %22 = getelementptr inbounds %struct.page, ptr %pages.14354.i, i32 0, i32 1
  %control_pages.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 9
  %23 = ptrtoint ptr %control_pages.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %control_pages.i, align 4
  %call.i.i30.i = call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %control_pages.i, ptr noundef %24) #15
  br i1 %call.i.i30.i, label %if.end.i.i33.i, label %if.then13.i.if.end15.i_crit_edge

if.then13.i.if.end15.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.i

if.end.i.i33.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i31.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i31.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %22, align 4
  %prev3.i.i32.i = getelementptr inbounds %struct.page, ptr %pages.14354.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %control_pages.i, ptr %prev3.i.i32.i, align 4
  %28 = ptrtoint ptr %control_pages.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %22, ptr %control_pages.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i.i33.i, %if.then13.i.if.end15.i_crit_edge, %do.body.i.if.end15.i_crit_edge
  %pages.14347.i = phi ptr [ %pages.14354.i, %if.then13.i.if.end15.i_crit_edge ], [ %pages.14354.i, %if.end.i.i33.i ], [ null, %do.body.i.if.end15.i_crit_edge ]
  %29 = ptrtoint ptr %extra_pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extra_pages.i, align 4
  %cmp.not19.i.i = icmp eq ptr %30, %extra_pages.i
  br i1 %cmp.not19.i.i, label %if.end15.i.kimage_alloc_normal_control_pages.exit_crit_edge, label %if.end15.i.for.body.i35.i_crit_edge

if.end15.i.for.body.i35.i_crit_edge:              ; preds = %if.end15.i
  br label %for.body.i35.i

if.end15.i.kimage_alloc_normal_control_pages.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_alloc_normal_control_pages.exit

for.body.i35.i:                                   ; preds = %list_del.exit.i.i.for.body.i35.i_crit_edge, %if.end15.i.for.body.i35.i_crit_edge
  %.pn.in20.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i35.i_crit_edge ], [ %30, %if.end15.i.for.body.i35.i_crit_edge ]
  %page.0.i.i = getelementptr i8, ptr %.pn.in20.i.i, i32 -4
  %31 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i.i = load ptr, ptr %.pn.in20.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i35.i.list_del.exit.i.i_crit_edge

for.body.i35.i.list_del.exit.i.i_crit_edge:       ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i.i, align 4
  %34 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in20.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i35.i.list_del.exit.i.i_crit_edge
  %38 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call fastcc void @kimage_free_pages(ptr noundef %page.0.i.i) #15
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %extra_pages.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.kimage_alloc_normal_control_pages.exit_crit_edge, label %list_del.exit.i.i.for.body.i35.i_crit_edge

list_del.exit.i.i.for.body.i35.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i35.i

list_del.exit.i.i.kimage_alloc_normal_control_pages.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_alloc_normal_control_pages.exit

kimage_alloc_normal_control_pages.exit:           ; preds = %list_del.exit.i.i.kimage_alloc_normal_control_pages.exit_crit_edge, %if.end15.i.kimage_alloc_normal_control_pages.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %extra_pages.i) #15
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %shl1.i = shl i32 4096, %order
  %control_page.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 12
  %40 = ptrtoint ptr %control_page.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %control_page.i, align 4
  %sub.i = add i32 %shl1.i, -1
  %add.i7 = add i32 %41, %sub.i
  %neg.i = sub i32 0, %shl1.i
  %and.i = and i32 %add.i7, %neg.i
  %sub4.i = add i32 %and.i, %sub.i
  %nr_segments.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 7
  br label %while.cond.i

while.cond.i:                                     ; preds = %for.end.i.while.cond.i_crit_edge, %sw.bb1
  %hole_end.0.i = phi i32 [ %sub4.i, %sw.bb1 ], [ %hole_end.3.i, %for.end.i.while.cond.i_crit_edge ]
  %hole_start.0.i = phi i32 [ %and.i, %sw.bb1 ], [ %hole_start.3.i, %for.end.i.while.cond.i_crit_edge ]
  %42 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %hole_end.0.i, i32 %42)
  %cmp.not.i = icmp ugt i32 %hole_end.0.i, %42
  br i1 %cmp.not.i, label %while.cond.i.sw.epilog_crit_edge, label %while.body.i

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

while.body.i:                                     ; preds = %while.cond.i
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 451, i32 noundef 0) #15
  %call.i.i = tail call i32 @__cond_resched() #15
  %43 = ptrtoint ptr %nr_segments.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp675.not.i = icmp eq i32 %44, 0
  br i1 %cmp675.not.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.for.body.i_crit_edge

while.body.i.for.body.i_crit_edge:                ; preds = %while.body.i
  br label %for.body.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.i.for.body.i_crit_edge
  %i.076.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.body.i.for.body.i_crit_edge ]
  %mem.i = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.076.i, i32 2
  %45 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem.i, align 4
  %memsz.i = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.076.i, i32 3
  %47 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %memsz.i, align 4
  %add9.i = add i32 %46, -1
  %sub10.i = add i32 %add9.i, %48
  call void @__sanitizer_cov_trace_cmp4(i32 %hole_end.0.i, i32 %46)
  %cmp11.not.i = icmp ult i32 %hole_end.0.i, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %hole_start.0.i, i32 %sub10.i)
  %cmp12.not.i = icmp ugt i32 %hole_start.0.i, %sub10.i
  %or.cond.i = select i1 %cmp11.not.i, i1 true, i1 %cmp12.not.i
  br i1 %or.cond.i, label %for.inc.i, label %for.end.split.loop.exit.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %44
  br i1 %exitcond.not.i, label %for.inc.i.while.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.while.end.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

for.end.split.loop.exit.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %add15.le.i = add i32 %sub10.i, %sub.i
  %and18.le.i = and i32 %add15.le.i, %neg.i
  %sub20.le.i = add i32 %and18.le.i, %sub.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.split.loop.exit.i, %while.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.076.i, %for.end.split.loop.exit.i ], [ 0, %while.body.i.for.end.i_crit_edge ]
  %hole_end.3.i = phi i32 [ %sub20.le.i, %for.end.split.loop.exit.i ], [ %hole_end.0.i, %while.body.i.for.end.i_crit_edge ]
  %hole_start.3.i = phi i32 [ %and18.le.i, %for.end.split.loop.exit.i ], [ %hole_start.0.i, %while.body.i.for.end.i_crit_edge ]
  %cmp24.i = icmp eq i32 %i.0.lcssa.i, %44
  br i1 %cmp24.i, label %for.end.i.while.end.i_crit_edge, label %for.end.i.while.cond.i_crit_edge

for.end.i.while.cond.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %for.end.i.while.end.i_crit_edge, %for.inc.i.while.end.i_crit_edge
  %hole_start.387.i = phi i32 [ %hole_start.0.i, %for.inc.i.while.end.i_crit_edge ], [ %hole_start.3.i, %for.end.i.while.end.i_crit_edge ]
  %hole_end.386.i = phi i32 [ %hole_end.0.i, %for.inc.i.while.end.i_crit_edge ], [ %hole_end.3.i, %for.end.i.while.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %49 = load ptr, ptr @mem_map, align 4
  %shr.i = lshr i32 %hole_start.387.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub26.i = sub i32 %shr.i, %50
  %add.ptr.i = getelementptr %struct.page, ptr %49, i32 %sub26.i
  %51 = ptrtoint ptr %control_page.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %hole_end.386.i, ptr %control_page.i, align 4
  %tobool.not.i8 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i8, label %while.end.i.sw.epilog_crit_edge, label %if.then32.i

while.end.i.sw.epilog_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then32.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call33.i = tail call ptr @page_address(ptr noundef nonnull %add.ptr.i) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32.i, %while.end.i.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %kimage_alloc_normal_control_pages.exit
  %pages.0 = phi ptr [ %pages.14347.i, %kimage_alloc_normal_control_pages.exit ], [ %add.ptr.i, %if.then32.i ], [ null, %while.end.i.sw.epilog_crit_edge ], [ null, %while.cond.i.sw.epilog_crit_edge ]
  ret ptr %pages.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kimage_crash_copy_vmcoreinfo(ptr noundef %image) local_unnamed_addr #2 align 64 {
entry:
  %vmcoreinfo_page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmcoreinfo_page) #15
  %type = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 13
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp.not = icmp slt i8 %bf.load, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kimage_alloc_control_pages(ptr noundef %image, i32 noundef 0)
  %1 = ptrtoint ptr %vmcoreinfo_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %vmcoreinfo_page, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #19
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %2, 512
  %call4 = call ptr @vmap(ptr noundef nonnull %vmcoreinfo_page, i32 noundef 1, i32 noundef 4, i32 noundef %or) #15
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #19
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %vmcoreinfo_data_copy = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 6
  %3 = ptrtoint ptr %vmcoreinfo_data_copy to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %vmcoreinfo_data_copy, align 4
  call void @crash_update_vmcoreinfo_safecopy(ptr noundef nonnull %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %do.end9 ], [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmcoreinfo_page) #15
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_update_vmcoreinfo_safecopy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @machine_kexec_post_load(ptr noundef %image) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @kimage_terminate(ptr nocapture noundef %image) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %entry1 = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 1
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entry1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr = getelementptr i32, ptr %1, i32 1
  %4 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %incdec.ptr, ptr %entry1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kimage_free(ptr noundef %image) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %image, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %vmcoreinfo_data_copy = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 6
  %0 = ptrtoint ptr %vmcoreinfo_data_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmcoreinfo_data_copy, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @crash_update_vmcoreinfo_safecopy(ptr noundef null) #15
  %2 = ptrtoint ptr %vmcoreinfo_data_copy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmcoreinfo_data_copy, align 4
  tail call void @vunmap(ptr noundef %3) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %dest_pages.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 10
  %4 = ptrtoint ptr %dest_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dest_pages.i, align 4
  %cmp.not19.i.i = icmp eq ptr %5, %dest_pages.i
  br i1 %cmp.not19.i.i, label %if.end5.kimage_free_page_list.exit.i_crit_edge, label %if.end5.for.body.i.i_crit_edge

if.end5.for.body.i.i_crit_edge:                   ; preds = %if.end5
  br label %for.body.i.i

if.end5.kimage_free_page_list.exit.i_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_free_page_list.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.end5.for.body.i.i_crit_edge
  %.pn.in20.i.i = phi ptr [ %.pn.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %5, %if.end5.for.body.i.i_crit_edge ]
  %page.0.i.i = getelementptr i8, ptr %.pn.in20.i.i, i32 -4
  %6 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i.i = load ptr, ptr %.pn.in20.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in20.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %13 = ptrtoint ptr %.pn.in20.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call fastcc void @kimage_free_pages(ptr noundef %page.0.i.i) #15
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %dest_pages.i
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.kimage_free_page_list.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

list_del.exit.i.i.kimage_free_page_list.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_free_page_list.exit.i

kimage_free_page_list.exit.i:                     ; preds = %list_del.exit.i.i.kimage_free_page_list.exit.i_crit_edge, %if.end5.kimage_free_page_list.exit.i_crit_edge
  %unusable_pages.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 11
  %15 = ptrtoint ptr %unusable_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unusable_pages.i, align 4
  %cmp.not19.i2.i = icmp eq ptr %16, %unusable_pages.i
  br i1 %cmp.not19.i2.i, label %kimage_free_page_list.exit.i.kimage_free_extra_pages.exit_crit_edge, label %kimage_free_page_list.exit.i.for.body.i7.i_crit_edge

kimage_free_page_list.exit.i.for.body.i7.i_crit_edge: ; preds = %kimage_free_page_list.exit.i
  br label %for.body.i7.i

kimage_free_page_list.exit.i.kimage_free_extra_pages.exit_crit_edge: ; preds = %kimage_free_page_list.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_free_extra_pages.exit

for.body.i7.i:                                    ; preds = %list_del.exit.i13.i.for.body.i7.i_crit_edge, %kimage_free_page_list.exit.i.for.body.i7.i_crit_edge
  %.pn.in20.i3.i = phi ptr [ %.pn.i5.i, %list_del.exit.i13.i.for.body.i7.i_crit_edge ], [ %16, %kimage_free_page_list.exit.i.for.body.i7.i_crit_edge ]
  %page.0.i4.i = getelementptr i8, ptr %.pn.in20.i3.i, i32 -4
  %17 = ptrtoint ptr %.pn.in20.i3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i5.i = load ptr, ptr %.pn.in20.i3.i, align 4
  %call.i.i.i6.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i3.i) #15
  br i1 %call.i.i.i6.i, label %if.end.i.i.i10.i, label %for.body.i7.i.list_del.exit.i13.i_crit_edge

for.body.i7.i.list_del.exit.i13.i_crit_edge:      ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i13.i

if.end.i.i.i10.i:                                 ; preds = %for.body.i7.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i8.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i3.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i8.i, align 4
  %20 = ptrtoint ptr %.pn.in20.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in20.i3.i, align 4
  %prev1.i.i.i.i9.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i9.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i13.i

list_del.exit.i13.i:                              ; preds = %if.end.i.i.i10.i, %for.body.i7.i.list_del.exit.i13.i_crit_edge
  %24 = ptrtoint ptr %.pn.in20.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i3.i, align 4
  %prev.i.i11.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i3.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i11.i, align 4
  tail call fastcc void @kimage_free_pages(ptr noundef %page.0.i4.i) #15
  %cmp.not.i12.i = icmp eq ptr %.pn.i5.i, %unusable_pages.i
  br i1 %cmp.not.i12.i, label %list_del.exit.i13.i.kimage_free_extra_pages.exit_crit_edge, label %list_del.exit.i13.i.for.body.i7.i_crit_edge

list_del.exit.i13.i.for.body.i7.i_crit_edge:      ; preds = %list_del.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i7.i

list_del.exit.i13.i.kimage_free_extra_pages.exit_crit_edge: ; preds = %list_del.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_free_extra_pages.exit

kimage_free_extra_pages.exit:                     ; preds = %list_del.exit.i13.i.kimage_free_extra_pages.exit_crit_edge, %kimage_free_page_list.exit.i.kimage_free_extra_pages.exit_crit_edge
  %26 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %image, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool6.not69 = icmp ne i32 %27, 0
  %and70 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool7.not71 = icmp eq i32 %and70, 0
  %or.cond72 = and i1 %tobool6.not69, %tobool7.not71
  br i1 %or.cond72, label %kimage_free_extra_pages.exit.for.body_crit_edge, label %kimage_free_extra_pages.exit.if.end26_crit_edge

kimage_free_extra_pages.exit.if.end26_crit_edge:  ; preds = %kimage_free_extra_pages.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

kimage_free_extra_pages.exit.for.body_crit_edge:  ; preds = %kimage_free_extra_pages.exit
  br label %for.body

for.body:                                         ; preds = %cond.end.for.body_crit_edge, %kimage_free_extra_pages.exit.for.body_crit_edge
  %28 = phi i32 [ %46, %cond.end.for.body_crit_edge ], [ %27, %kimage_free_extra_pages.exit.for.body_crit_edge ]
  %ind.074 = phi i32 [ %ind.159, %cond.end.for.body_crit_edge ], [ 0, %kimage_free_extra_pages.exit.for.body_crit_edge ]
  %ptr.073 = phi ptr [ %cond, %cond.end.for.body_crit_edge ], [ %image, %kimage_free_extra_pages.exit.for.body_crit_edge ]
  %and8 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %for.body
  %and11 = and i32 %ind.074, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then10.cond.true_crit_edge, label %if.then13

if.then10.cond.true_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i = lshr i32 %ind.074, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %30 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %31 = lshr i64 %30, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %33 = trunc i64 %31 to i32
  %34 = add i32 %32, %33
  %idx.ext.i.i = sub i32 %shr.i, %34
  %add.ptr.i.i = getelementptr %struct.page, ptr %29, i32 %idx.ext.i.i
  tail call fastcc void @kimage_free_pages(ptr noundef %add.ptr.i.i) #15
  br label %cond.true

if.else:                                          ; preds = %for.body
  %and15 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.cond.false_crit_edge, label %if.then17

if.else.cond.false_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i51 = lshr i32 %28, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %36 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %37 = lshr i64 %36, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = trunc i64 %37 to i32
  %40 = add i32 %38, %39
  %idx.ext.i.i52 = sub i32 %shr.i51, %40
  %add.ptr.i.i53 = getelementptr %struct.page, ptr %35, i32 %idx.ext.i.i52
  tail call fastcc void @kimage_free_pages(ptr noundef %add.ptr.i.i53) #15
  br label %cond.false

cond.true:                                        ; preds = %if.then13, %if.then10.cond.true_crit_edge
  %and22 = and i32 %28, -4096
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %41 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %42 = trunc i64 %41 to i32
  %addr.0.i.i.i = sub i32 %and22, %42
  %43 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.0.i.i.i, i32 -2130706432, i32 8454144) #20, !srcloc !79
  %44 = inttoptr i32 %43 to ptr
  br label %cond.end

cond.false:                                       ; preds = %if.then17, %if.else.cond.false_crit_edge
  %add.ptr = getelementptr i32, ptr %ptr.073, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %ind.159 = phi i32 [ %28, %cond.true ], [ %ind.074, %cond.false ]
  %cond = phi ptr [ %44, %cond.true ], [ %add.ptr, %cond.false ]
  %45 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool6.not = icmp ne i32 %46, 0
  %and = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool6.not, %tobool7.not
  br i1 %or.cond, label %cond.end.for.body_crit_edge, label %for.end

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cond.end
  %and23 = and i32 %ind.159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.end.if.end26_crit_edge, label %if.then25

for.end.if.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %shr.i54 = lshr i32 %ind.159, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %47 = load ptr, ptr @mem_map, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %48 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %49 = lshr i64 %48, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %51 = trunc i64 %49 to i32
  %52 = add i32 %50, %51
  %idx.ext.i.i55 = sub i32 %shr.i54, %52
  %add.ptr.i.i56 = getelementptr %struct.page, ptr %47, i32 %idx.ext.i.i55
  tail call fastcc void @kimage_free_pages(ptr noundef %add.ptr.i.i56) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %for.end.if.end26_crit_edge, %kimage_free_extra_pages.exit.if.end26_crit_edge
  tail call void @machine_kexec_cleanup(ptr noundef nonnull %image) #15
  %control_pages = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 9
  %53 = ptrtoint ptr %control_pages to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %control_pages, align 4
  %cmp.not19.i = icmp eq ptr %54, %control_pages
  br i1 %cmp.not19.i, label %if.end26.if.end29_crit_edge, label %if.end26.for.body.i_crit_edge

if.end26.for.body.i_crit_edge:                    ; preds = %if.end26
  br label %for.body.i

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end26.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %54, %if.end26.for.body.i_crit_edge ]
  %page.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -4
  %55 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i57, align 4
  %58 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %62 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @kimage_free_pages(ptr noundef %page.0.i) #15
  %cmp.not.i = icmp eq ptr %.pn.i, %control_pages
  br i1 %cmp.not.i, label %list_del.exit.i.if.end29_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.if.end29_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.end29:                                         ; preds = %list_del.exit.i.if.end29_crit_edge, %if.end26.if.end29_crit_edge
  tail call void @kfree(ptr noundef nonnull %image) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_kexec_cleanup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kimage_load_segment(ptr noundef %image, ptr nocapture noundef readonly %segment) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 13
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %trunc = icmp sgt i8 %bf.load, -1
  br i1 %trunc, label %sw.bb, label %sw.bb1

sw.bb:                                            ; preds = %entry
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %segment, align 4
  %..i = select i1 %tobool.not.i, ptr %3, ptr null
  %.148.i = select i1 %tobool.not.i, ptr null, ptr %3
  %bufsz.i = getelementptr inbounds %struct.kexec_segment, ptr %segment, i32 0, i32 1
  %4 = ptrtoint ptr %bufsz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bufsz.i, align 4
  %memsz.i = getelementptr inbounds %struct.kexec_segment, ptr %segment, i32 0, i32 3
  %6 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %memsz.i, align 4
  %mem.i = getelementptr inbounds %struct.kexec_segment, ptr %segment, i32 0, i32 2
  %8 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem.i, align 4
  %and.i.i = and i32 %9, -4096
  %or.i.i = or i32 %and.i.i, 1
  %entry2.i.i.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 1
  %10 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entry2.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i.i, label %sw.bb.if.end.i.i98.i_crit_edge, label %if.then.i.i97.i

sw.bb.if.end.i.i98.i_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i98.i

if.then.i.i97.i:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr.i.i.i = getelementptr i32, ptr %11, i32 1
  %14 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr.i.i.i, ptr %entry2.i.i.i, align 4
  br label %if.end.i.i98.i

if.end.i.i98.i:                                   ; preds = %if.then.i.i97.i, %sw.bb.if.end.i.i98.i_crit_edge
  %15 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entry2.i.i.i, align 4
  %last_entry.i.i.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 2
  %17 = ptrtoint ptr %last_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last_entry.i.i.i, align 4
  %cmp5.i.i.i = icmp eq ptr %16, %18
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end.i.i98.i.kimage_set_destination.exit.i_crit_edge

if.end.i.i98.i.kimage_set_destination.exit.i_crit_edge: ; preds = %if.end.i.i98.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kimage_set_destination.exit.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i98.i
  %call.i.i99.i = tail call fastcc ptr @kimage_alloc_page(ptr noundef %image, i32 noundef 3264, i32 noundef -1) #15
  %tobool.not.i.i.i = icmp eq ptr %call.i.i99.i, null
  br i1 %tobool.not.i.i.i, label %if.then6.i.i.i.sw.epilog_crit_edge, label %cleanup.thread.i.i.i

if.then6.i.i.i.sw.epilog_crit_edge:               ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cleanup.thread.i.i.i:                             ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i.i.i = tail call ptr @page_address(ptr noundef nonnull %call.i.i99.i) #15
  %19 = ptrtoint ptr %call9.i.i.i to i32
  %call.i.i.i100.i = tail call i32 @__virt_to_phys(i32 noundef %19) #15
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %20 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %21 = trunc i64 %20 to i32
  %addr.addr.0.i.i.i.i.i.i = add i32 %call.i.i.i100.i, %21
  %or.i.i.i = or i32 %addr.addr.0.i.i.i.i.i.i, 2
  %22 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entry2.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i.i, ptr %23, align 4
  store ptr %call9.i.i.i, ptr %entry2.i.i.i, align 4
  %add.ptr.i.i101.i = getelementptr i32, ptr %call9.i.i.i, i32 1023
  %25 = ptrtoint ptr %last_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i101.i, ptr %last_entry.i.i.i, align 4
  br label %kimage_set_destination.exit.i

kimage_set_destination.exit.i:                    ; preds = %cleanup.thread.i.i.i, %if.end.i.i98.i.kimage_set_destination.exit.i_crit_edge
  %26 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entry2.i.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i, ptr %27, align 4
  %29 = load ptr, ptr %entry2.i.i.i, align 4
  %incdec.ptr18.i.i.i = getelementptr i32, ptr %29, i32 1
  store ptr %incdec.ptr18.i.i.i, ptr %entry2.i.i.i, align 4
  %30 = ptrtoint ptr %incdec.ptr18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %incdec.ptr18.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not139.i = icmp eq i32 %7, 0
  br i1 %tobool3.not139.i, label %kimage_set_destination.exit.i.sw.epilog_crit_edge, label %kimage_set_destination.exit.i.while.body.i_crit_edge

kimage_set_destination.exit.i.while.body.i_crit_edge: ; preds = %kimage_set_destination.exit.i
  br label %while.body.i

kimage_set_destination.exit.i.sw.epilog_crit_edge: ; preds = %kimage_set_destination.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %kimage_set_destination.exit.i.while.body.i_crit_edge
  %maddr.0144.i = phi i32 [ %add.i, %cleanup.i.while.body.i_crit_edge ], [ %9, %kimage_set_destination.exit.i.while.body.i_crit_edge ]
  %ubytes.0143.i = phi i32 [ %sub35.i, %cleanup.i.while.body.i_crit_edge ], [ %5, %kimage_set_destination.exit.i.while.body.i_crit_edge ]
  %kbuf.1142.i = phi ptr [ %kbuf.2.i, %cleanup.i.while.body.i_crit_edge ], [ %.148.i, %kimage_set_destination.exit.i.while.body.i_crit_edge ]
  %buf.1141.i = phi ptr [ %buf.2.i, %cleanup.i.while.body.i_crit_edge ], [ %..i, %kimage_set_destination.exit.i.while.body.i_crit_edge ]
  %mbytes.0140.i = phi i32 [ %sub47.i, %cleanup.i.while.body.i_crit_edge ], [ %7, %kimage_set_destination.exit.i.while.body.i_crit_edge ]
  %call4.i = tail call fastcc ptr @kimage_alloc_page(ptr noundef %image, i32 noundef 1051842, i32 noundef %maddr.0144.i) #15
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %while.body.i.sw.epilog_crit_edge, label %if.end7.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end7.i:                                        ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call4.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %32
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %33 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %34 = trunc i64 %33 to i32
  %conv2.i138.i = shl i32 %add.i.i, 12
  %35 = add i32 %conv2.i138.i, %34
  %shl.i = and i32 %35, -4096
  %or.i102.i = or i32 %shl.i, 8
  %36 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %entry2.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i.i104.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i.i104.i, label %if.end7.i.if.end.i.i109.i_crit_edge, label %if.then.i.i106.i

if.end7.i.if.end.i.i109.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i109.i

if.then.i.i106.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr.i.i105.i = getelementptr i32, ptr %37, i32 1
  %40 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %incdec.ptr.i.i105.i, ptr %entry2.i.i.i, align 4
  br label %if.end.i.i109.i

if.end.i.i109.i:                                  ; preds = %if.then.i.i106.i, %if.end7.i.if.end.i.i109.i_crit_edge
  %41 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %entry2.i.i.i, align 4
  %43 = ptrtoint ptr %last_entry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %last_entry.i.i.i, align 4
  %cmp5.i.i108.i = icmp eq ptr %42, %44
  br i1 %cmp5.i.i108.i, label %if.then6.i.i112.i, label %if.end.i.i109.i.if.end12.i_crit_edge

if.end.i.i109.i.if.end12.i_crit_edge:             ; preds = %if.end.i.i109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then6.i.i112.i:                                ; preds = %if.end.i.i109.i
  %call.i.i110.i = tail call fastcc ptr @kimage_alloc_page(ptr noundef %image, i32 noundef 3264, i32 noundef -1) #15
  %tobool.not.i.i111.i = icmp eq ptr %call.i.i110.i, null
  br i1 %tobool.not.i.i111.i, label %if.then6.i.i112.i.sw.epilog_crit_edge, label %cleanup.thread.i.i118.i

if.then6.i.i112.i.sw.epilog_crit_edge:            ; preds = %if.then6.i.i112.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cleanup.thread.i.i118.i:                          ; preds = %if.then6.i.i112.i
  call void @__sanitizer_cov_trace_pc() #17
  %call9.i.i113.i = tail call ptr @page_address(ptr noundef nonnull %call.i.i110.i) #15
  %45 = ptrtoint ptr %call9.i.i113.i to i32
  %call.i.i.i114.i = tail call i32 @__virt_to_phys(i32 noundef %45) #15
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %46 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %47 = trunc i64 %46 to i32
  %addr.addr.0.i.i.i.i.i115.i = add i32 %call.i.i.i114.i, %47
  %or.i.i116.i = or i32 %addr.addr.0.i.i.i.i.i115.i, 2
  %48 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %entry2.i.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i116.i, ptr %49, align 4
  store ptr %call9.i.i113.i, ptr %entry2.i.i.i, align 4
  %add.ptr.i.i117.i = getelementptr i32, ptr %call9.i.i113.i, i32 1023
  %51 = ptrtoint ptr %last_entry.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i.i117.i, ptr %last_entry.i.i.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %cleanup.thread.i.i118.i, %if.end.i.i109.i.if.end12.i_crit_edge
  %52 = ptrtoint ptr %entry2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %entry2.i.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or.i102.i, ptr %53, align 4
  %55 = load ptr, ptr %entry2.i.i.i, align 4
  %incdec.ptr18.i.i119.i = getelementptr i32, ptr %55, i32 1
  store ptr %incdec.ptr18.i.i119.i, ptr %entry2.i.i.i, align 4
  %56 = ptrtoint ptr %incdec.ptr18.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %incdec.ptr18.i.i119.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #15
  %57 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %call4.i, align 4
  %shr.i.i.i = lshr i32 %58, 30
  %59 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.end12.i.if.then.i122.i_crit_edge [
    i32 2, label %if.end12.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.end12.i.if.else.i.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

if.end12.i.if.then.i122.i_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i122.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %60 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp2.i.not.i.i = icmp eq i32 %60, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i122.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i122.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i122.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

if.then.i122.i:                                   ; preds = %is_highmem_idx.exit.i.i.if.then.i122.i_crit_edge, %if.end12.i.if.then.i122.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef nonnull %call4.i) #15
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.end12.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef nonnull %call4.i) #15
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i122.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i122.i ]
  %61 = call ptr @memset(ptr %addr.0.i.i, i32 0, i32 4096)
  %and.i = and i32 %maddr.0144.i, 4095
  %add.ptr.i = getelementptr i8, ptr %addr.0.i.i, i32 %and.i
  %sub.i = sub nuw nsw i32 4096, %and.i
  %62 = tail call i32 @llvm.umin.i32(i32 %mbytes.0140.i, i32 %sub.i) #15
  %63 = tail call i32 @llvm.umin.i32(i32 %ubytes.0143.i, i32 %62) #15
  %64 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load23.i = load i8, ptr %type, align 4
  %65 = and i8 %bf.load23.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool27.not.i = icmp eq i8 %65, 0
  br i1 %tobool27.not.i, label %if.then.i.i.i.i, label %if.then28.i

if.then28.i:                                      ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %66 = call ptr @memcpy(ptr %add.ptr.i, ptr %kbuf.1142.i, i32 %63)
  br label %if.end31.i

if.then.i.i.i.i:                                  ; preds = %kmap.exit.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %63, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #15
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.1141.i, i32 %63, i32 -1226833920) #20, !srcloc !80
  %asmresult.i.i.i = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !75

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef %63) #15
  %68 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i.i.i.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #11, !srcloc !81
  %and.i.i.i.i.i = and i32 %70, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #15, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !83
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i, ptr noundef %buf.1141.i, i32 noundef %63) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #15, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !83
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %63, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %63, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end31.i_crit_edge, label %if.then11.i.i.i, !prof !75

if.end.i.i.i.if.end31.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = sub i32 %63, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i.i
  %71 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then11.i.i.i, %if.end.i.i.i.if.end31.i_crit_edge, %if.then28.i
  %tobool32.not.i = phi i1 [ false, %if.then11.i.i.i ], [ true, %if.end.i.i.i.if.end31.i_crit_edge ], [ true, %if.then28.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #15
  %72 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %call4.i, align 4
  %shr.i.i123.i = lshr i32 %73, 30
  %74 = zext i32 %shr.i.i123.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i123.i, label %if.end31.i.kunmap.exit.i_crit_edge [
    i32 2, label %if.end31.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i125.i
  ]

if.end31.i.if.end.i.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.end31.i.kunmap.exit.i_crit_edge:               ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit.i

is_highmem_idx.exit.i125.i:                       ; preds = %if.end31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %75 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp2.i.not.i124.i = icmp eq i32 %75, 2
  br i1 %cmp2.i.not.i124.i, label %is_highmem_idx.exit.i125.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i125.i.kunmap.exit.i_crit_edge

is_highmem_idx.exit.i125.i.kunmap.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit.i

is_highmem_idx.exit.i125.i.if.end.i.i_crit_edge:  ; preds = %is_highmem_idx.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i125.i.if.end.i.i_crit_edge, %if.end31.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call4.i) #15
  br label %kunmap.exit.i

kunmap.exit.i:                                    ; preds = %if.end.i.i, %is_highmem_idx.exit.i125.i.kunmap.exit.i_crit_edge, %if.end31.i.kunmap.exit.i_crit_edge
  br i1 %tobool32.not.i, label %cleanup.i, label %kunmap.exit.i.sw.epilog_crit_edge

kunmap.exit.i.sw.epilog_crit_edge:                ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cleanup.i:                                        ; preds = %kunmap.exit.i
  %sub35.i = sub i32 %ubytes.0143.i, %63
  %add.i = add i32 %62, %maddr.0144.i
  %76 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load37.i = load i8, ptr %type, align 4
  %77 = and i8 %bf.load37.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool41.not.i = icmp eq i8 %77, 0
  %buf.2.idx.i = select i1 %tobool41.not.i, i32 %62, i32 0
  %buf.2.i = getelementptr i8, ptr %buf.1141.i, i32 %buf.2.idx.i
  %kbuf.2.idx.i = select i1 %tobool41.not.i, i32 0, i32 %62
  %kbuf.2.i = getelementptr i8, ptr %kbuf.1142.i, i32 %kbuf.2.idx.i
  %sub47.i = sub i32 %mbytes.0140.i, %62
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 845, i32 noundef 0) #15
  %call.i.i = tail call i32 @__cond_resched() #15
  %tobool3.not.i = icmp eq i32 %sub47.i, 0
  br i1 %tobool3.not.i, label %cleanup.i.sw.epilog_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cleanup.i.sw.epilog_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %memsz.i8 = getelementptr inbounds %struct.kexec_segment, ptr %segment, i32 0, i32 3
  %78 = ptrtoint ptr %memsz.i8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %memsz.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool1.not110.i = icmp eq i32 %79, 0
  br i1 %tobool1.not110.i, label %sw.bb1.sw.epilog_crit_edge, label %while.body.preheader.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

while.body.preheader.i:                           ; preds = %sw.bb1
  %80 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i10 = icmp eq i8 %80, 0
  %81 = ptrtoint ptr %segment to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %segment, align 4
  %.118.i = select i1 %tobool.not.i10, ptr null, ptr %82
  %..i11 = select i1 %tobool.not.i10, ptr %82, ptr null
  %mem.i12 = getelementptr inbounds %struct.kexec_segment, ptr %segment, i32 0, i32 2
  %83 = ptrtoint ptr %mem.i12 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mem.i12, align 4
  %bufsz.i13 = getelementptr inbounds %struct.kexec_segment, ptr %segment, i32 0, i32 1
  %85 = ptrtoint ptr %bufsz.i13 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bufsz.i13, align 4
  br label %while.body.i14

while.body.i14:                                   ; preds = %cleanup.i60.while.body.i14_crit_edge, %while.body.preheader.i
  %maddr.0115.i = phi i32 [ %add.i54, %cleanup.i60.while.body.i14_crit_edge ], [ %84, %while.body.preheader.i ]
  %ubytes.0114.i = phi i32 [ %sub34.i, %cleanup.i60.while.body.i14_crit_edge ], [ %86, %while.body.preheader.i ]
  %kbuf.1113.i = phi ptr [ %kbuf.2.i58, %cleanup.i60.while.body.i14_crit_edge ], [ %.118.i, %while.body.preheader.i ]
  %buf.1112.i = phi ptr [ %buf.2.i56, %cleanup.i60.while.body.i14_crit_edge ], [ %..i11, %while.body.preheader.i ]
  %mbytes.0111.i = phi i32 [ %sub46.i, %cleanup.i60.while.body.i14_crit_edge ], [ %79, %while.body.preheader.i ]
  %shr.i = lshr i32 %maddr.0115.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %87 = load ptr, ptr @mem_map, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %88 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %89 = lshr i64 %88, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %90 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %91 = trunc i64 %89 to i32
  %92 = add i32 %90, %91
  %idx.ext.i.i = sub i32 %shr.i, %92
  %add.ptr.i.i = getelementptr %struct.page, ptr %87, i32 %idx.ext.i.i
  %tobool2.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not.i, label %while.body.i14.sw.epilog_crit_edge, label %if.end4.i

while.body.i14.sw.epilog_crit_edge:               ; preds = %while.body.i14
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end4.i:                                        ; preds = %while.body.i14
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %add.ptr.i.i) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #15
  %93 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i.i15 = lshr i32 %94, 30
  %95 = zext i32 %shr.i.i.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %shr.i.i.i15, label %if.end4.i.if.then.i96.i_crit_edge [
    i32 2, label %if.end4.i.if.else.i.i20_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i17
  ]

if.end4.i.if.else.i.i20_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i20

if.end4.i.if.then.i96.i_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i96.i

is_highmem_idx.exit.i.i17:                        ; preds = %if.end4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %96 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %cmp2.i.not.i.i16 = icmp eq i32 %96, 2
  br i1 %cmp2.i.not.i.i16, label %is_highmem_idx.exit.i.i17.if.else.i.i20_crit_edge, label %is_highmem_idx.exit.i.i17.if.then.i96.i_crit_edge

is_highmem_idx.exit.i.i17.if.then.i96.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i96.i

is_highmem_idx.exit.i.i17.if.else.i.i20_crit_edge: ; preds = %is_highmem_idx.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i20

if.then.i96.i:                                    ; preds = %is_highmem_idx.exit.i.i17.if.then.i96.i_crit_edge, %if.end4.i.if.then.i96.i_crit_edge
  %call5.i.i18 = tail call ptr @page_address(ptr noundef nonnull %add.ptr.i.i) #15
  br label %kmap.exit.i25

if.else.i.i20:                                    ; preds = %is_highmem_idx.exit.i.i17.if.else.i.i20_crit_edge, %if.end4.i.if.else.i.i20_crit_edge
  %call6.i.i19 = tail call ptr @kmap_high(ptr noundef nonnull %add.ptr.i.i) #15
  br label %kmap.exit.i25

kmap.exit.i25:                                    ; preds = %if.else.i.i20, %if.then.i96.i
  %addr.0.i.i21 = phi ptr [ %call6.i.i19, %if.else.i.i20 ], [ %call5.i.i18, %if.then.i96.i ]
  %and.i22 = and i32 %maddr.0115.i, 4095
  %add.ptr.i23 = getelementptr i8, ptr %addr.0.i.i21, i32 %and.i22
  %sub.i24 = sub nuw nsw i32 4096, %and.i22
  %97 = tail call i32 @llvm.umin.i32(i32 %mbytes.0111.i, i32 %sub.i24) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %ubytes.0114.i, i32 %97)
  %cmp10.i = icmp ult i32 %ubytes.0114.i, %97
  %98 = tail call i32 @llvm.umin.i32(i32 %ubytes.0114.i, i32 %97) #15
  br i1 %cmp10.i, label %if.then16.i, label %kmap.exit.i25.if.end19.i_crit_edge

kmap.exit.i25.if.end19.i_crit_edge:               ; preds = %kmap.exit.i25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then16.i:                                      ; preds = %kmap.exit.i25
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i23, i32 %98
  %sub18.i = sub nsw i32 %97, %98
  %99 = call ptr @memset(ptr %add.ptr17.i, i32 0, i32 %sub18.i)
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %kmap.exit.i25.if.end19.i_crit_edge
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load21.i = load i8, ptr %type, align 4
  %101 = and i8 %bf.load21.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool25.not.i = icmp eq i8 %101, 0
  br i1 %tobool25.not.i, label %if.then.i.i.i.i33, label %if.then26.i

if.then26.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = call ptr @memcpy(ptr %add.ptr.i23, ptr %kbuf.1113.i, i32 %98)
  br label %if.end29.i

if.then.i.i.i.i33:                                ; preds = %if.end19.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i23, i32 noundef %98, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #15
  %call.i.i.i34 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i.i34, label %if.then.i.i.i.i33.if.end.i.i.i48_crit_edge, label %land.lhs.true.i.i.i38

if.then.i.i.i.i33.if.end.i.i.i48_crit_edge:       ; preds = %if.then.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i48

land.lhs.true.i.i.i38:                            ; preds = %if.then.i.i.i.i33
  %103 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.1112.i, i32 %98, i32 -1226833920) #20, !srcloc !80
  %asmresult.i.i.i36 = extractvalue { i32, i32 } %103, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i36)
  %cmp.i6.i.i37 = icmp eq i32 %asmresult.i.i.i36, 0
  br i1 %cmp.i6.i.i37, label %if.then.i7.i.i45, label %land.lhs.true.i.i.i38.if.end.i.i.i48_crit_edge, !prof !75

land.lhs.true.i.i.i38.if.end.i.i.i48_crit_edge:   ; preds = %land.lhs.true.i.i.i38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i48

if.then.i7.i.i45:                                 ; preds = %land.lhs.true.i.i.i38
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i23, i32 noundef %98) #15
  %104 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i.i.i.i.i.i.i40 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i.i.i.i.i40 to ptr
  %cpu_domain.i.i.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i41) #11, !srcloc !81
  %and.i.i.i.i.i42 = and i32 %106, -13
  %or.i.i.i.i.i43 = or i32 %and.i.i.i.i.i42, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i43) #15, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !83
  %call1.i.i.i.i44 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr.i23, ptr noundef %buf.1112.i, i32 noundef %98) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #15, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !83
  br label %if.end.i.i.i48

if.end.i.i.i48:                                   ; preds = %if.then.i7.i.i45, %land.lhs.true.i.i.i38.if.end.i.i.i48_crit_edge, %if.then.i.i.i.i33.if.end.i.i.i48_crit_edge
  %res.0.i.i.i46 = phi i32 [ %98, %if.then.i.i.i.i33.if.end.i.i.i48_crit_edge ], [ %call1.i.i.i.i44, %if.then.i7.i.i45 ], [ %98, %land.lhs.true.i.i.i38.if.end.i.i.i48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i46)
  %tobool4.not.i.i.i47 = icmp eq i32 %res.0.i.i.i46, 0
  br i1 %tobool4.not.i.i.i47, label %if.end.i.i.i48.if.end29.i_crit_edge, label %if.then11.i.i.i51, !prof !75

if.end.i.i.i48.if.end29.i_crit_edge:              ; preds = %if.end.i.i.i48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then11.i.i.i51:                                ; preds = %if.end.i.i.i48
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i49 = sub i32 %98, %res.0.i.i.i46
  %add.ptr.i.i.i50 = getelementptr i8, ptr %add.ptr.i23, i32 %sub.i.i.i49
  %107 = call ptr @memset(ptr %add.ptr.i.i.i50, i32 0, i32 %res.0.i.i.i46)
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then11.i.i.i51, %if.end.i.i.i48.if.end29.i_crit_edge, %if.then26.i
  %tobool31.not.i = phi i1 [ false, %if.then11.i.i.i51 ], [ true, %if.end.i.i.i48.if.end29.i_crit_edge ], [ true, %if.then26.i ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #15
  %108 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i97.i = lshr i32 %109, 30
  %110 = zext i32 %shr.i.i97.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i97.i, label %if.end29.i.kunmap.exit.i53_crit_edge [
    i32 2, label %if.end29.i.if.end.i.i52_crit_edge
    i32 3, label %is_highmem_idx.exit.i99.i
  ]

if.end29.i.if.end.i.i52_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i52

if.end29.i.kunmap.exit.i53_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit.i53

is_highmem_idx.exit.i99.i:                        ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %111 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp2.i.not.i98.i = icmp eq i32 %111, 2
  br i1 %cmp2.i.not.i98.i, label %is_highmem_idx.exit.i99.i.if.end.i.i52_crit_edge, label %is_highmem_idx.exit.i99.i.kunmap.exit.i53_crit_edge

is_highmem_idx.exit.i99.i.kunmap.exit.i53_crit_edge: ; preds = %is_highmem_idx.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit.i53

is_highmem_idx.exit.i99.i.if.end.i.i52_crit_edge: ; preds = %is_highmem_idx.exit.i99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i52

if.end.i.i52:                                     ; preds = %is_highmem_idx.exit.i99.i.if.end.i.i52_crit_edge, %if.end29.i.if.end.i.i52_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %add.ptr.i.i) #15
  br label %kunmap.exit.i53

kunmap.exit.i53:                                  ; preds = %if.end.i.i52, %is_highmem_idx.exit.i99.i.kunmap.exit.i53_crit_edge, %if.end29.i.kunmap.exit.i53_crit_edge
  %call30.i = tail call ptr @page_address(ptr noundef nonnull %add.ptr.i.i) #15
  br i1 %tobool31.not.i, label %cleanup.i60, label %kunmap.exit.i53.sw.epilog_crit_edge

kunmap.exit.i53.sw.epilog_crit_edge:              ; preds = %kunmap.exit.i53
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

cleanup.i60:                                      ; preds = %kunmap.exit.i53
  %sub34.i = sub i32 %ubytes.0114.i, %98
  %add.i54 = add i32 %97, %maddr.0115.i
  %112 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load36.i = load i8, ptr %type, align 4
  %113 = and i8 %bf.load36.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool40.not.i = icmp eq i8 %113, 0
  %buf.2.idx.i55 = select i1 %tobool40.not.i, i32 %97, i32 0
  %buf.2.i56 = getelementptr i8, ptr %buf.1112.i, i32 %buf.2.idx.i55
  %kbuf.2.idx.i57 = select i1 %tobool40.not.i, i32 0, i32 %97
  %kbuf.2.i58 = getelementptr i8, ptr %kbuf.1113.i, i32 %kbuf.2.idx.i57
  %sub46.i = sub i32 %mbytes.0111.i, %97
  tail call void @__might_resched(ptr noundef nonnull @.str.5, i32 noundef 913, i32 noundef 0) #15
  %call.i.i59 = tail call i32 @__cond_resched() #15
  %tobool1.not.i = icmp eq i32 %sub46.i, 0
  br i1 %tobool1.not.i, label %cleanup.i60.sw.epilog_crit_edge, label %cleanup.i60.while.body.i14_crit_edge

cleanup.i60.while.body.i14_crit_edge:             ; preds = %cleanup.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i14

cleanup.i60.sw.epilog_crit_edge:                  ; preds = %cleanup.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.i60.sw.epilog_crit_edge, %kunmap.exit.i53.sw.epilog_crit_edge, %while.body.i14.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %cleanup.i.sw.epilog_crit_edge, %kunmap.exit.i.sw.epilog_crit_edge, %if.then6.i.i112.i.sw.epilog_crit_edge, %while.body.i.sw.epilog_crit_edge, %kimage_set_destination.exit.i.sw.epilog_crit_edge, %if.then6.i.i.i.sw.epilog_crit_edge
  %result.0 = phi i32 [ -12, %if.then6.i.i.i.sw.epilog_crit_edge ], [ 0, %kimage_set_destination.exit.i.sw.epilog_crit_edge ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ -12, %if.then6.i.i112.i.sw.epilog_crit_edge ], [ -14, %kunmap.exit.i.sw.epilog_crit_edge ], [ -12, %while.body.i.sw.epilog_crit_edge ], [ 0, %cleanup.i.sw.epilog_crit_edge ], [ 0, %cleanup.i60.sw.epilog_crit_edge ], [ -12, %while.body.i14.sw.epilog_crit_edge ], [ -14, %kunmap.exit.i53.sw.epilog_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__crash_kexec(ptr noundef readonly %regs) local_unnamed_addr #2 align 64 {
entry:
  %fixed_regs = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @kexec_crash_image, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fixed_regs) #15
  %1 = call ptr @memset(ptr %fixed_regs, i32 255, i32 72)
  %tobool.not.i = icmp eq ptr %regs, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %2 = call ptr @memcpy(ptr %fixed_regs, ptr %regs, i32 72)
  br label %crash_setup_regs.exit

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr inbounds [18 x i32], ptr %fixed_regs, i32 0, i32 15
  %arrayidx2.i = getelementptr inbounds [18 x i32], ptr %fixed_regs, i32 0, i32 16
  %arrayidx4.i = getelementptr inbounds [18 x i32], ptr %fixed_regs, i32 0, i32 13
  %arrayidx6.i = getelementptr inbounds [18 x i32], ptr %fixed_regs, i32 0, i32 14
  %3 = call { i32, i32, i32 } asm sideeffect "stmia\09$4, {r0-r12}\0A\09mov\09$2, sp\0A\09str\09lr, $3\0A\09adr\09$0, 1f\0A\09mrs\09$1, cpsr\0A\091:", "=r,=r,=r,=*o,r,~{memory}"(ptr elementtype(i32) %arrayidx6.i, ptr nonnull %fixed_regs) #15, !srcloc !84
  %asmresult.i = extractvalue { i32, i32, i32 } %3, 0
  %asmresult9.i = extractvalue { i32, i32, i32 } %3, 1
  %asmresult10.i = extractvalue { i32, i32, i32 } %3, 2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %asmresult.i, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %asmresult9.i, ptr %arrayidx2.i, align 4
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %asmresult10.i, ptr %arrayidx4.i, align 4
  br label %crash_setup_regs.exit

crash_setup_regs.exit:                            ; preds = %if.else.i, %if.then.i
  call void @crash_save_vmcoreinfo() #15
  call void @machine_crash_shutdown(ptr noundef nonnull %fixed_regs) #15
  %7 = load ptr, ptr @kexec_crash_image, align 4
  call void @machine_kexec(ptr noundef %7) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fixed_regs) #15
  br label %if.end

if.end:                                           ; preds = %crash_setup_regs.exit, %if.then.if.end_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #15
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crash_save_vmcoreinfo() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_crash_shutdown(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_kexec(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crash_kexec(ptr noundef readonly %regs) local_unnamed_addr #2 align 64 {
entry:
  %fixed_regs.i = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_cpu, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr nonnull @panic_cpu, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @panic_cpu, ptr nonnull @panic_cpu, i32 -1, i32 %3, ptr nonnull elementtype(i32) @panic_cpu) #15, !srcloc !86
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, -1
  br i1 %cmp, label %if.then, label %atomic_cmpxchg.exit.if.end_crit_edge

atomic_cmpxchg.exit.if.end_crit_edge:             ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %atomic_cmpxchg.exit
  %call.i = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.__crash_kexec.exit_crit_edge, label %if.then.i

if.then.__crash_kexec.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %__crash_kexec.exit

if.then.i:                                        ; preds = %if.then
  %5 = load ptr, ptr @kexec_crash_image, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fixed_regs.i) #15
  %6 = call ptr @memset(ptr %fixed_regs.i, i32 255, i32 72)
  %tobool.not.i.i = icmp eq ptr %regs, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %7 = call ptr @memcpy(ptr %fixed_regs.i, ptr %regs, i32 72)
  br label %crash_setup_regs.exit.i

if.else.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.i = getelementptr inbounds [18 x i32], ptr %fixed_regs.i, i32 0, i32 15
  %arrayidx2.i.i = getelementptr inbounds [18 x i32], ptr %fixed_regs.i, i32 0, i32 16
  %arrayidx4.i.i = getelementptr inbounds [18 x i32], ptr %fixed_regs.i, i32 0, i32 13
  %arrayidx6.i.i = getelementptr inbounds [18 x i32], ptr %fixed_regs.i, i32 0, i32 14
  %8 = call { i32, i32, i32 } asm sideeffect "stmia\09$4, {r0-r12}\0A\09mov\09$2, sp\0A\09str\09lr, $3\0A\09adr\09$0, 1f\0A\09mrs\09$1, cpsr\0A\091:", "=r,=r,=r,=*o,r,~{memory}"(ptr elementtype(i32) %arrayidx6.i.i, ptr nonnull %fixed_regs.i) #15, !srcloc !84
  %asmresult.i.i = extractvalue { i32, i32, i32 } %8, 0
  %asmresult9.i.i = extractvalue { i32, i32, i32 } %8, 1
  %asmresult10.i.i = extractvalue { i32, i32, i32 } %8, 2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %asmresult.i.i, ptr %arrayidx.i.i, align 4
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %asmresult9.i.i, ptr %arrayidx2.i.i, align 4
  %11 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %asmresult10.i.i, ptr %arrayidx4.i.i, align 4
  br label %crash_setup_regs.exit.i

crash_setup_regs.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  call void @crash_save_vmcoreinfo() #15
  call void @machine_crash_shutdown(ptr noundef nonnull %fixed_regs.i) #15
  %12 = load ptr, ptr @kexec_crash_image, align 4
  call void @machine_kexec(ptr noundef %12) #15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fixed_regs.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %crash_setup_regs.exit.i, %if.then.i.if.end.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #15
  br label %__crash_kexec.exit

__crash_kexec.exit:                               ; preds = %if.end.i, %if.then.__crash_kexec.exit_crit_edge
  %call.i.i2 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @panic_cpu, i32 noundef 4) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @panic_cpu to i32))
  store volatile i32 -1, ptr @panic_cpu, align 4
  br label %if.end

if.end:                                           ; preds = %__crash_kexec.exit, %atomic_cmpxchg.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crash_get_memory_size() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kexec_mutex, i32 noundef 0) #15
  %0 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %1 = load i32, ptr @crashk_res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp eq i32 %0, %1
  %sub.i = add i32 %0, 1
  %add.i = sub i32 %sub.i, %1
  %size.0 = select i1 %cmp.not, i32 0, i32 %add.i
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #15
  ret i32 %size.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @crash_free_reserved_phys_range(i32 noundef %begin, i32 noundef %end) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %begin, i32 %end)
  %cmp5 = icmp ult i32 %begin, %end
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %addr.06 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %begin, %entry.for.body_crit_edge ]
  %shr = lshr i32 %addr.06, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %1 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %2 = lshr i64 %1, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %4 = trunc i64 %2 to i32
  %5 = add i32 %3, %4
  %idx.ext.i = sub i32 %shr, %5
  %add.ptr.i = getelementptr %struct.page, ptr %0, i32 %idx.ext.i
  tail call fastcc void @free_reserved_page(ptr noundef %add.ptr.i)
  %add = add i32 %addr.06, 4096
  %cmp = icmp ult i32 %add, %end
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_reserved_page(ptr noundef %page) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  %2 = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %entry
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !75

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !76
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %ClearPageReserved.exit, !prof !77

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !78
  unreachable

ClearPageReserved.exit:                           ; preds = %do.body7.i
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %page) #15
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #15
  %8 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %_refcount.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_set, i32 0, i32 1), ptr blockaddress(@free_reserved_page, %if.then.i.i)) #15
          to label %init_page_count.exit [label %if.then.i.i], !srcloc !88

if.then.i.i:                                      ; preds = %ClearPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_set(ptr noundef %page, i32 noundef 1) #15
  br label %init_page_count.exit

init_page_count.exit:                             ; preds = %if.then.i.i, %ClearPageReserved.exit
  tail call void @__free_pages(ptr noundef %page, i32 noundef 0) #15
  tail call void @adjust_managed_page_count(ptr noundef %page, i32 noundef 1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crash_shrink_memory(i32 noundef %new_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kexec_mutex, i32 noundef 0) #15
  %0 = load ptr, ptr @kexec_crash_image, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @crashk_res, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  %sub = sub i32 1, %1
  %add = add i32 %sub, %2
  %cond = select i1 %cmp, i32 0, i32 %add
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %new_size)
  %cmp1.not = icmp ugt i32 %cond, %new_size
  br i1 %cmp1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %new_size)
  %cmp3 = icmp eq i32 %cond, %new_size
  %cond4 = select i1 %cmp3, i32 0, i32 -22
  br label %unlock

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #18
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end5.unlock_crit_edge, label %if.end8

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end8:                                          ; preds = %if.end5
  %add10 = add i32 %1, 4095
  %div47 = and i32 %add10, -4096
  %add13 = add i32 %new_size, 4095
  %add15 = add i32 %add13, %div47
  %div1648 = and i32 %add15, -4096
  %4 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  tail call void @crash_free_reserved_phys_range(i32 noundef %div1648, i32 noundef %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %div47, i32 %div1648)
  %cmp18 = icmp eq i32 %div47, %div1648
  br i1 %cmp18, label %land.lhs.true, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end8
  %5 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 5), align 4
  %cmp19.not = icmp eq ptr %5, null
  br i1 %cmp19.not, label %land.lhs.true.if.end22_crit_edge, label %if.then20

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %call21 = tail call i32 @release_resource(ptr noundef nonnull @crashk_res) #15
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %if.end8.if.end22_crit_edge
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div1648, ptr %call7.i.i, align 8
  %7 = load i32, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %end24 = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %end24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %end24, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2130705920, ptr %flags, align 4
  %name = getelementptr inbounds %struct.resource, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.9, ptr %name, align 8
  %sub25 = add i32 %div1648, -1
  store i32 %sub25, ptr getelementptr inbounds (%struct.resource, ptr @crashk_res, i32 0, i32 1), align 4
  %call26 = tail call i32 @insert_resource(ptr noundef nonnull @iomem_resource, ptr noundef nonnull %call7.i.i) #15
  br label %unlock

unlock:                                           ; preds = %if.end22, %if.end5.unlock_crit_edge, %if.then2, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ %cond4, %if.then2 ], [ 0, %if.end22 ], [ -2, %entry.unlock_crit_edge ], [ -12, %if.end5.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #15
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_resource(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crash_save_cpu(ptr nocapture noundef readonly %regs, i32 noundef %cpu) local_unnamed_addr #2 align 64 {
entry:
  %prstatus = alloca %struct.elf_prstatus, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %prstatus) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp slt i32 %cpu, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp1.not = icmp ugt i32 %0, %cpu
  br i1 %cmp1.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %1 = load ptr, ptr @crash_notes, align 4
  %2 = ptrtoint ptr %1 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add = add i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %5 = inttoptr i32 %add to ptr
  %6 = call ptr @memset(ptr %prstatus, i32 0, i32 148)
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 68
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pid, align 8
  %pr_pid = getelementptr inbounds %struct.elf_prstatus_common, ptr %prstatus, i32 0, i32 4
  %13 = ptrtoint ptr %pr_pid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pr_pid, align 4
  %pr_reg = getelementptr inbounds %struct.elf_prstatus, ptr %prstatus, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %pr_reg, ptr %regs, i32 72)
  %call5 = call ptr @append_elf_note(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %prstatus, i32 noundef 148) #15
  call void @final_note(ptr noundef %call5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %prstatus) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @append_elf_note(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @final_note(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crash_notes_memory_init() #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 180, i32 noundef 256) #21
  store ptr %call, ptr @crash_notes, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_kexec() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @kexec_mutex) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @kexec_image, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.end.Unlock_crit_edge, label %if.end3

if.end.Unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %Unlock

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  store i8 1, ptr @kexec_in_progress, align 1
  tail call void @kernel_restart_prepare(ptr noundef nonnull @.str.11) #15
  tail call void @migrate_to_reboot_cpu() #15
  tail call void @cpu_hotplug_enable() #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #19
  tail call void @machine_shutdown() #15
  tail call void @kmsg_dump(i32 noundef 4) #15
  %1 = load ptr, ptr @kexec_image, align 4
  tail call void @machine_kexec(ptr noundef %1) #15
  br label %Unlock

Unlock:                                           ; preds = %if.end3, %if.end.Unlock_crit_edge
  %error.0 = phi i32 [ 0, %if.end3 ], [ -22, %if.end.Unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @kexec_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %Unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %Unlock ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_restart_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_to_reboot_cpu() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_enable() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_shutdown() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmsg_dump(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_kexec_protect_crashkres() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_kexec_unprotect_crashkres() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kimage_alloc_pages(i32 noundef %gfp_mask, i32 noundef %order) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i36 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i36, label %entry.if.end_crit_edge, label %fatal_signal_pending.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

fatal_signal_pending.exit:                        ; preds = %entry
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 116, i32 1
  %8 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signal.i.i, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %fatal_signal_pending.exit.if.end_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

fatal_signal_pending.exit.if.end_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %fatal_signal_pending.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %and = and i32 %gfp_mask, -257
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %and, i32 noundef %order, i32 noundef 0, ptr noundef null) #15
  %tobool3.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %mapping = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mapping, align 4
  %private1.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %order, ptr %private1.i, align 4
  %shl = shl nuw i32 1, %order
  br label %for.body

for.body:                                         ; preds = %SetPageReserved.exit.for.body_crit_edge, %if.then4
  %i.039 = phi i32 [ 0, %if.then4 ], [ %inc, %SetPageReserved.exit.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.page, ptr %call38.i.i.i, i32 %i.039
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %add.ptr, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %for.body.if.then.i_crit_edge

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %for.body
  %16 = getelementptr %struct.page, ptr %call38.i.i.i, i32 %i.039, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !75

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %for.body.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.14) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !89
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageReserved.exit, !prof !77

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %add.ptr, ptr noundef nonnull @.str.15) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !90
  unreachable

SetPageReserved.exit:                             ; preds = %do.body7.i
  tail call void @_set_bit(i32 noundef 12, ptr noundef %add.ptr) #15
  %inc = add nuw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %shl
  br i1 %exitcond.not, label %for.end, label %SetPageReserved.exit.for.body_crit_edge

SetPageReserved.exit.for.body_crit_edge:          ; preds = %SetPageReserved.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %SetPageReserved.exit
  %call5 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #15
  %and7 = and i32 %gfp_mask, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.end.cleanup_crit_edge, label %for.end.for.body12_crit_edge

for.end.for.body12_crit_edge:                     ; preds = %for.end
  br label %for.body12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.end.for.body12_crit_edge
  %i.140 = phi i32 [ %inc15, %for.body12.for.body12_crit_edge ], [ 0, %for.end.for.body12_crit_edge ]
  %add.ptr13 = getelementptr %struct.page, ptr %call38.i.i.i, i32 %i.140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %21, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr13, i32 noundef %or.i.i) #15
  %22 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  %inc15 = add nuw i32 %i.140, 1
  %exitcond43.not = icmp eq i32 %inc15, %shl
  br i1 %exitcond43.not, label %for.body12.cleanup_crit_edge, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body12

for.body12.cleanup_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %fatal_signal_pending.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %fatal_signal_pending.exit.cleanup_crit_edge ], [ %call38.i.i.i, %for.end.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call38.i.i.i, %for.body12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kimage_alloc_page(ptr noundef %image, i32 noundef %gfp_mask, i32 noundef %destination) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dest_pages = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %dest_pages, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %dest_pages
  br i1 %cmp.not, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.cond
  %call9121 = tail call fastcc ptr @kimage_alloc_pages(i32 noundef %gfp_mask, i32 noundef 0)
  %tobool.not122 = icmp eq ptr %call9121, null
  br i1 %tobool.not122, label %while.cond.preheader.cleanup43_crit_edge, label %if.end11.lr.ph

while.cond.preheader.cleanup43_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.end11.lr.ph:                                   ; preds = %while.cond.preheader
  %nr_segments.i = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 7
  %and31 = and i32 %gfp_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %unusable_pages = getelementptr inbounds %struct.kimage, ptr %image, i32 0, i32 11
  br label %if.end11

for.body:                                         ; preds = %for.cond
  %page.0 = getelementptr i8, ptr %.pn, i32 -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %page.0 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %2
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %3 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %4 = trunc i64 %3 to i32
  %conv2.i112 = shl i32 %add.i, 12
  %5 = add i32 %conv2.i112, %4
  %shl = and i32 %5, -4096
  %cmp2 = icmp eq i32 %shl, %destination
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup43

if.end11:                                         ; preds = %cleanup42.if.end11_crit_edge, %if.end11.lr.ph
  %call9123 = phi ptr [ %call9121, %if.end11.lr.ph ], [ %call9, %cleanup42.if.end11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i75 = ptrtoint ptr %call9123 to i32
  %sub.ptr.rhs.cast.i76 = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i77 = sub i32 %sub.ptr.lhs.cast.i75, %sub.ptr.rhs.cast.i76
  %sub.ptr.div.i78 = sdiv exact i32 %sub.ptr.sub.i77, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @arch_phys_to_idmap_offset to i32))
  %16 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %17 = lshr i64 %16, 12
  %18 = trunc i64 %17 to i32
  %add.i79 = add i32 %15, %18
  %conv2.i80 = add i32 %add.i79, %sub.ptr.div.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %conv2.i80)
  %cmp13 = icmp ugt i32 %conv2.i80, 1048575
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %19 = getelementptr inbounds %struct.page, ptr %call9123, i32 0, i32 1
  %20 = ptrtoint ptr %unusable_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unusable_pages, align 4
  %call.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %unusable_pages, ptr noundef %21) #15
  br i1 %call.i.i81, label %if.end.i.i82, label %if.then14.cleanup42_crit_edge

if.then14.cleanup42_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup42

if.end.i.i82:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %19, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %call9123, i32 0, i32 1, i32 0, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %unusable_pages, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %unusable_pages to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %19, ptr %unusable_pages, align 4
  br label %cleanup42

if.end16:                                         ; preds = %if.end11
  %shl18 = shl nuw i32 %conv2.i80, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shl18, i32 %destination)
  %cmp19 = icmp eq i32 %shl18, %destination
  br i1 %cmp19, label %if.end16.cleanup43_crit_edge, label %if.end21

if.end16.cleanup43_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.end21:                                         ; preds = %if.end16
  %add = add i32 %shl18, 4096
  %26 = ptrtoint ptr %nr_segments.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp13.not.i = icmp eq i32 %27, 0
  br i1 %cmp13.not.i, label %if.end21.cleanup43_crit_edge, label %if.end21.for.body.i_crit_edge

if.end21.for.body.i_crit_edge:                    ; preds = %if.end21
  br label %for.body.i

if.end21.cleanup43_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

for.body.i:                                       ; preds = %for.inc.critedge.i.for.body.i_crit_edge, %if.end21.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.critedge.i.for.body.i_crit_edge ], [ 0, %if.end21.for.body.i_crit_edge ]
  %mem.i = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.014.i, i32 2
  %28 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add)
  %cmp3.i = icmp ult i32 %29, %add
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.critedge.i_crit_edge

for.body.i.for.inc.critedge.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.critedge.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %memsz.i = getelementptr %struct.kimage, ptr %image, i32 0, i32 8, i32 %i.014.i, i32 3
  %30 = ptrtoint ptr %memsz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %memsz.i, align 4
  %add.i89 = add i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i89, i32 %shl18)
  %cmp4.i = icmp ugt i32 %add.i89, %shl18
  br i1 %cmp4.i, label %if.end25, label %land.lhs.true.i.for.inc.critedge.i_crit_edge

land.lhs.true.i.for.inc.critedge.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.critedge.i

for.inc.critedge.i:                               ; preds = %land.lhs.true.i.for.inc.critedge.i_crit_edge, %for.body.i.for.inc.critedge.i_crit_edge
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %27
  br i1 %exitcond.not.i, label %for.inc.critedge.i.cleanup43_crit_edge, label %for.inc.critedge.i.for.body.i_crit_edge

for.inc.critedge.i.for.body.i_crit_edge:          ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.critedge.i.cleanup43_crit_edge:           ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

if.end25:                                         ; preds = %land.lhs.true.i
  %32 = ptrtoint ptr %image to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %image, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not25.i = icmp ne i32 %33, 0
  %and26.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool2.not27.i = icmp eq i32 %and26.i, 0
  %or.cond28.i = and i1 %tobool.not25.i, %tobool2.not27.i
  br i1 %or.cond28.i, label %for.body.i90.preheader, label %if.end25.if.end39_crit_edge

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

for.body.i90.preheader:                           ; preds = %if.end25
  %34 = trunc i64 %16 to i32
  br label %for.body.i90

for.body.i90:                                     ; preds = %cond.end.i.for.body.i90_crit_edge, %for.body.i90.preheader
  %35 = phi i32 [ %39, %cond.end.i.for.body.i90_crit_edge ], [ %33, %for.body.i90.preheader ]
  %destination.031.i = phi i32 [ %destination.1.i, %cond.end.i.for.body.i90_crit_edge ], [ 0, %for.body.i90.preheader ]
  %ptr.029.i = phi ptr [ %cond.i, %cond.end.i.for.body.i90_crit_edge ], [ %image, %for.body.i90.preheader ]
  %and3.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i90
  call void @__sanitizer_cov_trace_pc() #17
  %and5.i = and i32 %35, -4096
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i90
  %and6.i = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then8.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %destination.031.i, i32 %shl18)
  %cmp.i = icmp eq i32 %destination.031.i, %shl18
  br i1 %cmp.i, label %kimage_dst_used.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i91 = add i32 %destination.031.i, 4096
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %if.else.i.for.inc.i_crit_edge, %if.then.i
  %destination.1.i = phi i32 [ %and5.i, %if.then.i ], [ %add.i91, %if.end.i ], [ %destination.031.i, %if.else.i.for.inc.i_crit_edge ]
  %and12.i = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %and14.i = and i32 %35, -4096
  %addr.0.i.i.i.i = sub i32 %and14.i, %34
  %36 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %addr.0.i.i.i.i, i32 -2130706432, i32 8454144) #20, !srcloc !79
  %37 = inttoptr i32 %36 to ptr
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i32, ptr %ptr.029.i, i32 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %37, %cond.true.i ], [ %add.ptr.i, %cond.false.i ]
  %38 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cond.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp ne i32 %39, 0
  %and.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %cond.end.i.for.body.i90_crit_edge, label %cond.end.i.if.end39_crit_edge

cond.end.i.if.end39_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

cond.end.i.for.body.i90_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i90

kimage_dst_used.exit:                             ; preds = %if.then8.i
  %tobool27.not = icmp eq ptr %ptr.029.i, null
  br i1 %tobool27.not, label %kimage_dst_used.exit.if.end39_crit_edge, label %if.then28

kimage_dst_used.exit.if.end39_crit_edge:          ; preds = %kimage_dst_used.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then28:                                        ; preds = %kimage_dst_used.exit
  %40 = ptrtoint ptr %ptr.029.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptr.029.i, align 4
  %shr = lshr i32 %41, 12
  %idx.ext.i = sub i32 %shr, %add.i79
  %add.ptr.i92 = getelementptr %struct.page, ptr %14, i32 %idx.ext.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %42 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %42, 512
  %call.i.i93 = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i92, i32 noundef %or.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or.i13.i = or i32 %43, 512
  %call.i14.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call9123, i32 noundef %or.i13.i) #15
  tail call void @copy_page(ptr noundef %call.i14.i, ptr noundef %call.i.i93) #15
  tail call void @kunmap_local_indexed(ptr noundef %call.i14.i) #15
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i93) #15
  %44 = ptrtoint ptr %ptr.029.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr.029.i, align 4
  %and30 = and i32 %45, 4095
  %or = or i32 %and30, %shl18
  store i32 %or, ptr %ptr.029.i, align 4
  br i1 %tobool32.not, label %land.lhs.true, label %if.then28.cleanup43_crit_edge

if.then28.cleanup43_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

land.lhs.true:                                    ; preds = %if.then28
  %46 = ptrtoint ptr %add.ptr.i92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i92, align 4
  %shr.i = lshr i32 %47, 30
  %48 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %shr.i, label %land.lhs.true.cleanup43_crit_edge [
    i32 2, label %land.lhs.true.if.then36_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

land.lhs.true.cleanup43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

is_highmem_idx.exit:                              ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %49 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp2.i.not = icmp eq i32 %49, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.then36_crit_edge, label %is_highmem_idx.exit.cleanup43_crit_edge

is_highmem_idx.exit.cleanup43_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

is_highmem_idx.exit.if.then36_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36

if.then36:                                        ; preds = %is_highmem_idx.exit.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  tail call fastcc void @kimage_free_pages(ptr noundef %add.ptr.i92)
  br label %cleanup42

if.end39:                                         ; preds = %kimage_dst_used.exit.if.end39_crit_edge, %cond.end.i.if.end39_crit_edge, %if.end25.if.end39_crit_edge
  %50 = getelementptr inbounds %struct.page, ptr %call9123, i32 0, i32 1
  %51 = ptrtoint ptr %dest_pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dest_pages, align 4
  %call.i.i94 = tail call zeroext i1 @__list_add_valid(ptr noundef %50, ptr noundef %dest_pages, ptr noundef %52) #15
  br i1 %call.i.i94, label %if.end.i.i97, label %if.end39.cleanup42_crit_edge

if.end39.cleanup42_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup42

if.end.i.i97:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i95 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i95 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i95, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %50, align 4
  %prev3.i.i96 = getelementptr inbounds %struct.page, ptr %call9123, i32 0, i32 1, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dest_pages, ptr %prev3.i.i96, align 4
  %56 = ptrtoint ptr %dest_pages to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %50, ptr %dest_pages, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %if.end.i.i97, %if.end39.cleanup42_crit_edge, %if.then36, %if.end.i.i82, %if.then14.cleanup42_crit_edge
  %call9 = tail call fastcc ptr @kimage_alloc_pages(i32 noundef %gfp_mask, i32 noundef 0)
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %cleanup42.cleanup43_crit_edge, label %cleanup42.if.end11_crit_edge

cleanup42.if.end11_crit_edge:                     ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

cleanup42.cleanup43_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup42.cleanup43_crit_edge, %is_highmem_idx.exit.cleanup43_crit_edge, %land.lhs.true.cleanup43_crit_edge, %if.then28.cleanup43_crit_edge, %for.inc.critedge.i.cleanup43_crit_edge, %if.end21.cleanup43_crit_edge, %if.end16.cleanup43_crit_edge, %list_del.exit, %while.cond.preheader.cleanup43_crit_edge
  %retval.2 = phi ptr [ %page.0, %list_del.exit ], [ null, %while.cond.preheader.cleanup43_crit_edge ], [ %call9123, %for.inc.critedge.i.cleanup43_crit_edge ], [ %call9123, %if.end16.cleanup43_crit_edge ], [ %add.ptr.i92, %is_highmem_idx.exit.cleanup43_crit_edge ], [ %add.ptr.i92, %if.then28.cleanup43_crit_edge ], [ null, %cleanup42.cleanup43_crit_edge ], [ %call9123, %if.end21.cleanup43_crit_edge ], [ %add.ptr.i92, %land.lhs.true.cleanup43_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_set(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !55, !57, !59, !61, !62, !63}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/kexec_core.c", i32 49, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @kexec_mutex, !1, !"kexec_mutex", i1 false, i1 false}
!4 = !{ptr @kexec_in_progress, !5, !"kexec_in_progress", i1 false, i1 false}
!5 = !{!"../kernel/kexec_core.c", i32 55, i32 6}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/kexec_core.c", i32 60, i32 11}
!8 = !{ptr @crashk_res, !9, !"crashk_res", i1 false, i1 false}
!9 = !{!"../kernel/kexec_core.c", i32 59, i32 17}
!10 = !{ptr @crashk_low_res, !11, !"crashk_low_res", i1 false, i1 false}
!11 = !{!"../kernel/kexec_core.c", i32 66, i32 17}
!12 = !{ptr @__ksymtab_kexec_crash_loaded, !13, !"__ksymtab_kexec_crash_loaded", i1 false, i1 false}
!13 = !{!"../kernel/kexec_core.c", i32 96, i32 1}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/kexec_core.c", i32 520, i32 3}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @kimage_crash_copy_vmcoreinfo._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @kimage_crash_copy_vmcoreinfo._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/kexec_core.c", i32 525, i32 3}
!22 = !{ptr @kimage_crash_copy_vmcoreinfo._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @kimage_crash_copy_vmcoreinfo._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/kexec_core.c", i32 1050, i32 18}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/kexec_core.c", i32 1082, i32 29}
!28 = !{ptr @__initcall__kmod_kexec_core__310_1118_crash_notes_memory_init4, !29, !"__initcall__kmod_kexec_core__310_1118_crash_notes_memory_init4", i1 false, i1 false}
!29 = !{!"../kernel/kexec_core.c", i32 1118, i32 1}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/kexec_core.c", i32 1169, i32 26}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/kexec_core.c", i32 1179, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @kernel_kexec._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @kernel_kexec._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @crash_notes, !38, !"crash_notes", i1 false, i1 false}
!38 = !{!"../kernel/kexec_core.c", i32 52, i32 22}
!39 = !{ptr @kexec_image, !40, !"kexec_image", i1 false, i1 false}
!40 = !{!"../kernel/kexec_core.c", i32 936, i32 16}
!41 = !{ptr @kexec_crash_image, !42, !"kexec_crash_image", i1 false, i1 false}
!42 = !{!"../kernel/kexec_core.c", i32 937, i32 16}
!43 = !{ptr @kexec_load_disabled, !44, !"kexec_load_disabled", i1 false, i1 false}
!44 = !{!"../kernel/kexec_core.c", i32 938, i32 5}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../kernel/kexec_core.c", i32 1113, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @crash_notes_memory_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @crash_notes_memory_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2150701045, i64 2150701218, i64 2150701233, i64 2150701285, i64 2150701344, i64 2150701368, i64 2150701409, i64 2150701430, i64 2150701458, i64 2150701490}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2150701816, i64 2150701989, i64 2150702004, i64 2150702056, i64 2150702115, i64 2150702139, i64 2150702180, i64 2150702201, i64 2150702229, i64 2150702261}
!79 = !{i64 2149140803, i64 2149140826, i64 2149140858, i64 2149140890, i64 2149140928, i64 2149140958}
!80 = !{i64 2152755475, i64 2152755500}
!81 = !{i64 5251030}
!82 = !{i64 5251227}
!83 = !{i64 2152736460}
!84 = !{i64 6306993, i64 6307024, i64 6307052, i64 6307080, i64 6307108, i64 6307140}
!85 = !{i64 2148835555}
!86 = !{i64 1219221, i64 1219245, i64 1219266, i64 1219283, i64 1219300}
!87 = !{i64 2148835781}
!88 = !{i64 2148334385, i64 2148334390, i64 2148334403, i64 2148334447, i64 2148334481, i64 2148334502}
!89 = !{i64 2150688825, i64 2150688998, i64 2150689013, i64 2150689065, i64 2150689124, i64 2150689148, i64 2150689189, i64 2150689210, i64 2150689238, i64 2150689270}
!90 = !{i64 2150689596, i64 2150689769, i64 2150689784, i64 2150689836, i64 2150689895, i64 2150689919, i64 2150689960, i64 2150689981, i64 2150690009, i64 2150690041}
