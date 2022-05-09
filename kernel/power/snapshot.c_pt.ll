; ModuleID = '/llk/IR_all_yes/kernel/power/snapshot.c_pt.bc'
source_filename = "../kernel/power/snapshot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.memory_bitmap = type { %struct.list_head, ptr, %struct.bm_position }
%struct.bm_position = type { ptr, ptr, i32, i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.67 }
%union.anon.67 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nosave_region = type { %struct.list_head, i32, i32 }
%struct.mem_zone_bm_rtree = type { %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, i32, i32 }
%struct.rtree_node = type { %struct.list_head, ptr }
%struct.chain_allocator = type { ptr, i32, i32, i32 }
%struct.mem_extent = type { %struct.list_head, i32, i32 }
%struct.linked_page = type { ptr, [4092 x i8] }
%struct.page = type { i32, %union.anon, %union.anon.99, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.99 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.72, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.swsusp_info = type { %struct.new_utsname, i32, i32, i32, i32, i32, i32, [3680 x i8] }
%struct.snapshot_handle = type { i32, ptr, i32 }
%struct.highmem_pbe = type { ptr, ptr, ptr }
%struct.pbe = type { ptr, ptr, ptr }

@hibernate_restore_protection = internal unnamed_addr global i1 false, align 1
@reserved_size = dso_local local_unnamed_addr global i32 0, align 4
@image_size = dso_local local_unnamed_addr global i32 0, align 4
@nosave_regions = internal global %struct.list_head { ptr @nosave_regions, ptr @nosave_regions }, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", align 1
@__func__.register_nosave_region = private unnamed_addr constant [23 x i8] c"register_nosave_region\00", align 1
@register_nosave_region._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @__func__.register_nosave_region, ptr @.str.2, i32 1009, ptr null, ptr null }, align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"\016PM: hibernation: Registered nosave memory: [mem %#010llx-%#010llx]\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"kernel/power/snapshot.c\00", align 1
@register_nosave_region._entry_ptr = internal global ptr @register_nosave_region._entry, section ".printk_index", align 4
@free_pages_map = internal unnamed_addr global ptr null, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@forbidden_pages_map = internal unnamed_addr global ptr null, align 4
@create_basic_memory_bitmaps.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 27, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"create_basic_memory_bitmaps\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Basic memory bitmaps created\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"PM: hibernation: Basic memory bitmaps created\0A\00", align 1
@free_basic_memory_bitmaps.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 1, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"free_basic_memory_bitmaps\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Basic memory bitmaps freed\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"PM: hibernation: Basic memory bitmaps freed\0A\00", align 1
@clear_or_poison_free_pages._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1200, ptr null, ptr null }, align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\016PM: hibernation: free pages cleared after restore\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"clear_or_poison_free_pages\00", align 1
@clear_or_poison_free_pages._entry_ptr = internal global ptr @clear_or_poison_free_pages._entry, section ".printk_index", align 4
@nr_copy_pages = internal unnamed_addr global i32 0, align 4
@nr_meta_pages = internal unnamed_addr global i32 0, align 4
@restore_pblist = dso_local local_unnamed_addr global ptr null, align 4
@buffer = internal unnamed_addr global ptr null, align 4
@alloc_normal = internal unnamed_addr global i32 0, align 4
@alloc_highmem = internal unnamed_addr global i32 0, align 4
@hibernate_preallocate_memory._entry = internal constant %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1740, ptr null, ptr null }, align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\016PM: hibernation: Preallocating image memory\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"hibernate_preallocate_memory\00", align 1
@hibernate_preallocate_memory._entry_ptr = internal global ptr @hibernate_preallocate_memory._entry, section ".printk_index", align 4
@orig_bm = internal global %struct.memory_bitmap zeroinitializer, align 4
@hibernate_preallocate_memory._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1745, ptr null, ptr null }, align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"\013PM: hibernation: Cannot allocate original bitmap\0A\00", align 1
@hibernate_preallocate_memory._entry_ptr.16 = internal global ptr @hibernate_preallocate_memory._entry.14, section ".printk_index", align 4
@copy_bm = internal global %struct.memory_bitmap zeroinitializer, align 4
@hibernate_preallocate_memory._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 1751, ptr null, ptr null }, align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\013PM: hibernation: Cannot allocate copy bitmap\0A\00", align 1
@hibernate_preallocate_memory._entry_ptr.19 = internal global ptr @hibernate_preallocate_memory._entry.17, section ".printk_index", align 4
@totalreserve_pages = external dso_local local_unnamed_addr global i32, align 4
@hibernate_preallocate_memory._entry.20 = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 1842, ptr null, ptr null }, align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\013PM: hibernation: Image allocation is %lu pages short\0A\00", align 1
@hibernate_preallocate_memory._entry_ptr.22 = internal global ptr @hibernate_preallocate_memory._entry.20, section ".printk_index", align 4
@hibernate_preallocate_memory._entry.23 = internal constant %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 1875, ptr null, ptr null }, align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"\016PM: hibernation: Allocated %lu pages for snapshot\0A\00", align 1
@hibernate_preallocate_memory._entry_ptr.25 = internal global ptr @hibernate_preallocate_memory._entry.23, section ".printk_index", align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@swsusp_save._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 2014, ptr null, ptr null }, align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\016PM: hibernation: Creating image:\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"swsusp_save\00", align 1
@swsusp_save._entry_ptr = internal global ptr @swsusp_save._entry, section ".printk_index", align 4
@swsusp_save._entry.29 = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 2019, ptr null, ptr null }, align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"\016PM: hibernation: Need to copy %u pages\0A\00", align 1
@swsusp_save._entry_ptr.31 = internal global ptr @swsusp_save._entry.29, section ".printk_index", align 4
@swsusp_save._entry.32 = internal constant %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 2022, ptr null, ptr null }, align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"\013PM: hibernation: Not enough free memory\0A\00", align 1
@swsusp_save._entry_ptr.34 = internal global ptr @swsusp_save._entry.32, section ".printk_index", align 4
@swsusp_save._entry.35 = internal constant %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 2027, ptr null, ptr null }, align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"\013PM: hibernation: Memory allocation failed\0A\00", align 1
@swsusp_save._entry_ptr.37 = internal global ptr @swsusp_save._entry.35, section ".printk_index", align 4
@swsusp_save._entry.38 = internal constant %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 2048, ptr null, ptr null }, align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"\016PM: hibernation: Image created (%d pages copied)\0A\00", align 1
@swsusp_save._entry_ptr.40 = internal global ptr @swsusp_save._entry.38, section ".printk_index", align 4
@snapshot_write_next.ca.0 = internal unnamed_addr global ptr null, align 4
@snapshot_write_next.ca.1 = internal unnamed_addr global i32 0, align 4
@snapshot_write_next.ca.2 = internal unnamed_addr global i1 false, align 4
@snapshot_write_next.ca.3 = internal unnamed_addr global i1 false, align 4
@safe_pages_list = internal unnamed_addr global ptr null, align 4
@highmem_pblist = internal unnamed_addr global ptr null, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mark_nosave_pages.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 1, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = private unnamed_addr constant [18 x i8] c"mark_nosave_pages\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"Marking nosave pages: [mem %#010llx-%#010llx]\0A\00", align 1
@.str.43 = private unnamed_addr constant [64 x i8] c"PM: hibernation: Marking nosave pages: [mem %#010llx-%#010llx]\0A\00", align 1
@_page_poisoning_enabled_early = external dso_local local_unnamed_addr global i8, align 1
@init_on_free = external dso_local global %struct.static_key_true, align 4
@_page_poisoning_enabled = external dso_local global %struct.static_key_false, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@hibernate_restore_protection_active = internal unnamed_addr global i8 0, align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.44 = private unnamed_addr constant [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", align 1
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@enough_free_mem.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 -32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = private unnamed_addr constant [16 x i8] c"enough_free_mem\00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"Normal pages needed: %u + %u, available pages: %u\0A\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"PM: hibernation: Normal pages needed: %u + %u, available pages: %u\0A\00", align 1
@allocated_unsafe_pages = internal unnamed_addr global i32 0, align 4
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"memory size\00", align 1
@check_header._entry = internal constant %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 2220, ptr null, ptr null }, align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"\013PM: hibernation: Image mismatch: %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"check_header\00", align 1
@check_header._entry_ptr = internal global ptr @check_header._entry, section ".printk_index", align 4
@.str.54 = private unnamed_addr constant [15 x i8] c"kernel version\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"system type\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"kernel release\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@safe_highmem_pages = internal unnamed_addr global i32 0, align 4
@safe_highmem_bm = internal unnamed_addr global ptr null, align 4
@last_highmem_page = internal unnamed_addr global ptr null, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@llvm.compiler.used = appending global [26 x ptr] [ptr @check_header._entry, ptr @check_header._entry_ptr, ptr @clear_or_poison_free_pages._entry, ptr @clear_or_poison_free_pages._entry_ptr, ptr @hibernate_preallocate_memory._entry, ptr @hibernate_preallocate_memory._entry.14, ptr @hibernate_preallocate_memory._entry.17, ptr @hibernate_preallocate_memory._entry.20, ptr @hibernate_preallocate_memory._entry.23, ptr @hibernate_preallocate_memory._entry_ptr, ptr @hibernate_preallocate_memory._entry_ptr.16, ptr @hibernate_preallocate_memory._entry_ptr.19, ptr @hibernate_preallocate_memory._entry_ptr.22, ptr @hibernate_preallocate_memory._entry_ptr.25, ptr @register_nosave_region._entry, ptr @register_nosave_region._entry_ptr, ptr @swsusp_save._entry, ptr @swsusp_save._entry.29, ptr @swsusp_save._entry.32, ptr @swsusp_save._entry.35, ptr @swsusp_save._entry.38, ptr @swsusp_save._entry_ptr, ptr @swsusp_save._entry_ptr.31, ptr @swsusp_save._entry_ptr.34, ptr @swsusp_save._entry_ptr.37, ptr @swsusp_save._entry_ptr.40], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @enable_restore_image_protection() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @hibernate_restore_protection, align 1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @hibernate_reserved_size_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1048576, ptr @reserved_size, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @hibernate_image_size_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %mul = shl i32 %0, 1
  %div = udiv i32 %mul, 5
  %mul1 = shl i32 %div, 12
  store i32 %mul1, ptr @image_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_safe_page(i32 noundef %gfp_mask) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @safe_pages_list, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load ptr, ptr %0, align 1
  store ptr %1, ptr @safe_pages_list, align 4
  %call.i = tail call ptr @__memset(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 4096) #17
  br label %__get_safe_page.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call fastcc ptr @get_image_page(i32 noundef %gfp_mask, i32 noundef 1) #17
  br label %__get_safe_page.exit

__get_safe_page.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %0, %if.then.i ], [ %call1.i, %if.end.i ]
  %2 = ptrtoint ptr %retval.0.i to i32
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @register_nosave_region(i32 noundef %start_pfn, i32 noundef %end_pfn) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %start_pfn, i32 %end_pfn)
  %cmp.not = icmp ult i32 %start_pfn, %end_pfn
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load volatile ptr, ptr @nosave_regions, align 4
  %cmp.i.not = icmp eq ptr %0, @nosave_regions
  br i1 %cmp.i.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nosave_regions, i32 0, i32 1), align 4
  %end_pfn2 = getelementptr inbounds %struct.nosave_region, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %end_pfn2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %start_pfn)
  %cmp3 = icmp eq i32 %2, %start_pfn
  br i1 %cmp3, label %if.then4, label %if.then1.if.end7_crit_edge

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %end_pfn, ptr %end_pfn2, align 4
  br label %do.end

if.end7:                                          ; preds = %if.then1.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 16, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #17
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.register_nosave_region, i32 noundef 16) #18
  unreachable

if.end11:                                         ; preds = %if.end7
  %start_pfn12 = getelementptr inbounds %struct.nosave_region, ptr %call.i, i32 0, i32 1
  store i32 %start_pfn, ptr %start_pfn12, align 4
  %end_pfn13 = getelementptr inbounds %struct.nosave_region, ptr %call.i, i32 0, i32 2
  store i32 %end_pfn, ptr %end_pfn13, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nosave_regions, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %3, ptr noundef nonnull @nosave_regions) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call.i, ptr getelementptr inbounds (%struct.list_head, ptr @nosave_regions, i32 0, i32 1), align 4
  store ptr @nosave_regions, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  store ptr %3, ptr %prev3.i.i, align 4
  store volatile ptr %call.i, ptr %3, align 4
  br label %do.end

do.end:                                           ; preds = %if.end.i.i, %if.end11.do.end_crit_edge, %if.then4
  %conv = zext i32 %start_pfn to i64
  %shl = shl nuw nsw i64 %conv, 12
  %conv15 = zext i32 %end_pfn to i64
  %shl16 = shl nuw nsw i64 %conv15, 12
  %sub = add nsw i64 %shl16, -1
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %shl, i64 noundef %sub) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swsusp_set_page_free(ptr noundef %page) local_unnamed_addr #3 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %bit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @free_pages_map, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #15
  store i32 -1, ptr %bit.i, align 4, !annotation !10
  %call.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %0, i32 noundef %add, ptr noundef nonnull %addr.i, ptr noundef nonnull %bit.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %memory_bm_set_bit.exit, label %do.body3.i, !prof !11

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr %bit.i, align 4
  %4 = load ptr, ptr %addr.i, align 4
  tail call void @_set_bit(i32 noundef %3, ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  br label %if.end

if.end:                                           ; preds = %memory_bm_set_bit.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swsusp_unset_page_free(ptr noundef %page) local_unnamed_addr #3 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %bit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @free_pages_map, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #15
  store i32 -1, ptr %bit.i, align 4, !annotation !10
  %call.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %0, i32 noundef %add, ptr noundef nonnull %addr.i, ptr noundef nonnull %bit.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %memory_bm_clear_bit.exit, label %do.body3.i, !prof !11

do.body3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr %bit.i, align 4
  %4 = load ptr, ptr %addr.i, align 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  br label %if.end

if.end:                                           ; preds = %memory_bm_clear_bit.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swsusp_page_is_forbidden(ptr noundef %page) local_unnamed_addr #3 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %bit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #15
  store i32 -1, ptr %bit.i, align 4, !annotation !10
  %call.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %0, i32 noundef %add, ptr noundef nonnull %addr.i, ptr noundef nonnull %bit.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %memory_bm_test_bit.exit, label %do.body3.i, !prof !11

do.body3.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

memory_bm_test_bit.exit:                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr %bit.i, align 4
  %4 = load ptr, ptr %addr.i, align 4
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %4, i32 %div3.i.i
  %5 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %3, 31
  %shr.i.i = lshr i32 %5, %and.i.i
  %and1.i.i = and i32 %shr.i.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  br label %cond.end

cond.end:                                         ; preds = %memory_bm_test_bit.exit, %entry.cond.end_crit_edge
  %cond = phi i32 [ %and1.i.i, %memory_bm_test_bit.exit ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @create_basic_memory_bitmaps() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool = icmp ne ptr %0, null
  %1 = load ptr, ptr @free_pages_map, align 4
  %tobool1 = icmp ne ptr %1, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = select i1 %tobool, i1 true, i1 %tobool1, !prof !15
  br i1 %2, label %do.body7, label %if.end13, !prof !15

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1113, 0\0A.popsection", ""() #15, !srcloc !16
  unreachable

if.end13:                                         ; preds = %do.body
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #20
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call17 = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull %call7.i.i, i32 noundef 3264, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.Free_first_object_crit_edge

if.end16.Free_first_object_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %Free_first_object

if.end20:                                         ; preds = %if.end16
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 28) #20
  %tobool22.not = icmp eq ptr %call7.i.i54, null
  br i1 %tobool22.not, label %if.end20.Free_first_bitmap_crit_edge, label %if.end24

if.end20.Free_first_bitmap_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %Free_first_bitmap

if.end24:                                         ; preds = %if.end20
  %call25 = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull %call7.i.i54, i32 noundef 3264, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %Free_second_object

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i, ptr @forbidden_pages_map, align 4
  store ptr %call7.i.i54, ptr @free_pages_map, align 4
  tail call fastcc void @mark_nosave_pages(ptr noundef nonnull %call7.i.i) #21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @create_basic_memory_bitmaps.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@create_basic_memory_bitmaps, %cleanup)) #15
          to label %if.then40 [label %cleanup], !srcloc !17

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @create_basic_memory_bitmaps.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.6) #17
  br label %cleanup

Free_second_object:                               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i54) #17
  br label %Free_first_bitmap

Free_first_bitmap:                                ; preds = %Free_second_object, %if.end20.Free_first_bitmap_crit_edge
  %zone.014.i = load ptr, ptr %call7.i.i, align 8
  %cmp.not15.i = icmp eq ptr %zone.014.i, %call7.i.i
  br i1 %cmp.not15.i, label %Free_first_bitmap.for.end.i_crit_edge, label %Free_first_bitmap.for.body.i_crit_edge

Free_first_bitmap.for.body.i_crit_edge:           ; preds = %Free_first_bitmap
  br label %for.body.i

Free_first_bitmap.for.end.i_crit_edge:            ; preds = %Free_first_bitmap
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %free_zone_bm_rtree.exit.i.for.body.i_crit_edge, %Free_first_bitmap.for.body.i_crit_edge
  %zone.016.i = phi ptr [ %zone.0.i, %free_zone_bm_rtree.exit.i.for.body.i_crit_edge ], [ %zone.014.i, %Free_first_bitmap.for.body.i_crit_edge ]
  %nodes.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i, i32 0, i32 1
  %node.034.i.i = load ptr, ptr %nodes.i.i, align 4
  %cmp.not35.i.i = icmp eq ptr %node.034.i.i, %nodes.i.i
  br i1 %cmp.not35.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %node.036.i.i = phi ptr [ %node.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %node.034.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i, i32 0, i32 1
  %5 = load ptr, ptr %data.i.i, align 4
  tail call fastcc void @free_image_page(ptr noundef %5, i32 noundef 1) #17
  %node.0.i.i = load ptr, ptr %node.036.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %nodes.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %leaves.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i, i32 0, i32 2
  %node.137.i.i = load ptr, ptr %leaves.i.i, align 4
  %cmp14.not38.i.i = icmp eq ptr %node.137.i.i, %leaves.i.i
  br i1 %cmp14.not38.i.i, label %for.end.i.i.free_zone_bm_rtree.exit.i_crit_edge, label %for.end.i.i.for.body16.i.i_crit_edge

for.end.i.i.for.body16.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body16.i.i

for.end.i.i.free_zone_bm_rtree.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.end.i.i.for.body16.i.i_crit_edge
  %node.139.i.i = phi ptr [ %node.1.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ %node.137.i.i, %for.end.i.i.for.body16.i.i_crit_edge ]
  %data17.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i, i32 0, i32 1
  %6 = load ptr, ptr %data17.i.i, align 4
  tail call fastcc void @free_image_page(ptr noundef %6, i32 noundef 1) #17
  %node.1.i.i = load ptr, ptr %node.139.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %node.1.i.i, %leaves.i.i
  br i1 %cmp14.not.i.i, label %for.body16.i.i.free_zone_bm_rtree.exit.i_crit_edge, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i

for.body16.i.i.free_zone_bm_rtree.exit.i_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i

free_zone_bm_rtree.exit.i:                        ; preds = %for.body16.i.i.free_zone_bm_rtree.exit.i_crit_edge, %for.end.i.i.free_zone_bm_rtree.exit.i_crit_edge
  %zone.0.i = load ptr, ptr %zone.016.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %call7.i.i
  br i1 %cmp.not.i, label %free_zone_bm_rtree.exit.i.for.end.i_crit_edge, label %free_zone_bm_rtree.exit.i.for.body.i_crit_edge

free_zone_bm_rtree.exit.i.for.body.i_crit_edge:   ; preds = %free_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

free_zone_bm_rtree.exit.i.for.end.i_crit_edge:    ; preds = %free_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %free_zone_bm_rtree.exit.i.for.end.i_crit_edge, %Free_first_bitmap.for.end.i_crit_edge
  %p_list.i = getelementptr inbounds %struct.memory_bitmap, ptr %call7.i.i, i32 0, i32 1
  %7 = load ptr, ptr %p_list.i, align 8
  %tobool.not3.i.i = icmp eq ptr %7, null
  br i1 %tobool.not3.i.i, label %for.end.i.memory_bm_free.exit_crit_edge, label %for.end.i.while.body.i.i_crit_edge

for.end.i.while.body.i.i_crit_edge:               ; preds = %for.end.i
  br label %while.body.i.i

for.end.i.memory_bm_free.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.end.i.while.body.i.i_crit_edge
  %list.addr.04.i.i = phi ptr [ %8, %while.body.i.i.while.body.i.i_crit_edge ], [ %7, %for.end.i.while.body.i.i_crit_edge ]
  %8 = load ptr, ptr %list.addr.04.i.i, align 1
  tail call fastcc void @free_image_page(ptr noundef nonnull %list.addr.04.i.i, i32 noundef 1) #17
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %while.body.i.i.memory_bm_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.memory_bm_free.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit

memory_bm_free.exit:                              ; preds = %while.body.i.i.memory_bm_free.exit_crit_edge, %for.end.i.memory_bm_free.exit_crit_edge
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  br label %Free_first_object

Free_first_object:                                ; preds = %memory_bm_free.exit, %if.end16.Free_first_object_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %Free_first_object, %if.then40, %if.end28, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %Free_first_object ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memory_bm_create(ptr noundef %bm, i32 noundef %gfp_mask, i32 noundef %safe_needed) unnamed_addr #3 align 64 {
entry:
  %ca = alloca %struct.chain_allocator, align 4
  %mem_extents = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ca) #15
  %0 = getelementptr inbounds %struct.chain_allocator, ptr %ca, i32 0, i32 1
  %1 = getelementptr inbounds %struct.chain_allocator, ptr %ca, i32 0, i32 2
  %2 = getelementptr inbounds %struct.chain_allocator, ptr %ca, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mem_extents) #15
  %3 = getelementptr inbounds %struct.list_head, ptr %mem_extents, i32 0, i32 1
  store ptr null, ptr %ca, align 4
  store i32 4092, ptr %0, align 4
  store i32 %gfp_mask, ptr %1, align 4
  store i32 %safe_needed, ptr %2, align 4
  store volatile ptr %bm, ptr %bm, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %bm, i32 0, i32 1
  store ptr %bm, ptr %prev.i, align 4
  store volatile ptr %mem_extents, ptr %mem_extents, align 4
  store ptr %mem_extents, ptr %3, align 4
  %call.i = call ptr @first_online_pgdat() #17
  %tobool.not135.i = icmp eq ptr %call.i, null
  br i1 %tobool.not135.i, label %entry.create_mem_extents.exit_crit_edge, label %for.body.lr.ph.i

entry.create_mem_extents.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %create_mem_extents.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %or.i.i = or i32 %gfp_mask, 256
  %and.i.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %and2.i.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  %and6.i.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  %spec.select.i = select i1 %tobool3.not.i.i.i.i, i32 %..i.i.i.i, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc74.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %zone.0136.i = phi ptr [ %call.i, %for.body.lr.ph.i ], [ %call75.i, %for.inc74.i.for.body.i_crit_edge ]
  %present_pages.i.i = getelementptr inbounds %struct.zone, ptr %zone.0136.i, i32 0, i32 13
  %4 = load i32, ptr %present_pages.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc74.i_crit_edge, label %if.else.i

for.body.i.for.inc74.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

if.else.i:                                        ; preds = %for.body.i
  %zone_start_pfn.i = getelementptr inbounds %struct.zone, ptr %zone.0136.i, i32 0, i32 10
  %5 = load i32, ptr %zone_start_pfn.i, align 4
  %spanned_pages.i.i = getelementptr inbounds %struct.zone, ptr %zone.0136.i, i32 0, i32 12
  %6 = load i32, ptr %spanned_pages.i.i, align 4
  %add.i.i = add i32 %6, %5
  br label %for.cond3.i

for.cond3.i:                                      ; preds = %for.body4.i.for.cond3.i_crit_edge, %if.else.i
  %ext.0.in.i = phi ptr [ %mem_extents, %if.else.i ], [ %ext.0.i, %for.body4.i.for.cond3.i_crit_edge ]
  %ext.0.i = load ptr, ptr %ext.0.in.i, align 4
  %cmp.i = icmp eq ptr %ext.0.i, %mem_extents
  br i1 %cmp.i, label %for.cond3.i.if.then15.i_crit_edge, label %for.body4.i

for.cond3.i.if.then15.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i

for.body4.i:                                      ; preds = %for.cond3.i
  %end.i = getelementptr inbounds %struct.mem_extent, ptr %ext.0.i, i32 0, i32 2
  %7 = load i32, ptr %end.i, align 4
  %cmp5.not.i = icmp ugt i32 %5, %7
  br i1 %cmp5.not.i, label %for.body4.i.for.cond3.i_crit_edge, label %lor.lhs.false.critedge.i

for.body4.i.for.cond3.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond3.i

lor.lhs.false.critedge.i:                         ; preds = %for.body4.i
  %end.i.le = getelementptr inbounds %struct.mem_extent, ptr %ext.0.i, i32 0, i32 2
  %start.i = getelementptr inbounds %struct.mem_extent, ptr %ext.0.i, i32 0, i32 1
  %8 = load i32, ptr %start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %8)
  %cmp14.i = icmp ult i32 %add.i.i, %8
  br i1 %cmp14.i, label %lor.lhs.false.critedge.i.if.then15.i_crit_edge, label %if.end24.i

lor.lhs.false.critedge.i.if.then15.i_crit_edge:   ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then15.i

if.then15.i:                                      ; preds = %lor.lhs.false.critedge.i.if.then15.i_crit_edge, %for.cond3.i.if.then15.i_crit_edge
  %ext.0140.i = phi ptr [ %ext.0.i, %lor.lhs.false.critedge.i.if.then15.i_crit_edge ], [ %mem_extents, %for.cond3.i.if.then15.i_crit_edge ]
  br i1 %cmp.i.i.i.i, label %if.then15.i.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !11

if.then15.i.kzalloc.exit.i_crit_edge:             ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end.i.i.i.i, %if.then15.i.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %if.then15.i.kzalloc.exit.i_crit_edge ], [ %spec.select.i, %if.end.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 7
  %9 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef %or.i.i, i32 noundef 16) #20
  %tobool17.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end19.i

if.then18.i:                                      ; preds = %kzalloc.exit.i
  %10 = load ptr, ptr %mem_extents, align 4
  %cmp.not17.i.i = icmp eq ptr %10, %mem_extents
  br i1 %cmp.not17.i.i, label %if.then18.i.cleanup13_crit_edge, label %if.then18.i.for.body.i.i_crit_edge

if.then18.i.for.body.i.i_crit_edge:               ; preds = %if.then18.i
  br label %for.body.i.i

if.then18.i.cleanup13_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup13

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %if.then18.i.for.body.i.i_crit_edge
  %ext.018.i.i = phi ptr [ %aux.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %10, %if.then18.i.for.body.i.i_crit_edge ]
  %aux.0.i.i = load ptr, ptr %ext.018.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %ext.018.i.i) #17
  br i1 %call.i.i.i.i, label %if.end.i.i.i119.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i.i

if.end.i.i.i119.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %ext.018.i.i, i32 0, i32 1
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = load ptr, ptr %ext.018.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  store volatile ptr %12, ptr %11, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i119.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr %ext.018.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ext.018.i.i, i32 0, i32 1
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %ext.018.i.i) #17
  %cmp.not.i.i = icmp eq ptr %aux.0.i.i, %mem_extents
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.cleanup13_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

list_del.exit.i.i.cleanup13_crit_edge:            ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup13

if.end19.i:                                       ; preds = %kzalloc.exit.i
  %start20.i = getelementptr inbounds %struct.mem_extent, ptr %call7.i.i.i, i32 0, i32 1
  store i32 %5, ptr %start20.i, align 8
  %end21.i = getelementptr inbounds %struct.mem_extent, ptr %call7.i.i.i, i32 0, i32 2
  store i32 %add.i.i, ptr %end21.i, align 4
  %prev.i120.i = getelementptr inbounds %struct.list_head, ptr %ext.0140.i, i32 0, i32 1
  %13 = load ptr, ptr %prev.i120.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %13, ptr noundef %ext.0140.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end19.i.for.inc74.i_crit_edge

if.end19.i.for.inc74.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

if.end.i.i.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i.i, ptr %prev.i120.i, align 4
  store ptr %ext.0140.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  store ptr %13, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr %13, align 4
  br label %for.inc74.i

if.end24.i:                                       ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp26.i = icmp ult i32 %5, %8
  br i1 %cmp26.i, label %if.then27.i, label %if.end24.i.if.end29.i_crit_edge

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %5, ptr %start.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end29.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %7)
  %cmp31.i = icmp ugt i32 %add.i.i, %7
  br i1 %cmp31.i, label %if.then32.i, label %if.end29.i.if.end34.i_crit_edge

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %add.i.i, ptr %end.i.le, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end34.i_crit_edge
  %14 = load ptr, ptr %ext.0.i, align 4
  %cmp47.not131.i = icmp eq ptr %14, %mem_extents
  br i1 %cmp47.not131.i, label %if.end34.i.for.inc74.i_crit_edge, label %if.end34.i.for.body49.i_crit_edge

if.end34.i.for.body49.i_crit_edge:                ; preds = %if.end34.i
  br label %for.body49.i

if.end34.i.for.inc74.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

for.body49.i:                                     ; preds = %list_del.exit.i.for.body49.i_crit_edge, %if.end34.i.for.body49.i_crit_edge
  %cur.0132.i = phi ptr [ %aux.0134.i, %list_del.exit.i.for.body49.i_crit_edge ], [ %14, %if.end34.i.for.body49.i_crit_edge ]
  %aux.0134.i = load ptr, ptr %cur.0132.i, align 4
  %start50.i = getelementptr inbounds %struct.mem_extent, ptr %cur.0132.i, i32 0, i32 1
  %15 = load i32, ptr %start50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %15)
  %cmp51.i = icmp ult i32 %add.i.i, %15
  br i1 %cmp51.i, label %for.body49.i.for.inc74.i_crit_edge, label %if.end53.i

for.body49.i.for.inc74.i_crit_edge:               ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

if.end53.i:                                       ; preds = %for.body49.i
  %end54.i = getelementptr inbounds %struct.mem_extent, ptr %cur.0132.i, i32 0, i32 2
  %16 = load i32, ptr %end54.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %16)
  %cmp55.i = icmp ult i32 %add.i.i, %16
  br i1 %cmp55.i, label %if.then56.i, label %if.end53.i.if.end59.i_crit_edge

if.end53.i.if.end59.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  store i32 %16, ptr %end.i.le, align 4
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end59.i_crit_edge
  %call.i.i121.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.0132.i) #17
  br i1 %call.i.i121.i, label %if.end.i.i123.i, label %if.end59.i.list_del.exit.i_crit_edge

if.end59.i.list_del.exit.i_crit_edge:             ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i

if.end.i.i123.i:                                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i122.i = getelementptr inbounds %struct.list_head, ptr %cur.0132.i, i32 0, i32 1
  %17 = load ptr, ptr %prev.i.i122.i, align 4
  %18 = load ptr, ptr %cur.0132.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  store volatile ptr %18, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i123.i, %if.end59.i.list_del.exit.i_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr %cur.0132.i, align 4
  %prev.i124.i = getelementptr inbounds %struct.list_head, ptr %cur.0132.i, i32 0, i32 1
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i124.i, align 4
  call void @kfree(ptr noundef %cur.0132.i) #17
  %cmp47.not.i = icmp eq ptr %aux.0134.i, %mem_extents
  br i1 %cmp47.not.i, label %list_del.exit.i.for.inc74.i_crit_edge, label %list_del.exit.i.for.body49.i_crit_edge

list_del.exit.i.for.body49.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body49.i

list_del.exit.i.for.inc74.i_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc74.i

for.inc74.i:                                      ; preds = %list_del.exit.i.for.inc74.i_crit_edge, %for.body49.i.for.inc74.i_crit_edge, %if.end34.i.for.inc74.i_crit_edge, %if.end.i.i.i, %if.end19.i.for.inc74.i_crit_edge, %for.body.i.for.inc74.i_crit_edge
  %call75.i = call ptr @next_zone(ptr noundef nonnull %zone.0136.i) #17
  %tobool.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool.not.i, label %for.inc74.i.create_mem_extents.exit_crit_edge, label %for.inc74.i.for.body.i_crit_edge

for.inc74.i.for.body.i_crit_edge:                 ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc74.i.create_mem_extents.exit_crit_edge:    ; preds = %for.inc74.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %create_mem_extents.exit

create_mem_extents.exit:                          ; preds = %for.inc74.i.create_mem_extents.exit_crit_edge, %entry.create_mem_extents.exit_crit_edge
  %ext.092 = load ptr, ptr %mem_extents, align 4
  %cmp.not93 = icmp eq ptr %ext.092, %mem_extents
  br i1 %cmp.not93, label %create_mem_extents.exit.for.end_crit_edge, label %create_mem_extents.exit.for.body_crit_edge

create_mem_extents.exit.for.body_crit_edge:       ; preds = %create_mem_extents.exit
  br label %for.body

create_mem_extents.exit.for.end_crit_edge:        ; preds = %create_mem_extents.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %create_mem_extents.exit.for.body_crit_edge
  %19 = phi i32 [ %.pre, %cleanup.for.body_crit_edge ], [ 4092, %create_mem_extents.exit.for.body_crit_edge ]
  %ext.094 = phi ptr [ %ext.0, %cleanup.for.body_crit_edge ], [ %ext.092, %create_mem_extents.exit.for.body_crit_edge ]
  %start = getelementptr inbounds %struct.mem_extent, ptr %ext.094, i32 0, i32 1
  %20 = load i32, ptr %start, align 4
  %end = getelementptr inbounds %struct.mem_extent, ptr %ext.094, i32 0, i32 2
  %21 = load i32, ptr %end, align 4
  %22 = add i32 %19, -4049
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %22)
  %cmp.i.i = icmp ult i32 %22, 44
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i.i = load ptr, ptr %ca, align 4
  br label %chain_alloc.exit.i

if.then.i.i:                                      ; preds = %for.body
  %23 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then.i.i
  %24 = load ptr, ptr @safe_pages_list, align 4
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge, label %cond.end.thread.i.i

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.end.thread.i.i:                              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = load ptr, ptr %24, align 1
  store ptr %25, ptr @safe_pages_list, align 4
  %call.i.i.i31 = call ptr @__memset(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 4096) #17
  br label %if.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i.cond.end.i.i_crit_edge, %if.then.i.i.cond.end.i.i_crit_edge
  %.sink48.i = phi i32 [ 1, %cond.true.i.i.cond.end.i.i_crit_edge ], [ 0, %if.then.i.i.cond.end.i.i_crit_edge ]
  %26 = load i32, ptr %1, align 4
  %call2.i.i = call fastcc ptr @get_image_page(i32 noundef %26, i32 noundef %.sink48.i) #17
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %cond.end.i.i.Error_crit_edge, label %cond.end.i.i.if.end.i.i_crit_edge

cond.end.i.i.if.end.i.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

cond.end.i.i.Error_crit_edge:                     ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %Error

if.end.i.i:                                       ; preds = %cond.end.i.i.if.end.i.i_crit_edge, %cond.end.thread.i.i
  %cond27.i.i = phi ptr [ %24, %cond.end.thread.i.i ], [ %call2.i.i, %cond.end.i.i.if.end.i.i_crit_edge ]
  %27 = load ptr, ptr %ca, align 4
  store ptr %27, ptr %cond27.i.i, align 1
  store ptr %cond27.i.i, ptr %ca, align 4
  br label %chain_alloc.exit.i

chain_alloc.exit.i:                               ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %28 = phi i32 [ %19, %entry.if.end7_crit_edge.i.i ], [ 0, %if.end.i.i ]
  %29 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %cond27.i.i, %if.end.i.i ]
  %data.i.i = getelementptr inbounds %struct.linked_page, ptr %29, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %28
  %add.i.i32 = add i32 %28, 44
  store i32 %add.i.i32, ptr %0, align 4
  %tobool.not.i33 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i33, label %chain_alloc.exit.i.Error_crit_edge, label %if.end.i

chain_alloc.exit.i.Error_crit_edge:               ; preds = %chain_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %Error

if.end.i:                                         ; preds = %chain_alloc.exit.i
  %nodes.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 1
  store volatile ptr %nodes.i, ptr %nodes.i, align 4
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %nodes.i, i32 0, i32 1
  store ptr %nodes.i, ptr %prev.i.i34, align 4
  %leaves.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 2
  store volatile ptr %leaves.i, ptr %leaves.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.list_head, ptr %leaves.i, i32 0, i32 1
  store ptr %leaves.i, ptr %prev.i21.i, align 4
  %start_pfn.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 3
  store i32 %20, ptr %start_pfn.i, align 4
  %end_pfn.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 4
  store i32 %21, ptr %end_pfn.i, align 4
  %sub.i = sub i32 32767, %20
  %sub1.i = add i32 %sub.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %sub1.i)
  %cmp40.not.i = icmp ult i32 %sub1.i, 32768
  br i1 %cmp40.not.i, label %if.end.i.if.end4_crit_edge, label %for.body.lr.ph.i35

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

for.body.lr.ph.i35:                               ; preds = %if.end.i
  %div20.i = lshr i32 %sub1.i, 15
  %blocks.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 7
  %levels.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 6
  %rtree.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %add.ptr.i.i, i32 0, i32 5
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.inc.i.for.body.i36_crit_edge, %for.body.lr.ph.i35
  %i.041.i = phi i32 [ 0, %for.body.lr.ph.i35 ], [ %inc.i, %for.inc.i.for.body.i36_crit_edge ]
  %30 = load i32, ptr %blocks.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not79.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not79.i.i, label %for.body.i36.for.end.i.i_crit_edge, label %for.body.i36.while.body.i.i_crit_edge

for.body.i36.while.body.i.i_crit_edge:            ; preds = %for.body.i36
  br label %while.body.i.i

for.body.i36.for.end.i.i_crit_edge:               ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i36.while.body.i.i_crit_edge
  %block_nr.081.i.i = phi i32 [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %30, %for.body.i36.while.body.i.i_crit_edge ]
  %levels_needed.080.i.i = phi i32 [ %add.i22.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %for.body.i36.while.body.i.i_crit_edge ]
  %add.i22.i = add nuw nsw i32 %levels_needed.080.i.i, 1
  %shr.i.i = lshr i32 %block_nr.081.i.i, 10
  %tobool.not.i23.i = icmp ult i32 %block_nr.081.i.i, 1024
  br i1 %tobool.not.i23.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %31 = load i32, ptr %levels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %levels_needed.080.i.i)
  %cmp82.not.i.i = icmp ugt i32 %31, %levels_needed.080.i.i
  br i1 %cmp82.not.i.i, label %while.end.i.i.for.end.i.i_crit_edge, label %while.end.i.i.for.body.i.i37_crit_edge

while.end.i.i.for.body.i.i37_crit_edge:           ; preds = %while.end.i.i
  br label %for.body.i.i37

while.end.i.i.for.end.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i37:                                   ; preds = %if.end.i25.i.for.body.i.i37_crit_edge, %while.end.i.i.for.body.i.i37_crit_edge
  %i.083.i.i = phi i32 [ %inc.i.i, %if.end.i25.i.for.body.i.i37_crit_edge ], [ %31, %while.end.i.i.for.body.i.i37_crit_edge ]
  %call.i.i = call fastcc ptr @alloc_rtree_node(i32 noundef %gfp_mask, i32 noundef %safe_needed, ptr noundef nonnull %ca, ptr noundef %nodes.i) #17
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i.i, label %for.body.i.i37.if.then4.i_crit_edge, label %if.end.i25.i

for.body.i.i37.if.then4.i_crit_edge:              ; preds = %for.body.i.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.end.i25.i:                                     ; preds = %for.body.i.i37
  %32 = load ptr, ptr %rtree.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %data.i24.i = getelementptr inbounds %struct.rtree_node, ptr %call.i.i, i32 0, i32 1
  %34 = load ptr, ptr %data.i24.i, align 4
  store i32 %33, ptr %34, align 4
  store ptr %call.i.i, ptr %rtree.i.i, align 4
  %35 = load i32, ptr %levels.i.i, align 4
  %add4.i.i = add i32 %35, 1
  store i32 %add4.i.i, ptr %levels.i.i, align 4
  %inc.i.i = add nsw i32 %i.083.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.083.i.i, %levels_needed.080.i.i
  br i1 %exitcond.not.i.i, label %if.end.i25.i.for.end.i.i_crit_edge, label %if.end.i25.i.for.body.i.i37_crit_edge

if.end.i25.i.for.body.i.i37_crit_edge:            ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i37

if.end.i25.i.for.end.i.i_crit_edge:               ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i25.i.for.end.i.i_crit_edge, %while.end.i.i.for.end.i.i_crit_edge, %for.body.i36.for.end.i.i_crit_edge
  %call5.i.i = call fastcc ptr @alloc_rtree_node(i32 noundef %gfp_mask, i32 noundef %safe_needed, ptr noundef nonnull %ca, ptr noundef %leaves.i) #17
  %tobool6.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not.i.i, label %for.end.i.i.if.then4.i_crit_edge, label %if.end8.i.i

for.end.i.i.if.then4.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.end8.i.i:                                      ; preds = %for.end.i.i
  %36 = load i32, ptr %blocks.i.i, align 4
  %37 = load i32, ptr %levels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1484.i.i = icmp sgt i32 %37, 0
  br i1 %cmp1484.i.i, label %if.end8.i.i.for.body15.i.i_crit_edge, label %if.end8.i.i.for.inc.i_crit_edge

if.end8.i.i.for.inc.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end8.i.i.for.body15.i.i_crit_edge:             ; preds = %if.end8.i.i
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.inc27.i.i.for.body15.i.i_crit_edge, %if.end8.i.i.for.body15.i.i_crit_edge
  %i.187.i.i = phi i32 [ %dec.i.i, %for.inc27.i.i.for.body15.i.i_crit_edge ], [ %37, %if.end8.i.i.for.body15.i.i_crit_edge ]
  %dst.085.i.i = phi ptr [ %arrayidx26.i.i, %for.inc27.i.i.for.body15.i.i_crit_edge ], [ %rtree.i.i, %if.end8.i.i.for.body15.i.i_crit_edge ]
  %node.0.i.i = load ptr, ptr %dst.085.i.i, align 4
  %tobool16.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %for.body15.i.i.for.inc27.i.i_crit_edge

for.body15.i.i.for.inc27.i.i_crit_edge:           ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc27.i.i

if.then17.i.i:                                    ; preds = %for.body15.i.i
  %call19.i.i = call fastcc ptr @alloc_rtree_node(i32 noundef %gfp_mask, i32 noundef %safe_needed, ptr noundef nonnull %ca, ptr noundef %nodes.i) #17
  %tobool20.not.i.i = icmp eq ptr %call19.i.i, null
  br i1 %tobool20.not.i.i, label %if.then17.i.i.if.then4.i_crit_edge, label %if.end22.i.i

if.then17.i.i.if.then4.i_crit_edge:               ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i

if.end22.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call19.i.i, ptr %dst.085.i.i, align 4
  br label %for.inc27.i.i

for.inc27.i.i:                                    ; preds = %if.end22.i.i, %for.body15.i.i.for.inc27.i.i_crit_edge
  %38 = phi ptr [ %node.0.i.i, %for.body15.i.i.for.inc27.i.i_crit_edge ], [ %call19.i.i, %if.end22.i.i ]
  %39 = mul i32 %i.187.i.i, 10
  %mul.i.i = add i32 %39, -10
  %shr24.i.i = lshr i32 %36, %mul.i.i
  %and.i.i = and i32 %shr24.i.i, 1023
  %data25.i.i = getelementptr inbounds %struct.rtree_node, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %data25.i.i, align 4
  %arrayidx26.i.i = getelementptr i32, ptr %40, i32 %and.i.i
  %dec.i.i = add nsw i32 %i.187.i.i, -1
  %cmp14.i.i = icmp sgt i32 %i.187.i.i, 1
  br i1 %cmp14.i.i, label %for.inc27.i.i.for.body15.i.i_crit_edge, label %for.end28.loopexit.i.i

for.inc27.i.i.for.body15.i.i_crit_edge:           ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body15.i.i

for.end28.loopexit.i.i:                           ; preds = %for.inc27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i26.i = load i32, ptr %blocks.i.i, align 4
  br label %for.inc.i

if.then4.i:                                       ; preds = %if.then17.i.i.if.then4.i_crit_edge, %for.end.i.i.if.then4.i_crit_edge, %for.body.i.i37.if.then4.i_crit_edge
  %node.034.i.i = load ptr, ptr %nodes.i, align 4
  %cmp.not35.i.i = icmp eq ptr %node.034.i.i, %nodes.i
  br i1 %cmp.not35.i.i, label %if.then4.i.for.end.i32.i_crit_edge, label %if.then4.i.for.body.i30.i_crit_edge

if.then4.i.for.body.i30.i_crit_edge:              ; preds = %if.then4.i
  br label %for.body.i30.i

if.then4.i.for.end.i32.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i32.i

for.body.i30.i:                                   ; preds = %for.body.i30.i.for.body.i30.i_crit_edge, %if.then4.i.for.body.i30.i_crit_edge
  %node.036.i.i = phi ptr [ %node.0.i29.i, %for.body.i30.i.for.body.i30.i_crit_edge ], [ %node.034.i.i, %if.then4.i.for.body.i30.i_crit_edge ]
  %data.i28.i = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i, i32 0, i32 1
  %41 = load ptr, ptr %data.i28.i, align 4
  call fastcc void @free_image_page(ptr noundef %41, i32 noundef 1) #17
  %node.0.i29.i = load ptr, ptr %node.036.i.i, align 4
  %cmp.not.i.i38 = icmp eq ptr %node.0.i29.i, %nodes.i
  br i1 %cmp.not.i.i38, label %for.body.i30.i.for.end.i32.i_crit_edge, label %for.body.i30.i.for.body.i30.i_crit_edge

for.body.i30.i.for.body.i30.i_crit_edge:          ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i30.i

for.body.i30.i.for.end.i32.i_crit_edge:           ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i32.i

for.end.i32.i:                                    ; preds = %for.body.i30.i.for.end.i32.i_crit_edge, %if.then4.i.for.end.i32.i_crit_edge
  %node.137.i.i = load ptr, ptr %leaves.i, align 4
  %cmp14.not38.i.i = icmp eq ptr %node.137.i.i, %leaves.i
  br i1 %cmp14.not38.i.i, label %for.end.i32.i.Error_crit_edge, label %for.end.i32.i.for.body16.i.i_crit_edge

for.end.i32.i.for.body16.i.i_crit_edge:           ; preds = %for.end.i32.i
  br label %for.body16.i.i

for.end.i32.i.Error_crit_edge:                    ; preds = %for.end.i32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %Error

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.end.i32.i.for.body16.i.i_crit_edge
  %node.139.i.i = phi ptr [ %node.1.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ %node.137.i.i, %for.end.i32.i.for.body16.i.i_crit_edge ]
  %data17.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i, i32 0, i32 1
  %42 = load ptr, ptr %data17.i.i, align 4
  call fastcc void @free_image_page(ptr noundef %42, i32 noundef 1) #17
  %node.1.i.i = load ptr, ptr %node.139.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %node.1.i.i, %leaves.i
  br i1 %cmp14.not.i.i, label %for.body16.i.i.Error_crit_edge, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i

for.body16.i.i.Error_crit_edge:                   ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %Error

for.inc.i:                                        ; preds = %for.end28.loopexit.i.i, %if.end8.i.i.for.inc.i_crit_edge
  %43 = phi i32 [ %36, %if.end8.i.i.for.inc.i_crit_edge ], [ %.pre.i26.i, %for.end28.loopexit.i.i ]
  %dst.0.lcssa.i.i = phi ptr [ %rtree.i.i, %if.end8.i.i.for.inc.i_crit_edge ], [ %arrayidx26.i.i, %for.end28.loopexit.i.i ]
  %add30.i.i = add i32 %43, 1
  store i32 %add30.i.i, ptr %blocks.i.i, align 4
  store ptr %call5.i.i, ptr %dst.0.lcssa.i.i, align 4
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div20.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i36_crit_edge

for.inc.i.for.body.i36_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i36

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %44 = load ptr, ptr %prev.i, align 4
  %call.i.i40 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %add.ptr.i.i, ptr noundef %44, ptr noundef %bm) #17
  br i1 %call.i.i40, label %if.end.i.i41, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i41:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %add.ptr.i.i, ptr %prev.i, align 4
  store ptr %bm, ptr %add.ptr.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %add.ptr.i.i, i32 0, i32 1
  store ptr %44, ptr %prev3.i.i, align 4
  store volatile ptr %add.ptr.i.i, ptr %44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i41, %if.end4.cleanup_crit_edge
  %ext.0 = load ptr, ptr %ext.094, align 4
  %cmp.not = icmp eq ptr %ext.0, %mem_extents
  br i1 %cmp.not, label %for.end.loopexit, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = load i32, ptr %0, align 4
  br label %for.body

for.end.loopexit:                                 ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  %.pre108 = load ptr, ptr %ca, align 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %create_mem_extents.exit.for.end_crit_edge
  %45 = phi ptr [ %.pre108, %for.end.loopexit ], [ null, %create_mem_extents.exit.for.end_crit_edge ]
  %p_list = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 1
  store ptr %45, ptr %p_list, align 4
  %46 = load ptr, ptr %bm, align 4
  %cur.i = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2
  store ptr %46, ptr %cur.i, align 4
  %leaves.i42 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %leaves.i42, align 4
  %node.i = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 1
  store ptr %47, ptr %node.i, align 4
  %node_pfn.i = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 2
  store i32 0, ptr %node_pfn.i, align 4
  %node_bit.i = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 3
  store i32 0, ptr %node_bit.i, align 4
  br label %Exit

Exit:                                             ; preds = %memory_bm_free.exit, %for.end
  %error.2 = phi i32 [ -12, %memory_bm_free.exit ], [ 0, %for.end ]
  %48 = load ptr, ptr %mem_extents, align 4
  %cmp.not17.i = icmp eq ptr %48, %mem_extents
  br i1 %cmp.not17.i, label %Exit.cleanup13_crit_edge, label %Exit.for.body.i44_crit_edge

Exit.for.body.i44_crit_edge:                      ; preds = %Exit
  br label %for.body.i44

Exit.cleanup13_crit_edge:                         ; preds = %Exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup13

for.body.i44:                                     ; preds = %list_del.exit.i49.for.body.i44_crit_edge, %Exit.for.body.i44_crit_edge
  %ext.018.i = phi ptr [ %aux.0.i, %list_del.exit.i49.for.body.i44_crit_edge ], [ %48, %Exit.for.body.i44_crit_edge ]
  %aux.0.i = load ptr, ptr %ext.018.i, align 4
  %call.i.i.i43 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ext.018.i) #17
  br i1 %call.i.i.i43, label %if.end.i.i.i47, label %for.body.i44.list_del.exit.i49_crit_edge

for.body.i44.list_del.exit.i49_crit_edge:         ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit.i49

if.end.i.i.i47:                                   ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %ext.018.i, i32 0, i32 1
  %49 = load ptr, ptr %prev.i.i.i45, align 4
  %50 = load ptr, ptr %ext.018.i, align 4
  %prev1.i.i.i.i46 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %prev1.i.i.i.i46, align 4
  store volatile ptr %50, ptr %49, align 4
  br label %list_del.exit.i49

list_del.exit.i49:                                ; preds = %if.end.i.i.i47, %for.body.i44.list_del.exit.i49_crit_edge
  store ptr inttoptr (i32 256 to ptr), ptr %ext.018.i, align 4
  %prev.i.i48 = getelementptr inbounds %struct.list_head, ptr %ext.018.i, i32 0, i32 1
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i48, align 4
  call void @kfree(ptr noundef %ext.018.i) #17
  %cmp.not.i = icmp eq ptr %aux.0.i, %mem_extents
  br i1 %cmp.not.i, label %list_del.exit.i49.cleanup13_crit_edge, label %list_del.exit.i49.for.body.i44_crit_edge

list_del.exit.i49.for.body.i44_crit_edge:         ; preds = %list_del.exit.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i44

list_del.exit.i49.cleanup13_crit_edge:            ; preds = %list_del.exit.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup13

Error:                                            ; preds = %for.body16.i.i.Error_crit_edge, %for.end.i32.i.Error_crit_edge, %chain_alloc.exit.i.Error_crit_edge, %cond.end.i.i.Error_crit_edge
  %51 = load ptr, ptr %ca, align 4
  %p_list12 = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 1
  store ptr %51, ptr %p_list12, align 4
  %zone.014.i = load ptr, ptr %bm, align 4
  %cmp.not15.i = icmp eq ptr %zone.014.i, %bm
  br i1 %cmp.not15.i, label %Error.for.end.i_crit_edge, label %Error.for.body.i52_crit_edge

Error.for.body.i52_crit_edge:                     ; preds = %Error
  br label %for.body.i52

Error.for.end.i_crit_edge:                        ; preds = %Error
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i52:                                     ; preds = %free_zone_bm_rtree.exit.i.for.body.i52_crit_edge, %Error.for.body.i52_crit_edge
  %zone.016.i = phi ptr [ %zone.0.i, %free_zone_bm_rtree.exit.i.for.body.i52_crit_edge ], [ %zone.014.i, %Error.for.body.i52_crit_edge ]
  %nodes.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i, i32 0, i32 1
  %node.034.i.i50 = load ptr, ptr %nodes.i.i, align 4
  %cmp.not35.i.i51 = icmp eq ptr %node.034.i.i50, %nodes.i.i
  br i1 %cmp.not35.i.i51, label %for.body.i52.for.end.i.i60_crit_edge, label %for.body.i52.for.body.i.i57_crit_edge

for.body.i52.for.body.i.i57_crit_edge:            ; preds = %for.body.i52
  br label %for.body.i.i57

for.body.i52.for.end.i.i60_crit_edge:             ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i60

for.body.i.i57:                                   ; preds = %for.body.i.i57.for.body.i.i57_crit_edge, %for.body.i52.for.body.i.i57_crit_edge
  %node.036.i.i53 = phi ptr [ %node.0.i.i55, %for.body.i.i57.for.body.i.i57_crit_edge ], [ %node.034.i.i50, %for.body.i52.for.body.i.i57_crit_edge ]
  %data.i.i54 = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i53, i32 0, i32 1
  %52 = load ptr, ptr %data.i.i54, align 4
  call fastcc void @free_image_page(ptr noundef %52, i32 noundef 1) #17
  %node.0.i.i55 = load ptr, ptr %node.036.i.i53, align 4
  %cmp.not.i.i56 = icmp eq ptr %node.0.i.i55, %nodes.i.i
  br i1 %cmp.not.i.i56, label %for.body.i.i57.for.end.i.i60_crit_edge, label %for.body.i.i57.for.body.i.i57_crit_edge

for.body.i.i57.for.body.i.i57_crit_edge:          ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i57

for.body.i.i57.for.end.i.i60_crit_edge:           ; preds = %for.body.i.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i60

for.end.i.i60:                                    ; preds = %for.body.i.i57.for.end.i.i60_crit_edge, %for.body.i52.for.end.i.i60_crit_edge
  %leaves.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i, i32 0, i32 2
  %node.137.i.i58 = load ptr, ptr %leaves.i.i, align 4
  %cmp14.not38.i.i59 = icmp eq ptr %node.137.i.i58, %leaves.i.i
  br i1 %cmp14.not38.i.i59, label %for.end.i.i60.free_zone_bm_rtree.exit.i_crit_edge, label %for.end.i.i60.for.body16.i.i65_crit_edge

for.end.i.i60.for.body16.i.i65_crit_edge:         ; preds = %for.end.i.i60
  br label %for.body16.i.i65

for.end.i.i60.free_zone_bm_rtree.exit.i_crit_edge: ; preds = %for.end.i.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i

for.body16.i.i65:                                 ; preds = %for.body16.i.i65.for.body16.i.i65_crit_edge, %for.end.i.i60.for.body16.i.i65_crit_edge
  %node.139.i.i61 = phi ptr [ %node.1.i.i63, %for.body16.i.i65.for.body16.i.i65_crit_edge ], [ %node.137.i.i58, %for.end.i.i60.for.body16.i.i65_crit_edge ]
  %data17.i.i62 = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i61, i32 0, i32 1
  %53 = load ptr, ptr %data17.i.i62, align 4
  call fastcc void @free_image_page(ptr noundef %53, i32 noundef 1) #17
  %node.1.i.i63 = load ptr, ptr %node.139.i.i61, align 4
  %cmp14.not.i.i64 = icmp eq ptr %node.1.i.i63, %leaves.i.i
  br i1 %cmp14.not.i.i64, label %for.body16.i.i65.free_zone_bm_rtree.exit.i_crit_edge, label %for.body16.i.i65.for.body16.i.i65_crit_edge

for.body16.i.i65.for.body16.i.i65_crit_edge:      ; preds = %for.body16.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i65

for.body16.i.i65.free_zone_bm_rtree.exit.i_crit_edge: ; preds = %for.body16.i.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i

free_zone_bm_rtree.exit.i:                        ; preds = %for.body16.i.i65.free_zone_bm_rtree.exit.i_crit_edge, %for.end.i.i60.free_zone_bm_rtree.exit.i_crit_edge
  %zone.0.i = load ptr, ptr %zone.016.i, align 4
  %cmp.not.i66 = icmp eq ptr %zone.0.i, %bm
  br i1 %cmp.not.i66, label %for.end.ithread-pre-split, label %free_zone_bm_rtree.exit.i.for.body.i52_crit_edge

free_zone_bm_rtree.exit.i.for.body.i52_crit_edge: ; preds = %free_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i52

for.end.ithread-pre-split:                        ; preds = %free_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pr = load ptr, ptr %p_list12, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.ithread-pre-split, %Error.for.end.i_crit_edge
  %54 = phi ptr [ %.pr, %for.end.ithread-pre-split ], [ %51, %Error.for.end.i_crit_edge ]
  %tobool.not3.i.i = icmp eq ptr %54, null
  br i1 %tobool.not3.i.i, label %for.end.i.memory_bm_free.exit_crit_edge, label %for.end.i.while.body.i.i68_crit_edge

for.end.i.while.body.i.i68_crit_edge:             ; preds = %for.end.i
  br label %while.body.i.i68

for.end.i.memory_bm_free.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit

while.body.i.i68:                                 ; preds = %while.body.i.i68.while.body.i.i68_crit_edge, %for.end.i.while.body.i.i68_crit_edge
  %list.addr.04.i.i = phi ptr [ %55, %while.body.i.i68.while.body.i.i68_crit_edge ], [ %54, %for.end.i.while.body.i.i68_crit_edge ]
  %55 = load ptr, ptr %list.addr.04.i.i, align 1
  call fastcc void @free_image_page(ptr noundef nonnull %list.addr.04.i.i, i32 noundef 1) #17
  %tobool.not.i.i67 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i67, label %while.body.i.i68.memory_bm_free.exit_crit_edge, label %while.body.i.i68.while.body.i.i68_crit_edge

while.body.i.i68.while.body.i.i68_crit_edge:      ; preds = %while.body.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i68

while.body.i.i68.memory_bm_free.exit_crit_edge:   ; preds = %while.body.i.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit

memory_bm_free.exit:                              ; preds = %while.body.i.i68.memory_bm_free.exit_crit_edge, %for.end.i.memory_bm_free.exit_crit_edge
  store volatile ptr %bm, ptr %bm, align 4
  store ptr %bm, ptr %prev.i, align 4
  br label %Exit

cleanup13:                                        ; preds = %list_del.exit.i49.cleanup13_crit_edge, %Exit.cleanup13_crit_edge, %list_del.exit.i.i.cleanup13_crit_edge, %if.then18.i.cleanup13_crit_edge
  %retval.0 = phi i32 [ %error.2, %Exit.cleanup13_crit_edge ], [ -12, %if.then18.i.cleanup13_crit_edge ], [ %error.2, %list_del.exit.i49.cleanup13_crit_edge ], [ -12, %list_del.exit.i.i.cleanup13_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mem_extents) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ca) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mark_nosave_pages(ptr noundef %bm) unnamed_addr #3 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %bit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @nosave_regions, align 4
  %cmp.i.not = icmp eq ptr %0, @nosave_regions
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.condthread-pre-split:                         ; preds = %for.inc.for.condthread-pre-split_crit_edge, %do.end.for.condthread-pre-split_crit_edge
  %region.0.pr = load ptr, ptr %region.042, align 4
  %cmp.not = icmp eq ptr %region.0.pr, @nosave_regions
  br i1 %cmp.not, label %for.condthread-pre-split.cleanup_crit_edge, label %for.condthread-pre-split.for.body_crit_edge

for.condthread-pre-split.for.body_crit_edge:      ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.condthread-pre-split.cleanup_crit_edge:       ; preds = %for.condthread-pre-split
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.condthread-pre-split.for.body_crit_edge, %entry.for.body_crit_edge
  %region.042 = phi ptr [ %region.0.pr, %for.condthread-pre-split.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mark_nosave_pages.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mark_nosave_pages, %do.end)) #15
          to label %if.then8 [label %do.end], !srcloc !17

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %start_pfn = getelementptr inbounds %struct.nosave_region, ptr %region.042, i32 0, i32 1
  %1 = load i32, ptr %start_pfn, align 4
  %conv = zext i32 %1 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %end_pfn = getelementptr inbounds %struct.nosave_region, ptr %region.042, i32 0, i32 2
  %2 = load i32, ptr %end_pfn, align 4
  %conv9 = zext i32 %2 to i64
  %shl10 = shl nuw nsw i64 %conv9, 12
  %sub = add nsw i64 %shl10, -1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mark_nosave_pages.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.43, i64 noundef %shl, i64 noundef %sub) #17
  br label %do.end

do.end:                                           ; preds = %if.then8, %for.body
  %start_pfn12 = getelementptr inbounds %struct.nosave_region, ptr %region.042, i32 0, i32 1
  %3 = load i32, ptr %start_pfn12, align 4
  %end_pfn14 = getelementptr inbounds %struct.nosave_region, ptr %region.042, i32 0, i32 2
  %4 = load i32, ptr %end_pfn14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp1538 = icmp ult i32 %3, %4
  br i1 %cmp1538, label %do.end.for.body17_crit_edge, label %do.end.for.condthread-pre-split_crit_edge

do.end.for.condthread-pre-split_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.condthread-pre-split

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

for.body17:                                       ; preds = %for.inc.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %pfn.039 = phi i32 [ %inc, %for.inc.for.body17_crit_edge ], [ %3, %do.end.for.body17_crit_edge ]
  %call18 = tail call i32 @pfn_valid(i32 noundef %pfn.039) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.body17.for.inc_crit_edge, label %if.then20

for.body17.for.inc_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then20:                                        ; preds = %for.body17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #15
  store i32 -1, ptr %bit.i, align 4, !annotation !10
  %call.i = call fastcc i32 @memory_bm_find_bit(ptr noundef %bm, i32 noundef %pfn.039, ptr noundef nonnull %addr.i, ptr noundef nonnull %bit.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then20.mem_bm_set_bit_check.exit_crit_edge

if.then20.mem_bm_set_bit_check.exit_crit_edge:    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %mem_bm_set_bit_check.exit

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load i32, ptr %bit.i, align 4
  %6 = load ptr, ptr %addr.i, align 4
  tail call void @_set_bit(i32 noundef %5, ptr noundef %6) #17
  br label %mem_bm_set_bit_check.exit

mem_bm_set_bit_check.exit:                        ; preds = %if.then.i, %if.then20.mem_bm_set_bit_check.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  br label %for.inc

for.inc:                                          ; preds = %mem_bm_set_bit_check.exit, %for.body17.for.inc_crit_edge
  %inc = add nuw i32 %pfn.039, 1
  %7 = load i32, ptr %end_pfn14, align 4
  %cmp15 = icmp ult i32 %inc, %7
  br i1 %cmp15, label %for.inc.for.body17_crit_edge, label %for.inc.for.condthread-pre-split_crit_edge

for.inc.for.condthread-pre-split_crit_edge:       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.condthread-pre-split

for.inc.for.body17_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17

cleanup:                                          ; preds = %for.condthread-pre-split.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_basic_memory_bitmaps() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool = icmp eq ptr %0, null
  %1 = load ptr, ptr @free_pages_map, align 4
  %tobool1 = icmp eq ptr %1, null
  %2 = select i1 %tobool, i1 true, i1 %tobool1
  br i1 %2, label %do.end, label %if.end24, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1159, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end24:                                         ; preds = %entry
  store ptr null, ptr @forbidden_pages_map, align 4
  store ptr null, ptr @free_pages_map, align 4
  %zone.014.i = load ptr, ptr %0, align 4
  %cmp.not15.i = icmp eq ptr %zone.014.i, %0
  br i1 %cmp.not15.i, label %if.end24.for.end.i_crit_edge, label %if.end24.for.body.i_crit_edge

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

if.end24.for.end.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i:                                       ; preds = %free_zone_bm_rtree.exit.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %zone.016.i = phi ptr [ %zone.0.i, %free_zone_bm_rtree.exit.i.for.body.i_crit_edge ], [ %zone.014.i, %if.end24.for.body.i_crit_edge ]
  %nodes.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i, i32 0, i32 1
  %node.034.i.i = load ptr, ptr %nodes.i.i, align 4
  %cmp.not35.i.i = icmp eq ptr %node.034.i.i, %nodes.i.i
  br i1 %cmp.not35.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %node.036.i.i = phi ptr [ %node.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %node.034.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i, i32 0, i32 1
  %3 = load ptr, ptr %data.i.i, align 4
  tail call fastcc void @free_image_page(ptr noundef %3, i32 noundef 1) #17
  %node.0.i.i = load ptr, ptr %node.036.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %nodes.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %leaves.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i, i32 0, i32 2
  %node.137.i.i = load ptr, ptr %leaves.i.i, align 4
  %cmp14.not38.i.i = icmp eq ptr %node.137.i.i, %leaves.i.i
  br i1 %cmp14.not38.i.i, label %for.end.i.i.free_zone_bm_rtree.exit.i_crit_edge, label %for.end.i.i.for.body16.i.i_crit_edge

for.end.i.i.for.body16.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body16.i.i

for.end.i.i.free_zone_bm_rtree.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.end.i.i.for.body16.i.i_crit_edge
  %node.139.i.i = phi ptr [ %node.1.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ %node.137.i.i, %for.end.i.i.for.body16.i.i_crit_edge ]
  %data17.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i, i32 0, i32 1
  %4 = load ptr, ptr %data17.i.i, align 4
  tail call fastcc void @free_image_page(ptr noundef %4, i32 noundef 1) #17
  %node.1.i.i = load ptr, ptr %node.139.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %node.1.i.i, %leaves.i.i
  br i1 %cmp14.not.i.i, label %for.body16.i.i.free_zone_bm_rtree.exit.i_crit_edge, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i

for.body16.i.i.free_zone_bm_rtree.exit.i_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i

free_zone_bm_rtree.exit.i:                        ; preds = %for.body16.i.i.free_zone_bm_rtree.exit.i_crit_edge, %for.end.i.i.free_zone_bm_rtree.exit.i_crit_edge
  %zone.0.i = load ptr, ptr %zone.016.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, %0
  br i1 %cmp.not.i, label %free_zone_bm_rtree.exit.i.for.end.i_crit_edge, label %free_zone_bm_rtree.exit.i.for.body.i_crit_edge

free_zone_bm_rtree.exit.i.for.body.i_crit_edge:   ; preds = %free_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

free_zone_bm_rtree.exit.i.for.end.i_crit_edge:    ; preds = %free_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %free_zone_bm_rtree.exit.i.for.end.i_crit_edge, %if.end24.for.end.i_crit_edge
  %p_list.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %p_list.i, align 4
  %tobool.not3.i.i = icmp eq ptr %5, null
  br i1 %tobool.not3.i.i, label %for.end.i.memory_bm_free.exit_crit_edge, label %for.end.i.while.body.i.i_crit_edge

for.end.i.while.body.i.i_crit_edge:               ; preds = %for.end.i
  br label %while.body.i.i

for.end.i.memory_bm_free.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.end.i.while.body.i.i_crit_edge
  %list.addr.04.i.i = phi ptr [ %6, %while.body.i.i.while.body.i.i_crit_edge ], [ %5, %for.end.i.while.body.i.i_crit_edge ]
  %6 = load ptr, ptr %list.addr.04.i.i, align 1
  tail call fastcc void @free_image_page(ptr noundef nonnull %list.addr.04.i.i, i32 noundef 1) #17
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %while.body.i.i.memory_bm_free.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.body.i.i.memory_bm_free.exit_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit

memory_bm_free.exit:                              ; preds = %while.body.i.i.memory_bm_free.exit_crit_edge, %for.end.i.memory_bm_free.exit_crit_edge
  store volatile ptr %0, ptr %0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %0) #17
  %zone.014.i44 = load ptr, ptr %1, align 4
  %cmp.not15.i45 = icmp eq ptr %zone.014.i44, %1
  br i1 %cmp.not15.i45, label %memory_bm_free.exit.for.end.i70_crit_edge, label %memory_bm_free.exit.for.body.i50_crit_edge

memory_bm_free.exit.for.body.i50_crit_edge:       ; preds = %memory_bm_free.exit
  br label %for.body.i50

memory_bm_free.exit.for.end.i70_crit_edge:        ; preds = %memory_bm_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i70

for.body.i50:                                     ; preds = %free_zone_bm_rtree.exit.i67.for.body.i50_crit_edge, %memory_bm_free.exit.for.body.i50_crit_edge
  %zone.016.i46 = phi ptr [ %zone.0.i65, %free_zone_bm_rtree.exit.i67.for.body.i50_crit_edge ], [ %zone.014.i44, %memory_bm_free.exit.for.body.i50_crit_edge ]
  %nodes.i.i47 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i46, i32 0, i32 1
  %node.034.i.i48 = load ptr, ptr %nodes.i.i47, align 4
  %cmp.not35.i.i49 = icmp eq ptr %node.034.i.i48, %nodes.i.i47
  br i1 %cmp.not35.i.i49, label %for.body.i50.for.end.i.i59_crit_edge, label %for.body.i50.for.body.i.i55_crit_edge

for.body.i50.for.body.i.i55_crit_edge:            ; preds = %for.body.i50
  br label %for.body.i.i55

for.body.i50.for.end.i.i59_crit_edge:             ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i59

for.body.i.i55:                                   ; preds = %for.body.i.i55.for.body.i.i55_crit_edge, %for.body.i50.for.body.i.i55_crit_edge
  %node.036.i.i51 = phi ptr [ %node.0.i.i53, %for.body.i.i55.for.body.i.i55_crit_edge ], [ %node.034.i.i48, %for.body.i50.for.body.i.i55_crit_edge ]
  %data.i.i52 = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i51, i32 0, i32 1
  %7 = load ptr, ptr %data.i.i52, align 4
  tail call fastcc void @free_image_page(ptr noundef %7, i32 noundef 1) #17
  %node.0.i.i53 = load ptr, ptr %node.036.i.i51, align 4
  %cmp.not.i.i54 = icmp eq ptr %node.0.i.i53, %nodes.i.i47
  br i1 %cmp.not.i.i54, label %for.body.i.i55.for.end.i.i59_crit_edge, label %for.body.i.i55.for.body.i.i55_crit_edge

for.body.i.i55.for.body.i.i55_crit_edge:          ; preds = %for.body.i.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i55

for.body.i.i55.for.end.i.i59_crit_edge:           ; preds = %for.body.i.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i59

for.end.i.i59:                                    ; preds = %for.body.i.i55.for.end.i.i59_crit_edge, %for.body.i50.for.end.i.i59_crit_edge
  %leaves.i.i56 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i46, i32 0, i32 2
  %node.137.i.i57 = load ptr, ptr %leaves.i.i56, align 4
  %cmp14.not38.i.i58 = icmp eq ptr %node.137.i.i57, %leaves.i.i56
  br i1 %cmp14.not38.i.i58, label %for.end.i.i59.free_zone_bm_rtree.exit.i67_crit_edge, label %for.end.i.i59.for.body16.i.i64_crit_edge

for.end.i.i59.for.body16.i.i64_crit_edge:         ; preds = %for.end.i.i59
  br label %for.body16.i.i64

for.end.i.i59.free_zone_bm_rtree.exit.i67_crit_edge: ; preds = %for.end.i.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i67

for.body16.i.i64:                                 ; preds = %for.body16.i.i64.for.body16.i.i64_crit_edge, %for.end.i.i59.for.body16.i.i64_crit_edge
  %node.139.i.i60 = phi ptr [ %node.1.i.i62, %for.body16.i.i64.for.body16.i.i64_crit_edge ], [ %node.137.i.i57, %for.end.i.i59.for.body16.i.i64_crit_edge ]
  %data17.i.i61 = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i60, i32 0, i32 1
  %8 = load ptr, ptr %data17.i.i61, align 4
  tail call fastcc void @free_image_page(ptr noundef %8, i32 noundef 1) #17
  %node.1.i.i62 = load ptr, ptr %node.139.i.i60, align 4
  %cmp14.not.i.i63 = icmp eq ptr %node.1.i.i62, %leaves.i.i56
  br i1 %cmp14.not.i.i63, label %for.body16.i.i64.free_zone_bm_rtree.exit.i67_crit_edge, label %for.body16.i.i64.for.body16.i.i64_crit_edge

for.body16.i.i64.for.body16.i.i64_crit_edge:      ; preds = %for.body16.i.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i64

for.body16.i.i64.free_zone_bm_rtree.exit.i67_crit_edge: ; preds = %for.body16.i.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i67

free_zone_bm_rtree.exit.i67:                      ; preds = %for.body16.i.i64.free_zone_bm_rtree.exit.i67_crit_edge, %for.end.i.i59.free_zone_bm_rtree.exit.i67_crit_edge
  %zone.0.i65 = load ptr, ptr %zone.016.i46, align 4
  %cmp.not.i66 = icmp eq ptr %zone.0.i65, %1
  br i1 %cmp.not.i66, label %free_zone_bm_rtree.exit.i67.for.end.i70_crit_edge, label %free_zone_bm_rtree.exit.i67.for.body.i50_crit_edge

free_zone_bm_rtree.exit.i67.for.body.i50_crit_edge: ; preds = %free_zone_bm_rtree.exit.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i50

free_zone_bm_rtree.exit.i67.for.end.i70_crit_edge: ; preds = %free_zone_bm_rtree.exit.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i70

for.end.i70:                                      ; preds = %free_zone_bm_rtree.exit.i67.for.end.i70_crit_edge, %memory_bm_free.exit.for.end.i70_crit_edge
  %p_list.i68 = getelementptr inbounds %struct.memory_bitmap, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %p_list.i68, align 4
  %tobool.not3.i.i69 = icmp eq ptr %9, null
  br i1 %tobool.not3.i.i69, label %for.end.i70.memory_bm_free.exit75_crit_edge, label %for.end.i70.while.body.i.i73_crit_edge

for.end.i70.while.body.i.i73_crit_edge:           ; preds = %for.end.i70
  br label %while.body.i.i73

for.end.i70.memory_bm_free.exit75_crit_edge:      ; preds = %for.end.i70
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit75

while.body.i.i73:                                 ; preds = %while.body.i.i73.while.body.i.i73_crit_edge, %for.end.i70.while.body.i.i73_crit_edge
  %list.addr.04.i.i71 = phi ptr [ %10, %while.body.i.i73.while.body.i.i73_crit_edge ], [ %9, %for.end.i70.while.body.i.i73_crit_edge ]
  %10 = load ptr, ptr %list.addr.04.i.i71, align 1
  tail call fastcc void @free_image_page(ptr noundef nonnull %list.addr.04.i.i71, i32 noundef 1) #17
  %tobool.not.i.i72 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i72, label %while.body.i.i73.memory_bm_free.exit75_crit_edge, label %while.body.i.i73.while.body.i.i73_crit_edge

while.body.i.i73.while.body.i.i73_crit_edge:      ; preds = %while.body.i.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i73

while.body.i.i73.memory_bm_free.exit75_crit_edge: ; preds = %while.body.i.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit75

memory_bm_free.exit75:                            ; preds = %while.body.i.i73.memory_bm_free.exit75_crit_edge, %for.end.i70.memory_bm_free.exit75_crit_edge
  store volatile ptr %1, ptr %1, align 4
  %prev.i.i74 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %1, ptr %prev.i.i74, align 4
  tail call void @kfree(ptr noundef %1) #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @free_basic_memory_bitmaps.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@free_basic_memory_bitmaps, %cleanup)) #15
          to label %if.then36 [label %cleanup], !srcloc !17

if.then36:                                        ; preds = %memory_bm_free.exit75
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @free_basic_memory_bitmaps.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.9) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %memory_bm_free.exit75, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_or_poison_free_pages() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @free_pages_map, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1187, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = load i8, ptr @_page_poisoning_enabled_early, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@clear_or_poison_free_pages, %cleanup)) #15
          to label %if.then25 [label %cleanup], !srcloc !17

if.then25:                                        ; preds = %lor.lhs.false, %if.end23.if.then25_crit_edge
  %2 = load ptr, ptr %0, align 4
  %cur.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2
  store ptr %2, ptr %cur.i, align 4
  %leaves.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %leaves.i, align 4
  %node.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2, i32 1
  store ptr %3, ptr %node.i, align 4
  %node_pfn.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2, i32 2
  store i32 0, ptr %node_pfn.i, align 4
  %node_bit.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %node_bit.i, align 4
  %call26 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull %0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call26)
  %cmp.not51 = icmp eq i32 %call26, -1
  br i1 %cmp.not51, label %if.then25.while.end_crit_edge, label %if.then25.while.body_crit_edge

if.then25.while.body_crit_edge:                   ; preds = %if.then25
  br label %while.body

if.then25.while.end_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %if.then25.while.body_crit_edge
  %pfn.052 = phi i32 [ %call31, %if.end30.while.body_crit_edge ], [ %call26, %if.then25.while.body_crit_edge ]
  %call27 = tail call i32 @pfn_valid(i32 noundef %pfn.052) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %while.body.if.end30_crit_edge, label %if.then29

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %while.body
  %4 = load ptr, ptr @mem_map, align 4
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn.052, %5
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %sub
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @_page_poisoning_enabled, ptr blockaddress(@clear_or_poison_free_pages, %if.then.i)) #15
          to label %if.else.i [label %if.then.i], !srcloc !17

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__kernel_poison_pages(ptr noundef %add.ptr, i32 noundef 1) #17
  br label %if.end30

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@clear_or_poison_free_pages, %if.end30)) #15
          to label %if.then2.i [label %if.end30], !srcloc !17

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %6, 512
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i.i) #17
  %call1.i.i = tail call ptr @__memset(ptr noundef %call.i.i.i, i32 noundef 0, i32 noundef 4096) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then2.i, %if.else.i, %if.then.i, %while.body.if.end30_crit_edge
  %call31 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull %0) #21
  %cmp.not = icmp eq i32 %call31, -1
  br i1 %cmp.not, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %if.then25.while.end_crit_edge
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %cur.i, align 4
  %leaves.i46 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %leaves.i46, align 4
  store ptr %8, ptr %node.i, align 4
  store i32 0, ptr %node_pfn.i, align 4
  store i32 0, ptr %node_bit.i, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #19
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.lhs.false, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memory_bm_next_pfn(ptr noundef %bm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2
  %node_pfn = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 2
  %node = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 1
  %node_bit = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.backedge, %entry
  %0 = load ptr, ptr %cur, align 4
  %end_pfn = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %end_pfn, align 4
  %start_pfn = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %0, i32 0, i32 3
  %2 = load i32, ptr %start_pfn, align 4
  %3 = load i32, ptr %node_pfn, align 4
  %4 = add i32 %2, %3
  %sub4 = sub i32 %1, %4
  %5 = tail call i32 @llvm.umin.i32(i32 %sub4, i32 32768)
  %6 = load ptr, ptr %node, align 4
  %data = getelementptr inbounds %struct.rtree_node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %data, align 4
  %8 = load i32, ptr %node_bit, align 4
  %call = tail call i32 @_find_next_bit_be(ptr noundef %7, i32 noundef %5, i32 noundef %8) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp7 = icmp ult i32 %call, %5
  br i1 %cmp7, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %9 = load ptr, ptr %cur, align 4
  %start_pfn10 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %start_pfn10, align 4
  %11 = load i32, ptr %node_pfn, align 4
  %add = add i32 %10, %call
  %add13 = add i32 %add, %11
  %add14 = add nuw i32 %call, 1
  store i32 %add14, ptr %node_bit, align 4
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %12 = load ptr, ptr %node, align 4
  %13 = load ptr, ptr %cur, align 4
  %leaves.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %12, align 4
  %cmp.i.not.i = icmp eq ptr %14, %leaves.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %14, ptr %node, align 4
  %15 = load i32, ptr %node_pfn, align 4
  %add.i = add i32 %15, 32768
  store i32 %add.i, ptr %node_pfn, align 4
  store i32 0, ptr %node_bit, align 4
  tail call void @touch_softlockup_watchdog() #17
  br label %do.body.backedge

do.body.backedge:                                 ; preds = %if.then14.i, %if.then.i
  br label %do.body

if.end.i:                                         ; preds = %do.cond
  %16 = load ptr, ptr %13, align 4
  %cmp.i51.not.i = icmp eq ptr %16, %bm
  br i1 %cmp.i51.not.i, label %if.end.i.cleanup_crit_edge, label %if.then14.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %16, ptr %cur, align 4
  %leaves27.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %leaves27.i, align 4
  store ptr %17, ptr %node, align 4
  store i32 0, ptr %node_pfn, align 4
  store i32 0, ptr %node_bit, align 4
  br label %do.body.backedge

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add13, %if.then ], [ -1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snapshot_additional_pages(ptr nocapture noundef readonly %zone) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %spanned_pages = getelementptr inbounds %struct.zone, ptr %zone, i32 0, i32 12
  %0 = load i32, ptr %spanned_pages, align 4
  %sub = add i32 %0, 32767
  %div15 = lshr i32 %sub, 15
  %mul = mul nuw nsw i32 %div15, 12
  %sub2 = add nuw nsw i32 %mul, 4091
  %div3 = udiv i32 %sub2, 4092
  %add4 = add nuw nsw i32 %div3, %div15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub)
  %cmp17 = icmp ugt i32 %sub, 65535
  br i1 %cmp17, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %nodes.019 = phi i32 [ %div716, %while.body.while.body_crit_edge ], [ %div15, %entry.while.body_crit_edge ]
  %rtree.018 = phi i32 [ %add8, %while.body.while.body_crit_edge ], [ %add4, %entry.while.body_crit_edge ]
  %sub6 = add nuw nsw i32 %nodes.019, 1023
  %div716 = lshr i32 %sub6, 10
  %add8 = add i32 %div716, %rtree.018
  %cmp = icmp ugt i32 %nodes.019, 1024
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rtree.0.lcssa = phi i32 [ %add4, %entry.while.end_crit_edge ], [ %add8, %while.body.while.end_crit_edge ]
  %mul9 = shl i32 %rtree.0.lcssa, 1
  ret i32 %mul9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @swsusp_free() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool = icmp ne ptr %0, null
  %1 = load ptr, ptr @free_pages_map, align 4
  %tobool1 = icmp ne ptr %1, null
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %0, align 4
  %cur.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2
  store ptr %2, ptr %cur.i, align 4
  %leaves.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %leaves.i, align 4
  %node.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2, i32 1
  store ptr %3, ptr %node.i, align 4
  %node_pfn.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2, i32 2
  store i32 0, ptr %node_pfn.i, align 4
  %node_bit.i = getelementptr inbounds %struct.memory_bitmap, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %node_bit.i, align 4
  %4 = load ptr, ptr %1, align 4
  %cur.i25 = getelementptr inbounds %struct.memory_bitmap, ptr %1, i32 0, i32 2
  store ptr %4, ptr %cur.i25, align 4
  %leaves.i26 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %leaves.i26, align 4
  %node.i27 = getelementptr inbounds %struct.memory_bitmap, ptr %1, i32 0, i32 2, i32 1
  store ptr %5, ptr %node.i27, align 4
  %node_pfn.i28 = getelementptr inbounds %struct.memory_bitmap, ptr %1, i32 0, i32 2, i32 2
  store i32 0, ptr %node_pfn.i28, align 4
  %node_bit.i29 = getelementptr inbounds %struct.memory_bitmap, ptr %1, i32 0, i32 2, i32 3
  store i32 0, ptr %node_bit.i29, align 4
  br label %loop

loop:                                             ; preds = %hibernate_restore_unprotect_page.exit, %if.end
  %6 = phi ptr [ %.pre, %hibernate_restore_unprotect_page.exit ], [ %1, %if.end ]
  %call = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %6) #21
  %7 = load ptr, ptr @forbidden_pages_map, align 4
  %call2 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %7) #21
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %loop
  %fr_pfn.0 = phi i32 [ %call, %loop ], [ %fr_pfn.1, %do.cond.do.body_crit_edge ]
  %fb_pfn.0 = phi i32 [ %call2, %loop ], [ %fb_pfn.1, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fb_pfn.0, i32 %fr_pfn.0)
  %cmp = icmp ult i32 %fb_pfn.0, %fr_pfn.0
  br i1 %cmp, label %if.then3, label %do.body.if.end5_crit_edge

do.body.if.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %8 = load ptr, ptr @forbidden_pages_map, align 4
  %call4 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %8) #21
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.body.if.end5_crit_edge
  %fb_pfn.1 = phi i32 [ %call4, %if.then3 ], [ %fb_pfn.0, %do.body.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fr_pfn.0, i32 %fb_pfn.1)
  %cmp6 = icmp ult i32 %fr_pfn.0, %fb_pfn.1
  br i1 %cmp6, label %if.then7, label %if.end5.do.cond_crit_edge

if.end5.do.cond_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.cond

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %9 = load ptr, ptr @free_pages_map, align 4
  %call8 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %9) #21
  br label %do.cond

do.cond:                                          ; preds = %if.then7, %if.end5.do.cond_crit_edge
  %fr_pfn.1 = phi i32 [ %call8, %if.then7 ], [ %fr_pfn.0, %if.end5.do.cond_crit_edge ]
  %cmp10.not = icmp eq i32 %fb_pfn.1, %fr_pfn.1
  br i1 %cmp10.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fb_pfn.1)
  %cmp11.not = icmp eq i32 %fb_pfn.1, -1
  br i1 %cmp11.not, label %do.end.out_crit_edge, label %land.lhs.true

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true:                                    ; preds = %do.end
  %call12 = tail call i32 @pfn_valid(i32 noundef %fb_pfn.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.out_crit_edge, label %if.then14

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then14:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr @mem_map, align 4
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %fb_pfn.1, %11
  %add.ptr = getelementptr %struct.page, ptr %10, i32 %sub
  %12 = load ptr, ptr @forbidden_pages_map, align 4
  %node_bit.i30 = getelementptr inbounds %struct.memory_bitmap, ptr %12, i32 0, i32 2, i32 3
  %13 = load i32, ptr %node_bit.i30, align 4
  %sub.i = add i32 %13, -1
  %14 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #15
  %node.i31 = getelementptr inbounds %struct.memory_bitmap, ptr %12, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %node.i31, align 4
  %data.i = getelementptr inbounds %struct.rtree_node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %data.i, align 4
  tail call void @_clear_bit(i32 noundef %14, ptr noundef %16) #17
  %17 = load ptr, ptr @free_pages_map, align 4
  %node_bit.i32 = getelementptr inbounds %struct.memory_bitmap, ptr %17, i32 0, i32 2, i32 3
  %18 = load i32, ptr %node_bit.i32, align 4
  %sub.i33 = add i32 %18, -1
  %19 = tail call i32 @llvm.smax.i32(i32 %sub.i33, i32 0) #15
  %node.i34 = getelementptr inbounds %struct.memory_bitmap, ptr %17, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %node.i34, align 4
  %data.i35 = getelementptr inbounds %struct.rtree_node, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %data.i35, align 4
  tail call void @_clear_bit(i32 noundef %19, ptr noundef %21) #17
  %call15 = tail call ptr @page_address(ptr noundef %add.ptr) #17
  %22 = load i8, ptr @hibernate_restore_protection_active, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then14.hibernate_restore_unprotect_page.exit_crit_edge, label %if.then.i

if.then14.hibernate_restore_unprotect_page.exit_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %hibernate_restore_unprotect_page.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %call15 to i32
  %call.i = tail call i32 @set_memory_rw(i32 noundef %23, i32 noundef 1) #17
  br label %hibernate_restore_unprotect_page.exit

hibernate_restore_unprotect_page.exit:            ; preds = %if.then.i, %if.then14.hibernate_restore_unprotect_page.exit_crit_edge
  tail call void @__free_pages(ptr noundef %add.ptr, i32 noundef 0) #17
  %.pre = load ptr, ptr @free_pages_map, align 4
  br label %loop

out:                                              ; preds = %land.lhs.true.out_crit_edge, %do.end.out_crit_edge, %entry.out_crit_edge
  store i32 0, ptr @nr_copy_pages, align 4
  store i32 0, ptr @nr_meta_pages, align 4
  store ptr null, ptr @restore_pblist, align 4
  store ptr null, ptr @buffer, align 4
  store i32 0, ptr @alloc_normal, align 4
  store i32 0, ptr @alloc_highmem, align 4
  store i8 0, ptr @hibernate_restore_protection_active, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @hibernate_preallocate_memory() local_unnamed_addr #3 align 64 {
entry:
  %addr.i.i61.i = alloca ptr, align 4
  %bit.i.i62.i = alloca i32, align 4
  %addr.i.i.i = alloca ptr, align 4
  %bit.i.i.i = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #19
  %call1 = tail call i64 @ktime_get() #17
  %call2 = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull @orig_bm, i32 noundef 11456, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end5

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  br label %err_out

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull @copy_bm, i32 noundef 11456, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #19
  br label %err_out

if.end16:                                         ; preds = %if.end
  store i32 0, ptr @alloc_normal, align 4
  store i32 0, ptr @alloc_highmem, align 4
  %call17 = tail call fastcc i32 @count_highmem_pages() #21
  %call18 = tail call fastcc i32 @count_data_pages() #21
  %add = add i32 %call18, %call17
  %call19 = tail call ptr @first_online_pgdat() #17
  %tobool20.not239 = icmp eq ptr %call19, null
  br i1 %tobool20.not239, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %zone.0245 = phi ptr [ %call35, %for.inc.for.body_crit_edge ], [ %call19, %if.end16.for.body_crit_edge ]
  %size.0244 = phi i32 [ %size.1, %for.inc.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %count.0242 = phi i32 [ %count.1, %for.inc.for.body_crit_edge ], [ %call18, %if.end16.for.body_crit_edge ]
  %highmem.0240 = phi i32 [ %highmem.1, %for.inc.for.body_crit_edge ], [ %call17, %if.end16.for.body_crit_edge ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.0245, i32 0, i32 13
  %0 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else:                                          ; preds = %for.body
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %zone.0245, i32 0, i32 12
  %1 = load i32, ptr %spanned_pages.i, align 4
  %sub.i = add i32 %1, 32767
  %div15.i = lshr i32 %sub.i, 15
  %mul.i = mul nuw nsw i32 %div15.i, 12
  %sub2.i = add nuw nsw i32 %mul.i, 4091
  %div3.i = udiv i32 %sub2.i, 4092
  %add4.i = add nuw nsw i32 %div3.i, %div15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.i)
  %cmp17.i = icmp ugt i32 %sub.i, 65535
  br i1 %cmp17.i, label %if.else.while.body.i_crit_edge, label %if.else.snapshot_additional_pages.exit_crit_edge

if.else.snapshot_additional_pages.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %snapshot_additional_pages.exit

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %nodes.019.i = phi i32 [ %div716.i, %while.body.i.while.body.i_crit_edge ], [ %div15.i, %if.else.while.body.i_crit_edge ]
  %rtree.018.i = phi i32 [ %add8.i, %while.body.i.while.body.i_crit_edge ], [ %add4.i, %if.else.while.body.i_crit_edge ]
  %sub6.i = add nuw nsw i32 %nodes.019.i, 1023
  %div716.i = lshr i32 %sub6.i, 10
  %add8.i = add i32 %div716.i, %rtree.018.i
  %cmp.i = icmp ugt i32 %nodes.019.i, 1024
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.snapshot_additional_pages.exit_crit_edge

while.body.i.snapshot_additional_pages.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snapshot_additional_pages.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

snapshot_additional_pages.exit:                   ; preds = %while.body.i.snapshot_additional_pages.exit_crit_edge, %if.else.snapshot_additional_pages.exit_crit_edge
  %rtree.0.lcssa.i = phi i32 [ %add4.i, %if.else.snapshot_additional_pages.exit_crit_edge ], [ %add8.i, %while.body.i.snapshot_additional_pages.exit_crit_edge ]
  %mul9.i = shl i32 %rtree.0.lcssa.i, 1
  %add24 = add i32 %mul9.i, %size.0244
  %zone_pgdat.i = getelementptr inbounds %struct.zone, ptr %zone.0245, i32 0, i32 4
  %2 = load ptr, ptr %zone_pgdat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %zone.0245 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i)
  %3 = icmp eq i32 %sub.ptr.sub.i, 2304
  br i1 %3, label %snapshot_additional_pages.exit.if.then27_crit_edge, label %is_highmem.exit

snapshot_additional_pages.exit.if.then27_crit_edge: ; preds = %snapshot_additional_pages.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

is_highmem.exit:                                  ; preds = %snapshot_additional_pages.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i)
  %4 = icmp ne i32 %sub.ptr.sub.i, 3456
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.i = icmp ne i32 %5, 2
  %6 = select i1 %4, i1 true, i1 %cmp2.i.i
  br i1 %6, label %if.else30, label %is_highmem.exit.if.then27_crit_edge

is_highmem.exit.if.then27_crit_edge:              ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then27

if.then27:                                        ; preds = %is_highmem.exit.if.then27_crit_edge, %snapshot_additional_pages.exit.if.then27_crit_edge
  %vm_stat.i = getelementptr inbounds %struct.zone, ptr %zone.0245, i32 0, i32 37
  %7 = load volatile i32, ptr %vm_stat.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #15
  %add29 = add i32 %8, %highmem.0240
  br label %for.inc

if.else30:                                        ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vm_stat.i213 = getelementptr inbounds %struct.zone, ptr %zone.0245, i32 0, i32 37
  %9 = load volatile i32, ptr %vm_stat.i213, align 4
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 0) #15
  %add32 = add i32 %10, %count.0242
  br label %for.inc

for.inc:                                          ; preds = %if.else30, %if.then27, %for.body.for.inc_crit_edge
  %highmem.1 = phi i32 [ %add29, %if.then27 ], [ %highmem.0240, %if.else30 ], [ %highmem.0240, %for.body.for.inc_crit_edge ]
  %count.1 = phi i32 [ %count.0242, %if.then27 ], [ %add32, %if.else30 ], [ %count.0242, %for.body.for.inc_crit_edge ]
  %size.1 = phi i32 [ %add24, %if.then27 ], [ %add24, %if.else30 ], [ %size.0244, %for.body.for.inc_crit_edge ]
  %call35 = tail call ptr @next_zone(ptr noundef nonnull %zone.0245) #17
  %tobool20.not = icmp eq ptr %call35, null
  br i1 %tobool20.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = add i32 %count.1, %highmem.1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end16.for.end_crit_edge
  %add36.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %add, %if.end16.for.end_crit_edge ]
  %highmem.0.lcssa = phi i32 [ %highmem.1, %for.end.loopexit ], [ %call17, %if.end16.for.end_crit_edge ]
  %count.0.lcssa = phi i32 [ %count.1, %for.end.loopexit ], [ %call18, %if.end16.for.end_crit_edge ]
  %size.0.lcssa = phi i32 [ %size.1, %for.end.loopexit ], [ 0, %if.end16.for.end_crit_edge ]
  %11 = load i32, ptr @totalreserve_pages, align 4
  %sub = sub i32 %add36.pre-phi, %11
  %add37.neg = sub i32 -1024, %size.0.lcssa
  %sub38 = add i32 %add37.neg, %sub
  %div209 = lshr i32 %sub38, 1
  %12 = load i32, ptr @reserved_size, align 4
  %sub40 = add i32 %12, 4095
  %13 = lshr i32 %sub40, 11
  %mul = and i32 %13, 2097150
  %sub42 = sub nsw i32 %div209, %mul
  %14 = load i32, ptr @image_size, align 4
  %sub44 = add i32 %14, 4095
  %div45211 = lshr i32 %sub44, 12
  %15 = tail call i32 @llvm.umin.i32(i32 %div45211, i32 %sub42)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add)
  %cmp48.not = icmp ult i32 %15, %add
  br i1 %cmp48.not, label %if.end54, label %if.then49

if.then49:                                        ; preds = %for.end
  %call.i = tail call fastcc i32 @preallocate_image_pages(i32 noundef %call17, i32 noundef 11458) #17
  %16 = load i32, ptr @alloc_normal, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %16)
  %cmp.not.i = icmp ugt i32 %count.0.lcssa, %16
  br i1 %cmp.not.i, label %if.end.i, label %if.then49.preallocate_image_memory.exit_crit_edge

if.then49.preallocate_image_memory.exit_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %preallocate_image_memory.exit

if.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  %sub51 = sub i32 %add, %call.i
  %sub.i214 = sub i32 %count.0.lcssa, %16
  %17 = tail call i32 @llvm.umin.i32(i32 %sub.i214, i32 %sub51) #15
  %call.i215 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %17, i32 noundef 11456) #17
  br label %preallocate_image_memory.exit

preallocate_image_memory.exit:                    ; preds = %if.end.i, %if.then49.preallocate_image_memory.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i215, %if.end.i ], [ 0, %if.then49.preallocate_image_memory.exit_crit_edge ]
  %add53 = add i32 %retval.0.i, %call.i
  br label %out

if.end54:                                         ; preds = %for.end
  %18 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %18, i32 0) #15
  %20 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 0) #15
  %add.i = add nuw i32 %21, %19
  %22 = load volatile i32, ptr @vm_node_stat, align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0) #15
  %add3.i = add i32 %add.i, %23
  %24 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 0) #15
  %add5.i = add i32 %add3.i, %25
  %26 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #15
  %add7.i = add i32 %add5.i, %27
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %add, i32 %add7.i) #15
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %count.0.lcssa, i32 %28)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %28)
  %cmp61 = icmp ult i32 %15, %28
  %minmaxop = select i1 %cmp61, i32 %28, i32 %div45211
  %size.3 = tail call i32 @llvm.umin.i32(i32 %minmaxop, i32 %sub42)
  %sub66 = sub i32 %add, %size.3
  %call67 = tail call i32 @shrink_all_memory(i32 noundef %sub66) #17
  %div68212 = lshr i32 %highmem.0.lcssa, 1
  %call.i216 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %div68212, i32 noundef 11458) #17
  %sub70 = sub i32 %sub, %sub42
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %sub70, i32 %call.i216)
  %31 = load i32, ptr @alloc_normal, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not.i217 = icmp ugt i32 %29, %31
  br i1 %cmp.not.i217, label %if.end.i220, label %if.end54.preallocate_image_memory.exit222_crit_edge

if.end54.preallocate_image_memory.exit222_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %preallocate_image_memory.exit222

if.end.i220:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i218 = sub i32 %29, %31
  %32 = tail call i32 @llvm.umin.i32(i32 %sub.i218, i32 %30) #15
  %call.i219 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %32, i32 noundef 11456) #17
  br label %preallocate_image_memory.exit222

preallocate_image_memory.exit222:                 ; preds = %if.end.i220, %if.end54.preallocate_image_memory.exit222_crit_edge
  %retval.0.i221 = phi i32 [ %call.i219, %if.end.i220 ], [ 0, %if.end54.preallocate_image_memory.exit222_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %retval.0.i221)
  %cmp77 = icmp ugt i32 %30, %retval.0.i221
  br i1 %cmp77, label %if.then78, label %if.else96

if.then78:                                        ; preds = %preallocate_image_memory.exit222
  %sub79 = sub i32 %30, %retval.0.i221
  %call.i223 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %sub79, i32 noundef 11458) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %sub79, i32 %call.i223)
  %cmp82 = icmp ugt i32 %sub79, %call.i223
  br i1 %cmp82, label %do.end86, label %if.end90

do.end86:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  %sub88 = sub i32 %sub79, %call.i223
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %sub88) #19
  br label %err_out

if.end90:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  %add80 = add i32 %retval.0.i221, %call.i216
  %add91 = add i32 %add80, %call.i223
  %33 = add i32 %size.3, %add91
  %sub93 = sub i32 %sub, %33
  %call.i224 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %sub93, i32 noundef 11458) #17
  %add95 = add i32 %call.i224, %add91
  br label %if.end107

if.else96:                                        ; preds = %preallocate_image_memory.exit222
  %sub97 = sub i32 %sub42, %size.3
  %conv.i = zext i32 %sub97 to i64
  %conv1.i = zext i32 %highmem.0.lcssa to i64
  %conv2.i = zext i32 %sub to i64
  %mul.i.i = mul nuw i64 %conv.i, %conv1.i
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul.i.i, i64 noundef %conv2.i) #17
  %conv.i.i = trunc i64 %call.i.i to i32
  %call3.i = tail call fastcc i32 @preallocate_image_pages(i32 noundef %conv.i.i, i32 noundef 11458) #17
  %sub100 = sub i32 %sub97, %call3.i
  %34 = load i32, ptr @alloc_normal, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %34)
  %cmp.not.i225 = icmp ugt i32 %29, %34
  br i1 %cmp.not.i225, label %if.end.i228, label %if.else96.preallocate_image_memory.exit230_crit_edge

if.else96.preallocate_image_memory.exit230_crit_edge: ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #16
  br label %preallocate_image_memory.exit230

if.end.i228:                                      ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i226 = sub i32 %29, %34
  %35 = tail call i32 @llvm.umin.i32(i32 %sub.i226, i32 %sub100) #15
  %call.i227 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %35, i32 noundef 11456) #17
  br label %preallocate_image_memory.exit230

preallocate_image_memory.exit230:                 ; preds = %if.end.i228, %if.else96.preallocate_image_memory.exit230_crit_edge
  %retval.0.i229 = phi i32 [ %call.i227, %if.end.i228 ], [ 0, %if.else96.preallocate_image_memory.exit230_crit_edge ]
  %sub102 = sub i32 %sub100, %retval.0.i229
  %call.i231 = tail call fastcc i32 @preallocate_image_pages(i32 noundef %sub102, i32 noundef 11458) #17
  %add99 = add i32 %retval.0.i221, %call.i216
  %add104 = add i32 %add99, %call3.i
  %add105 = add i32 %add104, %retval.0.i229
  %add106 = add i32 %add105, %call.i231
  br label %if.end107

if.end107:                                        ; preds = %preallocate_image_memory.exit230, %if.end90
  %pages.0 = phi i32 [ %add95, %if.end90 ], [ %add106, %preallocate_image_memory.exit230 ]
  %call.i232 = tail call fastcc i32 @count_data_pages() #17
  %36 = load i32, ptr @alloc_normal, align 4
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %call.i232, i32 %36) #15
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %36, i32 %call.i232) #15
  %call2.i = tail call fastcc i32 @count_highmem_pages() #17
  %add.i233 = add i32 %37, %call2.i
  %39 = load i32, ptr @alloc_highmem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add.i233)
  %cmp3.not.i = icmp ult i32 %39, %add.i233
  br i1 %cmp3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %sub5.i = sub i32 %39, %add.i233
  br label %if.end13.i

if.else6.i:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %sub7.i = sub i32 %add.i233, %39
  %40 = tail call i32 @llvm.usub.sat.i32(i32 %38, i32 %sub7.i) #15
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else6.i, %if.then4.i
  %to_free_normal.1.i = phi i32 [ %38, %if.then4.i ], [ %40, %if.else6.i ]
  %to_free_highmem.0.i = phi i32 [ %sub5.i, %if.then4.i ], [ 0, %if.else6.i ]
  %41 = load ptr, ptr @copy_bm, align 4
  store ptr %41, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %leaves.i.i, align 4
  store ptr %42, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_free_normal.1.i)
  %cmp1575.i = icmp ne i32 %to_free_normal.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_free_highmem.0.i)
  %cmp1676.i = icmp ne i32 %to_free_highmem.0.i, 0
  %43 = select i1 %cmp1575.i, i1 true, i1 %cmp1676.i
  br i1 %43, label %if.end13.i.while.body.i234_crit_edge, label %if.end13.i.free_unnecessary_pages.exit_crit_edge

if.end13.i.free_unnecessary_pages.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_unnecessary_pages.exit

if.end13.i.while.body.i234_crit_edge:             ; preds = %if.end13.i
  br label %while.body.i234

while.body.i234:                                  ; preds = %cleanup.i.while.body.i234_crit_edge, %if.end13.i.while.body.i234_crit_edge
  %to_free_highmem.178.i = phi i32 [ %to_free_highmem.3.i, %cleanup.i.while.body.i234_crit_edge ], [ %to_free_highmem.0.i, %if.end13.i.while.body.i234_crit_edge ]
  %to_free_normal.277.i = phi i32 [ %to_free_normal.4.i, %cleanup.i.while.body.i234_crit_edge ], [ %to_free_normal.1.i, %if.end13.i.while.body.i234_crit_edge ]
  %call17.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  %44 = load ptr, ptr @mem_map, align 4
  %45 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub18.i = sub i32 %call17.i, %45
  %add.ptr.i = getelementptr %struct.page, ptr %44, i32 %sub18.i
  %46 = load i32, ptr %add.ptr.i, align 4
  %shr.i.i = lshr i32 %46, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.i, 2
  br i1 %cmp.i.i, label %while.body.i234.if.then21.i_crit_edge, label %is_highmem_idx.exit.i

while.body.i234.if.then21.i_crit_edge:            ; preds = %while.body.i234
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

is_highmem_idx.exit.i:                            ; preds = %while.body.i234
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i)
  %cmp1.i.i = icmp ne i32 %shr.i.i, 3
  %47 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.i235 = icmp ne i32 %47, 2
  %48 = select i1 %cmp1.i.i, i1 true, i1 %cmp2.i.i235
  br i1 %48, label %if.else26.i, label %is_highmem_idx.exit.i.if.then21.i_crit_edge

is_highmem_idx.exit.i.if.then21.i_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then21.i

if.then21.i:                                      ; preds = %is_highmem_idx.exit.i.if.then21.i_crit_edge, %while.body.i234.if.then21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_free_highmem.178.i)
  %tobool22.not.i = icmp eq i32 %to_free_highmem.178.i, 0
  br i1 %tobool22.not.i, label %if.then21.i.cleanup.i_crit_edge, label %if.end24.i

if.then21.i.cleanup.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end24.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i = add i32 %to_free_highmem.178.i, -1
  br label %if.end32.i

if.else26.i:                                      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_free_normal.277.i)
  %tobool27.not.i = icmp eq i32 %to_free_normal.277.i, 0
  br i1 %tobool27.not.i, label %if.else26.i.cleanup.i_crit_edge, label %if.end29.i

if.else26.i.cleanup.i_crit_edge:                  ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end29.i:                                       ; preds = %if.else26.i
  call void @__sanitizer_cov_trace_pc() #16
  %dec30.i = add i32 %to_free_normal.277.i, -1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end29.i, %if.end24.i
  %alloc_normal.sink80.i = phi ptr [ @alloc_normal, %if.end29.i ], [ @alloc_highmem, %if.end24.i ]
  %to_free_normal.3.i = phi i32 [ %dec30.i, %if.end29.i ], [ %to_free_normal.277.i, %if.end24.i ]
  %to_free_highmem.2.i = phi i32 [ %to_free_highmem.178.i, %if.end29.i ], [ %dec.i, %if.end24.i ]
  %49 = load i32, ptr %alloc_normal.sink80.i, align 4
  %dec31.i = add i32 %49, -1
  store i32 %dec31.i, ptr %alloc_normal.sink80.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i236 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %call17.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i236)
  %tobool.not.i.i = icmp eq i32 %call.i.i236, 0
  br i1 %tobool.not.i.i, label %memory_bm_clear_bit.exit.i, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i:                       ; preds = %if.end32.i
  %50 = load i32, ptr %bit.i.i, align 4
  %51 = load ptr, ptr %addr.i.i, align 4
  tail call void @_clear_bit(i32 noundef %50, ptr noundef %51) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  %52 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i60.i = icmp eq ptr %52, null
  br i1 %tobool.not.i60.i, label %memory_bm_clear_bit.exit.i.swsusp_unset_page_forbidden.exit.i_crit_edge, label %if.then.i.i

memory_bm_clear_bit.exit.i.swsusp_unset_page_forbidden.exit.i_crit_edge: ; preds = %memory_bm_clear_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_unset_page_forbidden.exit.i

if.then.i.i:                                      ; preds = %memory_bm_clear_bit.exit.i
  %53 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %54 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  store i32 -1, ptr %bit.i.i.i, align 4, !annotation !10
  %call.i.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %52, i32 noundef %add.i.i, ptr noundef nonnull %addr.i.i.i, ptr noundef nonnull %bit.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %memory_bm_clear_bit.exit.i.i, label %do.body3.i.i.i, !prof !11

do.body3.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i.i:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = load i32, ptr %bit.i.i.i, align 4
  %56 = load ptr, ptr %addr.i.i.i, align 4
  tail call void @_clear_bit(i32 noundef %55, ptr noundef %56) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  br label %swsusp_unset_page_forbidden.exit.i

swsusp_unset_page_forbidden.exit.i:               ; preds = %memory_bm_clear_bit.exit.i.i, %memory_bm_clear_bit.exit.i.swsusp_unset_page_forbidden.exit.i_crit_edge
  %57 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i63.i = icmp eq ptr %57, null
  br i1 %tobool.not.i63.i, label %swsusp_unset_page_forbidden.exit.i.swsusp_unset_page_free.exit.i_crit_edge, label %if.then.i71.i

swsusp_unset_page_forbidden.exit.i.swsusp_unset_page_free.exit.i_crit_edge: ; preds = %swsusp_unset_page_forbidden.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_unset_page_free.exit.i

if.then.i71.i:                                    ; preds = %swsusp_unset_page_forbidden.exit.i
  %58 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i64.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i65.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i66.i = sub i32 %sub.ptr.lhs.cast.i64.i, %sub.ptr.rhs.cast.i65.i
  %sub.ptr.div.i67.i = sdiv exact i32 %sub.ptr.sub.i66.i, 36
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i68.i = add i32 %sub.ptr.div.i67.i, %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i61.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i61.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i62.i) #15
  store i32 -1, ptr %bit.i.i62.i, align 4, !annotation !10
  %call.i.i69.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %57, i32 noundef %add.i68.i, ptr noundef nonnull %addr.i.i61.i, ptr noundef nonnull %bit.i.i62.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %tobool.not.i.i70.i = icmp eq i32 %call.i.i69.i, 0
  br i1 %tobool.not.i.i70.i, label %memory_bm_clear_bit.exit.i73.i, label %do.body3.i.i72.i, !prof !11

do.body3.i.i72.i:                                 ; preds = %if.then.i71.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i73.i:                   ; preds = %if.then.i71.i
  call void @__sanitizer_cov_trace_pc() #16
  %60 = load i32, ptr %bit.i.i62.i, align 4
  %61 = load ptr, ptr %addr.i.i61.i, align 4
  tail call void @_clear_bit(i32 noundef %60, ptr noundef %61) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i62.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i61.i) #15
  br label %swsusp_unset_page_free.exit.i

swsusp_unset_page_free.exit.i:                    ; preds = %memory_bm_clear_bit.exit.i73.i, %swsusp_unset_page_forbidden.exit.i.swsusp_unset_page_free.exit.i_crit_edge
  tail call void @__free_pages(ptr noundef %add.ptr.i, i32 noundef 0) #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %swsusp_unset_page_free.exit.i, %if.else26.i.cleanup.i_crit_edge, %if.then21.i.cleanup.i_crit_edge
  %to_free_normal.4.i = phi i32 [ %to_free_normal.3.i, %swsusp_unset_page_free.exit.i ], [ %to_free_normal.277.i, %if.then21.i.cleanup.i_crit_edge ], [ 0, %if.else26.i.cleanup.i_crit_edge ]
  %to_free_highmem.3.i = phi i32 [ %to_free_highmem.2.i, %swsusp_unset_page_free.exit.i ], [ 0, %if.then21.i.cleanup.i_crit_edge ], [ %to_free_highmem.178.i, %if.else26.i.cleanup.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_free_normal.4.i)
  %cmp15.i = icmp ne i32 %to_free_normal.4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_free_highmem.3.i)
  %cmp16.i = icmp ne i32 %to_free_highmem.3.i, 0
  %62 = select i1 %cmp15.i, i1 true, i1 %cmp16.i
  br i1 %62, label %cleanup.i.while.body.i234_crit_edge, label %cleanup.i.free_unnecessary_pages.exit_crit_edge

cleanup.i.free_unnecessary_pages.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_unnecessary_pages.exit

cleanup.i.while.body.i234_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i234

free_unnecessary_pages.exit:                      ; preds = %cleanup.i.free_unnecessary_pages.exit_crit_edge, %if.end13.i.free_unnecessary_pages.exit_crit_edge
  %63 = add i32 %to_free_normal.1.i, %to_free_highmem.0.i
  %sub109 = sub i32 %pages.0, %63
  br label %out

out:                                              ; preds = %free_unnecessary_pages.exit, %preallocate_image_memory.exit
  %pages.1 = phi i32 [ %add53, %preallocate_image_memory.exit ], [ %sub109, %free_unnecessary_pages.exit ]
  %call110 = tail call i64 @ktime_get() #17
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %pages.1) #19
  tail call void @swsusp_show_speed(i64 noundef %call1, i64 noundef %call110, i32 noundef %pages.1, ptr noundef nonnull @.str.26) #17
  br label %cleanup

err_out:                                          ; preds = %do.end86, %do.end13, %do.end5
  tail call void @swsusp_free() #21
  br label %cleanup

cleanup:                                          ; preds = %err_out, %out
  %retval.0 = phi i32 [ -12, %err_out ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @count_highmem_pages() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @first_online_pgdat() #17
  %tobool.not34 = icmp eq ptr %call, null
  br i1 %tobool.not34, label %entry.for.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.body:                                         ; preds = %for.inc15.for.body_crit_edge, %entry.for.body_crit_edge
  %n.038 = phi i32 [ %n.4, %for.inc15.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %zone.035 = phi ptr [ %call16, %for.inc15.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.035, i32 0, i32 13
  %0 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %for.body.for.inc15_crit_edge, label %if.else

for.body.for.inc15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc15

if.else:                                          ; preds = %for.body
  %zone_pgdat.i = getelementptr inbounds %struct.zone, ptr %zone.035, i32 0, i32 4
  %1 = load ptr, ptr %zone_pgdat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %zone.035 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i)
  %2 = icmp eq i32 %sub.ptr.sub.i, 2304
  br i1 %2, label %if.else.if.end_crit_edge, label %is_highmem.exit

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

is_highmem.exit:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i)
  %3 = icmp ne i32 %sub.ptr.sub.i, 3456
  %4 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.i.i = icmp ne i32 %4, 2
  %5 = select i1 %3, i1 true, i1 %cmp2.i.i
  br i1 %5, label %is_highmem.exit.for.inc15_crit_edge, label %is_highmem.exit.if.end_crit_edge

is_highmem.exit.if.end_crit_edge:                 ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

is_highmem.exit.for.inc15_crit_edge:              ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc15

if.end:                                           ; preds = %is_highmem.exit.if.end_crit_edge, %if.else.if.end_crit_edge
  tail call void @mark_free_pages(ptr noundef nonnull %zone.035) #17
  %zone_start_pfn.i = getelementptr inbounds %struct.zone, ptr %zone.035, i32 0, i32 10
  %6 = load i32, ptr %zone_start_pfn.i, align 4
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %zone.035, i32 0, i32 12
  %7 = load i32, ptr %spanned_pages.i, align 4
  %add.i = add i32 %7, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add.i)
  %cmp31 = icmp ult i32 %6, %add.i
  br i1 %cmp31, label %if.end.for.body7_crit_edge, label %if.end.for.inc15_crit_edge

if.end.for.inc15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc15

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %pfn.033 = phi i32 [ %inc12, %for.body7.for.body7_crit_edge ], [ %6, %if.end.for.body7_crit_edge ]
  %n.132 = phi i32 [ %spec.select, %for.body7.for.body7_crit_edge ], [ %n.038, %if.end.for.body7_crit_edge ]
  %call8 = tail call fastcc ptr @saveable_highmem_page(ptr noundef nonnull %zone.035, i32 noundef %pfn.033) #21
  %tobool9.not = icmp ne ptr %call8, null
  %inc = zext i1 %tobool9.not to i32
  %spec.select = add i32 %n.132, %inc
  %inc12 = add i32 %pfn.033, 1
  %exitcond.not = icmp eq i32 %inc12, %add.i
  br i1 %exitcond.not, label %for.body7.for.inc15_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.body7.for.inc15_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7.for.inc15_crit_edge, %if.end.for.inc15_crit_edge, %is_highmem.exit.for.inc15_crit_edge, %for.body.for.inc15_crit_edge
  %n.4 = phi i32 [ %n.038, %for.body.for.inc15_crit_edge ], [ %n.038, %is_highmem.exit.for.inc15_crit_edge ], [ %n.038, %if.end.for.inc15_crit_edge ], [ %spec.select, %for.body7.for.inc15_crit_edge ]
  %call16 = tail call ptr @next_zone(ptr noundef nonnull %zone.035) #17
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %for.inc15.for.end17_crit_edge, label %for.inc15.for.body_crit_edge

for.inc15.for.body_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc15.for.end17_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end17

for.end17:                                        ; preds = %for.inc15.for.end17_crit_edge, %entry.for.end17_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end17_crit_edge ], [ %n.4, %for.inc15.for.end17_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @count_data_pages() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @first_online_pgdat() #17
  %tobool.not31 = icmp eq ptr %call, null
  br i1 %tobool.not31, label %entry.for.end16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %entry.for.body_crit_edge
  %n.035 = phi i32 [ %n.3, %for.inc14.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %zone.032 = phi ptr [ %call15, %for.inc14.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.032, i32 0, i32 13
  %0 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i.not = icmp eq i32 %0, 0
  br i1 %tobool.i.not, label %for.body.for.inc14_crit_edge, label %if.else

for.body.for.inc14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc14

if.else:                                          ; preds = %for.body
  %zone_pgdat.i = getelementptr inbounds %struct.zone, ptr %zone.032, i32 0, i32 4
  %1 = load ptr, ptr %zone_pgdat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %zone.032 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i)
  %2 = icmp eq i32 %sub.ptr.sub.i, 2304
  br i1 %2, label %if.else.for.inc14_crit_edge, label %is_highmem.exit

if.else.for.inc14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc14

is_highmem.exit:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i)
  %3 = icmp ne i32 %sub.ptr.sub.i, 3456
  %4 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2.i.i = icmp ne i32 %4, 2
  %5 = select i1 %3, i1 true, i1 %cmp2.i.i
  br i1 %5, label %if.end, label %is_highmem.exit.for.inc14_crit_edge

is_highmem.exit.for.inc14_crit_edge:              ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc14

if.end:                                           ; preds = %is_highmem.exit
  tail call void @mark_free_pages(ptr noundef nonnull %zone.032) #17
  %zone_start_pfn.i = getelementptr inbounds %struct.zone, ptr %zone.032, i32 0, i32 10
  %6 = load i32, ptr %zone_start_pfn.i, align 4
  %spanned_pages.i = getelementptr inbounds %struct.zone, ptr %zone.032, i32 0, i32 12
  %7 = load i32, ptr %spanned_pages.i, align 4
  %add.i = add i32 %7, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add.i)
  %cmp28 = icmp ult i32 %6, %add.i
  br i1 %cmp28, label %if.end.for.body7_crit_edge, label %if.end.for.inc14_crit_edge

if.end.for.inc14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc14

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %n.130 = phi i32 [ %spec.select, %for.body7.for.body7_crit_edge ], [ %n.035, %if.end.for.body7_crit_edge ]
  %pfn.029 = phi i32 [ %inc12, %for.body7.for.body7_crit_edge ], [ %6, %if.end.for.body7_crit_edge ]
  %call8 = tail call fastcc ptr @saveable_page(ptr noundef nonnull %zone.032, i32 noundef %pfn.029) #21
  %tobool9.not = icmp ne ptr %call8, null
  %inc = zext i1 %tobool9.not to i32
  %spec.select = add i32 %n.130, %inc
  %inc12 = add i32 %pfn.029, 1
  %exitcond.not = icmp eq i32 %inc12, %add.i
  br i1 %exitcond.not, label %for.body7.for.inc14_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.body7.for.inc14_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc14

for.inc14:                                        ; preds = %for.body7.for.inc14_crit_edge, %if.end.for.inc14_crit_edge, %is_highmem.exit.for.inc14_crit_edge, %if.else.for.inc14_crit_edge, %for.body.for.inc14_crit_edge
  %n.3 = phi i32 [ %n.035, %is_highmem.exit.for.inc14_crit_edge ], [ %n.035, %for.body.for.inc14_crit_edge ], [ %n.035, %if.else.for.inc14_crit_edge ], [ %n.035, %if.end.for.inc14_crit_edge ], [ %spec.select, %for.body7.for.inc14_crit_edge ]
  %call15 = tail call ptr @next_zone(ptr noundef nonnull %zone.032) #17
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %for.inc14.for.end16_crit_edge, label %for.inc14.for.body_crit_edge

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc14.for.end16_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end16

for.end16:                                        ; preds = %for.inc14.for.end16_crit_edge, %entry.for.end16_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end16_crit_edge ], [ %n.3, %for.inc14.for.end16_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shrink_all_memory(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @swsusp_show_speed(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @swsusp_save() local_unnamed_addr #3 align 64 {
entry:
  %addr.i.i41 = alloca ptr, align 4
  %bit.i.i42 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  %addr.i.i.i = alloca ptr, align 4
  %bit.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #19
  tail call void @drain_local_pages(ptr noundef null) #17
  %call1 = tail call fastcc i32 @count_data_pages() #21
  %call2 = tail call fastcc i32 @count_highmem_pages() #21
  %add = add i32 %call2, %call1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %add) #19
  %call8 = tail call fastcc i32 @enough_free_mem(i32 noundef %call1, i32 noundef %call2) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %do.end11, label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not.i = icmp eq i32 %call2, 0
  br i1 %cmp.not.i, label %if.end.if.end6.i_crit_edge, label %if.then.i

if.end.if.end6.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call fastcc ptr @get_image_page(i32 noundef 2592, i32 noundef 0) #17
  store ptr %call.i.i, ptr @buffer, align 4
  %tobool.not.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.not.i, label %if.then.i.do.end19_crit_edge, label %if.end.i

if.then.i.do.end19_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.end.i:                                         ; preds = %if.then.i
  %0 = load i32, ptr @alloc_highmem, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %0)
  %cmp2.i = icmp ugt i32 %call2, %0
  br i1 %cmp2.i, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  %sub.i = sub i32 %call2, %0
  %call.i.i.i = tail call ptr @first_online_pgdat() #17
  %tobool.not14.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not14.i.i.i, label %if.then3.i.count_free_highmem_pages.exit.i.i_crit_edge, label %if.then3.i.for.body.i.i.i_crit_edge

if.then3.i.for.body.i.i.i_crit_edge:              ; preds = %if.then3.i
  br label %for.body.i.i.i

if.then3.i.count_free_highmem_pages.exit.i.i_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_free_highmem_pages.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then3.i.for.body.i.i.i_crit_edge
  %cnt.017.i.i.i = phi i32 [ %cnt.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then3.i.for.body.i.i.i_crit_edge ]
  %zone.015.i.i.i = phi ptr [ %call7.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i.i.i, %if.then3.i.for.body.i.i.i_crit_edge ]
  %present_pages.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i.i, i32 0, i32 13
  %1 = load i32, ptr %present_pages.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.else.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  %zone_pgdat.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i.i, i32 0, i32 4
  %2 = load ptr, ptr %zone_pgdat.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %zone.015.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i.i.i.i)
  %3 = icmp eq i32 %sub.ptr.sub.i.i.i.i, 2304
  br i1 %3, label %if.else.i.i.i.if.then4.i.i.i_crit_edge, label %is_highmem.exit.i.i.i

if.else.i.i.i.if.then4.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i.i

is_highmem.exit.i.i.i:                            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i.i.i.i)
  %4 = icmp ne i32 %sub.ptr.sub.i.i.i.i, 3456
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.i.i.i.i = icmp ne i32 %5, 2
  %6 = select i1 %4, i1 true, i1 %cmp2.i.i.i.i.i
  br i1 %6, label %is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge, label %is_highmem.exit.i.i.i.if.then4.i.i.i_crit_edge

is_highmem.exit.i.i.i.if.then4.i.i.i_crit_edge:   ; preds = %is_highmem.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i.i

is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %is_highmem.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.then4.i.i.i:                                   ; preds = %is_highmem.exit.i.i.i.if.then4.i.i.i_crit_edge, %if.else.i.i.i.if.then4.i.i.i_crit_edge
  %vm_stat.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i.i, i32 0, i32 37
  %7 = load volatile i32, ptr %vm_stat.i.i.i.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #15
  %add.i.i.i = add i32 %8, %cnt.017.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then4.i.i.i, %is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %cnt.1.i.i.i = phi i32 [ %add.i.i.i, %if.then4.i.i.i ], [ %cnt.017.i.i.i, %is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge ], [ %cnt.017.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %call7.i.i.i = tail call ptr @next_zone(ptr noundef nonnull %zone.015.i.i.i) #17
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i.count_free_highmem_pages.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc.i.i.i.count_free_highmem_pages.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_free_highmem_pages.exit.i.i

count_free_highmem_pages.exit.i.i:                ; preds = %for.inc.i.i.i.count_free_highmem_pages.exit.i.i_crit_edge, %if.then3.i.count_free_highmem_pages.exit.i.i_crit_edge
  %cnt.0.lcssa.i.i.i = phi i32 [ 0, %if.then3.i.count_free_highmem_pages.exit.i.i_crit_edge ], [ %cnt.1.i.i.i, %for.inc.i.i.i.count_free_highmem_pages.exit.i.i_crit_edge ]
  %9 = tail call i32 @llvm.umin.i32(i32 %cnt.0.lcssa.i.i.i, i32 %sub.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.not3.i.i = icmp eq i32 %9, 0
  br i1 %cmp1.not3.i.i, label %count_free_highmem_pages.exit.i.i.alloc_highmem_pages.exit.i_crit_edge, label %count_free_highmem_pages.exit.i.i.while.body.i.i_crit_edge

count_free_highmem_pages.exit.i.i.while.body.i.i_crit_edge: ; preds = %count_free_highmem_pages.exit.i.i
  br label %while.body.i.i

count_free_highmem_pages.exit.i.i.alloc_highmem_pages.exit.i_crit_edge: ; preds = %count_free_highmem_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_highmem_pages.exit.i

while.body.i.i:                                   ; preds = %memory_bm_set_bit.exit.i.i.while.body.i.i_crit_edge, %count_free_highmem_pages.exit.i.i.while.body.i.i_crit_edge
  %to_alloc.14.i.i = phi i32 [ %dec.i.i, %memory_bm_set_bit.exit.i.i.while.body.i.i_crit_edge ], [ %9, %count_free_highmem_pages.exit.i.i.while.body.i.i_crit_edge ]
  %call2.i.i = tail call fastcc ptr @alloc_image_page(i32 noundef 2050) #17
  %10 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call2.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  store i32 -1, ptr %bit.i.i.i, align 4, !annotation !10
  %call.i1.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %add.i.i, ptr noundef nonnull %addr.i.i.i, ptr noundef nonnull %bit.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not.i2.i.i, label %memory_bm_set_bit.exit.i.i, label %do.body3.i.i.i, !prof !11

do.body3.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i.i:                       ; preds = %while.body.i.i
  %dec.i.i = add i32 %to_alloc.14.i.i, -1
  %12 = load i32, ptr %bit.i.i.i, align 4
  %13 = load ptr, ptr %addr.i.i.i, align 4
  tail call void @_set_bit(i32 noundef %12, ptr noundef %13) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  %cmp1.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp1.not.i.i, label %memory_bm_set_bit.exit.i.i.alloc_highmem_pages.exit.i_crit_edge, label %memory_bm_set_bit.exit.i.i.while.body.i.i_crit_edge

memory_bm_set_bit.exit.i.i.while.body.i.i_crit_edge: ; preds = %memory_bm_set_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

memory_bm_set_bit.exit.i.i.alloc_highmem_pages.exit.i_crit_edge: ; preds = %memory_bm_set_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %alloc_highmem_pages.exit.i

alloc_highmem_pages.exit.i:                       ; preds = %memory_bm_set_bit.exit.i.i.alloc_highmem_pages.exit.i_crit_edge, %count_free_highmem_pages.exit.i.i.alloc_highmem_pages.exit.i_crit_edge
  %sub.i.i = add i32 %sub.i, %call1
  %add.i = sub i32 %sub.i.i, %9
  br label %if.end6.i

if.end6.i:                                        ; preds = %alloc_highmem_pages.exit.i, %if.end.i.if.end6.i_crit_edge, %if.end.if.end6.i_crit_edge
  %nr_pages.addr.0.i = phi i32 [ %add.i, %alloc_highmem_pages.exit.i ], [ %call1, %if.end.i.if.end6.i_crit_edge ], [ %call1, %if.end.if.end6.i_crit_edge ]
  %14 = load i32, ptr @alloc_normal, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_pages.addr.0.i, i32 %14)
  %cmp7.i = icmp ugt i32 %nr_pages.addr.0.i, %14
  br i1 %cmp7.i, label %while.body.preheader.i, label %if.end6.i.if.end22_crit_edge

if.end6.i.if.end22_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

while.body.preheader.i:                           ; preds = %if.end6.i
  %sub9.i = sub i32 %nr_pages.addr.0.i, %14
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %dec7.in.i = phi i32 [ %dec7.i, %cleanup.i.while.body.i_crit_edge ], [ %sub9.i, %while.body.preheader.i ]
  %dec7.i = add i32 %dec7.in.i, -1
  %call11.i = tail call fastcc ptr @alloc_image_page(i32 noundef 2592) #17
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %while.body.i.do.end19_crit_edge, label %if.end14.i

while.body.i.do.end19_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end19

if.end14.i:                                       ; preds = %while.body.i
  %15 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call11.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %16 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add15.i = add i32 %sub.ptr.div.i, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i1.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %add15.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %cleanup.i, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

cleanup.i:                                        ; preds = %if.end14.i
  %17 = load i32, ptr %bit.i.i, align 4
  %18 = load ptr, ptr %addr.i.i, align 4
  tail call void @_set_bit(i32 noundef %17, ptr noundef %18) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  %cmp10.not.i = icmp eq i32 %dec7.i, 0
  br i1 %cmp10.not.i, label %cleanup.i.if.end22_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.if.end22_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

do.end19:                                         ; preds = %while.body.i.do.end19_crit_edge, %if.then.i.do.end19_crit_edge
  tail call void @swsusp_free() #17
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #19
  br label %cleanup

if.end22:                                         ; preds = %cleanup.i.if.end22_crit_edge, %if.end6.i.if.end22_crit_edge
  tail call void @drain_local_pages(ptr noundef null) #17
  %call.i = tail call ptr @first_online_pgdat() #17
  %tobool.not5.i = icmp eq ptr %call.i, null
  br i1 %tobool.not5.i, label %if.end22.for.end11.i_crit_edge, label %if.end22.for.body.i_crit_edge

if.end22.for.body.i_crit_edge:                    ; preds = %if.end22
  br label %for.body.i

if.end22.for.end11.i_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end11.i

for.body.i:                                       ; preds = %for.inc9.i.for.body.i_crit_edge, %if.end22.for.body.i_crit_edge
  %zone.06.i = phi ptr [ %call10.i, %for.inc9.i.for.body.i_crit_edge ], [ %call.i, %if.end22.for.body.i_crit_edge ]
  %present_pages.i.i = getelementptr inbounds %struct.zone, ptr %zone.06.i, i32 0, i32 13
  %19 = load i32, ptr %present_pages.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc9.i_crit_edge, label %if.else.i

for.body.i.for.inc9.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.i

if.else.i:                                        ; preds = %for.body.i
  tail call void @mark_free_pages(ptr noundef nonnull %zone.06.i) #17
  %zone_start_pfn.i.i = getelementptr inbounds %struct.zone, ptr %zone.06.i, i32 0, i32 10
  %20 = load i32, ptr %zone_start_pfn.i.i, align 4
  %spanned_pages.i.i = getelementptr inbounds %struct.zone, ptr %zone.06.i, i32 0, i32 12
  %21 = load i32, ptr %spanned_pages.i.i, align 4
  %add.i.i43 = add i32 %21, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add.i.i43)
  %cmp2.i44 = icmp ult i32 %20, %add.i.i43
  br i1 %cmp2.i44, label %for.body4.lr.ph.i, label %if.else.i.for.inc9.i_crit_edge

if.else.i.for.inc9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.i

for.body4.lr.ph.i:                                ; preds = %if.else.i
  %zone_pgdat.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.06.i, i32 0, i32 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %zone.06.i to i32
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %pfn.03.i = phi i32 [ %20, %for.body4.lr.ph.i ], [ %inc.i, %for.inc.i.for.body4.i_crit_edge ]
  %22 = load ptr, ptr %zone_pgdat.i.i.i, align 4
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i.i.i)
  %23 = icmp eq i32 %sub.ptr.sub.i.i.i, 2304
  br i1 %23, label %for.body4.i.cond.true.i.i_crit_edge, label %is_highmem.exit.i.i

for.body4.i.cond.true.i.i_crit_edge:              ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true.i.i

is_highmem.exit.i.i:                              ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i.i.i)
  %24 = icmp ne i32 %sub.ptr.sub.i.i.i, 3456
  %25 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.i.i.i = icmp ne i32 %25, 2
  %26 = select i1 %24, i1 true, i1 %cmp2.i.i.i.i
  br i1 %26, label %cond.false.i.i, label %is_highmem.exit.i.i.cond.true.i.i_crit_edge

is_highmem.exit.i.i.cond.true.i.i_crit_edge:      ; preds = %is_highmem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.true.i.i

cond.true.i.i:                                    ; preds = %is_highmem.exit.i.i.cond.true.i.i_crit_edge, %for.body4.i.cond.true.i.i_crit_edge
  %call1.i.i = tail call fastcc ptr @saveable_highmem_page(ptr noundef nonnull %zone.06.i, i32 noundef %pfn.03.i) #17
  br label %page_is_saveable.exit.i

cond.false.i.i:                                   ; preds = %is_highmem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i.i45 = tail call fastcc ptr @saveable_page(ptr noundef nonnull %zone.06.i, i32 noundef %pfn.03.i) #17
  br label %page_is_saveable.exit.i

page_is_saveable.exit.i:                          ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi ptr [ %call1.i.i, %cond.true.i.i ], [ %call2.i.i45, %cond.false.i.i ]
  %tobool6.not.i = icmp eq ptr %cond.i.i, null
  br i1 %tobool6.not.i, label %page_is_saveable.exit.i.for.inc.i_crit_edge, label %if.then7.i

page_is_saveable.exit.i.for.inc.i_crit_edge:      ; preds = %page_is_saveable.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then7.i:                                       ; preds = %page_is_saveable.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i41) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i41, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i42) #15
  store i32 -1, ptr %bit.i.i42, align 4, !annotation !10
  %call.i.i46 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @orig_bm, i32 noundef %pfn.03.i, ptr noundef nonnull %addr.i.i41, ptr noundef nonnull %bit.i.i42) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46)
  %tobool.not.i.i = icmp eq i32 %call.i.i46, 0
  br i1 %tobool.not.i.i, label %memory_bm_set_bit.exit.i, label %do.body3.i.i47, !prof !11

do.body3.i.i47:                                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i:                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  %27 = load i32, ptr %bit.i.i42, align 4
  %28 = load ptr, ptr %addr.i.i41, align 4
  tail call void @_set_bit(i32 noundef %27, ptr noundef %28) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i42) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i41) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %memory_bm_set_bit.exit.i, %page_is_saveable.exit.i.for.inc.i_crit_edge
  %inc.i = add i32 %pfn.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i.i43
  br i1 %exitcond.not.i, label %for.inc.i.for.inc9.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.i

for.inc.i.for.inc9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %for.inc.i.for.inc9.i_crit_edge, %if.else.i.for.inc9.i_crit_edge, %for.body.i.for.inc9.i_crit_edge
  %call10.i = tail call ptr @next_zone(ptr noundef nonnull %zone.06.i) #17
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %for.inc9.i.for.end11.i_crit_edge, label %for.inc9.i.for.body.i_crit_edge

for.inc9.i.for.body.i_crit_edge:                  ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc9.i.for.end11.i_crit_edge:                 ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end11.i

for.end11.i:                                      ; preds = %for.inc9.i.for.end11.i_crit_edge, %if.end22.for.end11.i_crit_edge
  %29 = load ptr, ptr @orig_bm, align 4
  store ptr %29, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2), align 4
  %leaves.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %leaves.i.i, align 4
  store ptr %30, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 3), align 4
  %31 = load ptr, ptr @copy_bm, align 4
  store ptr %31, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i1.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %leaves.i1.i, align 4
  store ptr %32, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  %call139.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @orig_bm) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call139.i)
  %cmp1410.i = icmp eq i32 %call139.i, -1
  br i1 %cmp1410.i, label %for.end11.i.copy_data_pages.exit_crit_edge, label %for.end11.i.if.end18.i_crit_edge, !prof !15

for.end11.i.if.end18.i_crit_edge:                 ; preds = %for.end11.i
  br label %if.end18.i

for.end11.i.copy_data_pages.exit_crit_edge:       ; preds = %for.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_data_pages.exit

if.end18.i:                                       ; preds = %copy_data_page.exit.i.if.end18.i_crit_edge, %for.end11.i.if.end18.i_crit_edge
  %call1311.i = phi i32 [ %call13.i, %copy_data_page.exit.i.if.end18.i_crit_edge ], [ %call139.i, %for.end11.i.if.end18.i_crit_edge ]
  %call19.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  %33 = load ptr, ptr @mem_map, align 4
  %34 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i48 = sub i32 %call1311.i, %34
  %add.ptr.i.i = getelementptr %struct.page, ptr %33, i32 %sub.i.i48
  %sub1.i.i = sub i32 %call19.i, %34
  %add.ptr2.i.i = getelementptr %struct.page, ptr %33, i32 %sub1.i.i
  %35 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i.i = lshr i32 %35, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.end18.i.if.then.i.i_crit_edge, label %is_highmem_idx.exit.i.i

if.end18.i.if.then.i.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i.i)
  %cmp1.i.i.i = icmp ne i32 %shr.i.i.i, 3
  %36 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i.i.i = icmp ne i32 %36, 2
  %37 = select i1 %cmp1.i.i.i, i1 true, i1 %cmp2.i.i.i
  br i1 %37, label %if.else.i.i, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.end18.i.if.then.i.i_crit_edge
  %38 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i = or i32 %38, 512
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 213
  %45 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i = add i32 %45, 1
  store i32 %inc.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr.i.i, i32 noundef %or.i.i.i) #17
  %46 = load i32, ptr @pgprot_kernel, align 4
  %or.i39.i.i = or i32 %46, 512
  %47 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i40.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i40.i.i to ptr
  %preempt_count.i.i.i.i41.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i41.i.i, align 4
  %add.i.i.i42.i.i = add i32 %49, 1
  store volatile i32 %add.i.i.i42.i.i, ptr %preempt_count.i.i.i.i41.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i43.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i.i43.i.i to ptr
  %task.i.i.i.i44.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %task.i.i.i.i44.i.i, align 8
  %pagefault_disabled.i.i.i.i45.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 213
  %53 = load i32, ptr %pagefault_disabled.i.i.i.i45.i.i, align 8
  %inc.i.i.i.i46.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i46.i.i, ptr %pagefault_disabled.i.i.i.i45.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i47.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr2.i.i, i32 noundef %or.i39.i.i) #17
  br label %for.body.i.i.i50

for.body.i.i.i50:                                 ; preds = %for.body.i.i.i50.for.body.i.i.i50_crit_edge, %if.then.i.i
  %n.05.i.i.i = phi i32 [ 1024, %if.then.i.i ], [ %dec.i.i.i, %for.body.i.i.i50.for.body.i.i.i50_crit_edge ]
  %src.addr.04.i.i.i = phi ptr [ %call.i.i.i.i, %if.then.i.i ], [ %incdec.ptr.i.i.i, %for.body.i.i.i50.for.body.i.i.i50_crit_edge ]
  %dst.addr.03.i.i.i = phi ptr [ %call.i.i47.i.i, %if.then.i.i ], [ %incdec.ptr1.i.i.i, %for.body.i.i.i50.for.body.i.i.i50_crit_edge ]
  %incdec.ptr.i.i.i = getelementptr i32, ptr %src.addr.04.i.i.i, i32 1
  %54 = load i32, ptr %src.addr.04.i.i.i, align 4
  %incdec.ptr1.i.i.i = getelementptr i32, ptr %dst.addr.03.i.i.i, i32 1
  store i32 %54, ptr %dst.addr.03.i.i.i, align 4
  %dec.i.i.i = add nsw i32 %n.05.i.i.i, -1
  %tobool.not.i.i.i49 = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i.i.i49, label %do_copy_page.exit.i.i, label %for.body.i.i.i50.for.body.i.i.i50_crit_edge

for.body.i.i.i50.for.body.i.i.i50_crit_edge:      ; preds = %for.body.i.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i50

do_copy_page.exit.i.i:                            ; preds = %for.body.i.i.i50
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i47.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %55 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 213
  %58 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i32 %58, -1
  store i32 %dec.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i48.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i1.i48.i.i to ptr
  %task.i.i.i49.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %task.i.i.i49.i.i, align 8
  %pagefault_disabled.i.i.i50.i.i = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 213
  %65 = load i32, ptr %pagefault_disabled.i.i.i50.i.i, align 8
  %dec.i.i.i51.i.i = add i32 %65, -1
  store i32 %dec.i.i.i51.i.i, ptr %pagefault_disabled.i.i.i50.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  br label %if.end28.sink.split.i.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i
  %66 = load i32, ptr %add.ptr2.i.i, align 4
  %shr.i55.i.i = lshr i32 %66, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i55.i.i)
  %cmp.i56.i.i = icmp ne i32 %shr.i55.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i55.i.i)
  %cmp1.i57.i.i = icmp ne i32 %shr.i55.i.i, 3
  %67 = select i1 %cmp1.i57.i.i, i1 true, i1 %cmp2.i.i.i
  %or.cond.i.i = select i1 %cmp.i56.i.i, i1 %67, i1 false
  br i1 %or.cond.i.i, label %if.else26.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.else.i.i
  %68 = load ptr, ptr @buffer, align 4
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %add.ptr.i.i) #17
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then18.i.i
  %n.05.i.i.i.i = phi i32 [ 1024, %if.then18.i.i ], [ %dec.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %src.addr.04.i.i.i.i = phi ptr [ %call1.i.i.i, %if.then18.i.i ], [ %incdec.ptr.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %dst.addr.03.i.i.i.i = phi ptr [ %68, %if.then18.i.i ], [ %incdec.ptr1.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %incdec.ptr.i.i.i.i = getelementptr i32, ptr %src.addr.04.i.i.i.i, i32 1
  %69 = load i32, ptr %src.addr.04.i.i.i.i, align 4
  %incdec.ptr1.i.i.i.i = getelementptr i32, ptr %dst.addr.03.i.i.i.i, i32 1
  store i32 %69, ptr %dst.addr.03.i.i.i.i, align 4
  %dec.i.i.i.i = add nsw i32 %n.05.i.i.i.i, -1
  %tobool.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %safe_copy_page.exit.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i.i

safe_copy_page.exit.i.i:                          ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %70 = load i32, ptr @pgprot_kernel, align 4
  %or.i62.i.i = or i32 %70, 512
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i63.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i63.i.i to ptr
  %preempt_count.i.i.i.i64.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = load volatile i32, ptr %preempt_count.i.i.i.i64.i.i, align 4
  %add.i.i.i65.i.i = add i32 %73, 1
  store volatile i32 %add.i.i.i65.i.i, ptr %preempt_count.i.i.i.i64.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %74 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i66.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i1.i.i66.i.i to ptr
  %task.i.i.i.i67.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 2
  %76 = load ptr, ptr %task.i.i.i.i67.i.i, align 8
  %pagefault_disabled.i.i.i.i68.i.i = getelementptr inbounds %struct.task_struct, ptr %76, i32 0, i32 213
  %77 = load i32, ptr %pagefault_disabled.i.i.i.i68.i.i, align 8
  %inc.i.i.i.i69.i.i = add i32 %77, 1
  store i32 %inc.i.i.i.i69.i.i, ptr %pagefault_disabled.i.i.i.i68.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i70.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr2.i.i, i32 noundef %or.i62.i.i) #17
  %78 = load ptr, ptr @buffer, align 4
  tail call void @copy_page(ptr noundef %call.i.i70.i.i, ptr noundef %78) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i70.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i71.i.i = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i1.i71.i.i to ptr
  %task.i.i.i72.i.i = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %task.i.i.i72.i.i, align 8
  %pagefault_disabled.i.i.i73.i.i = getelementptr inbounds %struct.task_struct, ptr %81, i32 0, i32 213
  %82 = load i32, ptr %pagefault_disabled.i.i.i73.i.i, align 8
  %dec.i.i.i74.i.i = add i32 %82, -1
  store i32 %dec.i.i.i74.i.i, ptr %pagefault_disabled.i.i.i73.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  br label %if.end28.sink.split.i.i

if.else26.i.i:                                    ; preds = %if.else.i.i
  %call27.i.i = tail call ptr @page_address(ptr noundef %add.ptr2.i.i) #17
  %call1.i78.i.i = tail call ptr @page_address(ptr noundef %add.ptr.i.i) #17
  br label %for.body.i.i86.i.i

for.body.i.i86.i.i:                               ; preds = %for.body.i.i86.i.i.for.body.i.i86.i.i_crit_edge, %if.else26.i.i
  %n.05.i.i79.i.i = phi i32 [ 1024, %if.else26.i.i ], [ %dec.i.i84.i.i, %for.body.i.i86.i.i.for.body.i.i86.i.i_crit_edge ]
  %src.addr.04.i.i80.i.i = phi ptr [ %call1.i78.i.i, %if.else26.i.i ], [ %incdec.ptr.i.i82.i.i, %for.body.i.i86.i.i.for.body.i.i86.i.i_crit_edge ]
  %dst.addr.03.i.i81.i.i = phi ptr [ %call27.i.i, %if.else26.i.i ], [ %incdec.ptr1.i.i83.i.i, %for.body.i.i86.i.i.for.body.i.i86.i.i_crit_edge ]
  %incdec.ptr.i.i82.i.i = getelementptr i32, ptr %src.addr.04.i.i80.i.i, i32 1
  %83 = load i32, ptr %src.addr.04.i.i80.i.i, align 4
  %incdec.ptr1.i.i83.i.i = getelementptr i32, ptr %dst.addr.03.i.i81.i.i, i32 1
  store i32 %83, ptr %dst.addr.03.i.i81.i.i, align 4
  %dec.i.i84.i.i = add nsw i32 %n.05.i.i79.i.i, -1
  %tobool.not.i.i85.i.i = icmp eq i32 %dec.i.i84.i.i, 0
  br i1 %tobool.not.i.i85.i.i, label %for.body.i.i86.i.i.copy_data_page.exit.i_crit_edge, label %for.body.i.i86.i.i.for.body.i.i86.i.i_crit_edge

for.body.i.i86.i.i.for.body.i.i86.i.i_crit_edge:  ; preds = %for.body.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i86.i.i

for.body.i.i86.i.i.copy_data_page.exit.i_crit_edge: ; preds = %for.body.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_data_page.exit.i

if.end28.sink.split.i.i:                          ; preds = %safe_copy_page.exit.i.i, %do_copy_page.exit.i.i
  %84 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i52.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i52.i.i to ptr
  %preempt_count.i.i.i53.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = load volatile i32, ptr %preempt_count.i.i.i53.i.i, align 4
  %sub.i.i77.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i77.i.i, ptr %preempt_count.i.i.i53.i.i, align 4
  br label %copy_data_page.exit.i

copy_data_page.exit.i:                            ; preds = %if.end28.sink.split.i.i, %for.body.i.i86.i.i.copy_data_page.exit.i_crit_edge
  %call13.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @orig_bm) #17
  %cmp14.i = icmp eq i32 %call13.i, -1
  br i1 %cmp14.i, label %copy_data_page.exit.i.copy_data_pages.exit_crit_edge, label %copy_data_page.exit.i.if.end18.i_crit_edge, !prof !15

copy_data_page.exit.i.if.end18.i_crit_edge:       ; preds = %copy_data_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18.i

copy_data_page.exit.i.copy_data_pages.exit_crit_edge: ; preds = %copy_data_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_data_pages.exit

copy_data_pages.exit:                             ; preds = %copy_data_page.exit.i.copy_data_pages.exit_crit_edge, %for.end11.i.copy_data_pages.exit_crit_edge
  store i32 %add, ptr @nr_copy_pages, align 4
  %mul = shl i32 %add, 2
  %sub = add i32 %mul, 4095
  %div40 = lshr i32 %sub, 12
  store i32 %div40, ptr @nr_meta_pages, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %add) #19
  br label %cleanup

cleanup:                                          ; preds = %copy_data_pages.exit, %do.end19, %do.end11
  %retval.0 = phi i32 [ -12, %do.end19 ], [ 0, %copy_data_pages.exit ], [ -12, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_local_pages(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @enough_free_mem(i32 noundef %nr_pages, i32 noundef %nr_highmem) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @alloc_normal, align 4
  %call = tail call ptr @first_online_pgdat() #17
  %tobool.not28 = icmp eq ptr %call, null
  br i1 %tobool.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %zone.030 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %free.029 = phi i32 [ %free.1, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %present_pages.i = getelementptr inbounds %struct.zone, ptr %zone.030, i32 0, i32 13
  %1 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else:                                          ; preds = %for.body
  %zone_pgdat.i = getelementptr inbounds %struct.zone, ptr %zone.030, i32 0, i32 4
  %2 = load ptr, ptr %zone_pgdat.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %zone.030 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i)
  %3 = icmp eq i32 %sub.ptr.sub.i, 2304
  br i1 %3, label %if.else.for.inc_crit_edge, label %is_highmem.exit

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

is_highmem.exit:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i)
  %4 = icmp ne i32 %sub.ptr.sub.i, 3456
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.i = icmp ne i32 %5, 2
  %6 = select i1 %4, i1 true, i1 %cmp2.i.i
  br i1 %6, label %if.then4, label %is_highmem.exit.for.inc_crit_edge

is_highmem.exit.for.inc_crit_edge:                ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then4:                                         ; preds = %is_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  %vm_stat.i = getelementptr inbounds %struct.zone, ptr %zone.030, i32 0, i32 37
  %7 = load volatile i32, ptr %vm_stat.i, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #15
  %add = add i32 %8, %free.029
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %is_highmem.exit.for.inc_crit_edge, %if.else.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %free.1 = phi i32 [ %free.029, %is_highmem.exit.for.inc_crit_edge ], [ %add, %if.then4 ], [ %free.029, %for.body.for.inc_crit_edge ], [ %free.029, %if.else.for.inc_crit_edge ]
  %call7 = tail call ptr @next_zone(ptr noundef nonnull %zone.030) #17
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %free.0.lcssa = phi i32 [ %0, %entry.for.end_crit_edge ], [ %free.1, %for.inc.for.end_crit_edge ]
  %call.i.i = tail call ptr @first_online_pgdat() #17
  %tobool.not14.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not14.i.i, label %for.end.count_pages_for_highmem.exit_crit_edge, label %for.end.for.body.i.i_crit_edge

for.end.for.body.i.i_crit_edge:                   ; preds = %for.end
  br label %for.body.i.i

for.end.count_pages_for_highmem.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_pages_for_highmem.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.for.body.i.i_crit_edge
  %cnt.017.i.i = phi i32 [ %cnt.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.for.body.i.i_crit_edge ]
  %zone.015.i.i = phi ptr [ %call7.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %for.end.for.body.i.i_crit_edge ]
  %present_pages.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i, i32 0, i32 13
  %9 = load i32, ptr %present_pages.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.else.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %zone_pgdat.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i, i32 0, i32 4
  %10 = load ptr, ptr %zone_pgdat.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %zone.015.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i.i.i)
  %11 = icmp eq i32 %sub.ptr.sub.i.i.i, 2304
  br i1 %11, label %if.else.i.i.if.then4.i.i_crit_edge, label %is_highmem.exit.i.i

if.else.i.i.if.then4.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i

is_highmem.exit.i.i:                              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i.i.i)
  %12 = icmp ne i32 %sub.ptr.sub.i.i.i, 3456
  %13 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp2.i.i.i.i = icmp ne i32 %13, 2
  %14 = select i1 %12, i1 true, i1 %cmp2.i.i.i.i
  br i1 %14, label %is_highmem.exit.i.i.for.inc.i.i_crit_edge, label %is_highmem.exit.i.i.if.then4.i.i_crit_edge

is_highmem.exit.i.i.if.then4.i.i_crit_edge:       ; preds = %is_highmem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i

is_highmem.exit.i.i.for.inc.i.i_crit_edge:        ; preds = %is_highmem.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then4.i.i:                                     ; preds = %is_highmem.exit.i.i.if.then4.i.i_crit_edge, %if.else.i.i.if.then4.i.i_crit_edge
  %vm_stat.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i, i32 0, i32 37
  %15 = load volatile i32, ptr %vm_stat.i.i.i, align 4
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0) #15
  %add.i.i = add i32 %16, %cnt.017.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then4.i.i, %is_highmem.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %cnt.1.i.i = phi i32 [ %add.i.i, %if.then4.i.i ], [ %cnt.017.i.i, %is_highmem.exit.i.i.for.inc.i.i_crit_edge ], [ %cnt.017.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %call7.i.i = tail call ptr @next_zone(ptr noundef nonnull %zone.015.i.i) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i.i, label %for.inc.i.i.count_pages_for_highmem.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.count_pages_for_highmem.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_pages_for_highmem.exit

count_pages_for_highmem.exit:                     ; preds = %for.inc.i.i.count_pages_for_highmem.exit_crit_edge, %for.end.count_pages_for_highmem.exit_crit_edge
  %cnt.0.lcssa.i.i = phi i32 [ 0, %for.end.count_pages_for_highmem.exit_crit_edge ], [ %cnt.1.i.i, %for.inc.i.i.count_pages_for_highmem.exit_crit_edge ]
  %17 = load i32, ptr @alloc_highmem, align 4
  %add.i = add i32 %17, %cnt.0.lcssa.i.i
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %nr_highmem, i32 %add.i) #15
  %add9 = add i32 %18, %nr_pages
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enough_free_mem.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enough_free_mem, %do.end)) #15
          to label %if.then15 [label %do.end], !srcloc !17

if.then15:                                        ; preds = %count_pages_for_highmem.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @enough_free_mem.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.50, i32 noundef %add9, i32 noundef 1024, i32 noundef %free.0.lcssa) #17
  br label %do.end

do.end:                                           ; preds = %if.then15, %count_pages_for_highmem.exit
  %add17 = add i32 %add9, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %free.0.lcssa, i32 %add17)
  %cmp = icmp ugt i32 %free.0.lcssa, %add17
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @snapshot_get_image_size() local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_copy_pages, align 4
  %1 = load i32, ptr @nr_meta_pages, align 4
  %add = add i32 %0, 1
  %add1 = add i32 %add, %1
  ret i32 %add1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snapshot_read_next(ptr nocapture noundef %handle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %handle, align 4
  %1 = load i32, ptr @nr_meta_pages, align 4
  %2 = load i32, ptr @nr_copy_pages, align 4
  %add = add i32 %2, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add)
  %cmp = icmp ugt i32 %0, %add
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @buffer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then1, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then1:                                         ; preds = %if.end
  %call = tail call fastcc ptr @get_image_page(i32 noundef 2592, i32 noundef 0) #21
  store ptr %call, ptr @buffer, align 4
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then1.return_crit_edge, label %if.then1.if.end5_crit_edge

if.then1.return_crit_edge:                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = load i32, ptr %handle, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then1.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %4 = phi ptr [ %call, %if.then1.if.end5_crit_edge ], [ %3, %if.end.if.end5_crit_edge ]
  %5 = phi i32 [ %.pre, %if.then1.if.end5_crit_edge ], [ %0, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @__memset(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 4096) #17
  %6 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 6), align 8
  %num_physpages.i = getelementptr inbounds %struct.swsusp_info, ptr %4, i32 0, i32 2
  store i32 %6, ptr %num_physpages.i, align 4
  %7 = load i32, ptr @nr_copy_pages, align 4
  %image_pages.i = getelementptr inbounds %struct.swsusp_info, ptr %4, i32 0, i32 4
  store i32 %7, ptr %image_pages.i, align 4
  %8 = load i32, ptr @nr_meta_pages, align 4
  %add.i.i = add i32 %7, 1
  %add1.i.i = add i32 %add.i.i, %8
  %pages.i = getelementptr inbounds %struct.swsusp_info, ptr %4, i32 0, i32 5
  store i32 %add1.i.i, ptr %pages.i, align 8
  %size.i = getelementptr inbounds %struct.swsusp_info, ptr %4, i32 0, i32 6
  %shl.i = shl i32 %add1.i.i, 12
  store i32 %shl.i, ptr %size.i, align 4
  %call1.i.i = tail call ptr @__memcpy(ptr noundef nonnull %4, ptr noundef nonnull @init_uts_ns, i32 noundef 390) #17
  %version_code.i.i = getelementptr inbounds %struct.swsusp_info, ptr %4, i32 0, i32 1
  store i32 332032, ptr %version_code.i.i, align 8
  %9 = load ptr, ptr @buffer, align 4
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  store ptr %9, ptr %buffer, align 4
  %10 = load ptr, ptr @orig_bm, align 4
  store ptr %10, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2), align 4
  %leaves.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %leaves.i, align 4
  store ptr %11, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 3), align 4
  %12 = load ptr, ptr @copy_bm, align 4
  store ptr %12, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i45 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %leaves.i45, align 4
  store ptr %13, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  br label %if.end33

if.else:                                          ; preds = %if.end5
  %14 = load i32, ptr @nr_meta_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %14)
  %cmp14.not = icmp ugt i32 %5, %14
  br i1 %cmp14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.else
  %call16 = tail call ptr @__memset(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 4096) #17
  %15 = load ptr, ptr @buffer, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then15
  %j.01.i = phi i32 [ 0, %if.then15 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %call.i46 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @orig_bm) #17
  %arrayidx.i = getelementptr i32, ptr %15, i32 %j.01.i
  store i32 %call.i46, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i46)
  %cmp2.i = icmp eq i32 %call.i46, -1
  %inc.i = add nuw nsw i32 %j.01.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.if.end33_crit_edge, label %for.body.i.for.body.i_crit_edge, !prof !23

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.if.end33_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.else17:                                        ; preds = %if.else
  %16 = load ptr, ptr @mem_map, align 4
  %call18 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #21
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %call18, %17
  %add.ptr = getelementptr %struct.page, ptr %16, i32 %sub
  %18 = load i32, ptr %add.ptr, align 4
  %shr.i = lshr i32 %18, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 2
  br i1 %cmp.i, label %if.else17.if.then22_crit_edge, label %is_highmem_idx.exit

if.else17.if.then22_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

is_highmem_idx.exit:                              ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp1.i = icmp ne i32 %shr.i, 3
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i47 = icmp ne i32 %19, 2
  %20 = select i1 %cmp1.i, i1 true, i1 %cmp2.i47
  br i1 %20, label %if.else28, label %is_highmem_idx.exit.if.then22_crit_edge

is_highmem_idx.exit.if.then22_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22:                                        ; preds = %is_highmem_idx.exit.if.then22_crit_edge, %if.else17.if.then22_crit_edge
  %21 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %21, 512
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 213
  %28 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #17
  %29 = load ptr, ptr @buffer, align 4
  tail call void @copy_page(ptr noundef %29, ptr noundef %call.i.i) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %33, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %34 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %37 = load ptr, ptr @buffer, align 4
  %buffer27 = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  store ptr %37, ptr %buffer27, align 4
  br label %if.end33

if.else28:                                        ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call ptr @page_address(ptr noundef %add.ptr) #17
  %buffer30 = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  store ptr %call29, ptr %buffer30, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else28, %if.then22, %for.body.i.if.end33_crit_edge, %if.then8
  %38 = load i32, ptr %handle, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %handle, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then1.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 4096, %if.end33 ], [ 0, %entry.return_crit_edge ], [ -12, %if.then1.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_image_page(i32 noundef %gfp_mask, i32 noundef %safe_needed) unnamed_addr #3 align 64 {
entry:
  %addr.i.i57 = alloca ptr, align 4
  %bit.i.i58 = alloca i32, align 4
  %addr.i.i43 = alloca ptr, align 4
  %bit.i.i44 = alloca i32, align 4
  %addr.i.i32 = alloca ptr, align 4
  %bit.i.i33 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_zeroed_page(i32 noundef %gfp_mask) #17
  %0 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %safe_needed)
  %tobool = icmp ne i32 %safe_needed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1 = icmp ne i32 %call, 0
  %or.cond = select i1 %tobool, i1 %tobool1, i1 false
  br i1 %or.cond, label %entry.land.rhs_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %swsusp_set_page_forbidden.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %res.0 = phi ptr [ %14, %swsusp_set_page_forbidden.exit.land.rhs_crit_edge ], [ %0, %entry.land.rhs_crit_edge ]
  %1 = ptrtoint ptr %res.0 to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %2 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %land.rhs.if.end_crit_edge, label %cond.true.i

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

cond.true.i:                                      ; preds = %land.rhs
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %3, %shr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %2, i32 noundef %add.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %swsusp_page_is_free.exit, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit:                         ; preds = %cond.true.i
  %4 = load i32, ptr %bit.i.i, align 4
  %5 = load ptr, ptr %addr.i.i, align 4
  %div3.i.i.i = lshr i32 %4, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %5, i32 %div3.i.i.i
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %4, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  %7 = shl nuw i32 1, %and.i.i.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %swsusp_page_is_free.exit.if.end_crit_edge, label %while.body

swsusp_page_is_free.exit.if.end_crit_edge:        ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

while.body:                                       ; preds = %swsusp_page_is_free.exit
  %9 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i34 = icmp eq ptr %9, null
  br i1 %tobool.not.i34, label %while.body.swsusp_set_page_forbidden.exit_crit_edge, label %if.then.i

while.body.swsusp_set_page_forbidden.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_forbidden.exit

if.then.i:                                        ; preds = %while.body
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i39 = add i32 %10, %shr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i32) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i32, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i33) #15
  store i32 -1, ptr %bit.i.i33, align 4, !annotation !10
  %call.i.i40 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %9, i32 noundef %add.i39, ptr noundef nonnull %addr.i.i32, ptr noundef nonnull %bit.i.i33) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40)
  %tobool.not.i.i41 = icmp eq i32 %call.i.i40, 0
  br i1 %tobool.not.i.i41, label %memory_bm_set_bit.exit.i, label %do.body3.i.i42, !prof !11

do.body3.i.i42:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %11 = load i32, ptr %bit.i.i33, align 4
  %12 = load ptr, ptr %addr.i.i32, align 4
  tail call void @_set_bit(i32 noundef %11, ptr noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i33) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i32) #15
  br label %swsusp_set_page_forbidden.exit

swsusp_set_page_forbidden.exit:                   ; preds = %memory_bm_set_bit.exit.i, %while.body.swsusp_set_page_forbidden.exit_crit_edge
  %13 = load i32, ptr @allocated_unsafe_pages, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr @allocated_unsafe_pages, align 4
  %call10 = tail call i32 @get_zeroed_page(i32 noundef %gfp_mask) #17
  %14 = inttoptr i32 %call10 to ptr
  %tobool1.old.not = icmp eq i32 %call10, 0
  br i1 %tobool1.old.not, label %swsusp_set_page_forbidden.exit.if.end23_crit_edge, label %swsusp_set_page_forbidden.exit.land.rhs_crit_edge

swsusp_set_page_forbidden.exit.land.rhs_crit_edge: ; preds = %swsusp_set_page_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

swsusp_set_page_forbidden.exit.if.end23_crit_edge: ; preds = %swsusp_set_page_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.end:                                           ; preds = %swsusp_page_is_free.exit.if.end_crit_edge, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %res.1 = phi ptr [ %0, %entry.if.end_crit_edge ], [ %res.0, %swsusp_page_is_free.exit.if.end_crit_edge ], [ %res.0, %land.rhs.if.end_crit_edge ]
  %tobool11.not = icmp eq ptr %res.1, null
  br i1 %tobool11.not, label %if.end.if.end23_crit_edge, label %if.then12

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then12:                                        ; preds = %if.end
  %15 = ptrtoint ptr %res.1 to i32
  %sub13 = add i32 %15, 1073741824
  %shr14 = lshr i32 %sub13, 12
  %16 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i45 = icmp eq ptr %16, null
  br i1 %tobool.not.i45, label %if.then12.swsusp_set_page_forbidden.exit56_crit_edge, label %if.then.i53

if.then12.swsusp_set_page_forbidden.exit56_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_forbidden.exit56

if.then.i53:                                      ; preds = %if.then12
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i50 = add i32 %17, %shr14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i43) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i43, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i44) #15
  store i32 -1, ptr %bit.i.i44, align 4, !annotation !10
  %call.i.i51 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %16, i32 noundef %add.i50, ptr noundef nonnull %addr.i.i43, ptr noundef nonnull %bit.i.i44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %call.i.i51, 0
  br i1 %tobool.not.i.i52, label %memory_bm_set_bit.exit.i55, label %do.body3.i.i54, !prof !11

do.body3.i.i54:                                   ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i55:                       ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #16
  %18 = load i32, ptr %bit.i.i44, align 4
  %19 = load ptr, ptr %addr.i.i43, align 4
  tail call void @_set_bit(i32 noundef %18, ptr noundef %19) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i44) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i43) #15
  br label %swsusp_set_page_forbidden.exit56

swsusp_set_page_forbidden.exit56:                 ; preds = %memory_bm_set_bit.exit.i55, %if.then12.swsusp_set_page_forbidden.exit56_crit_edge
  %20 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i59 = icmp eq ptr %20, null
  br i1 %tobool.not.i59, label %swsusp_set_page_forbidden.exit56.if.end23_crit_edge, label %if.then.i67

swsusp_set_page_forbidden.exit56.if.end23_crit_edge: ; preds = %swsusp_set_page_forbidden.exit56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then.i67:                                      ; preds = %swsusp_set_page_forbidden.exit56
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i64 = add i32 %21, %shr14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i57) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i57, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i58) #15
  store i32 -1, ptr %bit.i.i58, align 4, !annotation !10
  %call.i.i65 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %20, i32 noundef %add.i64, ptr noundef nonnull %addr.i.i57, ptr noundef nonnull %bit.i.i58) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i.i66, label %memory_bm_set_bit.exit.i69, label %do.body3.i.i68, !prof !11

do.body3.i.i68:                                   ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i69:                       ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #16
  %22 = load i32, ptr %bit.i.i58, align 4
  %23 = load ptr, ptr %addr.i.i57, align 4
  tail call void @_set_bit(i32 noundef %22, ptr noundef %23) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i58) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i57) #15
  br label %if.end23

if.end23:                                         ; preds = %memory_bm_set_bit.exit.i69, %swsusp_set_page_forbidden.exit56.if.end23_crit_edge, %if.end.if.end23_crit_edge, %swsusp_set_page_forbidden.exit.if.end23_crit_edge
  %res.174 = phi ptr [ null, %if.end.if.end23_crit_edge ], [ %res.1, %swsusp_set_page_forbidden.exit56.if.end23_crit_edge ], [ %res.1, %memory_bm_set_bit.exit.i69 ], [ null, %swsusp_set_page_forbidden.exit.if.end23_crit_edge ]
  ret ptr %res.174
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snapshot_write_next(ptr nocapture noundef %handle) local_unnamed_addr #3 align 64 {
entry:
  %addr.i.i.i108.i = alloca ptr, align 4
  %bit.i.i.i109.i = alloca i32, align 4
  %addr.i.i.i86.i = alloca ptr, align 4
  %bit.i.i.i87.i = alloca i32, align 4
  %addr.i.i.i73.i = alloca ptr, align 4
  %bit.i.i.i74.i = alloca i32, align 4
  %addr.i.i59.i = alloca ptr, align 4
  %bit.i.i60.i = alloca i32, align 4
  %addr.i.i46.i = alloca ptr, align 4
  %bit.i.i47.i = alloca i32, align 4
  %addr.i.i36.i = alloca ptr, align 4
  %bit.i.i37.i = alloca i32, align 4
  %addr.i.i19.i.i = alloca ptr, align 4
  %bit.i.i20.i.i = alloca i32, align 4
  %addr.i.i8.i.i = alloca ptr, align 4
  %bit.i.i9.i.i = alloca i32, align 4
  %addr.i.i19.i = alloca ptr, align 4
  %bit.i.i20.i = alloca i32, align 4
  %addr.i.i.i21.i = alloca ptr, align 4
  %bit.i.i.i22.i = alloca i32, align 4
  %addr.i.i.i = alloca ptr, align 4
  %bit.i.i.i = alloca i32, align 4
  %addr.i.i.i.i = alloca ptr, align 4
  %bit.i.i.i.i = alloca i32, align 4
  %addr.i1.i = alloca ptr, align 4
  %bit.i2.i = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @nr_meta_pages, align 4
  %2 = load i32, ptr @nr_copy_pages, align 4
  %add = add i32 %2, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add)
  %cmp2 = icmp ugt i32 %0, %add
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sync_read = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 2
  store i32 1, ptr %sync_read, align 4
  %3 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.else22 [
    i32 0, label %if.then4
    i32 1, label %if.then13
  ]

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr @buffer, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %if.end7, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end7:                                          ; preds = %if.then4
  %call = tail call fastcc ptr @get_image_page(i32 noundef 2592, i32 noundef 0) #21
  store ptr %call, ptr @buffer, align 4
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end7.if.end10_crit_edge, %if.then4.if.end10_crit_edge
  %5 = phi ptr [ %call, %if.end7.if.end10_crit_edge ], [ %4, %if.then4.if.end10_crit_edge ]
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  store ptr %5, ptr %buffer, align 4
  br label %if.end66

if.then13:                                        ; preds = %if.end
  %6 = load ptr, ptr @buffer, align 4
  store ptr null, ptr @restore_pblist, align 4
  %version_code.i.i.i = getelementptr inbounds %struct.swsusp_info, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %version_code.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 332032, i32 %7)
  %cmp.not.i.i.i = icmp eq i32 %7, 332032
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then13.load_header.exit_crit_edge

if.then13.load_header.exit_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_header.exit

if.end.i.i.i:                                     ; preds = %if.then13
  %call3.i.i.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull @init_uts_ns) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.load_header.exit_crit_edge

if.end.i.i.i.load_header.exit_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_header.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %release.i.i.i = getelementptr inbounds %struct.new_utsname, ptr %6, i32 0, i32 2
  %call11.i.i.i = tail call i32 @strcmp(ptr noundef %release.i.i.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2)) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end14.i.i.i, label %if.end5.i.i.i.load_header.exit_crit_edge

if.end5.i.i.i.load_header.exit_crit_edge:         ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_header.exit

if.end14.i.i.i:                                   ; preds = %if.end5.i.i.i
  %version.i.i.i = getelementptr inbounds %struct.new_utsname, ptr %6, i32 0, i32 3
  %call20.i.i.i = tail call i32 @strcmp(ptr noundef %version.i.i.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 3)) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.end23.i.i.i, label %if.end14.i.i.i.load_header.exit_crit_edge

if.end14.i.i.i.load_header.exit_crit_edge:        ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_header.exit

if.end23.i.i.i:                                   ; preds = %if.end14.i.i.i
  %machine.i.i.i = getelementptr inbounds %struct.new_utsname, ptr %6, i32 0, i32 4
  %call29.i.i.i = tail call i32 @strcmp(ptr noundef %machine.i.i.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 4)) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %call29.i.i.i, 0
  br i1 %tobool30.not.i.i.i, label %land.lhs.true.i.i, label %if.end23.i.i.i.load_header.exit_crit_edge

if.end23.i.i.i.load_header.exit_crit_edge:        ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_header.exit

land.lhs.true.i.i:                                ; preds = %if.end23.i.i.i
  %num_physpages.i.i = getelementptr inbounds %struct.swsusp_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %num_physpages.i.i, align 4
  %9 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 6), align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp.not.i.i = icmp eq i32 %8, %9
  br i1 %cmp.not.i.i, label %if.end17, label %land.lhs.true.i.i.load_header.exit_crit_edge

land.lhs.true.i.i.load_header.exit_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %load_header.exit

load_header.exit:                                 ; preds = %land.lhs.true.i.i.load_header.exit_crit_edge, %if.end23.i.i.i.load_header.exit_crit_edge, %if.end14.i.i.i.load_header.exit_crit_edge, %if.end5.i.i.i.load_header.exit_crit_edge, %if.end.i.i.i.load_header.exit_crit_edge, %if.then13.load_header.exit_crit_edge
  %reason.0.ph.i.i = phi ptr [ @.str.51, %land.lhs.true.i.i.load_header.exit_crit_edge ], [ @.str.58, %if.end23.i.i.i.load_header.exit_crit_edge ], [ @.str.57, %if.end14.i.i.i.load_header.exit_crit_edge ], [ @.str.56, %if.end5.i.i.i.load_header.exit_crit_edge ], [ @.str.55, %if.end.i.i.i.load_header.exit_crit_edge ], [ @.str.54, %if.then13.load_header.exit_crit_edge ]
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull %reason.0.ph.i.i) #19
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.i.i
  %image_pages.i = getelementptr inbounds %struct.swsusp_info, ptr %6, i32 0, i32 4
  %10 = load i32, ptr %image_pages.i, align 4
  store i32 %10, ptr @nr_copy_pages, align 4
  %pages.i = getelementptr inbounds %struct.swsusp_info, ptr %6, i32 0, i32 5
  %11 = load i32, ptr %pages.i, align 8
  %12 = xor i32 %10, -1
  %sub2.i = add i32 %11, %12
  store i32 %sub2.i, ptr @nr_meta_pages, align 4
  store ptr null, ptr @safe_pages_list, align 4
  %call18 = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull @copy_bm, i32 noundef 2592, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %.b1.i = load i1, ptr @hibernate_restore_protection, align 1
  %frombool.i = zext i1 %.b1.i to i8
  store i8 %frombool.i, ptr @hibernate_restore_protection_active, align 1
  br label %if.end66

if.else22:                                        ; preds = %if.end
  %13 = load i32, ptr @nr_meta_pages, align 4
  %add24 = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %add24)
  %cmp25.not = icmp ugt i32 %0, %add24
  br i1 %cmp25.not, label %if.else49, label %if.then26

if.then26:                                        ; preds = %if.else22
  %14 = load ptr, ptr @buffer, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %memory_bm_set_bit.exit.i.for.body.i_crit_edge, %if.then26
  %j.05.i = phi i32 [ 0, %if.then26 ], [ %inc.i, %memory_bm_set_bit.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %14, i32 %j.05.i
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp1.i = icmp eq i32 %15, -1
  br i1 %cmp1.i, label %for.body.i.if.end30_crit_edge, label %if.end.i, !prof !15

for.body.i.if.end30_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end.i:                                         ; preds = %for.body.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %16, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  br i1 %tobool.not.i.i, label %if.then7.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then7.i:                                       ; preds = %land.lhs.true.i
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i1.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i1.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i2.i) #15
  store i32 -1, ptr %bit.i2.i, align 4, !annotation !10
  %call.i3.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %17, ptr noundef nonnull %addr.i1.i, ptr noundef nonnull %bit.i2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %memory_bm_set_bit.exit.i, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i:                         ; preds = %if.then7.i
  %18 = load i32, ptr %bit.i2.i, align 4
  %19 = load ptr, ptr %addr.i1.i, align 4
  tail call void @_set_bit(i32 noundef %18, ptr noundef %19) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i2.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i1.i) #15
  %inc.i = add nuw nsw i32 %j.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %memory_bm_set_bit.exit.i.if.end30_crit_edge, label %memory_bm_set_bit.exit.i.for.body.i_crit_edge

memory_bm_set_bit.exit.i.for.body.i_crit_edge:    ; preds = %memory_bm_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

memory_bm_set_bit.exit.i.if.end30_crit_edge:      ; preds = %memory_bm_set_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end30:                                         ; preds = %memory_bm_set_bit.exit.i.if.end30_crit_edge, %for.body.i.if.end30_crit_edge
  %20 = load i32, ptr %handle, align 4
  %21 = load i32, ptr @nr_meta_pages, align 4
  %add32 = add i32 %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %add32)
  %cmp33 = icmp eq i32 %20, %add32
  br i1 %cmp33, label %if.then34, label %if.end30.if.end66_crit_edge

if.end30.if.end66_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then34:                                        ; preds = %if.end30
  %22 = load ptr, ptr @buffer, align 4
  tail call fastcc void @free_image_page(ptr noundef %22, i32 noundef 1) #17
  store ptr null, ptr @buffer, align 4
  %23 = load ptr, ptr @copy_bm, align 4
  store ptr %23, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %leaves.i.i.i, align 4
  store ptr %24, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  %call.i.i95 = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i95)
  %cmp.not3.i.i = icmp eq i32 %call.i.i95, -1
  br i1 %cmp.not3.i.i, label %if.then34.count_highmem_image_pages.exit.i_crit_edge, label %if.then34.while.body.i.i_crit_edge

if.then34.while.body.i.i_crit_edge:               ; preds = %if.then34
  br label %while.body.i.i

if.then34.count_highmem_image_pages.exit.i_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_highmem_image_pages.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.then34.while.body.i.i_crit_edge
  %cnt.05.i.i = phi i32 [ %spec.select.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ 0, %if.then34.while.body.i.i_crit_edge ]
  %pfn.04.i.i = phi i32 [ %call3.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %call.i.i95, %if.then34.while.body.i.i_crit_edge ]
  %25 = load ptr, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i.i = sub i32 %pfn.04.i.i, %26
  %add.ptr.i.i = getelementptr %struct.page, ptr %25, i32 %sub.i.i
  %27 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i.i = lshr i32 %27, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i.i)
  %cmp.i.i.i = icmp eq i32 %shr.i.i.i, 2
  br i1 %cmp.i.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %is_highmem_idx.exit.i.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

is_highmem_idx.exit.i.i:                          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %shr.i.i.i, 3
  %28 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i.i.i = icmp eq i32 %28, 2
  %29 = select i1 %cmp1.i.i.i, i1 %cmp2.i.i.i, i1 false
  %inc.i.i = zext i1 %29 to i32
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %is_highmem_idx.exit.i.i, %while.body.i.i.while.cond.i.i_crit_edge
  %inc.sink.i.i = phi i32 [ %inc.i.i, %is_highmem_idx.exit.i.i ], [ 1, %while.body.i.i.while.cond.i.i_crit_edge ]
  %spec.select.i.i = add i32 %inc.sink.i.i, %cnt.05.i.i
  %call3.i.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  %cmp.not.i.i96 = icmp eq i32 %call3.i.i, -1
  br i1 %cmp.not.i.i96, label %while.cond.i.i.count_highmem_image_pages.exit.i_crit_edge, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i

while.cond.i.i.count_highmem_image_pages.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %count_highmem_image_pages.exit.i

count_highmem_image_pages.exit.i:                 ; preds = %while.cond.i.i.count_highmem_image_pages.exit.i_crit_edge, %if.then34.count_highmem_image_pages.exit.i_crit_edge
  %cnt.0.lcssa.i.i = phi i32 [ 0, %if.then34.count_highmem_image_pages.exit.i_crit_edge ], [ %spec.select.i.i, %while.cond.i.i.count_highmem_image_pages.exit.i_crit_edge ]
  %30 = load ptr, ptr @free_pages_map, align 4
  %31 = load ptr, ptr %30, align 4
  %cur.i.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %30, i32 0, i32 2
  store ptr %31, ptr %cur.i.i.i, align 4
  %leaves.i.i1.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %leaves.i.i1.i, align 4
  %node.i.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %30, i32 0, i32 2, i32 1
  store ptr %32, ptr %node.i.i.i, align 4
  %node_pfn.i.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %30, i32 0, i32 2, i32 2
  store i32 0, ptr %node_pfn.i.i.i, align 4
  %node_bit.i.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %30, i32 0, i32 2, i32 3
  store i32 0, ptr %node_bit.i.i.i, align 4
  %call.i2.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %30) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2.i)
  %cmp.not3.i3.i = icmp eq i32 %call.i2.i, -1
  br i1 %cmp.not3.i3.i, label %count_highmem_image_pages.exit.i.while.end.i.i_crit_edge, label %count_highmem_image_pages.exit.i.while.body.i5.i_crit_edge

count_highmem_image_pages.exit.i.while.body.i5.i_crit_edge: ; preds = %count_highmem_image_pages.exit.i
  br label %while.body.i5.i

count_highmem_image_pages.exit.i.while.end.i.i_crit_edge: ; preds = %count_highmem_image_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body.i5.i:                                  ; preds = %while.body.i5.i.while.body.i5.i_crit_edge, %count_highmem_image_pages.exit.i.while.body.i5.i_crit_edge
  %33 = load ptr, ptr @free_pages_map, align 4
  %node_bit.i1.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %33, i32 0, i32 2, i32 3
  %34 = load i32, ptr %node_bit.i1.i.i, align 4
  %sub.i.i.i = add i32 %34, -1
  %35 = tail call i32 @llvm.smax.i32(i32 %sub.i.i.i, i32 0) #15
  %node.i2.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %33, i32 0, i32 2, i32 1
  %36 = load ptr, ptr %node.i2.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.rtree_node, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %data.i.i.i, align 4
  tail call void @_clear_bit(i32 noundef %35, ptr noundef %37) #17
  %38 = load ptr, ptr @free_pages_map, align 4
  %call1.i.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %38) #17
  %cmp.not.i4.i = icmp eq i32 %call1.i.i, -1
  br i1 %cmp.not.i4.i, label %while.body.i5.i.while.end.i.i_crit_edge, label %while.body.i5.i.while.body.i5.i_crit_edge

while.body.i5.i.while.body.i5.i_crit_edge:        ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i5.i

while.body.i5.i.while.end.i.i_crit_edge:          ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i5.i.while.end.i.i_crit_edge, %count_highmem_image_pages.exit.i.while.end.i.i_crit_edge
  %39 = load ptr, ptr @free_pages_map, align 4
  %40 = load ptr, ptr @copy_bm, align 4
  store ptr %40, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i.i.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %leaves.i.i.i.i, align 4
  store ptr %41, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  %call.i.i.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.not1.i.i.i = icmp eq i32 %call.i.i.i, -1
  br i1 %cmp.not1.i.i.i, label %while.end.i.i.mark_unsafe_pages.exit.i_crit_edge, label %while.end.i.i.while.body.i.i.i_crit_edge

while.end.i.i.while.body.i.i.i_crit_edge:         ; preds = %while.end.i.i
  br label %while.body.i.i.i

while.end.i.i.mark_unsafe_pages.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mark_unsafe_pages.exit.i

while.body.i.i.i:                                 ; preds = %memory_bm_set_bit.exit.i.i.i.while.body.i.i.i_crit_edge, %while.end.i.i.while.body.i.i.i_crit_edge
  %pfn.02.i.i.i = phi i32 [ %call1.i.i.i, %memory_bm_set_bit.exit.i.i.i.while.body.i.i.i_crit_edge ], [ %call.i.i.i, %while.end.i.i.while.body.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i.i) #15
  store i32 -1, ptr %bit.i.i.i.i, align 4, !annotation !10
  %call.i.i.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef %39, i32 noundef %pfn.02.i.i.i, ptr noundef nonnull %addr.i.i.i.i, ptr noundef nonnull %bit.i.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %memory_bm_set_bit.exit.i.i.i, label %do.body3.i.i.i.i, !prof !11

do.body3.i.i.i.i:                                 ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i.i.i:                     ; preds = %while.body.i.i.i
  %42 = load i32, ptr %bit.i.i.i.i, align 4
  %43 = load ptr, ptr %addr.i.i.i.i, align 4
  tail call void @_set_bit(i32 noundef %42, ptr noundef %43) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i.i) #15
  %call1.i.i.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  %cmp.not.i.i.i97 = icmp eq i32 %call1.i.i.i, -1
  br i1 %cmp.not.i.i.i97, label %memory_bm_set_bit.exit.i.i.i.mark_unsafe_pages.exit.i_crit_edge, label %memory_bm_set_bit.exit.i.i.i.while.body.i.i.i_crit_edge

memory_bm_set_bit.exit.i.i.i.while.body.i.i.i_crit_edge: ; preds = %memory_bm_set_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

memory_bm_set_bit.exit.i.i.i.mark_unsafe_pages.exit.i_crit_edge: ; preds = %memory_bm_set_bit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mark_unsafe_pages.exit.i

mark_unsafe_pages.exit.i:                         ; preds = %memory_bm_set_bit.exit.i.i.i.mark_unsafe_pages.exit.i_crit_edge, %while.end.i.i.mark_unsafe_pages.exit.i_crit_edge
  store i32 0, ptr @allocated_unsafe_pages, align 4
  %call1.i = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull @orig_bm, i32 noundef 2592, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i98, label %mark_unsafe_pages.exit.i.prepare_image.exit_crit_edge

mark_unsafe_pages.exit.i.prepare_image.exit_crit_edge: ; preds = %mark_unsafe_pages.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_image.exit

if.end.i98:                                       ; preds = %mark_unsafe_pages.exit.i
  %44 = load ptr, ptr @copy_bm, align 4
  store ptr %44, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i.i6.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %leaves.i.i6.i, align 4
  store ptr %45, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  %call.i7.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i7.i)
  %cmp.not1.i.i = icmp eq i32 %call.i7.i, -1
  br i1 %cmp.not1.i.i, label %if.end.i98.duplicate_memory_bitmap.exit.i_crit_edge, label %if.end.i98.while.body.i9.i_crit_edge

if.end.i98.while.body.i9.i_crit_edge:             ; preds = %if.end.i98
  br label %while.body.i9.i

if.end.i98.duplicate_memory_bitmap.exit.i_crit_edge: ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %duplicate_memory_bitmap.exit.i

while.body.i9.i:                                  ; preds = %memory_bm_set_bit.exit.i.i.while.body.i9.i_crit_edge, %if.end.i98.while.body.i9.i_crit_edge
  %pfn.02.i.i = phi i32 [ %call1.i10.i, %memory_bm_set_bit.exit.i.i.while.body.i9.i_crit_edge ], [ %call.i7.i, %if.end.i98.while.body.i9.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  store i32 -1, ptr %bit.i.i.i, align 4, !annotation !10
  %call.i.i8.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @orig_bm, i32 noundef %pfn.02.i.i, ptr noundef nonnull %addr.i.i.i, ptr noundef nonnull %bit.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8.i)
  %tobool.not.i.i.i99 = icmp eq i32 %call.i.i8.i, 0
  br i1 %tobool.not.i.i.i99, label %memory_bm_set_bit.exit.i.i, label %do.body3.i.i.i, !prof !11

do.body3.i.i.i:                                   ; preds = %while.body.i9.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i.i:                       ; preds = %while.body.i9.i
  %46 = load i32, ptr %bit.i.i.i, align 4
  %47 = load ptr, ptr %addr.i.i.i, align 4
  tail call void @_set_bit(i32 noundef %46, ptr noundef %47) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  %call1.i10.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @copy_bm) #17
  %cmp.not.i11.i = icmp eq i32 %call1.i10.i, -1
  br i1 %cmp.not.i11.i, label %memory_bm_set_bit.exit.i.i.duplicate_memory_bitmap.exit.i_crit_edge, label %memory_bm_set_bit.exit.i.i.while.body.i9.i_crit_edge

memory_bm_set_bit.exit.i.i.while.body.i9.i_crit_edge: ; preds = %memory_bm_set_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i9.i

memory_bm_set_bit.exit.i.i.duplicate_memory_bitmap.exit.i_crit_edge: ; preds = %memory_bm_set_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %duplicate_memory_bitmap.exit.i

duplicate_memory_bitmap.exit.i:                   ; preds = %memory_bm_set_bit.exit.i.i.duplicate_memory_bitmap.exit.i_crit_edge, %if.end.i98.duplicate_memory_bitmap.exit.i_crit_edge
  %zone.014.i.i = load ptr, ptr @copy_bm, align 4
  %cmp.not15.i.i = icmp eq ptr %zone.014.i.i, @copy_bm
  br i1 %cmp.not15.i.i, label %duplicate_memory_bitmap.exit.i.for.end.i.i_crit_edge, label %duplicate_memory_bitmap.exit.i.for.body.i.i_crit_edge

duplicate_memory_bitmap.exit.i.for.body.i.i_crit_edge: ; preds = %duplicate_memory_bitmap.exit.i
  br label %for.body.i.i

duplicate_memory_bitmap.exit.i.for.end.i.i_crit_edge: ; preds = %duplicate_memory_bitmap.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %free_zone_bm_rtree.exit.i.i.for.body.i.i_crit_edge, %duplicate_memory_bitmap.exit.i.for.body.i.i_crit_edge
  %zone.016.i.i = phi ptr [ %zone.0.i.i, %free_zone_bm_rtree.exit.i.i.for.body.i.i_crit_edge ], [ %zone.014.i.i, %duplicate_memory_bitmap.exit.i.for.body.i.i_crit_edge ]
  %nodes.i.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i.i, i32 0, i32 1
  %node.034.i.i.i = load ptr, ptr %nodes.i.i.i, align 4
  %cmp.not35.i.i.i = icmp eq ptr %node.034.i.i.i, %nodes.i.i.i
  br i1 %cmp.not35.i.i.i, label %for.body.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.for.body.i.i.i_crit_edge

for.body.i.i.for.body.i.i.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body.i.i.i

for.body.i.i.for.end.i.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %free_image_page.exit129.i.for.body.i.i.i_crit_edge, %for.body.i.i.for.body.i.i.i_crit_edge
  %node.036.i.i.i = phi ptr [ %node.0.i.i.i, %free_image_page.exit129.i.for.body.i.i.i_crit_edge ], [ %node.034.i.i.i, %for.body.i.i.for.body.i.i.i_crit_edge ]
  %data.i.i13.i = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i.i, i32 0, i32 1
  %48 = load ptr, ptr %data.i.i13.i, align 4
  %cmp.i110.i = icmp ugt ptr %48, inttoptr (i32 -1073741825 to ptr)
  %49 = load ptr, ptr @high_memory, align 4
  %cmp1.i111.i = icmp ugt ptr %49, %48
  %or.cond.i112.i = select i1 %cmp.i110.i, i1 %cmp1.i111.i, i1 false
  br i1 %or.cond.i112.i, label %land.rhs.i118.i, label %for.body.i.i.i.do.body5.i119.i_crit_edge, !prof !24

for.body.i.i.i.do.body5.i119.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i119.i

land.rhs.i118.i:                                  ; preds = %for.body.i.i.i
  %50 = ptrtoint ptr %48 to i32
  %sub.i113.i = add i32 %50, 1073741824
  %shr.i114.i = lshr i32 %sub.i113.i, 12
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i115.i = add i32 %51, %shr.i114.i
  %call.i116.i = tail call i32 @pfn_valid(i32 noundef %add.i115.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %tobool.i117.i = icmp eq i32 %call.i116.i, 0
  br i1 %tobool.i117.i, label %land.rhs.i118.i.do.body5.i119.i_crit_edge, label %do.end10.i122.i, !prof !15

land.rhs.i118.i.do.body5.i119.i_crit_edge:        ; preds = %land.rhs.i118.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i119.i

do.body5.i119.i:                                  ; preds = %land.rhs.i118.i.do.body5.i119.i_crit_edge, %for.body.i.i.i.do.body5.i119.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #15, !srcloc !25
  unreachable

do.end10.i122.i:                                  ; preds = %land.rhs.i118.i
  %52 = load ptr, ptr @mem_map, align 4
  %add.ptr.i120.i = getelementptr %struct.page, ptr %52, i32 %shr.i114.i
  %53 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i.i121.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i121.i, label %do.end10.i122.i.free_image_page.exit129.i_crit_edge, label %if.then.i.i126.i

do.end10.i122.i.free_image_page.exit129.i_crit_edge: ; preds = %do.end10.i122.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_image_page.exit129.i

if.then.i.i126.i:                                 ; preds = %do.end10.i122.i
  %54 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i123.i = add i32 %54, %shr.i114.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i108.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i108.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i109.i) #15
  store i32 -1, ptr %bit.i.i.i109.i, align 4, !annotation !10
  %call.i.i.i124.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %53, i32 noundef %add.i.i123.i, ptr noundef nonnull %addr.i.i.i108.i, ptr noundef nonnull %bit.i.i.i109.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i124.i)
  %tobool.not.i.i.i125.i = icmp eq i32 %call.i.i.i124.i, 0
  br i1 %tobool.not.i.i.i125.i, label %memory_bm_clear_bit.exit.i.i128.i, label %do.body3.i.i.i127.i, !prof !11

do.body3.i.i.i127.i:                              ; preds = %if.then.i.i126.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i.i128.i:                ; preds = %if.then.i.i126.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = load i32, ptr %bit.i.i.i109.i, align 4
  %56 = load ptr, ptr %addr.i.i.i108.i, align 4
  tail call void @_clear_bit(i32 noundef %55, ptr noundef %56) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i109.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i108.i) #15
  br label %free_image_page.exit129.i

free_image_page.exit129.i:                        ; preds = %memory_bm_clear_bit.exit.i.i128.i, %do.end10.i122.i.free_image_page.exit129.i_crit_edge
  tail call void @__free_pages(ptr noundef %add.ptr.i120.i, i32 noundef 0) #17
  %node.0.i.i.i = load ptr, ptr %node.036.i.i.i, align 4
  %cmp.not.i.i14.i = icmp eq ptr %node.0.i.i.i, %nodes.i.i.i
  br i1 %cmp.not.i.i14.i, label %free_image_page.exit129.i.for.end.i.i.i_crit_edge, label %free_image_page.exit129.i.for.body.i.i.i_crit_edge

free_image_page.exit129.i.for.body.i.i.i_crit_edge: ; preds = %free_image_page.exit129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

free_image_page.exit129.i.for.end.i.i.i_crit_edge: ; preds = %free_image_page.exit129.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %free_image_page.exit129.i.for.end.i.i.i_crit_edge, %for.body.i.i.for.end.i.i.i_crit_edge
  %leaves.i.i15.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i.i, i32 0, i32 2
  %node.137.i.i.i = load ptr, ptr %leaves.i.i15.i, align 4
  %cmp14.not38.i.i.i = icmp eq ptr %node.137.i.i.i, %leaves.i.i15.i
  br i1 %cmp14.not38.i.i.i, label %for.end.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge, label %for.end.i.i.i.for.body16.i.i.i_crit_edge

for.end.i.i.i.for.body16.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body16.i.i.i

for.end.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i.i

for.body16.i.i.i:                                 ; preds = %free_image_page.exit107.i.for.body16.i.i.i_crit_edge, %for.end.i.i.i.for.body16.i.i.i_crit_edge
  %node.139.i.i.i = phi ptr [ %node.1.i.i.i, %free_image_page.exit107.i.for.body16.i.i.i_crit_edge ], [ %node.137.i.i.i, %for.end.i.i.i.for.body16.i.i.i_crit_edge ]
  %data17.i.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i.i, i32 0, i32 1
  %57 = load ptr, ptr %data17.i.i.i, align 4
  %cmp.i88.i = icmp ugt ptr %57, inttoptr (i32 -1073741825 to ptr)
  %58 = load ptr, ptr @high_memory, align 4
  %cmp1.i89.i = icmp ugt ptr %58, %57
  %or.cond.i90.i = select i1 %cmp.i88.i, i1 %cmp1.i89.i, i1 false
  br i1 %or.cond.i90.i, label %land.rhs.i96.i, label %for.body16.i.i.i.do.body5.i97.i_crit_edge, !prof !24

for.body16.i.i.i.do.body5.i97.i_crit_edge:        ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i97.i

land.rhs.i96.i:                                   ; preds = %for.body16.i.i.i
  %59 = ptrtoint ptr %57 to i32
  %sub.i91.i = add i32 %59, 1073741824
  %shr.i92.i = lshr i32 %sub.i91.i, 12
  %60 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i93.i = add i32 %60, %shr.i92.i
  %call.i94.i = tail call i32 @pfn_valid(i32 noundef %add.i93.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool.i95.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool.i95.i, label %land.rhs.i96.i.do.body5.i97.i_crit_edge, label %do.end10.i100.i, !prof !15

land.rhs.i96.i.do.body5.i97.i_crit_edge:          ; preds = %land.rhs.i96.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i97.i

do.body5.i97.i:                                   ; preds = %land.rhs.i96.i.do.body5.i97.i_crit_edge, %for.body16.i.i.i.do.body5.i97.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #15, !srcloc !25
  unreachable

do.end10.i100.i:                                  ; preds = %land.rhs.i96.i
  %61 = load ptr, ptr @mem_map, align 4
  %add.ptr.i98.i = getelementptr %struct.page, ptr %61, i32 %shr.i92.i
  %62 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i.i99.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i99.i, label %do.end10.i100.i.free_image_page.exit107.i_crit_edge, label %if.then.i.i104.i

do.end10.i100.i.free_image_page.exit107.i_crit_edge: ; preds = %do.end10.i100.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_image_page.exit107.i

if.then.i.i104.i:                                 ; preds = %do.end10.i100.i
  %63 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i101.i = add i32 %63, %shr.i92.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i86.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i86.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i87.i) #15
  store i32 -1, ptr %bit.i.i.i87.i, align 4, !annotation !10
  %call.i.i.i102.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %62, i32 noundef %add.i.i101.i, ptr noundef nonnull %addr.i.i.i86.i, ptr noundef nonnull %bit.i.i.i87.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i102.i)
  %tobool.not.i.i.i103.i = icmp eq i32 %call.i.i.i102.i, 0
  br i1 %tobool.not.i.i.i103.i, label %memory_bm_clear_bit.exit.i.i106.i, label %do.body3.i.i.i105.i, !prof !11

do.body3.i.i.i105.i:                              ; preds = %if.then.i.i104.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i.i106.i:                ; preds = %if.then.i.i104.i
  call void @__sanitizer_cov_trace_pc() #16
  %64 = load i32, ptr %bit.i.i.i87.i, align 4
  %65 = load ptr, ptr %addr.i.i.i86.i, align 4
  tail call void @_clear_bit(i32 noundef %64, ptr noundef %65) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i87.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i86.i) #15
  br label %free_image_page.exit107.i

free_image_page.exit107.i:                        ; preds = %memory_bm_clear_bit.exit.i.i106.i, %do.end10.i100.i.free_image_page.exit107.i_crit_edge
  tail call void @__free_pages(ptr noundef %add.ptr.i98.i, i32 noundef 0) #17
  %node.1.i.i.i = load ptr, ptr %node.139.i.i.i, align 4
  %cmp14.not.i.i.i = icmp eq ptr %node.1.i.i.i, %leaves.i.i15.i
  br i1 %cmp14.not.i.i.i, label %free_image_page.exit107.i.free_zone_bm_rtree.exit.i.i_crit_edge, label %free_image_page.exit107.i.for.body16.i.i.i_crit_edge

free_image_page.exit107.i.for.body16.i.i.i_crit_edge: ; preds = %free_image_page.exit107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i.i

free_image_page.exit107.i.free_zone_bm_rtree.exit.i.i_crit_edge: ; preds = %free_image_page.exit107.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i.i

free_zone_bm_rtree.exit.i.i:                      ; preds = %free_image_page.exit107.i.free_zone_bm_rtree.exit.i.i_crit_edge, %for.end.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge
  %zone.0.i.i = load ptr, ptr %zone.016.i.i, align 4
  %cmp.not.i16.i = icmp eq ptr %zone.0.i.i, @copy_bm
  br i1 %cmp.not.i16.i, label %free_zone_bm_rtree.exit.i.i.for.end.i.i_crit_edge, label %free_zone_bm_rtree.exit.i.i.for.body.i.i_crit_edge

free_zone_bm_rtree.exit.i.i.for.body.i.i_crit_edge: ; preds = %free_zone_bm_rtree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

free_zone_bm_rtree.exit.i.i.for.end.i.i_crit_edge: ; preds = %free_zone_bm_rtree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %free_zone_bm_rtree.exit.i.i.for.end.i.i_crit_edge, %duplicate_memory_bitmap.exit.i.for.end.i.i_crit_edge
  %66 = load ptr, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 1), align 4
  %tobool.not3.i.i.i = icmp eq ptr %66, null
  br i1 %tobool.not3.i.i.i, label %for.end.i.i.memory_bm_free.exit.i_crit_edge, label %for.end.i.i.while.body.i.i18.i_crit_edge

for.end.i.i.while.body.i.i18.i_crit_edge:         ; preds = %for.end.i.i
  br label %while.body.i.i18.i

for.end.i.i.memory_bm_free.exit.i_crit_edge:      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit.i

while.body.i.i18.i:                               ; preds = %free_image_page.exit.i.while.body.i.i18.i_crit_edge, %for.end.i.i.while.body.i.i18.i_crit_edge
  %list.addr.04.i.i.i = phi ptr [ %67, %free_image_page.exit.i.while.body.i.i18.i_crit_edge ], [ %66, %for.end.i.i.while.body.i.i18.i_crit_edge ]
  %67 = load ptr, ptr %list.addr.04.i.i.i, align 1
  %cmp.i75.i = icmp ugt ptr %list.addr.04.i.i.i, inttoptr (i32 -1073741825 to ptr)
  %68 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %68, %list.addr.04.i.i.i
  %or.cond.i.i = select i1 %cmp.i75.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %land.rhs.i.i, label %while.body.i.i18.i.do.body5.i.i_crit_edge, !prof !24

while.body.i.i18.i.do.body5.i.i_crit_edge:        ; preds = %while.body.i.i18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i18.i
  %69 = ptrtoint ptr %list.addr.04.i.i.i to i32
  %sub.i76.i = add i32 %69, 1073741824
  %shr.i.i = lshr i32 %sub.i76.i, 12
  %70 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i77.i = add i32 %70, %shr.i.i
  %call.i78.i = tail call i32 @pfn_valid(i32 noundef %add.i77.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool.i.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end10.i.i, !prof !15

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %while.body.i.i18.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #15, !srcloc !25
  unreachable

do.end10.i.i:                                     ; preds = %land.rhs.i.i
  %71 = load ptr, ptr @mem_map, align 4
  %add.ptr.i79.i = getelementptr %struct.page, ptr %71, i32 %shr.i.i
  %72 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i.i80.i = icmp eq ptr %72, null
  br i1 %tobool.not.i.i80.i, label %do.end10.i.i.free_image_page.exit.i_crit_edge, label %if.then.i.i84.i

do.end10.i.i.free_image_page.exit.i_crit_edge:    ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_image_page.exit.i

if.then.i.i84.i:                                  ; preds = %do.end10.i.i
  %73 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i81.i = add i32 %73, %shr.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i73.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i73.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i74.i) #15
  store i32 -1, ptr %bit.i.i.i74.i, align 4, !annotation !10
  %call.i.i.i82.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %72, i32 noundef %add.i.i81.i, ptr noundef nonnull %addr.i.i.i73.i, ptr noundef nonnull %bit.i.i.i74.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i82.i)
  %tobool.not.i.i.i83.i = icmp eq i32 %call.i.i.i82.i, 0
  br i1 %tobool.not.i.i.i83.i, label %memory_bm_clear_bit.exit.i.i.i, label %do.body3.i.i.i85.i, !prof !11

do.body3.i.i.i85.i:                               ; preds = %if.then.i.i84.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i.i.i:                   ; preds = %if.then.i.i84.i
  call void @__sanitizer_cov_trace_pc() #16
  %74 = load i32, ptr %bit.i.i.i74.i, align 4
  %75 = load ptr, ptr %addr.i.i.i73.i, align 4
  tail call void @_clear_bit(i32 noundef %74, ptr noundef %75) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i74.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i73.i) #15
  br label %free_image_page.exit.i

free_image_page.exit.i:                           ; preds = %memory_bm_clear_bit.exit.i.i.i, %do.end10.i.i.free_image_page.exit.i_crit_edge
  tail call void @__free_pages(ptr noundef %add.ptr.i79.i, i32 noundef 0) #17
  %tobool.not.i.i17.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i17.i, label %free_image_page.exit.i.memory_bm_free.exit.i_crit_edge, label %free_image_page.exit.i.while.body.i.i18.i_crit_edge

free_image_page.exit.i.while.body.i.i18.i_crit_edge: ; preds = %free_image_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i18.i

free_image_page.exit.i.memory_bm_free.exit.i_crit_edge: ; preds = %free_image_page.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit.i

memory_bm_free.exit.i:                            ; preds = %free_image_page.exit.i.memory_bm_free.exit.i_crit_edge, %for.end.i.i.memory_bm_free.exit.i_crit_edge
  store volatile ptr @copy_bm, ptr @copy_bm, align 4
  store ptr @copy_bm, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa.i.i)
  %cmp.not.i = icmp eq i32 %cnt.0.lcssa.i.i, 0
  br i1 %cmp.not.i, label %memory_bm_free.exit.i.if.end7.i_crit_edge, label %if.then2.i

memory_bm_free.exit.i.if.end7.i_crit_edge:        ; preds = %memory_bm_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

if.then2.i:                                       ; preds = %memory_bm_free.exit.i
  %call.i23.i = tail call fastcc i32 @memory_bm_create(ptr noundef nonnull @copy_bm, i32 noundef 2592, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i.i100 = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i.i100, label %if.end.i.i, label %if.then2.i.prepare_image.exit_crit_edge

if.then2.i.prepare_image.exit_crit_edge:          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_image.exit

if.end.i.i:                                       ; preds = %if.then2.i
  %call.i.i24.i = tail call fastcc ptr @get_image_page(i32 noundef 2592, i32 noundef 1) #17
  store ptr %call.i.i24.i, ptr @buffer, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %call.i.i24.i, null
  br i1 %tobool.not.i.not.i.i, label %if.end.i.i.prepare_image.exit_crit_edge, label %if.end4.i.i

if.end.i.i.prepare_image.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_image.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call.i1.i.i = tail call ptr @first_online_pgdat() #17
  %tobool.not14.i.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool.not14.i.i.i, label %if.end4.i.i.if.else.i.i_crit_edge, label %if.end4.i.i.for.body.i.i25.i_crit_edge

if.end4.i.i.for.body.i.i25.i_crit_edge:           ; preds = %if.end4.i.i
  br label %for.body.i.i25.i

if.end4.i.i.if.else.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

for.body.i.i25.i:                                 ; preds = %for.inc.i.i.i.for.body.i.i25.i_crit_edge, %if.end4.i.i.for.body.i.i25.i_crit_edge
  %cnt.017.i.i.i = phi i32 [ %cnt.1.i.i.i, %for.inc.i.i.i.for.body.i.i25.i_crit_edge ], [ 0, %if.end4.i.i.for.body.i.i25.i_crit_edge ]
  %zone.015.i.i.i = phi ptr [ %call7.i.i.i, %for.inc.i.i.i.for.body.i.i25.i_crit_edge ], [ %call.i1.i.i, %if.end4.i.i.for.body.i.i25.i_crit_edge ]
  %present_pages.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i.i, i32 0, i32 13
  %76 = load i32, ptr %present_pages.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i.not.i.i.i = icmp eq i32 %76, 0
  br i1 %tobool.i.not.i.i.i, label %for.body.i.i25.i.for.inc.i.i.i_crit_edge, label %if.else.i.i.i

for.body.i.i25.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body.i.i25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i25.i
  %zone_pgdat.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i.i, i32 0, i32 4
  %77 = load ptr, ptr %zone_pgdat.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %zone.015.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %sub.ptr.sub.i.i.i.i)
  %78 = icmp eq i32 %sub.ptr.sub.i.i.i.i, 2304
  br i1 %78, label %if.else.i.i.i.if.then4.i.i.i_crit_edge, label %is_highmem.exit.i.i.i

if.else.i.i.i.if.then4.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i.i

is_highmem.exit.i.i.i:                            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub.i.i.i.i)
  %79 = icmp ne i32 %sub.ptr.sub.i.i.i.i, 3456
  %80 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp2.i.i.i.i.i = icmp ne i32 %80, 2
  %81 = select i1 %79, i1 true, i1 %cmp2.i.i.i.i.i
  br i1 %81, label %is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge, label %is_highmem.exit.i.i.i.if.then4.i.i.i_crit_edge

is_highmem.exit.i.i.i.if.then4.i.i.i_crit_edge:   ; preds = %is_highmem.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4.i.i.i

is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %is_highmem.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.then4.i.i.i:                                   ; preds = %is_highmem.exit.i.i.i.if.then4.i.i.i_crit_edge, %if.else.i.i.i.if.then4.i.i.i_crit_edge
  %vm_stat.i.i.i.i = getelementptr inbounds %struct.zone, ptr %zone.015.i.i.i, i32 0, i32 37
  %82 = load volatile i32, ptr %vm_stat.i.i.i.i, align 4
  %83 = tail call i32 @llvm.smax.i32(i32 %82, i32 0) #15
  %add.i.i.i = add i32 %83, %cnt.017.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then4.i.i.i, %is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i25.i.for.inc.i.i.i_crit_edge
  %cnt.1.i.i.i = phi i32 [ %add.i.i.i, %if.then4.i.i.i ], [ %cnt.017.i.i.i, %is_highmem.exit.i.i.i.for.inc.i.i.i_crit_edge ], [ %cnt.017.i.i.i, %for.body.i.i25.i.for.inc.i.i.i_crit_edge ]
  %call7.i.i.i = tail call ptr @next_zone(ptr noundef nonnull %zone.015.i.i.i) #17
  %tobool.not.i2.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i2.i.i, label %count_free_highmem_pages.exit.i.i, label %for.inc.i.i.i.for.body.i.i25.i_crit_edge

for.inc.i.i.i.for.body.i.i25.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i25.i

count_free_highmem_pages.exit.i.i:                ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.1.i.i.i, i32 %cnt.0.lcssa.i.i)
  %cmp.i.i = icmp ugt i32 %cnt.1.i.i.i, %cnt.0.lcssa.i.i
  br i1 %cmp.i.i, label %count_free_highmem_pages.exit.i.i.if.end7.i.i_crit_edge, label %count_free_highmem_pages.exit.i.i.if.else.i.i_crit_edge

count_free_highmem_pages.exit.i.i.if.else.i.i_crit_edge: ; preds = %count_free_highmem_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i.i

count_free_highmem_pages.exit.i.i.if.end7.i.i_crit_edge: ; preds = %count_free_highmem_pages.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %count_free_highmem_pages.exit.i.i.if.else.i.i_crit_edge, %if.end4.i.i.if.else.i.i_crit_edge
  %cnt.0.lcssa.i34.i.i = phi i32 [ %cnt.1.i.i.i, %count_free_highmem_pages.exit.i.i.if.else.i.i_crit_edge ], [ 0, %if.end4.i.i.if.else.i.i_crit_edge ]
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %count_free_highmem_pages.exit.i.i.if.end7.i.i_crit_edge
  %nr_highmem.0.i = phi i32 [ %cnt.0.lcssa.i34.i.i, %if.else.i.i ], [ %cnt.0.lcssa.i.i, %count_free_highmem_pages.exit.i.i.if.end7.i.i_crit_edge ]
  store i32 0, ptr @safe_highmem_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_highmem.0.i)
  %cmp8.not38.i.i = icmp eq i32 %nr_highmem.0.i, 0
  br i1 %cmp8.not38.i.i, label %if.end7.i.i.prepare_highmem_image.exit.i_crit_edge, label %if.end7.i.i.while.body.i26.i_crit_edge

if.end7.i.i.while.body.i26.i_crit_edge:           ; preds = %if.end7.i.i
  br label %while.body.i26.i

if.end7.i.i.prepare_highmem_image.exit.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_highmem_image.exit.i

while.body.i26.i:                                 ; preds = %swsusp_set_page_free.exit.i.i.while.body.i26.i_crit_edge, %if.end7.i.i.while.body.i26.i_crit_edge
  %dec39.in.i.i = phi i32 [ %dec39.i.i, %swsusp_set_page_free.exit.i.i.while.body.i26.i_crit_edge ], [ %nr_highmem.0.i, %if.end7.i.i.while.body.i26.i_crit_edge ]
  %dec39.i.i = add i32 %dec39.in.i.i, -1
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %84 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i3.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i3.i.i, label %while.body.if.then12_crit_edge.i.i, label %cond.true.i.i.i

while.body.if.then12_crit_edge.i.i:               ; preds = %while.body.i26.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i.i = ptrtoint ptr %call38.i.i.i.i.i to i32
  br label %if.then12.i.i

cond.true.i.i.i:                                  ; preds = %while.body.i26.i
  %85 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call38.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 36
  %86 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i4.i.i = add i32 %sub.ptr.div.i.i.i, %86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i21.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i21.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i22.i) #15
  store i32 -1, ptr %bit.i.i.i22.i, align 4, !annotation !10
  %call.i.i.i27.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %84, i32 noundef %add.i4.i.i, ptr noundef nonnull %addr.i.i.i21.i, ptr noundef nonnull %bit.i.i.i22.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i27.i)
  %tobool.not.i.i.i28.i = icmp eq i32 %call.i.i.i27.i, 0
  br i1 %tobool.not.i.i.i28.i, label %swsusp_page_is_free.exit.i.i, label %do.body3.i.i.i29.i, !prof !11

do.body3.i.i.i29.i:                               ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit.i.i:                     ; preds = %cond.true.i.i.i
  %87 = load i32, ptr %bit.i.i.i22.i, align 4
  %88 = load ptr, ptr %addr.i.i.i21.i, align 4
  %div3.i.i.i.i.i = lshr i32 %87, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr %88, i32 %div3.i.i.i.i.i
  %89 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %87, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i22.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i21.i) #15
  %90 = shl nuw i32 1, %and.i.i.i.i.i
  %91 = and i32 %89, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool11.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool11.not.i.i, label %swsusp_page_is_free.exit.i.i.if.then12.i.i_crit_edge, label %swsusp_page_is_free.exit.i.i.if.end13.i.i_crit_edge

swsusp_page_is_free.exit.i.i.if.end13.i.i_crit_edge: ; preds = %swsusp_page_is_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13.i.i

swsusp_page_is_free.exit.i.i.if.then12.i.i_crit_edge: ; preds = %swsusp_page_is_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %swsusp_page_is_free.exit.i.i.if.then12.i.i_crit_edge, %while.body.if.then12_crit_edge.i.i
  %sub.ptr.lhs.cast.pre-phi.i.i = phi i32 [ %.pre.i.i, %while.body.if.then12_crit_edge.i.i ], [ %sub.ptr.lhs.cast.i.i.i, %swsusp_page_is_free.exit.i.i.if.then12.i.i_crit_edge ]
  %92 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.pre-phi.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  %93 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i19.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i19.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i20.i) #15
  store i32 -1, ptr %bit.i.i20.i, align 4, !annotation !10
  %call.i6.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %add.i.i, ptr noundef nonnull %addr.i.i19.i, ptr noundef nonnull %bit.i.i20.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i)
  %tobool.not.i7.i.i = icmp eq i32 %call.i6.i.i, 0
  br i1 %tobool.not.i7.i.i, label %memory_bm_set_bit.exit.i32.i, label %do.body3.i.i30.i, !prof !11

do.body3.i.i30.i:                                 ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i32.i:                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %94 = load i32, ptr %bit.i.i20.i, align 4
  %95 = load ptr, ptr %addr.i.i19.i, align 4
  tail call void @_set_bit(i32 noundef %94, ptr noundef %95) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i20.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i19.i) #15
  %96 = load i32, ptr @safe_highmem_pages, align 4
  %inc.i31.i = add i32 %96, 1
  store i32 %inc.i31.i, ptr @safe_highmem_pages, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %memory_bm_set_bit.exit.i32.i, %swsusp_page_is_free.exit.i.i.if.end13.i.i_crit_edge
  %97 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i10.i.i = icmp eq ptr %97, null
  br i1 %tobool.not.i10.i.i, label %if.end13.i.i.swsusp_set_page_forbidden.exit.i.i_crit_edge, label %if.then.i.i.i

if.end13.i.i.swsusp_set_page_forbidden.exit.i.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_forbidden.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end13.i.i
  %98 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i11.i.i = ptrtoint ptr %call38.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i12.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i13.i.i = sub i32 %sub.ptr.lhs.cast.i11.i.i, %sub.ptr.rhs.cast.i12.i.i
  %sub.ptr.div.i14.i.i = sdiv exact i32 %sub.ptr.sub.i13.i.i, 36
  %99 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i15.i.i = add i32 %sub.ptr.div.i14.i.i, %99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i8.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i8.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i9.i.i) #15
  store i32 -1, ptr %bit.i.i9.i.i, align 4, !annotation !10
  %call.i.i16.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %97, i32 noundef %add.i15.i.i, ptr noundef nonnull %addr.i.i8.i.i, ptr noundef nonnull %bit.i.i9.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16.i.i)
  %tobool.not.i.i17.i.i = icmp eq i32 %call.i.i16.i.i, 0
  br i1 %tobool.not.i.i17.i.i, label %memory_bm_set_bit.exit.i.i33.i, label %do.body3.i.i18.i.i, !prof !11

do.body3.i.i18.i.i:                               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i.i33.i:                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %100 = load i32, ptr %bit.i.i9.i.i, align 4
  %101 = load ptr, ptr %addr.i.i8.i.i, align 4
  tail call void @_set_bit(i32 noundef %100, ptr noundef %101) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i9.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i8.i.i) #15
  br label %swsusp_set_page_forbidden.exit.i.i

swsusp_set_page_forbidden.exit.i.i:               ; preds = %memory_bm_set_bit.exit.i.i33.i, %if.end13.i.i.swsusp_set_page_forbidden.exit.i.i_crit_edge
  %102 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i21.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i21.i.i, label %swsusp_set_page_forbidden.exit.i.i.swsusp_set_page_free.exit.i.i_crit_edge, label %if.then.i29.i.i

swsusp_set_page_forbidden.exit.i.i.swsusp_set_page_free.exit.i.i_crit_edge: ; preds = %swsusp_set_page_forbidden.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_free.exit.i.i

if.then.i29.i.i:                                  ; preds = %swsusp_set_page_forbidden.exit.i.i
  %103 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i22.i.i = ptrtoint ptr %call38.i.i.i.i.i to i32
  %sub.ptr.rhs.cast.i23.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i24.i.i = sub i32 %sub.ptr.lhs.cast.i22.i.i, %sub.ptr.rhs.cast.i23.i.i
  %sub.ptr.div.i25.i.i = sdiv exact i32 %sub.ptr.sub.i24.i.i, 36
  %104 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i26.i.i = add i32 %sub.ptr.div.i25.i.i, %104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i19.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i19.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i20.i.i) #15
  store i32 -1, ptr %bit.i.i20.i.i, align 4, !annotation !10
  %call.i.i27.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %102, i32 noundef %add.i26.i.i, ptr noundef nonnull %addr.i.i19.i.i, ptr noundef nonnull %bit.i.i20.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i27.i.i)
  %tobool.not.i.i28.i.i = icmp eq i32 %call.i.i27.i.i, 0
  br i1 %tobool.not.i.i28.i.i, label %memory_bm_set_bit.exit.i31.i.i, label %do.body3.i.i30.i.i, !prof !11

do.body3.i.i30.i.i:                               ; preds = %if.then.i29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i31.i.i:                   ; preds = %if.then.i29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %105 = load i32, ptr %bit.i.i20.i.i, align 4
  %106 = load ptr, ptr %addr.i.i19.i.i, align 4
  tail call void @_set_bit(i32 noundef %105, ptr noundef %106) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i20.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i19.i.i) #15
  br label %swsusp_set_page_free.exit.i.i

swsusp_set_page_free.exit.i.i:                    ; preds = %memory_bm_set_bit.exit.i31.i.i, %swsusp_set_page_forbidden.exit.i.i.swsusp_set_page_free.exit.i.i_crit_edge
  %cmp8.not.i.i = icmp eq i32 %dec39.i.i, 0
  br i1 %cmp8.not.i.i, label %swsusp_set_page_free.exit.i.i.prepare_highmem_image.exit.i_crit_edge, label %swsusp_set_page_free.exit.i.i.while.body.i26.i_crit_edge

swsusp_set_page_free.exit.i.i.while.body.i26.i_crit_edge: ; preds = %swsusp_set_page_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i26.i

swsusp_set_page_free.exit.i.i.prepare_highmem_image.exit.i_crit_edge: ; preds = %swsusp_set_page_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_highmem_image.exit.i

prepare_highmem_image.exit.i:                     ; preds = %swsusp_set_page_free.exit.i.i.prepare_highmem_image.exit.i_crit_edge, %if.end7.i.i.prepare_highmem_image.exit.i_crit_edge
  %107 = load ptr, ptr @copy_bm, align 4
  store ptr %107, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2), align 4
  %leaves.i.i34.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %leaves.i.i34.i, align 4
  store ptr %108, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @copy_bm, i32 0, i32 2, i32 3), align 4
  store ptr @copy_bm, ptr @safe_highmem_bm, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %prepare_highmem_image.exit.i, %memory_bm_free.exit.i.if.end7.i_crit_edge
  %nr_highmem.2.i = phi i32 [ 0, %memory_bm_free.exit.i.if.end7.i_crit_edge ], [ %nr_highmem.0.i, %prepare_highmem_image.exit.i ]
  %109 = load i32, ptr @nr_copy_pages, align 4
  %110 = load i32, ptr @allocated_unsafe_pages, align 4
  %111 = add i32 %109, 340
  %112 = add i32 %110, %nr_highmem.2.i
  %sub9.i = sub i32 %111, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 341, i32 %sub9.i)
  %113 = icmp ult i32 %sub9.i, 341
  br i1 %113, label %if.end7.i.while.end.i_crit_edge, label %while.body.preheader.i

if.end7.i.while.end.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.end7.i
  %div.i = udiv i32 %sub9.i, 341
  br label %while.body.i

while.body.i:                                     ; preds = %if.end14.i.while.body.i_crit_edge, %while.body.preheader.i
  %nr_pages.0143.i = phi i32 [ %dec.i, %if.end14.i.while.body.i_crit_edge ], [ %div.i, %while.body.preheader.i ]
  %call11.i = tail call fastcc ptr @get_image_page(i32 noundef 2592, i32 noundef 1) #17
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %while.body.i.prepare_image.exit_crit_edge, label %if.end14.i

while.body.i.prepare_image.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_image.exit

if.end14.i:                                       ; preds = %while.body.i
  %114 = load ptr, ptr @safe_pages_list, align 4
  store ptr %114, ptr %call11.i, align 1
  store ptr %call11.i, ptr @safe_pages_list, align 4
  %dec.i = add i32 %nr_pages.0143.i, -1
  %cmp10.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp10.not.i, label %while.end.loopexit.i, label %if.end14.i.while.body.i_crit_edge

if.end14.i.while.body.i_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.end.loopexit.i:                             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i = load i32, ptr @nr_copy_pages, align 4
  %.pre147.i = load i32, ptr @allocated_unsafe_pages, align 4
  %.pre148.i = add i32 %.pre147.i, %nr_highmem.2.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.loopexit.i, %if.end7.i.while.end.i_crit_edge
  %.pre-phi.i = phi i32 [ %.pre148.i, %while.end.loopexit.i ], [ %112, %if.end7.i.while.end.i_crit_edge ]
  %115 = phi i32 [ %.pre.i, %while.end.loopexit.i ], [ %109, %if.end7.i.while.end.i_crit_edge ]
  %sub16.i = sub i32 %115, %.pre-phi.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub16.i)
  %cmp18.not144.i = icmp eq i32 %sub16.i, 0
  br i1 %cmp18.not144.i, label %while.end.i.if.end38_crit_edge, label %while.end.i.while.body19.i_crit_edge

while.end.i.while.body19.i_crit_edge:             ; preds = %while.end.i
  br label %while.body19.i

while.end.i.if.end38_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

while.body19.i:                                   ; preds = %swsusp_set_page_free.exit.i.while.body19.i_crit_edge, %while.end.i.while.body19.i_crit_edge
  %nr_pages.1145.i = phi i32 [ %dec42.i, %swsusp_set_page_free.exit.i.while.body19.i_crit_edge ], [ %sub16.i, %while.end.i.while.body19.i_crit_edge ]
  %call20.i = tail call i32 @get_zeroed_page(i32 noundef 2592) #17
  %116 = inttoptr i32 %call20.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %while.body19.i.prepare_image.exit_crit_edge, label %if.end23.i

while.body19.i.prepare_image.exit_crit_edge:      ; preds = %while.body19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %prepare_image.exit

if.end23.i:                                       ; preds = %while.body19.i
  %sub24.i = add i32 %call20.i, 1073741824
  %shr.i = lshr i32 %sub24.i, 12
  %117 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i38.i = icmp eq ptr %117, null
  br i1 %tobool.not.i38.i, label %if.end23.i.if.then29.i_crit_edge, label %cond.true.i.i

if.end23.i.if.then29.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29.i

cond.true.i.i:                                    ; preds = %if.end23.i
  %118 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i42.i = add i32 %118, %shr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i36.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i36.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i37.i) #15
  store i32 -1, ptr %bit.i.i37.i, align 4, !annotation !10
  %call.i.i43.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %117, i32 noundef %add.i42.i, ptr noundef nonnull %addr.i.i36.i, ptr noundef nonnull %bit.i.i37.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i)
  %tobool.not.i.i44.i = icmp eq i32 %call.i.i43.i, 0
  br i1 %tobool.not.i.i44.i, label %swsusp_page_is_free.exit.i, label %do.body3.i.i45.i, !prof !11

do.body3.i.i45.i:                                 ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit.i:                       ; preds = %cond.true.i.i
  %119 = load i32, ptr %bit.i.i37.i, align 4
  %120 = load ptr, ptr %addr.i.i36.i, align 4
  %div3.i.i.i.i = lshr i32 %119, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %120, i32 %div3.i.i.i.i
  %121 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %119, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i37.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i36.i) #15
  %122 = shl nuw i32 1, %and.i.i.i.i
  %123 = and i32 %121, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool28.not.i = icmp eq i32 %123, 0
  br i1 %tobool28.not.i, label %swsusp_page_is_free.exit.i.if.then29.i_crit_edge, label %swsusp_page_is_free.exit.i.if.end31.i_crit_edge

swsusp_page_is_free.exit.i.if.end31.i_crit_edge:  ; preds = %swsusp_page_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31.i

swsusp_page_is_free.exit.i.if.then29.i_crit_edge: ; preds = %swsusp_page_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29.i

if.then29.i:                                      ; preds = %swsusp_page_is_free.exit.i.if.then29.i_crit_edge, %if.end23.i.if.then29.i_crit_edge
  %124 = load ptr, ptr @safe_pages_list, align 4
  store ptr %124, ptr %116, align 1
  store ptr %116, ptr @safe_pages_list, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %swsusp_page_is_free.exit.i.if.end31.i_crit_edge
  %125 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i48.i = icmp eq ptr %125, null
  br i1 %tobool.not.i48.i, label %if.end31.i.swsusp_set_page_forbidden.exit.i_crit_edge, label %if.then.i.i

if.end31.i.swsusp_set_page_forbidden.exit.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_forbidden.exit.i

if.then.i.i:                                      ; preds = %if.end31.i
  %126 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i53.i = add i32 %126, %shr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i46.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i46.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i47.i) #15
  store i32 -1, ptr %bit.i.i47.i, align 4, !annotation !10
  %call.i.i54.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %125, i32 noundef %add.i53.i, ptr noundef nonnull %addr.i.i46.i, ptr noundef nonnull %bit.i.i47.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54.i)
  %tobool.not.i.i55.i = icmp eq i32 %call.i.i54.i, 0
  br i1 %tobool.not.i.i55.i, label %memory_bm_set_bit.exit.i57.i, label %do.body3.i.i56.i, !prof !11

do.body3.i.i56.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i57.i:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %127 = load i32, ptr %bit.i.i47.i, align 4
  %128 = load ptr, ptr %addr.i.i46.i, align 4
  tail call void @_set_bit(i32 noundef %127, ptr noundef %128) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i47.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i46.i) #15
  br label %swsusp_set_page_forbidden.exit.i

swsusp_set_page_forbidden.exit.i:                 ; preds = %memory_bm_set_bit.exit.i57.i, %if.end31.i.swsusp_set_page_forbidden.exit.i_crit_edge
  %129 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i61.i = icmp eq ptr %129, null
  br i1 %tobool.not.i61.i, label %swsusp_set_page_forbidden.exit.i.swsusp_set_page_free.exit.i_crit_edge, label %if.then.i69.i

swsusp_set_page_forbidden.exit.i.swsusp_set_page_free.exit.i_crit_edge: ; preds = %swsusp_set_page_forbidden.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_free.exit.i

if.then.i69.i:                                    ; preds = %swsusp_set_page_forbidden.exit.i
  %130 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i66.i = add i32 %130, %shr.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i59.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i59.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i60.i) #15
  store i32 -1, ptr %bit.i.i60.i, align 4, !annotation !10
  %call.i.i67.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %129, i32 noundef %add.i66.i, ptr noundef nonnull %addr.i.i59.i, ptr noundef nonnull %bit.i.i60.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67.i)
  %tobool.not.i.i68.i = icmp eq i32 %call.i.i67.i, 0
  br i1 %tobool.not.i.i68.i, label %memory_bm_set_bit.exit.i71.i, label %do.body3.i.i70.i, !prof !11

do.body3.i.i70.i:                                 ; preds = %if.then.i69.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i71.i:                     ; preds = %if.then.i69.i
  call void @__sanitizer_cov_trace_pc() #16
  %131 = load i32, ptr %bit.i.i60.i, align 4
  %132 = load ptr, ptr %addr.i.i59.i, align 4
  tail call void @_set_bit(i32 noundef %131, ptr noundef %132) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i60.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i59.i) #15
  br label %swsusp_set_page_free.exit.i

swsusp_set_page_free.exit.i:                      ; preds = %memory_bm_set_bit.exit.i71.i, %swsusp_set_page_forbidden.exit.i.swsusp_set_page_free.exit.i_crit_edge
  %dec42.i = add i32 %nr_pages.1145.i, -1
  %cmp18.not.i = icmp eq i32 %dec42.i, 0
  br i1 %cmp18.not.i, label %swsusp_set_page_free.exit.i.if.end38_crit_edge, label %swsusp_set_page_free.exit.i.while.body19.i_crit_edge

swsusp_set_page_free.exit.i.while.body19.i_crit_edge: ; preds = %swsusp_set_page_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body19.i

swsusp_set_page_free.exit.i.if.end38_crit_edge:   ; preds = %swsusp_set_page_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

prepare_image.exit:                               ; preds = %while.body19.i.prepare_image.exit_crit_edge, %while.body.i.prepare_image.exit_crit_edge, %if.end.i.i.prepare_image.exit_crit_edge, %if.then2.i.prepare_image.exit_crit_edge, %mark_unsafe_pages.exit.i.prepare_image.exit_crit_edge
  %error.0.i = phi i32 [ %call1.i, %mark_unsafe_pages.exit.i.prepare_image.exit_crit_edge ], [ -12, %if.then2.i.prepare_image.exit_crit_edge ], [ -12, %if.end.i.i.prepare_image.exit_crit_edge ], [ -12, %while.body19.i.prepare_image.exit_crit_edge ], [ -12, %while.body.i.prepare_image.exit_crit_edge ]
  tail call void @swsusp_free() #17
  br label %cleanup

if.end38:                                         ; preds = %swsusp_set_page_free.exit.i.if.end38_crit_edge, %while.end.i.if.end38_crit_edge
  store ptr null, ptr @snapshot_write_next.ca.0, align 4
  store i32 4092, ptr @snapshot_write_next.ca.1, align 4
  store i1 true, ptr @snapshot_write_next.ca.2, align 4
  store i1 true, ptr @snapshot_write_next.ca.3, align 4
  %133 = load ptr, ptr @orig_bm, align 4
  store ptr %133, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2), align 4
  %leaves.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %133, i32 0, i32 2
  %134 = load ptr, ptr %leaves.i, align 4
  store ptr %134, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 2, i32 3), align 4
  store ptr null, ptr @restore_pblist, align 4
  %call39 = tail call fastcc ptr @get_buffer() #21
  %buffer40 = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  store ptr %call39, ptr %buffer40, align 4
  store i32 0, ptr %sync_read, align 4
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %if.end38.if.end66_crit_edge

if.end38.if.end66_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %135 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.else49:                                        ; preds = %if.else22
  tail call fastcc void @copy_last_highmem_page() #21
  %buffer50 = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  %136 = load i8, ptr @hibernate_restore_protection_active, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i102 = icmp eq i8 %136, 0
  br i1 %tobool.not.i102, label %if.else49.hibernate_restore_protect_page.exit_crit_edge, label %if.then.i104

if.else49.hibernate_restore_protect_page.exit_crit_edge: ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  br label %hibernate_restore_protect_page.exit

if.then.i104:                                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #16
  %137 = load ptr, ptr %buffer50, align 4
  %138 = ptrtoint ptr %137 to i32
  %call.i103 = tail call i32 @set_memory_ro(i32 noundef %138, i32 noundef 1) #17
  br label %hibernate_restore_protect_page.exit

hibernate_restore_protect_page.exit:              ; preds = %if.then.i104, %if.else49.hibernate_restore_protect_page.exit_crit_edge
  %call51 = tail call fastcc ptr @get_buffer() #21
  store ptr %call51, ptr %buffer50, align 4
  %cmp.i106 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then55, label %if.end58

if.then55:                                        ; preds = %hibernate_restore_protect_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  %139 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end58:                                         ; preds = %hibernate_restore_protect_page.exit
  %140 = load ptr, ptr @buffer, align 4
  %cmp60.not = icmp eq ptr %call51, %140
  br i1 %cmp60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  store i32 0, ptr %sync_read, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge, %if.end38.if.end66_crit_edge, %if.end30.if.end66_crit_edge, %if.end21, %if.end10
  %141 = load i32, ptr %handle, align 4
  %inc = add i32 %141, 1
  store i32 %inc, ptr %handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then55, %if.then44, %prepare_image.exit, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %load_header.exit, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 4096, %if.end66 ], [ %135, %if.then44 ], [ %139, %if.then55 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -1, %load_header.exit ], [ %call18, %if.end17.cleanup_crit_edge ], [ %error.0.i, %prepare_image.exit ], [ -14, %if.end.i.cleanup_crit_edge ], [ -14, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_buffer() unnamed_addr #3 align 64 {
entry:
  %addr.i.i4 = alloca ptr, align 4
  %bit.i.i5 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  %addr.i.i1.i = alloca ptr, align 4
  %bit.i.i2.i = alloca i32, align 4
  %addr.i.i.i = alloca ptr, align 4
  %bit.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef nonnull @orig_bm) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @mem_map, align 4
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %call, %1
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  %2 = load i32, ptr %add.ptr, align 4
  %shr.i = lshr i32 %2, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 2
  br i1 %cmp.i, label %if.end.if.then4_crit_edge, label %is_highmem_idx.exit

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

is_highmem_idx.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp1.i = icmp ne i32 %shr.i, 3
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp ne i32 %3, 2
  %4 = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  br i1 %4, label %if.end6, label %is_highmem_idx.exit.if.then4_crit_edge

is_highmem_idx.exit.if.then4_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.then4:                                         ; preds = %is_highmem_idx.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %5 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then4.if.end.i_crit_edge, label %cond.true.i.i

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

cond.true.i.i:                                    ; preds = %if.then4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr to i32
  %add.ptr.idx = mul i32 %sub, 36
  %sub.ptr.div.i.i = sdiv exact i32 %add.ptr.idx, 36
  %add.i.i = add i32 %sub.ptr.div.i.i, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  store i32 -1, ptr %bit.i.i.i, align 4, !annotation !10
  %call.i.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %5, i32 noundef %add.i.i, ptr noundef nonnull %addr.i.i.i, ptr noundef nonnull %bit.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %swsusp_page_is_forbidden.exit.i, label %do.body3.i.i.i, !prof !11

do.body3.i.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_forbidden.exit.i:                  ; preds = %cond.true.i.i
  %6 = load i32, ptr %bit.i.i.i, align 4
  %7 = load ptr, ptr %addr.i.i.i, align 4
  %div3.i.i.i.i = lshr i32 %6, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %7, i32 %div3.i.i.i.i
  %8 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %6, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i.i) #15
  %9 = shl nuw i32 1, %and.i.i.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %swsusp_page_is_forbidden.exit.i.if.end.i_crit_edge, label %land.lhs.true.i

swsusp_page_is_forbidden.exit.i.if.end.i_crit_edge: ; preds = %swsusp_page_is_forbidden.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %swsusp_page_is_forbidden.exit.i
  %11 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i3.i = icmp eq ptr %11, null
  br i1 %tobool.not.i3.i, label %land.lhs.true.i.if.end.i_crit_edge, label %cond.true.i11.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

cond.true.i11.i:                                  ; preds = %land.lhs.true.i
  %12 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast.i5.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i6.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i5.i
  %sub.ptr.div.i7.i = sdiv exact i32 %sub.ptr.sub.i6.i, 36
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i8.i = add i32 %sub.ptr.div.i7.i, %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i1.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i1.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i2.i) #15
  store i32 -1, ptr %bit.i.i2.i, align 4, !annotation !10
  %call.i.i9.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %11, i32 noundef %add.i8.i, ptr noundef nonnull %addr.i.i1.i, ptr noundef nonnull %bit.i.i2.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9.i)
  %tobool.not.i.i10.i = icmp eq i32 %call.i.i9.i, 0
  br i1 %tobool.not.i.i10.i, label %swsusp_page_is_free.exit.i, label %do.body3.i.i12.i, !prof !11

do.body3.i.i12.i:                                 ; preds = %cond.true.i11.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit.i:                       ; preds = %cond.true.i11.i
  %14 = load i32, ptr %bit.i.i2.i, align 4
  %15 = load ptr, ptr %addr.i.i1.i, align 4
  %div3.i.i.i13.i = lshr i32 %14, 5
  %arrayidx.i.i.i14.i = getelementptr i32, ptr %15, i32 %div3.i.i.i13.i
  %16 = load volatile i32, ptr %arrayidx.i.i.i14.i, align 4
  %and.i.i.i15.i = and i32 %14, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i2.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i1.i) #15
  %17 = shl nuw i32 1, %and.i.i.i15.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool2.not.i = icmp eq i32 %18, 0
  br i1 %tobool2.not.i, label %swsusp_page_is_free.exit.i.if.end.i_crit_edge, label %if.then.i

swsusp_page_is_free.exit.i.if.end.i_crit_edge:    ; preds = %swsusp_page_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %swsusp_page_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %add.ptr, ptr @last_highmem_page, align 4
  %19 = load ptr, ptr @buffer, align 4
  br label %cleanup

if.end.i:                                         ; preds = %swsusp_page_is_free.exit.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %swsusp_page_is_forbidden.exit.i.if.end.i_crit_edge, %if.then4.if.end.i_crit_edge
  %20 = load i32, ptr @snapshot_write_next.ca.1, align 4
  %21 = add i32 %20, -4081
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp.i.i = icmp ult i32 %21, 12
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end7_crit_edge.i.i

entry.if.end7_crit_edge.i.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i.i = load ptr, ptr @snapshot_write_next.ca.0, align 4
  br label %chain_alloc.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %.b47 = load i1, ptr @snapshot_write_next.ca.3, align 4
  br i1 %.b47, label %cond.true.i22.i, label %if.then.i.i.cond.end.i.i_crit_edge

if.then.i.i.cond.end.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.true.i22.i:                                  ; preds = %if.then.i.i
  %22 = load ptr, ptr @safe_pages_list, align 4
  %tobool.not.i.i21.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i21.i, label %cond.true.i22.i.cond.end.i.i_crit_edge, label %cond.end.thread.i.i

cond.true.i22.i.cond.end.i.i_crit_edge:           ; preds = %cond.true.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i.i

cond.end.thread.i.i:                              ; preds = %cond.true.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  %23 = load ptr, ptr %22, align 1
  store ptr %23, ptr @safe_pages_list, align 4
  %call.i.i23.i = tail call ptr @__memset(ptr noundef nonnull %22, i32 noundef 0, i32 noundef 4096) #17
  br label %if.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i22.i.cond.end.i.i_crit_edge, %if.then.i.i.cond.end.i.i_crit_edge
  %.sink32.i = phi i32 [ 1, %cond.true.i22.i.cond.end.i.i_crit_edge ], [ 0, %if.then.i.i.cond.end.i.i_crit_edge ]
  %.b45 = load i1, ptr @snapshot_write_next.ca.2, align 4
  %24 = select i1 %.b45, i32 2592, i32 0
  %call2.i.i = tail call fastcc ptr @get_image_page(i32 noundef %24, i32 noundef %.sink32.i) #17
  %tobool3.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool3.not.i.i, label %cond.end.i.i.if.then5.i_crit_edge, label %cond.end.i.i.if.end.i.i_crit_edge

cond.end.i.i.if.end.i.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

cond.end.i.i.if.then5.i_crit_edge:                ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

if.end.i.i:                                       ; preds = %cond.end.i.i.if.end.i.i_crit_edge, %cond.end.thread.i.i
  %cond27.i.i = phi ptr [ %22, %cond.end.thread.i.i ], [ %call2.i.i, %cond.end.i.i.if.end.i.i_crit_edge ]
  %25 = load ptr, ptr @snapshot_write_next.ca.0, align 4
  store ptr %25, ptr %cond27.i.i, align 1
  store ptr %cond27.i.i, ptr @snapshot_write_next.ca.0, align 4
  br label %chain_alloc.exit.i

chain_alloc.exit.i:                               ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %26 = phi i32 [ %20, %entry.if.end7_crit_edge.i.i ], [ 0, %if.end.i.i ]
  %27 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %cond27.i.i, %if.end.i.i ]
  %data.i.i = getelementptr inbounds %struct.linked_page, ptr %27, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %26
  %add.i25.i = add i32 %26, 12
  store i32 %add.i25.i, ptr @snapshot_write_next.ca.1, align 4
  %tobool4.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not.i, label %chain_alloc.exit.i.if.then5.i_crit_edge, label %if.end7.i

chain_alloc.exit.i.if.then5.i_crit_edge:          ; preds = %chain_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

if.then5.i:                                       ; preds = %chain_alloc.exit.i.if.then5.i_crit_edge, %cond.end.i.i.if.then5.i_crit_edge
  tail call void @swsusp_free() #17
  br label %cleanup

if.end7.i:                                        ; preds = %chain_alloc.exit.i
  %orig_page.i = getelementptr inbounds %struct.highmem_pbe, ptr %add.ptr.i.i, i32 0, i32 1
  store ptr %add.ptr, ptr %orig_page.i, align 4
  %28 = load i32, ptr @safe_highmem_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %29 = load ptr, ptr @buffer, align 4
  %30 = load ptr, ptr @mem_map, align 4
  %31 = load ptr, ptr @safe_highmem_bm, align 4
  %call9.i = tail call fastcc i32 @memory_bm_next_pfn(ptr noundef %31) #17
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %call9.i, %32
  %add.ptr.i = getelementptr %struct.page, ptr %30, i32 %sub.i
  %33 = load i32, ptr @safe_highmem_pages, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr @safe_highmem_pages, align 4
  store ptr %add.ptr.i, ptr @last_highmem_page, align 4
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %34 = load ptr, ptr @safe_pages_list, align 4
  %35 = load ptr, ptr %34, align 1
  store ptr %35, ptr @safe_pages_list, align 4
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %34 to i32
  %sub10.i = add i32 %37, 1073741824
  %shr.i1 = lshr i32 %sub10.i, 12
  %add.ptr12.i = getelementptr %struct.page, ptr %36, i32 %shr.i1
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then8.i
  %storemerge.i = phi ptr [ %add.ptr12.i, %if.else.i ], [ %add.ptr.i, %if.then8.i ]
  %kaddr.0.i = phi ptr [ %34, %if.else.i ], [ %29, %if.then8.i ]
  store ptr %storemerge.i, ptr %add.ptr.i.i, align 4
  %38 = load ptr, ptr @highmem_pblist, align 4
  %next15.i = getelementptr inbounds %struct.highmem_pbe, ptr %add.ptr.i.i, i32 0, i32 2
  store ptr %38, ptr %next15.i, align 4
  store ptr %add.ptr.i.i, ptr @highmem_pblist, align 4
  br label %cleanup

if.end6:                                          ; preds = %is_highmem_idx.exit
  %39 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i2 = icmp eq ptr %39, null
  br i1 %tobool.not.i2, label %if.end6.if.end13_crit_edge, label %cond.true.i

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

cond.true.i:                                      ; preds = %if.end6
  %add.ptr.idx43 = mul i32 %sub, 36
  %sub.ptr.div.i = sdiv exact i32 %add.ptr.idx43, 36
  %add.i = add i32 %sub.ptr.div.i, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %39, i32 noundef %add.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i3 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i3, label %swsusp_page_is_forbidden.exit, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_forbidden.exit:                    ; preds = %cond.true.i
  %40 = load i32, ptr %bit.i.i, align 4
  %41 = load ptr, ptr %addr.i.i, align 4
  %div3.i.i.i = lshr i32 %40, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %41, i32 %div3.i.i.i
  %42 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %40, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  %43 = shl nuw i32 1, %and.i.i.i
  %44 = and i32 %42, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool8.not = icmp eq i32 %44, 0
  br i1 %tobool8.not, label %swsusp_page_is_forbidden.exit.if.end13_crit_edge, label %land.lhs.true

swsusp_page_is_forbidden.exit.if.end13_crit_edge: ; preds = %swsusp_page_is_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

land.lhs.true:                                    ; preds = %swsusp_page_is_forbidden.exit
  %45 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i6 = icmp eq ptr %45, null
  br i1 %tobool.not.i6, label %land.lhs.true.if.end13_crit_edge, label %cond.true.i14

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

cond.true.i14:                                    ; preds = %land.lhs.true
  %46 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i7 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i8 = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i9 = sub i32 %sub.ptr.lhs.cast.i7, %sub.ptr.rhs.cast.i8
  %sub.ptr.div.i10 = sdiv exact i32 %sub.ptr.sub.i9, 36
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i11 = add i32 %sub.ptr.div.i10, %47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i4) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i5) #15
  store i32 -1, ptr %bit.i.i5, align 4, !annotation !10
  %call.i.i12 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %45, i32 noundef %add.i11, ptr noundef nonnull %addr.i.i4, ptr noundef nonnull %bit.i.i5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i.i13, label %swsusp_page_is_free.exit, label %do.body3.i.i15, !prof !11

do.body3.i.i15:                                   ; preds = %cond.true.i14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit:                         ; preds = %cond.true.i14
  %48 = load i32, ptr %bit.i.i5, align 4
  %49 = load ptr, ptr %addr.i.i4, align 4
  %div3.i.i.i16 = lshr i32 %48, 5
  %arrayidx.i.i.i17 = getelementptr i32, ptr %49, i32 %div3.i.i.i16
  %50 = load volatile i32, ptr %arrayidx.i.i.i17, align 4
  %and.i.i.i18 = and i32 %48, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i4) #15
  %51 = shl nuw i32 1, %and.i.i.i18
  %52 = and i32 %50, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool10.not = icmp eq i32 %52, 0
  br i1 %tobool10.not, label %swsusp_page_is_free.exit.if.end13_crit_edge, label %if.then11

swsusp_page_is_free.exit.if.end13_crit_edge:      ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then11:                                        ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call12 = tail call ptr @page_address(ptr noundef %add.ptr) #17
  br label %cleanup

if.end13:                                         ; preds = %swsusp_page_is_free.exit.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %swsusp_page_is_forbidden.exit.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %53 = load i32, ptr @snapshot_write_next.ca.1, align 4
  %54 = add i32 %53, -4081
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %54)
  %cmp.i24 = icmp ult i32 %54, 12
  br i1 %cmp.i24, label %if.then.i26, label %entry.if.end7_crit_edge.i

entry.if.end7_crit_edge.i:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i = load ptr, ptr @snapshot_write_next.ca.0, align 4
  br label %chain_alloc.exit

if.then.i26:                                      ; preds = %if.end13
  %.b46 = load i1, ptr @snapshot_write_next.ca.3, align 4
  br i1 %.b46, label %cond.true.i28, label %if.then.i26.cond.end.i_crit_edge

if.then.i26.cond.end.i_crit_edge:                 ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i28:                                    ; preds = %if.then.i26
  %55 = load ptr, ptr @safe_pages_list, align 4
  %tobool.not.i.i27 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i27, label %cond.true.i28.cond.end.i_crit_edge, label %cond.end.thread.i

cond.true.i28.cond.end.i_crit_edge:               ; preds = %cond.true.i28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.end.thread.i:                                ; preds = %cond.true.i28
  call void @__sanitizer_cov_trace_pc() #16
  %56 = load ptr, ptr %55, align 1
  store ptr %56, ptr @safe_pages_list, align 4
  %call.i.i29 = tail call ptr @__memset(ptr noundef nonnull %55, i32 noundef 0, i32 noundef 4096) #17
  br label %if.end.i32

cond.end.i:                                       ; preds = %cond.true.i28.cond.end.i_crit_edge, %if.then.i26.cond.end.i_crit_edge
  %.sink44 = phi i32 [ 1, %cond.true.i28.cond.end.i_crit_edge ], [ 0, %if.then.i26.cond.end.i_crit_edge ]
  %.b = load i1, ptr @snapshot_write_next.ca.2, align 4
  %57 = select i1 %.b, i32 2592, i32 0
  %call2.i = tail call fastcc ptr @get_image_page(i32 noundef %57, i32 noundef %.sink44) #17
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %cond.end.i.if.then16_crit_edge, label %cond.end.i.if.end.i32_crit_edge

cond.end.i.if.end.i32_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i32

cond.end.i.if.then16_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.end.i32:                                       ; preds = %cond.end.i.if.end.i32_crit_edge, %cond.end.thread.i
  %cond27.i = phi ptr [ %55, %cond.end.thread.i ], [ %call2.i, %cond.end.i.if.end.i32_crit_edge ]
  %58 = load ptr, ptr @snapshot_write_next.ca.0, align 4
  store ptr %58, ptr %cond27.i, align 1
  store ptr %cond27.i, ptr @snapshot_write_next.ca.0, align 4
  br label %chain_alloc.exit

chain_alloc.exit:                                 ; preds = %if.end.i32, %entry.if.end7_crit_edge.i
  %59 = phi i32 [ %53, %entry.if.end7_crit_edge.i ], [ 0, %if.end.i32 ]
  %60 = phi ptr [ %.pre.i, %entry.if.end7_crit_edge.i ], [ %cond27.i, %if.end.i32 ]
  %data.i = getelementptr inbounds %struct.linked_page, ptr %60, i32 0, i32 1
  %add.ptr.i33 = getelementptr i8, ptr %data.i, i32 %59
  %add.i34 = add i32 %59, 12
  store i32 %add.i34, ptr @snapshot_write_next.ca.1, align 4
  %tobool15.not = icmp eq ptr %add.ptr.i33, null
  br i1 %tobool15.not, label %chain_alloc.exit.if.then16_crit_edge, label %if.end18

chain_alloc.exit.if.then16_crit_edge:             ; preds = %chain_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then16

if.then16:                                        ; preds = %chain_alloc.exit.if.then16_crit_edge, %cond.end.i.if.then16_crit_edge
  tail call void @swsusp_free() #21
  br label %cleanup

if.end18:                                         ; preds = %chain_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call ptr @page_address(ptr noundef %add.ptr) #17
  %orig_address = getelementptr inbounds %struct.pbe, ptr %add.ptr.i33, i32 0, i32 1
  store ptr %call19, ptr %orig_address, align 4
  %61 = load ptr, ptr @safe_pages_list, align 4
  store ptr %61, ptr %add.ptr.i33, align 4
  %62 = load ptr, ptr %61, align 1
  store ptr %62, ptr @safe_pages_list, align 4
  %63 = load ptr, ptr @restore_pblist, align 4
  %next20 = getelementptr inbounds %struct.pbe, ptr %add.ptr.i33, i32 0, i32 2
  store ptr %63, ptr %next20, align 4
  store ptr %add.ptr.i33, ptr @restore_pblist, align 4
  %64 = load ptr, ptr %add.ptr.i33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then11, %if.end14.i, %if.then5.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call12, %if.then11 ], [ %64, %if.end18 ], [ inttoptr (i32 -12 to ptr), %if.then16 ], [ inttoptr (i32 -14 to ptr), %entry.cleanup_crit_edge ], [ %19, %if.then.i ], [ %kaddr.0.i, %if.end14.i ], [ inttoptr (i32 -12 to ptr), %if.then5.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @copy_last_highmem_page() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @last_highmem_page, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %1, 512
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 213
  %8 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %0, i32 noundef %or.i) #17
  %9 = load ptr, ptr @buffer, align 4
  tail call void @copy_page(ptr noundef %call.i.i, ptr noundef %9) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 213
  %13 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %13, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  store ptr null, ptr @last_highmem_page, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snapshot_write_finalize(ptr nocapture noundef readonly %handle) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @copy_last_highmem_page() #21
  %0 = load i8, ptr @hibernate_restore_protection_active, align 1, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %entry.hibernate_restore_protect_page.exit_crit_edge, label %if.then.i

entry.hibernate_restore_protect_page.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %hibernate_restore_protect_page.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %handle, i32 0, i32 1
  %1 = load ptr, ptr %buffer, align 4
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call i32 @set_memory_ro(i32 noundef %2, i32 noundef 1) #17
  br label %hibernate_restore_protect_page.exit

hibernate_restore_protect_page.exit:              ; preds = %if.then.i, %entry.hibernate_restore_protect_page.exit_crit_edge
  %3 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %hibernate_restore_protect_page.exit.if.end_crit_edge

hibernate_restore_protect_page.exit.if.end_crit_edge: ; preds = %hibernate_restore_protect_page.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %hibernate_restore_protect_page.exit
  %4 = load i32, ptr @nr_meta_pages, align 4
  %5 = load i32, ptr @nr_copy_pages, align 4
  %add = add i32 %5, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add)
  %cmp2 = icmp ugt i32 %3, %add
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %zone.01.i = load ptr, ptr @orig_bm, align 4
  %cmp.not2.i = icmp eq ptr %zone.01.i, @orig_bm
  br i1 %cmp.not2.i, label %if.then.for.end.i_crit_edge, label %for.body.preheader.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.then
  %safe_pages_list.promoted.i.pre.i = load ptr, ptr @safe_pages_list, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %recycle_zone_bm_rtree.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %safe_pages_list.promoted.i.i = phi ptr [ %safe_pages_list.promoted.i6.i, %recycle_zone_bm_rtree.exit.i.for.body.i_crit_edge ], [ %safe_pages_list.promoted.i.pre.i, %for.body.preheader.i ]
  %zone.03.i = phi ptr [ %zone.0.i, %recycle_zone_bm_rtree.exit.i.for.body.i_crit_edge ], [ %zone.01.i, %for.body.preheader.i ]
  %nodes.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.03.i, i32 0, i32 1
  %node.033.i.i = load ptr, ptr %nodes.i.i, align 4
  %cmp.not34.i.i = icmp eq ptr %node.033.i.i, %nodes.i.i
  br i1 %cmp.not34.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %node.035.i.i = phi ptr [ %node.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %node.033.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %6 = phi ptr [ %7, %for.body.i.i.for.body.i.i_crit_edge ], [ %safe_pages_list.promoted.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.035.i.i, i32 0, i32 1
  %7 = load ptr, ptr %data.i.i, align 4
  store ptr %6, ptr %7, align 1
  store ptr %7, ptr @safe_pages_list, align 4
  %node.0.i.i = load ptr, ptr %node.035.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %nodes.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.body.i.for.end.i.i_crit_edge
  %safe_pages_list.promoted.i7.i = phi ptr [ %safe_pages_list.promoted.i.i, %for.body.i.for.end.i.i_crit_edge ], [ %7, %for.body.i.i.for.end.i.i_crit_edge ]
  %leaves.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.03.i, i32 0, i32 2
  %node.137.i.i = load ptr, ptr %leaves.i.i, align 4
  %cmp14.not38.i.i = icmp eq ptr %node.137.i.i, %leaves.i.i
  br i1 %cmp14.not38.i.i, label %for.end.i.i.recycle_zone_bm_rtree.exit.i_crit_edge, label %for.end.i.i.for.body16.i.i_crit_edge

for.end.i.i.for.body16.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body16.i.i

for.end.i.i.recycle_zone_bm_rtree.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recycle_zone_bm_rtree.exit.i

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.end.i.i.for.body16.i.i_crit_edge
  %node.139.i.i = phi ptr [ %node.1.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ %node.137.i.i, %for.end.i.i.for.body16.i.i_crit_edge ]
  %8 = phi ptr [ %9, %for.body16.i.i.for.body16.i.i_crit_edge ], [ %safe_pages_list.promoted.i7.i, %for.end.i.i.for.body16.i.i_crit_edge ]
  %data17.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i, i32 0, i32 1
  %9 = load ptr, ptr %data17.i.i, align 4
  store ptr %8, ptr %9, align 1
  store ptr %9, ptr @safe_pages_list, align 4
  %node.1.i.i = load ptr, ptr %node.139.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %node.1.i.i, %leaves.i.i
  br i1 %cmp14.not.i.i, label %for.body16.i.i.recycle_zone_bm_rtree.exit.i_crit_edge, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i

for.body16.i.i.recycle_zone_bm_rtree.exit.i_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %recycle_zone_bm_rtree.exit.i

recycle_zone_bm_rtree.exit.i:                     ; preds = %for.body16.i.i.recycle_zone_bm_rtree.exit.i_crit_edge, %for.end.i.i.recycle_zone_bm_rtree.exit.i_crit_edge
  %safe_pages_list.promoted.i6.i = phi ptr [ %safe_pages_list.promoted.i7.i, %for.end.i.i.recycle_zone_bm_rtree.exit.i_crit_edge ], [ %9, %for.body16.i.i.recycle_zone_bm_rtree.exit.i_crit_edge ]
  %zone.0.i = load ptr, ptr %zone.03.i, align 4
  %cmp.not.i = icmp eq ptr %zone.0.i, @orig_bm
  br i1 %cmp.not.i, label %recycle_zone_bm_rtree.exit.i.for.end.i_crit_edge, label %recycle_zone_bm_rtree.exit.i.for.body.i_crit_edge

recycle_zone_bm_rtree.exit.i.for.body.i_crit_edge: ; preds = %recycle_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

recycle_zone_bm_rtree.exit.i.for.end.i_crit_edge: ; preds = %recycle_zone_bm_rtree.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %recycle_zone_bm_rtree.exit.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %10 = load ptr, ptr getelementptr inbounds (%struct.memory_bitmap, ptr @orig_bm, i32 0, i32 1), align 4
  %tobool.not4.i = icmp eq ptr %10, null
  br i1 %tobool.not4.i, label %for.end.i.memory_bm_recycle.exit_crit_edge, label %while.body.preheader.i

for.end.i.memory_bm_recycle.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_recycle.exit

while.body.preheader.i:                           ; preds = %for.end.i
  %.pre.i = load ptr, ptr @safe_pages_list, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %11 = phi ptr [ %p_list.05.i, %while.body.i.while.body.i_crit_edge ], [ %.pre.i, %while.body.preheader.i ]
  %p_list.05.i = phi ptr [ %12, %while.body.i.while.body.i_crit_edge ], [ %10, %while.body.preheader.i ]
  %12 = load ptr, ptr %p_list.05.i, align 1
  store ptr %11, ptr %p_list.05.i, align 1
  store ptr %p_list.05.i, ptr @safe_pages_list, align 4
  %tobool.not.i5 = icmp eq ptr %12, null
  br i1 %tobool.not.i5, label %while.body.i.memory_bm_recycle.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body.i.memory_bm_recycle.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_recycle.exit

memory_bm_recycle.exit:                           ; preds = %while.body.i.memory_bm_recycle.exit_crit_edge, %for.end.i.memory_bm_recycle.exit_crit_edge
  %13 = load ptr, ptr @safe_highmem_bm, align 4
  %tobool.not.i6 = icmp eq ptr %13, null
  br i1 %tobool.not.i6, label %memory_bm_recycle.exit.if.end.i_crit_edge, label %if.then.i7

memory_bm_recycle.exit.if.end.i_crit_edge:        ; preds = %memory_bm_recycle.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i7:                                       ; preds = %memory_bm_recycle.exit
  %zone.014.i.i = load ptr, ptr %13, align 4
  %cmp.not15.i.i = icmp eq ptr %zone.014.i.i, %13
  br i1 %cmp.not15.i.i, label %if.then.i7.for.end.i.i10_crit_edge, label %if.then.i7.for.body.i.i8_crit_edge

if.then.i7.for.body.i.i8_crit_edge:               ; preds = %if.then.i7
  br label %for.body.i.i8

if.then.i7.for.end.i.i10_crit_edge:               ; preds = %if.then.i7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i10

for.body.i.i8:                                    ; preds = %free_zone_bm_rtree.exit.i.i.for.body.i.i8_crit_edge, %if.then.i7.for.body.i.i8_crit_edge
  %zone.016.i.i = phi ptr [ %zone.0.i.i, %free_zone_bm_rtree.exit.i.i.for.body.i.i8_crit_edge ], [ %zone.014.i.i, %if.then.i7.for.body.i.i8_crit_edge ]
  %nodes.i.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i.i, i32 0, i32 1
  %node.034.i.i.i = load ptr, ptr %nodes.i.i.i, align 4
  %cmp.not35.i.i.i = icmp eq ptr %node.034.i.i.i, %nodes.i.i.i
  br i1 %cmp.not35.i.i.i, label %for.body.i.i8.for.end.i.i.i_crit_edge, label %for.body.i.i8.for.body.i.i.i_crit_edge

for.body.i.i8.for.body.i.i.i_crit_edge:           ; preds = %for.body.i.i8
  br label %for.body.i.i.i

for.body.i.i8.for.end.i.i.i_crit_edge:            ; preds = %for.body.i.i8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i8.for.body.i.i.i_crit_edge
  %node.036.i.i.i = phi ptr [ %node.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %node.034.i.i.i, %for.body.i.i8.for.body.i.i.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.036.i.i.i, i32 0, i32 1
  %14 = load ptr, ptr %data.i.i.i, align 4
  tail call fastcc void @free_image_page(ptr noundef %14, i32 noundef 1) #17
  %node.0.i.i.i = load ptr, ptr %node.036.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %node.0.i.i.i, %nodes.i.i.i
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.end.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.body.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i.for.end.i.i.i_crit_edge, %for.body.i.i8.for.end.i.i.i_crit_edge
  %leaves.i.i.i = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.016.i.i, i32 0, i32 2
  %node.137.i.i.i = load ptr, ptr %leaves.i.i.i, align 4
  %cmp14.not38.i.i.i = icmp eq ptr %node.137.i.i.i, %leaves.i.i.i
  br i1 %cmp14.not38.i.i.i, label %for.end.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge, label %for.end.i.i.i.for.body16.i.i.i_crit_edge

for.end.i.i.i.for.body16.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body16.i.i.i

for.end.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i.i

for.body16.i.i.i:                                 ; preds = %for.body16.i.i.i.for.body16.i.i.i_crit_edge, %for.end.i.i.i.for.body16.i.i.i_crit_edge
  %node.139.i.i.i = phi ptr [ %node.1.i.i.i, %for.body16.i.i.i.for.body16.i.i.i_crit_edge ], [ %node.137.i.i.i, %for.end.i.i.i.for.body16.i.i.i_crit_edge ]
  %data17.i.i.i = getelementptr inbounds %struct.rtree_node, ptr %node.139.i.i.i, i32 0, i32 1
  %15 = load ptr, ptr %data17.i.i.i, align 4
  tail call fastcc void @free_image_page(ptr noundef %15, i32 noundef 1) #17
  %node.1.i.i.i = load ptr, ptr %node.139.i.i.i, align 4
  %cmp14.not.i.i.i = icmp eq ptr %node.1.i.i.i, %leaves.i.i.i
  br i1 %cmp14.not.i.i.i, label %for.body16.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge, label %for.body16.i.i.i.for.body16.i.i.i_crit_edge

for.body16.i.i.i.for.body16.i.i.i_crit_edge:      ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i.i

for.body16.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge: ; preds = %for.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_zone_bm_rtree.exit.i.i

free_zone_bm_rtree.exit.i.i:                      ; preds = %for.body16.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge, %for.end.i.i.i.free_zone_bm_rtree.exit.i.i_crit_edge
  %zone.0.i.i = load ptr, ptr %zone.016.i.i, align 4
  %cmp.not.i.i9 = icmp eq ptr %zone.0.i.i, %13
  br i1 %cmp.not.i.i9, label %free_zone_bm_rtree.exit.i.i.for.end.i.i10_crit_edge, label %free_zone_bm_rtree.exit.i.i.for.body.i.i8_crit_edge

free_zone_bm_rtree.exit.i.i.for.body.i.i8_crit_edge: ; preds = %free_zone_bm_rtree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i8

free_zone_bm_rtree.exit.i.i.for.end.i.i10_crit_edge: ; preds = %free_zone_bm_rtree.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i.i10

for.end.i.i10:                                    ; preds = %free_zone_bm_rtree.exit.i.i.for.end.i.i10_crit_edge, %if.then.i7.for.end.i.i10_crit_edge
  %p_list.i.i = getelementptr inbounds %struct.memory_bitmap, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %p_list.i.i, align 4
  %tobool.not3.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not3.i.i.i, label %for.end.i.i10.memory_bm_free.exit.i_crit_edge, label %for.end.i.i10.while.body.i.i.i_crit_edge

for.end.i.i10.while.body.i.i.i_crit_edge:         ; preds = %for.end.i.i10
  br label %while.body.i.i.i

for.end.i.i10.memory_bm_free.exit.i_crit_edge:    ; preds = %for.end.i.i10
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %for.end.i.i10.while.body.i.i.i_crit_edge
  %list.addr.04.i.i.i = phi ptr [ %17, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %16, %for.end.i.i10.while.body.i.i.i_crit_edge ]
  %17 = load ptr, ptr %list.addr.04.i.i.i, align 1
  tail call fastcc void @free_image_page(ptr noundef nonnull %list.addr.04.i.i.i, i32 noundef 1) #17
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.memory_bm_free.exit.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.i.i

while.body.i.i.i.memory_bm_free.exit.i_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %memory_bm_free.exit.i

memory_bm_free.exit.i:                            ; preds = %while.body.i.i.i.memory_bm_free.exit.i_crit_edge, %for.end.i.i10.memory_bm_free.exit.i_crit_edge
  store volatile ptr %13, ptr %13, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %prev.i.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %memory_bm_free.exit.i, %memory_bm_recycle.exit.if.end.i_crit_edge
  %18 = load ptr, ptr @buffer, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_image_page(ptr noundef nonnull %18, i32 noundef 1) #17
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.end.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %hibernate_restore_protect_page.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @snapshot_image_loaded(ptr nocapture noundef readonly %handle) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nr_copy_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp ne i32 %0, 0
  %1 = load ptr, ptr @last_highmem_page, align 4
  %tobool.not.i.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 %tobool.not.i.not, i1 false
  br i1 %or.cond, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load i32, ptr %handle, align 4
  %3 = load i32, ptr @nr_meta_pages, align 4
  %add = add i32 %3, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %add)
  %cmp = icmp ugt i32 %2, %add
  %phi.cast = zext i1 %cmp to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i32 [ 0, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @restore_highmem() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @highmem_pblist, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_image_page(i32 noundef 2592, i32 noundef 1) #21
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %pbe.013 = phi ptr [ %33, %while.body.while.body_crit_edge ], [ %0, %if.end.while.body_crit_edge ]
  %1 = load ptr, ptr %pbe.013, align 4
  %orig_page = getelementptr inbounds %struct.highmem_pbe, ptr %pbe.013, i32 0, i32 1
  %2 = load ptr, ptr %orig_page, align 4
  %3 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %3, 512
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 213
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i.i) #17
  %11 = load i32, ptr @pgprot_kernel, align 4
  %or.i16.i = or i32 %11, 512
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i17.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %add.i.i.i19.i = add i32 %14, 1
  store volatile i32 %add.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i20.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i20.i to ptr
  %task.i.i.i.i21.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %task.i.i.i.i21.i, align 8
  %pagefault_disabled.i.i.i.i22.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 213
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i22.i, align 8
  %inc.i.i.i.i23.i = add i32 %18, 1
  store i32 %inc.i.i.i.i23.i, ptr %pagefault_disabled.i.i.i.i22.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !20
  %call.i.i24.i = tail call ptr @__kmap_local_page_prot(ptr noundef %2, i32 noundef %or.i16.i) #17
  tail call void @copy_page(ptr noundef nonnull %call, ptr noundef %call.i.i.i) #17
  tail call void @copy_page(ptr noundef %call.i.i.i, ptr noundef %call.i.i24.i) #17
  tail call void @copy_page(ptr noundef %call.i.i24.i, ptr noundef nonnull %call) #17
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i24.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 213
  %22 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %22, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i1.i25.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i1.i25.i to ptr
  %task.i.i.i26.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %task.i.i.i26.i, align 8
  %pagefault_disabled.i.i.i27.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 213
  %29 = load i32, ptr %pagefault_disabled.i.i.i27.i, align 8
  %dec.i.i.i28.i = add i32 %29, -1
  store i32 %dec.i.i.i28.i, ptr %pagefault_disabled.i.i.i27.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !22
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %and.i.i.i.i29.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i29.i to ptr
  %preempt_count.i.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = load volatile i32, ptr %preempt_count.i.i.i30.i, align 4
  %sub.i.i31.i = add i32 %32, -1
  store volatile i32 %sub.i.i31.i, ptr %preempt_count.i.i.i30.i, align 4
  %next = getelementptr inbounds %struct.highmem_pbe, ptr %pbe.013, i32 0, i32 2
  %33 = load ptr, ptr %next, align 4
  %tobool4.not = icmp eq ptr %33, null
  br i1 %tobool4.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @free_image_page(ptr noundef nonnull %call, i32 noundef 1) #21
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_image_page(ptr noundef %addr, i32 noundef %clear_nosave_free) unnamed_addr #11 align 64 {
entry:
  %addr.i.i23 = alloca ptr, align 4
  %bit.i.i24 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  %cmp = icmp ugt ptr %addr, inttoptr (i32 -1073741825 to ptr)
  %0 = load ptr, ptr @high_memory, align 4
  %cmp1 = icmp ugt ptr %0, %addr
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %land.rhs, label %entry.do.body5_crit_edge, !prof !24

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %addr to i32
  %sub = add i32 %1, 1073741824
  %shr = lshr i32 %sub, 12
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %2, %shr
  %call = tail call i32 @pfn_valid(i32 noundef %add) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %land.rhs.do.body5_crit_edge, label %do.end10, !prof !15

land.rhs.do.body5_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body5

do.body5:                                         ; preds = %land.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #15, !srcloc !25
  unreachable

do.end10:                                         ; preds = %land.rhs
  %3 = load ptr, ptr @mem_map, align 4
  %add.ptr = getelementptr %struct.page, ptr %3, i32 %shr
  %4 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end10.swsusp_unset_page_forbidden.exit_crit_edge, label %if.then.i

do.end10.swsusp_unset_page_forbidden.exit_crit_edge: ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_unset_page_forbidden.exit

if.then.i:                                        ; preds = %do.end10
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %5, %shr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %4, i32 noundef %add.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %memory_bm_clear_bit.exit.i, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = load i32, ptr %bit.i.i, align 4
  %7 = load ptr, ptr %addr.i.i, align 4
  tail call void @_clear_bit(i32 noundef %6, ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  br label %swsusp_unset_page_forbidden.exit

swsusp_unset_page_forbidden.exit:                 ; preds = %memory_bm_clear_bit.exit.i, %do.end10.swsusp_unset_page_forbidden.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear_nosave_free)
  %tobool15.not = icmp eq i32 %clear_nosave_free, 0
  br i1 %tobool15.not, label %swsusp_unset_page_forbidden.exit.if.end17_crit_edge, label %if.then16

swsusp_unset_page_forbidden.exit.if.end17_crit_edge: ; preds = %swsusp_unset_page_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %swsusp_unset_page_forbidden.exit
  %8 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i25 = icmp eq ptr %8, null
  br i1 %tobool.not.i25, label %if.then16.if.end17_crit_edge, label %if.then.i33

if.then16.if.end17_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then.i33:                                      ; preds = %if.then16
  %9 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i26 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i27 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i28 = sub i32 %sub.ptr.lhs.cast.i26, %sub.ptr.rhs.cast.i27
  %sub.ptr.div.i29 = sdiv exact i32 %sub.ptr.sub.i28, 36
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i30 = add i32 %sub.ptr.div.i29, %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i23) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i23, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i24) #15
  store i32 -1, ptr %bit.i.i24, align 4, !annotation !10
  %call.i.i31 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %8, i32 noundef %add.i30, ptr noundef nonnull %addr.i.i23, ptr noundef nonnull %bit.i.i24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call.i.i31, 0
  br i1 %tobool.not.i.i32, label %memory_bm_clear_bit.exit.i35, label %do.body3.i.i34, !prof !11

do.body3.i.i34:                                   ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 837, 0\0A.popsection", ""() #15, !srcloc !13
  unreachable

memory_bm_clear_bit.exit.i35:                     ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #16
  %11 = load i32, ptr %bit.i.i24, align 4
  %12 = load ptr, ptr %addr.i.i23, align 4
  tail call void @_clear_bit(i32 noundef %11, ptr noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i24) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i23) #15
  br label %if.end17

if.end17:                                         ; preds = %memory_bm_clear_bit.exit.i35, %if.then16.if.end17_crit_edge, %swsusp_unset_page_forbidden.exit.if.end17_crit_edge
  tail call void @__free_pages(ptr noundef %add.ptr, i32 noundef 0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @memory_bm_find_bit(ptr noundef %bm, i32 noundef %pfn, ptr nocapture noundef writeonly %addr, ptr nocapture noundef writeonly %bit_nr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2
  %0 = load ptr, ptr %cur, align 4
  %start_pfn = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %start_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pfn)
  %cmp.not = icmp ugt i32 %1, %pfn
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %end_pfn = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %0, i32 0, i32 4
  %2 = load i32, ptr %end_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %pfn)
  %cmp2 = icmp ugt i32 %2, %pfn
  br i1 %cmp2, label %zone_found.thread, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

zone_found.thread:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %node20110 = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 1
  br label %land.lhs.true24

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %curr.0120 = load ptr, ptr %bm, align 4
  %cmp4.not121 = icmp eq ptr %curr.0120, %bm
  br i1 %cmp4.not121, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %curr.0122 = phi ptr [ %curr.0, %for.inc.for.body_crit_edge ], [ %curr.0120, %if.end.for.body_crit_edge ]
  %start_pfn5 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %curr.0122, i32 0, i32 3
  %3 = load i32, ptr %start_pfn5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pfn)
  %cmp6.not = icmp ugt i32 %3, %pfn
  br i1 %cmp6.not, label %for.body.for.inc_crit_edge, label %land.lhs.true7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true7:                                   ; preds = %for.body
  %end_pfn8 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %curr.0122, i32 0, i32 4
  %4 = load i32, ptr %end_pfn8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pfn)
  %cmp9 = icmp ugt i32 %4, %pfn
  br i1 %cmp9, label %for.end, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %curr.0 = load ptr, ptr %curr.0122, align 4
  %cmp4.not = icmp eq ptr %curr.0, %bm
  br i1 %cmp4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true7
  %tobool.not = icmp eq ptr %curr.0122, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %zone_found

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

zone_found:                                       ; preds = %for.end
  %node20 = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 1
  %cmp23 = icmp eq ptr %curr.0122, %0
  br i1 %cmp23, label %zone_found.land.lhs.true24_crit_edge, label %zone_found.if.end29_crit_edge

zone_found.land.lhs.true24_crit_edge:             ; preds = %zone_found
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true24

zone_found.if.end29_crit_edge:                    ; preds = %zone_found
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = sub i32 %pfn, %3
  br label %if.end29

land.lhs.true24:                                  ; preds = %zone_found.land.lhs.true24_crit_edge, %zone_found.thread
  %node20117 = phi ptr [ %node20110, %zone_found.thread ], [ %node20, %zone_found.land.lhs.true24_crit_edge ]
  %5 = load ptr, ptr %node20117, align 4
  %sub = sub i32 %pfn, %1
  %and = and i32 %sub, -32768
  %node_pfn = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 2
  %6 = load i32, ptr %node_pfn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp27 = icmp eq i32 %and, %6
  br i1 %cmp27, label %land.lhs.true24.node_found_crit_edge, label %land.lhs.true24.if.end29_crit_edge

land.lhs.true24.if.end29_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true24.node_found_crit_edge:             ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #16
  br label %node_found

if.end29:                                         ; preds = %land.lhs.true24.if.end29_crit_edge, %zone_found.if.end29_crit_edge
  %sub31.pre-phi = phi i32 [ %.pre, %zone_found.if.end29_crit_edge ], [ %sub, %land.lhs.true24.if.end29_crit_edge ]
  %node20116 = phi ptr [ %node20, %zone_found.if.end29_crit_edge ], [ %node20117, %land.lhs.true24.if.end29_crit_edge ]
  %zone.1113 = phi ptr [ %curr.0122, %zone_found.if.end29_crit_edge ], [ %0, %land.lhs.true24.if.end29_crit_edge ]
  %rtree = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.1113, i32 0, i32 5
  %7 = load ptr, ptr %rtree, align 4
  %shr = lshr i32 %sub31.pre-phi, 15
  %levels = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.1113, i32 0, i32 6
  %8 = load i32, ptr %levels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp33123 = icmp sgt i32 %8, 0
  br i1 %cmp33123, label %if.end29.for.body34_crit_edge, label %if.end29.node_found_crit_edge

if.end29.node_found_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %node_found

if.end29.for.body34_crit_edge:                    ; preds = %if.end29
  br label %for.body34

for.body34:                                       ; preds = %do.end49.for.body34_crit_edge, %if.end29.for.body34_crit_edge
  %node.0125 = phi ptr [ %12, %do.end49.for.body34_crit_edge ], [ %7, %if.end29.for.body34_crit_edge ]
  %i.0124 = phi i32 [ %dec, %do.end49.for.body34_crit_edge ], [ %8, %if.end29.for.body34_crit_edge ]
  %9 = mul i32 %i.0124, 10
  %mul = add i32 %9, -10
  %shr36 = lshr i32 %shr, %mul
  %and37 = and i32 %shr36, 1023
  %data = getelementptr inbounds %struct.rtree_node, ptr %node.0125, i32 0, i32 1
  %10 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %and37
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp38 = icmp eq i32 %11, 0
  br i1 %cmp38, label %do.body43, label %do.end49, !prof !15

do.body43:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 789, 0\0A.popsection", ""() #15, !srcloc !26
  unreachable

do.end49:                                         ; preds = %for.body34
  %12 = inttoptr i32 %11 to ptr
  %dec = add nsw i32 %i.0124, -1
  %cmp33 = icmp sgt i32 %i.0124, 1
  br i1 %cmp33, label %do.end49.for.body34_crit_edge, label %node_found.loopexit

do.end49.for.body34_crit_edge:                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34

node_found.loopexit:                              ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  %13 = inttoptr i32 %11 to ptr
  br label %node_found

node_found:                                       ; preds = %node_found.loopexit, %if.end29.node_found_crit_edge, %land.lhs.true24.node_found_crit_edge
  %node20115 = phi ptr [ %node20117, %land.lhs.true24.node_found_crit_edge ], [ %node20116, %if.end29.node_found_crit_edge ], [ %node20116, %node_found.loopexit ]
  %zone.1112 = phi ptr [ %0, %land.lhs.true24.node_found_crit_edge ], [ %zone.1113, %if.end29.node_found_crit_edge ], [ %zone.1113, %node_found.loopexit ]
  %node.1 = phi ptr [ %5, %land.lhs.true24.node_found_crit_edge ], [ %7, %if.end29.node_found_crit_edge ], [ %13, %node_found.loopexit ]
  store ptr %zone.1112, ptr %cur, align 4
  store ptr %node.1, ptr %node20115, align 4
  %start_pfn58 = getelementptr inbounds %struct.mem_zone_bm_rtree, ptr %zone.1112, i32 0, i32 3
  %14 = load i32, ptr %start_pfn58, align 4
  %sub59 = sub i32 %pfn, %14
  %and60 = and i32 %sub59, -32768
  %node_pfn62 = getelementptr inbounds %struct.memory_bitmap, ptr %bm, i32 0, i32 2, i32 2
  store i32 %and60, ptr %node_pfn62, align 4
  %data63 = getelementptr inbounds %struct.rtree_node, ptr %node.1, i32 0, i32 1
  %15 = load ptr, ptr %data63, align 4
  store ptr %15, ptr %addr, align 4
  %16 = load i32, ptr %start_pfn58, align 4
  %sub65 = sub i32 %pfn, %16
  %and66 = and i32 %sub65, 32767
  store i32 %and66, ptr %bit_nr, align 4
  br label %cleanup

cleanup:                                          ; preds = %node_found, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %node_found ], [ -14, %for.end.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_rtree_node(i32 noundef %gfp_mask, i32 noundef %safe_needed, ptr nocapture noundef %ca, ptr noundef %list) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %used_space.i = getelementptr inbounds %struct.chain_allocator, ptr %ca, i32 0, i32 1
  %0 = load i32, ptr %used_space.i, align 4
  %1 = add i32 %0, -4081
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp.i = icmp ult i32 %1, 12
  br i1 %cmp.i, label %if.then.i, label %entry.if.end7_crit_edge.i

entry.if.end7_crit_edge.i:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %.pre.i = load ptr, ptr %ca, align 4
  br label %chain_alloc.exit

if.then.i:                                        ; preds = %entry
  %safe_needed.i = getelementptr inbounds %struct.chain_allocator, ptr %ca, i32 0, i32 3
  %2 = load i32, ptr %safe_needed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  %3 = load ptr, ptr @safe_pages_list, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %cond.true.i.cond.end.i_crit_edge, label %cond.end.thread.i

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.end.thread.i:                                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = load ptr, ptr %3, align 1
  store ptr %4, ptr @safe_pages_list, align 4
  %call.i.i = tail call ptr @__memset(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 4096) #17
  br label %if.end.i

cond.end.i:                                       ; preds = %cond.true.i.cond.end.i_crit_edge, %if.then.i.cond.end.i_crit_edge
  %.sink16 = phi i32 [ 1, %cond.true.i.cond.end.i_crit_edge ], [ 0, %if.then.i.cond.end.i_crit_edge ]
  %gfp_mask1.i = getelementptr inbounds %struct.chain_allocator, ptr %ca, i32 0, i32 2
  %5 = load i32, ptr %gfp_mask1.i, align 4
  %call2.i = tail call fastcc ptr @get_image_page(i32 noundef %5, i32 noundef %.sink16) #17
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %cond.end.i.cleanup_crit_edge, label %cond.end.i.if.end.i_crit_edge

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %cond.end.i.if.end.i_crit_edge, %cond.end.thread.i
  %cond27.i = phi ptr [ %3, %cond.end.thread.i ], [ %call2.i, %cond.end.i.if.end.i_crit_edge ]
  %6 = load ptr, ptr %ca, align 4
  store ptr %6, ptr %cond27.i, align 1
  store ptr %cond27.i, ptr %ca, align 4
  br label %chain_alloc.exit

chain_alloc.exit:                                 ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %7 = phi i32 [ %0, %entry.if.end7_crit_edge.i ], [ 0, %if.end.i ]
  %8 = phi ptr [ %.pre.i, %entry.if.end7_crit_edge.i ], [ %cond27.i, %if.end.i ]
  %data.i = getelementptr inbounds %struct.linked_page, ptr %8, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %7
  %add.i = add i32 %7, 12
  store i32 %add.i, ptr %used_space.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %chain_alloc.exit.cleanup_crit_edge, label %if.end

chain_alloc.exit.cleanup_crit_edge:               ; preds = %chain_alloc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %chain_alloc.exit
  %call1 = tail call fastcc ptr @get_image_page(i32 noundef %gfp_mask, i32 noundef %safe_needed) #21
  %data = getelementptr inbounds %struct.rtree_node, ptr %add.ptr.i, i32 0, i32 1
  store ptr %call1, ptr %data, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i11 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %add.ptr.i, ptr noundef %9, ptr noundef %list) #17
  br i1 %call.i.i11, label %if.end.i.i12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i12:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %add.ptr.i, ptr %prev.i, align 4
  store ptr %list, ptr %add.ptr.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %add.ptr.i, i32 0, i32 1
  store ptr %9, ptr %prev3.i.i, align 4
  store volatile ptr %add.ptr.i, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %chain_alloc.exit.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %chain_alloc.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %add.ptr.i, %if.end5.cleanup_crit_edge ], [ %add.ptr.i, %if.end.i.i12 ], [ null, %cond.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kernel_poison_pages(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_rw(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_free_pages(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @saveable_highmem_page(ptr noundef readnone %zone, i32 noundef %pfn) unnamed_addr #3 align 64 {
entry:
  %addr.i.i52 = alloca ptr, align 4
  %bit.i.i53 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pfn_valid(i32 noundef %pfn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pfn_valid(i32 noundef %pfn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %0 = load ptr, ptr @mem_map, align 4
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn, %1
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  %tobool5.not76 = icmp eq ptr %add.ptr, null
  %tobool5.not = select i1 %tobool2.not, i1 true, i1 %tobool5.not76
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i.not.i.i = icmp eq i32 %2, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !15

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.44) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #15, !srcloc !27
  unreachable

page_zone.exit:                                   ; preds = %lor.lhs.false
  %shr.i.i50 = lshr i32 %2, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i50
  %cmp.not = icmp eq ptr %arrayidx.i, %zone
  br i1 %cmp.not, label %do.body, label %page_zone.exit.cleanup_crit_edge

page_zone.exit.cleanup_crit_edge:                 ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i50)
  %cmp.i51 = icmp eq i32 %shr.i.i50, 2
  br i1 %cmp.i51, label %do.body.do.end22_crit_edge, label %is_highmem_idx.exit

do.body.do.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

is_highmem_idx.exit:                              ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i50)
  %cmp1.i = icmp ne i32 %shr.i.i50, 3
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp ne i32 %3, 2
  %4 = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  br i1 %4, label %do.body16, label %is_highmem_idx.exit.do.end22_crit_edge, !prof !15

is_highmem_idx.exit.do.end22_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end22

do.body16:                                        ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1264, 0\0A.popsection", ""() #15, !srcloc !28
  unreachable

do.end22:                                         ; preds = %is_highmem_idx.exit.do.end22_crit_edge, %do.body.do.end22_crit_edge
  %5 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end22.lor.lhs.false25_crit_edge, label %cond.true.i

do.end22.lor.lhs.false25_crit_edge:               ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false25

cond.true.i:                                      ; preds = %do.end22
  %add.ptr.idx = mul i32 %sub, 36
  %sub.ptr.div.i = sdiv exact i32 %add.ptr.idx, 36
  %add.i = add i32 %sub.ptr.div.i, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %5, i32 noundef %add.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %swsusp_page_is_forbidden.exit, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_forbidden.exit:                    ; preds = %cond.true.i
  %6 = load i32, ptr %bit.i.i, align 4
  %7 = load ptr, ptr %addr.i.i, align 4
  %div3.i.i.i = lshr i32 %6, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %7, i32 %div3.i.i.i
  %8 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %6, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  %9 = shl nuw i32 1, %and.i.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not = icmp eq i32 %10, 0
  br i1 %tobool24.not, label %swsusp_page_is_forbidden.exit.lor.lhs.false25_crit_edge, label %swsusp_page_is_forbidden.exit.cleanup_crit_edge

swsusp_page_is_forbidden.exit.cleanup_crit_edge:  ; preds = %swsusp_page_is_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

swsusp_page_is_forbidden.exit.lor.lhs.false25_crit_edge: ; preds = %swsusp_page_is_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %swsusp_page_is_forbidden.exit.lor.lhs.false25_crit_edge, %do.end22.lor.lhs.false25_crit_edge
  %11 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i54 = icmp eq ptr %11, null
  br i1 %tobool.not.i54, label %lor.lhs.false25.if.end29_crit_edge, label %cond.true.i62

lor.lhs.false25.if.end29_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

cond.true.i62:                                    ; preds = %lor.lhs.false25
  %12 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i55 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i56 = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i57 = sub i32 %sub.ptr.lhs.cast.i55, %sub.ptr.rhs.cast.i56
  %sub.ptr.div.i58 = sdiv exact i32 %sub.ptr.sub.i57, 36
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i59 = add i32 %sub.ptr.div.i58, %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i52) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i52, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i53) #15
  store i32 -1, ptr %bit.i.i53, align 4, !annotation !10
  %call.i.i60 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %11, i32 noundef %add.i59, ptr noundef nonnull %addr.i.i52, ptr noundef nonnull %bit.i.i53) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %tobool.not.i.i61 = icmp eq i32 %call.i.i60, 0
  br i1 %tobool.not.i.i61, label %swsusp_page_is_free.exit, label %do.body3.i.i63, !prof !11

do.body3.i.i63:                                   ; preds = %cond.true.i62
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit:                         ; preds = %cond.true.i62
  %14 = load i32, ptr %bit.i.i53, align 4
  %15 = load ptr, ptr %addr.i.i52, align 4
  %div3.i.i.i64 = lshr i32 %14, 5
  %arrayidx.i.i.i65 = getelementptr i32, ptr %15, i32 %div3.i.i.i64
  %16 = load volatile i32, ptr %arrayidx.i.i.i65, align 4
  %and.i.i.i66 = and i32 %14, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i53) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i52) #15
  %17 = shl nuw i32 1, %and.i.i.i66
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool27.not = icmp eq i32 %18, 0
  br i1 %tobool27.not, label %swsusp_page_is_free.exit.if.end29_crit_edge, label %swsusp_page_is_free.exit.cleanup_crit_edge

swsusp_page_is_free.exit.cleanup_crit_edge:       ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

swsusp_page_is_free.exit.if.end29_crit_edge:      ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %swsusp_page_is_free.exit.if.end29_crit_edge, %lor.lhs.false25.if.end29_crit_edge
  %19 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageReserved.exit, !prof !15

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.45) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

PageReserved.exit:                                ; preds = %if.end29
  %20 = load volatile i32, ptr %add.ptr, align 4
  %21 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31.not = icmp eq i32 %21, 0
  br i1 %tobool31.not, label %lor.lhs.false32, label %PageReserved.exit.cleanup_crit_edge

PageReserved.exit.cleanup_crit_edge:              ; preds = %PageReserved.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false32:                                  ; preds = %PageReserved.exit
  call void @__sanitizer_cov_trace_pc() #16
  %22 = getelementptr %struct.page, ptr %0, i32 %sub, i32 2
  %23 = load i32, ptr %22, align 4
  %and.i = and i32 %23, -268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  %spec.select = select i1 %cmp.i.not, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false32, %PageReserved.exit.cleanup_crit_edge, %swsusp_page_is_free.exit.cleanup_crit_edge, %swsusp_page_is_forbidden.exit.cleanup_crit_edge, %page_zone.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %page_zone.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %swsusp_page_is_free.exit.cleanup_crit_edge ], [ null, %swsusp_page_is_forbidden.exit.cleanup_crit_edge ], [ null, %PageReserved.exit.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false32 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @saveable_page(ptr noundef readnone %zone, i32 noundef %pfn) unnamed_addr #3 align 64 {
entry:
  %addr.i.i58 = alloca ptr, align 4
  %bit.i.i59 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pfn_valid(i32 noundef %pfn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pfn_valid(i32 noundef %pfn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %0 = load ptr, ptr @mem_map, align 4
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %pfn, %1
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub
  %tobool5.not82 = icmp eq ptr %add.ptr, null
  %tobool5.not = select i1 %tobool2.not, i1 true, i1 %tobool5.not82
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i.not.i.i = icmp eq i32 %2, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !15

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.44) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #15, !srcloc !27
  unreachable

page_zone.exit:                                   ; preds = %lor.lhs.false
  %shr.i.i56 = lshr i32 %2, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i56
  %cmp.not = icmp eq ptr %arrayidx.i, %zone
  br i1 %cmp.not, label %do.body, label %page_zone.exit.cleanup_crit_edge

page_zone.exit.cleanup_crit_edge:                 ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i.i56)
  %cmp.i57 = icmp eq i32 %shr.i.i56, 2
  br i1 %cmp.i57, label %do.body.do.body15_crit_edge, label %is_highmem_idx.exit

do.body.do.body15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15

is_highmem_idx.exit:                              ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i56)
  %cmp1.i = icmp ne i32 %shr.i.i56, 3
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i = icmp ne i32 %3, 2
  %4 = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  br i1 %4, label %do.end21, label %is_highmem_idx.exit.do.body15_crit_edge, !prof !11

is_highmem_idx.exit.do.body15_crit_edge:          ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body15

do.body15:                                        ; preds = %is_highmem_idx.exit.do.body15_crit_edge, %do.body.do.body15_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1328, 0\0A.popsection", ""() #15, !srcloc !30
  unreachable

do.end21:                                         ; preds = %is_highmem_idx.exit
  %5 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end21.lor.lhs.false24_crit_edge, label %cond.true.i

do.end21.lor.lhs.false24_crit_edge:               ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false24

cond.true.i:                                      ; preds = %do.end21
  %add.ptr.idx = mul i32 %sub, 36
  %sub.ptr.div.i = sdiv exact i32 %add.ptr.idx, 36
  %add.i = add i32 %sub.ptr.div.i, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %5, i32 noundef %add.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %swsusp_page_is_forbidden.exit, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_forbidden.exit:                    ; preds = %cond.true.i
  %6 = load i32, ptr %bit.i.i, align 4
  %7 = load ptr, ptr %addr.i.i, align 4
  %div3.i.i.i = lshr i32 %6, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %7, i32 %div3.i.i.i
  %8 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %6, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  %9 = shl nuw i32 1, %and.i.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %swsusp_page_is_forbidden.exit.lor.lhs.false24_crit_edge, label %swsusp_page_is_forbidden.exit.cleanup_crit_edge

swsusp_page_is_forbidden.exit.cleanup_crit_edge:  ; preds = %swsusp_page_is_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

swsusp_page_is_forbidden.exit.lor.lhs.false24_crit_edge: ; preds = %swsusp_page_is_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %swsusp_page_is_forbidden.exit.lor.lhs.false24_crit_edge, %do.end21.lor.lhs.false24_crit_edge
  %11 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i60 = icmp eq ptr %11, null
  br i1 %tobool.not.i60, label %lor.lhs.false24.if.end28_crit_edge, label %cond.true.i68

lor.lhs.false24.if.end28_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

cond.true.i68:                                    ; preds = %lor.lhs.false24
  %12 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i61 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i62 = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i63 = sub i32 %sub.ptr.lhs.cast.i61, %sub.ptr.rhs.cast.i62
  %sub.ptr.div.i64 = sdiv exact i32 %sub.ptr.sub.i63, 36
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i65 = add i32 %sub.ptr.div.i64, %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i58) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i58, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i59) #15
  store i32 -1, ptr %bit.i.i59, align 4, !annotation !10
  %call.i.i66 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %11, i32 noundef %add.i65, ptr noundef nonnull %addr.i.i58, ptr noundef nonnull %bit.i.i59) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %tobool.not.i.i67 = icmp eq i32 %call.i.i66, 0
  br i1 %tobool.not.i.i67, label %swsusp_page_is_free.exit, label %do.body3.i.i69, !prof !11

do.body3.i.i69:                                   ; preds = %cond.true.i68
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 856, 0\0A.popsection", ""() #15, !srcloc !14
  unreachable

swsusp_page_is_free.exit:                         ; preds = %cond.true.i68
  %14 = load i32, ptr %bit.i.i59, align 4
  %15 = load ptr, ptr %addr.i.i58, align 4
  %div3.i.i.i70 = lshr i32 %14, 5
  %arrayidx.i.i.i71 = getelementptr i32, ptr %15, i32 %div3.i.i.i70
  %16 = load volatile i32, ptr %arrayidx.i.i.i71, align 4
  %and.i.i.i72 = and i32 %14, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i59) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i58) #15
  %17 = shl nuw i32 1, %and.i.i.i72
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %swsusp_page_is_free.exit.if.end28_crit_edge, label %swsusp_page_is_free.exit.cleanup_crit_edge

swsusp_page_is_free.exit.cleanup_crit_edge:       ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

swsusp_page_is_free.exit.if.end28_crit_edge:      ; preds = %swsusp_page_is_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28:                                         ; preds = %swsusp_page_is_free.exit.if.end28_crit_edge, %lor.lhs.false24.if.end28_crit_edge
  %19 = getelementptr %struct.page, ptr %0, i32 %sub, i32 2
  %20 = load i32, ptr %19, align 4
  %and.i = and i32 %20, -268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %21 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageReserved.exit, !prof !15

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dump_page(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.45) #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

PageReserved.exit:                                ; preds = %if.end32
  %22 = load volatile i32, ptr %add.ptr, align 4
  %23 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  br i1 %tobool34.not, label %PageReserved.exit.if.end40_crit_edge, label %land.lhs.true

PageReserved.exit.if.end40_crit_edge:             ; preds = %PageReserved.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

land.lhs.true:                                    ; preds = %PageReserved.exit
  %call37 = tail call i32 @pfn_is_nosave(i32 noundef %pfn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true.if.end40_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %PageReserved.exit.if.end40_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %swsusp_page_is_free.exit.cleanup_crit_edge, %swsusp_page_is_forbidden.exit.cleanup_crit_edge, %page_zone.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end40 ], [ null, %entry.cleanup_crit_edge ], [ null, %page_zone.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %swsusp_page_is_free.exit.cleanup_crit_edge ], [ null, %swsusp_page_is_forbidden.exit.cleanup_crit_edge ], [ null, %if.end28.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_is_nosave(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @preallocate_image_pages(i32 noundef %nr_pages, i32 noundef %mask) unnamed_addr #3 align 64 {
entry:
  %addr.i = alloca ptr, align 4
  %bit.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %cmp.not19 = icmp eq i32 %nr_pages, 0
  br i1 %cmp.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %nr_alloc.021 = phi i32 [ %inc7, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %nr_pages.addr.020 = phi i32 [ %dec, %cleanup.while.body_crit_edge ], [ %nr_pages, %entry.while.body_crit_edge ]
  %call = tail call fastcc ptr @alloc_image_page(i32 noundef %mask) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %0 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %1 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #15
  store i32 -1, ptr %bit.i, align 4, !annotation !10
  %call.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull @copy_bm, i32 noundef %add, ptr noundef nonnull %addr.i, ptr noundef nonnull %bit.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %memory_bm_set_bit.exit, label %do.body3.i, !prof !11

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit:                           ; preds = %if.end
  %2 = load i32, ptr %bit.i, align 4
  %3 = load ptr, ptr %addr.i, align 4
  tail call void @_set_bit(i32 noundef %2, ptr noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #15
  %4 = load i32, ptr %call, align 4
  %shr.i = lshr i32 %4, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %cmp.i = icmp eq i32 %shr.i, 2
  br i1 %cmp.i, label %memory_bm_set_bit.exit.cleanup_crit_edge, label %is_highmem_idx.exit

memory_bm_set_bit.exit.cleanup_crit_edge:         ; preds = %memory_bm_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_highmem_idx.exit:                              ; preds = %memory_bm_set_bit.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i)
  %cmp1.i = icmp ne i32 %shr.i, 3
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i = icmp ne i32 %5, 2
  %6 = select i1 %cmp1.i, i1 true, i1 %cmp2.i
  %spec.select = select i1 %6, ptr @alloc_normal, ptr @alloc_highmem
  br label %cleanup

cleanup:                                          ; preds = %is_highmem_idx.exit, %memory_bm_set_bit.exit.cleanup_crit_edge
  %alloc_highmem.sink23 = phi ptr [ @alloc_highmem, %memory_bm_set_bit.exit.cleanup_crit_edge ], [ %spec.select, %is_highmem_idx.exit ]
  %7 = load i32, ptr %alloc_highmem.sink23, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %alloc_highmem.sink23, align 4
  %dec = add i32 %nr_pages.addr.020, -1
  %inc7 = add nuw i32 %nr_alloc.021, 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %nr_alloc.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %nr_alloc.021, %while.body.while.end_crit_edge ], [ %nr_pages, %cleanup.while.end_crit_edge ]
  ret i32 %nr_alloc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_image_page(i32 noundef %gfp_mask) unnamed_addr #3 align 64 {
entry:
  %addr.i.i4 = alloca ptr, align 4
  %bit.i.i5 = alloca i32, align 4
  %addr.i.i = alloca ptr, align 4
  %bit.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #17
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @forbidden_pages_map, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.swsusp_set_page_forbidden.exit_crit_edge, label %if.then.i

if.then.swsusp_set_page_forbidden.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %swsusp_set_page_forbidden.exit

if.then.i:                                        ; preds = %if.then
  %1 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call38.i.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %2 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %sub.ptr.div.i, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i) #15
  store i32 -1, ptr %bit.i.i, align 4, !annotation !10
  %call.i.i = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %0, i32 noundef %add.i, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %bit.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %memory_bm_set_bit.exit.i, label %do.body3.i.i, !prof !11

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr %bit.i.i, align 4
  %4 = load ptr, ptr %addr.i.i, align 4
  tail call void @_set_bit(i32 noundef %3, ptr noundef %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #15
  br label %swsusp_set_page_forbidden.exit

swsusp_set_page_forbidden.exit:                   ; preds = %memory_bm_set_bit.exit.i, %if.then.swsusp_set_page_forbidden.exit_crit_edge
  %5 = load ptr, ptr @free_pages_map, align 4
  %tobool.not.i6 = icmp eq ptr %5, null
  br i1 %tobool.not.i6, label %swsusp_set_page_forbidden.exit.if.end_crit_edge, label %if.then.i14

swsusp_set_page_forbidden.exit.if.end_crit_edge:  ; preds = %swsusp_set_page_forbidden.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i14:                                      ; preds = %swsusp_set_page_forbidden.exit
  %6 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i7 = ptrtoint ptr %call38.i.i.i to i32
  %sub.ptr.rhs.cast.i8 = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i9 = sub i32 %sub.ptr.lhs.cast.i7, %sub.ptr.rhs.cast.i8
  %sub.ptr.div.i10 = sdiv exact i32 %sub.ptr.sub.i9, 36
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i11 = add i32 %sub.ptr.div.i10, %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i4) #15
  store ptr inttoptr (i32 -1 to ptr), ptr %addr.i.i4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i.i5) #15
  store i32 -1, ptr %bit.i.i5, align 4, !annotation !10
  %call.i.i12 = call fastcc i32 @memory_bm_find_bit(ptr noundef nonnull %5, i32 noundef %add.i11, ptr noundef nonnull %addr.i.i4, ptr noundef nonnull %bit.i.i5) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool.not.i.i13 = icmp eq i32 %call.i.i12, 0
  br i1 %tobool.not.i.i13, label %memory_bm_set_bit.exit.i16, label %do.body3.i.i15, !prof !11

do.body3.i.i15:                                   ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/snapshot.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 813, 0\0A.popsection", ""() #15, !srcloc !12
  unreachable

memory_bm_set_bit.exit.i16:                       ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #16
  %8 = load i32, ptr %bit.i.i5, align 4
  %9 = load ptr, ptr %addr.i.i4, align 4
  tail call void @_set_bit(i32 noundef %8, ptr noundef %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i.i5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i4) #15
  br label %if.end

if.end:                                           ; preds = %memory_bm_set_bit.exit.i16, %swsusp_set_page_forbidden.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call38.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind "no-builtins" }
attributes #18 = { cold nobuiltin noreturn nounwind "no-builtins" }
attributes #19 = { cold nobuiltin nounwind "no-builtins" }
attributes #20 = { nobuiltin nounwind allocsize(2) "no-builtins" }
attributes #21 = { nobuiltin "no-builtins" }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155654579, i64 2155655067, i64 2155654616, i64 2155654672, i64 2155654706, i64 2155654730, i64 2155654771, i64 2155654792, i64 2155654820, i64 2155654854}
!13 = !{i64 2155656309, i64 2155660858, i64 2155656346, i64 2155656402, i64 2155656436, i64 2155656460, i64 2155656501, i64 2155656522, i64 2155656550, i64 2155656584}
!14 = !{i64 2155663589, i64 2155664077, i64 2155663626, i64 2155663682, i64 2155663716, i64 2155663740, i64 2155663781, i64 2155663802, i64 2155663830, i64 2155663864}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2155692409, i64 2155692898, i64 2155692446, i64 2155692502, i64 2155692536, i64 2155692560, i64 2155692601, i64 2155692622, i64 2155692650, i64 2155692684}
!17 = !{i64 2149026133, i64 2149026138, i64 2149026151, i64 2149026195, i64 2149026229, i64 2149026250}
!18 = !{i8 0, i8 2}
!19 = !{i64 2154341381}
!20 = !{i64 2153039401}
!21 = !{i64 2153039608}
!22 = !{i64 2154344152}
!23 = !{!"branch_weights", i32 2002, i32 2000}
!24 = !{!"branch_weights", i32 4000000, i32 4001}
!25 = !{i64 2155618450, i64 2155618938, i64 2155618487, i64 2155618543, i64 2155618577, i64 2155618601, i64 2155618642, i64 2155618663, i64 2155618691, i64 2155618725}
!26 = !{i64 2155652901, i64 2155653389, i64 2155652938, i64 2155652994, i64 2155653028, i64 2155653052, i64 2155653093, i64 2155653114, i64 2155653142, i64 2155653176}
!27 = !{i64 2153416692, i64 2153417176, i64 2153416729, i64 2153416785, i64 2153416819, i64 2153416843, i64 2153416884, i64 2153416905, i64 2153416933, i64 2153416967}
!28 = !{i64 2155703458, i64 2155703947, i64 2155703495, i64 2155703551, i64 2155703585, i64 2155703609, i64 2155703650, i64 2155703671, i64 2155703699, i64 2155703733}
!29 = !{i64 2150627045, i64 2150627536, i64 2150627082, i64 2150627138, i64 2150627172, i64 2150627196, i64 2150627237, i64 2150627258, i64 2150627286, i64 2150627320}
!30 = !{i64 2155705627, i64 2155706116, i64 2155705664, i64 2155705720, i64 2155705754, i64 2155705778, i64 2155705819, i64 2155705840, i64 2155705868, i64 2155705902}
