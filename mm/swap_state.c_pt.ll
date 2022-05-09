; ModuleID = '/llk/IR_all_yes/mm/swap_state.c_pt.bc'
source_filename = "../mm/swap_state.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.37 }
%union.anon.37 = type { i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.vm_event_state = type { [76 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.80, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.80 = type { %struct.atomic_t }
%struct.anon.7 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.87, [64 x ptr], %union.anon.88 }
%union.anon.87 = type { %struct.list_head }
%union.anon.88 = type { [3 x [2 x i32]] }
%struct.anon.2 = type { [16 x i8], %struct.lockdep_map }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.12, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, ptr, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.vma_swap_readahead = type { i16, i16, i16, [8 x i32] }
%struct.anon.14 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.14, i32, ptr, ptr, %union.anon.15, ptr, ptr, ptr, ptr, ptr }
%union.anon.15 = type { i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@show_swap_cache_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%lu pages in swap cache\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"show_swap_cache_info\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm/swap_state.c\00", [16 x i8] zeroinitializer }, align 32
@show_swap_cache_info._entry_ptr = internal global ptr @show_swap_cache_info._entry, section ".printk_index", align 4
@show_swap_cache_info._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Swap cache stats: add %lu, delete %lu, find %lu/%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@show_swap_cache_info._entry_ptr.5 = internal global ptr @show_swap_cache_info._entry.3, section ".printk_index", align 4
@swap_cache_info.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@swap_cache_info.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@swap_cache_info.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@swap_cache_info.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@show_swap_cache_info._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Free swap  = %ldkB\0A\00", [44 x i8] zeroinitializer }, align 32
@show_swap_cache_info._entry_ptr.8 = internal global ptr @show_swap_cache_info._entry.6, section ".printk_index", align 4
@show_swap_cache_info._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Total swap = %lukB\0A\00", [44 x i8] zeroinitializer }, align 32
@show_swap_cache_info._entry_ptr.11 = internal global ptr @show_swap_cache_info._entry.9, section ".printk_index", align 4
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@swapper_spaces = dso_local local_unnamed_addr global [30 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(PageSwapCache(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VM_BUG_ON_PAGE(!PageSwapBacked(page))\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(xas.xa_index != idx + i)\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!PageSwapCache(page))\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(PageWriteback(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM_BUG_ON_PAGE(entry != page)\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(!PageUptodate(page))\00", [60 x i8] zeroinitializer }, align 32
@swapin_readahead_hits = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 4 }, [28 x i8] zeroinitializer }, align 32
@swap_slot_cache_enabled = external dso_local local_unnamed_addr global i8, align 1
@swap_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @swap_writepage, ptr null, ptr null, ptr @swap_set_page_dirty, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @migrate_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nr_swapper_spaces = internal unnamed_addr global [30 x i32] zeroinitializer, section ".data..read_mostly", align 4
@exit_swap_address_space.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_swap_state__326_911_swap_init_sysfs4 = internal global ptr @swap_init_sysfs, section ".initcall4.init", align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@enable_vma_readahead = internal global i8 1, section ".data..read_mostly", align 1
@nr_rotate_swap = external dso_local global %struct.atomic_t, align 4
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@swapin_nr_pages.prev_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@swapin_nr_pages.last_readahead_pages = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@page_cluster = external dso_local global i32, align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"swap\00", [27 x i8] zeroinitializer }, align 32
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@swap_init_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to create swap kobject\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"swap_init_sysfs\00", [16 x i8] zeroinitializer }, align 32
@swap_init_sysfs._entry_ptr = internal global ptr @swap_init_sysfs._entry, section ".printk_index", align 4
@swap_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @swap_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@swap_init_sysfs._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to register swap group\0A\00", [63 x i8] zeroinitializer }, align 32
@swap_init_sysfs._entry_ptr.41 = internal global ptr @swap_init_sysfs._entry.39, section ".printk_index", align 4
@swap_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @vma_ra_enabled_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@vma_ra_enabled_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vma_ra_enabled_show, ptr @vma_ra_enabled_store }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vma_ra_enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 75, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 76, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"swap_cache_info.0\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"swap_cache_info.1\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"swap_cache_info.2\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"swap_cache_info.3\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 79, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 81, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 109, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 110, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 111, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 122, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 161, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 162, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 166, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 190, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"swapin_readahead_hits\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 71, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant [10 x i8] c"swap_aops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 31, i32 46 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 698, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/huge_mm.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 347, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 414, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 493, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1182, i32 9 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1368, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 717, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 695, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 723, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 469, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"prev_offset\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 576, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"last_readahead_pages\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 578, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 378, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 895, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 897, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [16 x i8] c"swap_attr_group\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 886, i32 37 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 902, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"swap_attrs\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 881, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"vma_ra_enabled_attr\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 877, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 878, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 861, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 862, i32 29 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [19 x i8] c"../mm/swap_state.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 862, i32 38 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__initcall__kmod_swap_state__326_911_swap_init_sysfs4, ptr @show_swap_cache_info._entry, ptr @show_swap_cache_info._entry.3, ptr @show_swap_cache_info._entry.6, ptr @show_swap_cache_info._entry.9, ptr @show_swap_cache_info._entry_ptr, ptr @show_swap_cache_info._entry_ptr.11, ptr @show_swap_cache_info._entry_ptr.5, ptr @show_swap_cache_info._entry_ptr.8, ptr @swap_init_sysfs._entry, ptr @swap_init_sysfs._entry.39, ptr @swap_init_sysfs._entry_ptr, ptr @swap_init_sysfs._entry_ptr.41, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @swap_cache_info.0, ptr @swap_cache_info.1, ptr @swap_cache_info.2, ptr @swap_cache_info.3, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @swapin_readahead_hits, ptr @swap_aops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @swapin_nr_pages.prev_offset, ptr @swapin_nr_pages.last_readahead_pages, ptr @xa_init_flags.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @swap_attr_group, ptr @.str.40, ptr @swap_attrs, ptr @vma_ra_enabled_attr, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_swap_cache_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_swap_cache_info._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cache_info.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cache_info.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cache_info.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_cache_info.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_swap_cache_info._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_swap_cache_info._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapin_readahead_hits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapin_nr_pages.prev_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swapin_nr_pages.last_readahead_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_init_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_init_sysfs._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vma_ra_enabled_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @show_swap_cache_info() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39) to i32))
  %0 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 39), align 4
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0) #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #15
  %2 = load i32, ptr @swap_cache_info.0, align 4
  %3 = load i32, ptr @swap_cache_info.1, align 4
  %4 = load i32, ptr @swap_cache_info.2, align 4
  %5 = load i32, ptr @swap_cache_info.3, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_swap_pages, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_swap_pages to i32))
  %6 = load volatile i32, ptr @nr_swap_pages, align 4
  %shl = shl i32 %6, 2
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %shl) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_swap_pages to i32))
  %7 = load i32, ptr @total_swap_pages, align 4
  %shl14 = shl i32 %7, 2
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %shl14) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_shadow_from_swap_cache([1 x i32] %entry.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %shr.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %shr = lshr i32 %and.i, 14
  %i_pages = getelementptr %struct.address_space, ptr %1, i32 %shr, i32 1
  %call9 = tail call ptr @xa_load(ptr noundef %i_pages, i32 noundef %and.i) #12
  %2 = ptrtoint ptr %call9 to i32
  %and.i25 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.i.not = icmp eq i32 %and.i25, 0
  %call9. = select i1 %tobool.i.not, ptr null, ptr %call9
  ret ptr %call9.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_to_swap_cache(ptr noundef %page, [1 x i32] %entry.coerce, i32 noundef %gfp, ptr noundef writeonly %shadowp) local_unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract = extractvalue [1 x i32] %entry.coerce, 0
  %shr.i = lshr i32 %entry.coerce.fca.0.extract, 26
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %entry.coerce.fca.0.extract, 67108863
  %shr = lshr i32 %and.i, 14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #12
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 5
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %8 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %9 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr %struct.address_space, ptr %1, i32 %shr, i32 1
  %10 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i_pages, ptr %xas, align 4
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i234, label %PageHead.exit.i, !prof !128

if.then.i.i234:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

PageHead.exit.i:                                  ; preds = %entry
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i235 = icmp eq i32 %15, 0
  br i1 %tobool.not.i235, label %PageHead.exit.i.compound_order.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_order.exit_crit_edge:    ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_order.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i = getelementptr inbounds %struct.anon.7, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %compound_order.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %compound_order.i, align 1
  %conv.i = zext i8 %18 to i32
  br label %compound_order.exit

compound_order.exit:                              ; preds = %if.end.i, %PageHead.exit.i.compound_order.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end.i ], [ 0, %PageHead.exit.i.compound_order.exit_crit_edge ]
  %shr10 = lshr i32 %and.i, %retval.0.i
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i.i236 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i.i236, label %if.then.i.i237, label %PageHead.exit.i239, !prof !128

if.then.i.i237:                                   ; preds = %compound_order.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

PageHead.exit.i239:                               ; preds = %compound_order.exit
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i238 = icmp eq i32 %23, 0
  br i1 %tobool.not.i238, label %PageHead.exit.i239.compound_order.exit244_crit_edge, label %if.end.i242

PageHead.exit.i239.compound_order.exit244_crit_edge: ; preds = %PageHead.exit.i239
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_order.exit244

if.end.i242:                                      ; preds = %PageHead.exit.i239
  call void @__sanitizer_cov_trace_pc() #14
  %24 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i240 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %compound_order.i240 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %compound_order.i240, align 1
  %conv.i241 = zext i8 %26 to i32
  br label %compound_order.exit244

compound_order.exit244:                           ; preds = %if.end.i242, %PageHead.exit.i239.compound_order.exit244_crit_edge
  %retval.0.i243 = phi i32 [ %conv.i241, %if.end.i242 ], [ 0, %PageHead.exit.i239.compound_order.exit244_crit_edge ]
  %shl = shl i32 %shr10, %retval.0.i243
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl, ptr %2, align 4
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i.i245 = icmp eq i32 %29, -1
  br i1 %cmp.i.not.i.i245, label %if.then.i.i246, label %PageHead.exit.i248, !prof !128

if.then.i.i246:                                   ; preds = %compound_order.exit244
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

PageHead.exit.i248:                               ; preds = %compound_order.exit244
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %page, align 4
  %32 = and i32 %31, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i247 = icmp eq i32 %32, 0
  br i1 %tobool.not.i247, label %PageHead.exit.i248.compound_order.exit253_crit_edge, label %if.end.i251

PageHead.exit.i248.compound_order.exit253_crit_edge: ; preds = %PageHead.exit.i248
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_order.exit253

if.end.i251:                                      ; preds = %PageHead.exit.i248
  call void @__sanitizer_cov_trace_pc() #14
  %33 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i249 = getelementptr inbounds %struct.anon.7, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %compound_order.i249 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %compound_order.i249, align 1
  br label %compound_order.exit253

compound_order.exit253:                           ; preds = %if.end.i251, %PageHead.exit.i248.compound_order.exit253_crit_edge
  %retval.0.i252 = phi i8 [ %35, %if.end.i251 ], [ 0, %PageHead.exit.i248.compound_order.exit253_crit_edge ]
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i.i254 = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i.i254, label %if.then.i.i255, label %PageHead.exit.i257, !prof !128

if.then.i.i255:                                   ; preds = %compound_order.exit253
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

PageHead.exit.i257:                               ; preds = %compound_order.exit253
  %38 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %page, align 4
  %40 = and i32 %39, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i256 = icmp eq i32 %40, 0
  br i1 %tobool.not.i256, label %PageHead.exit.i257.compound_order.exit262_crit_edge, label %if.end.i260

PageHead.exit.i257.compound_order.exit262_crit_edge: ; preds = %PageHead.exit.i257
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_order.exit262

if.end.i260:                                      ; preds = %PageHead.exit.i257
  call void @__sanitizer_cov_trace_pc() #14
  %41 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i258 = getelementptr inbounds %struct.anon.7, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %compound_order.i258 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %compound_order.i258, align 1
  br label %compound_order.exit262

compound_order.exit262:                           ; preds = %if.end.i260, %PageHead.exit.i257.compound_order.exit262_crit_edge
  %retval.0.i261 = phi i8 [ %43, %if.end.i260 ], [ 0, %PageHead.exit.i257.compound_order.exit262_crit_edge ]
  %rem309 = urem i8 %retval.0.i261, 6
  %sub = sub i8 %retval.0.i252, %rem309
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %sub, ptr %3, align 4
  %45 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %46)
  %cmp.i.not.i.i263 = icmp eq i32 %46, -1
  br i1 %cmp.i.not.i.i263, label %if.then.i.i264, label %PageHead.exit.i266, !prof !128

if.then.i.i264:                                   ; preds = %compound_order.exit262
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !129
  unreachable

PageHead.exit.i266:                               ; preds = %compound_order.exit262
  %47 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %page, align 4
  %49 = and i32 %48, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i265 = icmp eq i32 %49, 0
  br i1 %tobool.not.i265, label %PageHead.exit.i266.compound_order.exit271_crit_edge, label %if.end.i269

PageHead.exit.i266.compound_order.exit271_crit_edge: ; preds = %PageHead.exit.i266
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_order.exit271

if.end.i269:                                      ; preds = %PageHead.exit.i266
  call void @__sanitizer_cov_trace_pc() #14
  %50 = getelementptr %struct.page, ptr %page, i32 1, i32 1
  %compound_order.i267 = getelementptr inbounds %struct.anon.7, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %compound_order.i267 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %compound_order.i267, align 1
  br label %compound_order.exit271

compound_order.exit271:                           ; preds = %if.end.i269, %PageHead.exit.i266.compound_order.exit271_crit_edge
  %retval.0.i270 = phi i8 [ %52, %if.end.i269 ], [ 0, %PageHead.exit.i266.compound_order.exit271_crit_edge ]
  %rem15310 = urem i8 %retval.0.i270, 6
  %notmask = shl nsw i8 -1, %rem15310
  %conv18 = xor i8 %notmask, -1
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv18, ptr %4, align 1
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %5, align 2
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %6, align 1
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 3 to ptr), ptr %7, align 4
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %8, align 4
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %9, align 4
  %59 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i272 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i272)
  %tobool.not.i273 = icmp eq i32 %and.i.i272, 0
  br i1 %tobool.not.i273, label %thp_nr_pages.exit, label %if.then.i274, !prof !130

if.then.i274:                                     ; preds = %compound_order.exit271
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %compound_order.exit271
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %59, align 4
  %and.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %63, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %64, %if.end.i.i ]
  %65 = inttoptr i32 %retval.0.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp.i.not.i = icmp eq i32 %67, -1
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %59, align 4
  %and.i16.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !128

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !130

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %69, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %70, %if.end.i20.i ]
  %71 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !132
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !130

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %69, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %72, %if.end.i27.i ]
  %73 = inttoptr i32 %retval.0.i28.i to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and1.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body30, !prof !128

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #12, !srcloc !133
  unreachable

do.body30:                                        ; preds = %PageLocked.exit
  %76 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %59, align 4
  %and.i.i168 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i168)
  %tobool.not.i.i169 = icmp eq i32 %and.i.i168, 0
  br i1 %tobool.not.i.i169, label %if.end.i.i172, label %if.then.i.i171, !prof !130

if.then.i.i171:                                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i170 = add i32 %77, -1
  br label %_compound_head.exit.i174

if.end.i.i172:                                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i174

_compound_head.exit.i174:                         ; preds = %if.end.i.i172, %if.then.i.i171
  %retval.0.i.i173 = phi i32 [ %sub.i.i170, %if.then.i.i171 ], [ %78, %if.end.i.i172 ]
  %79 = inttoptr i32 %retval.0.i.i173 to ptr
  %80 = getelementptr inbounds %struct.page, ptr %79, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %and.i.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !130

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i174
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i174
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %79, align 4
  %85 = and i32 %84, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.i.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.do.body48_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.do.body48_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %80, align 4
  %and.i.i.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !130

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %79, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %79, align 4
  %90 = and i32 %89, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i.i.not = icmp eq i32 %90, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.do.body48_crit_edge, label %if.then38, !prof !130

PageSwapCache.exit.do.body48_crit_edge:           ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

if.then38:                                        ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.13) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 110, 0\0A.popsection", ""() #12, !srcloc !135
  unreachable

do.body48:                                        ; preds = %PageSwapCache.exit.do.body48_crit_edge, %folio_test_swapbacked.exit.i.i.do.body48_crit_edge
  %91 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %59, align 4
  %and.i.i175 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i175)
  %tobool.not.i.i176 = icmp eq i32 %and.i.i175, 0
  br i1 %tobool.not.i.i176, label %if.end.i.i179, label %if.then.i.i178, !prof !130

if.then.i.i178:                                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i177 = add i32 %92, -1
  br label %_compound_head.exit.i184

if.end.i.i179:                                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i184

_compound_head.exit.i184:                         ; preds = %if.end.i.i179, %if.then.i.i178
  %retval.0.i.i180 = phi i32 [ %sub.i.i177, %if.then.i.i178 ], [ %93, %if.end.i.i179 ]
  %94 = inttoptr i32 %retval.0.i.i180 to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.i.not.i181 = icmp eq i32 %96, -1
  %97 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %59, align 4
  %and.i16.i182 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i182)
  %tobool.not.i17.i183 = icmp eq i32 %and.i16.i182, 0
  br i1 %cmp.i.not.i181, label %if.then.i185, label %do.end10.i191, !prof !128

if.then.i185:                                     ; preds = %_compound_head.exit.i184
  br i1 %tobool.not.i17.i183, label %if.end.i20.i188, label %if.then.i19.i187, !prof !130

if.then.i19.i187:                                 ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i186 = add i32 %98, -1
  br label %_compound_head.exit22.i190

if.end.i20.i188:                                  ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i190

_compound_head.exit22.i190:                       ; preds = %if.end.i20.i188, %if.then.i19.i187
  %retval.0.i21.i189 = phi i32 [ %sub.i18.i186, %if.then.i19.i187 ], [ %99, %if.end.i20.i188 ]
  %100 = inttoptr i32 %retval.0.i21.i189 to ptr
  tail call void @dump_page(ptr noundef %100, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #12, !srcloc !136
  unreachable

do.end10.i191:                                    ; preds = %_compound_head.exit.i184
  br i1 %tobool.not.i17.i183, label %if.end.i27.i194, label %if.then.i26.i193, !prof !130

if.then.i26.i193:                                 ; preds = %do.end10.i191
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i192 = add i32 %98, -1
  br label %PageSwapBacked.exit

if.end.i27.i194:                                  ; preds = %do.end10.i191
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %page to i32
  br label %PageSwapBacked.exit

PageSwapBacked.exit:                              ; preds = %if.end.i27.i194, %if.then.i26.i193
  %retval.0.i28.i195 = phi i32 [ %sub.i25.i192, %if.then.i26.i193 ], [ %101, %if.end.i27.i194 ]
  %102 = inttoptr i32 %retval.0.i28.i195 to ptr
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %102, align 4
  %105 = and i32 %104, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool50.not = icmp eq i32 %105, 0
  br i1 %tobool50.not, label %if.then59, label %do.end68, !prof !128

if.then59:                                        ; preds = %PageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #12, !srcloc !137
  unreachable

do.end68:                                         ; preds = %PageSwapBacked.exit
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #12
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #12, !srcloc !138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@add_to_swap_cache, %if.then.i275)) #12
          to label %page_ref_add.exit [label %if.then.i275], !srcloc !139

if.then.i275:                                     ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef 1) #12
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i275, %do.end68
  %107 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %59, align 4
  %and.i.i197 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i197)
  %tobool.not.i = icmp eq i32 %and.i.i197, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i198, !prof !130

if.then.i198:                                     ; preds = %page_ref_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #12, !srcloc !140
  unreachable

do.body7.i:                                       ; preds = %page_ref_add.exit
  %109 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %59, align 4
  %and.i31.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i199 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i199, label %if.end.i.i202, label %if.then.i.i201, !prof !130

if.then.i.i201:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i200 = add i32 %110, -1
  br label %_compound_head.exit.i205

if.end.i.i202:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i205

_compound_head.exit.i205:                         ; preds = %if.end.i.i202, %if.then.i.i201
  %retval.0.i.i203 = phi i32 [ %sub.i.i200, %if.then.i.i201 ], [ %111, %if.end.i.i202 ]
  %112 = inttoptr i32 %retval.0.i.i203 to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %cmp.i.not.i204 = icmp eq i32 %114, -1
  %115 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %59, align 4
  %and.i32.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i204, label %if.then17.i, label %do.end24.i, !prof !128

if.then17.i:                                      ; preds = %_compound_head.exit.i205
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !130

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %116, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %117, %if.end.i36.i ]
  %118 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %118, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 493, 0\0A.popsection", ""() #12, !srcloc !141
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i205
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !130

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %116, -1
  br label %SetPageSwapCache.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %page to i32
  br label %SetPageSwapCache.exit

SetPageSwapCache.exit:                            ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %119, %if.end.i43.i ]
  %120 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 10, ptr noundef %120) #12
  %tobool99.not = icmp eq ptr %shadowp, null
  %private1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %nrpages = getelementptr %struct.address_space, ptr %1, i32 %shr, i32 7
  br label %do.body69

do.body69:                                        ; preds = %unlock.do.body69_crit_edge, %SetPageSwapCache.exit
  %121 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %xas, align 4
  call void @_raw_spin_lock_irq(ptr noundef %122) #12
  call void @xas_create_range(ptr noundef nonnull %xas) #12
  %123 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %7, align 4
  %125 = ptrtoint ptr %124 to i32
  %and.i.i.i.i277 = and i32 %125, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i277)
  %cmp.i.i.i.i = icmp ne i32 %and.i.i.i.i277, 2
  %cmp.i.i.i = icmp ult ptr %124, inttoptr (i32 -16378 to ptr)
  %tobool72.not311 = icmp ult ptr %124, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i = or i1 %cmp.i.i.i, %cmp.i.i.i.i
  %tobool72.not = or i1 %tobool72.not311, %not.spec.select.i.i.i
  br i1 %tobool72.not, label %do.body76, label %do.body69.unlock_crit_edge

do.body69.unlock_crit_edge:                       ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.body76:                                        ; preds = %do.body69
  %126 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %and.i)
  %cmp78.not = icmp eq i32 %127, %and.i
  br i1 %cmp78.not, label %do.end95, label %if.then86, !prof !130

if.then86:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 122, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

do.end95:                                         ; preds = %do.body76
  %call96 = call ptr @xas_load(ptr noundef nonnull %xas) #12
  %128 = ptrtoint ptr %call96 to i32
  %and.i280 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280)
  %tobool.i.not = icmp eq i32 %and.i280, 0
  %or.cond = or i1 %tobool99.not, %tobool.i.not
  br i1 %or.cond, label %do.end95.if.end102_crit_edge, label %if.then100

do.end95.if.end102_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then100:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #14
  %129 = ptrtoint ptr %shadowp to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call96, ptr %shadowp, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %do.end95.if.end102_crit_edge
  %130 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %entry.coerce.fca.0.extract, ptr %private1.i, align 4
  %call104 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef %page) #12
  %131 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %7, align 4
  %133 = ptrtoint ptr %132 to i32
  %and.i.i282 = and i32 %133, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i282)
  %tobool.not.i.i283 = icmp ne i32 %and.i.i282, 0
  %tobool1.not.i.i = icmp eq ptr %132, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i283
  br i1 %spec.select.i.i, label %if.end102.if.then.i285_crit_edge, label %lor.lhs.false.i, !prof !128

if.end102.if.then.i285_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i285

lor.lhs.false.i:                                  ; preds = %if.end102
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %132, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i284 = icmp eq i8 %135, 0
  br i1 %tobool.not.i284, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i285_crit_edge, !prof !130

lor.lhs.false.i.if.then.i285_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i285

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %136 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %137)
  %cmp.i = icmp eq i8 %137, 63
  br i1 %cmp.i, label %lor.rhs.i.if.then.i285_crit_edge, label %if.end.i287, !prof !128

lor.rhs.i.if.then.i285_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i285

if.then.i285:                                     ; preds = %lor.rhs.i.if.then.i285_crit_edge, %lor.lhs.false.i.if.then.i285_crit_edge, %if.end102.if.then.i285_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #12
  br label %xas_next.exit

if.end.i287:                                      ; preds = %lor.rhs.i
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %2, align 4
  %inc.i = add i32 %139, 1
  store i32 %inc.i, ptr %2, align 4
  %inc7.i = add i8 %137, 1
  %140 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %inc7.i, ptr %5, align 2
  %141 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %132, i32 0, i32 7, i32 %conv9.i
  %143 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.2, ptr %142, i32 0, i32 1
  %call.i.i.i286 = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i286)
  %tobool.not.i2.i = icmp eq i32 %call.i.i.i286, 0
  br i1 %tobool.not.i2.i, label %lor.lhs.false.i.i, label %if.end.i287.xas_next.exit_crit_edge

if.end.i287.xas_next.exit_crit_edge:              ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i287
  %call4.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_next.exit_crit_edge

lor.lhs.false.i.i.xas_next.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xas_next.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xas_next.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_next.exit_crit_edge, label %if.then.i.i288

land.lhs.true8.i.i.xas_next.exit_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

if.then.i.i288:                                   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1183, ptr noundef nonnull @.str.27) #12
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %if.then.i.i288, %land.lhs.true8.i.i.xas_next.exit_crit_edge, %land.lhs.true.i.i.xas_next.exit_crit_edge, %lor.lhs.false.i.i.xas_next.exit_crit_edge, %if.end.i287.xas_next.exit_crit_edge, %if.then.i285
  %145 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nrpages, align 4
  %add106 = add i32 %146, 1
  store i32 %add106, ptr %nrpages, align 4
  %147 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %148)
  %cmp.i.not.i.i289 = icmp eq i32 %148, -1
  br i1 %cmp.i.not.i.i289, label %if.then.i.i290, label %page_pgdat.exit, !prof !128

if.then.i.i290:                                   ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !143
  unreachable

page_pgdat.exit:                                  ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef 1) #12
  call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 39, i32 noundef 1) #12
  %149 = load i32, ptr @swap_cache_info.0, align 4
  %add108 = add i32 %149, 1
  store i32 %add108, ptr @swap_cache_info.0, align 4
  br label %unlock

unlock:                                           ; preds = %page_pgdat.exit, %do.body69.unlock_crit_edge
  %150 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %151) #12
  %call113 = call zeroext i1 @xas_nomem(ptr noundef nonnull %xas, i32 noundef %gfp) #12
  br i1 %call113, label %unlock.do.body69_crit_edge, label %do.end114

unlock.do.body69_crit_edge:                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

do.end114:                                        ; preds = %unlock
  %152 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %7, align 4
  %154 = ptrtoint ptr %153 to i32
  %and.i.i.i.i292 = and i32 %154, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i292)
  %cmp.i.i.i.i293 = icmp ne i32 %and.i.i.i.i292, 2
  %cmp.i.i.i294 = icmp ult ptr %153, inttoptr (i32 -16378 to ptr)
  %tobool116.not312 = icmp ult ptr %153, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i.i295 = or i1 %cmp.i.i.i294, %cmp.i.i.i.i293
  %tobool116.not = or i1 %tobool116.not312, %not.spec.select.i.i.i295
  br i1 %tobool116.not, label %do.end114.cleanup_crit_edge, label %if.end118

do.end114.cleanup_crit_edge:                      ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end118:                                        ; preds = %do.end114
  %155 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %59, align 4
  %and.i.i206 = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i206)
  %tobool.not.i207 = icmp eq i32 %and.i.i206, 0
  br i1 %tobool.not.i207, label %do.body7.i211, label %if.then.i208, !prof !130

if.then.i208:                                     ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #12, !srcloc !144
  unreachable

do.body7.i211:                                    ; preds = %if.end118
  %157 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %59, align 4
  %and.i31.i209 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i209)
  %tobool.not.i.i210 = icmp eq i32 %and.i31.i209, 0
  br i1 %tobool.not.i.i210, label %if.end.i.i214, label %if.then.i.i213, !prof !130

if.then.i.i213:                                   ; preds = %do.body7.i211
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i212 = add i32 %158, -1
  br label %_compound_head.exit.i219

if.end.i.i214:                                    ; preds = %do.body7.i211
  call void @__sanitizer_cov_trace_pc() #14
  %159 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i219

_compound_head.exit.i219:                         ; preds = %if.end.i.i214, %if.then.i.i213
  %retval.0.i.i215 = phi i32 [ %sub.i.i212, %if.then.i.i213 ], [ %159, %if.end.i.i214 ]
  %160 = inttoptr i32 %retval.0.i.i215 to ptr
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp.i.not.i216 = icmp eq i32 %162, -1
  %163 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %59, align 4
  %and.i32.i217 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i217)
  %tobool.not.i33.i218 = icmp eq i32 %and.i32.i217, 0
  br i1 %cmp.i.not.i216, label %if.then17.i220, label %do.end24.i226, !prof !128

if.then17.i220:                                   ; preds = %_compound_head.exit.i219
  br i1 %tobool.not.i33.i218, label %if.end.i36.i223, label %if.then.i35.i222, !prof !130

if.then.i35.i222:                                 ; preds = %if.then17.i220
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i221 = add i32 %164, -1
  br label %_compound_head.exit38.i225

if.end.i36.i223:                                  ; preds = %if.then17.i220
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i225

_compound_head.exit38.i225:                       ; preds = %if.end.i36.i223, %if.then.i35.i222
  %retval.0.i37.i224 = phi i32 [ %sub.i34.i221, %if.then.i35.i222 ], [ %165, %if.end.i36.i223 ]
  %166 = inttoptr i32 %retval.0.i37.i224 to ptr
  call void @dump_page(ptr noundef %166, ptr noundef nonnull @.str.23) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #12, !srcloc !145
  unreachable

do.end24.i226:                                    ; preds = %_compound_head.exit.i219
  br i1 %tobool.not.i33.i218, label %if.end.i43.i229, label %if.then.i42.i228, !prof !130

if.then.i42.i228:                                 ; preds = %do.end24.i226
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i227 = add i32 %164, -1
  br label %ClearPageSwapCache.exit

if.end.i43.i229:                                  ; preds = %do.end24.i226
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %page to i32
  br label %ClearPageSwapCache.exit

ClearPageSwapCache.exit:                          ; preds = %if.end.i43.i229, %if.then.i42.i228
  %retval.0.i44.i230 = phi i32 [ %sub.i41.i227, %if.then.i42.i228 ], [ %167, %if.end.i43.i229 ]
  %168 = inttoptr i32 %retval.0.i44.i230 to ptr
  call void @_clear_bit(i32 noundef 10, ptr noundef %168) #12
  %call.i.i.i299 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #12
  %169 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #12, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@add_to_swap_cache, %if.then.i300)) #12
          to label %page_ref_sub.exit [label %if.then.i300], !srcloc !139

if.then.i300:                                     ; preds = %ClearPageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %page, i32 noundef -1) #12
  br label %page_ref_sub.exit

page_ref_sub.exit:                                ; preds = %if.then.i300, %ClearPageSwapCache.exit
  %170 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %7, align 4
  %172 = ptrtoint ptr %171 to i32
  %and.i.i.i.i303 = and i32 %172, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i.i303)
  %cmp.i.i.i.i304 = icmp eq i32 %and.i.i.i.i303, 2
  %cmp.i.i.i305 = icmp uge ptr %171, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i.i306 = and i1 %cmp.i.i.i305, %cmp.i.i.i.i304
  %shr.i.i307 = ashr i32 %172, 2
  %retval.0.i.i308 = select i1 %spec.select.i.i.i306, i32 %shr.i.i307, i32 0
  br label %cleanup

cleanup:                                          ; preds = %page_ref_sub.exit, %do.end114.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i308, %page_ref_sub.exit ], [ 0, %do.end114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_create_range(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__delete_from_swap_cache(ptr noundef %page, [1 x i32] %entry.coerce, ptr noundef %shadow) local_unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %shr.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %shr = lshr i32 %and.i, 14
  %2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i150 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool.not.i151 = icmp eq i32 %and.i.i150, 0
  br i1 %tobool.not.i151, label %thp_nr_pages.exit, label %if.then.i152, !prof !130

if.then.i152:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #12
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %9 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %10 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr %struct.address_space, ptr %1, i32 %shr, i32 1
  %11 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i_pages, ptr %xas, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %5, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %6, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 3 to ptr), ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %10, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, -1
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %2, align 4
  %and.i16.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !128

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !130

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %24, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %25, %if.end.i20.i ]
  %26 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !132
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !130

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %24, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %27, %if.end.i27.i ]
  %28 = inttoptr i32 %retval.0.i28.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and1.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body20, !prof !128

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !147
  unreachable

do.body20:                                        ; preds = %PageLocked.exit
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %2, align 4
  %and.i.i111 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %and.i.i111, 0
  br i1 %tobool.not.i.i112, label %if.end.i.i115, label %if.then.i.i114, !prof !130

if.then.i.i114:                                   ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i113 = add i32 %32, -1
  br label %_compound_head.exit.i117

if.end.i.i115:                                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i117

_compound_head.exit.i117:                         ; preds = %if.end.i.i115, %if.then.i.i114
  %retval.0.i.i116 = phi i32 [ %sub.i.i113, %if.then.i.i114 ], [ %33, %if.end.i.i115 ]
  %34 = inttoptr i32 %retval.0.i.i116 to ptr
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !130

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i117
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i117
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.then30_crit_edge, label %land.rhs.i.i, !prof !148

folio_test_swapbacked.exit.i.i.if.then30_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %35, align 4
  %and.i.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !130

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %34, align 4
  %45 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.i.not = icmp eq i32 %45, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.if.then30_crit_edge, label %do.body40, !prof !128

PageSwapCache.exit.if.then30_crit_edge:           ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then30

if.then30:                                        ; preds = %PageSwapCache.exit.if.then30_crit_edge, %folio_test_swapbacked.exit.i.i.if.then30_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #12, !srcloc !149
  unreachable

do.body40:                                        ; preds = %PageSwapCache.exit
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %2, align 4
  %and.i.i118 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool.not.i.i119 = icmp eq i32 %and.i.i118, 0
  br i1 %tobool.not.i.i119, label %if.end.i.i122, label %if.then.i.i121, !prof !130

if.then.i.i121:                                   ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i120 = add i32 %47, -1
  br label %_compound_head.exit.i127

if.end.i.i122:                                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i127

_compound_head.exit.i127:                         ; preds = %if.end.i.i122, %if.then.i.i121
  %retval.0.i.i123 = phi i32 [ %sub.i.i120, %if.then.i.i121 ], [ %48, %if.end.i.i122 ]
  %49 = inttoptr i32 %retval.0.i.i123 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i.not.i124 = icmp eq i32 %51, -1
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %2, align 4
  %and.i16.i125 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i125)
  %tobool.not.i17.i126 = icmp eq i32 %and.i16.i125, 0
  br i1 %cmp.i.not.i124, label %if.then.i128, label %do.end10.i134, !prof !128

if.then.i128:                                     ; preds = %_compound_head.exit.i127
  br i1 %tobool.not.i17.i126, label %if.end.i20.i131, label %if.then.i19.i130, !prof !130

if.then.i19.i130:                                 ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i129 = add i32 %53, -1
  br label %_compound_head.exit22.i133

if.end.i20.i131:                                  ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i133

_compound_head.exit22.i133:                       ; preds = %if.end.i20.i131, %if.then.i19.i130
  %retval.0.i21.i132 = phi i32 [ %sub.i18.i129, %if.then.i19.i130 ], [ %54, %if.end.i20.i131 ]
  %55 = inttoptr i32 %retval.0.i21.i132 to ptr
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #12, !srcloc !150
  unreachable

do.end10.i134:                                    ; preds = %_compound_head.exit.i127
  br i1 %tobool.not.i17.i126, label %if.end.i27.i137, label %if.then.i26.i136, !prof !130

if.then.i26.i136:                                 ; preds = %do.end10.i134
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i135 = add i32 %53, -1
  br label %PageWriteback.exit

if.end.i27.i137:                                  ; preds = %do.end10.i134
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i137, %if.then.i26.i136
  %retval.0.i28.i138 = phi i32 [ %sub.i25.i135, %if.then.i26.i136 ], [ %56, %if.end.i27.i137 ]
  %57 = inttoptr i32 %retval.0.i28.i138 to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %57, align 4
  %60 = and i32 %59, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool42.not = icmp eq i32 %60, 0
  br i1 %tobool42.not, label %for.body, label %if.then49, !prof !130

if.then49:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.17) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 162, 0\0A.popsection", ""() #12, !srcloc !151
  unreachable

for.body:                                         ; preds = %PageWriteback.exit
  %call60 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef %shadow) #12
  %cmp62.not = icmp eq ptr %call60, %page
  br i1 %cmp62.not, label %do.end78, label %if.then69, !prof !130

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %call60, ptr noundef nonnull @.str.18) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 166, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

do.end78:                                         ; preds = %for.body
  %private1.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %61 = ptrtoint ptr %private1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %private1.i, align 4
  %62 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %8, align 4
  %64 = ptrtoint ptr %63 to i32
  %and.i.i155 = and i32 %64, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.not.i.i156 = icmp ne i32 %and.i.i155, 0
  %tobool1.not.i.i = icmp eq ptr %63, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i156
  br i1 %spec.select.i.i, label %do.end78.if.then.i158_crit_edge, label %lor.lhs.false.i, !prof !128

do.end78.if.then.i158_crit_edge:                  ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i158

lor.lhs.false.i:                                  ; preds = %do.end78
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i157 = icmp eq i8 %66, 0
  br i1 %tobool.not.i157, label %lor.rhs.i, label %lor.lhs.false.i.if.then.i158_crit_edge, !prof !130

lor.lhs.false.i.if.then.i158_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i158

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %67 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %68)
  %cmp.i = icmp eq i8 %68, 63
  br i1 %cmp.i, label %lor.rhs.i.if.then.i158_crit_edge, label %if.end.i, !prof !128

lor.rhs.i.if.then.i158_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i158

if.then.i158:                                     ; preds = %lor.rhs.i.if.then.i158_crit_edge, %lor.lhs.false.i.if.then.i158_crit_edge, %do.end78.if.then.i158_crit_edge
  %call5.i = call ptr @__xas_next(ptr noundef nonnull %xas) #12
  br label %xas_next.exit

if.end.i:                                         ; preds = %lor.rhs.i
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %5, align 4
  %inc.i = add i32 %70, 1
  store i32 %inc.i, ptr %5, align 4
  %inc7.i = add i8 %68, 1
  %71 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %inc7.i, ptr %7, align 2
  %72 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xas, align 4
  %conv9.i = zext i8 %inc7.i to i32
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %63, i32 0, i32 7, i32 %conv9.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.2, ptr %73, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i2.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i2.i, label %lor.lhs.false.i.i, label %if.end.i.xas_next.exit_crit_edge

if.end.i.xas_next.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call4.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xas_next.exit_crit_edge

lor.lhs.false.i.i.xas_next.exit_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xas_next.exit_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xas_next.exit_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xas_next.exit_crit_edge, label %if.then.i.i159

land.lhs.true8.i.i.xas_next.exit_crit_edge:       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next.exit

if.then.i.i159:                                   ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1183, ptr noundef nonnull @.str.27) #12
  br label %xas_next.exit

xas_next.exit:                                    ; preds = %if.then.i.i159, %land.lhs.true8.i.i.xas_next.exit_crit_edge, %land.lhs.true.i.i.xas_next.exit_crit_edge, %lor.lhs.false.i.i.xas_next.exit_crit_edge, %if.end.i.xas_next.exit_crit_edge, %if.then.i158
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %2, align 4
  %and.i.i140 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool.not.i = icmp eq i32 %and.i.i140, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i141, !prof !130

if.then.i141:                                     ; preds = %xas_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.25) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #12, !srcloc !144
  unreachable

do.body7.i:                                       ; preds = %xas_next.exit
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %2, align 4
  %and.i31.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i142 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i142, label %if.end.i.i145, label %if.then.i.i144, !prof !130

if.then.i.i144:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i143 = add i32 %79, -1
  br label %_compound_head.exit.i148

if.end.i.i145:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i148

_compound_head.exit.i148:                         ; preds = %if.end.i.i145, %if.then.i.i144
  %retval.0.i.i146 = phi i32 [ %sub.i.i143, %if.then.i.i144 ], [ %80, %if.end.i.i145 ]
  %81 = inttoptr i32 %retval.0.i.i146 to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %83)
  %cmp.i.not.i147 = icmp eq i32 %83, -1
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %2, align 4
  %and.i32.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i147, label %if.then17.i, label %do.end24.i, !prof !128

if.then17.i:                                      ; preds = %_compound_head.exit.i148
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !130

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %85, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %86, %if.end.i36.i ]
  %87 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.23) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #12, !srcloc !145
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i148
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !130

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %85, -1
  br label %ClearPageSwapCache.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %page to i32
  br label %ClearPageSwapCache.exit

ClearPageSwapCache.exit:                          ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %88, %if.end.i43.i ]
  %89 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_clear_bit(i32 noundef 10, ptr noundef %89) #12
  %nrpages = getelementptr %struct.address_space, ptr %1, i32 %shr, i32 7
  %90 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nrpages, align 4
  %sub = add i32 %91, -1
  store i32 %sub, ptr %nrpages, align 4
  %92 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp.i.not.i.i = icmp eq i32 %93, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i160, label %page_pgdat.exit, !prof !128

if.then.i.i160:                                   ; preds = %ClearPageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.28) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !143
  unreachable

page_pgdat.exit:                                  ; preds = %ClearPageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef -1) #12
  call void @__mod_lruvec_page_state(ptr noundef %page, i32 noundef 39, i32 noundef -1) #12
  %94 = load i32, ptr @swap_cache_info.1, align 4
  %add = add i32 %94, 1
  store i32 %add, ptr @swap_cache_info.1, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_to_swap(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !128

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !130

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !132
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !130

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %do.body11, !prof !128

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #12, !srcloc !153
  unreachable

do.body11:                                        ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %0, align 4
  %and.i.i56 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %and.i.i56, 0
  br i1 %tobool.not.i.i57, label %if.end.i.i60, label %if.then.i.i59, !prof !130

if.then.i.i59:                                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i58 = add i32 %16, -1
  br label %_compound_head.exit.i62

if.end.i.i60:                                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i62

_compound_head.exit.i62:                          ; preds = %if.end.i.i60, %if.then.i.i59
  %retval.0.i.i61 = phi i32 [ %sub.i.i58, %if.then.i.i59 ], [ %17, %if.end.i.i60 ]
  %18 = inttoptr i32 %retval.0.i.i61 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !130

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i62
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i62
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i, label %if.then22, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !154
  %call32 = tail call i32 @get_swap_page(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %PageUptodate.exit.cleanup_crit_edge, label %if.end35

PageUptodate.exit.cleanup_crit_edge:              ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then22:                                        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/swap_state.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #12, !srcloc !155
  unreachable

if.end35:                                         ; preds = %PageUptodate.exit
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %call32, 0
  %call37 = tail call i32 @add_to_swap_cache(ptr noundef %page, [1 x i32] %.fca.0.insert, i32 noundef 532512, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %fail

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %call41 = tail call zeroext i1 @set_page_dirty(ptr noundef %page) #12
  br label %cleanup

fail:                                             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_swap_page(ptr noundef %page, [1 x i32] %.fca.0.insert) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end40, %PageUptodate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fail ], [ 1, %if.end40 ], [ 0, %PageUptodate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_swap_page(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delete_from_swap_cache(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %1, 0
  %shr.i = lshr i32 %1, 26
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %and.i = lshr i32 %1, 14
  %shr = and i32 %and.i, 4095
  %i_pages = getelementptr %struct.address_space, ptr %3, i32 %shr, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #12
  tail call void @__delete_from_swap_cache(ptr noundef %page, [1 x i32] %.fca.0.insert, ptr noundef null)
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #12
  tail call void @put_swap_page(ptr noundef %page, [1 x i32] %.fca.0.insert) #12
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %thp_nr_pages.exit, label %if.then.i, !prof !130

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

thp_nr_pages.exit:                                ; preds = %entry
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 1, ptr elementtype(i32) %_refcount.i) #12, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@delete_from_swap_cache, %if.then.i27)) #12
          to label %page_ref_sub.exit [label %if.then.i27], !srcloc !139

if.then.i27:                                      ; preds = %thp_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %page, i32 noundef -1) #12
  br label %page_ref_sub.exit

page_ref_sub.exit:                                ; preds = %if.then.i27, %thp_nr_pages.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_shadow_from_swap_cache(i32 noundef %type, i32 noundef %begin, i32 noundef %end) local_unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %shr.i = and i32 %type, 63
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %entry
  %curr.0 = phi i32 [ %begin, %entry ], [ %shl, %for.end.for.cond_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %and.i = lshr i32 %curr.0, 14
  %shr = and i32 %and.i, 4095
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #12
  %i_pages = getelementptr %struct.address_space, ptr %7, i32 %shr, i32 1
  %8 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i_pages, ptr %xas, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %curr.0, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %1, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %5, align 4
  call void @_raw_spin_lock_irq(ptr noundef %i_pages) #12
  %call8 = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %end) #12
  %tobool.not38 = icmp eq ptr %call8, null
  br i1 %tobool.not38, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %xas_next_entry.exit.for.body_crit_edge, %for.cond.for.body_crit_edge
  %old.039 = phi ptr [ %retval.0.i, %xas_next_entry.exit.for.body_crit_edge ], [ %call8, %for.cond.for.body_crit_edge ]
  %14 = ptrtoint ptr %old.039 to i32
  %and.i36 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.i.not = icmp eq i32 %and.i36, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef null) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  %tobool1.not.i.i = icmp eq ptr %16, null
  %spec.select.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %spec.select.i.i, label %for.inc.cleanup.sink.split.i_crit_edge, label %lor.lhs.false.i, !prof !128

for.inc.cleanup.sink.split.i_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

lor.lhs.false.i:                                  ; preds = %for.inc
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, !prof !130

lor.lhs.false.i.cleanup.sink.split.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %2, align 2
  %conv2.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %0, align 4
  %and.i37 = and i32 %23, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i37, i32 %conv2.i)
  %cmp.not.i = icmp eq i32 %and.i37, %conv2.i
  br i1 %cmp.not.i, label %lor.rhs.i.do.body.i_crit_edge, label %lor.rhs.i.cleanup.sink.split.i_crit_edge, !prof !130

lor.rhs.i.cleanup.sink.split.i_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end44.i.do.body.i_crit_edge, %lor.rhs.i.do.body.i_crit_edge
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %end)
  %cmp8.not.i = icmp ult i32 %25, %end
  br i1 %cmp8.not.i, label %if.end18.i, label %do.body.i.cleanup.sink.split.i_crit_edge, !prof !130

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end18.i:                                       ; preds = %do.body.i
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %27)
  %cmp21.i = icmp eq i8 %27, 63
  br i1 %cmp21.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %if.end31.i, !prof !128

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end31.i:                                       ; preds = %if.end18.i
  %conv20.i = zext i8 %27 to i32
  %28 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xas, align 4
  %add.i = add nuw nsw i32 %conv20.i, 1
  %arrayidx.i.i = getelementptr %struct.xa_node, ptr %16, i32 0, i32 7, i32 %add.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.2, ptr %29, i32 0, i32 1
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i73.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i73.i, label %lor.lhs.false.i.i, label %if.end31.i.xa_entry.exit.i_crit_edge

if.end31.i.xa_entry.exit.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end31.i
  %call4.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge

lor.lhs.false.i.i.xa_entry.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.xa_entry.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b13.i.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i.i, label %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, label %if.then.i.i

land.lhs.true8.i.i.xa_entry.exit.i_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xa_entry.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @xa_entry.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 1183, ptr noundef nonnull @.str.27) #12
  br label %xa_entry.exit.i

xa_entry.exit.i:                                  ; preds = %if.then.i.i, %land.lhs.true8.i.i.xa_entry.exit.i_crit_edge, %land.lhs.true.i.i.xa_entry.exit.i_crit_edge, %lor.lhs.false.i.i.xa_entry.exit.i_crit_edge, %if.end31.i.xa_entry.exit.i_crit_edge
  %32 = ptrtoint ptr %31 to i32
  %and.i74.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74.i)
  %cmp.i.i = icmp eq i32 %and.i74.i, 2
  br i1 %cmp.i.i, label %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, label %if.end44.i, !prof !128

xa_entry.exit.i.cleanup.sink.split.i_crit_edge:   ; preds = %xa_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end44.i:                                       ; preds = %xa_entry.exit.i
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 2
  %inc.i = add i8 %34, 1
  store i8 %inc.i, ptr %2, align 2
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  %inc47.i = add i32 %36, 1
  store i32 %inc47.i, ptr %0, align 4
  %tobool48.not.i = icmp eq ptr %31, null
  br i1 %tobool48.not.i, label %if.end44.i.do.body.i_crit_edge, label %if.end44.i.xas_next_entry.exit_crit_edge

if.end44.i.xas_next_entry.exit_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %xas_next_entry.exit

if.end44.i.do.body.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

cleanup.sink.split.i:                             ; preds = %xa_entry.exit.i.cleanup.sink.split.i_crit_edge, %if.end18.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge, %lor.rhs.i.cleanup.sink.split.i_crit_edge, %lor.lhs.false.i.cleanup.sink.split.i_crit_edge, %for.inc.cleanup.sink.split.i_crit_edge
  %call43.i = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %end) #12
  br label %xas_next_entry.exit

xas_next_entry.exit:                              ; preds = %cleanup.sink.split.i, %if.end44.i.xas_next_entry.exit_crit_edge
  %retval.0.i = phi ptr [ %call43.i, %cleanup.sink.split.i ], [ %31, %if.end44.i.xas_next_entry.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %xas_next_entry.exit.for.end_crit_edge, label %xas_next_entry.exit.for.body_crit_edge

xas_next_entry.exit.for.body_crit_edge:           ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

xas_next_entry.exit.for.end_crit_edge:            ; preds = %xas_next_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %xas_next_entry.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #12
  %37 = add i32 %curr.0, 16384
  %shl = and i32 %37, -16384
  %cmp = icmp ugt i32 %shl, %end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #12
  br i1 %cmp, label %for.end20, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_swap_cache(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !130

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end_crit_edge:  ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %5, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !130

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.if.end_crit_edge, label %land.lhs.true

PageSwapCache.exit.if.end_crit_edge:              ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %PageSwapCache.exit
  %call1 = tail call zeroext i1 @page_mapped(ptr noundef %page) #12
  br i1 %call1, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %0, align 4
  %and.i.i9 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i13, label %if.then.i.i12, !prof !130

if.then.i.i12:                                    ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i11 = add i32 %17, -1
  br label %_compound_head.exit.i17

if.end.i.i13:                                     ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i17

_compound_head.exit.i17:                          ; preds = %if.end.i.i13, %if.then.i.i12
  %retval.0.i.i14 = phi i32 [ %sub.i.i11, %if.then.i.i12 ], [ %18, %if.end.i.i13 ]
  %19 = inttoptr i32 %retval.0.i.i14 to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i15 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i15)
  %tobool.not.i.i.i16 = icmp eq i32 %and.i.i.i.i15, 0
  br i1 %tobool.not.i.i.i16, label %folio_flags.exit.i.i20, label %if.then.i.i.i18, !prof !130

if.then.i.i.i18:                                  ; preds = %_compound_head.exit.i17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !134
  unreachable

folio_flags.exit.i.i20:                           ; preds = %_compound_head.exit.i17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #12
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %19, align 4
  %and.i.i4.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i19 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i19, label %trylock_page.exit, label %folio_flags.exit.i.i20.if.end_crit_edge

folio_flags.exit.i.i20.if.end_crit_edge:          ; preds = %folio_flags.exit.i.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i20
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #12, !srcloc !156
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !157
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.not.not, label %if.then, label %trylock_page.exit.if.end_crit_edge

trylock_page.exit.if.end_crit_edge:               ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @try_to_free_swap(ptr noundef %page) #12
  tail call void @unlock_page(ptr noundef %page) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %trylock_page.exit.if.end_crit_edge, %folio_flags.exit.i.i20.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %PageSwapCache.exit.if.end_crit_edge, %folio_test_swapbacked.exit.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_swap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_page_and_swap_cache(ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @free_swap_cache(ptr noundef %page)
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !128

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.29) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !158
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@free_page_and_swap_cache, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !139

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %4) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_pages_and_swap_cache(ptr noundef %pages, i32 noundef %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @lru_add_drain() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp5 = icmp sgt i32 %nr, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @free_swap_cache(ptr noundef %1)
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %nr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @release_pages(ptr noundef %pages, i32 noundef %nr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_swap_cache([1 x i32] %entry.coerce, ptr noundef %vma, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_swap_device([1 x i32] %entry.coerce) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.end:                                           ; preds = %entry
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %shr.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %shr = lshr i32 %and.i, 14
  %arrayidx8 = getelementptr %struct.address_space, ptr %1, i32 %shr
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %arrayidx8, i32 noundef %and.i, i32 noundef 0, i32 noundef 0) #12
  tail call fastcc void @put_swap_device(ptr noundef nonnull %call)
  %2 = load i32, ptr @swap_cache_info.3, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @swap_cache_info.3, align 4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end.cleanup59_crit_edge, label %if.then14

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.then14:                                        ; preds = %if.end
  %3 = load volatile i8, ptr @enable_vma_readahead, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i95 = icmp eq i8 %3, 0
  br i1 %tobool.not.i95, label %if.then14.swap_use_vma_readahead.exit_crit_edge, label %land.rhs.i

if.then14.swap_use_vma_readahead.exit_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %swap_use_vma_readahead.exit

land.rhs.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_rotate_swap, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_rotate_swap to i32))
  %4 = load volatile i32, ptr @nr_rotate_swap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.i = icmp ne i32 %4, 0
  br label %swap_use_vma_readahead.exit

swap_use_vma_readahead.exit:                      ; preds = %land.rhs.i, %if.then14.swap_use_vma_readahead.exit_crit_edge
  %5 = phi i1 [ true, %if.then14.swap_use_vma_readahead.exit_crit_edge ], [ %tobool2.not.i, %land.rhs.i ]
  %6 = load i32, ptr @swap_cache_info.2, align 4
  %inc18 = add i32 %6, 1
  store i32 %inc18, ptr @swap_cache_info.2, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %call.i, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %swap_use_vma_readahead.exit.if.then.i_crit_edge

swap_use_vma_readahead.exit.if.then.i_crit_edge:  ; preds = %swap_use_vma_readahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %swap_use_vma_readahead.exit
  %10 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !130

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %swap_use_vma_readahead.exit.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.33) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 469, 0\0A.popsection", ""() #12, !srcloc !163
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %TestClearPageReadahead.exit, !prof !128

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.21) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 469, 0\0A.popsection", ""() #12, !srcloc !164
  unreachable

TestClearPageReadahead.exit:                      ; preds = %do.body7.i
  %call24.i = tail call i32 @_test_and_clear_bit(i32 noundef 18, ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool27.not = icmp eq i32 %call24.i, 0
  %tobool29.not = icmp eq ptr %vma, null
  %brmerge = select i1 %tobool29.not, i1 true, i1 %5
  br i1 %brmerge, label %TestClearPageReadahead.exit.if.end49_crit_edge, label %if.then31

TestClearPageReadahead.exit.if.end49_crit_edge:   ; preds = %TestClearPageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then31:                                        ; preds = %TestClearPageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  %swap_readahead_info = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %swap_readahead_info, i32 noundef 4) #12
  %15 = ptrtoint ptr %swap_readahead_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %swap_readahead_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool33.not = icmp eq i32 %16, 0
  %call32. = select i1 %tobool33.not, i32 4, i32 %16
  %shr34 = and i32 %call32., 4032
  %and35 = and i32 %call32., 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %and35)
  %cmp = icmp ult i32 %and35, 62
  %add = add nuw nsw i32 %and35, 1
  %cond42 = select i1 %cmp, i32 %add, i32 63
  %hits.0 = select i1 %tobool27.not, i32 %and35, i32 %cond42
  %and45 = and i32 %addr, -4096
  %or = or i32 %shr34, %and45
  %or48 = or i32 %or, %hits.0
  %call.i.i90 = tail call zeroext i1 @__kasan_check_write(ptr noundef %swap_readahead_info, i32 noundef 4) #12
  %17 = ptrtoint ptr %swap_readahead_info to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %or48, ptr %swap_readahead_info, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then31, %TestClearPageReadahead.exit.if.end49_crit_edge
  br i1 %tobool27.not, label %if.end49.cleanup59_crit_edge, label %if.then51

if.end49.cleanup59_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.then51:                                        ; preds = %if.end49
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !165
  %19 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %24, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 75) to i32)
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add14.i = add i32 %27, 1
  store i32 %add14.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !166
  %and.i.i.i96 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i96)
  %tobool.not.i97 = icmp eq i32 %and.i.i.i96, 0
  br i1 %tobool.not.i97, label %if.then.i98, label %if.then51.count_vm_event.exit_crit_edge, !prof !128

if.then51.count_vm_event.exit_crit_edge:          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_event.exit

if.then.i98:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i98, %if.then51.count_vm_event.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #12, !srcloc !167
  br i1 %brmerge, label %if.then54, label %count_vm_event.exit.cleanup59_crit_edge

count_vm_event.exit.cleanup59_crit_edge:          ; preds = %count_vm_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup59

if.then54:                                        ; preds = %count_vm_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @swapin_readahead_hits, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull @swapin_readahead_hits, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @swapin_readahead_hits, ptr nonnull @swapin_readahead_hits, i32 1, ptr nonnull elementtype(i32) @swapin_readahead_hits) #12, !srcloc !138
  br label %cleanup59

cleanup59:                                        ; preds = %if.then54, %count_vm_event.exit.cleanup59_crit_edge, %if.end49.cleanup59_crit_edge, %if.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi ptr [ null, %entry.cleanup59_crit_edge ], [ %call.i, %count_vm_event.exit.cleanup59_crit_edge ], [ %call.i, %if.then54 ], [ %call.i, %if.end49.cleanup59_crit_edge ], [ null, %if.end.cleanup59_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_swap_device([1 x i32]) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_swap_device(ptr noundef %si) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 696, ptr noundef nonnull @.str.31) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %si to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %si, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !130

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !165
  %7 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !166
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !128

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !167
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.percpu_ref, ptr %si, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #12, !srcloc !160
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !128

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %si) #12
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 724, ptr noundef nonnull @.str.32) #12
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !169
  %24 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_get_incore_page(ptr noundef %mapping, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef 384, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 4
  %and.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then2.cleanup_crit_edge, label %if.then.i.i, !prof !130

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call, ptr noundef nonnull @.str.22) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !131
  unreachable

if.end4:                                          ; preds = %if.end
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %4 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %5, @shmem_aops
  br i1 %cmp.i, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %shr.i.i = lshr i32 %0, 1
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %shr.i.i, 0
  %call10 = tail call ptr @get_swap_device([1 x i32] %.fca.0.insert) #12
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %0, 27
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %and.i44 = and i32 %shr.i.i, 67108863
  %shr = lshr i32 %and.i44, 14
  %arrayidx18 = getelementptr %struct.address_space, ptr %7, i32 %shr
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %arrayidx18, i32 noundef %and.i44, i32 noundef 0, i32 noundef 0) #12
  tail call fastcc void @put_swap_device(ptr noundef nonnull %call10)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end13 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__read_swap_cache_async([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr nocapture readnone %vma, i32 %addr, ptr nocapture noundef writeonly %new_page_allocated) local_unnamed_addr #0 align 64 {
entry:
  %shadow = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shadow) #12
  %0 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %shadow, align 4
  %1 = ptrtoint ptr %new_page_allocated to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %new_page_allocated, align 1
  %call175 = tail call ptr @get_swap_device([1 x i32] %entry.coerce) #12
  %tobool.not176 = icmp eq ptr %call175, null
  br i1 %tobool.not176, label %entry.cleanup49_crit_edge, label %if.end.lr.ph

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end.lr.ph:                                     ; preds = %entry
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %shr.i = lshr i32 %entry.coerce.fca.0.extract.i, 26
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %shr.i
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %shr = lshr i32 %and.i, 14
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %call177 = phi ptr [ %call175, %if.end.lr.ph ], [ %call, %cleanup.if.end_crit_edge ]
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr %struct.address_space, ptr %3, i32 %shr
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %arrayidx8, i32 noundef %and.i, i32 noundef 0, i32 noundef 0) #12
  tail call fastcc void @put_swap_device(ptr noundef nonnull %call177)
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup49_crit_edge

if.end.cleanup49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end14:                                         ; preds = %if.end
  %call16 = tail call i32 @__swp_swapcount([1 x i32] %entry.coerce) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.end14.if.end20_crit_edge

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end14
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @swap_slot_cache_enabled to i32))
  %4 = load i8, ptr @swap_slot_cache_enabled, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool18.not = icmp eq i8 %4, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup49_crit_edge

land.lhs.true.cleanup49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end14.if.end20_crit_edge
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #12
  %tobool22.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool22.not, label %if.end20.cleanup49_crit_edge, label %if.end24

if.end20.cleanup49_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.end24:                                         ; preds = %if.end20
  %call26 = tail call i32 @swapcache_prepare([1 x i32] %entry.coerce) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %5 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool27.not, label %for.end, label %if.end29

if.end29:                                         ; preds = %if.end24
  br i1 %tobool.not.i, label %if.end.i.i139, label %if.then.i.i138, !prof !130

if.then.i.i138:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i137 = add i32 %7, -1
  br label %_compound_head.exit.i141

if.end.i.i139:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i141

_compound_head.exit.i141:                         ; preds = %if.end.i.i139, %if.then.i.i138
  %retval.0.i.i140 = phi i32 [ %sub.i.i137, %if.then.i.i138 ], [ %8, %if.end.i.i139 ]
  %9 = inttoptr i32 %retval.0.i.i140 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %10 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !128

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i141
  call void @__sanitizer_cov_trace_pc() #14
  %12 = inttoptr i32 %retval.0.i.i140 to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.29) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !158
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i141
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__read_swap_cache_async, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !139

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %9, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %9) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call26)
  %cmp.not = icmp eq i32 %call26, -17
  br i1 %cmp.not, label %cleanup, label %put_page.exit.cleanup49_crit_edge

put_page.exit.cleanup49_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

cleanup:                                          ; preds = %put_page.exit
  %call32 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  %call = tail call ptr @get_swap_device([1 x i32] %entry.coerce) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup.cleanup49_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

for.end:                                          ; preds = %if.end24
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !130

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.25) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

do.body7.i:                                       ; preds = %for.end
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %5, align 4
  %and.i31.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %5, align 4
  %and.i32.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !128

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !130

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %21, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %22, %if.end.i36.i ]
  %23 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !171
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !130

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %21, -1
  br label %__SetPageLocked.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %call38.i.i.i to i32
  br label %__SetPageLocked.exit

__SetPageLocked.exit:                             ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %24, %if.end.i43.i ]
  %25 = inttoptr i32 %retval.0.i44.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %or.i.i = or i32 %27, 1
  store i32 %or.i.i, ptr %25, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %5, align 4
  %and.i.i106 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i106)
  %tobool.not.i107 = icmp eq i32 %and.i.i106, 0
  br i1 %tobool.not.i107, label %do.body7.i111, label %if.then.i108, !prof !130

if.then.i108:                                     ; preds = %__SetPageLocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef nonnull %call38.i.i.i, ptr noundef nonnull @.str.25) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #12, !srcloc !172
  unreachable

do.body7.i111:                                    ; preds = %__SetPageLocked.exit
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %5, align 4
  %and.i31.i109 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i109)
  %tobool.not.i.i110 = icmp eq i32 %and.i31.i109, 0
  br i1 %tobool.not.i.i110, label %if.end.i.i114, label %if.then.i.i113, !prof !130

if.then.i.i113:                                   ; preds = %do.body7.i111
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i112 = add i32 %31, -1
  br label %_compound_head.exit.i119

if.end.i.i114:                                    ; preds = %do.body7.i111
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i119

_compound_head.exit.i119:                         ; preds = %if.end.i.i114, %if.then.i.i113
  %retval.0.i.i115 = phi i32 [ %sub.i.i112, %if.then.i.i113 ], [ %32, %if.end.i.i114 ]
  %33 = inttoptr i32 %retval.0.i.i115 to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i116 = icmp eq i32 %35, -1
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %5, align 4
  %and.i32.i117 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i117)
  %tobool.not.i33.i118 = icmp eq i32 %and.i32.i117, 0
  br i1 %cmp.i.not.i116, label %if.then17.i120, label %do.end24.i126, !prof !128

if.then17.i120:                                   ; preds = %_compound_head.exit.i119
  br i1 %tobool.not.i33.i118, label %if.end.i36.i123, label %if.then.i35.i122, !prof !130

if.then.i35.i122:                                 ; preds = %if.then17.i120
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i121 = add i32 %37, -1
  br label %_compound_head.exit38.i125

if.end.i36.i123:                                  ; preds = %if.then17.i120
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit38.i125

_compound_head.exit38.i125:                       ; preds = %if.end.i36.i123, %if.then.i35.i122
  %retval.0.i37.i124 = phi i32 [ %sub.i34.i121, %if.then.i35.i122 ], [ %38, %if.end.i36.i123 ]
  %39 = inttoptr i32 %retval.0.i37.i124 to ptr
  tail call void @dump_page(ptr noundef %39, ptr noundef nonnull @.str.23) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 445, 0\0A.popsection", ""() #12, !srcloc !173
  unreachable

do.end24.i126:                                    ; preds = %_compound_head.exit.i119
  br i1 %tobool.not.i33.i118, label %if.end.i43.i129, label %if.then.i42.i128, !prof !130

if.then.i42.i128:                                 ; preds = %do.end24.i126
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i127 = add i32 %37, -1
  br label %__SetPageSwapBacked.exit

if.end.i43.i129:                                  ; preds = %do.end24.i126
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call38.i.i.i to i32
  br label %__SetPageSwapBacked.exit

__SetPageSwapBacked.exit:                         ; preds = %if.end.i43.i129, %if.then.i42.i128
  %retval.0.i44.i130 = phi i32 [ %sub.i41.i127, %if.then.i42.i128 ], [ %40, %if.end.i43.i129 ]
  %41 = inttoptr i32 %retval.0.i44.i130 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %or.i.i131 = or i32 %43, 524288
  store i32 %or.i.i131, ptr %41, align 4
  %call34 = tail call i32 @mem_cgroup_swapin_charge_page(ptr noundef nonnull %call38.i.i.i, ptr noundef null, i32 noundef %gfp_mask, [1 x i32] %entry.coerce) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %__SetPageSwapBacked.exit.fail_unlock_crit_edge

__SetPageSwapBacked.exit.fail_unlock_crit_edge:   ; preds = %__SetPageSwapBacked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_unlock

if.end37:                                         ; preds = %__SetPageSwapBacked.exit
  %and = and i32 %gfp_mask, 34336480
  %call39 = call i32 @add_to_swap_cache(ptr noundef nonnull %call38.i.i.i, [1 x i32] %entry.coerce, i32 noundef %and, ptr noundef nonnull %shadow)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.fail_unlock_crit_edge

if.end37.fail_unlock_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_unlock

if.end42:                                         ; preds = %if.end37
  call void @mem_cgroup_swapin_uncharge_swap([1 x i32] %entry.coerce) #12
  %44 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shadow, align 4
  %tobool44.not = icmp eq ptr %45, null
  br i1 %tobool44.not, label %if.end42.if.end47_crit_edge, label %if.then45

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %5, align 4
  %and.i142 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i142)
  %tobool.not.i143 = icmp eq i32 %and.i142, 0
  br i1 %tobool.not.i143, label %if.end.i, label %if.then.i144, !prof !130

if.then.i144:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %47, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i144
  %retval.0.i = phi i32 [ %sub.i, %if.then.i144 ], [ %48, %if.end.i ]
  %49 = inttoptr i32 %retval.0.i to ptr
  call void @workingset_refault(ptr noundef %49, ptr noundef nonnull %45) #12
  br label %if.end47

if.end47:                                         ; preds = %_compound_head.exit, %if.end42.if.end47_crit_edge
  call void @lru_cache_add(ptr noundef nonnull %call38.i.i.i) #12
  %50 = ptrtoint ptr %new_page_allocated to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %new_page_allocated, align 1
  br label %cleanup49

fail_unlock:                                      ; preds = %if.end37.fail_unlock_crit_edge, %__SetPageSwapBacked.exit.fail_unlock_crit_edge
  call void @put_swap_page(ptr noundef nonnull %call38.i.i.i, [1 x i32] %entry.coerce) #12
  call void @unlock_page(ptr noundef nonnull %call38.i.i.i) #12
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %5, align 4
  %and.i.i145 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i145)
  %tobool.not.i.i146 = icmp eq i32 %and.i.i145, 0
  br i1 %tobool.not.i.i146, label %if.end.i.i149, label %if.then.i.i148, !prof !130

if.then.i.i148:                                   ; preds = %fail_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i147 = add i32 %52, -1
  br label %_compound_head.exit.i154

if.end.i.i149:                                    ; preds = %fail_unlock
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i154

_compound_head.exit.i154:                         ; preds = %if.end.i.i149, %if.then.i.i148
  %retval.0.i.i150 = phi i32 [ %sub.i.i147, %if.then.i.i148 ], [ %53, %if.end.i.i149 ]
  %54 = inttoptr i32 %retval.0.i.i150 to ptr
  %_refcount.i.i.i.i.i151 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 3
  %call.i.i.i.i.i.i.i152 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i151, i32 noundef 4) #12
  %55 = ptrtoint ptr %_refcount.i.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %_refcount.i.i.i.i.i151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i.i.i153 = icmp eq i32 %56, 0
  br i1 %cmp.i.i.i.i153, label %if.then.i.i.i.i155, label %do.end5.i.i.i.i159, !prof !128

if.then.i.i.i.i155:                               ; preds = %_compound_head.exit.i154
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %54, ptr noundef nonnull @.str.29) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !158
  unreachable

do.end5.i.i.i.i159:                               ; preds = %_compound_head.exit.i154
  %call.i.i.i10.i.i.i.i156 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i151, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i151, i32 1, i32 3, i32 1) #12
  %57 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i151, ptr %_refcount.i.i.i.i.i151, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i151) #12, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i.i.i157 = extractvalue { i32, i32 } %57, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i157)
  %cmp.i.i.i.i.i.i.i158 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i157, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__read_swap_cache_async, %if.then.i.i.i.i.i161)) #12
          to label %folio_put_testzero.exit.i.i162 [label %if.then.i.i.i.i.i161], !srcloc !139

if.then.i.i.i.i.i161:                             ; preds = %do.end5.i.i.i.i159
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i160 = zext i1 %cmp.i.i.i.i.i.i.i158 to i32
  call void @__page_ref_mod_and_test(ptr noundef %54, i32 noundef -1, i32 noundef %conv.i.i.i.i.i160) #12
  br label %folio_put_testzero.exit.i.i162

folio_put_testzero.exit.i.i162:                   ; preds = %if.then.i.i.i.i.i161, %do.end5.i.i.i.i159
  br i1 %cmp.i.i.i.i.i.i.i158, label %if.then.i4.i163, label %folio_put_testzero.exit.i.i162.cleanup49_crit_edge

folio_put_testzero.exit.i.i162.cleanup49_crit_edge: ; preds = %folio_put_testzero.exit.i.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup49

if.then.i4.i163:                                  ; preds = %folio_put_testzero.exit.i.i162
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %54) #12
  br label %cleanup49

cleanup49:                                        ; preds = %if.then.i4.i163, %folio_put_testzero.exit.i.i162.cleanup49_crit_edge, %if.end47, %cleanup.cleanup49_crit_edge, %put_page.exit.cleanup49_crit_edge, %if.end20.cleanup49_crit_edge, %land.lhs.true.cleanup49_crit_edge, %if.end.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  %retval.2 = phi ptr [ %call38.i.i.i, %if.end47 ], [ null, %folio_put_testzero.exit.i.i162.cleanup49_crit_edge ], [ null, %if.then.i4.i163 ], [ null, %entry.cleanup49_crit_edge ], [ null, %cleanup.cleanup49_crit_edge ], [ %call.i, %if.end.cleanup49_crit_edge ], [ null, %land.lhs.true.cleanup49_crit_edge ], [ null, %if.end20.cleanup49_crit_edge ], [ null, %put_page.exit.cleanup49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shadow) #12
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__swp_swapcount([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swapcache_prepare([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mem_cgroup_swapin_charge_page(ptr noundef, ptr noundef, i32 noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_swapin_uncharge_swap([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_refault(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @read_swap_cache_async([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr nocapture readnone %vma, i32 %addr, i1 noundef zeroext %do_poll) local_unnamed_addr #0 align 64 {
entry:
  %page_was_allocated = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page_was_allocated) #12
  %0 = ptrtoint ptr %page_was_allocated to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %page_was_allocated, align 1, !annotation !174
  %call = call ptr @__read_swap_cache_async([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr undef, i32 undef, ptr noundef nonnull %page_was_allocated)
  %1 = ptrtoint ptr %page_was_allocated to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %page_was_allocated, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @swap_readpage(ptr noundef %call, i1 noundef zeroext %do_poll) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page_was_allocated) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_readpage(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @swap_cluster_readahead([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr nocapture noundef readnone %vmf) local_unnamed_addr #0 align 64 {
entry:
  %page_was_allocated.i = alloca i8, align 1
  %plug = alloca %struct.blk_plug, align 4
  %page_allocated = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entry.coerce.fca.0.extract.i = extractvalue [1 x i32] %entry.coerce, 0
  %and.i = and i32 %entry.coerce.fca.0.extract.i, 67108863
  %call5 = tail call ptr @swp_swap_info([1 x i32] %entry.coerce) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #12
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page_allocated) #12
  %1 = ptrtoint ptr %page_allocated to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %page_allocated, align 1, !annotation !174
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_cluster to i32))
  %2 = load volatile i32, ptr @page_cluster, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.skip_crit_edge, label %if.end.i

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.end.i:                                         ; preds = %entry
  %shl.i = shl nuw i32 1, %2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @swapin_readahead_hits, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr nonnull @swapin_readahead_hits, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr nonnull @swapin_readahead_hits) #12, !srcloc !176
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !177
  %4 = load volatile i32, ptr @swapin_nr_pages.prev_offset, align 4
  %call.i.i24.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @swapin_nr_pages.last_readahead_pages, i32 noundef 4) #12
  %5 = load volatile i32, ptr @swapin_nr_pages.last_readahead_pages, align 4
  %add.i.i = add i32 %asmresult.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i, label %do.body12.i, label %if.end.i.while.cond.i.i_crit_edge

if.end.i.while.cond.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i.while.cond.i.i_crit_edge
  %roundup.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ 4, %if.end.i.while.cond.i.i_crit_edge ]
  %cmp5.i.i = icmp ult i32 %roundup.0.i.i, %add.i.i
  %shl.i.i = shl i32 %roundup.0.i.i, 1
  br i1 %cmp5.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %__swapin_nr_pages.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

__swapin_nr_pages.exit.i:                         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.umin.i32(i32 %roundup.0.i.i, i32 %shl.i) #12
  %div.i.i = sdiv i32 %5, 2
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 %div.i.i) #12
  br label %swapin_nr_pages.exit

do.body12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add1.i.i = add i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %and.i)
  %cmp2.not.i.i = icmp eq i32 %add1.i.i, %and.i
  %sub.i.i = add i32 %4, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %and.i)
  %cmp3.not.i.i = icmp eq i32 %sub.i.i, %and.i
  %or.cond.i.i = or i1 %cmp2.not.i.i, %cmp3.not.i.i
  %spec.select23.i.i = select i1 %or.cond.i.i, i32 2, i32 1
  %8 = tail call i32 @llvm.umin.i32(i32 %spec.select23.i.i, i32 %shl.i) #12
  %div.i27.i = sdiv i32 %5, 2
  %9 = tail call i32 @llvm.umax.i32(i32 %8, i32 %div.i27.i) #12
  store volatile i32 %and.i, ptr @swapin_nr_pages.prev_offset, align 4
  br label %swapin_nr_pages.exit

swapin_nr_pages.exit:                             ; preds = %do.body12.i, %__swapin_nr_pages.exit.i
  %10 = phi i32 [ %9, %do.body12.i ], [ %7, %__swapin_nr_pages.exit.i ]
  %call.i.i25.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @swapin_nr_pages.last_readahead_pages, i32 noundef 4) #12
  store volatile i32 %10, ptr @swapin_nr_pages.last_readahead_pages, align 4
  %sub = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %swapin_nr_pages.exit.skip_crit_edge, label %if.end

swapin_nr_pages.exit.skip_crit_edge:              ; preds = %swapin_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.end:                                           ; preds = %swapin_nr_pages.exit
  %neg = sub i32 0, %10
  %and = and i32 %and.i, %neg
  %or = or i32 %sub, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool8.not, i32 1, i32 %and
  %max = getelementptr inbounds %struct.swap_info_struct, ptr %call5, i32 0, i32 5
  %11 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %12)
  %cmp.not = icmp ult i32 %or, %12
  %sub13 = add i32 %12, -1
  %end_offset.0 = select i1 %cmp.not, i32 %or, i32 %sub13
  call void @blk_start_plug(ptr noundef nonnull %plug) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %end_offset.0)
  %cmp15.not87 = icmp ugt i32 %spec.select, %end_offset.0
  br i1 %cmp15.not87, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %shr.i = and i32 %entry.coerce.fca.0.extract.i, -67108864
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.088 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %inc32, %for.inc.for.body_crit_edge ]
  %and.i71 = and i32 %offset.088, 67108863
  %or.i = or i32 %and.i71, %shr.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i, 0
  %call21 = call ptr @__read_swap_cache_async([1 x i32] %.fca.0.insert, i32 noundef %gfp_mask, ptr undef, i32 undef, ptr noundef nonnull %page_allocated)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.end24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %13 = ptrtoint ptr %page_allocated to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %page_allocated, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp eq i8 %14, 0
  br i1 %tobool25.not, label %if.end24.if.end31_crit_edge, label %if.then26

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  %call27 = call i32 @swap_readpage(ptr noundef nonnull %call21, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.088, i32 %and.i)
  %cmp28.not = icmp eq i32 %offset.088, %and.i
  br i1 %cmp28.not, label %if.then26.if.end31_crit_edge, label %if.then29

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then29:                                        ; preds = %if.then26
  %15 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call21, align 4
  %17 = and i32 %16, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then29.if.then.i_crit_edge

if.then29.if.then.i_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then29
  %18 = getelementptr inbounds %struct.page, ptr %call21, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !130

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then29.if.then.i_crit_edge
  call void @dump_page(ptr noundef nonnull %call21, ptr noundef nonnull @.str.33) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 468, 0\0A.popsection", ""() #12, !srcloc !178
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %21 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %call21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageReadahead.exit, !prof !128

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %call21, ptr noundef nonnull @.str.21) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 468, 0\0A.popsection", ""() #12, !srcloc !179
  unreachable

SetPageReadahead.exit:                            ; preds = %do.body7.i
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %call21) #12
  %23 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !165
  %24 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %29, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 74) to i32)
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add14.i = add i32 %32, 1
  store i32 %add14.i, ptr %30, align 4
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !166
  %and.i.i.i72 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool.not.i73 = icmp eq i32 %and.i.i.i72, 0
  br i1 %tobool.not.i73, label %if.then.i74, label %SetPageReadahead.exit.count_vm_event.exit_crit_edge, !prof !128

SetPageReadahead.exit.count_vm_event.exit_crit_edge: ; preds = %SetPageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_event.exit

if.then.i74:                                      ; preds = %SetPageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i74, %SetPageReadahead.exit.count_vm_event.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #12, !srcloc !167
  br label %if.end31

if.end31:                                         ; preds = %count_vm_event.exit, %if.then26.if.end31_crit_edge, %if.end24.if.end31_crit_edge
  %34 = getelementptr inbounds %struct.page, ptr %call21, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i75 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %and.i.i75, 0
  br i1 %tobool.not.i.i76, label %if.end.i.i, label %if.then.i.i, !prof !130

if.then.i.i:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i77 = add i32 %36, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %call21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i77, %if.then.i.i ], [ %37, %if.end.i.i ]
  %38 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !128

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.29) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !158
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %42 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %42, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@swap_cluster_readahead, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !139

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %38, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %38) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc32 = add i32 %offset.088, 1
  %cmp15.not = icmp ugt i32 %inc32, %end_offset.0
  br i1 %cmp15.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #12
  call void @lru_add_drain() #12
  br label %skip

skip:                                             ; preds = %for.end, %swapin_nr_pages.exit.skip_crit_edge, %entry.skip_crit_edge
  %tobool.not84 = phi i1 [ true, %swapin_nr_pages.exit.skip_crit_edge ], [ false, %for.end ], [ true, %entry.skip_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page_was_allocated.i) #12
  %43 = ptrtoint ptr %page_was_allocated.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %page_was_allocated.i, align 1, !annotation !174
  %call.i = call ptr @__read_swap_cache_async([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr undef, i32 undef, ptr noundef nonnull %page_was_allocated.i) #12
  %44 = ptrtoint ptr %page_was_allocated.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %page_was_allocated.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i78 = icmp eq i8 %45, 0
  br i1 %tobool.not.i78, label %skip.read_swap_cache_async.exit_crit_edge, label %if.then.i79

skip.read_swap_cache_async.exit_crit_edge:        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_swap_cache_async.exit

if.then.i79:                                      ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call i32 @swap_readpage(ptr noundef %call.i, i1 noundef zeroext %tobool.not84) #12
  br label %read_swap_cache_async.exit

read_swap_cache_async.exit:                       ; preds = %if.then.i79, %skip.read_swap_cache_async.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page_was_allocated.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page_allocated) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #12
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swp_swap_info([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_swap_address_space(i32 noundef %type, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %nr_pages, 16383
  %div15 = lshr i32 %sub, 14
  %0 = mul nuw nsw i32 %div15, 340
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub)
  %cmp18.not = icmp ult i32 %sub, 16384
  br i1 %cmp18.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div15, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i_pages = getelementptr %struct.address_space, ptr %call.i.i.i, i32 %i.019, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %i_pages, ptr noundef nonnull @.str.35, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i = getelementptr %struct.address_space, ptr %call.i.i.i, i32 %i.019, i32 1, i32 1
  %1 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr %struct.address_space, ptr %call.i.i.i, i32 %i.019, i32 1, i32 2
  %2 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xa_head.i, align 4
  %i_mmap_writable = getelementptr %struct.address_space, ptr %call.i.i.i, i32 %i.019, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable, i32 noundef 4) #12
  %3 = ptrtoint ptr %i_mmap_writable to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %i_mmap_writable, align 4
  %a_ops = getelementptr %struct.address_space, ptr %call.i.i.i, i32 %i.019, i32 9
  %4 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @swap_aops, ptr %a_ops, align 4
  %flags.i = getelementptr %struct.address_space, ptr %call.i.i.i, i32 %i.019, i32 10
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #12
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx = getelementptr [30 x i32], ptr @nr_swapper_spaces, i32 0, i32 %type
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div15, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %type
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i, ptr %arrayidx1, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_swap_address_space(i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [30 x ptr], ptr @swapper_spaces, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [30 x i32], ptr @nr_swapper_spaces, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.not = icmp eq i32 %3, 0
  br i1 %cmp49.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %entry.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %if.end30.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %xa_head.i.i = getelementptr %struct.address_space, ptr %1, i32 %i.050, i32 1, i32 2
  %4 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xa_head.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.i, label %for.body.if.end30_crit_edge, label %land.rhs

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %for.body
  %.b48 = load i1, ptr @exit_swap_address_space.__already_done, align 1
  br i1 %.b48, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !130

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @exit_swap_address_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 693, i32 noundef 9, ptr noundef null) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %inc = add nuw i32 %i.050, 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %if.end30.for.body_crit_edge, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end30.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kvfree(ptr noundef %1) #12
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx1, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @swapin_readahead([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr nocapture noundef readonly %vmf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i8, ptr @enable_vma_readahead, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.cond.false_crit_edge, label %swap_use_vma_readahead.exit

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

swap_use_vma_readahead.exit:                      ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nr_rotate_swap, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_rotate_swap to i32))
  %1 = load volatile i32, ptr @nr_rotate_swap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not.i = icmp eq i32 %1, 0
  br i1 %tobool2.not.i, label %cond.true, label %swap_use_vma_readahead.exit.cond.false_crit_edge

swap_use_vma_readahead.exit.cond.false_crit_edge: ; preds = %swap_use_vma_readahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false

cond.true:                                        ; preds = %swap_use_vma_readahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call fastcc ptr @swap_vma_readahead([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr noundef %vmf)
  br label %cond.end

cond.false:                                       ; preds = %swap_use_vma_readahead.exit.cond.false_crit_edge, %entry.cond.false_crit_edge
  %call6 = tail call ptr @swap_cluster_readahead([1 x i32] %entry.coerce, i32 noundef %gfp_mask, ptr noundef %vmf)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call4, %cond.true ], [ %call6, %cond.false ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @swap_vma_readahead([1 x i32] %fentry.coerce, i32 noundef %gfp_mask, ptr nocapture noundef readonly %vmf) unnamed_addr #0 align 64 {
entry:
  %page_was_allocated.i = alloca i8, align 1
  %plug = alloca %struct.blk_plug, align 4
  %page_allocated = alloca i8, align 1
  %ra_info = alloca %struct.vma_swap_readahead, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #12
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page_allocated) #12
  %1 = ptrtoint ptr %page_allocated to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %page_allocated, align 1, !annotation !174
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ra_info) #12
  %2 = call ptr @memset(ptr %ra_info, i32 0, i32 40)
  %3 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vmf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @page_cluster to i32))
  %5 = load volatile i32, ptr @page_cluster, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.i = icmp eq i32 %6, 0
  br i1 %cmp3.i, label %entry.skip_crit_edge, label %if.end.i

entry.skip_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.end.i:                                         ; preds = %entry
  %shl.i = shl nuw nsw i32 1, %6
  %address.i = getelementptr inbounds %struct.anon.14, ptr %vmf, i32 0, i32 3
  %7 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %9 = load ptr, ptr @mem_map, align 4
  %pmd.i = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 2
  %10 = ptrtoint ptr %pmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pmd.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr.i = lshr i32 %13, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %14
  %add.ptr.i = getelementptr %struct.page, ptr %9, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %15, 512
  %16 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !180
  %20 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !181
  %call.i.i127.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i, i32 noundef %or.i.i) #12
  %shr.i.i = lshr i32 %8, 12
  %and.i.i = and i32 %shr.i.i, 511
  %add.ptr6.i = getelementptr i32, ptr %call.i.i127.i, i32 %and.i.i
  %swap_readahead_info.i = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %swap_readahead_info.i, i32 noundef 4) #12
  %26 = ptrtoint ptr %swap_readahead_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %swap_readahead_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i64 = icmp eq i32 %27, 0
  %call8..i = select i1 %tobool.not.i64, i32 4, i32 %27
  %shr14.i = lshr i32 %call8..i, 12
  %and15.i = lshr i32 %call8..i, 7
  %shr16.i = and i32 %and15.i, 31
  %and17.i = and i32 %call8..i, 63
  %add.i.i = add nuw nsw i32 %and17.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %cmp.i.i = icmp eq i32 %and17.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.while.cond.i.i_crit_edge

if.end.i.while.cond.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.cond.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add1.i.i = add nuw nsw i32 %shr14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add1.i.i, i32 %shr.i.i)
  %cmp2.not.i.i = icmp eq i32 %add1.i.i, %shr.i.i
  %sub.i.i = add nsw i32 %shr14.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %shr.i.i)
  %cmp3.not.i.i = icmp eq i32 %sub.i.i, %shr.i.i
  %or.cond.i.i = or i1 %cmp2.not.i.i, %cmp3.not.i.i
  %spec.select23.i.i = select i1 %or.cond.i.i, i32 2, i32 1
  br label %__swapin_nr_pages.exit.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i.while.cond.i.i_crit_edge
  %roundup.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ 4, %if.end.i.while.cond.i.i_crit_edge ]
  %cmp5.i.i = icmp ult i32 %roundup.0.i.i, %add.i.i
  %shl.i.i = shl i32 %roundup.0.i.i, 1
  br i1 %cmp5.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge, label %while.cond.i.i.__swapin_nr_pages.exit.i_crit_edge

while.cond.i.i.__swapin_nr_pages.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__swapin_nr_pages.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

__swapin_nr_pages.exit.i:                         ; preds = %while.cond.i.i.__swapin_nr_pages.exit.i_crit_edge, %if.then.i.i
  %pages.0.i.i = phi i32 [ %spec.select23.i.i, %if.then.i.i ], [ %roundup.0.i.i, %while.cond.i.i.__swapin_nr_pages.exit.i_crit_edge ]
  %28 = tail call i32 @llvm.umin.i32(i32 %pages.0.i.i, i32 %shl.i) #12
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 %shr16.i) #12
  %conv.i = trunc i32 %29 to i16
  %30 = ptrtoint ptr %ra_info to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %ra_info, align 4
  %and21.i = and i32 %8, -4096
  %shl22.i = shl nuw nsw i32 %29, 6
  %or.i = or i32 %shl22.i, %and21.i
  %call.i.i126.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %swap_readahead_info.i, i32 noundef 4) #12
  %31 = ptrtoint ptr %swap_readahead_info.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %or.i, ptr %swap_readahead_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp25.i = icmp eq i32 %29, 1
  br i1 %cmp25.i, label %do.end31.i, label %if.end34.i

do.end31.i:                                       ; preds = %__swapin_nr_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr6.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  %32 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %37, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  br label %swap_ra_info.exit

if.end34.i:                                       ; preds = %__swapin_nr_pages.exit.i
  %add.i = add nuw nsw i32 %shr14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %add.i)
  %cmp35.i = icmp eq i32 %shr.i.i, %add.i
  br i1 %cmp35.i, label %if.then37.i, label %if.else.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %add38.i = add nuw nsw i32 %29, %shr.i.i
  br label %if.end52.i

if.else.i:                                        ; preds = %if.end34.i
  %add39.i = add nuw nsw i32 %shr.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr14.i, i32 %add39.i)
  %cmp40.i = icmp eq i32 %shr14.i, %add39.i
  br i1 %cmp40.i, label %if.then42.i, label %if.else46.i

if.then42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %add44.i = sub nsw i32 %shr14.i, %29
  br label %if.end52.i

if.else46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub47.i = add nsw i32 %29, -1
  %div125.i = lshr i32 %sub47.i, 1
  %sub48.i = sub nsw i32 %shr.i.i, %div125.i
  %add49.i = add nuw nsw i32 %29, %shr.i.i
  %sub50.i = sub nsw i32 %add49.i, %div125.i
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else46.i, %if.then42.i, %if.then37.i
  %add44.sink.i = phi i32 [ %add44.i, %if.then42.i ], [ %sub48.i, %if.else46.i ], [ %shr.i.i, %if.then37.i ]
  %shr14.sink.i = phi i32 [ %shr14.i, %if.then42.i ], [ %sub50.i, %if.else46.i ], [ %add38.i, %if.then37.i ]
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %4, align 4
  %shr.i131.i = lshr i32 %39, 12
  %40 = tail call i32 @llvm.umax.i32(i32 %shr.i131.i, i32 %add44.sink.i) #12
  %and.i132.i = and i32 %8, -2097152
  %shr1.i133.i = lshr exact i32 %and.i132.i, 12
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %shr1.i133.i) #12
  %vm_end.i134.i = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 1
  %42 = ptrtoint ptr %vm_end.i134.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_end.i134.i, align 4
  %shr8.i135.i = lshr i32 %43, 12
  %44 = tail call i32 @llvm.umin.i32(i32 %shr8.i135.i, i32 %shr14.sink.i) #12
  %add.i136.i = add i32 %and.i132.i, 2097152
  %shr16.i137.i = lshr exact i32 %add.i136.i, 12
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %shr16.i137.i) #12
  %sub53.i = sub i32 %45, %41
  %conv54.i = trunc i32 %sub53.i to i16
  %nr_pte.i = getelementptr inbounds %struct.vma_swap_readahead, ptr %ra_info, i32 0, i32 2
  %46 = ptrtoint ptr %nr_pte.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv54.i, ptr %nr_pte.i, align 4
  %sub55.i = sub i32 %shr.i.i, %41
  %conv56.i = trunc i32 %sub55.i to i16
  %offset.i = getelementptr inbounds %struct.vma_swap_readahead, ptr %ra_info, i32 0, i32 1
  %47 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv56.i, ptr %offset.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %41)
  %cmp60.not155.i = icmp eq i32 %45, %41
  br i1 %cmp60.not155.i, label %if.end52.i.do.end66.i_crit_edge, label %for.body.preheader.i

if.end52.i.do.end66.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end66.i

for.body.preheader.i:                             ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #14
  %ptes.i = getelementptr inbounds %struct.vma_swap_readahead, ptr %ra_info, i32 0, i32 3
  %conv58.i = and i32 %sub55.i, 65535
  %idx.neg.i = sub nsw i32 0, %conv58.i
  %add.ptr59.i = getelementptr i32, ptr %add.ptr6.i, i32 %idx.neg.i
  %48 = sub i32 %45, %41
  %49 = shl i32 %48, 2
  %50 = call ptr @memcpy(ptr %ptes.i, ptr %add.ptr59.i, i32 %49)
  br label %do.end66.i

do.end66.i:                                       ; preds = %for.body.preheader.i, %if.end52.i.do.end66.i_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr6.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !182
  %51 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i1.i145.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i1.i145.i to ptr
  %task.i.i.i146.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i.i.i146.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i.i.i146.i, align 8
  %pagefault_disabled.i.i.i147.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 213
  %55 = ptrtoint ptr %pagefault_disabled.i.i.i147.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pagefault_disabled.i.i.i147.i, align 8
  %dec.i.i.i148.i = add i32 %56, -1
  store i32 %dec.i.i.i148.i, ptr %pagefault_disabled.i.i.i147.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  br label %swap_ra_info.exit

swap_ra_info.exit:                                ; preds = %do.end66.i, %do.end31.i
  %57 = tail call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %61 = ptrtoint ptr %ra_info to i32
  call void @__asan_load2_noabort(i32 %61)
  %.pr = load i16, ptr %ra_info, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %.pr)
  %cmp = icmp eq i16 %.pr, 1
  br i1 %cmp, label %swap_ra_info.exit.skip_crit_edge, label %if.end

swap_ra_info.exit.skip_crit_edge:                 ; preds = %swap_ra_info.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip

if.end:                                           ; preds = %swap_ra_info.exit
  call void @blk_start_plug(ptr noundef nonnull %plug) #12
  %nr_pte = getelementptr inbounds %struct.vma_swap_readahead, ptr %ra_info, i32 0, i32 2
  %62 = ptrtoint ptr %nr_pte to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %nr_pte, align 4
  %conv4 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp584.not = icmp eq i16 %63, 0
  br i1 %cmp584.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ptes = getelementptr inbounds %struct.vma_swap_readahead, ptr %ra_info, i32 0, i32 3
  %offset = getelementptr inbounds %struct.vma_swap_readahead, ptr %ra_info, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pte.085 = phi ptr [ %ptes, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %64 = ptrtoint ptr %pte.085 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pte.085, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not = icmp ne i32 %65, 0
  %and = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %or.cond = and i1 %tobool.not, %tobool9.not
  br i1 %or.cond, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %shr3.i = lshr i32 %65, 7
  %66 = shl i32 %65, 24
  %shl.i.i65 = and i32 %66, 2080374784
  %or.i.i66 = or i32 %shl.i.i65, %shr3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2013265920, i32 %or.i.i66)
  %cmp.i = icmp ult i32 %or.i.i66, 2013265920
  br i1 %cmp.i, label %if.end23, label %if.end14.for.inc_crit_edge, !prof !130

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end23:                                         ; preds = %if.end14
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i.i66, 0
  %call25 = call ptr @__read_swap_cache_async([1 x i32] %.fca.0.insert, i32 noundef %gfp_mask, ptr undef, i32 undef, ptr noundef nonnull %page_allocated)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.for.inc_crit_edge, label %if.end28

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end28:                                         ; preds = %if.end23
  %67 = ptrtoint ptr %page_allocated to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %page_allocated, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool29.not = icmp eq i8 %68, 0
  br i1 %tobool29.not, label %if.end28.if.end37_crit_edge, label %if.then30

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then30:                                        ; preds = %if.end28
  %call31 = call i32 @swap_readpage(ptr noundef nonnull %call25, i1 noundef zeroext false) #12
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %offset, align 2
  %conv32 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086, i32 %conv32)
  %cmp33.not = icmp eq i32 %i.086, %conv32
  br i1 %cmp33.not, label %if.then30.if.end37_crit_edge, label %if.then35

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then35:                                        ; preds = %if.then30
  %71 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %call25, align 4
  %73 = and i32 %72, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then35.if.then.i_crit_edge

if.then35.if.then.i_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then35
  %74 = getelementptr inbounds %struct.page, ptr %call25, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  %and.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !130

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then35.if.then.i_crit_edge
  call void @dump_page(ptr noundef nonnull %call25, ptr noundef nonnull @.str.33) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 468, 0\0A.popsection", ""() #12, !srcloc !178
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %77 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %call25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp.i.not.i = icmp eq i32 %78, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageReadahead.exit, !prof !128

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %call25, ptr noundef nonnull @.str.21) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 468, 0\0A.popsection", ""() #12, !srcloc !179
  unreachable

SetPageReadahead.exit:                            ; preds = %do.body7.i
  call void @_set_bit(i32 noundef 18, ptr noundef nonnull %call25) #12
  %79 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !165
  %80 = call i32 @llvm.read_register.i32(metadata !118) #12
  %and.i.i68 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i68 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx13.i, align 4
  %add.i69 = add i32 %85, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 74) to i32)
  %86 = inttoptr i32 %add.i69 to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add14.i = add i32 %88, 1
  store i32 %add14.i, ptr %86, align 4
  %89 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !166
  %and.i.i.i70 = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i70)
  %tobool.not.i71 = icmp eq i32 %and.i.i.i70, 0
  br i1 %tobool.not.i71, label %if.then.i72, label %SetPageReadahead.exit.count_vm_event.exit_crit_edge, !prof !128

SetPageReadahead.exit.count_vm_event.exit_crit_edge: ; preds = %SetPageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_event.exit

if.then.i72:                                      ; preds = %SetPageReadahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_event.exit

count_vm_event.exit:                              ; preds = %if.then.i72, %SetPageReadahead.exit.count_vm_event.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #12, !srcloc !167
  br label %if.end37

if.end37:                                         ; preds = %count_vm_event.exit, %if.then30.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %90 = getelementptr inbounds %struct.page, ptr %call25, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i73 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.end.i.i, label %if.then.i.i76, !prof !130

if.then.i.i76:                                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i75 = add i32 %92, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %call25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i76
  %retval.0.i.i = phi i32 [ %sub.i.i75, %if.then.i.i76 ], [ %93, %if.end.i.i ]
  %94 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %95 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.i.i.i = icmp eq i32 %96, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !128

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %97, ptr noundef nonnull @.str.29) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !158
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !160
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@swap_vma_readahead, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !139

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %94, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %94) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %if.end23.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.086, 1
  %incdec.ptr = getelementptr i32, ptr %pte.085, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #12
  call void @lru_add_drain() #12
  br label %skip

skip:                                             ; preds = %for.end, %swap_ra_info.exit.skip_crit_edge, %entry.skip_crit_edge
  %cmp81 = phi i1 [ true, %swap_ra_info.exit.skip_crit_edge ], [ false, %for.end ], [ true, %entry.skip_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %page_was_allocated.i) #12
  %99 = ptrtoint ptr %page_was_allocated.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %page_was_allocated.i, align 1, !annotation !174
  %call.i = call ptr @__read_swap_cache_async([1 x i32] %fentry.coerce, i32 noundef %gfp_mask, ptr undef, i32 undef, ptr noundef nonnull %page_was_allocated.i) #12
  %100 = ptrtoint ptr %page_was_allocated.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %page_was_allocated.i, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i77 = icmp eq i8 %101, 0
  br i1 %tobool.not.i77, label %skip.read_swap_cache_async.exit_crit_edge, label %if.then.i78

skip.read_swap_cache_async.exit_crit_edge:        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_swap_cache_async.exit

if.then.i78:                                      ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #14
  %call5.i = call i32 @swap_readpage(ptr noundef %call.i, i1 noundef zeroext %cmp81) #12
  br label %read_swap_cache_async.exit

read_swap_cache_async.exit:                       ; preds = %if.then.i78, %skip.read_swap_cache_async.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page_was_allocated.i) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ra_info) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %page_allocated) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #12
  ret ptr %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @swap_init_sysfs() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_kobj to i32))
  %0 = load ptr, ptr @mm_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.36, ptr noundef %0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call, ptr noundef nonnull @swap_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  tail call void @kobject_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end7 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_writepage(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swap_set_page_dirty(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vma_ra_enabled_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_vma_readahead, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, ptr @.str.45, ptr @.str.44
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vma_ra_enabled_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.44, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %lor.lhs.false

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %lhsc = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %lhsc)
  %tobool2.not = icmp eq i8 %lhsc, 49
  br i1 %tobool2.not, label %lor.lhs.false.if.end10_crit_edge, label %if.else

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %lor.lhs.false
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.45, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %lhsc)
  %tobool7.not = icmp eq i8 %lhsc, 48
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %if.else.if.end10_crit_edge, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  %storemerge = phi i8 [ 1, %lor.lhs.false.if.end10_crit_edge ], [ 1, %entry.if.end10_crit_edge ], [ 0, %if.else.if.end10_crit_edge ]
  store i8 %storemerge, ptr @enable_vma_readahead, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !67, !68, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116}
!llvm.named.register.sp = !{!118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/swap_state.c", i32 75, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @show_swap_cache_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @show_swap_cache_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../mm/swap_state.c", i32 76, i32 2}
!8 = !{ptr @show_swap_cache_info._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @show_swap_cache_info._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../mm/swap_state.c", i32 79, i32 2}
!12 = !{ptr @show_swap_cache_info._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @show_swap_cache_info._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../mm/swap_state.c", i32 81, i32 2}
!16 = !{ptr @show_swap_cache_info._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @show_swap_cache_info._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/swap_state.c", i32 109, i32 2}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../mm/swap_state.c", i32 110, i32 2}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../mm/swap_state.c", i32 111, i32 2}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../mm/swap_state.c", i32 122, i32 4}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../mm/swap_state.c", i32 161, i32 2}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../mm/swap_state.c", i32 162, i32 2}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../mm/swap_state.c", i32 166, i32 3}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../mm/swap_state.c", i32 190, i32 2}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../mm/swap_state.c", i32 693, i32 3}
!36 = !{ptr @__initcall__kmod_swap_state__326_911_swap_init_sysfs4, !37, !"__initcall__kmod_swap_state__326_911_swap_init_sysfs4", i1 false, i1 false}
!37 = !{!"../mm/swap_state.c", i32 911, i32 1}
!38 = !{ptr @swapper_spaces, !39, !"swapper_spaces", i1 false, i1 false}
!39 = !{!"../mm/swap_state.c", i32 39, i32 23}
!40 = !{ptr @nr_swapper_spaces, !41, !"nr_swapper_spaces", i1 false, i1 false}
!41 = !{!"../mm/swap_state.c", i32 40, i32 21}
!42 = distinct !{null, !43, !"swap_cache_info", i1 false, i1 false}
!43 = !{!"../mm/swap_state.c", i32 69, i32 3}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!46 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/huge_mm.h", i32 347, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/page-flags.h", i32 493, i32 1}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/mm.h", i32 717, i32 2}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @enable_vma_readahead, !73, !"enable_vma_readahead", i1 false, i1 false}
!73 = !{!"../mm/swap_state.c", i32 41, i32 13}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/page-flags.h", i32 469, i32 2}
!76 = !{ptr @swapin_readahead_hits, !77, !"swapin_readahead_hits", i1 false, i1 false}
!77 = !{!"../mm/swap_state.c", i32 71, i32 17}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!80 = !{ptr @swapin_nr_pages.prev_offset, !81, !"prev_offset", i1 false, i1 false}
!81 = !{!"../mm/swap_state.c", i32 576, i32 23}
!82 = !{ptr @swapin_nr_pages.last_readahead_pages, !83, !"last_readahead_pages", i1 false, i1 false}
!83 = !{!"../mm/swap_state.c", i32 578, i32 18}
!84 = !{ptr @xa_init_flags.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @swap_aops, !88, !"swap_aops", i1 false, i1 false}
!88 = !{!"../mm/swap_state.c", i32 31, i32 46}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../mm/swap_state.c", i32 895, i32 37}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../mm/swap_state.c", i32 897, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @swap_init_sysfs._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @swap_init_sysfs._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../mm/swap_state.c", i32 902, i32 3}
!98 = !{ptr @swap_init_sysfs._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @swap_init_sysfs._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @swap_attr_group, !101, !"swap_attr_group", i1 false, i1 false}
!101 = !{!"../mm/swap_state.c", i32 886, i32 37}
!102 = !{ptr @swap_attrs, !103, !"swap_attrs", i1 false, i1 false}
!103 = !{!"../mm/swap_state.c", i32 881, i32 26}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../mm/swap_state.c", i32 878, i32 2}
!106 = !{ptr @vma_ra_enabled_attr, !107, !"vma_ra_enabled_attr", i1 false, i1 false}
!107 = !{!"../mm/swap_state.c", i32 877, i32 30}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../mm/swap_state.c", i32 861, i32 25}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../mm/swap_state.c", i32 862, i32 29}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../mm/swap_state.c", i32 862, i32 38}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../mm/swap_state.c", i32 868, i32 48}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../mm/swap_state.c", i32 870, i32 54}
!118 = !{!"sp"}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"branch_weights", i32 1, i32 2000}
!129 = !{i64 2151009635, i64 2151010126, i64 2151009672, i64 2151009728, i64 2151009762, i64 2151009786, i64 2151009827, i64 2151009848, i64 2151009876, i64 2151009910}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2153124837, i64 2153125325, i64 2153124874, i64 2153124930, i64 2153124964, i64 2153124988, i64 2153125029, i64 2153125050, i64 2153125078, i64 2153125112}
!132 = !{i64 2150254343, i64 2150254834, i64 2150254380, i64 2150254436, i64 2150254470, i64 2150254494, i64 2150254535, i64 2150254556, i64 2150254584, i64 2150254618}
!133 = !{i64 2155246240, i64 2155246720, i64 2155246277, i64 2155246333, i64 2155246367, i64 2155246391, i64 2155246432, i64 2155246453, i64 2155246481, i64 2155246515}
!134 = !{i64 2150242849, i64 2150243340, i64 2150242886, i64 2150242942, i64 2150242976, i64 2150243000, i64 2150243041, i64 2150243062, i64 2150243090, i64 2150243124}
!135 = !{i64 2155248007, i64 2155248487, i64 2155248044, i64 2155248100, i64 2155248134, i64 2155248158, i64 2155248199, i64 2155248220, i64 2155248248, i64 2155248282}
!136 = !{i64 2150670363, i64 2150670854, i64 2150670400, i64 2150670456, i64 2150670490, i64 2150670514, i64 2150670555, i64 2150670576, i64 2150670604, i64 2150670638}
!137 = !{i64 2155249784, i64 2155250264, i64 2155249821, i64 2155249877, i64 2155249911, i64 2155249935, i64 2155249976, i64 2155249997, i64 2155250025, i64 2155250059}
!138 = !{i64 2148687851, i64 2148687877, i64 2148687906, i64 2148687940, i64 2148687971, i64 2148687994}
!139 = !{i64 2148288528, i64 2148288533, i64 2148288546, i64 2148288590, i64 2148288624, i64 2148288645}
!140 = !{i64 2150882916, i64 2150883089, i64 2150883104, i64 2150883156, i64 2150883215, i64 2150883239, i64 2150883280, i64 2150883301, i64 2150883329, i64 2150883361}
!141 = !{i64 2150883791, i64 2150883964, i64 2150883979, i64 2150884031, i64 2150884090, i64 2150884114, i64 2150884155, i64 2150884176, i64 2150884204, i64 2150884236}
!142 = !{i64 2155251642, i64 2155252122, i64 2155251679, i64 2155251735, i64 2155251769, i64 2155251793, i64 2155251834, i64 2155251855, i64 2155251883, i64 2155251917}
!143 = !{i64 2153163602, i64 2153164086, i64 2153163639, i64 2153163695, i64 2153163729, i64 2153163753, i64 2153163794, i64 2153163815, i64 2153163843, i64 2153163877}
!144 = !{i64 2150891766, i64 2150891939, i64 2150891954, i64 2150892006, i64 2150892065, i64 2150892089, i64 2150892130, i64 2150892151, i64 2150892179, i64 2150892211}
!145 = !{i64 2150892641, i64 2150892814, i64 2150892829, i64 2150892881, i64 2150892940, i64 2150892964, i64 2150893005, i64 2150893026, i64 2150893054, i64 2150893086}
!146 = !{i64 2148690316, i64 2148690342, i64 2148690371, i64 2148690405, i64 2148690436, i64 2148690459}
!147 = !{i64 2155255117, i64 2155255597, i64 2155255154, i64 2155255210, i64 2155255244, i64 2155255268, i64 2155255309, i64 2155255330, i64 2155255358, i64 2155255392}
!148 = !{!"branch_weights", i32 1073205, i32 2146410443}
!149 = !{i64 2155256889, i64 2155257369, i64 2155256926, i64 2155256982, i64 2155257016, i64 2155257040, i64 2155257081, i64 2155257102, i64 2155257130, i64 2155257164}
!150 = !{i64 2150762764, i64 2150763255, i64 2150762801, i64 2150762857, i64 2150762891, i64 2150762915, i64 2150762956, i64 2150762977, i64 2150763005, i64 2150763039}
!151 = !{i64 2155258656, i64 2155259136, i64 2155258693, i64 2155258749, i64 2155258783, i64 2155258807, i64 2155258848, i64 2155258869, i64 2155258897, i64 2155258931}
!152 = !{i64 2155260394, i64 2155260874, i64 2155260431, i64 2155260487, i64 2155260521, i64 2155260545, i64 2155260586, i64 2155260607, i64 2155260635, i64 2155260669}
!153 = !{i64 2155263293, i64 2155263773, i64 2155263330, i64 2155263386, i64 2155263420, i64 2155263444, i64 2155263485, i64 2155263506, i64 2155263534, i64 2155263568}
!154 = !{i64 2150992741}
!155 = !{i64 2155265060, i64 2155265540, i64 2155265097, i64 2155265153, i64 2155265187, i64 2155265211, i64 2155265252, i64 2155265273, i64 2155265301, i64 2155265335}
!156 = !{i64 2148696709, i64 2148696741, i64 2148696770, i64 2148696804, i64 2148696835, i64 2148696858}
!157 = !{i64 2148785814}
!158 = !{i64 2153133847, i64 2153134330, i64 2153133884, i64 2153133940, i64 2153133974, i64 2153133998, i64 2153134039, i64 2153134060, i64 2153134088, i64 2153134122}
!159 = !{i64 2148776327}
!160 = !{i64 2148691036, i64 2148691068, i64 2148691097, i64 2148691131, i64 2148691162, i64 2148691185}
!161 = !{i64 2148776556}
!162 = !{i8 0, i8 2}
!163 = !{i64 2150873628, i64 2150873801, i64 2150873816, i64 2150873868, i64 2150873927, i64 2150873951, i64 2150873992, i64 2150874013, i64 2150874041, i64 2150874073}
!164 = !{i64 2150874399, i64 2150874572, i64 2150874587, i64 2150874639, i64 2150874698, i64 2150874722, i64 2150874763, i64 2150874784, i64 2150874812, i64 2150874844}
!165 = !{i64 1092531, i64 1092592}
!166 = !{i64 1095263}
!167 = !{i64 1095548}
!168 = !{i64 2150023184}
!169 = !{i64 2150023450}
!170 = !{i64 2150257177, i64 2150257668, i64 2150257214, i64 2150257270, i64 2150257304, i64 2150257328, i64 2150257369, i64 2150257390, i64 2150257418, i64 2150257452}
!171 = !{i64 2150259557, i64 2150260048, i64 2150259594, i64 2150259650, i64 2150259684, i64 2150259708, i64 2150259749, i64 2150259770, i64 2150259798, i64 2150259832}
!172 = !{i64 2150700254, i64 2150700745, i64 2150700291, i64 2150700347, i64 2150700381, i64 2150700405, i64 2150700446, i64 2150700467, i64 2150700495, i64 2150700529}
!173 = !{i64 2150702634, i64 2150703125, i64 2150702671, i64 2150702727, i64 2150702761, i64 2150702785, i64 2150702826, i64 2150702847, i64 2150702875, i64 2150702909}
!174 = !{!"auto-init"}
!175 = !{i64 2148947751}
!176 = !{i64 1194619, i64 1194636, i64 1194660, i64 1194686, i64 1194704}
!177 = !{i64 2148948121}
!178 = !{i64 2150857193, i64 2150857366, i64 2150857381, i64 2150857433, i64 2150857492, i64 2150857516, i64 2150857557, i64 2150857578, i64 2150857606, i64 2150857638}
!179 = !{i64 2150857964, i64 2150858137, i64 2150858152, i64 2150858204, i64 2150858263, i64 2150858287, i64 2150858328, i64 2150858349, i64 2150858377, i64 2150858409}
!180 = !{i64 2154147081}
!181 = !{i64 2152750898}
!182 = !{i64 2152751105}
!183 = !{i64 2154149852}
