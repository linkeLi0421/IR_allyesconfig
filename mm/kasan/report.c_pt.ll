; ModuleID = '/llk/IR_all_yes/mm/kasan/report.c_pt.bc'
source_filename = "../mm/kasan/report.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kasan_save_enable_multi_shot\22, \22a\22\09"
module asm "\09.weak\09__crc_kasan_save_enable_multi_shot\09\09\09\09"
module asm "\09.long\09__crc_kasan_save_enable_multi_shot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasan_save_enable_multi_shot:\09\09\09\09\09"
module asm "\09.asciz \09\22kasan_save_enable_multi_shot\22\09\09\09\09\09"
module asm "__kstrtabns_kasan_save_enable_multi_shot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kasan_restore_multi_shot\22, \22a\22\09"
module asm "\09.weak\09__crc_kasan_restore_multi_shot\09\09\09\09"
module asm "\09.long\09__crc_kasan_restore_multi_shot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasan_restore_multi_shot:\09\09\09\09\09"
module asm "\09.asciz \09\22kasan_restore_multi_shot\22\09\09\09\09\09"
module asm "__kstrtabns_kasan_restore_multi_shot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.thread_union = type { %struct.task_struct, [9216 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.57 }
%union.anon.57 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.75, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kunit = type { ptr, ptr, ptr, %struct.kunit_try_catch, ptr, i32, %struct.spinlock, i32, %struct.list_head, [256 x i8] }
%struct.kunit_try_catch = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.slab = type { i32, %union.anon.82, ptr, ptr, %union.anon.84, i32, %struct.atomic_t, i32 }
%union.anon.82 = type { %struct.list_head }
%union.anon.84 = type { i32 }
%struct.kmem_cache = type { ptr, i32, i32, i32, i32, %struct.reciprocal_value, i32, i32, i32, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, %struct.kmem_cache_order_objects, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.kobject, i32, ptr, %struct.kasan_cache, i32, i32, [1 x ptr] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.kmem_cache_order_objects = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kasan_cache = type { i32, i32, i8 }
%struct.kasan_track = type { i32, i32 }
%struct.kasan_alloc_meta = type { %struct.kasan_track, [2 x i32] }
%struct.kasan_access_info = type { ptr, ptr, i32, i8, i32 }

@__setup_str_early_kasan_fault = internal constant [12 x i8] c"kasan.fault\00", section ".init.rodata", align 1
@__setup_early_kasan_fault = internal global %struct.obs_kernel_param { ptr @__setup_str_early_kasan_fault, ptr @early_kasan_fault, i32 1 }, section ".init.setup", align 4
@kasan_flags = internal global i32 0, align 4
@__kstrtab_kasan_save_enable_multi_shot = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasan_save_enable_multi_shot = external dso_local constant [0 x i8], align 1
@__ksymtab_kasan_save_enable_multi_shot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasan_save_enable_multi_shot to i32), ptr @__kstrtab_kasan_save_enable_multi_shot, ptr @__kstrtabns_kasan_save_enable_multi_shot }, section "___ksymtab_gpl+kasan_save_enable_multi_shot", align 4
@__kstrtab_kasan_restore_multi_shot = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasan_restore_multi_shot = external dso_local constant [0 x i8], align 1
@__ksymtab_kasan_restore_multi_shot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasan_restore_multi_shot to i32), ptr @__kstrtab_kasan_restore_multi_shot, ptr @__kstrtabns_kasan_restore_multi_shot }, section "___ksymtab_gpl+kasan_restore_multi_shot", align 4
@__setup_str_kasan_set_multi_shot = internal constant [17 x i8] c"kasan_multi_shot\00", section ".init.rodata", align 1
@__setup_kasan_set_multi_shot = internal global %struct.obs_kernel_param { ptr @__setup_str_kasan_set_multi_shot, ptr @kasan_set_multi_shot, i32 0 }, section ".init.setup", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@kasan_report_invalid_free._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 378, ptr null, ptr null }, align 1
@.str = private unnamed_addr constant [50 x i8] c"\013BUG: KASAN: double-free or invalid-free in %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"kasan_report_invalid_free\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mm/kasan/report.c\00", align 1
@kasan_report_invalid_free._entry_ptr = internal global ptr @kasan_report_invalid_free._entry, section ".printk_index", align 4
@kasan_report_invalid_free._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 380, ptr null, ptr null }, align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\013\0A\00", align 1
@kasan_report_invalid_free._entry_ptr.5 = internal global ptr @kasan_report_invalid_free._entry.3, section ".printk_index", align 4
@kasan_report_invalid_free._entry.6 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 382, ptr null, ptr null }, align 1
@kasan_report_invalid_free._entry_ptr.7 = internal global ptr @kasan_report_invalid_free._entry.6, section ".printk_index", align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@kasan_arg_fault = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"kasan_data\00", align 1
@report_lock = internal global %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, align 4
@start_report._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 110, ptr null, ptr null }, align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"\013==================================================================\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"start_report\00", align 1
@start_report._entry_ptr = internal global ptr @start_report._entry, section ".printk_index", align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"report_lock\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@print_address_description._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.17, ptr @.str.2, i32 256, ptr null, ptr null }, align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"print_address_description\00", align 1
@print_address_description._entry_ptr = internal global ptr @print_address_description._entry, section ".printk_index", align 4
@print_address_description._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 267, ptr null, ptr null }, align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\013The buggy address belongs to the variable:\0A\00", align 1
@print_address_description._entry_ptr.20 = internal global ptr @print_address_description._entry.18, section ".printk_index", align 4
@print_address_description._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 268, ptr null, ptr null }, align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"\013 %pS\0A\00", align 1
@print_address_description._entry_ptr.23 = internal global ptr @print_address_description._entry.21, section ".printk_index", align 4
@print_address_description._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 272, ptr null, ptr null }, align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"\013The buggy address belongs to the page:\0A\00", align 1
@print_address_description._entry_ptr.26 = internal global ptr @print_address_description._entry.24, section ".printk_index", align 4
@.str.27 = private unnamed_addr constant [27 x i8] c"kasan: bad access detected\00", align 1
@.str.28 = private unnamed_addr constant [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@describe_object_stacks._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.30, ptr @.str.2, i32 202, ptr null, ptr null }, align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"describe_object_stacks\00", align 1
@describe_object_stacks._entry_ptr = internal global ptr @describe_object_stacks._entry, section ".printk_index", align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"Freed\00", align 1
@describe_object_stacks._entry.32 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.30, ptr @.str.2, i32 208, ptr null, ptr null }, align 1
@describe_object_stacks._entry_ptr.33 = internal global ptr @describe_object_stacks._entry.32, section ".printk_index", align 4
@describe_object_stacks._entry.34 = internal constant %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 215, ptr null, ptr null }, align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"\013Last potentially related work creation:\0A\00", align 1
@describe_object_stacks._entry_ptr.36 = internal global ptr @describe_object_stacks._entry.34, section ".printk_index", align 4
@describe_object_stacks._entry.37 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.30, ptr @.str.2, i32 217, ptr null, ptr null }, align 1
@describe_object_stacks._entry_ptr.38 = internal global ptr @describe_object_stacks._entry.37, section ".printk_index", align 4
@describe_object_stacks._entry.39 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.30, ptr @.str.2, i32 220, ptr null, ptr null }, align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"\013Second to last potentially related work creation:\0A\00", align 1
@describe_object_stacks._entry_ptr.41 = internal global ptr @describe_object_stacks._entry.39, section ".printk_index", align 4
@describe_object_stacks._entry.42 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.30, ptr @.str.2, i32 222, ptr null, ptr null }, align 1
@describe_object_stacks._entry_ptr.43 = internal global ptr @describe_object_stacks._entry.42, section ".printk_index", align 4
@print_track._entry = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 137, ptr null, ptr null }, align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"\013%s by task %u:\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"print_track\00", align 1
@print_track._entry_ptr = internal global ptr @print_track._entry, section ".printk_index", align 4
@print_track._entry.46 = internal constant %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 141, ptr null, ptr null }, align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"\013(stack is not available)\0A\00", align 1
@print_track._entry_ptr.48 = internal global ptr @print_track._entry.46, section ".printk_index", align 4
@describe_object_addr._entry = internal constant %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 171, ptr null, ptr null }, align 1
@.str.49 = private unnamed_addr constant [92 x i8] c"\013The buggy address belongs to the object at %px\0A which belongs to the cache %s of size %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"describe_object_addr\00", align 1
@describe_object_addr._entry_ptr = internal global ptr @describe_object_addr._entry, section ".printk_index", align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"to the left\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"to the right\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"inside\00", align 1
@describe_object_addr._entry.54 = internal constant %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 190, ptr null, ptr null }, align 1
@.str.55 = private unnamed_addr constant [74 x i8] c"\013The buggy address is located %d bytes %s of\0A %d-byte region [%px, %px)\0A\00", align 1
@describe_object_addr._entry_ptr.56 = internal global ptr @describe_object_addr._entry.54, section ".printk_index", align 4
@_stext = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@init_thread_union = external dso_local global %union.thread_union, align 128
@print_memory_metadata._entry = internal constant %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 308, ptr null, ptr null }, align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"\013Memory state around the buggy address:\0A\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"print_memory_metadata\00", align 1
@print_memory_metadata._entry_ptr = internal global ptr @print_memory_metadata._entry, section ".printk_index", align 4
@.str.59 = private unnamed_addr constant [7 x i8] c">%px: \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c" %px: \00", align 1
@print_memory_metadata._entry.61 = internal constant %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.2, i32 329, ptr null, ptr null }, align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"\013%*c\0A\00", align 1
@print_memory_metadata._entry_ptr.63 = internal global ptr @print_memory_metadata._entry.61, section ".printk_index", align 4
@end_report._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.64, ptr @.str.2, i32 117, ptr null, ptr null }, align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"end_report\00", align 1
@end_report._entry_ptr = internal global ptr @end_report._entry, section ".printk_index", align 4
@panic_on_warn = external dso_local local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [23 x i8] c"panic_on_warn set ...\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"kasan.fault=panic set ...\0A\00", align 1
@__tracepoint_error_report_end = external dso_local global %struct.tracepoint, align 4
@.str.67 = private unnamed_addr constant [36 x i8] c"include/trace/events/error_report.h\00", align 1
@trace_error_report_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"suspicious rcu_dereference_check() usage\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"include/linux/cpumask.h\00", align 1
@__kasan_report._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.70, ptr @.str.2, i32 439, ptr null, ptr null }, align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"__kasan_report\00", align 1
@__kasan_report._entry_ptr = internal global ptr @__kasan_report._entry, section ".printk_index", align 4
@__kasan_report._entry.71 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.70, ptr @.str.2, i32 443, ptr null, ptr null }, align 1
@__kasan_report._entry_ptr.72 = internal global ptr @__kasan_report._entry.71, section ".printk_index", align 4
@print_error_description._entry = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 90, ptr null, ptr null }, align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"\013BUG: KASAN: %s in %pS\0A\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"print_error_description\00", align 1
@print_error_description._entry_ptr = internal global ptr @print_error_description._entry, section ".printk_index", align 4
@print_error_description._entry.75 = internal constant %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 94, ptr null, ptr null }, align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"\013%s of size %zu at addr %px by task %s/%d\0A\00", align 1
@print_error_description._entry_ptr.77 = internal global ptr @print_error_description._entry.75, section ".printk_index", align 4
@.str.78 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@print_error_description._entry.80 = internal constant %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str.2, i32 98, ptr null, ptr null }, align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"\013%s at addr %px by task %s/%d\0A\00", align 1
@print_error_description._entry_ptr.82 = internal global ptr @print_error_description._entry.80, section ".printk_index", align 4
@llvm.compiler.used = appending global [56 x ptr] [ptr @__kasan_report._entry, ptr @__kasan_report._entry.71, ptr @__kasan_report._entry_ptr, ptr @__kasan_report._entry_ptr.72, ptr @__ksymtab_kasan_restore_multi_shot, ptr @__ksymtab_kasan_save_enable_multi_shot, ptr @__setup_early_kasan_fault, ptr @__setup_kasan_set_multi_shot, ptr @describe_object_addr._entry, ptr @describe_object_addr._entry.54, ptr @describe_object_addr._entry_ptr, ptr @describe_object_addr._entry_ptr.56, ptr @describe_object_stacks._entry, ptr @describe_object_stacks._entry.32, ptr @describe_object_stacks._entry.34, ptr @describe_object_stacks._entry.37, ptr @describe_object_stacks._entry.39, ptr @describe_object_stacks._entry.42, ptr @describe_object_stacks._entry_ptr, ptr @describe_object_stacks._entry_ptr.33, ptr @describe_object_stacks._entry_ptr.36, ptr @describe_object_stacks._entry_ptr.38, ptr @describe_object_stacks._entry_ptr.41, ptr @describe_object_stacks._entry_ptr.43, ptr @end_report._entry, ptr @end_report._entry_ptr, ptr @kasan_report_invalid_free._entry, ptr @kasan_report_invalid_free._entry.3, ptr @kasan_report_invalid_free._entry.6, ptr @kasan_report_invalid_free._entry_ptr, ptr @kasan_report_invalid_free._entry_ptr.5, ptr @kasan_report_invalid_free._entry_ptr.7, ptr @print_address_description._entry, ptr @print_address_description._entry.18, ptr @print_address_description._entry.21, ptr @print_address_description._entry.24, ptr @print_address_description._entry_ptr, ptr @print_address_description._entry_ptr.20, ptr @print_address_description._entry_ptr.23, ptr @print_address_description._entry_ptr.26, ptr @print_error_description._entry, ptr @print_error_description._entry.75, ptr @print_error_description._entry.80, ptr @print_error_description._entry_ptr, ptr @print_error_description._entry_ptr.77, ptr @print_error_description._entry_ptr.82, ptr @print_memory_metadata._entry, ptr @print_memory_metadata._entry.61, ptr @print_memory_metadata._entry_ptr, ptr @print_memory_metadata._entry_ptr.63, ptr @print_track._entry, ptr @print_track._entry.46, ptr @print_track._entry_ptr, ptr @print_track._entry_ptr.48, ptr @start_report._entry, ptr @start_report._entry_ptr], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize uwtable(sync)
define internal i32 @early_kasan_fault(ptr noundef %arg) #0 section ".init.text" align 64 {
entry:
  %tobool.not = icmp eq ptr %arg, null
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @.str.8) #10
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end8, label %if.else

if.else:                                          ; preds = %if.end
  %call3 = tail call i32 @strcmp(ptr noundef nonnull %arg, ptr noundef nonnull @.str.9) #10
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.else, %if.end
  %storemerge = phi i32 [ 1, %if.end ], [ 2, %if.else ]
  store i32 %storemerge, ptr @kasan_arg_fault, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.else, %entry
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry ], [ -22, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @kasan_save_enable_multi_shot() #1 align 64 {
entry:
  %call = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull @kasan_flags) #10
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_restore_multi_shot(i1 noundef zeroext %enabled) #1 align 64 {
entry:
  br i1 %enabled, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @kasan_flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize uwtable(sync)
define internal i32 @kasan_set_multi_shot(ptr nocapture noundef readnone %str) #0 section ".init.text" align 64 {
entry:
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @kasan_flags) #10
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid willreturn uwtable(sync)
define dso_local ptr @kasan_addr_to_page(ptr noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  %cmp.not = icmp uge ptr %addr, inttoptr (i32 -1073741824 to ptr)
  %0 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %0, %addr
  %or.cond = select i1 %cmp.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %2 = ptrtoint ptr %addr to i32
  %sub.i = add i32 %2, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %3 = getelementptr %struct.page, ptr %1, i32 %shr.i, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %4, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %if.then
  %sub.i.i = add i32 %4, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %if.then
  %add.ptr.i = getelementptr %struct.page, ptr %1, i32 %shr.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  br label %return

return:                                           ; preds = %virt_to_head_page.exit, %entry
  %retval.0 = phi ptr [ %6, %virt_to_head_page.exit ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local ptr @kasan_addr_to_slab(ptr noundef %addr) local_unnamed_addr #1 align 64 {
entry:
  %cmp.not = icmp uge ptr %addr, inttoptr (i32 -1073741824 to ptr)
  %0 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %0, %addr
  %or.cond = select i1 %cmp.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %2 = ptrtoint ptr %addr to i32
  %sub.i.i = add i32 %2, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %3 = getelementptr %struct.page, ptr %1, i32 %shr.i.i, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %4, 1
  %tobool.not.i.i3.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i3.i, label %if.end.i.i.i, label %if.then.i.i4.i, !prof !9

if.then.i.i4.i:                                   ; preds = %if.then
  %sub.i.i.i = add i32 %4, -1
  br label %virt_to_folio.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  %add.ptr.i.i = getelementptr %struct.page, ptr %1, i32 %shr.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_folio.exit.i

virt_to_folio.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.i4.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i4.i ], [ %5, %if.end.i.i.i ]
  %6 = inttoptr i32 %retval.0.i.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i = and i32 %8, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %virt_to_slab.exit, label %if.then.i.i.i, !prof !9

if.then.i.i.i:                                    ; preds = %virt_to_folio.exit.i
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.10) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !10
  unreachable

virt_to_slab.exit:                                ; preds = %virt_to_folio.exit.i
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 512
  %tobool.i.not.i = icmp eq i32 %10, 0
  %call..i = select i1 %tobool.i.not.i, ptr null, ptr %6
  br label %return

return:                                           ; preds = %virt_to_slab.exit, %entry
  %retval.0 = phi ptr [ %call..i, %virt_to_slab.exit ], [ null, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local void @kasan_report_invalid_free(ptr noundef %object, i32 noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task, align 8
  %kunit_test = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 192
  %3 = load ptr, ptr %kunit_test, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @kasan_update_kunit_status(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @kasan_disable_current() #10
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @report_lock) #10
  store i32 %call2.i, ptr %flags, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  %4 = inttoptr i32 %ip to ptr
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %4) #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  tail call fastcc void @print_address_description(ptr noundef %object) #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  tail call fastcc void @print_memory_metadata(ptr noundef %object) #12
  %5 = ptrtoint ptr %object to i32
  call fastcc void @end_report(ptr noundef nonnull %flags, i32 noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @kasan_update_kunit_status(ptr noundef %cur_test) unnamed_addr #1 align 64 {
entry:
  %lock.i.i = getelementptr inbounds %struct.kunit, ptr %cur_test, i32 0, i32 6
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %resources.i.i = getelementptr inbounds %struct.kunit, ptr %cur_test, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.kunit, ptr %cur_test, i32 0, i32 8, i32 1
  %.pn3.i.i = load ptr, ptr %prev.i.i, align 4
  %cmp7.not4.i.i = icmp eq ptr %.pn3.i.i, %resources.i.i
  br i1 %cmp7.not4.i.i, label %kunit_find_named_resource.exit.thread, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %entry
  %.pn5.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i ], [ %.pn3.i.i, %entry ]
  %name.i.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -12
  %0 = load ptr, ptr %name.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i, label %kunit_resource_name_match.exit.i.i

kunit_resource_name_match.exit.i.i:               ; preds = %for.body.i.i
  %call.i.i.i = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #10
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %for.inc.i.i

if.then.i.i:                                      ; preds = %kunit_resource_name_match.exit.i.i
  %res.0.le.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -16
  %refcount.i.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -4
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !11
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end15.sink.split.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i, !prof !12

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i.i.i.i, label %kunit_find_named_resource.exit, label %if.end15.sink.split.i.i.i.i.i.i.i, !prof !9

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i, %if.then.i.i
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i ], [ 1, %if.else.i.i.i.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #10
  br label %kunit_find_named_resource.exit

for.inc.i.i:                                      ; preds = %kunit_resource_name_match.exit.i.i, %for.body.i.i
  %prev12.i.i = getelementptr inbounds %struct.list_head, ptr %.pn5.i.i, i32 0, i32 1
  %.pn.i.i = load ptr, ptr %prev12.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %.pn.i.i, %resources.i.i
  br i1 %cmp7.not.i.i, label %kunit_find_named_resource.exit.thread, label %for.body.i.i

kunit_find_named_resource.exit.thread:            ; preds = %for.inc.i.i, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  br label %if.then

kunit_find_named_resource.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #10
  %tobool.not = icmp eq ptr %res.0.le.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %kunit_find_named_resource.exit, %kunit_find_named_resource.exit.thread
  %status.i = getelementptr inbounds %struct.kunit, ptr %cur_test, i32 0, i32 7
  store volatile i32 1, ptr %status.i, align 4
  br label %cleanup

if.end:                                           ; preds = %kunit_find_named_resource.exit
  %3 = load ptr, ptr %res.0.le.i.i, align 4
  store volatile i8 1, ptr %3, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !13
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i.i, ptr %refcount.i.i.i, i32 1, ptr elementtype(i32) %refcount.i.i.i) #11, !srcloc !14
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i12, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %cleanup, label %if.then10.i.i.i.i.i, !prof !9

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i.i, i32 noundef 3) #10
  br label %cleanup

if.then.i.i12:                                    ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !15
  %free.i.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -8
  %5 = load ptr, ptr %free.i.i.i, align 4
  %tobool.not.i.i.i11 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i11, label %cleanup, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i12
  tail call void %5(ptr noundef nonnull %res.0.le.i.i) #10
  tail call void @kfree(ptr noundef nonnull %res.0.le.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then.i.i12, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @print_address_description(ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %cmp.not.i = icmp uge ptr %addr, inttoptr (i32 -1073741824 to ptr)
  %0 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %0, %addr
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.then.i3, label %kasan_addr_to_page.exit

if.then.i3:                                       ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %2 = ptrtoint ptr %addr to i32
  %sub.i.i1 = add i32 %2, 1073741824
  %shr.i.i2 = lshr i32 %sub.i.i1, 12
  %3 = getelementptr %struct.page, ptr %1, i32 %shr.i.i2, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %4, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !9

if.then.i.i.i:                                    ; preds = %if.then.i3
  %sub.i.i.i = add i32 %4, -1
  br label %virt_to_head_page.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i3
  %add.ptr.i.i = getelementptr %struct.page, ptr %1, i32 %shr.i.i2
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  br label %virt_to_head_page.exit.i

virt_to_head_page.exit.i:                         ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %5, %if.end.i.i.i ]
  %6 = inttoptr i32 %retval.0.i.i.i to ptr
  br label %kasan_addr_to_page.exit

kasan_addr_to_page.exit:                          ; preds = %virt_to_head_page.exit.i, %entry
  %retval.0.i = phi ptr [ %6, %virt_to_head_page.exit.i ], [ null, %entry ]
  tail call void @dump_stack_lvl(ptr noundef nonnull @.str.16) #13
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %kasan_addr_to_page.exit
  %7 = getelementptr inbounds %struct.page, ptr %retval.0.i, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %8, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !9

if.then.i.i:                                      ; preds = %land.lhs.true
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true
  %9 = ptrtoint ptr %retval.0.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = load volatile i32, ptr %10, align 4
  %cmp.i.not.i = icmp eq i32 %11, -1
  %12 = load volatile i32, ptr %7, align 4
  %and.i16.i = and i32 %12, 1
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !12

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !9

if.then.i19.i:                                    ; preds = %if.then.i
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  %13 = ptrtoint ptr %retval.0.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.28) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #11, !srcloc !16
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !9

if.then.i26.i:                                    ; preds = %do.end10.i
  %sub.i25.i = add i32 %12, -1
  br label %PageSlab.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  %15 = ptrtoint ptr %retval.0.i to i32
  br label %PageSlab.exit

PageSlab.exit:                                    ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %tobool3.not = icmp eq i32 %18, 0
  br i1 %tobool3.not, label %if.end, label %if.then

if.then:                                          ; preds = %PageSlab.exit
  %slab_cache = getelementptr inbounds %struct.slab, ptr %retval.0.i, i32 0, i32 2
  %19 = load ptr, ptr %slab_cache, align 4
  %call.i.i.i = tail call ptr @page_address(ptr noundef nonnull %retval.0.i) #10
  %sub.ptr.lhs.cast.i = ptrtoint ptr %addr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call.i.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %size.i = getelementptr inbounds %struct.kmem_cache, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %size.i, align 4
  %rem.i = urem i32 %sub.ptr.sub.i, %20
  %idx.neg.i = sub i32 0, %rem.i
  %add.ptr.i = getelementptr i8, ptr %addr, i32 %idx.neg.i
  %call.i.i14.i = tail call ptr @page_address(ptr noundef nonnull %retval.0.i) #10
  %21 = getelementptr inbounds %struct.slab, ptr %retval.0.i, i32 0, i32 4
  %bf.load.i = load i32, ptr %21, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 1
  %bf.clear.i = and i32 %bf.lshr.i, 32767
  %sub.i = add nsw i32 %bf.clear.i, -1
  %22 = load i32, ptr %size.i, align 4
  %mul.i = mul i32 %sub.i, %22
  %add.ptr3.i = getelementptr i8, ptr %call.i.i14.i, i32 %mul.i
  %cmp.i = icmp ugt ptr %add.ptr.i, %add.ptr3.i
  %add.ptr3.add.ptr.i = select i1 %cmp.i, ptr %add.ptr3.i, ptr %add.ptr.i, !prof !12
  %call5.i = tail call ptr @fixup_red_left(ptr noundef %19, ptr noundef %add.ptr3.add.ptr.i) #10
  %call.i.i = tail call ptr @kasan_get_alloc_meta(ptr noundef %19, ptr noundef %call5.i) #10
  %tobool.not.i.i4 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i4, label %if.end.i.i9, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %if.then
  %23 = load i32, ptr %call.i.i, align 4
  %call.i.i.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.29, i32 noundef %23) #13
  %stack.i.i.i = getelementptr inbounds %struct.kasan_track, ptr %call.i.i, i32 0, i32 1
  %24 = load i32, ptr %stack.i.i.i, align 4
  %tobool.not.i.i.i6 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i6, label %do.end3.i.i.i, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %if.then.i.i7
  tail call void @stack_depot_print(i32 noundef %24) #10
  br label %print_track.exit.i.i

do.end3.i.i.i:                                    ; preds = %if.then.i.i7
  %call5.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %print_track.exit.i.i

print_track.exit.i.i:                             ; preds = %do.end3.i.i.i, %if.then.i.i.i8
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %if.end.i.i9

if.end.i.i9:                                      ; preds = %print_track.exit.i.i, %if.then
  %call2.i.i = tail call ptr @kasan_get_free_track(ptr noundef %19, ptr noundef %call5.i, i8 noundef zeroext 0) #10
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %if.end10.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i9
  %25 = load i32, ptr %call2.i.i, align 4
  %call.i1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.31, i32 noundef %25) #13
  %stack.i2.i.i = getelementptr inbounds %struct.kasan_track, ptr %call2.i.i, i32 0, i32 1
  %26 = load i32, ptr %stack.i2.i.i, align 4
  %tobool.not.i3.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i3.i.i, label %do.end3.i6.i.i, label %if.then.i4.i.i

if.then.i4.i.i:                                   ; preds = %if.then4.i.i
  tail call void @stack_depot_print(i32 noundef %26) #10
  br label %print_track.exit7.i.i

do.end3.i6.i.i:                                   ; preds = %if.then4.i.i
  %call5.i5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #13
  br label %print_track.exit7.i.i

print_track.exit7.i.i:                            ; preds = %do.end3.i6.i.i, %if.then.i4.i.i
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %print_track.exit7.i.i, %if.end.i.i9
  br i1 %tobool.not.i.i4, label %describe_object_stacks.exit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end10.i.i
  %aux_stack.i.i = getelementptr inbounds %struct.kasan_alloc_meta, ptr %call.i.i, i32 0, i32 1
  %27 = load i32, ptr %aux_stack.i.i, align 4
  %tobool14.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool14.not.i.i, label %if.end28.i.i, label %do.end18.i.i

do.end18.i.i:                                     ; preds = %if.end13.i.i
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #13
  %28 = load i32, ptr %aux_stack.i.i, align 4
  tail call void @stack_depot_print(i32 noundef %28) #10
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %do.end18.i.i, %if.end13.i.i
  %arrayidx30.i.i = getelementptr %struct.kasan_alloc_meta, ptr %call.i.i, i32 0, i32 1, i32 1
  %29 = load i32, ptr %arrayidx30.i.i, align 4
  %tobool31.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool31.not.i.i, label %describe_object_stacks.exit.i, label %do.end35.i.i

do.end35.i.i:                                     ; preds = %if.end28.i.i
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  %30 = load i32, ptr %arrayidx30.i.i, align 4
  tail call void @stack_depot_print(i32 noundef %30) #10
  %call44.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %describe_object_stacks.exit.i

describe_object_stacks.exit.i:                    ; preds = %do.end35.i.i, %if.end28.i.i, %if.end10.i.i
  %31 = ptrtoint ptr %call5.i to i32
  %name.i.i = getelementptr inbounds %struct.kmem_cache, ptr %19, i32 0, i32 18
  %32 = load ptr, ptr %name.i.i, align 4
  %object_size.i.i = getelementptr inbounds %struct.kmem_cache, ptr %19, i32 0, i32 4
  %33 = load i32, ptr %object_size.i.i, align 4
  %call.i1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %call5.i, ptr noundef %32, i32 noundef %33) #13
  %tobool.not.i2.i = icmp eq ptr %addr, null
  br i1 %tobool.not.i2.i, label %is_kernel.exit.i, label %if.end.i3.i

if.end.i3.i:                                      ; preds = %describe_object_stacks.exit.i
  %cmp.i.i = icmp ugt ptr %call5.i, %addr
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.else.i.i

if.then1.i.i:                                     ; preds = %if.end.i3.i
  %sub.i.i10 = sub i32 %31, %sub.ptr.lhs.cast.i
  %.pre.i.i = load i32, ptr %object_size.i.i, align 4
  %.pre42.i.i = add i32 %.pre.i.i, %31
  br label %do.end14.i.i

if.else.i.i:                                      ; preds = %if.end.i3.i
  %34 = load i32, ptr %object_size.i.i, align 4
  %add.i.i = add i32 %34, %31
  %cmp3.not.i.i = icmp ugt i32 %add.i.i, %sub.ptr.lhs.cast.i
  br i1 %cmp3.not.i.i, label %if.else8.i.i, label %if.then4.i4.i

if.then4.i4.i:                                    ; preds = %if.else.i.i
  %sub7.i.i = sub i32 %sub.ptr.lhs.cast.i, %add.i.i
  br label %do.end14.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  %sub9.i.i = sub i32 %sub.ptr.lhs.cast.i, %31
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.else8.i.i, %if.then4.i4.i, %if.then1.i.i
  %add18.pre-phi.i.i = phi i32 [ %.pre42.i.i, %if.then1.i.i ], [ %add.i.i, %if.else8.i.i ], [ %add.i.i, %if.then4.i4.i ]
  %35 = phi i32 [ %.pre.i.i, %if.then1.i.i ], [ %34, %if.else8.i.i ], [ %34, %if.then4.i4.i ]
  %rel_type.0.i.i = phi ptr [ @.str.51, %if.then1.i.i ], [ @.str.53, %if.else8.i.i ], [ @.str.52, %if.then4.i4.i ]
  %rel_bytes.0.i.i = phi i32 [ %sub.i.i10, %if.then1.i.i ], [ %sub9.i.i, %if.else8.i.i ], [ %sub7.i.i, %if.then4.i4.i ]
  %36 = inttoptr i32 %add18.pre-phi.i.i to ptr
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %rel_bytes.0.i.i, ptr noundef nonnull %rel_type.0.i.i, i32 noundef %35, ptr noundef %call5.i, ptr noundef %36) #13
  br label %if.end

if.end:                                           ; preds = %do.end14.i.i, %PageSlab.exit, %kasan_addr_to_page.exit
  %cmp.i.i.i = icmp uge ptr %addr, @_stext
  %cmp1.i.i.i = icmp ult ptr %addr, @_end
  %or.cond.i.i.i = and i1 %cmp.i.i.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %land.lhs.true6, label %__is_kernel.exit.i.i

__is_kernel.exit.i.i:                             ; preds = %if.end
  %cmp2.i.i.i = icmp uge ptr %addr, @__init_begin
  %cmp3.i.i.i = icmp ult ptr %addr, @__init_end
  %37 = and i1 %cmp2.i.i.i, %cmp3.i.i.i
  br i1 %37, label %land.lhs.true6, label %__is_kernel.exit.i.i.is_kernel.exit.i_crit_edge

__is_kernel.exit.i.i.is_kernel.exit.i_crit_edge:  ; preds = %__is_kernel.exit.i.i
  %.pre = ptrtoint ptr %addr to i32
  br label %is_kernel.exit.i

is_kernel.exit.i:                                 ; preds = %__is_kernel.exit.i.i.is_kernel.exit.i_crit_edge, %describe_object_stacks.exit.i
  %.pre-phi = phi i32 [ %.pre, %__is_kernel.exit.i.i.is_kernel.exit.i_crit_edge ], [ %sub.ptr.lhs.cast.i, %describe_object_stacks.exit.i ]
  %call1.i.i11 = tail call i32 @in_gate_area_no_mm(i32 noundef %.pre-phi) #10
  %tobool.not.i = icmp eq i32 %call1.i.i11, 0
  br i1 %tobool.not.i, label %kernel_or_module_addr.exit, label %land.lhs.true6

kernel_or_module_addr.exit:                       ; preds = %is_kernel.exit.i
  %call1.i = tail call zeroext i1 @is_module_address(i32 noundef %.pre-phi) #10
  br i1 %call1.i, label %land.lhs.true6, label %if.end19

land.lhs.true6:                                   ; preds = %kernel_or_module_addr.exit, %is_kernel.exit.i, %__is_kernel.exit.i.i, %if.end
  %cmp.i13 = icmp uge ptr %addr, @init_thread_union
  %cmp1.i14 = icmp ule ptr %addr, getelementptr inbounds (%union.thread_union, ptr @init_thread_union, i32 1, i32 0, i32 0)
  %38 = select i1 %cmp.i13, i1 %cmp1.i14, i1 false
  br i1 %38, label %if.end19, label %do.end11

do.end11:                                         ; preds = %land.lhs.true6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %addr) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end11, %land.lhs.true6, %kernel_or_module_addr.exit
  br i1 %tobool.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %if.end19
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #13
  tail call void @dump_page(ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.27) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @print_memory_metadata(ptr noundef %addr) unnamed_addr #1 align 64 {
entry:
  %buffer = alloca [12 x i8], align 1
  %metadata = alloca [16 x i8], align 1
  %0 = ptrtoint ptr %addr to i32
  %and = and i32 %0, -128
  %1 = inttoptr i32 %and to ptr
  %add.ptr = getelementptr i8, ptr %1, i32 -256
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #13
  %2 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 1
  %3 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 2
  %4 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 3
  %5 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 4
  %6 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 5
  %7 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 6
  %8 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 7
  %9 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 8
  %10 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 9
  %11 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 10
  %12 = getelementptr inbounds [12 x i8], ptr %buffer, i32 0, i32 11
  %13 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 1
  %14 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 2
  %15 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 3
  %16 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 4
  %17 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 5
  %18 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 6
  %19 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 7
  %20 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 8
  %21 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 9
  %22 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 10
  %23 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 11
  %24 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 12
  %25 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 13
  %26 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 14
  %27 = getelementptr inbounds [16 x i8], ptr %metadata, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %i.022 = phi i32 [ -2, %entry ], [ %inc, %if.end ]
  %row.021 = phi ptr [ %add.ptr, %entry ], [ %add.ptr.i, %if.end ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buffer) #11
  store i8 -1, ptr %buffer, align 1, !annotation !17
  store i8 -1, ptr %2, align 1, !annotation !17
  store i8 -1, ptr %3, align 1, !annotation !17
  store i8 -1, ptr %4, align 1, !annotation !17
  store i8 -1, ptr %5, align 1, !annotation !17
  store i8 -1, ptr %6, align 1, !annotation !17
  store i8 -1, ptr %7, align 1, !annotation !17
  store i8 -1, ptr %8, align 1, !annotation !17
  store i8 -1, ptr %9, align 1, !annotation !17
  store i8 -1, ptr %10, align 1, !annotation !17
  store i8 -1, ptr %11, align 1, !annotation !17
  store i8 -1, ptr %12, align 1, !annotation !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %metadata) #11
  store i8 -1, ptr %metadata, align 1, !annotation !17
  store i8 -1, ptr %13, align 1, !annotation !17
  store i8 -1, ptr %14, align 1, !annotation !17
  store i8 -1, ptr %15, align 1, !annotation !17
  store i8 -1, ptr %16, align 1, !annotation !17
  store i8 -1, ptr %17, align 1, !annotation !17
  store i8 -1, ptr %18, align 1, !annotation !17
  store i8 -1, ptr %19, align 1, !annotation !17
  store i8 -1, ptr %20, align 1, !annotation !17
  store i8 -1, ptr %21, align 1, !annotation !17
  store i8 -1, ptr %22, align 1, !annotation !17
  store i8 -1, ptr %23, align 1, !annotation !17
  store i8 -1, ptr %24, align 1, !annotation !17
  store i8 -1, ptr %25, align 1, !annotation !17
  store i8 -1, ptr %26, align 1, !annotation !17
  store i8 -1, ptr %27, align 1, !annotation !17
  %cmp1 = icmp eq i32 %i.022, 0
  %cond = select i1 %cmp1, ptr @.str.59, ptr @.str.60
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buffer, i32 noundef 12, ptr noundef nonnull %cond, ptr noundef %row.021) #10
  call void @kasan_metadata_fetch_row(ptr noundef nonnull %metadata, ptr noundef %row.021) #10
  call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull %buffer, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %metadata, i32 noundef 16, i1 noundef zeroext false) #10
  %cmp.i = icmp ule ptr %row.021, %addr
  %add.ptr.i = getelementptr i8, ptr %row.021, i32 128
  %cmp1.i = icmp ugt ptr %add.ptr.i, %addr
  %28 = and i1 %cmp.i, %cmp1.i
  br i1 %28, label %do.end8, label %if.end

do.end8:                                          ; preds = %for.body
  %sub.ptr.rhs.cast.i = ptrtoint ptr %row.021 to i32
  %sub.ptr.sub.i = sub i32 %0, %sub.ptr.rhs.cast.i
  %div2.i = lshr i32 %sub.ptr.sub.i, 3
  %mul.i = mul nuw nsw i32 %div2.i, 3
  %add1.i = add nuw nsw i32 %mul.i, 12
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %add1.i, i32 noundef 94) #13
  br label %if.end

if.end:                                           ; preds = %do.end8, %for.body
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %metadata) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buffer) #11
  %inc = add nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @end_report(ptr nocapture noundef readonly %flags, i32 noundef %addr) unnamed_addr #1 align 64 {
entry:
  tail call fastcc void @trace_error_report_end(i32 noundef %addr) #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #10
  %0 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @report_lock, i32 noundef %0) #10
  %1 = load i32, ptr @panic_on_warn, align 4
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i32, ptr @kasan_flags, align 4
  %3 = and i32 %2, 2
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr @panic_on_warn, align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.65) #14
  unreachable

if.end5:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr @kasan_arg_fault, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.66) #14
  unreachable

if.end7:                                          ; preds = %if.end5
  tail call void @kasan_enable_current() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid uwtable(sync)
define dso_local zeroext i1 @kasan_report(i32 noundef %addr, i32 noundef %size, i1 noundef zeroext %is_write, i32 noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  %info.i = alloca %struct.kasan_access_info, align 4
  %flags.i = alloca i32, align 4
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %task.i, align 8
  %kasan_depth.i = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 191
  %3 = load i32, ptr %kasan_depth.i, align 8
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end, !prof !18

if.end.i:                                         ; preds = %entry
  %4 = load volatile i32, ptr @kasan_flags, align 4
  %5 = and i32 %4, 2
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %report_enabled.exit, label %if.then

report_enabled.exit:                              ; preds = %if.end.i
  %call5.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef nonnull @kasan_flags) #10
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then, label %if.end, !prof !9

if.then:                                          ; preds = %report_enabled.exit, %if.end.i
  %frombool.i = zext i1 %is_write to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #11
  %6 = getelementptr inbounds i8, ptr %info.i, i32 12
  store i32 -1, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i5 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i5 to ptr
  %task.i6 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task.i6, align 8
  %kunit_test.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 192
  %10 = load ptr, ptr %kunit_test.i, align 4
  %tobool.not.i7 = icmp eq ptr %10, null
  br i1 %tobool.not.i7, label %if.end.i8, label %if.then.i

if.then.i:                                        ; preds = %if.then
  tail call fastcc void @kasan_update_kunit_status(ptr noundef nonnull %10) #10
  br label %if.end.i8

if.end.i8:                                        ; preds = %if.then.i, %if.then
  tail call void @disable_trace_on_warning() #10
  %11 = inttoptr i32 %addr to ptr
  store ptr %11, ptr %info.i, align 4
  %cmp.i.not.i = icmp ult ptr %11, inttoptr (i32 -1090519040 to ptr)
  br i1 %cmp.i.not.i, label %if.end9.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i8
  %call7.i = tail call ptr @kasan_find_first_bad_addr(ptr noundef %11, i32 noundef %size) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i8
  %call7.sink.i = phi ptr [ %call7.i, %if.then6.i ], [ %11, %if.end.i8 ]
  %12 = getelementptr inbounds %struct.kasan_access_info, ptr %info.i, i32 0, i32 1
  store ptr %call7.sink.i, ptr %12, align 4
  %access_size.i = getelementptr inbounds %struct.kasan_access_info, ptr %info.i, i32 0, i32 2
  store i32 %size, ptr %access_size.i, align 4
  store i8 %frombool.i, ptr %6, align 4
  %ip13.i = getelementptr inbounds %struct.kasan_access_info, ptr %info.i, i32 0, i32 4
  store i32 %ip, ptr %ip13.i, align 4
  tail call void @kasan_disable_current() #10
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @report_lock) #10
  store i32 %call2.i.i, ptr %flags.i, align 4
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  %call.i.i = call ptr @kasan_get_bug_type(ptr noundef nonnull %info.i) #10
  %13 = load i32, ptr %ip13.i, align 4
  %14 = inttoptr i32 %13 to ptr
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %call.i.i, ptr noundef %14) #13
  %15 = load i32, ptr %access_size.i, align 4
  %tobool.not.i.i = icmp eq i32 %15, 0
  %16 = load i8, ptr %6, align 4, !range !19
  %tobool16.not.i.i = icmp eq i8 %16, 0
  %cond17.i.i = select i1 %tobool16.not.i.i, ptr @.str.79, ptr @.str.78
  %17 = load ptr, ptr %info.i, align 4
  %18 = call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i34.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i34.i.i to ptr
  %task20.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %task20.i.i, align 8
  %comm21.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 101
  %pid.i35.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 68
  %21 = load i32, ptr %pid.i35.i.i, align 8
  br i1 %tobool.not.i.i, label %do.end13.i.i, label %do.end3.i.i

do.end3.i.i:                                      ; preds = %if.end9.i
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull %cond17.i.i, i32 noundef %15, ptr noundef %17, ptr noundef %comm21.i.i, i32 noundef %21) #13
  br label %do.end.i

do.end13.i.i:                                     ; preds = %if.end9.i
  %call26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull %cond17.i.i, ptr noundef %17, ptr noundef %comm21.i.i, i32 noundef %21) #13
  br label %do.end.i

do.end.i:                                         ; preds = %do.end13.i.i, %do.end3.i.i
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br i1 %cmp.i.not.i, label %if.else27.i, label %if.then20.i

if.then20.i:                                      ; preds = %do.end.i
  call fastcc void @print_address_description(ptr noundef %11) #10
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  %22 = load ptr, ptr %12, align 4
  call fastcc void @print_memory_metadata(ptr noundef %22) #10
  br label %__kasan_report.exit

if.else27.i:                                      ; preds = %do.end.i
  call void @dump_stack_lvl(ptr noundef nonnull @.str.16) #13
  br label %__kasan_report.exit

__kasan_report.exit:                              ; preds = %if.else27.i, %if.then20.i
  call fastcc void @end_report(ptr noundef nonnull %flags.i, i32 noundef %addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #11
  br label %if.end

if.end:                                           ; preds = %__kasan_report.exit, %report_enabled.exit, %entry
  %retval.0.i10 = phi i1 [ true, %__kasan_report.exit ], [ false, %report_enabled.exit ], [ false, %entry ]
  ret i1 %retval.0.i10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_disable_current() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack_lvl(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fixup_red_left(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_get_alloc_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_get_free_track(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_depot_print(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_module_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_gate_area_no_mm(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_metadata_fetch_row(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid uwtable(sync)
define internal fastcc void @trace_error_report_end(i32 noundef %id) unnamed_addr #8 align 64 {
entry:
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 1), ptr blockaddress(@trace_error_report_end, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !20

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %cpu, align 4
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i.i = icmp ule i32 %3, %2
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  %lnot3.i.i.i.i = xor i1 %.b37.i.i.i.i, true
  %4 = select i1 %cmp.i.i.i.i, i1 %lnot3.i.i.i.i, i1 false
  br i1 %4, label %if.then.i.i.i.i, label %cpu_online.exit, !prof !12

if.then.i.i.i.i:                                  ; preds = %do.body
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %do.body
  %div3.i.i.i = lshr i32 %2, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %2, 31
  %6 = shl nuw i32 1, %and.i.i.i4
  %7 = and i32 %5, %6
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %if.end69, label %cleanup.thread

cleanup.thread:                                   ; preds = %cpu_online.exit
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %10, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
  %call42 = tail call i32 @__traceiter_error_report_end(ptr noundef null, i32 noundef 1, i32 noundef %id) #10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i2 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %13, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i5 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %cpu50, align 4
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i.i6 = icmp ule i32 %17, %16
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  %lnot3.i.i.i.i8 = xor i1 %.b37.i.i.i.i7, true
  %18 = select i1 %cmp.i.i.i.i6, i1 %lnot3.i.i.i.i8, i1 false
  br i1 %18, label %if.then.i.i.i.i9, label %cpu_online.exit14, !prof !12

if.then.i.i.i.i9:                                 ; preds = %if.end48
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.69, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %if.end48
  %div3.i.i.i10 = lshr i32 %16, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %19 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %16, 31
  %20 = shl nuw i32 1, %and.i.i.i12
  %21 = and i32 %19, %20
  %tobool.i13.not = icmp eq i32 %21, 0
  br i1 %tobool.i13.not, label %if.end69, label %if.then52

if.then52:                                        ; preds = %cpu_online.exit14
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %24, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  %25 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_error_report_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %do.end67, label %land.lhs.true62

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_error_report_end.__warned, align 1
  br i1 %.b1, label %do.end67, label %if.then64

if.then64:                                        ; preds = %land.lhs.true62
  store i1 true, ptr @trace_error_report_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.67, i32 noundef 71, ptr noundef nonnull @.str.68) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62, %land.lhs.true, %if.then52
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !24
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %and.i.i.i.i15 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14, %cpu_online.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kasan_enable_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_error_report_end(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_trace_on_warning() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_find_first_bad_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kasan_get_bug_type(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { cold nobuiltin nounwind "no-builtins" }
attributes #14 = { cold nobuiltin noreturn nounwind "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2150777544, i64 2150778035, i64 2150777581, i64 2150777637, i64 2150777671, i64 2150777695, i64 2150777736, i64 2150777757, i64 2150777785, i64 2150777819}
!11 = !{i64 2148176149, i64 2148176181, i64 2148176210, i64 2148176244, i64 2148176275, i64 2148176298}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148264150}
!14 = !{i64 2148178614, i64 2148178646, i64 2148178675, i64 2148178709, i64 2148178740, i64 2148178763}
!15 = !{i64 2149652742}
!16 = !{i64 2150990492, i64 2150990983, i64 2150990529, i64 2150990585, i64 2150990619, i64 2150990643, i64 2150990684, i64 2150990705, i64 2150990733, i64 2150990767}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 2146410443, i32 1073205}
!19 = !{i8 0, i8 2}
!20 = !{i64 2148771978, i64 2148771983, i64 2148771996, i64 2148772040, i64 2148772074, i64 2148772095}
!21 = !{i64 2154253443}
!22 = !{i64 2154253674}
!23 = !{i64 2149353314}
!24 = !{i64 2149354350}
