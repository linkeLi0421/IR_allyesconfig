; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/vdso.c_pt.bc'
source_filename = "../arch/arm/kernel/vdso.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.vdso_data_store = type { [2 x %struct.vdso_data], [3616 x i8] }
%struct.vdso_data = type { i32, i32, i64, i64, i32, i32, %union.anon, i32, i32, i32, i32, %struct.arch_vdso_data }
%union.anon = type { [12 x %struct.vdso_timestamp] }
%struct.vdso_timestamp = type { i64, i64 }
%struct.arch_vdso_data = type {}
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.4, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.elfinfo = type { ptr, ptr, i32, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf32_sym = type { i32, i32, i32, i8, i8, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.24 }
%struct.llist_node = type { ptr }
%union.anon.24 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@vdso_data_store = internal global %union.vdso_data_store zeroinitializer, section ".data..page_aligned", align 4096
@vdso_data = dso_local global { ptr, [28 x i8] } { ptr @vdso_data_store, [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_vdso__232_222_vdso_init3 = internal global ptr @vdso_init, section ".initcall3.init", align 4
@vdso_text_pagelist = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vdso_total_pages = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@vdso_text_mapping = internal global %struct.vm_special_mapping { ptr @.str.13, ptr null, ptr null, ptr @vdso_mremap }, section ".data..ro_after_init", align 4
@cntvct_ok = dso_local local_unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@vdso_start = external dso_local global [0 x i8], align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@vdso_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013VDSO is not a valid ELF object!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdso_init\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arch/arm/kernel/vdso.c\00", [41 x i8] zeroinitializer }, align 32
@vdso_init._entry_ptr = internal global ptr @vdso_init._entry, section ".printk_index", align 4
@vdso_end = external dso_local global [0 x i8], align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@vdso_data_page = internal global ptr null, section ".data..ro_after_init", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,armv7-timer\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,armv8-timer\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"arm,cpu-registers-not-fw-configured\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".dynsym\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c".dynstr\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__vdso_gettimeofday\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__vdso_clock_gettime\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__vdso_clock_gettime64\00", [41 x i8] zeroinitializer }, align 32
@vdso_data_mapping = internal constant { %struct.vm_special_mapping, [16 x i8] } { %struct.vm_special_mapping { ptr @.str.12, ptr @vdso_data_page, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[vvar]\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"[vdso]\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"vdso_data\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 42, i32 19 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"vdso_text_pagelist\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 31, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 187, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 188, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 87, i32 43 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 89, i32 44 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 93, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 168, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 169, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 176, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 177, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 178, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"vdso_data_mapping\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 45, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 46, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [26 x i8] c"../arch/arm/kernel/vdso.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 59, i32 10 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__initcall__kmod_vdso__232_222_vdso_init3, ptr @vdso_init._entry, ptr @vdso_init._entry_ptr, ptr @vdso_data, ptr @vdso_text_pagelist, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vdso_data_mapping, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdso_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdso_text_pagelist to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdso_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdso_data_mapping to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vdso_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @vdso_start, ptr noundef nonnull dereferenceable(4) @.str, i32 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 4) #14
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !56

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @vdso_text_pagelist, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #19
  store ptr %call8.i.i, ptr @vdso_text_pagelist, align 4
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.cleanup_crit_edge, label %if.end4

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %4 = load ptr, ptr @vdso_data, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  store ptr %add.ptr, ptr @vdso_data_page, align 4
  br i1 icmp ugt (i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 0), label %for.body.preheader, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %if.end4
  %umax = call i32 @llvm.umax.i32(i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.027, 12
  %add.ptr7 = getelementptr i8, ptr @vdso_start, i32 %mul
  %7 = ptrtoint ptr %add.ptr7 to i32
  %sub8 = add i32 %7, 1073741824
  %shr9 = lshr i32 %sub8, 12
  %add.ptr12 = getelementptr %struct.page, ptr %6, i32 %shr9
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.027
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr12, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %9 = load ptr, ptr @vdso_text_pagelist, align 4
  store ptr %9, ptr getelementptr inbounds (%struct.vm_special_mapping, ptr @vdso_text_mapping, i32 0, i32 1), align 4
  store i32 add (i32 ashr (i32 sub (i32 ptrtoint (ptr @vdso_end to i32), i32 ptrtoint (ptr @vdso_start to i32)), i32 12), i32 1), ptr @vdso_total_pages, align 4
  %call14 = tail call fastcc zeroext i1 @cntvct_functional() #20
  %frombool = zext i1 %call14 to i8
  store i8 %frombool, ptr @cntvct_ok, align 1
  tail call fastcc void @patch_vdso() #20
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ -8, %do.end ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arm_install_vdso(ptr noundef %mm, i32 noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vdso = getelementptr inbounds %struct.anon, ptr %mm, i32 0, i32 42, i32 3
  %0 = ptrtoint ptr %vdso to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vdso, align 8
  %1 = load ptr, ptr @vdso_text_pagelist, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @_install_special_mapping(ptr noundef %mm, i32 noundef %addr, i32 noundef 4096, i32 noundef 17, ptr noundef nonnull @vdso_data_mapping) #14
  %cmp.i.i.i.not = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add = add i32 %addr, 4096
  %2 = load i32, ptr @vdso_total_pages, align 4
  %sub = shl i32 %2, 12
  %shl = add i32 %sub, -4096
  %call3 = tail call ptr @_install_special_mapping(ptr noundef %mm, i32 noundef %add, i32 noundef %shl, i32 noundef 117, ptr noundef nonnull @vdso_text_mapping) #14
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end2.cleanup_crit_edge, label %if.then5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %vdso to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %vdso, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_install_special_mapping(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @cntvct_functional() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_put_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_put

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %np.014 = phi ptr [ %call1, %if.end.if.end4_crit_edge ], [ %call, %entry.if.end4_crit_edge ]
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %np.014, ptr noundef nonnull @.str.6, ptr noundef null) #14
  %tobool.i.not = icmp eq ptr %call.i, null
  br label %out_put

out_put:                                          ; preds = %if.end4, %if.end.out_put_crit_edge
  %np.015 = phi ptr [ null, %if.end.out_put_crit_edge ], [ %np.014, %if.end4 ]
  %ret.0.off0 = phi i1 [ false, %if.end.out_put_crit_edge ], [ %tobool.i.not, %if.end4 ]
  tail call void @of_node_put(ptr noundef %np.015) #14
  ret i1 %ret.0.off0
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @patch_vdso() unnamed_addr #5 section ".init.text" align 64 {
entry:
  %einfo = alloca %struct.elfinfo, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %einfo) #14
  %0 = getelementptr inbounds %struct.elfinfo, ptr %einfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.elfinfo, ptr %einfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.elfinfo, ptr %einfo, i32 0, i32 3
  %3 = ptrtoint ptr %einfo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vdso_start, ptr %einfo, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %2, align 4
  %call = call fastcc ptr @find_section(ptr noundef nonnull @vdso_start, ptr noundef nonnull @.str.7, ptr noundef %1) #20
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %0, align 4
  %7 = ptrtoint ptr %einfo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %einfo, align 4
  %call5 = call fastcc ptr @find_section(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef null) #20
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %2, align 4
  %10 = load i8, ptr @cntvct_ok, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = call fastcc ptr @find_symbol(ptr noundef nonnull %einfo, ptr noundef nonnull @.str.9) #18
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.vdso_nullpatch_one.exit_crit_edge, label %if.end.i

if.then.vdso_nullpatch_one.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %vdso_nullpatch_one.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call.i, align 4
  br label %vdso_nullpatch_one.exit

vdso_nullpatch_one.exit:                          ; preds = %if.end.i, %if.then.vdso_nullpatch_one.exit_crit_edge
  %call.i1 = call fastcc ptr @find_symbol(ptr noundef nonnull %einfo, ptr noundef nonnull @.str.10) #18
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %vdso_nullpatch_one.exit.vdso_nullpatch_one.exit4_crit_edge, label %if.end.i3

vdso_nullpatch_one.exit.vdso_nullpatch_one.exit4_crit_edge: ; preds = %vdso_nullpatch_one.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %vdso_nullpatch_one.exit4

if.end.i3:                                        ; preds = %vdso_nullpatch_one.exit
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %call.i1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call.i1, align 4
  br label %vdso_nullpatch_one.exit4

vdso_nullpatch_one.exit4:                         ; preds = %if.end.i3, %vdso_nullpatch_one.exit.vdso_nullpatch_one.exit4_crit_edge
  %call.i5 = call fastcc ptr @find_symbol(ptr noundef nonnull %einfo, ptr noundef nonnull @.str.11) #18
  %tobool.not.i6 = icmp eq ptr %call.i5, null
  br i1 %tobool.not.i6, label %vdso_nullpatch_one.exit4.if.end_crit_edge, label %if.end.i7

vdso_nullpatch_one.exit4.if.end_crit_edge:        ; preds = %vdso_nullpatch_one.exit4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i7:                                        ; preds = %vdso_nullpatch_one.exit4
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %call.i5, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i7, %vdso_nullpatch_one.exit4.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %einfo) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_section(ptr noundef readonly %ehdr, ptr nocapture noundef readonly %name, ptr noundef writeonly %size) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %e_shoff = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 6
  %0 = ptrtoint ptr %e_shoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %e_shoff, align 4
  %add.ptr = getelementptr i8, ptr %ehdr, i32 %1
  %e_shstrndx = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 13
  %2 = ptrtoint ptr %e_shstrndx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %e_shstrndx, align 2
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr %struct.elf32_shdr, ptr %add.ptr, i32 %idxprom
  %sh_offset = getelementptr inbounds %struct.elf32_shdr, ptr %arrayidx, i32 0, i32 4
  %4 = ptrtoint ptr %sh_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sh_offset, align 4
  %add.ptr1 = getelementptr i8, ptr %ehdr, i32 %5
  %e_shnum = getelementptr inbounds %struct.elf32_hdr, ptr %ehdr, i32 0, i32 12
  %6 = ptrtoint ptr %e_shnum to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %e_shnum, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp33 = icmp ugt i16 %7, 1
  br i1 %cmp33, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.elf32_shdr, ptr %add.ptr, i32 %i.034
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %add.ptr4 = getelementptr i8, ptr %add.ptr1, i32 %9
  %call = tail call i32 @strcmp(ptr noundef %add.ptr4, ptr noundef %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %size, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sh_size = getelementptr inbounds %struct.elf32_shdr, ptr %arrayidx3, i32 0, i32 5
  %10 = ptrtoint ptr %sh_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_size, align 4
  %12 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %sh_offset10 = getelementptr inbounds %struct.elf32_shdr, ptr %arrayidx3, i32 0, i32 4
  %13 = ptrtoint ptr %sh_offset10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sh_offset10, align 4
  %add.ptr11 = getelementptr i8, ptr %ehdr, i32 %14
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool13.not = icmp eq ptr %size, null
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.then14

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %for.end.cleanup_crit_edge, %if.end
  %retval.0 = phi ptr [ %add.ptr11, %if.end ], [ null, %if.then14 ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_symbol(ptr nocapture noundef readonly %lib, ptr nocapture noundef readonly %symname) unnamed_addr #5 section ".init.text" align 64 {
entry:
  %name = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dynsymsize = getelementptr inbounds %struct.elfinfo, ptr %lib, i32 0, i32 2
  %0 = ptrtoint ptr %dynsymsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dynsymsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp33.not = icmp ult i32 %1, 16
  br i1 %cmp33.not, label %entry.cleanup17_crit_edge, label %for.body.lr.ph

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %entry
  %dynsym = getelementptr inbounds %struct.elfinfo, ptr %lib, i32 0, i32 1
  %dynstr = getelementptr inbounds %struct.elfinfo, ptr %lib, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name) #14
  %2 = call ptr @memset(ptr %name, i32 255, i32 64)
  %3 = ptrtoint ptr %dynsym to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dynsym, align 4
  %arrayidx = getelementptr %struct.elf32_sym, ptr %4, i32 %i.034
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %dynstr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dynstr, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %6
  %call = call i32 @strlcpy(ptr noundef nonnull %name, ptr noundef %add.ptr, i32 noundef 64) #14
  %call6 = call ptr @strchr(ptr noundef nonnull %name, i32 noundef 64)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call6, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %call10 = call i32 @strcmp(ptr noundef %symname, ptr noundef nonnull %name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %cleanup, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

cleanup:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %dynsym to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dynsym, align 4
  %arrayidx14 = getelementptr %struct.elf32_sym, ptr %11, i32 %i.034
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #14
  br label %cleanup17

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name) #14
  %inc = add nuw nsw i32 %i.034, 1
  %12 = ptrtoint ptr %dynsymsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dynsymsize, align 4
  %div27 = lshr i32 %13, 4
  %cmp = icmp ult i32 %inc, %div27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup17_crit_edge

for.inc.cleanup17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup17

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup17:                                        ; preds = %for.inc.cleanup17_crit_edge, %cleanup, %entry.cleanup17_crit_edge
  %retval.2 = phi ptr [ %arrayidx14, %cleanup ], [ null, %entry.cleanup17_crit_edge ], [ null, %for.inc.cleanup17_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vdso_mremap(ptr nocapture noundef readnone %sm, ptr nocapture noundef readonly %new_vma) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %new_vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_vma, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !46) #14
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 8
  %vdso = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 42, i32 3
  %8 = ptrtoint ptr %vdso to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %vdso, align 8
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly cold nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @vdso_data, !1, !"vdso_data", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/vdso.c", i32 42, i32 19}
!2 = !{ptr @__initcall__kmod_vdso__232_222_vdso_init3, !3, !"__initcall__kmod_vdso__232_222_vdso_init3", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/vdso.c", i32 222, i32 1}
!4 = !{ptr @vdso_text_pagelist, !5, !"vdso_text_pagelist", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/vdso.c", i32 31, i32 22}
!6 = !{ptr @vdso_total_pages, !7, !"vdso_total_pages", i1 false, i1 false}
!7 = !{!"../arch/arm/kernel/vdso.c", i32 36, i32 14}
!8 = !{ptr @vdso_data_store, !9, !"vdso_data_store", i1 false, i1 false}
!9 = !{!"../arch/arm/kernel/vdso.c", i32 41, i32 30}
!10 = !{ptr @cntvct_ok, !11, !"cntvct_ok", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/vdso.c", i32 73, i32 6}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/vdso.c", i32 187, i32 25}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/vdso.c", i32 188, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vdso_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @vdso_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vdso_data_page, !21, !"vdso_data_page", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/vdso.c", i32 44, i32 21}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/vdso.c", i32 87, i32 43}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/vdso.c", i32 89, i32 44}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/vdso.c", i32 93, i32 32}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/vdso.c", i32 168, i32 41}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/vdso.c", i32 169, i32 41}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/kernel/vdso.c", i32 176, i32 30}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/kernel/vdso.c", i32 177, i32 30}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/kernel/vdso.c", i32 178, i32 30}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/kernel/vdso.c", i32 46, i32 10}
!40 = !{ptr @vdso_data_mapping, !41, !"vdso_data_mapping", i1 false, i1 false}
!41 = !{!"../arch/arm/kernel/vdso.c", i32 45, i32 40}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/kernel/vdso.c", i32 59, i32 10}
!44 = !{ptr @vdso_text_mapping, !45, !"vdso_text_mapping", i1 false, i1 false}
!45 = !{!"../arch/arm/kernel/vdso.c", i32 58, i32 34}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i8 0, i8 2}
