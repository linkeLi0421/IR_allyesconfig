; ModuleID = '/llk/IR_all_yes/mm/page_owner.c_pt.bc'
source_filename = "../mm/page_owner.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.page_ext_operations = type { i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.0, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.page_owner = type { i16, i16, i32, i32, i32, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.30 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@page_owner_inited = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__setup_str_early_page_owner_param = internal constant [11 x i8] c"page_owner\00", section ".init.rodata", align 1
@__setup_early_page_owner_param = internal global %struct.obs_kernel_param { ptr @__setup_str_early_page_owner_param, ptr @early_page_owner_param, i32 1 }, section ".init.setup", align 4
@page_owner_ops = dso_local global { %struct.page_ext_operations, [16 x i8] } { %struct.page_ext_operations { i32 0, i32 40, ptr @need_page_owner, ptr @init_page_owner }, [16 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Node %d, zone %8s \00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%12lu \00", [25 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 400, ptr null, ptr null }, align 1
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\011There is not page extension available.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__dump_page_owner\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm/page_owner.c\00", [16 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr = internal global ptr @__dump_page_owner._entry, section ".printk_index", align 4
@__dump_page_owner._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 409, ptr null, ptr null }, align 1
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\011page_owner info is not present (never set?)\0A\00", [49 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.7 = internal global ptr @__dump_page_owner._entry.5, section ".printk_index", align 4
@__dump_page_owner._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 414, ptr null, ptr null }, align 1
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\011page_owner tracks the page as allocated\0A\00", [53 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.10 = internal global ptr @__dump_page_owner._entry.8, section ".printk_index", align 4
@__dump_page_owner._entry.11 = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 416, ptr null, ptr null }, align 1
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\011page_owner tracks the page as freed\0A\00", [57 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.13 = internal global ptr @__dump_page_owner._entry.11, section ".printk_index", align 4
@__dump_page_owner._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 420, ptr null, ptr null }, align 1
@.str.15 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\011page last allocated via order %u, migratetype %s, gfp_mask %#x(%pGg), pid %d, ts %llu, free_ts %llu\0A\00", [57 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.16 = internal global ptr @__dump_page_owner._entry.14, section ".printk_index", align 4
@migratetype_names = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@__dump_page_owner._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 424, ptr null, ptr null }, align 1
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011page_owner allocation stack trace missing\0A\00", [51 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.19 = internal global ptr @__dump_page_owner._entry.17, section ".printk_index", align 4
@__dump_page_owner._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 430, ptr null, ptr null }, align 1
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\011page_owner free stack trace missing\0A\00", [57 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.22 = internal global ptr @__dump_page_owner._entry.20, section ".printk_index", align 4
@__dump_page_owner._entry.23 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 432, ptr null, ptr null }, align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\011page last free stack trace:\0A\00", [33 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.25 = internal global ptr @__dump_page_owner._entry.23, section ".printk_index", align 4
@__dump_page_owner._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 438, ptr null, ptr null }, align 1
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\011page has been migrated, last migrate reason: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__dump_page_owner._entry_ptr.28 = internal global ptr @__dump_page_owner._entry.26, section ".printk_index", align 4
@migrate_reason_names = external dso_local local_unnamed_addr global [9 x ptr], align 4
@__initcall__kmod_page_owner__260_631_pageowner_init7 = internal global ptr @pageowner_init, section ".initcall7.init", align 4
@page_owner_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dummy_handle = internal global { i32, [28 x i8] } zeroinitializer, align 32
@failure_handle = internal global { i32, [28 x i8] } zeroinitializer, align 32
@early_handle = internal global { i32, [28 x i8] } zeroinitializer, align 32
@init_pages_in_zone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016Node %d, zone %8s: page owner found early allocated %lu pages\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init_pages_in_zone\00", [45 x i8] zeroinitializer }, align 32
@init_pages_in_zone._entry_ptr = internal global ptr @init_pages_in_zone._entry, section ".printk_index", align 4
@page_ext_size = external dso_local local_unnamed_addr global i32, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/gfp.h\00", [44 x i8] zeroinitializer }, align 32
@page_group_by_mobility_disabled = external dso_local local_unnamed_addr global i32, align 4
@pageowner_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016page_owner is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pageowner_init\00", [17 x i8] zeroinitializer }, align 32
@pageowner_init._entry_ptr = internal global ptr @pageowner_init._entry, section ".printk_index", align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"page_owner\00", [21 x i8] zeroinitializer }, align 32
@proc_page_owner_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @read_page_owner, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@min_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@.str.37 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Page allocated via order %u, mask %#x(%pGg), pid %d, ts %llu ns, free_ts %llu ns\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PFN %lu type %s Block %lu type %s Flags %pGp\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Page has been migrated, last migrate reason: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"page_owner_inited\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 35, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"page_owner_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 92, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 322, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 324, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 400, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 409, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 414, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 416, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 418, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 424, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 430, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 432, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 437, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"page_owner_enabled\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 34, i32 13 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"dummy_handle\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 37, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"failure_handle\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 38, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"early_handle\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 39, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 590, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 1368, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 440, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"../include/linux/gfp.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 347, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 622, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 626, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant [27 x i8] c"proc_page_owner_operations\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 615, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 342, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 354, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 370, i32 4 }
@___asan_gen_.144 = private constant [19 x i8] c"../mm/page_owner.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 376, i32 43 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 214, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 174, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__dump_page_owner._entry, ptr @__dump_page_owner._entry.11, ptr @__dump_page_owner._entry.14, ptr @__dump_page_owner._entry.17, ptr @__dump_page_owner._entry.20, ptr @__dump_page_owner._entry.23, ptr @__dump_page_owner._entry.26, ptr @__dump_page_owner._entry.5, ptr @__dump_page_owner._entry.8, ptr @__dump_page_owner._entry_ptr, ptr @__dump_page_owner._entry_ptr.10, ptr @__dump_page_owner._entry_ptr.13, ptr @__dump_page_owner._entry_ptr.16, ptr @__dump_page_owner._entry_ptr.19, ptr @__dump_page_owner._entry_ptr.22, ptr @__dump_page_owner._entry_ptr.25, ptr @__dump_page_owner._entry_ptr.28, ptr @__dump_page_owner._entry_ptr.7, ptr @__initcall__kmod_page_owner__260_631_pageowner_init7, ptr @__setup_early_page_owner_param, ptr @init_pages_in_zone._entry, ptr @init_pages_in_zone._entry_ptr, ptr @pageowner_init._entry, ptr @pageowner_init._entry_ptr, ptr @page_owner_inited, ptr @page_owner_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @page_owner_enabled, ptr @dummy_handle, ptr @failure_handle, ptr @early_handle, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @proc_page_owner_operations, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_owner_inited to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_owner_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_owner_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failure_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @early_handle to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pages_in_zone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pageowner_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_page_owner_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @early_page_owner_param(ptr noundef %buf) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull @page_owner_enabled) #11
  ret i32 %call
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @need_page_owner() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @page_owner_enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @init_page_owner() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @page_owner_enabled, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @stack_depot_init() #11
  tail call fastcc void @register_dummy_stack()
  tail call fastcc void @register_failure_stack()
  tail call fastcc void @register_early_stack()
  tail call void @static_key_enable(ptr noundef nonnull @page_owner_inited) #11
  %call.i = tail call ptr @first_online_pgdat() #11
  %tobool.not6.i = icmp eq ptr %call.i, null
  br i1 %tobool.not6.i, label %if.end.return_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.i:                                       ; preds = %init_zones_in_node.exit.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %pgdat.07.i = phi ptr [ %call1.i, %init_zones_in_node.exit.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %pgdat.07.i to i32
  %node_id.i.i.i = getelementptr inbounds %struct.pglist_data, ptr %pgdat.07.i, i32 0, i32 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i
  %zone.010.i.i = phi ptr [ %pgdat.07.i, %for.body.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %present_pages.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.010.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %present_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %present_pages.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %zone_start_pfn.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.010.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %zone_start_pfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %zone_start_pfn.i.i.i, align 4
  %spanned_pages.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.010.i.i, i32 0, i32 12
  %5 = ptrtoint ptr %spanned_pages.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %spanned_pages.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %add.i.i.i.i)
  %cmp88.i.i.i = icmp ult i32 %4, %add.i.i.i.i
  br i1 %cmp88.i.i.i, label %if.end.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.init_pages_in_zone.exit.i.i_crit_edge

if.end.i.i.init_pages_in_zone.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_pages_in_zone.exit.i.i

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %cleanup44.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %pfn.090.i.i.i = phi i32 [ %pfn.4.i.i.i, %cleanup44.i.i.i.for.body.i.i.i_crit_edge ], [ %4, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %count.089.i.i.i = phi i32 [ %count.3.i.i.i, %cleanup44.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %call1.i.i.i = tail call i32 @pfn_valid(i32 noundef %pfn.090.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  %add2.i.i.i = add i32 %pfn.090.i.i.i, 2048
  %and.i.i.i = and i32 %add2.i.i.i, -2048
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.cleanup44.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.cleanup44.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup44.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %7 = tail call i32 @llvm.umin.i32(i32 %and.i.i.i, i32 %add.i.i.i.i) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.090.i.i.i, i32 %7)
  %cmp884.i.i.i = icmp ult i32 %pfn.090.i.i.i, %7
  br i1 %cmp884.i.i.i, label %if.end.i.i.i.for.body9.i.i.i_crit_edge, label %if.end.i.i.i.for.end.i.i.i_crit_edge

if.end.i.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

if.end.i.i.i.for.body9.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  br label %for.body9.i.i.i

for.body9.i.i.i:                                  ; preds = %cleanup.i.i.i.for.body9.i.i.i_crit_edge, %if.end.i.i.i.for.body9.i.i.i_crit_edge
  %pfn.186.i.i.i = phi i32 [ %inc41.i.i.i, %cleanup.i.i.i.for.body9.i.i.i_crit_edge ], [ %pfn.090.i.i.i, %if.end.i.i.i.for.body9.i.i.i_crit_edge ]
  %count.185.i.i.i = phi i32 [ %count.2.i.i.i, %cleanup.i.i.i.for.body9.i.i.i_crit_edge ], [ %count.089.i.i.i, %if.end.i.i.i.for.body9.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i.i = sub i32 %pfn.186.i.i.i, %9
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %8, i32 %sub.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %page_zone.exit.i.i.i, !prof !105

if.then.i.i.i.i.i:                                ; preds = %for.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !106
  unreachable

page_zone.exit.i.i.i:                             ; preds = %for.body9.i.i.i
  %shr.i.i76.i.i.i = lshr i32 %11, 30
  %arrayidx.i.i.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i76.i.i.i
  %cmp11.not.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, %zone.010.i.i
  br i1 %cmp11.not.i.i.i, label %if.end13.i.i.i, label %page_zone.exit.i.i.i.cleanup.i.i.i_crit_edge

page_zone.exit.i.i.i.cleanup.i.i.i_crit_edge:     ; preds = %page_zone.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

if.end13.i.i.i:                                   ; preds = %page_zone.exit.i.i.i
  %12 = getelementptr %struct.page, ptr %8, i32 %sub.i.i.i, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %and.i.i.i.i = and i32 %14, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, -268435456
  br i1 %cmp.i.not.i.i.i, label %if.then16.i.i.i, label %if.end24.i.i.i

if.then16.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %private.i.i.i = getelementptr %struct.page, ptr %8, i32 %sub.i.i.i, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %private.i.i.i, align 4
  %17 = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %17)
  %18 = icmp ult i32 %17, 11
  %notmask.i.i.i = shl nsw i32 -1, %16
  %sub21.i.i.i = xor i32 %notmask.i.i.i, -1
  %add22.i.i.i = select i1 %18, i32 %sub21.i.i.i, i32 0
  %pfn.2.i.i.i = add i32 %add22.i.i.i, %pfn.186.i.i.i
  br label %cleanup.i.i.i

if.end24.i.i.i:                                   ; preds = %if.end13.i.i.i
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i.i.i.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageReserved.exit.i.i.i, !prof !105

if.then.i.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #11, !srcloc !107
  unreachable

PageReserved.exit.i.i.i:                          ; preds = %if.end24.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %add.ptr.i.i.i, align 4
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool26.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool26.not.i.i.i, label %if.end28.i.i.i, label %PageReserved.exit.i.i.i.cleanup.i.i.i_crit_edge

PageReserved.exit.i.i.i.cleanup.i.i.i_crit_edge:  ; preds = %PageReserved.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

if.end28.i.i.i:                                   ; preds = %PageReserved.exit.i.i.i
  %call29.i.i.i = tail call ptr @lookup_page_ext(ptr noundef %add.ptr.i.i.i) #11
  %tobool30.not.i.i.i = icmp eq ptr %call29.i.i.i, null
  br i1 %tobool30.not.i.i.i, label %if.end28.i.i.i.cleanup.i.i.i_crit_edge, label %if.end35.i.i.i, !prof !105

if.end28.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

if.end35.i.i.i:                                   ; preds = %if.end28.i.i.i
  %24 = ptrtoint ptr %call29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call29.i.i.i, align 4
  %and1.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.end39.i.i.i, label %if.end35.i.i.i.cleanup.i.i.i_crit_edge

if.end35.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i.i.i

if.end39.i.i.i:                                   ; preds = %if.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = load i32, ptr @early_handle, align 4
  %27 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call29.i.i.i, i32 %27
  %handle2.i.i.i.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %handle2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %handle2.i.i.i.i, align 8
  %29 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %add.ptr.i.i.i.i.i, align 8
  %gfp_mask4.i.i.i.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %gfp_mask4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %gfp_mask4.i.i.i.i, align 4
  %last_migrate_reason.i.i.i.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %last_migrate_reason.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -1, ptr %last_migrate_reason.i.i.i.i, align 2
  %32 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i, align 8
  %pid.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 68
  %36 = ptrtoint ptr %pid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pid.i.i.i.i, align 8
  %pid6.i.i.i.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i.i.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %pid6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %pid6.i.i.i.i, align 8
  %call.i.i.i.i.i = tail call i64 @sched_clock() #11
  %ts_nsec.i.i.i.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i.i.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %ts_nsec.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call.i.i.i.i.i, ptr %ts_nsec.i.i.i.i, align 8
  %40 = ptrtoint ptr %call29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %call29.i.i.i, align 4
  %or.i20.i.i.i.i = or i32 %41, 3
  store i32 %or.i20.i.i.i.i, ptr %call29.i.i.i, align 4
  %inc.i.i.i = add i32 %count.185.i.i.i, 1
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end39.i.i.i, %if.end35.i.i.i.cleanup.i.i.i_crit_edge, %if.end28.i.i.i.cleanup.i.i.i_crit_edge, %PageReserved.exit.i.i.i.cleanup.i.i.i_crit_edge, %if.then16.i.i.i, %page_zone.exit.i.i.i.cleanup.i.i.i_crit_edge
  %count.2.i.i.i = phi i32 [ %count.185.i.i.i, %if.then16.i.i.i ], [ %inc.i.i.i, %if.end39.i.i.i ], [ %count.185.i.i.i, %page_zone.exit.i.i.i.cleanup.i.i.i_crit_edge ], [ %count.185.i.i.i, %PageReserved.exit.i.i.i.cleanup.i.i.i_crit_edge ], [ %count.185.i.i.i, %if.end28.i.i.i.cleanup.i.i.i_crit_edge ], [ %count.185.i.i.i, %if.end35.i.i.i.cleanup.i.i.i_crit_edge ]
  %pfn.3.i.i.i = phi i32 [ %pfn.2.i.i.i, %if.then16.i.i.i ], [ %pfn.186.i.i.i, %if.end39.i.i.i ], [ %pfn.186.i.i.i, %page_zone.exit.i.i.i.cleanup.i.i.i_crit_edge ], [ %pfn.186.i.i.i, %PageReserved.exit.i.i.i.cleanup.i.i.i_crit_edge ], [ %pfn.186.i.i.i, %if.end28.i.i.i.cleanup.i.i.i_crit_edge ], [ %pfn.186.i.i.i, %if.end35.i.i.i.cleanup.i.i.i_crit_edge ]
  %inc41.i.i.i = add i32 %pfn.3.i.i.i, 1
  %cmp8.i.i.i = icmp ult i32 %inc41.i.i.i, %7
  br i1 %cmp8.i.i.i, label %cleanup.i.i.i.for.body9.i.i.i_crit_edge, label %cleanup.i.i.i.for.end.i.i.i_crit_edge

cleanup.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i.i

cleanup.i.i.i.for.body9.i.i.i_crit_edge:          ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9.i.i.i

for.end.i.i.i:                                    ; preds = %cleanup.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i.i.for.end.i.i.i_crit_edge
  %count.1.lcssa.i.i.i = phi i32 [ %count.089.i.i.i, %if.end.i.i.i.for.end.i.i.i_crit_edge ], [ %count.2.i.i.i, %cleanup.i.i.i.for.end.i.i.i_crit_edge ]
  %pfn.1.lcssa.i.i.i = phi i32 [ %pfn.090.i.i.i, %if.end.i.i.i.for.end.i.i.i_crit_edge ], [ %inc41.i.i.i, %cleanup.i.i.i.for.end.i.i.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 587, i32 noundef 0) #11
  %call.i.i.i.i = tail call i32 @__cond_resched() #11
  br label %cleanup44.i.i.i

cleanup44.i.i.i:                                  ; preds = %for.end.i.i.i, %for.body.i.i.i.cleanup44.i.i.i_crit_edge
  %count.3.i.i.i = phi i32 [ %count.1.lcssa.i.i.i, %for.end.i.i.i ], [ %count.089.i.i.i, %for.body.i.i.i.cleanup44.i.i.i_crit_edge ]
  %pfn.4.i.i.i = phi i32 [ %pfn.1.lcssa.i.i.i, %for.end.i.i.i ], [ %and.i.i.i, %for.body.i.i.i.cleanup44.i.i.i_crit_edge ]
  %cmp.i.i.i = icmp ult i32 %pfn.4.i.i.i, %add.i.i.i.i
  br i1 %cmp.i.i.i, label %cleanup44.i.i.i.for.body.i.i.i_crit_edge, label %cleanup44.i.i.i.init_pages_in_zone.exit.i.i_crit_edge

cleanup44.i.i.i.init_pages_in_zone.exit.i.i_crit_edge: ; preds = %cleanup44.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_pages_in_zone.exit.i.i

cleanup44.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %cleanup44.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

init_pages_in_zone.exit.i.i:                      ; preds = %cleanup44.i.i.i.init_pages_in_zone.exit.i.i_crit_edge, %if.end.i.i.init_pages_in_zone.exit.i.i_crit_edge
  %count.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i.init_pages_in_zone.exit.i.i_crit_edge ], [ %count.3.i.i.i, %cleanup44.i.i.i.init_pages_in_zone.exit.i.i_crit_edge ]
  %42 = ptrtoint ptr %node_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %node_id.i.i.i, align 64
  %name.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.010.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i.i.i, align 16
  %call52.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %43, ptr noundef %45, i32 noundef %count.0.lcssa.i.i.i) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %init_pages_in_zone.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.zone, ptr %zone.010.i.i, i32 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i, 4608
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %init_zones_in_node.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

init_zones_in_node.exit.i:                        ; preds = %for.inc.i.i
  %call1.i = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.07.i) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %init_zones_in_node.exit.i.return_crit_edge, label %init_zones_in_node.exit.i.for.body.i_crit_edge

init_zones_in_node.exit.i.for.body.i_crit_edge:   ; preds = %init_zones_in_node.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

init_zones_in_node.exit.i.return_crit_edge:       ; preds = %init_zones_in_node.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %init_zones_in_node.exit.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__reset_page_owner(ptr noundef %page, i16 noundef zeroext %order) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #11
  %call1 = tail call ptr @lookup_page_ext(ptr noundef %page) #11
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @save_stack(i32 noundef 10240)
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %order)
  %cmp20.not = icmp eq i16 %order, 31
  br i1 %cmp20.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %conv = zext i16 %order to i32
  %shl = shl nuw i32 1, %conv
  %smax = call i32 @llvm.smax.i32(i32 %shl, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %page_ext.022 = phi ptr [ %add.ptr.i19, %for.body.for.body_crit_edge ], [ %call1, %for.body.preheader ]
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %0 = ptrtoint ptr %page_ext.022 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_ext.022, align 4
  %and.i = and i32 %1, -3
  store i32 %and.i, ptr %page_ext.022, align 4
  %2 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %page_ext.022, i32 %2
  %free_handle = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 4
  %3 = ptrtoint ptr %free_handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5, ptr %free_handle, align 4
  %free_ts_nsec8 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 6
  %4 = ptrtoint ptr %free_ts_nsec8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %free_ts_nsec8, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_ext_size to i32))
  %5 = load i32, ptr @page_ext_size, align 4
  %add.ptr.i19 = getelementptr i8, ptr %page_ext.022, i32 %5
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @save_stack(i32 noundef %flags) unnamed_addr #5 align 64 {
entry:
  %entries = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %entries) #11
  %0 = call ptr @memset(ptr %entries, i32 255, i32 64)
  %1 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %in_page_owner = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 65
  %5 = ptrtoint ptr %in_page_owner to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %in_page_owner, align 8
  %6 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load i32, ptr @dummy_handle, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i16 %bf.load, 64
  %8 = ptrtoint ptr %in_page_owner to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %bf.set, ptr %in_page_owner, align 8
  %call6 = call i32 @stack_trace_save(ptr noundef nonnull %entries, i32 noundef 16, i32 noundef 2) #11
  %call8 = call i32 @stack_depot_save(ptr noundef nonnull %entries, i32 noundef %call6, i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = load i32, ptr @failure_handle, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %handle.0 = phi i32 [ %call8, %if.end.if.end11_crit_edge ], [ %9, %if.then10 ]
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %in_page_owner14 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 65
  %12 = ptrtoint ptr %in_page_owner14 to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load15 = load i16, ptr %in_page_owner14, align 8
  %bf.clear16 = and i16 %bf.load15, -65
  store i16 %bf.clear16, ptr %in_page_owner14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %handle.0, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %entries) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__set_page_owner(ptr noundef %page, i16 noundef zeroext %order, i32 noundef %gfp_mask) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_page_ext(ptr noundef %page) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @save_stack(i32 noundef %gfp_mask)
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %order)
  %cmp22.not.i = icmp eq i16 %order, 31
  br i1 %cmp22.not.i, label %if.end.cleanup_crit_edge, label %for.body.preheader.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end
  %conv.i = zext i16 %order to i32
  %shl.i = shl nuw i32 1, %conv.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %shl.i, i32 1) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %page_ext.addr.023.i = phi ptr [ %add.ptr.i21.i, %for.body.i.for.body.i_crit_edge ], [ %call, %for.body.preheader.i ]
  %0 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i.i = getelementptr i8, ptr %page_ext.addr.023.i, i32 %0
  %handle2.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call4, ptr %handle2.i, align 8
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %order, ptr %add.ptr.i.i, align 8
  %gfp_mask4.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %gfp_mask4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %gfp_mask, ptr %gfp_mask4.i, align 4
  %last_migrate_reason.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %last_migrate_reason.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %last_migrate_reason.i, align 2
  %5 = tail call i32 @llvm.read_register.i32(metadata !94) #11
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 68
  %9 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid.i, align 8
  %pid6.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %pid6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pid6.i, align 8
  %call.i.i = tail call i64 @sched_clock() #11
  %ts_nsec.i = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %ts_nsec.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call.i.i, ptr %ts_nsec.i, align 8
  %13 = ptrtoint ptr %page_ext.addr.023.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_ext.addr.023.i, align 4
  %or.i20.i = or i32 %14, 3
  store i32 %or.i20.i, ptr %page_ext.addr.023.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_ext_size to i32))
  %15 = load i32, ptr @page_ext_size, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %page_ext.addr.023.i, i32 %15
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__set_page_owner_migrate_reason(ptr noundef %page, i32 noundef %reason) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_page_ext(ptr noundef %page) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 %0
  %conv = trunc i32 %reason to i16
  %last_migrate_reason = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 1
  %1 = ptrtoint ptr %last_migrate_reason to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %last_migrate_reason, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__split_page_owner(ptr noundef %page, i32 noundef %nr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_page_ext(ptr noundef %page) #11
  %tobool.not = icmp ne ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp12 = icmp ne i32 %nr, 0
  %or.cond = and i1 %tobool.not, %cmp12
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge, !prof !108

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %page_ext.014 = phi ptr [ %add.ptr.i11, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %page_ext.014, i32 %0
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %add.ptr.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_ext_size to i32))
  %2 = load i32, ptr @page_ext_size, align 4
  %add.ptr.i11 = getelementptr i8, ptr %page_ext.014, i32 %2
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__folio_copy_owner(ptr noundef %newfolio, ptr noundef %old) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_page_ext(ptr noundef %old) #11
  %call1 = tail call ptr @lookup_page_ext(ptr noundef %newfolio) #11
  %tobool.not = icmp eq ptr %call, null
  %tobool2.not = icmp eq ptr %call1, null
  %spec.select = select i1 %tobool.not, i1 true, i1 %tobool2.not, !prof !105
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 %0
  %add.ptr.i36 = getelementptr i8, ptr %call1, i32 %0
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %add.ptr.i, align 8
  %3 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %add.ptr.i36, align 8
  %gfp_mask = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp_mask, align 4
  %gfp_mask9 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i36, i32 0, i32 2
  %6 = ptrtoint ptr %gfp_mask9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %gfp_mask9, align 4
  %last_migrate_reason = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 1
  %7 = ptrtoint ptr %last_migrate_reason to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %last_migrate_reason, align 2
  %last_migrate_reason10 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i36, i32 0, i32 1
  %9 = ptrtoint ptr %last_migrate_reason10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %last_migrate_reason10, align 2
  %handle = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 3
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 8
  %handle11 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i36, i32 0, i32 3
  %12 = ptrtoint ptr %handle11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %handle11, align 8
  %pid = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 7
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pid, align 8
  %pid12 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i36, i32 0, i32 7
  %15 = ptrtoint ptr %pid12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pid12, align 8
  %ts_nsec = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 5
  %16 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %ts_nsec, align 8
  %ts_nsec13 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i36, i32 0, i32 5
  %18 = ptrtoint ptr %ts_nsec13 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %ts_nsec13, align 8
  %19 = load i64, ptr %ts_nsec, align 8
  %free_ts_nsec = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i36, i32 0, i32 6
  %20 = ptrtoint ptr %free_ts_nsec to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %free_ts_nsec, align 8
  %21 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call1, align 4
  %or.i35 = or i32 %22, 3
  store i32 %or.i35, ptr %call1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pagetypeinfo_showmixedcount_print(ptr noundef %m, ptr nocapture noundef readonly %pgdat, ptr noundef readonly %zone) local_unnamed_addr #2 align 64 {
entry:
  %count = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %zone_start_pfn.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 10
  %0 = ptrtoint ptr %zone_start_pfn.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zone_start_pfn.i, align 4
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 12
  %2 = ptrtoint ptr %spanned_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spanned_pages.i, align 4
  %add.i = add i32 %3, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %count) #11
  %4 = call ptr @memset(ptr %count, i32 0, i32 24)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add.i)
  %cmp124 = icmp ult i32 %1, %add.i
  br i1 %cmp124, label %for.body.lr.ph, label %entry.for.end67_crit_edge

entry.for.end67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %pfn.0125 = phi i32 [ %1, %for.body.lr.ph ], [ %pfn.0.be, %for.cond.backedge.for.body_crit_edge ]
  %call1 = tail call i32 @pfn_valid(i32 noundef %pfn.0125) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.if.then3_crit_edge, label %if.end

for.body.if.then3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.0125, %6
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %sub
  %tobool2.not = icmp eq ptr %add.ptr, null
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %for.body.if.then3_crit_edge
  %add4 = add i32 %pfn.0125, 2048
  %and = and i32 %add4, -2048
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %for.inc.for.cond.backedge_crit_edge, %if.else, %if.then58, %if.end5.for.cond.backedge_crit_edge, %if.then3
  %pfn.0.be = phi i32 [ %and, %if.then3 ], [ %7, %if.else ], [ %7, %if.then58 ], [ %pfn.0125, %if.end5.for.cond.backedge_crit_edge ], [ %inc66, %for.inc.for.cond.backedge_crit_edge ]
  %cmp = icmp ult i32 %pfn.0.be, %add.i
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end67_crit_edge

for.cond.backedge.for.end67_crit_edge:            ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end67

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end5:                                          ; preds = %if.end
  %add7 = add i32 %pfn.0125, 2048
  %and8 = and i32 %add7, -2048
  %7 = tail call i32 @llvm.umin.i32(i32 %and8, i32 %add.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add11 = add i32 %sub.ptr.div, %9
  %call12 = tail call i32 @get_pfnblock_flags_mask(ptr noundef nonnull %add.ptr, i32 noundef %add11, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.0125, i32 %7)
  %cmp14122 = icmp ult i32 %pfn.0125, %7
  br i1 %cmp14122, label %if.end5.for.body15_crit_edge, label %if.end5.for.cond.backedge_crit_edge

if.end5.for.cond.backedge_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

if.end5.for.body15_crit_edge:                     ; preds = %if.end5
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %if.end5.for.body15_crit_edge
  %pfn.1123 = phi i32 [ %inc66, %for.inc.for.body15_crit_edge ], [ %pfn.0125, %if.end5.for.body15_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %10 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub16 = sub i32 %pfn.1123, %11
  %add.ptr17 = getelementptr %struct.page, ptr %10, i32 %sub16
  %12 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %add.ptr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !105

if.then.i.i:                                      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %add.ptr17, ptr noundef nonnull @.str.31) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !106
  unreachable

page_zone.exit:                                   ; preds = %for.body15
  %shr.i.i111 = lshr i32 %13, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i111
  %cmp19.not = icmp eq ptr %arrayidx.i, %zone
  br i1 %cmp19.not, label %if.end21, label %page_zone.exit.for.inc_crit_edge

page_zone.exit.for.inc_crit_edge:                 ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end21:                                         ; preds = %page_zone.exit
  %14 = getelementptr %struct.page, ptr %10, i32 %sub16, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %and.i = and i32 %16, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr %struct.page, ptr %10, i32 %sub16, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %cmp26 = icmp ult i32 %18, 12
  %notmask110 = shl nsw i32 -1, %18
  %sub28 = xor i32 %notmask110, -1
  %add29 = select i1 %cmp26, i32 %sub28, i32 0
  %pfn.2 = add i32 %add29, %pfn.1123
  br label %for.inc

if.end31:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %add.ptr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageReserved.exit, !prof !105

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %add.ptr17, ptr noundef nonnull @.str.32) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #11, !srcloc !107
  unreachable

PageReserved.exit:                                ; preds = %if.end31
  %21 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %add.ptr17, align 4
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool33.not = icmp eq i32 %23, 0
  br i1 %tobool33.not, label %if.end35, label %PageReserved.exit.for.inc_crit_edge

PageReserved.exit.for.inc_crit_edge:              ; preds = %PageReserved.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end35:                                         ; preds = %PageReserved.exit
  %call36 = tail call ptr @lookup_page_ext(ptr noundef %add.ptr17) #11
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.for.inc_crit_edge, label %if.end42, !prof !105

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end42:                                         ; preds = %if.end35
  %24 = ptrtoint ptr %call36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call36, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool44.not = icmp eq i32 %26, 0
  br i1 %tobool44.not, label %if.end42.for.inc_crit_edge, label %if.end46

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end46:                                         ; preds = %if.end42
  %27 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %call36, i32 %27
  %gfp_mask = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 2
  %28 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gfp_mask, align 4
  %and.i112 = and i32 %29, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i112)
  %cmp.i113 = icmp eq i32 %and.i112, 24
  br i1 %cmp.i113, label %do.end.i, label %if.end46.gfp_migratetype.exit_crit_edge, !prof !105

if.end46.gfp_migratetype.exit_crit_edge:          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfp_migratetype.exit

do.end.i:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 347, i32 noundef 9, ptr noundef null) #11
  br label %gfp_migratetype.exit

gfp_migratetype.exit:                             ; preds = %do.end.i, %if.end46.gfp_migratetype.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_group_by_mobility_disabled to i32))
  %30 = load i32, ptr @page_group_by_mobility_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not.i = icmp eq i32 %30, 0
  %shr.i114 = lshr exact i32 %and.i112, 3
  %retval.0.i = select i1 %tobool25.not.i, i32 %shr.i114, i32 0, !prof !109
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %retval.0.i)
  %cmp49.not = icmp eq i32 %call12, %retval.0.i
  br i1 %cmp49.not, label %if.end62, label %if.then50

if.then50:                                        ; preds = %gfp_migratetype.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call12)
  %cmp51 = icmp eq i32 %call12, 4
  br i1 %cmp51, label %if.then58, label %if.else, !prof !105

if.then58:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %for.cond.backedge

if.else:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx59 = getelementptr [6 x i32], ptr %count, i32 0, i32 %call12
  %33 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx59, align 4
  %inc60 = add i32 %34, 1
  store i32 %inc60, ptr %arrayidx59, align 4
  br label %for.cond.backedge

if.end62:                                         ; preds = %gfp_migratetype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i, align 8
  %conv = zext i16 %36 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub64 = xor i32 %notmask, -1
  %add65 = add i32 %pfn.1123, %sub64
  br label %for.inc

for.inc:                                          ; preds = %if.end62, %if.end42.for.inc_crit_edge, %if.end35.for.inc_crit_edge, %PageReserved.exit.for.inc_crit_edge, %if.then24, %page_zone.exit.for.inc_crit_edge
  %pfn.3 = phi i32 [ %pfn.1123, %page_zone.exit.for.inc_crit_edge ], [ %pfn.2, %if.then24 ], [ %pfn.1123, %PageReserved.exit.for.inc_crit_edge ], [ %pfn.1123, %if.end35.for.inc_crit_edge ], [ %add65, %if.end62 ], [ %pfn.1123, %if.end42.for.inc_crit_edge ]
  %inc66 = add i32 %pfn.3, 1
  %cmp14 = icmp ult i32 %inc66, %7
  br i1 %cmp14, label %for.inc.for.body15_crit_edge, label %for.inc.for.cond.backedge_crit_edge

for.inc.for.cond.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

for.end67:                                        ; preds = %for.cond.backedge.for.end67_crit_edge, %entry.for.end67_crit_edge
  %node_id = getelementptr inbounds %struct.pglist_data, ptr %pgdat, i32 0, i32 8
  %37 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node_id, align 64
  %name = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 15
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, i32 noundef %38, ptr noundef %40) #11
  %41 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %42) #11
  %arrayidx72.1 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx72.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %44) #11
  %arrayidx72.2 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx72.2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %46) #11
  %arrayidx72.3 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx72.3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %48) #11
  %arrayidx72.4 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx72.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx72.4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %50) #11
  %arrayidx72.5 = getelementptr inbounds [6 x i32], ptr %count, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx72.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx72.5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %52) #11
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %count) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__dump_page_owner(ptr noundef %page) local_unnamed_addr #2 align 64 {
entry:
  %gfp_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @lookup_page_ext(ptr noundef %page) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gfp_mask) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !105

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 %0
  %gfp_mask6 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 2
  %1 = ptrtoint ptr %gfp_mask6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gfp_mask6, align 4
  %3 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %gfp_mask, align 4
  %and.i = and i32 %2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 24
  br i1 %cmp.i, label %do.end.i, label %if.end.gfp_migratetype.exit_crit_edge, !prof !105

if.end.gfp_migratetype.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfp_migratetype.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 347, i32 noundef 9, ptr noundef null) #11
  br label %gfp_migratetype.exit

gfp_migratetype.exit:                             ; preds = %do.end.i, %if.end.gfp_migratetype.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_group_by_mobility_disabled to i32))
  %4 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %call, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool9.not = icmp eq i32 %and1.i, 0
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %gfp_migratetype.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end16:                                         ; preds = %gfp_migratetype.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not.i = icmp eq i32 %4, 0
  %shr.i100 = lshr exact i32 %and.i, 3
  %retval.0.i = select i1 %tobool25.not.i, i32 %shr.i100, i32 0, !prof !109
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %call, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  %.str.12..str.9 = select i1 %tobool19.not, ptr @.str.12, ptr @.str.9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12..str.9) #14
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 8
  %conv = zext i16 %11 to i32
  %arrayidx = getelementptr [6 x ptr], ptr @migratetype_names, i32 0, i32 %retval.0.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gfp_mask, align 4
  %pid = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 7
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid, align 8
  %ts_nsec = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 5
  %18 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ts_nsec, align 8
  %free_ts_nsec = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 6
  %20 = ptrtoint ptr %free_ts_nsec to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %free_ts_nsec, align 8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv, ptr noundef %13, i32 noundef %15, ptr noundef nonnull %gfp_mask, i32 noundef %17, i64 noundef %19, i64 noundef %21) #14
  %handle41 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 3
  %22 = ptrtoint ptr %handle41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %handle41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool42.not = icmp eq i32 %23, 0
  br i1 %tobool42.not, label %do.end46, label %if.else49

do.end46:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #14
  br label %do.end53

if.else49:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @stack_depot_print(i32 noundef %23) #11
  br label %do.end53

do.end53:                                         ; preds = %if.else49, %do.end46
  %free_handle = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 4
  %24 = ptrtoint ptr %free_handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %free_handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not = icmp eq i32 %25, 0
  br i1 %tobool55.not, label %do.end59, label %do.end65

do.end59:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %if.end68

do.end65:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #13
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  call void @stack_depot_print(i32 noundef %25) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end65, %do.end59
  %last_migrate_reason = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %last_migrate_reason to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %last_migrate_reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp.not = icmp eq i16 %27, -1
  br i1 %cmp.not, label %if.end68.cleanup_crit_edge, label %do.end74

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %conv69 = sext i16 %27 to i32
  %arrayidx77 = getelementptr [9 x ptr], ptr @migrate_reason_names, i32 0, i32 %conv69
  %28 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx77, align 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %29) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %if.end68.cleanup_crit_edge, %do.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gfp_mask) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @stack_depot_print(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pageowner_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_owner_inited, ptr blockaddress(@pageowner_init, %if.end)) #11
          to label %do.end [label %if.end], !srcloc !110

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.36, i16 noundef zeroext 256, ptr noundef null, ptr noundef null, ptr noundef nonnull @proc_page_owner_operations) #11
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_depot_init() local_unnamed_addr #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_dummy_stack() unnamed_addr #5 align 64 {
entry:
  %entries.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %entries.i) #11
  %0 = call ptr @memset(ptr %entries.i, i32 255, i32 16)
  %call.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i, i32 noundef 4, i32 noundef 0) #11
  %call2.i = call i32 @stack_depot_save(ptr noundef nonnull %entries.i, i32 noundef %call.i, i32 noundef 3264) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entries.i) #11
  store i32 %call2.i, ptr @dummy_handle, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_failure_stack() unnamed_addr #5 align 64 {
entry:
  %entries.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %entries.i) #11
  %0 = call ptr @memset(ptr %entries.i, i32 255, i32 16)
  %call.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i, i32 noundef 4, i32 noundef 0) #11
  %call2.i = call i32 @stack_depot_save(ptr noundef nonnull %entries.i, i32 noundef %call.i, i32 noundef 3264) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entries.i) #11
  store i32 %call2.i, ptr @failure_handle, align 4
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_early_stack() unnamed_addr #5 align 64 {
entry:
  %entries.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %entries.i) #11
  %0 = call ptr @memset(ptr %entries.i, i32 255, i32 16)
  %call.i = call i32 @stack_trace_save(ptr noundef nonnull %entries.i, i32 noundef 4, i32 noundef 0) #11
  %call2.i = call i32 @stack_depot_save(ptr noundef nonnull %entries.i, i32 noundef %call.i, i32 noundef 3264) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %entries.i) #11
  store i32 %call2.i, ptr @early_handle, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_depot_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_page_owner(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_owner_inited, ptr blockaddress(@read_page_owner, %if.end)) #11
          to label %cleanup [label %if.end], !srcloc !110

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @min_low_pfn to i32))
  %0 = load i32, ptr @min_low_pfn, align 4
  %1 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ppos, align 8
  %3 = trunc i64 %2 to i32
  %conv3 = add i32 %0, %3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %pfn.0 = phi i32 [ %conv3, %if.end ], [ %inc, %while.cond.while.cond_crit_edge ]
  %call4 = tail call i32 @pfn_valid(i32 noundef %pfn.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp ne i32 %call4, 0
  %and = and i32 %pfn.0, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool5.not, %cmp.not
  %inc = add i32 %pfn.0, 1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  tail call void @drain_all_pages(ptr noundef null) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %4 = load i32, ptr @max_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %pfn.0, i32 %4)
  %cmp7103 = icmp ult i32 %pfn.0, %4
  br i1 %cmp7103, label %while.end.for.body_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.end.for.body_crit_edge
  %pfn.1104 = phi i32 [ %inc70, %for.inc.for.body_crit_edge ], [ %pfn.0, %while.end.for.body_crit_edge ]
  %and9 = and i32 %pfn.1104, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %land.lhs.true, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true:                                    ; preds = %for.body
  %call12 = tail call i32 @pfn_valid(i32 noundef %pfn.1104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %add15 = add nuw i32 %pfn.1104, 2047
  br label %for.inc

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %for.body.if.end16_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.1104, %6
  %add.ptr = getelementptr %struct.page, ptr %5, i32 %sub
  %7 = getelementptr %struct.page, ptr %5, i32 %sub, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i = and i32 %9, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr %struct.page, ptr %5, i32 %sub, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %11)
  %cmp21 = icmp ult i32 %11, 12
  %notmask99 = shl nsw i32 -1, %11
  %sub24 = xor i32 %notmask99, -1
  %add25 = select i1 %cmp21, i32 %sub24, i32 0
  %pfn.2 = add i32 %add25, %pfn.1104
  br label %for.inc

if.end27:                                         ; preds = %if.end16
  %call28 = tail call ptr @lookup_page_ext(ptr noundef %add.ptr) #11
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.for.inc_crit_edge, label %if.end39, !prof !105

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end39:                                         ; preds = %if.end27
  %12 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %call28, align 4
  %and1.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool41.not = icmp eq i32 %and1.i, 0
  br i1 %tobool41.not, label %if.end39.for.inc_crit_edge, label %if.end43

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end43:                                         ; preds = %if.end39
  %14 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call28, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not = icmp eq i32 %16, 0
  br i1 %tobool46.not, label %if.end43.for.inc_crit_edge, label %if.end48

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end48:                                         ; preds = %if.end43
  %17 = load i32, ptr @page_owner_ops, align 4
  %add.ptr.i = getelementptr i8, ptr %call28, i32 %17
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 8
  %conv50 = zext i16 %19 to i32
  %notmask = shl nsw i32 -1, %conv50
  %sub52 = xor i32 %notmask, -1
  %and53 = and i32 %pfn.1104, %sub52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp54 = icmp eq i32 %and53, 0
  br i1 %cmp54, label %do.end60, label %if.end48.for.inc_crit_edge

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end60:                                         ; preds = %if.end48
  %handle62 = getelementptr inbounds %struct.page_owner, ptr %add.ptr.i, i32 0, i32 3
  %20 = ptrtoint ptr %handle62 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %handle62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool63.not = icmp eq i32 %21, 0
  br i1 %tobool63.not, label %do.end60.for.inc_crit_edge, label %if.end65

do.end60.for.inc_crit_edge:                       ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end65:                                         ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @min_low_pfn to i32))
  %22 = load i32, ptr @min_low_pfn, align 4
  %sub66 = add nuw i32 %pfn.1104, 1
  %add67 = sub i32 %sub66, %22
  %conv68 = zext i32 %add67 to i64
  %23 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv68, ptr %ppos, align 8
  %call69 = tail call fastcc i32 @print_page_owner(ptr noundef %buf, i32 noundef %count, i32 noundef %pfn.1104, ptr noundef %add.ptr, ptr noundef %add.ptr.i, i32 noundef %21)
  br label %cleanup

for.inc:                                          ; preds = %do.end60.for.inc_crit_edge, %if.end48.for.inc_crit_edge, %if.end43.for.inc_crit_edge, %if.end39.for.inc_crit_edge, %if.end27.for.inc_crit_edge, %if.then19, %if.then14
  %pfn.3 = phi i32 [ %pfn.2, %if.then19 ], [ %pfn.1104, %if.end27.for.inc_crit_edge ], [ %pfn.1104, %do.end60.for.inc_crit_edge ], [ %pfn.1104, %if.end48.for.inc_crit_edge ], [ %pfn.1104, %if.end43.for.inc_crit_edge ], [ %pfn.1104, %if.end39.for.inc_crit_edge ], [ %add15, %if.then14 ]
  %inc70 = add i32 %pfn.3, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @max_pfn to i32))
  %24 = load i32, ptr @max_pfn, align 4
  %cmp7 = icmp ult i32 %inc70, %24
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end65, %while.end.cleanup_crit_edge, %entry
  %retval.0 = phi i32 [ %call69, %if.end65 ], [ -22, %entry ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_all_pages(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @print_page_owner(ptr noundef %buf, i32 noundef %count, i32 noundef %pfn, ptr noundef %page, ptr noundef %page_owner, i32 noundef %handle) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 4096)
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %page_owner to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %page_owner, align 8
  %conv = zext i16 %2 to i32
  %gfp_mask = getelementptr inbounds %struct.page_owner, ptr %page_owner, i32 0, i32 2
  %3 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfp_mask, align 4
  %pid = getelementptr inbounds %struct.page_owner, ptr %page_owner, i32 0, i32 7
  %5 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pid, align 8
  %ts_nsec = getelementptr inbounds %struct.page_owner, ptr %page_owner, i32 0, i32 5
  %7 = ptrtoint ptr %ts_nsec to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ts_nsec, align 8
  %free_ts_nsec = getelementptr inbounds %struct.page_owner, ptr %page_owner, i32 0, i32 6
  %9 = ptrtoint ptr %free_ts_nsec to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %free_ts_nsec, align 8
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call9.i, i32 noundef %0, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %4, ptr noundef %gfp_mask, i32 noundef %6, i64 noundef %8, i64 noundef %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %call2)
  %cmp3.not = icmp ugt i32 %0, %call2
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %12
  %call7 = tail call i32 @get_pfnblock_flags_mask(ptr noundef %page, i32 noundef %add, i32 noundef 7) #11
  %13 = ptrtoint ptr %gfp_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gfp_mask, align 4
  %and.i = and i32 %14, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 24
  br i1 %cmp.i, label %do.end.i, label %if.end6.gfp_migratetype.exit_crit_edge, !prof !105

if.end6.gfp_migratetype.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %gfp_migratetype.exit

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 347, i32 noundef 9, ptr noundef null) #11
  br label %gfp_migratetype.exit

gfp_migratetype.exit:                             ; preds = %do.end.i, %if.end6.gfp_migratetype.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_group_by_mobility_disabled to i32))
  %15 = load i32, ptr @page_group_by_mobility_disabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not.i = icmp eq i32 %15, 0
  %shr.i = lshr exact i32 %and.i, 3
  %retval.0.i = select i1 %tobool25.not.i, i32 %shr.i, i32 0, !prof !109
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %call2
  %sub = sub i32 %0, %call2
  %arrayidx = getelementptr [6 x ptr], ptr @migratetype_names, i32 0, i32 %retval.0.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %shr = lshr i32 %pfn, 11
  %arrayidx10 = getelementptr [6 x ptr], ptr @migratetype_names, i32 0, i32 %call7
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.38, i32 noundef %pfn, ptr noundef %17, i32 noundef %shr, ptr noundef %19, ptr noundef %page)
  %add12 = add i32 %call11, %call2
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add12)
  %cmp13.not = icmp ugt i32 %0, %add12
  br i1 %cmp13.not, label %if.end16, label %gfp_migratetype.exit.cleanup.sink.split_crit_edge

gfp_migratetype.exit.cleanup.sink.split_crit_edge: ; preds = %gfp_migratetype.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16:                                         ; preds = %gfp_migratetype.exit
  %add.ptr17 = getelementptr i8, ptr %call9.i, i32 %add12
  %sub18 = sub i32 %0, %add12
  %call19 = tail call i32 @stack_depot_snprint(i32 noundef %handle, ptr noundef %add.ptr17, i32 noundef %sub18, i32 noundef 0) #11
  %add20 = add i32 %call19, %add12
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add20)
  %cmp21.not = icmp ugt i32 %0, %add20
  br i1 %cmp21.not, label %if.end24, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end24:                                         ; preds = %if.end16
  %last_migrate_reason = getelementptr inbounds %struct.page_owner, ptr %page_owner, i32 0, i32 1
  %20 = ptrtoint ptr %last_migrate_reason to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %last_migrate_reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %cmp26.not = icmp eq i16 %21, -1
  br i1 %cmp26.not, label %if.end24.if.end39_crit_edge, label %if.then28

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then28:                                        ; preds = %if.end24
  %conv25 = sext i16 %21 to i32
  %add.ptr29 = getelementptr i8, ptr %call9.i, i32 %add20
  %sub30 = sub i32 %0, %add20
  %arrayidx32 = getelementptr [9 x ptr], ptr @migrate_reason_names, i32 0, i32 %conv25
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx32, align 4
  %call33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.39, ptr noundef %23)
  %add34 = add i32 %call33, %add20
  call void @__sanitizer_cov_trace_cmp4(i32 %add34, i32 %0)
  %cmp35.not = icmp ult i32 %add34, %0
  br i1 %cmp35.not, label %if.then28.if.end39_crit_edge, label %if.then28.cleanup.sink.split_crit_edge

if.then28.cleanup.sink.split_crit_edge:           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.end39:                                         ; preds = %if.then28.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  %ret.0 = phi i32 [ %add34, %if.then28.if.end39_crit_edge ], [ %add20, %if.end24.if.end39_crit_edge ]
  %add.ptr40 = getelementptr i8, ptr %call9.i, i32 %ret.0
  %sub41 = sub i32 %0, %ret.0
  %call42 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.40)
  %add43 = add i32 %call42, %ret.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %0)
  %cmp44.not = icmp ult i32 %add43, %0
  br i1 %cmp44.not, label %if.then.i.i.i, label %if.end39.cleanup.sink.split_crit_edge

if.end39.cleanup.sink.split_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then.i.i.i:                                    ; preds = %if.end39
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %add43, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.43, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i107

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i107:                                    ; preds = %if.then.i.i.i
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %add43, i32 -1226833920) #16, !srcloc !111
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i107.copy_to_user.exit_crit_edge

if.end.i.i107.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %add43) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %call9.i, i32 noundef %add43) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i107.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %add43, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add43, %if.end.i.i107.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool49.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool49.not, i32 %add43, i32 -14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %copy_to_user.exit, %if.end39.cleanup.sink.split_crit_edge, %if.then28.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %gfp_migratetype.exit.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %spec.select, %copy_to_user.exit ], [ -12, %if.end39.cleanup.sink.split_crit_edge ], [ -12, %if.then28.cleanup.sink.split_crit_edge ], [ -12, %if.end16.cleanup.sink.split_crit_edge ], [ -12, %gfp_migratetype.exit.cleanup.sink.split_crit_edge ], [ -12, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_depot_snprint(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92}
!llvm.named.register.sp = !{!94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @page_owner_inited, !1, !"page_owner_inited", i1 false, i1 false}
!1 = !{!"../mm/page_owner.c", i32 35, i32 1}
!2 = !{ptr @__setup_early_page_owner_param, !3, !"__setup_early_page_owner_param", i1 false, i1 false}
!3 = !{!"../mm/page_owner.c", i32 47, i32 1}
!4 = !{ptr @page_owner_ops, !5, !"page_owner_ops", i1 false, i1 false}
!5 = !{!"../mm/page_owner.c", i32 92, i32 28}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/page_owner.c", i32 322, i32 16}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/page_owner.c", i32 324, i32 17}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/page_owner.c", i32 400, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__dump_page_owner._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @__dump_page_owner._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/page_owner.c", i32 409, i32 3}
!18 = !{ptr @__dump_page_owner._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @__dump_page_owner._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/page_owner.c", i32 414, i32 3}
!22 = !{ptr @__dump_page_owner._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__dump_page_owner._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/page_owner.c", i32 416, i32 3}
!26 = !{ptr @__dump_page_owner._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @__dump_page_owner._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../mm/page_owner.c", i32 418, i32 2}
!30 = !{ptr @__dump_page_owner._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @__dump_page_owner._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/page_owner.c", i32 424, i32 3}
!34 = !{ptr @__dump_page_owner._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @__dump_page_owner._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../mm/page_owner.c", i32 430, i32 3}
!38 = !{ptr @__dump_page_owner._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @__dump_page_owner._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/page_owner.c", i32 432, i32 3}
!42 = !{ptr @__dump_page_owner._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @__dump_page_owner._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../mm/page_owner.c", i32 437, i32 3}
!46 = !{ptr @__dump_page_owner._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @__dump_page_owner._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__initcall__kmod_page_owner__260_631_pageowner_init7, !49, !"__initcall__kmod_page_owner__260_631_pageowner_init7", i1 false, i1 false}
!49 = !{!"../mm/page_owner.c", i32 631, i32 1}
!50 = !{ptr @__setup_str_early_page_owner_param, !3, !"__setup_str_early_page_owner_param", i1 false, i1 false}
!51 = !{ptr @page_owner_enabled, !52, !"page_owner_enabled", i1 false, i1 false}
!52 = !{!"../mm/page_owner.c", i32 34, i32 13}
!53 = !{ptr @dummy_handle, !54, !"dummy_handle", i1 false, i1 false}
!54 = !{!"../mm/page_owner.c", i32 37, i32 29}
!55 = !{ptr @failure_handle, !56, !"failure_handle", i1 false, i1 false}
!56 = !{!"../mm/page_owner.c", i32 38, i32 29}
!57 = !{ptr @early_handle, !58, !"early_handle", i1 false, i1 false}
!58 = !{!"../mm/page_owner.c", i32 39, i32 29}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/page_owner.c", i32 590, i32 2}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @init_pages_in_zone._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @init_pages_in_zone._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/page-flags.h", i32 440, i32 1}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/gfp.h", i32 347, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../mm/page_owner.c", i32 622, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pageowner_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pageowner_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../mm/page_owner.c", i32 626, i32 22}
!77 = !{ptr @proc_page_owner_operations, !78, !"proc_page_owner_operations", i1 false, i1 false}
!78 = !{!"../mm/page_owner.c", i32 615, i32 37}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../mm/page_owner.c", i32 342, i32 4}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../mm/page_owner.c", i32 354, i32 4}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../mm/page_owner.c", i32 370, i32 4}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../mm/page_owner.c", i32 376, i32 43}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!94 = !{!"sp"}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2153189562, i64 2153190046, i64 2153189599, i64 2153189655, i64 2153189689, i64 2153189713, i64 2153189754, i64 2153189775, i64 2153189803, i64 2153189837}
!107 = !{i64 2150978641, i64 2150979132, i64 2150978678, i64 2150978734, i64 2150978768, i64 2150978792, i64 2150978833, i64 2150978854, i64 2150978882, i64 2150978916}
!108 = !{!"branch_weights", i32 2000, i32 2002}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2148502430, i64 2148502435, i64 2148502448, i64 2148502492, i64 2148502526, i64 2148502547}
!111 = !{i64 2152190992, i64 2152191017}
