; ModuleID = '/llk/IR_all_yes/mm/migrate.c_pt.bc'
source_filename = "../mm/migrate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+folio_migrate_mapping\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_migrate_mapping\09\09\09\09"
module asm "\09.long\09__crc_folio_migrate_mapping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_migrate_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_migrate_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_folio_migrate_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_migrate_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_migrate_flags\09\09\09\09"
module asm "\09.long\09__crc_folio_migrate_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_migrate_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_migrate_flags\22\09\09\09\09\09"
module asm "__kstrtabns_folio_migrate_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+folio_migrate_copy\22, \22a\22\09"
module asm "\09.weak\09__crc_folio_migrate_copy\09\09\09\09"
module asm "\09.long\09__crc_folio_migrate_copy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_migrate_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_migrate_copy\22\09\09\09\09\09"
module asm "__kstrtabns_folio_migrate_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+migrate_page\22, \22a\22\09"
module asm "\09.weak\09__crc_migrate_page\09\09\09\09"
module asm "\09.long\09__crc_migrate_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+buffer_migrate_page\22, \22a\22\09"
module asm "\09.weak\09__crc_buffer_migrate_page\09\09\09\09"
module asm "\09.long\09__crc_buffer_migrate_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_buffer_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22buffer_migrate_page\22\09\09\09\09\09"
module asm "__kstrtabns_buffer_migrate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key_false = type { %struct.static_key }
%struct.cpumask = type { [1 x i32] }
%struct.vm_event_state = type { [76 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_migrate_pages = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_mm_migrate_pages_start = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.page = type { i32, %union.anon.7, %union.anon.80, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.80 = type { %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmap_walk_control = type { ptr, ptr, ptr, ptr, ptr }
%struct.page_vma_mapped_walk = type { ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.16, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.107 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.15 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.70 }
%struct.percpu_ref = type { i32, ptr }
%union.anon.70 = type { %struct.list_head }
%struct.mem_cgroup = type { %struct.cgroup_subsys_state, %struct.mem_cgroup_id, %struct.page_counter, %union.anon.69, %struct.page_counter, %struct.page_counter, %struct.work_struct, i32, %struct.vmpressure, i8, i8, i32, i32, i32, %struct.cgroup_file, %struct.cgroup_file, %struct.cgroup_file, %struct.mutex, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds, %struct.list_head, i32, %struct.spinlock, i32, [20 x i8], %struct.memcg_padding, %struct.memcg_vmstats, [9 x %struct.atomic_t], [9 x %struct.atomic_t], i32, i8, i32, i32, ptr, %struct.list_head, [92 x i8], %struct.memcg_padding, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.wb_domain, [4 x %struct.memcg_cgwb_frn], %struct.list_head, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.mem_cgroup_id = type { i32, %struct.refcount_struct }
%union.anon.69 = type { %struct.page_counter }
%struct.page_counter = type { %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.vmpressure = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mem_cgroup_thresholds = type { ptr, ptr }
%struct.memcg_vmstats = type { [44 x i32], [76 x i32], [44 x i32], [76 x i32] }
%struct.memcg_padding = type { [0 x i8] }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.memcg_cgwb_frn = type { i64, i32, i64, %struct.wb_completion }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.67 = type { %struct.work_struct }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.migration_target_control = type { i32, ptr, i32 }
%struct.demotion_nodes = type { i16, [0 x i16] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@__tpstrtab_mm_migrate_pages = internal constant [17 x i8] c"mm_migrate_pages\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_migrate_pages = dso_local global %struct.static_call_key { ptr @__traceiter_mm_migrate_pages }, align 4
@__tracepoint_mm_migrate_pages = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_migrate_pages, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_migrate_pages, ptr null, ptr @__traceiter_mm_migrate_pages, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_migrate_pages = internal constant ptr @__tracepoint_mm_migrate_pages, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_migrate_pages_start = internal constant [23 x i8] c"mm_migrate_pages_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_migrate_pages_start = dso_local global %struct.static_call_key { ptr @__traceiter_mm_migrate_pages_start }, align 4
@__tracepoint_mm_migrate_pages_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_mm_migrate_pages_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_mm_migrate_pages_start, ptr null, ptr @__traceiter_mm_migrate_pages_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_migrate_pages_start = internal constant ptr @__tracepoint_mm_migrate_pages_start, section "__tracepoints_ptrs", align 4
@str__migrate__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"migrate\00", [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIGRATE_ASYNC\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MIGRATE_ASYNC = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MIGRATE_ASYNC = internal global ptr @__TRACE_SYSTEM_MIGRATE_ASYNC, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MIGRATE_SYNC_LIGHT\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MIGRATE_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MIGRATE_SYNC\00", [19 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MIGRATE_SYNC = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MIGRATE_SYNC = internal global ptr @__TRACE_SYSTEM_MIGRATE_SYNC, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MR_COMPACTION\00", [18 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_COMPACTION = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.3, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_COMPACTION = internal global ptr @__TRACE_SYSTEM_MR_COMPACTION, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MR_MEMORY_FAILURE\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_MEMORY_FAILURE = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.4, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_MEMORY_FAILURE = internal global ptr @__TRACE_SYSTEM_MR_MEMORY_FAILURE, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MR_MEMORY_HOTPLUG\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_MEMORY_HOTPLUG = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.5, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_MEMORY_HOTPLUG = internal global ptr @__TRACE_SYSTEM_MR_MEMORY_HOTPLUG, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MR_SYSCALL\00", [21 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_SYSCALL = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_SYSCALL = internal global ptr @__TRACE_SYSTEM_MR_SYSCALL, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MR_MEMPOLICY_MBIND\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_MEMPOLICY_MBIND = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.7, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_MEMPOLICY_MBIND = internal global ptr @__TRACE_SYSTEM_MR_MEMPOLICY_MBIND, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MR_NUMA_MISPLACED\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_NUMA_MISPLACED = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.8, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_NUMA_MISPLACED = internal global ptr @__TRACE_SYSTEM_MR_NUMA_MISPLACED, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MR_CONTIG_RANGE\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_CONTIG_RANGE = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.9, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_CONTIG_RANGE = internal global ptr @__TRACE_SYSTEM_MR_CONTIG_RANGE, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MR_LONGTERM_PIN\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_LONGTERM_PIN = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.10, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_LONGTERM_PIN = internal global ptr @__TRACE_SYSTEM_MR_LONGTERM_PIN, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MR_DEMOTION\00", [20 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_MR_DEMOTION = internal global %struct.trace_eval_map { ptr @str__migrate__trace_system_name, ptr @.str.11, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_MR_DEMOTION = internal global ptr @__TRACE_SYSTEM_MR_DEMOTION, section "_ftrace_eval_map", align 4
@trace_event_fields_mm_migrate_pages = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.0 { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.0 { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.0 { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.0 { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.0 { %struct.anon { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.23, %union.anon.0 { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.0 { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_mm_migrate_pages = internal global %struct.trace_event_class { ptr @str__migrate__trace_system_name, ptr @trace_event_raw_event_mm_migrate_pages, ptr @perf_trace_mm_migrate_pages, ptr @trace_event_reg, ptr @trace_event_fields_mm_migrate_pages, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_migrate_pages, i64 24), ptr getelementptr (i8, ptr @event_class_mm_migrate_pages, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_migrate_pages = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mm_migrate_pages, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mm_migrate_pages = internal global { [680 x i8], [184 x i8] } { [680 x i8] c"\22nr_succeeded=%lu nr_failed=%lu nr_thp_succeeded=%lu nr_thp_failed=%lu nr_thp_split=%lu mode=%s reason=%s\22, REC->succeeded, REC->failed, REC->thp_succeeded, REC->thp_failed, REC->thp_split, __print_symbolic(REC->mode, {MIGRATE_ASYNC, \22MIGRATE_ASYNC\22}, {MIGRATE_SYNC_LIGHT, \22MIGRATE_SYNC_LIGHT\22}, {MIGRATE_SYNC, \22MIGRATE_SYNC\22}), __print_symbolic(REC->reason, {MR_COMPACTION, \22compaction\22}, {MR_MEMORY_FAILURE, \22memory_failure\22}, {MR_MEMORY_HOTPLUG, \22memory_hotplug\22}, {MR_SYSCALL, \22syscall_or_cpuset\22}, {MR_MEMPOLICY_MBIND, \22mempolicy_mbind\22}, {MR_NUMA_MISPLACED, \22numa_misplaced\22}, {MR_CONTIG_RANGE, \22contig_range\22}, {MR_LONGTERM_PIN, \22longterm_pin\22}, {MR_DEMOTION, \22demotion\22})\00", [184 x i8] zeroinitializer }, align 32
@event_mm_migrate_pages = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_migrate_pages, %union.anon.1 { ptr @__tracepoint_mm_migrate_pages }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_migrate_pages }, ptr @print_fmt_mm_migrate_pages, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mm_migrate_pages = internal global ptr @event_mm_migrate_pages, section "_ftrace_events", align 4
@trace_event_fields_mm_migrate_pages_start = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon.0 { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.0 { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_mm_migrate_pages_start = internal global %struct.trace_event_class { ptr @str__migrate__trace_system_name, ptr @trace_event_raw_event_mm_migrate_pages_start, ptr @perf_trace_mm_migrate_pages_start, ptr @trace_event_reg, ptr @trace_event_fields_mm_migrate_pages_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_migrate_pages_start, i64 24), ptr getelementptr (i8, ptr @event_class_mm_migrate_pages_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_migrate_pages_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_mm_migrate_pages_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_mm_migrate_pages_start = internal global { [511 x i8], [97 x i8] } { [511 x i8] c"\22mode=%s reason=%s\22, __print_symbolic(REC->mode, {MIGRATE_ASYNC, \22MIGRATE_ASYNC\22}, {MIGRATE_SYNC_LIGHT, \22MIGRATE_SYNC_LIGHT\22}, {MIGRATE_SYNC, \22MIGRATE_SYNC\22}), __print_symbolic(REC->reason, {MR_COMPACTION, \22compaction\22}, {MR_MEMORY_FAILURE, \22memory_failure\22}, {MR_MEMORY_HOTPLUG, \22memory_hotplug\22}, {MR_SYSCALL, \22syscall_or_cpuset\22}, {MR_MEMPOLICY_MBIND, \22mempolicy_mbind\22}, {MR_NUMA_MISPLACED, \22numa_misplaced\22}, {MR_CONTIG_RANGE, \22contig_range\22}, {MR_LONGTERM_PIN, \22longterm_pin\22}, {MR_DEMOTION, \22demotion\22})\00", [97 x i8] zeroinitializer }, align 32
@event_mm_migrate_pages_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_migrate_pages_start, %union.anon.1 { ptr @__tracepoint_mm_migrate_pages_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_migrate_pages_start }, ptr @print_fmt_mm_migrate_pages_start, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_mm_migrate_pages_start = internal global ptr @event_mm_migrate_pages_start, section "_ftrace_events", align 4
@__bpf_trace_tp_map_mm_migrate_pages = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_migrate_pages, ptr @__bpf_trace_mm_migrate_pages, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_mm_migrate_pages_start = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_mm_migrate_pages_start, ptr @__bpf_trace_mm_migrate_pages_start, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VM_BUG_ON_PAGE(!mapping)\00", [39 x i8] zeroinitializer }, align 32
@isolate_movable_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/migrate.c\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(!PageIsolated(page))\00", [60 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VM_BUG_ON_FOLIO(folio_test_swapcache(folio))\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_folio_migrate_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_migrate_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_migrate_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_migrate_mapping to i32), ptr @__kstrtab_folio_migrate_mapping, ptr @__kstrtabns_folio_migrate_mapping }, section "___ksymtab+folio_migrate_mapping", align 4
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"VM_BUG_ON_FOLIO(folio_test_unevictable(folio))\00", [49 x i8] zeroinitializer }, align 32
@__kstrtab_folio_migrate_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_migrate_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_migrate_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_migrate_flags to i32), ptr @__kstrtab_folio_migrate_flags, ptr @__kstrtabns_folio_migrate_flags }, section "___ksymtab+folio_migrate_flags", align 4
@__kstrtab_folio_migrate_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_migrate_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_migrate_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_migrate_copy to i32), ptr @__kstrtab_folio_migrate_copy, ptr @__kstrtabns_folio_migrate_copy }, section "___ksymtab+folio_migrate_copy", align 4
@__kstrtab_migrate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page to i32), ptr @__kstrtab_migrate_page, ptr @__kstrtabns_migrate_page }, section "___ksymtab+migrate_page", align 4
@__kstrtab_buffer_migrate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_buffer_migrate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_buffer_migrate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @buffer_migrate_page to i32), ptr @__kstrtab_buffer_migrate_page, ptr @__kstrtabns_buffer_migrate_page }, section "___ksymtab+buffer_migrate_page", align 4
@node_demotion = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_migrate__330_3301_migrate_on_reclaim_init7 = internal global ptr @migrate_on_reclaim_init, section ".initcall7.init", align 4
@numa_demotion_enabled = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__initcall__kmod_migrate__331_3362_numa_init_sysfs4 = internal global ptr @numa_init_sysfs, section ".initcall4.init", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"succeeded\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thp_succeeded\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"thp_failed\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"thp_split\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enum migrate_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reason\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"nr_succeeded=%lu nr_failed=%lu nr_thp_succeeded=%lu nr_thp_failed=%lu nr_thp_split=%lu mode=%s reason=%s\0A\00", [54 x i8] zeroinitializer }, align 32
@trace_raw_output_mm_migrate_pages.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str }, %struct.trace_print_flags { i32 1, ptr @.str.1 }, %struct.trace_print_flags { i32 2, ptr @.str.2 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@trace_raw_output_mm_migrate_pages.symbols.28 = internal constant { [10 x %struct.trace_print_flags], [48 x i8] } { [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.29 }, %struct.trace_print_flags { i32 1, ptr @.str.30 }, %struct.trace_print_flags { i32 2, ptr @.str.31 }, %struct.trace_print_flags { i32 3, ptr @.str.32 }, %struct.trace_print_flags { i32 4, ptr @.str.33 }, %struct.trace_print_flags { i32 5, ptr @.str.34 }, %struct.trace_print_flags { i32 6, ptr @.str.35 }, %struct.trace_print_flags { i32 7, ptr @.str.36 }, %struct.trace_print_flags { i32 8, ptr @.str.37 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compaction\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"memory_failure\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"memory_hotplug\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"syscall_or_cpuset\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mempolicy_mbind\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"numa_misplaced\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"contig_range\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"longterm_pin\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"demotion\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mode=%s reason=%s\0A\00", [45 x i8] zeroinitializer }, align 32
@trace_raw_output_mm_migrate_pages_start.symbols = internal constant { [4 x %struct.trace_print_flags], [32 x i8] } { [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str }, %struct.trace_print_flags { i32 1, ptr @.str.1 }, %struct.trace_print_flags { i32 2, ptr @.str.2 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@trace_raw_output_mm_migrate_pages_start.symbols.39 = internal constant { [10 x %struct.trace_print_flags], [48 x i8] } { [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.29 }, %struct.trace_print_flags { i32 1, ptr @.str.30 }, %struct.trace_print_flags { i32 2, ptr @.str.31 }, %struct.trace_print_flags { i32 3, ptr @.str.32 }, %struct.trace_print_flags { i32 4, ptr @.str.33 }, %struct.trace_print_flags { i32 5, ptr @.str.34 }, %struct.trace_print_flags { i32 6, ptr @.str.35 }, %struct.trace_print_flags { i32 7, ptr @.str.36 }, %struct.trace_print_flags { i32 8, ptr @.str.37 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_page_ref_mod_unless = external dso_local global %struct.tracepoint, align 4
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.45 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VM_BUG_ON_PAGE(PageTail(&folio->page))\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"VM_BUG_ON_FOLIO(folio->memcg_data & MEMCG_DATA_OBJCGS)\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_FOLIO(folio_test_slab(folio))\00", [56 x i8] zeroinitializer }, align 32
@root_mem_cgroup = external dso_local local_unnamed_addr global ptr, align 4
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@__tracepoint_page_ref_freeze = external dso_local global %struct.tracepoint, align 4
@.str.52 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VM_BUG_ON_PAGE(page_count(page) != 0)\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_unfreeze = external dso_local global %struct.tracepoint, align 4
@page_owner_inited = external dso_local global %struct.static_key_false, align 4
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/migrate.h\00", [33 x i8] zeroinitializer }, align 32
@trace_mm_migrate_pages_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VM_BUG_ON_PAGE(!PageLocked(page))\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VM_BUG_ON_PAGE(!PageLocked(newpage))\00", [59 x i8] zeroinitializer }, align 32
@move_to_new_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageAnon(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"VM_BUG_ON_PAGE(PageAnon(page) && !PageKsm(page) && !anon_vma)\00", [34 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@trace_mm_migrate_pages.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mm/demotion:offline\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mm/demotion:online\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"numa\00", [27 x i8] zeroinitializer }, align 32
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@numa_init_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.13, i32 3348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to create numa kobject\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"numa_init_sysfs\00", [16 x i8] zeroinitializer }, align 32
@numa_init_sysfs._entry_ptr = internal global ptr @numa_init_sysfs._entry, section ".printk_index", align 4
@numa_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @numa_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@numa_init_sysfs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.13, i32 3353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to register numa group\0A\00", [63 x i8] zeroinitializer }, align 32
@numa_init_sysfs._entry_ptr.74 = internal global ptr @numa_init_sysfs._entry.72, section ".printk_index", align 4
@numa_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @numa_demotion_enabled_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@numa_demotion_enabled_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @numa_demotion_enabled_show, ptr @numa_demotion_enabled_store }, [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"demotion_enabled\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967258, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.84 = private unnamed_addr constant [32 x i8] c"str__migrate__trace_system_name\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 36, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 36, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 37, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [36 x i8] c"trace_event_fields_mm_migrate_pages\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [40 x i8] c"trace_event_type_funcs_mm_migrate_pages\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"print_fmt_mm_migrate_pages\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"event_mm_migrate_pages\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [42 x i8] c"trace_event_fields_mm_migrate_pages_start\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [46 x i8] c"trace_event_type_funcs_mm_migrate_pages_start\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [33 x i8] c"print_fmt_mm_migrate_pages_start\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"event_mm_migrate_pages_start\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 103, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 109, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 157, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 409, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 524, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [22 x i8] c"numa_demotion_enabled\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3304, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 48, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 260, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 921, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 717, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 788, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 504, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 537, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 538, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [30 x i8] c"../include/linux/memcontrol.h\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.262, i32 417, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1160, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [28 x i8] c"../include/linux/page_ref.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 332, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 366, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [34 x i8] c"../include/trace/events/migrate.h\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 87, i32 1 }
@___asan_gen_.280 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 108, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 857, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 858, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1024, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 1031, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1368, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 695, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 723, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3285, i32 58 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3294, i32 55 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3346, i32 37 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3348, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"numa_attr_group\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3337, i32 37 }
@___asan_gen_.327 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3353, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [11 x i8] c"numa_attrs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3332, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant [27 x i8] c"numa_demotion_enabled_attr\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3328, i32 30 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3329, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3310, i32 25 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3311, i32 30 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.349 = private constant [16 x i8] c"../mm/migrate.c\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 3311, i32 39 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @TRACE_SYSTEM_MIGRATE_ASYNC, ptr @TRACE_SYSTEM_MIGRATE_SYNC, ptr @TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, ptr @TRACE_SYSTEM_MR_COMPACTION, ptr @TRACE_SYSTEM_MR_CONTIG_RANGE, ptr @TRACE_SYSTEM_MR_DEMOTION, ptr @TRACE_SYSTEM_MR_LONGTERM_PIN, ptr @TRACE_SYSTEM_MR_MEMORY_FAILURE, ptr @TRACE_SYSTEM_MR_MEMORY_HOTPLUG, ptr @TRACE_SYSTEM_MR_MEMPOLICY_MBIND, ptr @TRACE_SYSTEM_MR_NUMA_MISPLACED, ptr @TRACE_SYSTEM_MR_SYSCALL, ptr @__TRACE_SYSTEM_MIGRATE_ASYNC, ptr @__TRACE_SYSTEM_MIGRATE_SYNC, ptr @__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, ptr @__TRACE_SYSTEM_MR_COMPACTION, ptr @__TRACE_SYSTEM_MR_CONTIG_RANGE, ptr @__TRACE_SYSTEM_MR_DEMOTION, ptr @__TRACE_SYSTEM_MR_LONGTERM_PIN, ptr @__TRACE_SYSTEM_MR_MEMORY_FAILURE, ptr @__TRACE_SYSTEM_MR_MEMORY_HOTPLUG, ptr @__TRACE_SYSTEM_MR_MEMPOLICY_MBIND, ptr @__TRACE_SYSTEM_MR_NUMA_MISPLACED, ptr @__TRACE_SYSTEM_MR_SYSCALL, ptr @__bpf_trace_tp_map_mm_migrate_pages, ptr @__bpf_trace_tp_map_mm_migrate_pages_start, ptr @__event_mm_migrate_pages, ptr @__event_mm_migrate_pages_start, ptr @__initcall__kmod_migrate__330_3301_migrate_on_reclaim_init7, ptr @__initcall__kmod_migrate__331_3362_numa_init_sysfs4, ptr @__ksymtab_buffer_migrate_page, ptr @__ksymtab_folio_migrate_copy, ptr @__ksymtab_folio_migrate_flags, ptr @__ksymtab_folio_migrate_mapping, ptr @__ksymtab_migrate_page, ptr @__tracepoint_mm_migrate_pages, ptr @__tracepoint_mm_migrate_pages_start, ptr @__tracepoint_ptr_mm_migrate_pages, ptr @__tracepoint_ptr_mm_migrate_pages_start, ptr @event_class_mm_migrate_pages, ptr @event_class_mm_migrate_pages_start, ptr @event_mm_migrate_pages, ptr @event_mm_migrate_pages_start, ptr @numa_init_sysfs._entry, ptr @numa_init_sysfs._entry.72, ptr @numa_init_sysfs._entry_ptr, ptr @numa_init_sysfs._entry_ptr.74, ptr @str__migrate__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @trace_event_fields_mm_migrate_pages, ptr @trace_event_type_funcs_mm_migrate_pages, ptr @print_fmt_mm_migrate_pages, ptr @trace_event_fields_mm_migrate_pages_start, ptr @trace_event_type_funcs_mm_migrate_pages_start, ptr @print_fmt_mm_migrate_pages_start, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @numa_demotion_enabled, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @trace_raw_output_mm_migrate_pages.symbols, ptr @trace_raw_output_mm_migrate_pages.symbols.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @trace_raw_output_mm_migrate_pages_start.symbols, ptr @trace_raw_output_mm_migrate_pages_start.symbols.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @numa_attr_group, ptr @.str.73, ptr @numa_attrs, ptr @numa_demotion_enabled_attr, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__migrate__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mm_migrate_pages to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mm_migrate_pages to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mm_migrate_pages to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mm_migrate_pages to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_mm_migrate_pages_start to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_mm_migrate_pages_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_mm_migrate_pages_start to i32), i32 511, i32 608, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_mm_migrate_pages_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numa_demotion_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mm_migrate_pages.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mm_migrate_pages.symbols.28 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mm_migrate_pages_start.symbols to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_mm_migrate_pages_start.symbols.39 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numa_init_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numa_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numa_init_sysfs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numa_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numa_demotion_enabled_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_migrate_pages(ptr nocapture readnone %__data, i32 noundef %succeeded, i32 noundef %failed, i32 noundef %thp_succeeded, i32 noundef %thp_failed, i32 noundef %thp_split, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %succeeded, i32 noundef %failed, i32 noundef %thp_succeeded, i32 noundef %thp_failed, i32 noundef %thp_split, i32 noundef %mode, i32 noundef %reason) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_migrate_pages_start(ptr nocapture readnone %__data, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %mode, i32 noundef %reason) #12
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_migrate_pages(ptr noundef %__data, i32 noundef %succeeded, i32 noundef %failed, i32 noundef %thp_succeeded, i32 noundef %thp_failed, i32 noundef %thp_split, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !222

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !223

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %succeeded6 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %succeeded6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %succeeded, ptr %succeeded6, align 4
  %failed7 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %failed7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %failed, ptr %failed7, align 4
  %thp_succeeded8 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %thp_succeeded8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %thp_succeeded, ptr %thp_succeeded8, align 4
  %thp_failed9 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %thp_failed9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %thp_failed, ptr %thp_failed9, align 4
  %thp_split10 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 5
  %7 = ptrtoint ptr %thp_split10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %thp_split, ptr %thp_split10, align 4
  %mode11 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 6
  %8 = ptrtoint ptr %mode11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mode, ptr %mode11, align 4
  %reason12 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %reason12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %reason, ptr %reason12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mm_migrate_pages(ptr noundef %__data, i32 noundef %succeeded, i32 noundef %failed, i32 noundef %thp_succeeded, i32 noundef %thp_failed, i32 noundef %thp_split, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !224
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !212) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %succeeded17 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %succeeded17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %succeeded, ptr %succeeded17, align 4
  %failed18 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %failed18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %failed, ptr %failed18, align 4
  %thp_succeeded19 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %thp_succeeded19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %thp_succeeded, ptr %thp_succeeded19, align 4
  %thp_failed20 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %thp_failed20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %thp_failed, ptr %thp_failed20, align 4
  %thp_split21 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 5
  %31 = ptrtoint ptr %thp_split21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %thp_split, ptr %thp_split21, align 4
  %mode22 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 6
  %32 = ptrtoint ptr %mode22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mode, ptr %mode22, align 4
  %reason23 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %call13, i32 0, i32 7
  %33 = ptrtoint ptr %reason23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %reason, ptr %reason23, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_migrate_pages_start(ptr noundef %__data, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #12
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !222

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !223

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #12
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mode6 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %mode6, align 4
  %reason7 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %reason7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %reason, ptr %reason7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_mm_migrate_pages_start(ptr noundef %__data, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #12
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #12
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !224
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !212) #12
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %mode17 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %mode17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mode, ptr %mode17, align 4
  %reason18 = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %reason18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %reason, ptr %reason18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_migrate_pages(ptr noundef %__data, i32 noundef %succeeded, i32 noundef %failed, i32 noundef %thp_succeeded, i32 noundef %thp_failed, i32 noundef %thp_split, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %succeeded to i64
  %conv4 = zext i32 %failed to i64
  %conv8 = zext i32 %thp_succeeded to i64
  %conv12 = zext i32 %thp_failed to i64
  %conv16 = zext i32 %thp_split to i64
  %conv20 = zext i32 %mode to i64
  %conv24 = zext i32 %reason to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_mm_migrate_pages_start(ptr noundef %__data, i32 noundef %mode, i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %mode to i64
  %conv4 = zext i32 %reason to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isolate_movable_page(ptr noundef %page, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i, ptr %_refcount.i.i, i32 0, i32 1, ptr elementtype(i32) %_refcount.i.i) #12, !srcloc !226
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %entry.atomic_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i

entry.atomic_add_unless.exit.i.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %atomic_add_unless.exit.i.i

do.end11.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !227
  br label %atomic_add_unless.exit.i.i

atomic_add_unless.exit.i.i:                       ; preds = %do.end11.i.i.i.i.i, %entry.atomic_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_unless, i32 0, i32 1), ptr blockaddress(@isolate_movable_page, %if.then.i.i)) #12
          to label %get_page_unless_zero.exit [label %if.then.i.i], !srcloc !228

if.then.i.i:                                      ; preds = %atomic_add_unless.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i = zext i1 %cmp.i.i.i.i to i32
  tail call void @__page_ref_mod_unless(ptr noundef %page, i32 noundef 1, i32 noundef %conv.i.i) #12
  br label %get_page_unless_zero.exit

get_page_unless_zero.exit:                        ; preds = %if.then.i.i, %atomic_add_unless.exit.i.i
  br i1 %cmp.i.i.i.i, label %if.end, label %get_page_unless_zero.exit.cleanup_crit_edge, !prof !222

get_page_unless_zero.exit.cleanup_crit_edge:      ; preds = %get_page_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %get_page_unless_zero.exit
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %and.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 2
  br i1 %cmp.i.not, label %if.end14, label %if.end.out_putpage_crit_edge, !prof !222

if.end.out_putpage_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putpage

if.end14:                                         ; preds = %if.end
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i126, !prof !222

if.then.i.i126:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i126
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i126 ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i127 = tail call zeroext i1 @__kasan_check_write(ptr noundef %8, i32 noundef 4) #12
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and.i.i4.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_page.exit, label %folio_flags.exit.i.i.out_putpage_crit_edge

folio_flags.exit.i.i.out_putpage_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putpage

trylock_page.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %8, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %15 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not.not = icmp eq i32 %15, 0
  br i1 %tobool16.not.not, label %if.end26, label %trylock_page.exit.out_putpage_crit_edge, !prof !222

trylock_page.exit.out_putpage_crit_edge:          ; preds = %trylock_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_putpage

if.end26:                                         ; preds = %trylock_page.exit
  %call27 = tail call i32 @PageMovable(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.out_no_isolated_crit_edge, label %lor.lhs.false

if.end26.out_no_isolated_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_isolated

lor.lhs.false:                                    ; preds = %if.end26
  %16 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !223

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !232
  unreachable

PageIsolated.exit:                                ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %page, align 4
  %20 = and i32 %19, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %if.end32, label %PageIsolated.exit.out_no_isolated_crit_edge

PageIsolated.exit.out_no_isolated_crit_edge:      ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_isolated

if.end32:                                         ; preds = %PageIsolated.exit
  %call33 = tail call ptr @page_mapping(ptr noundef %page) #12
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then43, label %do.end50, !prof !223

if.then43:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.12) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 103, 0\0A.popsection", ""() #12, !srcloc !233
  unreachable

do.end50:                                         ; preds = %if.end32
  %a_ops = getelementptr inbounds %struct.address_space, ptr %call33, i32 0, i32 9
  %21 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %a_ops, align 4
  %isolate_page = getelementptr inbounds %struct.address_space_operations, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %isolate_page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %isolate_page, align 4
  %call51 = tail call zeroext i1 %24(ptr noundef %page, i32 noundef %mode) #12
  br i1 %call51, label %if.end53, label %do.end50.out_no_isolated_crit_edge

do.end50.out_no_isolated_crit_edge:               ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_isolated

if.end53:                                         ; preds = %do.end50
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i119 = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i119, label %if.then.i120, label %PageIsolated.exit123, !prof !223

if.then.i120:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !232
  unreachable

PageIsolated.exit123:                             ; preds = %if.end53
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %page, align 4
  %29 = and i32 %28, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool55.not = icmp eq i32 %29, 0
  br i1 %tobool55.not, label %PageIsolated.exit123.if.end95_crit_edge, label %land.rhs

PageIsolated.exit123.if.end95_crit_edge:          ; preds = %PageIsolated.exit123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.rhs:                                         ; preds = %PageIsolated.exit123
  %.b118 = load i1, ptr @isolate_movable_page.__already_done, align 1
  br i1 %.b118, label %land.rhs.if.end95_crit_edge, label %if.then70, !prof !222

land.rhs.if.end95_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then70:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @isolate_movable_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 109, i32 noundef 9, ptr noundef null) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then70, %land.rhs.if.end95_crit_edge, %PageIsolated.exit123.if.end95_crit_edge
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i124 = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i124, label %if.then.i125, label %__SetPageIsolated.exit, !prof !223

if.then.i125:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !234
  unreachable

__SetPageIsolated.exit:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  %or.i.i = or i32 %31, 262144
  %32 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i, ptr %page, align 4
  tail call void @unlock_page(ptr noundef %page) #12
  br label %cleanup

out_no_isolated:                                  ; preds = %do.end50.out_no_isolated_crit_edge, %PageIsolated.exit.out_no_isolated_crit_edge, %if.end26.out_no_isolated_crit_edge
  tail call void @unlock_page(ptr noundef %page) #12
  br label %out_putpage

out_putpage:                                      ; preds = %out_no_isolated, %trylock_page.exit.out_putpage_crit_edge, %folio_flags.exit.i.i.out_putpage_crit_edge, %if.end.out_putpage_crit_edge
  %33 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i128 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i128)
  %tobool.not.i.i129 = icmp eq i32 %and.i.i128, 0
  br i1 %tobool.not.i.i129, label %if.end.i.i132, label %if.then.i.i131, !prof !222

if.then.i.i131:                                   ; preds = %out_putpage
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i130 = add i32 %35, -1
  br label %_compound_head.exit.i135

if.end.i.i132:                                    ; preds = %out_putpage
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i135

_compound_head.exit.i135:                         ; preds = %if.end.i.i132, %if.then.i.i131
  %retval.0.i.i133 = phi i32 [ %sub.i.i130, %if.then.i.i131 ], [ %36, %if.end.i.i132 ]
  %37 = inttoptr i32 %retval.0.i.i133 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i134 = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i134, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !223

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i135
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.43) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i135
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@isolate_movable_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !228

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %37, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %37) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %__SetPageIsolated.exit, %get_page_unless_zero.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__SetPageIsolated.exit ], [ -16, %get_page_unless_zero.exit.cleanup_crit_edge ], [ -16, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -16, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @PageMovable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !222

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !223

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.43) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !235
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !228

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #12
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %4) #12
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @putback_movable_pages(ptr noundef readonly %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l, align 4
  %cmp.not87 = icmp eq ptr %1, %l
  br i1 %cmp.not87, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in88 = phi ptr [ %.pn91, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %page.089 = getelementptr i8, ptr %.pn.in88, i32 -4
  %2 = ptrtoint ptr %.pn.in88 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn91 = load ptr, ptr %.pn.in88, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in88) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in88, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in88 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in88, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in88 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in88, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in88, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %mapping.i = getelementptr i8, ptr %.pn.in88, i32 8
  %11 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %and.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 2
  %14 = ptrtoint ptr %page.089 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %page.089, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i = icmp eq i32 %15, -1
  br i1 %cmp.i.not, label %do.body, label %if.else41, !prof !223

do.body:                                          ; preds = %list_del.exit
  br i1 %cmp.i.not.i, label %if.then.i, label %PageIsolated.exit, !prof !223

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page.089, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !232
  unreachable

PageIsolated.exit:                                ; preds = %do.body
  %16 = ptrtoint ptr %page.089 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %page.089, align 4
  %18 = and i32 %17, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %if.then29, label %do.end36, !prof !223

if.then29:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page.089, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #12, !srcloc !239
  unreachable

do.end36:                                         ; preds = %PageIsolated.exit
  tail call fastcc void @lock_page(ptr noundef %page.089)
  %call37 = tail call i32 @PageMovable(ptr noundef %page.089) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @putback_movable_page(ptr noundef %page.089)
  br label %if.end40

if.else:                                          ; preds = %do.end36
  %19 = ptrtoint ptr %page.089 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page.089, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i71 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i71, label %if.then.i72, label %__ClearPageIsolated.exit, !prof !223

if.then.i72:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page.089, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !240
  unreachable

__ClearPageIsolated.exit:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %20, -262145
  %21 = ptrtoint ptr %page.089 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i.i, ptr %page.089, align 4
  br label %if.end40

if.end40:                                         ; preds = %__ClearPageIsolated.exit, %if.then39
  tail call void @unlock_page(ptr noundef %page.089) #12
  tail call fastcc void @put_page(ptr noundef %page.089)
  br label %for.inc

if.else41:                                        ; preds = %list_del.exit
  br i1 %cmp.i.not.i, label %if.then.i.i, label %page_pgdat.exit, !prof !223

if.then.i.i:                                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page.089, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

page_pgdat.exit:                                  ; preds = %if.else41
  %22 = ptrtoint ptr %.pn.in88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %.pn.in88, align 4
  %and.i.i73 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i, label %if.end.i.i75, label %if.then.i.i74, !prof !222

if.then.i.i74:                                    ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i75:                                     ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %page.089 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i75, %if.then.i.i74
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i74 ], [ %24, %if.end.i.i75 ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %page_is_file_lru.exit, label %if.then.i.i.i.i, !prof !222

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %29, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

page_is_file_lru.exit:                            ; preds = %_compound_head.exit.i
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %25, align 4
  %32 = ptrtoint ptr %.pn.in88 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %.pn.in88, align 4
  %and.i.i76 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.not.i = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.not.i, label %thp_nr_pages.exit, label %if.then.i77, !prof !222

if.then.i77:                                      ; preds = %page_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page.089, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !242
  unreachable

thp_nr_pages.exit:                                ; preds = %page_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #14
  %34 = shl i32 %31, 12
  %35 = ashr i32 %34, 31
  %add = add nsw i32 %35, 8
  tail call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %add, i32 noundef -1) #12
  tail call void @putback_lru_page(ptr noundef %page.089) #12
  br label %for.inc

for.inc:                                          ; preds = %thp_nr_pages.exit, %if.end40
  %cmp.not = icmp eq ptr %.pn91, %l
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__might_sleep(ptr noundef nonnull @.str.44, i32 noundef 788) #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !222

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #12
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i, label %folio_trylock.exit, label %folio_flags.exit.i.if.then_crit_edge

folio_flags.exit.i.if.then_crit_edge:             ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %11 = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.i = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.i, label %folio_trylock.exit.if.end_crit_edge, label %folio_trylock.exit.if.then_crit_edge

folio_trylock.exit.if.then_crit_edge:             ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

folio_trylock.exit.if.end_crit_edge:              ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %folio_trylock.exit.if.then_crit_edge, %folio_flags.exit.i.if.then_crit_edge
  tail call void @__folio_lock(ptr noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_trylock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @putback_movable_page(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_mapping(ptr noundef %page) #12
  %a_ops = getelementptr inbounds %struct.address_space, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a_ops, align 4
  %putback_page = getelementptr inbounds %struct.address_space_operations, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %putback_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %putback_page, align 4
  tail call void %3(ptr noundef %page) #12
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %__ClearPageIsolated.exit, !prof !223

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !240
  unreachable

__ClearPageIsolated.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %5, -262145
  %6 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i.i, ptr %page, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_lru_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @remove_migration_ptes(ptr noundef %old, ptr noundef %new, i1 noundef zeroext %locked) local_unnamed_addr #0 align 64 {
entry:
  %rwc = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc) #12
  %0 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc, i32 0, i32 4
  %4 = ptrtoint ptr %rwc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %old, ptr %rwc, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @remove_migration_pte, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 4
  br i1 %locked, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @rmap_walk_locked(ptr noundef %new, ptr noundef nonnull %rwc) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @rmap_walk(ptr noundef %new, ptr noundef nonnull %rwc) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @remove_migration_pte(ptr noundef %page, ptr noundef %vma, i32 noundef %addr, ptr noundef %old) #0 align 64 {
entry:
  %pvmw = alloca %struct.page_vma_mapped_walk, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pvmw) #12
  %0 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 1
  %1 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 2
  %2 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 3
  %3 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 4
  %4 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 5
  %5 = getelementptr inbounds %struct.page_vma_mapped_walk, ptr %pvmw, i32 0, i32 6
  %6 = ptrtoint ptr %pvmw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %old, ptr %pvmw, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vma, ptr %0, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %addr, ptr %1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %5, align 4
  %13 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then, !prof !222

while.cond.preheader:                             ; preds = %entry
  %call13163 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #12
  br i1 %call13163, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %16 = ptrtoint ptr %page to i32
  %vm_pgoff.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %vm_flags.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 6
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 189, 0\0A.popsection", ""() #12, !srcloc !243
  unreachable

while.body:                                       ; preds = %if.end102.while.body_crit_edge, %while.body.lr.ph
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and.i2.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i, label %while.body.PageKsm.exit_crit_edge, label %if.then.i.i, !prof !222

while.body.PageKsm.exit_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %PageKsm.exit

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %18, -1
  br label %PageKsm.exit

PageKsm.exit:                                     ; preds = %if.then.i.i, %while.body.PageKsm.exit_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %while.body.PageKsm.exit_crit_edge ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.anon.107, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mapping.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %and.i.i = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.i.i, label %PageKsm.exit.if.end20_crit_edge, label %if.else

PageKsm.exit.if.end20_crit_edge:                  ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.else:                                          ; preds = %PageKsm.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pvmw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pvmw, align 4
  %index = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  %idx.neg = sub i32 0, %26
  %add.ptr = getelementptr %struct.page, ptr %page, i32 %idx.neg
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %29 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vma, align 4
  %sub.i = sub i32 %28, %30
  %shr.i = lshr i32 %sub.i, 12
  %31 = ptrtoint ptr %vm_pgoff.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vm_pgoff.i, align 4
  %add.i = add i32 %shr.i, %32
  %add.ptr19 = getelementptr %struct.page, ptr %add.ptr, i32 %add.i
  br label %if.end20

if.end20:                                         ; preds = %if.else, %PageKsm.exit.if.end20_crit_edge
  %new.0 = phi ptr [ %add.ptr19, %if.else ], [ %page, %PageKsm.exit.if.end20_crit_edge ]
  %33 = getelementptr inbounds %struct.page, ptr %new.0, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i154 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %tobool.not.i.i155 = icmp eq i32 %and.i.i154, 0
  br i1 %tobool.not.i.i155, label %if.end.i.i158, label %if.then.i.i157, !prof !222

if.then.i.i157:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i156 = add i32 %35, -1
  br label %_compound_head.exit.i

if.end.i.i158:                                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %new.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i158, %if.then.i.i157
  %retval.0.i.i159 = phi i32 [ %sub.i.i156, %if.then.i.i157 ], [ %36, %if.end.i.i158 ]
  %37 = inttoptr i32 %retval.0.i.i159 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %39, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i160 = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i160, label %if.then.i1.i, label %do.end5.i.i, !prof !223

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = inttoptr i32 %retval.0.i.i159 to ptr
  call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.52) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !244
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@remove_migration_pte, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !228

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %37, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %42 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %new.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %42 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %43 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %43
  %shl = shl i32 %add, 12
  %44 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %vm_page_prot, align 4
  %.masked = and i32 %45, -3
  %and.i.i161 = or i32 %shl, %.masked
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = and i32 %49, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 124, i32 %50)
  %cmp.i.not = icmp eq i32 %50, 124
  br i1 %cmp.i.not, label %if.then37, label %get_page.exit.if.end46_crit_edge

get_page.exit.if.end46_crit_edge:                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then37:                                        ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vm_flags.i, align 4
  %and.i162 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i = icmp eq i32 %and.i162, 0
  %and.i.i.i = and i32 %and.i.i161, -131
  %spec.select.i = select i1 %tobool.not.i, i32 %and.i.i161, i32 %and.i.i.i, !prof !223
  br label %if.end46

if.end46:                                         ; preds = %if.then37, %get_page.exit.if.end46_crit_edge
  %pte3.1 = phi i32 [ %spec.select.i, %if.then37 ], [ %and.i.i161, %get_page.exit.if.end46_crit_edge ]
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %33, align 4
  %and.i2.i145 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i145)
  %tobool.not.i.i146 = icmp eq i32 %and.i2.i145, 0
  br i1 %tobool.not.i.i146, label %if.end46.PageAnon.exit_crit_edge, label %if.then.i.i148, !prof !222

if.end46.PageAnon.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %PageAnon.exit

if.then.i.i148:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i147 = add i32 %54, -1
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.then.i.i148, %if.end46.PageAnon.exit_crit_edge
  %retval.0.i.i150 = phi i32 [ %sub.i.i147, %if.then.i.i148 ], [ %sub.ptr.lhs.cast, %if.end46.PageAnon.exit_crit_edge ]
  %55 = inttoptr i32 %retval.0.i.i150 to ptr
  %mapping.i.i151 = getelementptr inbounds %struct.anon.107, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %mapping.i.i151 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mapping.i.i151, align 4
  %58 = ptrtoint ptr %57 to i32
  %and.i.i152 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %cmp.i.i153.not = icmp eq i32 %and.i.i152, 0
  br i1 %cmp.i.i153.not, label %if.else93, label %if.then91

if.then91:                                        ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 4
  call void @page_add_anon_rmap(ptr noundef %new.0, ptr noundef %vma, i32 noundef %60, i1 noundef zeroext false) #12
  br label %if.end94

if.else93:                                        ; preds = %PageAnon.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @page_add_file_rmap(ptr noundef %new.0, i1 noundef zeroext false) #12
  br label %if.end94

if.end94:                                         ; preds = %if.else93, %if.then91
  %61 = ptrtoint ptr %vm_mm to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vm_mm, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  call void @set_pte_at(ptr noundef %62, i32 noundef %64, ptr noundef %66, i32 noundef %pte3.1) #12
  %67 = ptrtoint ptr %vm_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %vm_flags.i, align 4
  %and97 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end94.if.end102_crit_edge, label %land.lhs.true

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

land.lhs.true:                                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlock_vma_page(ptr noundef %new.0) #12
  br label %if.end102

if.end102:                                        ; preds = %land.lhs.true, %if.end94.if.end102_crit_edge
  %call13 = call zeroext i1 @page_vma_mapped_walk(ptr noundef nonnull %pvmw) #12
  br i1 %call13, label %if.end102.while.body_crit_edge, label %if.end102.while.end_crit_edge

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end102.while.body_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pvmw) #12
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmap_walk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__migration_entry_wait(ptr nocapture readnone %mm, ptr noundef %ptep, ptr noundef %ptl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %ptl) #12
  %0 = ptrtoint ptr %ptep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptep, align 4
  %2 = and i32 %1, 121
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %2)
  %3 = icmp eq i32 %2, 120
  br i1 %3, label %if.end7, label %do.body

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl i32 %1, 24
  %shl.i.i = and i32 %4, 2080374784
  %shr3.i = lshr i32 %1, 7
  %or.i.i = or i32 %shl.i.i, %shr3.i
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %or.i.i, 0
  tail call void @migration_entry_wait_on_locked([1 x i32] %.fca.0.insert, ptr noundef %ptep, ptr noundef %ptl) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %ptl) #12
  tail call void @kunmap_local_indexed(ptr noundef %ptep) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !246
  %5 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %10, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  %11 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migration_entry_wait_on_locked([1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @migration_entry_wait(ptr nocapture noundef readnone %mm, ptr nocapture noundef readonly %pmd, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pmd, align 4
  %shr.i = lshr i32 %2, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub.i = sub i32 %shr.i, %3
  %ptl.i.i = getelementptr %struct.page, ptr %0, i32 %sub.i, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %ptl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptl.i.i, align 4
  %add.ptr = getelementptr %struct.page, ptr %0, i32 %sub.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %6 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %6, 512
  %7 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !248
  %11 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i1.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %16, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !249
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i) #12
  %shr.i6 = lshr i32 %address, 12
  %and.i = and i32 %shr.i6, 511
  %add.ptr3 = getelementptr i32, ptr %call.i.i, i32 %and.i
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %17 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr3, align 4
  %19 = and i32 %18, 121
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %19)
  %20 = icmp eq i32 %19, 120
  br i1 %20, label %if.end7.i, label %do.body.i

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %21 = shl i32 %18, 24
  %shl.i.i.i = and i32 %21, 2080374784
  %shr3.i.i = lshr i32 %18, 7
  %or.i.i.i = or i32 %shl.i.i.i, %shr3.i.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %or.i.i.i, 0
  tail call void @migration_entry_wait_on_locked([1 x i32] %.fca.0.insert.i, ptr noundef %add.ptr3, ptr noundef %5) #12
  br label %__migration_entry_wait.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %5) #12
  tail call void @kunmap_local_indexed(ptr noundef %add.ptr3) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !246
  %22 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i1.i.i7 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i.i7 to ptr
  %task.i.i.i.i8 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i.i.i8, align 8
  %pagefault_disabled.i.i.i.i9 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i.i.i9, align 8
  %dec.i.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i9, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  %28 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i10 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  br label %__migration_entry_wait.exit

__migration_entry_wait.exit:                      ; preds = %do.body.i, %if.end7.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @migration_entry_wait_huge(ptr nocapture noundef readnone %vma, ptr noundef %mm, ptr noundef %pte) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %page_table_lock.i = getelementptr inbounds %struct.anon.15, ptr %mm, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %page_table_lock.i) #12
  %0 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pte, align 4
  %2 = and i32 %1, 121
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %2)
  %3 = icmp eq i32 %2, 120
  br i1 %3, label %if.end7.i, label %do.body.i

if.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = shl i32 %1, 24
  %shl.i.i.i = and i32 %4, 2080374784
  %shr3.i.i = lshr i32 %1, 7
  %or.i.i.i = or i32 %shl.i.i.i, %shr3.i.i
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %or.i.i.i, 0
  tail call void @migration_entry_wait_on_locked([1 x i32] %.fca.0.insert.i, ptr noundef %pte, ptr noundef %page_table_lock.i) #12
  br label %__migration_entry_wait.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %page_table_lock.i) #12
  tail call void @kunmap_local_indexed(ptr noundef %pte) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !246
  %5 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i1.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %10, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !247
  %11 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  br label %__migration_entry_wait.exit

__migration_entry_wait.exit:                      ; preds = %do.body.i, %if.end7.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @folio_migrate_mapping(ptr noundef %mapping, ptr noundef %newfolio, ptr noundef %folio, i32 noundef %extra_count) #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #12
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i_pages, ptr %xas, align 4
  %6 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !222

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %entry
  %9 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %folio, align 4
  %11 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i222 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i222)
  %tobool.not.i.i.i223 = icmp eq i32 %and.i.i.i.i222, 0
  br i1 %tobool.not.i.i.i223, label %folio_test_swapcache.exit.i, label %if.then.i.i.i224, !prof !222

if.then.i.i.i224:                                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %14 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %folio, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i225 = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i225, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !222

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @__page_file_index(ptr noundef %folio) #12
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 3
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %18, %if.end.i ]
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %1, align 4
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %3, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %mapping, null
  br i1 %tobool.not.i, label %folio_index.exit.expected_page_refs.exit_crit_edge, label %if.then.i226

folio_index.exit.expected_page_refs.exit_crit_edge: ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %expected_page_refs.exit

if.then.i226:                                     ; preds = %folio_index.exit
  %24 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i.i.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i227, label %PageHead.exit.i.i, !prof !223

if.then.i.i.i227:                                 ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !250
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then.i226
  %26 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %folio, align 4
  %28 = and i32 %27, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i228 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i228, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_nr.exit.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %30, %if.end.i.i ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %and.i.i = and i32 %27, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i229 = icmp eq i32 %and.i.i, 0
  %add3.i = select i1 %tobool.i.not.i229, i32 1, i32 2
  %add4.i = add i32 %retval.0.i.i, %add3.i
  br label %expected_page_refs.exit

expected_page_refs.exit:                          ; preds = %compound_nr.exit.i, %folio_index.exit.expected_page_refs.exit_crit_edge
  %expected_count.0.i = phi i32 [ %add4.i, %compound_nr.exit.i ], [ 1, %folio_index.exit.expected_page_refs.exit_crit_edge ]
  %add = add i32 %expected_count.0.i, %extra_count
  %31 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i231 = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i231, label %if.then.i.i.i232, label %PageHead.exit.i.i234, !prof !223

if.then.i.i.i232:                                 ; preds = %expected_page_refs.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !250
  unreachable

PageHead.exit.i.i234:                             ; preds = %expected_page_refs.exit
  %33 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %folio, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i233 = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i233, label %PageHead.exit.i.i234.folio_nr_pages.exit_crit_edge, label %if.end.i.i236

PageHead.exit.i.i234.folio_nr_pages.exit_crit_edge: ; preds = %PageHead.exit.i.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %folio_nr_pages.exit

if.end.i.i236:                                    ; preds = %PageHead.exit.i.i234
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i235 = getelementptr %struct.page, ptr %folio, i32 1, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %compound_nr.i.i235 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %compound_nr.i.i235, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i236, %PageHead.exit.i.i234.folio_nr_pages.exit_crit_edge
  %retval.0.i.i237 = phi i32 [ %37, %if.end.i.i236 ], [ 1, %PageHead.exit.i.i234.folio_nr_pages.exit_crit_edge ]
  br i1 %tobool.not.i, label %if.then, label %if.end11

if.then:                                          ; preds = %folio_nr_pages.exit
  %_refcount.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i, i32 noundef 4) #12
  %38 = ptrtoint ptr %_refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add)
  %cmp.not = icmp eq i32 %39, %add
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  %index = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 3
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index, align 4
  %index5 = getelementptr inbounds %struct.anon.107, ptr %newfolio, i32 0, i32 3
  %42 = ptrtoint ptr %index5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %index5, align 4
  %mapping6 = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 2
  %43 = ptrtoint ptr %mapping6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mapping6, align 4
  %mapping7 = getelementptr inbounds %struct.anon.107, ptr %newfolio, i32 0, i32 2
  %45 = ptrtoint ptr %mapping7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %mapping7, align 4
  %46 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %6, align 4
  %and.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_swapbacked.exit, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit:                       ; preds = %if.end
  %48 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %folio, align 4
  %50 = and i32 %49, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not = icmp eq i32 %50, 0
  br i1 %tobool.i.not, label %folio_test_swapbacked.exit.cleanup_crit_edge, label %if.then9

folio_test_swapbacked.exit.cleanup_crit_edge:     ; preds = %folio_test_swapbacked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %folio_test_swapbacked.exit
  %51 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i146 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and.i.i.i146, 0
  br i1 %tobool.not.i.i147, label %__folio_set_swapbacked.exit, label %if.then.i.i148, !prof !222

if.then.i.i148:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

__folio_set_swapbacked.exit:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %newfolio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %newfolio, align 4
  %or.i.i = or i32 %55, 524288
  store i32 %or.i.i, ptr %newfolio, align 4
  br label %cleanup

if.end11:                                         ; preds = %folio_nr_pages.exit
  %56 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.i.not.i.i.i239 = icmp eq i32 %57, -1
  br i1 %cmp.i.not.i.i.i239, label %if.then.i.i.i240, label %folio_zone.exit, !prof !223

if.then.i.i.i240:                                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

folio_zone.exit:                                  ; preds = %if.end11
  %shr.i.i.i = lshr i32 %57, 30
  %arrayidx.i.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i
  %58 = ptrtoint ptr %newfolio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %newfolio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp.i.not.i.i.i241 = icmp eq i32 %59, -1
  br i1 %cmp.i.not.i.i.i241, label %if.then.i.i.i242, label %folio_zone.exit245, !prof !223

if.then.i.i.i242:                                 ; preds = %folio_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

folio_zone.exit245:                               ; preds = %folio_zone.exit
  %shr.i.i.i243 = lshr i32 %59, 30
  %60 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xas, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %61) #12
  %_refcount.i.i246 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i247 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i246, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !251
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i246, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %folio_zone.exit245
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i246, ptr %_refcount.i.i246, i32 %add, i32 0, ptr elementtype(i32) %_refcount.i.i246) #12, !srcloc !252
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %62, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %arrayidx.i.i244 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i243
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %62, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !253
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %add)
  %cmp.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_freeze, i32 0, i32 1), ptr blockaddress(@folio_migrate_mapping, %if.then.i.i248)) #12
          to label %folio_ref_freeze.exit [label %if.then.i.i248], !srcloc !228

if.then.i.i248:                                   ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %lnot.ext.i.i = zext i1 %cmp.i.i to i32
  tail call void @__page_ref_freeze(ptr noundef %folio, i32 noundef %add, i32 noundef %lnot.ext.i.i) #12
  br label %folio_ref_freeze.exit

folio_ref_freeze.exit:                            ; preds = %if.then.i.i248, %atomic_cmpxchg.exit.i.i
  br i1 %cmp.i.i, label %if.end20, label %if.then17

if.then17:                                        ; preds = %folio_ref_freeze.exit
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xas, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %64) #12
  br label %cleanup

if.end20:                                         ; preds = %folio_ref_freeze.exit
  %index21 = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 3
  %65 = ptrtoint ptr %index21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %index21, align 4
  %index22 = getelementptr inbounds %struct.anon.107, ptr %newfolio, i32 0, i32 3
  %67 = ptrtoint ptr %index22 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %index22, align 4
  %mapping23 = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 2
  %68 = ptrtoint ptr %mapping23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mapping23, align 4
  %mapping24 = getelementptr inbounds %struct.anon.107, ptr %newfolio, i32 0, i32 2
  %70 = ptrtoint ptr %mapping24 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %mapping24, align 4
  %_refcount.i.i249 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 3
  %call.i.i.i.i250 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i249, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i249, i32 1, i32 3, i32 1) #12
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i249, ptr %_refcount.i.i249, i32 %retval.0.i.i237, ptr elementtype(i32) %_refcount.i.i249) #12, !srcloc !245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_migrate_mapping, %if.then.i.i251)) #12
          to label %folio_ref_add.exit [label %if.then.i.i251], !srcloc !228

if.then.i.i251:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %newfolio, i32 noundef %retval.0.i.i237) #12
  br label %folio_ref_add.exit

folio_ref_add.exit:                               ; preds = %if.then.i.i251, %if.end20
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %6, align 4
  %and.i.i.i149 = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i149)
  %tobool.not.i.i150 = icmp eq i32 %and.i.i.i149, 0
  br i1 %tobool.not.i.i150, label %folio_test_swapbacked.exit153, label %if.then.i.i151, !prof !222

if.then.i.i151:                                   ; preds = %folio_ref_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit153:                    ; preds = %folio_ref_add.exit
  %74 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %folio, align 4
  %76 = and i32 %75, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.i152.not = icmp eq i32 %76, 0
  br i1 %tobool.i152.not, label %do.body, label %if.then26

if.then26:                                        ; preds = %folio_test_swapbacked.exit153
  %77 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i.i154 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i154)
  %tobool.not.i.i155 = icmp eq i32 %and.i.i.i154, 0
  br i1 %tobool.not.i.i155, label %__folio_set_swapbacked.exit158, label %if.then.i.i156, !prof !222

if.then.i.i156:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

__folio_set_swapbacked.exit158:                   ; preds = %if.then26
  %80 = ptrtoint ptr %newfolio to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %newfolio, align 4
  %or.i.i157 = or i32 %81, 524288
  store i32 %or.i.i157, ptr %newfolio, align 4
  %82 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %__folio_set_swapbacked.exit158
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i:                     ; preds = %__folio_set_swapbacked.exit158
  %84 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %folio, align 4
  %86 = and i32 %85, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i, label %folio_test_swapbacked.exit.i.if.end42_crit_edge, label %land.rhs.i

folio_test_swapbacked.exit.i.if.end42_crit_edge:  ; preds = %folio_test_swapbacked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %6, align 4
  %and.i.i.i159 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i159)
  %tobool.not.i.i160 = icmp eq i32 %and.i.i.i159, 0
  br i1 %tobool.not.i.i160, label %folio_test_swapcache.exit, label %if.then.i.i161, !prof !222

if.then.i.i161:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %89 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %folio, align 4
  %91 = and i32 %90, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i162.not = icmp eq i32 %91, 0
  br i1 %tobool.i162.not, label %folio_test_swapcache.exit.if.end42_crit_edge, label %if.then28

folio_test_swapcache.exit.if.end42_crit_edge:     ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then28:                                        ; preds = %folio_test_swapcache.exit
  %92 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %77, align 4
  %and.i.i.i163 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i163)
  %tobool.not.i.i164 = icmp eq i32 %and.i.i.i163, 0
  br i1 %tobool.not.i.i164, label %folio_set_swapcache.exit, label %if.then.i.i165, !prof !222

if.then.i.i165:                                   ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_swapcache.exit:                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %newfolio) #12
  %private.i = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 4
  %94 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %private.i, align 4
  %private = getelementptr inbounds %struct.anon.107, ptr %newfolio, i32 0, i32 4
  %96 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %private, align 4
  br label %if.end42

do.body:                                          ; preds = %folio_test_swapbacked.exit153
  %97 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i167 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i167)
  %tobool.not.i.i.i168 = icmp eq i32 %and.i.i.i.i167, 0
  br i1 %tobool.not.i.i.i168, label %folio_test_swapbacked.exit.i171, label %if.then.i.i.i169, !prof !222

if.then.i.i.i169:                                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i171:                  ; preds = %do.body
  %99 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %folio, align 4
  %101 = and i32 %100, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i170 = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i170, label %folio_test_swapbacked.exit.i171.if.end42_crit_edge, label %land.rhs.i174

folio_test_swapbacked.exit.i171.if.end42_crit_edge: ; preds = %folio_test_swapbacked.exit.i171
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.rhs.i174:                                    ; preds = %folio_test_swapbacked.exit.i171
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %6, align 4
  %and.i.i.i172 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i172)
  %tobool.not.i.i173 = icmp eq i32 %and.i.i.i172, 0
  br i1 %tobool.not.i.i173, label %folio_test_swapcache.exit178, label %if.then.i.i175, !prof !222

if.then.i.i175:                                   ; preds = %land.rhs.i174
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapcache.exit178:                     ; preds = %land.rhs.i174
  %104 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %folio, align 4
  %106 = and i32 %105, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i176.not = icmp eq i32 %106, 0
  br i1 %tobool.i176.not, label %folio_test_swapcache.exit178.if.end42_crit_edge, label %if.then34, !prof !222

folio_test_swapcache.exit178.if.end42_crit_edge:  ; preds = %folio_test_swapcache.exit178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then34:                                        ; preds = %folio_test_swapcache.exit178
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.15) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #12, !srcloc !254
  unreachable

if.end42:                                         ; preds = %folio_test_swapcache.exit178.if.end42_crit_edge, %folio_test_swapbacked.exit.i171.if.end42_crit_edge, %folio_set_swapcache.exit, %folio_test_swapcache.exit.if.end42_crit_edge, %folio_test_swapbacked.exit.i.if.end42_crit_edge
  %107 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %6, align 4
  %and.i.i.i179 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i179)
  %tobool.not.i.i180 = icmp eq i32 %and.i.i.i179, 0
  br i1 %tobool.not.i.i180, label %folio_test_dirty.exit, label %if.then.i.i181, !prof !222

if.then.i.i181:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_dirty.exit:                            ; preds = %if.end42
  %109 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %folio, align 4
  %111 = and i32 %110, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.i182.not = icmp eq i32 %111, 0
  br i1 %tobool.i182.not, label %folio_test_dirty.exit.if.end46_crit_edge, label %if.then45

folio_test_dirty.exit.if.end46_crit_edge:         ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then45:                                        ; preds = %folio_test_dirty.exit
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %6, align 4
  %and.i.i.i184 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i184)
  %tobool.not.i.i185 = icmp eq i32 %and.i.i.i184, 0
  br i1 %tobool.not.i.i185, label %folio_clear_dirty.exit, label %if.then.i.i186, !prof !222

if.then.i.i186:                                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_clear_dirty.exit:                           ; preds = %if.then45
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %folio) #12
  %114 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %114, align 4
  %and.i.i.i188 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i188)
  %tobool.not.i.i189 = icmp eq i32 %and.i.i.i188, 0
  br i1 %tobool.not.i.i189, label %folio_set_dirty.exit, label %if.then.i.i190, !prof !222

if.then.i.i190:                                   ; preds = %folio_clear_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_dirty.exit:                             ; preds = %folio_clear_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %newfolio) #12
  br label %if.end46

if.end46:                                         ; preds = %folio_set_dirty.exit, %folio_test_dirty.exit.if.end46_crit_edge
  %call47 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef %newfolio) #12
  %sub = sub i32 %add, %retval.0.i.i237
  %117 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i252 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i252)
  %tobool.not.i.i.i.i253 = icmp eq i32 %and.i.i.i.i252, 0
  br i1 %tobool.not.i.i.i.i253, label %if.end.i.i.i.i, label %if.then.i.i.i.i254, !prof !222

if.then.i.i.i.i254:                               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add i32 %118, -1
  br label %page_count.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %119 = ptrtoint ptr %folio to i32
  br label %page_count.exit.i.i

page_count.exit.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i254
  %retval.0.i.i29.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i254 ], [ %119, %if.end.i.i.i.i ]
  %120 = inttoptr i32 %retval.0.i.i29.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %120, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %121 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.not.i.i = icmp eq i32 %122, 0
  br i1 %cmp.not.i.i, label %do.body6.i.i, label %if.then.i.i255, !prof !222

if.then.i.i255:                                   ; preds = %page_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.53) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page_ref.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #12, !srcloc !255
  unreachable

do.body6.i.i:                                     ; preds = %page_count.exit.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %retval.0.i.i237)
  %cmp7.i.i = icmp eq i32 %add, %retval.0.i.i237
  br i1 %cmp7.i.i, label %do.body15.i.i, label %do.end20.i.i, !prof !223

do.body15.i.i:                                    ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page_ref.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 333, 0\0A.popsection", ""() #12, !srcloc !256
  unreachable

do.end20.i.i:                                     ; preds = %do.body6.i.i
  %call.i.i.i.i257 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i246, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !257
  %123 = ptrtoint ptr %_refcount.i.i246 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 %sub, ptr %_refcount.i.i246, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_unfreeze, i32 0, i32 1), ptr blockaddress(@folio_migrate_mapping, %if.then22.i.i)) #12
          to label %folio_ref_unfreeze.exit [label %if.then22.i.i], !srcloc !228

if.then22.i.i:                                    ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_unfreeze(ptr noundef %folio, i32 noundef %sub) #12
  br label %folio_ref_unfreeze.exit

folio_ref_unfreeze.exit:                          ; preds = %if.then22.i.i, %do.end20.i.i
  %124 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock(ptr noundef %125) #12
  %cmp50.not = icmp eq ptr %arrayidx.i.i244, %arrayidx.i.i
  br i1 %cmp50.not, label %folio_ref_unfreeze.exit.do.body77_crit_edge, label %if.then52

folio_ref_unfreeze.exit.do.body77_crit_edge:      ; preds = %folio_ref_unfreeze.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

if.then52:                                        ; preds = %folio_ref_unfreeze.exit
  %126 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %6, align 4
  %and.i.i.i258 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i258)
  %tobool.not.i.i259 = icmp eq i32 %and.i.i.i258, 0
  br i1 %tobool.not.i.i259, label %do.body7.i.i, label %if.then.i.i260, !prof !222

if.then.i.i260:                                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.46) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 537, 0\0A.popsection", ""() #12, !srcloc !258
  unreachable

do.body7.i.i:                                     ; preds = %if.then52
  %memcg_data.i.i = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 7
  %128 = ptrtoint ptr %memcg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %memcg_data.i.i, align 4
  %and.i.i261 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i261)
  %tobool8.not.i.i = icmp eq i32 %and.i.i261, 0
  br i1 %tobool8.not.i.i, label %folio_memcg_kmem.exit.i, label %if.then15.i.i, !prof !222

if.then15.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.47) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 538, 0\0A.popsection", ""() #12, !srcloc !259
  unreachable

folio_memcg_kmem.exit.i:                          ; preds = %do.body7.i.i
  %and23.i.i = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.i.not.i = icmp eq i32 %and23.i.i, 0
  %130 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i9.i = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i9.i)
  %tobool.not.i.i.i10.i = icmp eq i32 %and.i.i.i.i9.i, 0
  br i1 %tobool24.i.not.i, label %if.end.i265, label %if.then.i262

if.then.i262:                                     ; preds = %folio_memcg_kmem.exit.i
  br i1 %tobool.not.i.i.i10.i, label %folio_test_slab.exit.i.i, label %if.then.i.i.i.i263, !prof !222

if.then.i.i.i.i263:                               ; preds = %if.then.i262
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_slab.exit.i.i:                         ; preds = %if.then.i262
  %132 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %folio, align 4
  %134 = and i32 %133, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.i.not.i.i264 = icmp eq i32 %134, 0
  br i1 %tobool.i.not.i.i264, label %__folio_objcg.exit.i, label %if.then.i6.i, !prof !222

if.then.i6.i:                                     ; preds = %folio_test_slab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.48) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #12, !srcloc !260
  unreachable

__folio_objcg.exit.i:                             ; preds = %folio_test_slab.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and48.i.i = and i32 %129, -4
  %135 = inttoptr i32 %and48.i.i to ptr
  %memcg.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %memcg.i.i, align 4
  br label %folio_memcg.exit

if.end.i265:                                      ; preds = %folio_memcg_kmem.exit.i
  br i1 %tobool.not.i.i.i10.i, label %folio_test_slab.exit.i13.i, label %if.then.i.i.i11.i, !prof !222

if.then.i.i.i11.i:                                ; preds = %if.end.i265
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_slab.exit.i13.i:                       ; preds = %if.end.i265
  %138 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %folio, align 4
  %140 = and i32 %139, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.i.not.i12.i = icmp eq i32 %140, 0
  br i1 %tobool.i.not.i12.i, label %__folio_memcg.exit.i, label %if.then.i14.i, !prof !222

if.then.i14.i:                                    ; preds = %folio_test_slab.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.48) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/memcontrol.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #12, !srcloc !261
  unreachable

__folio_memcg.exit.i:                             ; preds = %folio_test_slab.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  %and46.i.i = and i32 %129, -4
  %141 = inttoptr i32 %and46.i.i to ptr
  br label %folio_memcg.exit

folio_memcg.exit:                                 ; preds = %__folio_memcg.exit.i, %__folio_objcg.exit.i
  %retval.0.i266 = phi ptr [ %137, %__folio_objcg.exit.i ], [ %141, %__folio_memcg.exit.i ]
  %zone_pgdat = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i, i32 4
  %142 = ptrtoint ptr %zone_pgdat to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %zone_pgdat, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@folio_migrate_mapping, %if.then.i267)) #12
          to label %if.end.i269 [label %if.then.i267], !srcloc !228

if.then.i267:                                     ; preds = %folio_memcg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %__lruvec.i = getelementptr inbounds %struct.pglist_data, ptr %143, i32 0, i32 26
  br label %out.i

if.end.i269:                                      ; preds = %folio_memcg.exit
  %tobool.not.i268 = icmp eq ptr %retval.0.i266, null
  br i1 %tobool.not.i268, label %if.then1.i, label %if.end.i269.if.end2.i_crit_edge

if.end.i269.if.end2.i_crit_edge:                  ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %144 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i269.if.end2.i_crit_edge
  %memcg.addr.0.i = phi ptr [ %retval.0.i266, %if.end.i269.if.end2.i_crit_edge ], [ %144, %if.then1.i ]
  %node_id.i = getelementptr inbounds %struct.pglist_data, ptr %143, i32 0, i32 8
  %145 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %node_id.i, align 64
  %arrayidx.i = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i, i32 0, i32 45, i32 %146
  %147 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end2.i, %if.then.i267
  %lruvec.0.i = phi ptr [ %__lruvec.i, %if.then.i267 ], [ %148, %if.end2.i ]
  %pgdat4.i = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i, i32 0, i32 7
  %149 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pgdat4.i, align 4
  %cmp.not.i = icmp eq ptr %150, %143
  br i1 %cmp.not.i, label %out.i.mem_cgroup_lruvec.exit_crit_edge, label %if.then7.i, !prof !222

out.i.mem_cgroup_lruvec.exit_crit_edge:           ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mem_cgroup_lruvec.exit

if.then7.i:                                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %151 = ptrtoint ptr %pgdat4.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %143, ptr %pgdat4.i, align 4
  br label %mem_cgroup_lruvec.exit

mem_cgroup_lruvec.exit:                           ; preds = %if.then7.i, %out.i.mem_cgroup_lruvec.exit_crit_edge
  %zone_pgdat55 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i.i243, i32 4
  %152 = ptrtoint ptr %zone_pgdat55 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %zone_pgdat55, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@folio_migrate_mapping, %if.then.i271)) #12
          to label %if.end.i273 [label %if.then.i271], !srcloc !228

if.then.i271:                                     ; preds = %mem_cgroup_lruvec.exit
  call void @__sanitizer_cov_trace_pc() #14
  %__lruvec.i270 = getelementptr inbounds %struct.pglist_data, ptr %153, i32 0, i32 26
  br label %out.i282

if.end.i273:                                      ; preds = %mem_cgroup_lruvec.exit
  %tobool.not.i272 = icmp eq ptr %retval.0.i266, null
  br i1 %tobool.not.i272, label %if.then1.i274, label %if.end.i273.if.end2.i278_crit_edge

if.end.i273.if.end2.i278_crit_edge:               ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2.i278

if.then1.i274:                                    ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %154 = load ptr, ptr @root_mem_cgroup, align 4
  br label %if.end2.i278

if.end2.i278:                                     ; preds = %if.then1.i274, %if.end.i273.if.end2.i278_crit_edge
  %memcg.addr.0.i275 = phi ptr [ %retval.0.i266, %if.end.i273.if.end2.i278_crit_edge ], [ %154, %if.then1.i274 ]
  %node_id.i276 = getelementptr inbounds %struct.pglist_data, ptr %153, i32 0, i32 8
  %155 = ptrtoint ptr %node_id.i276 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %node_id.i276, align 64
  %arrayidx.i277 = getelementptr %struct.mem_cgroup, ptr %memcg.addr.0.i275, i32 0, i32 45, i32 %156
  %157 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i277, align 4
  br label %out.i282

out.i282:                                         ; preds = %if.end2.i278, %if.then.i271
  %lruvec.0.i279 = phi ptr [ %__lruvec.i270, %if.then.i271 ], [ %158, %if.end2.i278 ]
  %pgdat4.i280 = getelementptr inbounds %struct.lruvec, ptr %lruvec.0.i279, i32 0, i32 7
  %159 = ptrtoint ptr %pgdat4.i280 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pgdat4.i280, align 4
  %cmp.not.i281 = icmp eq ptr %160, %153
  br i1 %cmp.not.i281, label %out.i282.mem_cgroup_lruvec.exit284_crit_edge, label %if.then7.i283, !prof !222

out.i282.mem_cgroup_lruvec.exit284_crit_edge:     ; preds = %out.i282
  call void @__sanitizer_cov_trace_pc() #14
  br label %mem_cgroup_lruvec.exit284

if.then7.i283:                                    ; preds = %out.i282
  call void @__sanitizer_cov_trace_pc() #14
  %161 = ptrtoint ptr %pgdat4.i280 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %153, ptr %pgdat4.i280, align 4
  br label %mem_cgroup_lruvec.exit284

mem_cgroup_lruvec.exit284:                        ; preds = %if.then7.i283, %out.i282.mem_cgroup_lruvec.exit284_crit_edge
  %sub57 = sub i32 0, %retval.0.i.i237
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i, i32 noundef 19, i32 noundef %sub57) #12
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i279, i32 noundef 19, i32 noundef %retval.0.i.i237) #12
  %162 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %6, align 4
  %and.i.i.i192 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i192)
  %tobool.not.i.i193 = icmp eq i32 %and.i.i.i192, 0
  br i1 %tobool.not.i.i193, label %folio_test_swapbacked.exit197, label %if.then.i.i194, !prof !222

if.then.i.i194:                                   ; preds = %mem_cgroup_lruvec.exit284
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit197:                    ; preds = %mem_cgroup_lruvec.exit284
  %164 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %folio, align 4
  %166 = and i32 %165, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.i195.not = icmp eq i32 %166, 0
  br i1 %tobool.i195.not, label %folio_test_swapbacked.exit197.if.end63_crit_edge, label %land.lhs.true

folio_test_swapbacked.exit197.if.end63_crit_edge: ; preds = %folio_test_swapbacked.exit197
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

land.lhs.true:                                    ; preds = %folio_test_swapbacked.exit197
  %167 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i198 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i198)
  %tobool.not.i.i.i199 = icmp eq i32 %and.i.i.i.i198, 0
  br i1 %tobool.not.i.i.i199, label %folio_test_swapbacked.exit.i202, label %if.then.i.i.i200, !prof !222

if.then.i.i.i200:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i202:                  ; preds = %land.lhs.true
  %169 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %folio, align 4
  %171 = and i32 %170, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.i.not.i201 = icmp eq i32 %171, 0
  br i1 %tobool.i.not.i201, label %folio_test_swapbacked.exit.i202.if.then61_crit_edge, label %land.rhs.i205

folio_test_swapbacked.exit.i202.if.then61_crit_edge: ; preds = %folio_test_swapbacked.exit.i202
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

land.rhs.i205:                                    ; preds = %folio_test_swapbacked.exit.i202
  %172 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %6, align 4
  %and.i.i.i203 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i203)
  %tobool.not.i.i204 = icmp eq i32 %and.i.i.i203, 0
  br i1 %tobool.not.i.i204, label %folio_test_swapcache.exit209, label %if.then.i.i206, !prof !222

if.then.i.i206:                                   ; preds = %land.rhs.i205
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapcache.exit209:                     ; preds = %land.rhs.i205
  %174 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %folio, align 4
  %176 = and i32 %175, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.i207.not = icmp eq i32 %176, 0
  br i1 %tobool.i207.not, label %folio_test_swapcache.exit209.if.then61_crit_edge, label %folio_test_swapcache.exit209.if.end63_crit_edge

folio_test_swapcache.exit209.if.end63_crit_edge:  ; preds = %folio_test_swapcache.exit209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

folio_test_swapcache.exit209.if.then61_crit_edge: ; preds = %folio_test_swapcache.exit209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.then61:                                        ; preds = %folio_test_swapcache.exit209.if.then61_crit_edge, %folio_test_swapbacked.exit.i202.if.then61_crit_edge
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i, i32 noundef 23, i32 noundef %sub57) #12
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i279, i32 noundef 23, i32 noundef %retval.0.i.i237) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %folio_test_swapcache.exit209.if.end63_crit_edge, %folio_test_swapbacked.exit197.if.end63_crit_edge
  %177 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %6, align 4
  %and.i.i.i.i210 = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i210)
  %tobool.not.i.i.i211 = icmp eq i32 %and.i.i.i.i210, 0
  br i1 %tobool.not.i.i.i211, label %folio_test_swapbacked.exit.i214, label %if.then.i.i.i212, !prof !222

if.then.i.i.i212:                                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i214:                  ; preds = %if.end63
  %179 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load volatile i32, ptr %folio, align 4
  %181 = and i32 %180, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool.i.not.i213 = icmp eq i32 %181, 0
  br i1 %tobool.i.not.i213, label %folio_test_swapbacked.exit.i214.if.end67_crit_edge, label %land.rhs.i217

folio_test_swapbacked.exit.i214.if.end67_crit_edge: ; preds = %folio_test_swapbacked.exit.i214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.rhs.i217:                                    ; preds = %folio_test_swapbacked.exit.i214
  %182 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load volatile i32, ptr %6, align 4
  %and.i.i.i215 = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i215)
  %tobool.not.i.i216 = icmp eq i32 %and.i.i.i215, 0
  br i1 %tobool.not.i.i216, label %folio_test_swapcache.exit221, label %if.then.i.i218, !prof !222

if.then.i.i218:                                   ; preds = %land.rhs.i217
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapcache.exit221:                     ; preds = %land.rhs.i217
  %184 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %folio, align 4
  %186 = and i32 %185, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.i219.not = icmp eq i32 %186, 0
  br i1 %tobool.i219.not, label %folio_test_swapcache.exit221.if.end67_crit_edge, label %if.then65

folio_test_swapcache.exit221.if.end67_crit_edge:  ; preds = %folio_test_swapcache.exit221
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then65:                                        ; preds = %folio_test_swapcache.exit221
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i, i32 noundef 39, i32 noundef %sub57) #12
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i279, i32 noundef 39, i32 noundef %retval.0.i.i237) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %folio_test_swapcache.exit221.if.end67_crit_edge, %folio_test_swapbacked.exit.i214.if.end67_crit_edge
  br i1 %tobool.i182.not, label %if.end67.do.body77_crit_edge, label %land.lhs.true69

if.end67.do.body77_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

land.lhs.true69:                                  ; preds = %if.end67
  %187 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mapping, align 4
  %call.i = call ptr @inode_to_bdi(ptr noundef %188) #12
  %capabilities.i = getelementptr inbounds %struct.backing_dev_info, ptr %call.i, i32 0, i32 6
  %189 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %190, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i285.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i285.not, label %land.lhs.true69.do.body77_crit_edge, label %if.then72

land.lhs.true69.do.body77_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body77

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i, i32 noundef 20, i32 noundef %sub57) #12
  call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i, i32 noundef 6, i32 noundef %sub57) #12
  call void @__mod_lruvec_state(ptr noundef %lruvec.0.i279, i32 noundef 20, i32 noundef %retval.0.i.i237) #12
  call void @__mod_zone_page_state(ptr noundef %arrayidx.i.i244, i32 noundef 6, i32 noundef %retval.0.i.i237) #12
  br label %do.body77

do.body77:                                        ; preds = %if.then72, %land.lhs.true69.do.body77_crit_edge, %if.end67.do.body77_crit_edge, %folio_ref_unfreeze.exit.do.body77_crit_edge
  call void @trace_hardirqs_on() #12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !262
  br label %cleanup

cleanup:                                          ; preds = %do.body77, %if.then17, %__folio_set_swapbacked.exit, %folio_test_swapbacked.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body77 ], [ -11, %if.then17 ], [ -11, %if.then.cleanup_crit_edge ], [ 0, %__folio_set_swapbacked.exit ], [ 0, %folio_test_swapbacked.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @migrate_huge_page_move_mapping(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #12
  %0 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %2 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %4 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 1
  %5 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %i_pages, ptr %xas, align 4
  %6 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %8, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %9, %if.end.i.i.i ]
  %10 = inttoptr i32 %retval.0.i.i.i to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !222

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %16 = and i32 %15, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !222

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %10, align 4
  %21 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.i.not.i = icmp eq i32 %21, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !222

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = tail call i32 @__page_file_index(ptr noundef %page) #12
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %23, %if.end.i ]
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %0, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %1, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %3, align 4
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %4, align 4
  %29 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xas, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %30) #12
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %page, align 4
  %and.i = and i32 %32, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %add = select i1 %tobool.i.not, i32 2, i32 3
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %34, -1
  br label %page_count.exit

if.end.i.i:                                       ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %page to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add)
  %cmp.not = icmp eq i32 %38, %add
  br i1 %cmp.not, label %lor.lhs.false, label %page_count.exit.cleanup_crit_edge

page_count.exit.cleanup_crit_edge:                ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %page_count.exit
  %call4 = call ptr @xas_load(ptr noundef nonnull %xas) #12
  %cmp5.not = icmp eq ptr %call4, %page
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %_refcount.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !251
  call void @llvm.prefetch.p0(ptr %_refcount.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %39 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i, ptr %_refcount.i, i32 %add, i32 0, ptr elementtype(i32) %_refcount.i) #12, !srcloc !252
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %39, 0
  %tobool.not.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i32, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %39, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !253
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %add)
  %cmp.i = icmp eq i32 %asmresult3.i.i.i.i, %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_freeze, i32 0, i32 1), ptr blockaddress(@migrate_huge_page_move_mapping, %if.then.i34)) #12
          to label %page_ref_freeze.exit [label %if.then.i34], !srcloc !228

if.then.i34:                                      ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %lnot.ext.i33 = zext i1 %cmp.i to i32
  call void @__page_ref_freeze(ptr noundef %page, i32 noundef %add, i32 noundef %lnot.ext.i33) #12
  br label %page_ref_freeze.exit

page_ref_freeze.exit:                             ; preds = %if.then.i34, %atomic_cmpxchg.exit.i
  br i1 %cmp.i, label %if.end12, label %page_ref_freeze.exit.cleanup_crit_edge

page_ref_freeze.exit.cleanup_crit_edge:           ; preds = %page_ref_freeze.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %page_ref_freeze.exit
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index, align 4
  %index13 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %index13 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %index13, align 4
  %mapping14 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %mapping14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mapping14, align 4
  %mapping15 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %mapping15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %mapping15, align 4
  %46 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  %and.i.i36 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %if.then.i.i39, !prof !222

if.then.i.i39:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i38 = add i32 %48, -1
  br label %_compound_head.exit.i

if.end.i.i40:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i.i38, %if.then.i.i39 ], [ %49, %if.end.i.i40 ]
  %50 = inttoptr i32 %retval.0.i.i41 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %51 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %52, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !223

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.52) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !244
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@migrate_huge_page_move_mapping, %if.then.i.i.i.i42)) #12
          to label %get_page.exit [label %if.then.i.i.i.i42], !srcloc !228

if.then.i.i.i.i42:                                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %50, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i42, %do.end5.i.i
  %call16 = call ptr @xas_store(ptr noundef nonnull %xas, ptr noundef %newpage) #12
  %sub = select i1 %tobool.i.not, i32 1, i32 2
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %6, align 4
  %and.i.i.i43 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i43)
  %tobool.not.i.i.i44 = icmp eq i32 %and.i.i.i43, 0
  br i1 %tobool.not.i.i.i44, label %if.end.i.i.i47, label %if.then.i.i.i46, !prof !222

if.then.i.i.i46:                                  ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i45 = add i32 %55, -1
  br label %page_count.exit.i

if.end.i.i.i47:                                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %page to i32
  br label %page_count.exit.i

page_count.exit.i:                                ; preds = %if.end.i.i.i47, %if.then.i.i.i46
  %retval.0.i.i29.i = phi i32 [ %sub.i.i.i45, %if.then.i.i.i46 ], [ %56, %if.end.i.i.i47 ]
  %57 = inttoptr i32 %retval.0.i.i29.i to ptr
  %_refcount.i.i.i.i48 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  %call.i.i.i.i.i.i49 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i48, i32 noundef 4) #12
  %58 = ptrtoint ptr %_refcount.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_refcount.i.i.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i, label %do.body6.i, label %if.then.i50, !prof !222

if.then.i50:                                      ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.53) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page_ref.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 332, 0\0A.popsection", ""() #12, !srcloc !255
  unreachable

do.body6.i:                                       ; preds = %page_count.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !257
  %60 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %sub, ptr %_refcount.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_unfreeze, i32 0, i32 1), ptr blockaddress(@migrate_huge_page_move_mapping, %if.then22.i)) #12
          to label %cleanup [label %if.then22.i], !srcloc !228

if.then22.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_unfreeze(ptr noundef %page, i32 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then22.i, %do.body6.i, %page_ref_freeze.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %page_count.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %page_count.exit.cleanup_crit_edge ], [ -11, %page_ref_freeze.exit.cleanup_crit_edge ], [ 0, %do.body6.i ], [ 0, %if.then22.i ]
  %61 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %61)
  %.sink = load ptr, ptr %xas, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %.sink) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_migrate_flags(ptr noundef %newfolio, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_error.exit, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_error.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %folio_test_error.exit.if.end_crit_edge, label %if.then

folio_test_error.exit.if.end_crit_edge:           ; preds = %folio_test_error.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %folio_test_error.exit
  %6 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i.i98 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98)
  %tobool.not.i.i99 = icmp eq i32 %and.i.i.i98, 0
  br i1 %tobool.not.i.i99, label %folio_set_error.exit, label %if.then.i.i100, !prof !222

if.then.i.i100:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_error.exit:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 8, ptr noundef %newfolio) #12
  br label %if.end

if.end:                                           ; preds = %folio_set_error.exit, %folio_test_error.exit.if.end_crit_edge
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %0, align 4
  %and.i.i.i101 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i101)
  %tobool.not.i.i102 = icmp eq i32 %and.i.i.i101, 0
  br i1 %tobool.not.i.i102, label %folio_test_referenced.exit, label %if.then.i.i103, !prof !222

if.then.i.i103:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_referenced.exit:                       ; preds = %if.end
  %11 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %folio, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i104.not = icmp eq i32 %13, 0
  br i1 %tobool.i104.not, label %folio_test_referenced.exit.if.end3_crit_edge, label %if.then2

folio_test_referenced.exit.if.end3_crit_edge:     ; preds = %folio_test_referenced.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then2:                                         ; preds = %folio_test_referenced.exit
  %14 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i.i105 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i105)
  %tobool.not.i.i106 = icmp eq i32 %and.i.i.i105, 0
  br i1 %tobool.not.i.i106, label %folio_set_referenced.exit, label %if.then.i.i107, !prof !222

if.then.i.i107:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_referenced.exit:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %newfolio) #12
  br label %if.end3

if.end3:                                          ; preds = %folio_set_referenced.exit, %folio_test_referenced.exit.if.end3_crit_edge
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %0, align 4
  %and.i.i.i184 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i184)
  %tobool.not.i.i185 = icmp eq i32 %and.i.i.i184, 0
  br i1 %tobool.not.i.i185, label %folio_flags.exit.i188, label %if.then.i.i186, !prof !222

if.then.i.i186:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i188:                            ; preds = %if.end3
  %19 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %folio, align 4
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i187.not = icmp eq i32 %21, 0
  br i1 %tobool.i187.not, label %folio_flags.exit.i188.if.end6_crit_edge, label %if.then5

folio_flags.exit.i188.if.end6_crit_edge:          ; preds = %folio_flags.exit.i188
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %folio_flags.exit.i188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !264
  %22 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i108 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i108)
  %tobool.not.i.i109 = icmp eq i32 %and.i.i.i108, 0
  br i1 %tobool.not.i.i109, label %folio_mark_uptodate.exit, label %if.then.i.i110, !prof !222

if.then.i.i110:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_mark_uptodate.exit:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef %newfolio) #12
  br label %if.end6

if.end6:                                          ; preds = %folio_mark_uptodate.exit, %folio_flags.exit.i188.if.end6_crit_edge
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %0, align 4
  %and.i.i.i111 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %and.i.i.i111, 0
  br i1 %tobool.not.i.i112, label %folio_test_clear_active.exit, label %if.then.i.i113, !prof !222

if.then.i.i113:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_clear_active.exit:                     ; preds = %if.end6
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %folio) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.i114.not = icmp eq i32 %call1.i, 0
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %0, align 4
  %and.i.i.i122 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i122)
  %tobool.not.i.i123 = icmp eq i32 %and.i.i.i122, 0
  br i1 %tobool.i114.not, label %if.else, label %do.body

do.body:                                          ; preds = %folio_test_clear_active.exit
  br i1 %tobool.not.i.i123, label %folio_test_unevictable.exit, label %if.then.i.i117, !prof !222

if.then.i.i117:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_unevictable.exit:                      ; preds = %do.body
  %29 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %folio, align 4
  %31 = and i32 %30, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i118.not = icmp eq i32 %31, 0
  br i1 %tobool.i118.not, label %do.end18, label %if.then11, !prof !222

if.then11:                                        ; preds = %folio_test_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.16) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 524, 0\0A.popsection", ""() #12, !srcloc !265
  unreachable

do.end18:                                         ; preds = %folio_test_unevictable.exit
  %32 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i.i119 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i119)
  %tobool.not.i.i120 = icmp eq i32 %and.i.i.i119, 0
  br i1 %tobool.not.i.i120, label %do.end18.if.end22.sink.split_crit_edge, label %if.then.i.i121, !prof !222

do.end18.if.end22.sink.split_crit_edge:           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.sink.split

if.then.i.i121:                                   ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

if.else:                                          ; preds = %folio_test_clear_active.exit
  br i1 %tobool.not.i.i123, label %folio_test_clear_unevictable.exit, label %if.then.i.i124, !prof !222

if.then.i.i124:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_clear_unevictable.exit:                ; preds = %if.else
  %call1.i125 = tail call i32 @_test_and_clear_bit(i32 noundef 20, ptr noundef %folio) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %tobool.i126.not = icmp eq i32 %call1.i125, 0
  br i1 %tobool.i126.not, label %folio_test_clear_unevictable.exit.if.end22_crit_edge, label %if.then20

folio_test_clear_unevictable.exit.if.end22_crit_edge: ; preds = %folio_test_clear_unevictable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then20:                                        ; preds = %folio_test_clear_unevictable.exit
  %35 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i.i127 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i127)
  %tobool.not.i.i128 = icmp eq i32 %and.i.i.i127, 0
  br i1 %tobool.not.i.i128, label %if.then20.if.end22.sink.split_crit_edge, label %if.then.i.i129, !prof !222

if.then20.if.end22.sink.split_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.sink.split

if.then.i.i129:                                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

if.end22.sink.split:                              ; preds = %if.then20.if.end22.sink.split_crit_edge, %do.end18.if.end22.sink.split_crit_edge
  %.sink = phi i32 [ 5, %do.end18.if.end22.sink.split_crit_edge ], [ 20, %if.then20.if.end22.sink.split_crit_edge ]
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %newfolio) #12
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %folio_test_clear_unevictable.exit.if.end22_crit_edge
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %0, align 4
  %and.i.i.i130 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i130)
  %tobool.not.i.i131 = icmp eq i32 %and.i.i.i130, 0
  br i1 %tobool.not.i.i131, label %folio_test_workingset.exit, label %if.then.i.i132, !prof !222

if.then.i.i132:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_workingset.exit:                       ; preds = %if.end22
  %40 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %folio, align 4
  %42 = and i32 %41, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i133.not = icmp eq i32 %42, 0
  br i1 %tobool.i133.not, label %folio_test_workingset.exit.if.end25_crit_edge, label %if.then24

folio_test_workingset.exit.if.end25_crit_edge:    ; preds = %folio_test_workingset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %folio_test_workingset.exit
  %43 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i134 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i134)
  %tobool.not.i.i135 = icmp eq i32 %and.i.i.i134, 0
  br i1 %tobool.not.i.i135, label %folio_set_workingset.exit, label %if.then.i.i136, !prof !222

if.then.i.i136:                                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_workingset.exit:                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 6, ptr noundef %newfolio) #12
  br label %if.end25

if.end25:                                         ; preds = %folio_set_workingset.exit, %folio_test_workingset.exit.if.end25_crit_edge
  %46 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %0, align 4
  %and.i.i.i137 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i137)
  %tobool.not.i.i138 = icmp eq i32 %and.i.i.i137, 0
  br i1 %tobool.not.i.i138, label %folio_test_checked.exit, label %if.then.i.i139, !prof !222

if.then.i.i139:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_checked.exit:                          ; preds = %if.end25
  %48 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %folio, align 4
  %50 = and i32 %49, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i140.not = icmp eq i32 %50, 0
  br i1 %tobool.i140.not, label %folio_test_checked.exit.if.end28_crit_edge, label %if.then27

folio_test_checked.exit.if.end28_crit_edge:       ; preds = %folio_test_checked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %folio_test_checked.exit
  %51 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i.i141 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i141)
  %tobool.not.i.i142 = icmp eq i32 %and.i.i.i141, 0
  br i1 %tobool.not.i.i142, label %folio_set_checked.exit, label %if.then.i.i143, !prof !222

if.then.i.i143:                                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_checked.exit:                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 10, ptr noundef %newfolio) #12
  br label %if.end28

if.end28:                                         ; preds = %folio_set_checked.exit, %folio_test_checked.exit.if.end28_crit_edge
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %0, align 4
  %and.i.i.i144 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i144)
  %tobool.not.i.i145 = icmp eq i32 %and.i.i.i144, 0
  br i1 %tobool.not.i.i145, label %folio_test_mappedtodisk.exit, label %if.then.i.i146, !prof !222

if.then.i.i146:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_mappedtodisk.exit:                     ; preds = %if.end28
  %56 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %folio, align 4
  %58 = and i32 %57, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i147.not = icmp eq i32 %58, 0
  br i1 %tobool.i147.not, label %folio_test_mappedtodisk.exit.if.end31_crit_edge, label %if.then30

folio_test_mappedtodisk.exit.if.end31_crit_edge:  ; preds = %folio_test_mappedtodisk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %folio_test_mappedtodisk.exit
  %59 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i.i148 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i148)
  %tobool.not.i.i149 = icmp eq i32 %and.i.i.i148, 0
  br i1 %tobool.not.i.i149, label %folio_set_mappedtodisk.exit, label %if.then.i.i150, !prof !222

if.then.i.i150:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_mappedtodisk.exit:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 17, ptr noundef %newfolio) #12
  br label %if.end31

if.end31:                                         ; preds = %folio_set_mappedtodisk.exit, %folio_test_mappedtodisk.exit.if.end31_crit_edge
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %0, align 4
  %and.i.i.i151 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i151)
  %tobool.not.i.i152 = icmp eq i32 %and.i.i.i151, 0
  br i1 %tobool.not.i.i152, label %folio_test_dirty.exit, label %if.then.i.i153, !prof !222

if.then.i.i153:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_dirty.exit:                            ; preds = %if.end31
  %64 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %folio, align 4
  %66 = and i32 %65, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i154.not = icmp eq i32 %66, 0
  br i1 %tobool.i154.not, label %folio_test_dirty.exit.if.end34_crit_edge, label %if.then33

folio_test_dirty.exit.if.end34_crit_edge:         ; preds = %folio_test_dirty.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %folio_test_dirty.exit
  %67 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %and.i.i.i155 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i155)
  %tobool.not.i.i156 = icmp eq i32 %and.i.i.i155, 0
  br i1 %tobool.not.i.i156, label %folio_set_dirty.exit, label %if.then.i.i157, !prof !222

if.then.i.i157:                                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_dirty.exit:                             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef %newfolio) #12
  br label %if.end34

if.end34:                                         ; preds = %folio_set_dirty.exit, %folio_test_dirty.exit.if.end34_crit_edge
  %call.i = tail call ptr @lookup_page_ext(ptr noundef %folio) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end34.if.end37_crit_edge, label %folio_test_young.exit, !prof !223

if.end34.if.end37_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

folio_test_young.exit:                            ; preds = %if.end34
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %call.i, align 4
  %72 = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool5.i.not = icmp eq i32 %72, 0
  br i1 %tobool5.i.not, label %folio_test_young.exit.if.end37_crit_edge, label %if.then36

folio_test_young.exit.if.end37_crit_edge:         ; preds = %folio_test_young.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %folio_test_young.exit
  %call.i189 = tail call ptr @lookup_page_ext(ptr noundef %newfolio) #12
  %tobool.not.i190 = icmp eq ptr %call.i189, null
  br i1 %tobool.not.i190, label %if.then36.if.end37_crit_edge, label %if.end.i191, !prof !223

if.then36.if.end37_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end.i191:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i189) #12
  br label %if.end37

if.end37:                                         ; preds = %if.end.i191, %if.then36.if.end37_crit_edge, %folio_test_young.exit.if.end37_crit_edge, %if.end34.if.end37_crit_edge
  %call.i192 = tail call ptr @lookup_page_ext(ptr noundef %folio) #12
  %tobool.not.i193 = icmp eq ptr %call.i192, null
  br i1 %tobool.not.i193, label %if.end37.if.end40_crit_edge, label %folio_test_idle.exit, !prof !223

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

folio_test_idle.exit:                             ; preds = %if.end37
  %73 = ptrtoint ptr %call.i192 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %call.i192, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool5.i194.not = icmp eq i32 %75, 0
  br i1 %tobool5.i194.not, label %folio_test_idle.exit.if.end40_crit_edge, label %if.then39

folio_test_idle.exit.if.end40_crit_edge:          ; preds = %folio_test_idle.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %folio_test_idle.exit
  %call.i197 = tail call ptr @lookup_page_ext(ptr noundef %newfolio) #12
  %tobool.not.i198 = icmp eq ptr %call.i197, null
  br i1 %tobool.not.i198, label %if.then39.if.end40_crit_edge, label %if.end.i199, !prof !223

if.then39.if.end40_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end.i199:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 3, ptr noundef nonnull %call.i197) #12
  br label %if.end40

if.end40:                                         ; preds = %if.end.i199, %if.then39.if.end40_crit_edge, %folio_test_idle.exit.if.end40_crit_edge, %if.end37.if.end40_crit_edge
  %76 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp.i.not.i.i = icmp eq i32 %77, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i200, label %page_cpupid_xchg_last.exit, !prof !223

if.then.i.i200:                                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

page_cpupid_xchg_last.exit:                       ; preds = %if.end40
  %78 = ptrtoint ptr %newfolio to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %newfolio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp.i.not.i.i201 = icmp eq i32 %79, -1
  br i1 %cmp.i.not.i.i201, label %if.then.i.i202, label %page_cpupid_xchg_last.exit203, !prof !223

if.then.i.i202:                                   ; preds = %page_cpupid_xchg_last.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

page_cpupid_xchg_last.exit203:                    ; preds = %page_cpupid_xchg_last.exit
  tail call void @folio_migrate_ksm(ptr noundef %newfolio, ptr noundef %folio) #12
  %80 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapbacked.exit.i, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %page_cpupid_xchg_last.exit203
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapbacked.exit.i:                     ; preds = %page_cpupid_xchg_last.exit203
  %82 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %folio, align 4
  %84 = and i32 %83, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i, label %folio_test_swapbacked.exit.i.if.end45_crit_edge, label %land.rhs.i

folio_test_swapbacked.exit.i.if.end45_crit_edge:  ; preds = %folio_test_swapbacked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

land.rhs.i:                                       ; preds = %folio_test_swapbacked.exit.i
  %85 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %0, align 4
  %and.i.i.i158 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i158)
  %tobool.not.i.i159 = icmp eq i32 %and.i.i.i158, 0
  br i1 %tobool.not.i.i159, label %folio_test_swapcache.exit, label %if.then.i.i160, !prof !222

if.then.i.i160:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_swapcache.exit:                        ; preds = %land.rhs.i
  %87 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %folio, align 4
  %89 = and i32 %88, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.i161.not = icmp eq i32 %89, 0
  br i1 %tobool.i161.not, label %folio_test_swapcache.exit.if.end45_crit_edge, label %if.then44

folio_test_swapcache.exit.if.end45_crit_edge:     ; preds = %folio_test_swapcache.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then44:                                        ; preds = %folio_test_swapcache.exit
  %90 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %0, align 4
  %and.i.i.i162 = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i162)
  %tobool.not.i.i163 = icmp eq i32 %and.i.i.i162, 0
  br i1 %tobool.not.i.i163, label %folio_clear_swapcache.exit, label %if.then.i.i164, !prof !222

if.then.i.i164:                                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_clear_swapcache.exit:                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %folio) #12
  br label %if.end45

if.end45:                                         ; preds = %folio_clear_swapcache.exit, %folio_test_swapcache.exit.if.end45_crit_edge, %folio_test_swapbacked.exit.i.if.end45_crit_edge
  %92 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %0, align 4
  %and.i.i.i166 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i166)
  %tobool.not.i.i167 = icmp eq i32 %and.i.i.i166, 0
  br i1 %tobool.not.i.i167, label %folio_clear_private.exit, label %if.then.i.i168, !prof !222

if.then.i.i168:                                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_clear_private.exit:                         ; preds = %if.end45
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #12
  %private = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 4
  %94 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %private, align 4
  %95 = getelementptr inbounds %struct.page, ptr %newfolio, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  %and.i.i.i170 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i170)
  %tobool.not.i.i171 = icmp eq i32 %and.i.i.i170, 0
  br i1 %tobool.not.i.i171, label %folio_test_writeback.exit, label %if.then.i.i172, !prof !222

if.then.i.i172:                                   ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_writeback.exit:                        ; preds = %folio_clear_private.exit
  %98 = ptrtoint ptr %newfolio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %newfolio, align 4
  %100 = and i32 %99, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i173.not = icmp eq i32 %100, 0
  br i1 %tobool.i173.not, label %folio_test_writeback.exit.if.end51_crit_edge, label %if.then50

folio_test_writeback.exit.if.end51_crit_edge:     ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @folio_end_writeback(ptr noundef %newfolio) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %folio_test_writeback.exit.if.end51_crit_edge
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %0, align 4
  %and.i.i.i175 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i175)
  %tobool.not.i.i176 = icmp eq i32 %and.i.i.i175, 0
  br i1 %tobool.not.i.i176, label %folio_test_readahead.exit, label %if.then.i.i177, !prof !222

if.then.i.i177:                                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_readahead.exit:                        ; preds = %if.end51
  %103 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %folio, align 4
  %105 = and i32 %104, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i178.not = icmp eq i32 %105, 0
  br i1 %tobool.i178.not, label %folio_test_readahead.exit.if.end54_crit_edge, label %if.then53

folio_test_readahead.exit.if.end54_crit_edge:     ; preds = %folio_test_readahead.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %folio_test_readahead.exit
  %106 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %95, align 4
  %and.i.i.i180 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i180)
  %tobool.not.i.i181 = icmp eq i32 %and.i.i.i180, 0
  br i1 %tobool.not.i.i181, label %folio_set_readahead.exit, label %if.then.i.i182, !prof !222

if.then.i.i182:                                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newfolio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_set_readahead.exit:                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 18, ptr noundef %newfolio) #12
  br label %if.end54

if.end54:                                         ; preds = %folio_set_readahead.exit, %folio_test_readahead.exit.if.end54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_owner_inited, ptr blockaddress(@folio_migrate_flags, %if.then.i)) #12
          to label %folio_copy_owner.exit [label %if.then.i], !srcloc !228

if.then.i:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__folio_copy_owner(ptr noundef %newfolio, ptr noundef %folio) #12
  br label %folio_copy_owner.exit

folio_copy_owner.exit:                            ; preds = %if.then.i, %if.end54
  tail call void @mem_cgroup_migrate(ptr noundef %folio, ptr noundef %newfolio) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_ksm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mem_cgroup_migrate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @folio_migrate_copy(ptr noundef %newfolio, ptr noundef %folio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @folio_copy(ptr noundef %newfolio, ptr noundef %folio) #12
  tail call void @folio_migrate_flags(ptr noundef %newfolio, ptr noundef %folio)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !222

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i24 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.end.i28, label %if.then.i27, !prof !222

if.then.i27:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i26 = add i32 %7, -1
  br label %_compound_head.exit30

if.end.i28:                                       ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit30

_compound_head.exit30:                            ; preds = %if.end.i28, %if.then.i27
  %retval.0.i29 = phi i32 [ %sub.i26, %if.then.i27 ], [ %8, %if.end.i28 ]
  %9 = inttoptr i32 %retval.0.i29 to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_writeback.exit, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %_compound_head.exit30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_writeback.exit:                        ; preds = %_compound_head.exit30
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %15 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %do.end9, label %do.body4, !prof !222

do.body4:                                         ; preds = %folio_test_writeback.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #12, !srcloc !266
  unreachable

do.end9:                                          ; preds = %folio_test_writeback.exit
  %call10 = tail call i32 @folio_migrate_mapping(ptr noundef %mapping, ptr noundef %4, ptr noundef %9, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end12, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp13.not = icmp eq i32 %mode, 3
  br i1 %cmp13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @folio_copy(ptr noundef %4, ptr noundef %9) #12
  tail call void @folio_migrate_flags(ptr noundef %4, ptr noundef %9) #12
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @folio_migrate_flags(ptr noundef %4, ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %do.end9.cleanup_crit_edge
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @buffer_migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__buffer_migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__buffer_migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode, i1 noundef zeroext %check_refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !223

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !267
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode)
  br label %cleanup63

if.end:                                           ; preds = %PagePrivate.exit
  %tobool.not.i = icmp eq ptr %mapping, null
  br i1 %tobool.not.i, label %if.end.expected_page_refs.exit_crit_edge, label %if.then.i110

if.end.expected_page_refs.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %expected_page_refs.exit

if.then.i110:                                     ; preds = %if.end
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i.i.i = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageHead.exit.i.i, !prof !223

if.then.i.i.i:                                    ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !250
  unreachable

PageHead.exit.i.i:                                ; preds = %if.then.i110
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  %9 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %PageHead.exit.i.i.compound_nr.exit.i_crit_edge, label %if.end.i.i

PageHead.exit.i.i.compound_nr.exit.i_crit_edge:   ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_nr.exit.i

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i.i = getelementptr %struct.page, ptr %page, i32 1, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %compound_nr.i.i, align 4
  br label %compound_nr.exit.i

compound_nr.exit.i:                               ; preds = %if.end.i.i, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %11, %if.end.i.i ], [ 1, %PageHead.exit.i.i.compound_nr.exit.i_crit_edge ]
  %and.i.i = and i32 %8, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %add3.i = select i1 %tobool.i.not.i, i32 1, i32 2
  %add4.i = add i32 %retval.0.i.i, %add3.i
  br label %expected_page_refs.exit

expected_page_refs.exit:                          ; preds = %compound_nr.exit.i, %if.end.expected_page_refs.exit_crit_edge
  %expected_count.0.i = phi i32 [ %add4.i, %compound_nr.exit.i ], [ 1, %if.end.expected_page_refs.exit_crit_edge ]
  %12 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i111 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111)
  %tobool.not.i.i112 = icmp eq i32 %and.i.i111, 0
  br i1 %tobool.not.i.i112, label %if.end.i.i113, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %expected_page_refs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %14, -1
  br label %page_count.exit

if.end.i.i113:                                    ; preds = %expected_page_refs.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %page to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i113, %if.then.i.i
  %retval.0.i.i114 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i113 ]
  %16 = inttoptr i32 %retval.0.i.i114 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  %17 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %expected_count.0.i)
  %cmp.not = icmp eq i32 %18, %expected_count.0.i
  br i1 %cmp.not, label %do.body, label %page_count.exit.cleanup63_crit_edge

page_count.exit.cleanup63_crit_edge:              ; preds = %page_count.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

do.body:                                          ; preds = %page_count.exit
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i105 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i105, label %if.then.i106, label %PagePrivate.exit109, !prof !223

if.then.i106:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !267
  unreachable

PagePrivate.exit109:                              ; preds = %do.body
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  %23 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  br i1 %tobool7.not, label %do.body12, label %do.end18, !prof !223

do.body12:                                        ; preds = %PagePrivate.exit109
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 681, 0\0A.popsection", ""() #12, !srcloc !268
  unreachable

do.end18:                                         ; preds = %PagePrivate.exit109
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %private, align 4
  %26 = inttoptr i32 %25 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.not.i = icmp eq i32 %mode, 0
  br i1 %cmp.not.i, label %do.end18.do.body2.i_crit_edge, label %do.end18.do.body.i_crit_edge

do.end18.do.body.i_crit_edge:                     ; preds = %do.end18
  br label %do.body.i

do.end18.do.body2.i_crit_edge:                    ; preds = %do.end18
  br label %do.body2.i

do.body.i:                                        ; preds = %lock_buffer.exit.i.do.body.i_crit_edge, %do.end18.do.body.i_crit_edge
  %bh.0.i = phi ptr [ %32, %lock_buffer.exit.i.do.body.i_crit_edge ], [ %26, %do.end18.do.body.i_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.54, i32 noundef 366) #12
  %call.i.i.i.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0.i, i32 noundef 4) #12
  %27 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh.0.i, align 4
  %and.i.i.i.i.i = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %do.body.i.if.then.i.i116_crit_edge

do.body.i.if.then.i.i116_crit_edge:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i116

trylock_buffer.exit.i.i:                          ; preds = %do.body.i
  tail call void @llvm.prefetch.p0(ptr %bh.0.i, i32 1, i32 3, i32 1) #12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0.i, ptr %bh.0.i, i32 4, ptr elementtype(i32) %bh.0.i) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %30 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i.i116_crit_edge

trylock_buffer.exit.i.i.if.then.i.i116_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i116

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit.i

if.then.i.i116:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i.i116_crit_edge, %do.body.i.if.then.i.i116_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0.i) #12
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i.i116, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_this_page.i, align 4
  %cmp1.not.i = icmp eq ptr %32, %26
  br i1 %cmp1.not.i, label %lock_buffer.exit.i.if.end21_crit_edge, label %lock_buffer.exit.i.do.body.i_crit_edge

lock_buffer.exit.i.do.body.i_crit_edge:           ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

lock_buffer.exit.i.if.end21_crit_edge:            ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.body2.i:                                       ; preds = %if.end6.i.do.body2.i_crit_edge, %do.end18.do.body2.i_crit_edge
  %bh.1.i = phi ptr [ %40, %if.end6.i.do.body2.i_crit_edge ], [ %26, %do.end18.do.body2.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.1.i, i32 noundef 4) #12
  %33 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %bh.1.i, align 4
  %and.i.i.i.i = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %do.body2.i.while.cond.preheader.i_crit_edge

do.body2.i.while.cond.preheader.i_crit_edge:      ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader.i

trylock_buffer.exit.i:                            ; preds = %do.body2.i
  tail call void @llvm.prefetch.p0(ptr %bh.1.i, i32 1, i32 3, i32 1) #12
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.1.i, ptr %bh.1.i, i32 4, ptr elementtype(i32) %bh.1.i) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %36 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.not.i, label %if.end6.i, label %trylock_buffer.exit.i.while.cond.preheader.i_crit_edge

trylock_buffer.exit.i.while.cond.preheader.i_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %trylock_buffer.exit.i.while.cond.preheader.i_crit_edge, %do.body2.i.while.cond.preheader.i_crit_edge
  %cmp4.not26.i = icmp eq ptr %bh.1.i, %26
  br i1 %cmp4.not26.i, label %while.cond.preheader.i.cleanup63_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.cleanup63_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %bh.227.i = phi ptr [ %38, %while.body.i.while.body.i_crit_edge ], [ %26, %while.cond.preheader.i.while.body.i_crit_edge ]
  tail call void @unlock_buffer(ptr noundef %bh.227.i) #12
  %b_this_page5.i = getelementptr inbounds %struct.buffer_head, ptr %bh.227.i, i32 0, i32 1
  %37 = ptrtoint ptr %b_this_page5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_this_page5.i, align 4
  %cmp4.not.i = icmp eq ptr %38, %bh.1.i
  br i1 %cmp4.not.i, label %while.body.i.cleanup63_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.cleanup63_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

if.end6.i:                                        ; preds = %trylock_buffer.exit.i
  %b_this_page7.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 1
  %39 = ptrtoint ptr %b_this_page7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_this_page7.i, align 4
  %cmp9.not.i = icmp eq ptr %40, %26
  br i1 %cmp9.not.i, label %if.end6.i.if.end21_crit_edge, label %if.end6.i.do.body2.i_crit_edge

if.end6.i.do.body2.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

if.end6.i.if.end21_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end21:                                         ; preds = %if.end6.i.if.end21_crit_edge, %lock_buffer.exit.i.if.end21_crit_edge
  br i1 %check_refs, label %recheck_buffers.preheader, label %if.end21.if.end40_crit_edge

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

recheck_buffers.preheader:                        ; preds = %if.end21
  %private_lock = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %private_lock) #12
  br label %do.body24

do.body24:                                        ; preds = %if.end28.do.body24_crit_edge, %recheck_buffers.preheader
  %bh.0 = phi ptr [ %26, %recheck_buffers.preheader ], [ %44, %if.end28.do.body24_crit_edge ]
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #12
  %41 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %b_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool26.not = icmp eq i32 %42, 0
  br i1 %tobool26.not, label %if.end28, label %if.then33.critedge

if.end28:                                         ; preds = %do.body24
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %43 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_this_page, align 4
  %cmp30.not = icmp eq ptr %44, %26
  br i1 %cmp30.not, label %if.end28.if.end40_crit_edge, label %if.end28.do.body24_crit_edge

if.end28.do.body24_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then33.critedge:                               ; preds = %do.body24
  tail call void @_raw_spin_unlock(ptr noundef %private_lock) #12
  tail call void @invalidate_bh_lrus() #12
  tail call void @_raw_spin_lock(ptr noundef %private_lock) #12
  br label %do.body24.1

do.body24.1:                                      ; preds = %if.end28.1.do.body24.1_crit_edge, %if.then33.critedge
  %bh.0.1 = phi ptr [ %26, %if.then33.critedge ], [ %48, %if.end28.1.do.body24.1_crit_edge ]
  %b_count.1 = getelementptr inbounds %struct.buffer_head, ptr %bh.0.1, i32 0, i32 11
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count.1, i32 noundef 4) #12
  %45 = ptrtoint ptr %b_count.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %b_count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool26.not.1 = icmp eq i32 %46, 0
  br i1 %tobool26.not.1, label %if.end28.1, label %do.body24.1.unlock_buffers_crit_edge

do.body24.1.unlock_buffers_crit_edge:             ; preds = %do.body24.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_buffers

if.end28.1:                                       ; preds = %do.body24.1
  %b_this_page.1 = getelementptr inbounds %struct.buffer_head, ptr %bh.0.1, i32 0, i32 1
  %47 = ptrtoint ptr %b_this_page.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_this_page.1, align 4
  %cmp30.not.1 = icmp eq ptr %48, %26
  br i1 %cmp30.not.1, label %if.end28.1.if.end40_crit_edge, label %if.end28.1.do.body24.1_crit_edge

if.end28.1.do.body24.1_crit_edge:                 ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24.1

if.end28.1.if.end40_crit_edge:                    ; preds = %if.end28.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %if.end28.1.if.end40_crit_edge, %if.end28.if.end40_crit_edge, %if.end21.if.end40_crit_edge
  %call41 = tail call i32 @migrate_page_move_mapping(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.end44, label %if.end40.unlock_buffers_crit_edge

if.end40.unlock_buffers_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_buffers

if.end44:                                         ; preds = %if.end40
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %12, align 4
  %and.i.i117 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %and.i.i117, 0
  br i1 %tobool.not.i.i118, label %if.end.i.i121, label %if.then.i.i120, !prof !222

if.then.i.i120:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i119 = add i32 %50, -1
  br label %detach_page_private.exit

if.end.i.i121:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %page to i32
  br label %detach_page_private.exit

detach_page_private.exit:                         ; preds = %if.end.i.i121, %if.then.i.i120
  %retval.0.i.i122 = phi i32 [ %sub.i.i119, %if.then.i.i120 ], [ %51, %if.end.i.i121 ]
  %52 = inttoptr i32 %retval.0.i.i122 to ptr
  %call1.i = tail call fastcc ptr @folio_detach_private(ptr noundef %52) #12
  tail call fastcc void @attach_page_private(ptr noundef %newpage, ptr noundef %call1.i)
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %detach_page_private.exit
  %bh.1 = phi ptr [ %26, %detach_page_private.exit ], [ %57, %do.body46.do.body46_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %53 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data, align 4
  %55 = ptrtoint ptr %54 to i32
  %and = and i32 %55, 4095
  tail call void @set_bh_page(ptr noundef %bh.1, ptr noundef %newpage, i32 noundef %and) #12
  %b_this_page47 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %56 = ptrtoint ptr %b_this_page47 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_this_page47, align 4
  %cmp49.not = icmp eq ptr %57, %26
  br i1 %cmp49.not, label %do.end50, label %do.body46.do.body46_crit_edge

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body46

do.end50:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mode)
  %cmp51.not = icmp eq i32 %mode, 3
  br i1 %cmp51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @migrate_page_copy(ptr noundef %newpage, ptr noundef %page) #12
  br label %unlock_buffers

if.else:                                          ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @migrate_page_states(ptr noundef %newpage, ptr noundef %page) #12
  br label %unlock_buffers

unlock_buffers:                                   ; preds = %if.else, %if.then52, %if.end40.unlock_buffers_crit_edge, %do.body24.1.unlock_buffers_crit_edge
  %rc.1 = phi i32 [ %call41, %if.end40.unlock_buffers_crit_edge ], [ 0, %if.else ], [ 0, %if.then52 ], [ -11, %do.body24.1.unlock_buffers_crit_edge ]
  br i1 %check_refs, label %if.then55, label %unlock_buffers.do.body58.preheader_crit_edge

unlock_buffers.do.body58.preheader_crit_edge:     ; preds = %unlock_buffers
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58.preheader

if.then55:                                        ; preds = %unlock_buffers
  call void @__sanitizer_cov_trace_pc() #14
  %private_lock56 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %private_lock56) #12
  br label %do.body58.preheader

do.body58.preheader:                              ; preds = %if.then55, %unlock_buffers.do.body58.preheader_crit_edge
  br label %do.body58

do.body58:                                        ; preds = %do.body58.do.body58_crit_edge, %do.body58.preheader
  %bh.2 = phi ptr [ %59, %do.body58.do.body58_crit_edge ], [ %26, %do.body58.preheader ]
  tail call void @unlock_buffer(ptr noundef %bh.2) #12
  %b_this_page59 = getelementptr inbounds %struct.buffer_head, ptr %bh.2, i32 0, i32 1
  %58 = ptrtoint ptr %b_this_page59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_this_page59, align 4
  %cmp61.not = icmp eq ptr %59, %26
  br i1 %cmp61.not, label %do.body58.cleanup63_crit_edge, label %do.body58.do.body58_crit_edge

do.body58.do.body58_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body58

do.body58.cleanup63_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup63

cleanup63:                                        ; preds = %do.body58.cleanup63_crit_edge, %while.body.i.cleanup63_crit_edge, %while.cond.preheader.i.cleanup63_crit_edge, %page_count.exit.cleanup63_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ -11, %page_count.exit.cleanup63_crit_edge ], [ -11, %while.cond.preheader.i.cleanup63_crit_edge ], [ %rc.1, %do.body58.cleanup63_crit_edge ], [ -11, %while.body.i.cleanup63_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @buffer_migrate_page_norefs(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__buffer_migrate_page(ptr noundef %mapping, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @migrate_pages(ptr noundef %from, ptr nocapture noundef readonly %get_new_page, ptr noundef %put_new_page, i32 noundef %private, i32 noundef %mode, i32 noundef %reason, ptr noundef writeonly %ret_succeeded) local_unnamed_addr #0 align 64 {
entry:
  %ret_pages = alloca %struct.list_head, align 4
  %thp_split_pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 8388608
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret_pages) #12
  %6 = getelementptr inbounds %struct.list_head, ptr %ret_pages, i32 0, i32 1
  %7 = ptrtoint ptr %ret_pages to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ret_pages, ptr %ret_pages, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ret_pages, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %thp_split_pages) #12
  %9 = getelementptr inbounds %struct.list_head, ptr %thp_split_pages, i32 0, i32 1
  %10 = ptrtoint ptr %thp_split_pages to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %thp_split_pages, ptr %thp_split_pages, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %thp_split_pages, ptr %9, align 4
  call fastcc void @trace_mm_migrate_pages_start(i32 noundef %mode, i32 noundef %reason)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %flags5 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags5, align 4
  %or = or i32 %15, 8388608
  store i32 %or, ptr %flags5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %from, i32 0, i32 1
  br label %thp_subpage_migration

thp_subpage_migration:                            ; preds = %thp_subpage_migration.backedge, %if.end
  %no_subpage_counting.0.off0 = phi i32 [ 1, %if.end ], [ 0, %thp_subpage_migration.backedge ]
  %nr_succeeded.0 = phi i32 [ 0, %if.end ], [ %nr_succeeded.1.lcssa, %thp_subpage_migration.backedge ]
  %nr_failed_pages.0 = phi i32 [ 0, %if.end ], [ %nr_failed_pages.1.lcssa, %thp_subpage_migration.backedge ]
  %nr_failed.0 = phi i32 [ 0, %if.end ], [ %add100, %thp_subpage_migration.backedge ]
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc97.land.rhs_crit_edge, %thp_subpage_migration
  %retry.1281 = phi i32 [ 1, %thp_subpage_migration ], [ %retry.2.lcssa, %for.inc97.land.rhs_crit_edge ]
  %thp_retry.1280 = phi i32 [ %no_subpage_counting.0.off0, %thp_subpage_migration ], [ 0, %for.inc97.land.rhs_crit_edge ]
  %nr_failed.1279 = phi i32 [ %nr_failed.0, %thp_subpage_migration ], [ %nr_failed.2.lcssa, %for.inc97.land.rhs_crit_edge ]
  %nr_failed_pages.1278 = phi i32 [ %nr_failed_pages.0, %thp_subpage_migration ], [ %nr_failed_pages.2.lcssa, %for.inc97.land.rhs_crit_edge ]
  %nr_succeeded.1277 = phi i32 [ %nr_succeeded.0, %thp_subpage_migration ], [ %nr_succeeded.2.lcssa, %for.inc97.land.rhs_crit_edge ]
  %pass.0275 = phi i32 [ 0, %thp_subpage_migration ], [ %inc98, %for.inc97.land.rhs_crit_edge ]
  %16 = or i32 %retry.1281, %thp_retry.1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %land.rhs.for.end99_crit_edge, label %for.body

land.rhs.for.end99_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end99

for.body:                                         ; preds = %land.rhs
  %18 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %from, align 4
  %cmp16.not264 = icmp eq ptr %19, %from
  br i1 %cmp16.not264, label %for.body.for.inc97_crit_edge, label %retry18.lr.ph

for.body.for.inc97_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc97

retry18.lr.ph:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pass.0275)
  %cmp35 = icmp ugt i32 %pass.0275, 2
  %conv36 = zext i1 %cmp35 to i32
  br label %retry18

retry18:                                          ; preds = %for.inc.retry18_crit_edge, %retry18.lr.ph
  %retry.2269 = phi i32 [ 0, %retry18.lr.ph ], [ %retry.3, %for.inc.retry18_crit_edge ]
  %nr_failed.2268 = phi i32 [ %nr_failed.1279, %retry18.lr.ph ], [ %nr_failed.5, %for.inc.retry18_crit_edge ]
  %nr_failed_pages.2267 = phi i32 [ %nr_failed_pages.1278, %retry18.lr.ph ], [ %nr_failed_pages.3, %for.inc.retry18_crit_edge ]
  %nr_succeeded.2266 = phi i32 [ %nr_succeeded.1277, %retry18.lr.ph ], [ %nr_succeeded.3, %for.inc.retry18_crit_edge ]
  %.pn.in265 = phi ptr [ %19, %retry18.lr.ph ], [ %.pn271, %for.inc.retry18_crit_edge ]
  %page.0270 = getelementptr i8, ptr %.pn.in265, i32 -4
  %20 = ptrtoint ptr %.pn.in265 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn271 = load ptr, ptr %.pn.in265, align 4
  %21 = ptrtoint ptr %page.0270 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page.0270, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i.i = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PageHead.exit.i, !prof !223

if.then.i.i:                                      ; preds = %retry18
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page.0270, ptr noundef nonnull @.str.42) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #12, !srcloc !250
  unreachable

PageHead.exit.i:                                  ; preds = %retry18
  %23 = ptrtoint ptr %page.0270 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page.0270, align 4
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %PageHead.exit.i.compound_nr.exit_crit_edge, label %if.end.i

PageHead.exit.i.compound_nr.exit_crit_edge:       ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %compound_nr.exit

if.end.i:                                         ; preds = %PageHead.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %compound_nr.i = getelementptr i8, ptr %.pn.in265, i32 48
  %26 = ptrtoint ptr %compound_nr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %compound_nr.i, align 4
  br label %compound_nr.exit

compound_nr.exit:                                 ; preds = %if.end.i, %PageHead.exit.i.compound_nr.exit_crit_edge
  %retval.0.i = phi i32 [ %27, %if.end.i ], [ 1, %PageHead.exit.i.compound_nr.exit_crit_edge ]
  call void @__might_resched(ptr noundef nonnull @.str.13, i32 noundef 1380, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  %call37 = call fastcc i32 @unmap_and_move(ptr noundef %get_new_page, ptr noundef %put_new_page, i32 noundef %private, ptr noundef %page.0270, i32 noundef %conv36, i32 noundef %mode, i32 noundef %reason, ptr noundef nonnull %ret_pages)
  %28 = zext i32 %call37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call37, label %if.end86 [
    i32 -38, label %if.end46
    i32 -12, label %if.end64
    i32 -11, label %if.end74
    i32 0, label %sw.bb76
  ]

if.end46:                                         ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select = add i32 %nr_failed.2268, %no_subpage_counting.0.off0
  %add51 = add i32 %retval.0.i, %nr_failed_pages.2267
  br label %for.inc

if.end64:                                         ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add69 = add i32 %retval.0.i, %nr_failed_pages.2267
  br label %out

if.end74:                                         ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %inc75 = add i32 %retry.2269, 1
  br label %for.inc

sw.bb76:                                          ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add77 = add i32 %retval.0.i, %nr_succeeded.2266
  br label %for.inc

if.end86:                                         ; preds = %compound_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  %spec.select188 = add i32 %nr_failed.2268, %no_subpage_counting.0.off0
  %add91 = add i32 %retval.0.i, %nr_failed_pages.2267
  br label %for.inc

for.inc:                                          ; preds = %if.end86, %sw.bb76, %if.end74, %if.end46
  %nr_succeeded.3 = phi i32 [ %nr_succeeded.2266, %if.end86 ], [ %add77, %sw.bb76 ], [ %nr_succeeded.2266, %if.end74 ], [ %nr_succeeded.2266, %if.end46 ]
  %nr_failed_pages.3 = phi i32 [ %add91, %if.end86 ], [ %nr_failed_pages.2267, %sw.bb76 ], [ %nr_failed_pages.2267, %if.end74 ], [ %add51, %if.end46 ]
  %nr_failed.5 = phi i32 [ %spec.select188, %if.end86 ], [ %nr_failed.2268, %sw.bb76 ], [ %nr_failed.2268, %if.end74 ], [ %spec.select, %if.end46 ]
  %retry.3 = phi i32 [ %retry.2269, %if.end86 ], [ %retry.2269, %sw.bb76 ], [ %inc75, %if.end74 ], [ %retry.2269, %if.end46 ]
  %cmp16.not = icmp eq ptr %.pn271, %from
  br i1 %cmp16.not, label %for.inc.for.inc97_crit_edge, label %for.inc.retry18_crit_edge

for.inc.retry18_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry18

for.inc.for.inc97_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc97

for.inc97:                                        ; preds = %for.inc.for.inc97_crit_edge, %for.body.for.inc97_crit_edge
  %nr_succeeded.2.lcssa = phi i32 [ %nr_succeeded.1277, %for.body.for.inc97_crit_edge ], [ %nr_succeeded.3, %for.inc.for.inc97_crit_edge ]
  %nr_failed_pages.2.lcssa = phi i32 [ %nr_failed_pages.1278, %for.body.for.inc97_crit_edge ], [ %nr_failed_pages.3, %for.inc.for.inc97_crit_edge ]
  %nr_failed.2.lcssa = phi i32 [ %nr_failed.1279, %for.body.for.inc97_crit_edge ], [ %nr_failed.5, %for.inc.for.inc97_crit_edge ]
  %retry.2.lcssa = phi i32 [ 0, %for.body.for.inc97_crit_edge ], [ %retry.3, %for.inc.for.inc97_crit_edge ]
  %inc98 = add nuw nsw i32 %pass.0275, 1
  %exitcond.not = icmp eq i32 %inc98, 10
  br i1 %exitcond.not, label %for.inc97.for.end99_crit_edge, label %for.inc97.land.rhs_crit_edge

for.inc97.land.rhs_crit_edge:                     ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc97.for.end99_crit_edge:                    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end99

for.end99:                                        ; preds = %for.inc97.for.end99_crit_edge, %land.rhs.for.end99_crit_edge
  %nr_succeeded.1.lcssa = phi i32 [ %nr_succeeded.1277, %land.rhs.for.end99_crit_edge ], [ %nr_succeeded.2.lcssa, %for.inc97.for.end99_crit_edge ]
  %nr_failed_pages.1.lcssa = phi i32 [ %nr_failed_pages.1278, %land.rhs.for.end99_crit_edge ], [ %nr_failed_pages.2.lcssa, %for.inc97.for.end99_crit_edge ]
  %nr_failed.1.lcssa = phi i32 [ %nr_failed.1279, %land.rhs.for.end99_crit_edge ], [ %nr_failed.2.lcssa, %for.inc97.for.end99_crit_edge ]
  %retry.1.lcssa = phi i32 [ 0, %land.rhs.for.end99_crit_edge ], [ %retry.2.lcssa, %for.inc97.for.end99_crit_edge ]
  %add100 = add i32 %retry.1.lcssa, %nr_failed.1.lcssa
  %29 = ptrtoint ptr %thp_split_pages to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %thp_split_pages, align 4
  %cmp.i.not = icmp eq ptr %30, %thp_split_pages
  br i1 %cmp.i.not, label %for.end99.out_crit_edge, label %if.then104

for.end99.out_crit_edge:                          ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then104:                                       ; preds = %for.end99
  %31 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %from, align 4
  %cmp.i.not.i = icmp eq ptr %32, %from
  br i1 %cmp.i.not.i, label %if.then104.list_splice_init.exit_crit_edge, label %if.then.i

if.then104.list_splice_init.exit_crit_edge:       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %ret_pages to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ret_pages, align 4
  %35 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %ret_pages, ptr %prev3.i.i, align 4
  store ptr %32, ptr %ret_pages, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %34, ptr %36, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev6.i.i, align 4
  %40 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %from, ptr %from, align 4
  store ptr %from, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.then104.list_splice_init.exit_crit_edge
  %41 = ptrtoint ptr %thp_split_pages to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %thp_split_pages, align 4
  %cmp.i.not.i190 = icmp eq ptr %42, %thp_split_pages
  br i1 %cmp.i.not.i190, label %list_splice_init.exit.thp_subpage_migration.backedge_crit_edge, label %if.then.i194

list_splice_init.exit.thp_subpage_migration.backedge_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %thp_subpage_migration.backedge

thp_subpage_migration.backedge:                   ; preds = %if.then.i194, %list_splice_init.exit.thp_subpage_migration.backedge_crit_edge
  br label %thp_subpage_migration

if.then.i194:                                     ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %from, align 4
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %9, align 4
  %prev3.i.i192 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i192 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %from, ptr %prev3.i.i192, align 4
  store ptr %42, ptr %from, align 4
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %44, ptr %46, align 4
  %prev6.i.i193 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev6.i.i193 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev6.i.i193, align 4
  %50 = ptrtoint ptr %thp_split_pages to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %thp_split_pages, ptr %thp_split_pages, align 4
  store ptr %thp_split_pages, ptr %9, align 4
  br label %thp_subpage_migration.backedge

out:                                              ; preds = %for.end99.out_crit_edge, %if.end64
  %rc.1 = phi i32 [ -12, %if.end64 ], [ %add100, %for.end99.out_crit_edge ]
  %nr_succeeded.4 = phi i32 [ %nr_succeeded.2266, %if.end64 ], [ %nr_succeeded.1.lcssa, %for.end99.out_crit_edge ]
  %nr_failed_pages.4 = phi i32 [ %add69, %if.end64 ], [ %nr_failed_pages.1.lcssa, %for.end99.out_crit_edge ]
  %51 = ptrtoint ptr %ret_pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %ret_pages, align 4
  %cmp.i.not.i197 = icmp eq ptr %52, %ret_pages
  br i1 %cmp.i.not.i197, label %out.list_splice.exit_crit_edge, label %if.then.i201

out.list_splice.exit_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice.exit

if.then.i201:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %from, align 4
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %6, align 4
  %prev3.i.i199 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i199 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %from, ptr %prev3.i.i199, align 4
  store ptr %52, ptr %from, align 4
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %54, ptr %56, align 4
  %prev6.i.i200 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev6.i.i200 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev6.i.i200, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i201, %out.list_splice.exit_crit_edge
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !269
  %61 = call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i, align 4
  %arrayidx13.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx13.i, align 4
  %add.i = add i32 %66, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 46) to i32)
  %67 = inttoptr i32 %add.i to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add14.i = add i32 %69, %nr_succeeded.4
  store i32 %add14.i, ptr %67, align 4
  %70 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !270
  %and.i.i.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i203 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i203, label %if.then.i204, label %list_splice.exit.count_vm_events.exit_crit_edge, !prof !223

list_splice.exit.count_vm_events.exit_crit_edge:  ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_events.exit

if.then.i204:                                     ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_events.exit

count_vm_events.exit:                             ; preds = %if.then.i204, %list_splice.exit.count_vm_events.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #12, !srcloc !271
  %71 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !269
  %72 = call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i205 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i205 to ptr
  %cpu.i206 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %cpu.i206 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu.i206, align 4
  %arrayidx13.i207 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx13.i207 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx13.i207, align 4
  %add.i208 = add i32 %77, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 47) to i32)
  %78 = inttoptr i32 %add.i208 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %add14.i209 = add i32 %80, %nr_failed_pages.4
  store i32 %add14.i209, ptr %78, align 4
  %81 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !270
  %and.i.i.i210 = and i32 %81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i210)
  %tobool.not.i211 = icmp eq i32 %and.i.i.i210, 0
  br i1 %tobool.not.i211, label %if.then.i212, label %count_vm_events.exit.count_vm_events.exit213_crit_edge, !prof !223

count_vm_events.exit.count_vm_events.exit213_crit_edge: ; preds = %count_vm_events.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_events.exit213

if.then.i212:                                     ; preds = %count_vm_events.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_events.exit213

count_vm_events.exit213:                          ; preds = %if.then.i212, %count_vm_events.exit.count_vm_events.exit213_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %71) #12, !srcloc !271
  %82 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !269
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !270
  %and.i.i.i218 = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i218)
  %tobool.not.i219 = icmp eq i32 %and.i.i.i218, 0
  br i1 %tobool.not.i219, label %if.then.i220, label %count_vm_events.exit213.count_vm_events.exit221_crit_edge, !prof !223

count_vm_events.exit213.count_vm_events.exit221_crit_edge: ; preds = %count_vm_events.exit213
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_events.exit221

if.then.i220:                                     ; preds = %count_vm_events.exit213
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_events.exit221

count_vm_events.exit221:                          ; preds = %if.then.i220, %count_vm_events.exit213.count_vm_events.exit221_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %82) #12, !srcloc !271
  %84 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !269
  %85 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !270
  %and.i.i.i227 = and i32 %85, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i227)
  %tobool.not.i228 = icmp eq i32 %and.i.i.i227, 0
  br i1 %tobool.not.i228, label %if.then.i229, label %count_vm_events.exit221.count_vm_events.exit230_crit_edge, !prof !223

count_vm_events.exit221.count_vm_events.exit230_crit_edge: ; preds = %count_vm_events.exit221
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_events.exit230

if.then.i229:                                     ; preds = %count_vm_events.exit221
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_events.exit230

count_vm_events.exit230:                          ; preds = %if.then.i229, %count_vm_events.exit221.count_vm_events.exit230_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #12, !srcloc !271
  %86 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !269
  %87 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !270
  %and.i.i.i235 = and i32 %87, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i235)
  %tobool.not.i236 = icmp eq i32 %and.i.i.i235, 0
  br i1 %tobool.not.i236, label %if.then.i237, label %count_vm_events.exit230.count_vm_events.exit238_crit_edge, !prof !223

count_vm_events.exit230.count_vm_events.exit238_crit_edge: ; preds = %count_vm_events.exit230
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_vm_events.exit238

if.then.i237:                                     ; preds = %count_vm_events.exit230
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %count_vm_events.exit238

count_vm_events.exit238:                          ; preds = %if.then.i237, %count_vm_events.exit230.count_vm_events.exit238_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %86) #12, !srcloc !271
  call fastcc void @trace_mm_migrate_pages(i32 noundef %nr_succeeded.4, i32 noundef %nr_failed_pages.4, i32 noundef 0, i32 noundef %mode, i32 noundef %reason)
  br i1 %tobool.not, label %if.then108, label %count_vm_events.exit238.if.end113_crit_edge

count_vm_events.exit238.if.end113_crit_edge:      ; preds = %count_vm_events.exit238
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.then108:                                       ; preds = %count_vm_events.exit238
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %task, align 8
  %flags111 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags111, align 4
  %and112 = and i32 %91, -8388609
  store i32 %and112, ptr %flags111, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %count_vm_events.exit238.if.end113_crit_edge
  %tobool114.not = icmp eq ptr %ret_succeeded, null
  br i1 %tobool114.not, label %if.end113.if.end116_crit_edge, label %if.then115

if.end113.if.end116_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %ret_succeeded to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %nr_succeeded.4, ptr %ret_succeeded, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end113.if.end116_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %thp_split_pages) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret_pages) #12
  ret i32 %rc.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mm_migrate_pages_start(i32 noundef %mode, i32 noundef %reason) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mm_migrate_pages_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !222

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !272
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %mode, i32 noundef %reason) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !273
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !273
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !222

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !274
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_mm_migrate_pages_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mm_migrate_pages_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 106, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  %38 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unmap_and_move(ptr nocapture noundef readonly %get_new_page, ptr noundef readonly %put_new_page, i32 noundef %private, ptr noundef %page, i32 noundef %force, i32 noundef %mode, i32 noundef %reason, ptr noundef %ret) unnamed_addr #0 align 64 {
entry:
  %rwc.i.i = alloca %struct.rmap_walk_control, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i112 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %and.i.i112, 0
  br i1 %tobool.not.i.i113, label %if.end.i.i116, label %if.then.i.i115, !prof !222

if.then.i.i115:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i114 = add i32 %2, -1
  br label %page_count.exit

if.end.i.i116:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %page_count.exit

page_count.exit:                                  ; preds = %if.end.i.i116, %if.then.i.i115
  %retval.0.i.i117 = phi i32 [ %sub.i.i114, %if.then.i.i115 ], [ %3, %if.end.i.i116 ]
  %4 = inttoptr i32 %retval.0.i.i117 to ptr
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then3, label %if.end14

if.then3:                                         ; preds = %page_count.exit
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %0, align 4
  %and.i12.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !223

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !222

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i14.i = add i32 %14, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %15, %if.end.i16.i ]
  %16 = inttoptr i32 %retval.0.i17.i to ptr
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #12, !srcloc !276
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !222

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i21.i = add i32 %14, -1
  br label %ClearPageActive.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %page to i32
  br label %ClearPageActive.exit

ClearPageActive.exit:                             ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %17, %if.end.i23.i ]
  %18 = inttoptr i32 %retval.0.i24.i to ptr
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %18) #12
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %0, align 4
  %and.i.i84 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %and.i.i84, 0
  br i1 %tobool.not.i.i85, label %if.end.i.i88, label %if.then.i.i87, !prof !222

if.then.i.i87:                                    ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i86 = add i32 %20, -1
  br label %_compound_head.exit.i93

if.end.i.i88:                                     ; preds = %ClearPageActive.exit
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i93

_compound_head.exit.i93:                          ; preds = %if.end.i.i88, %if.then.i.i87
  %retval.0.i.i89 = phi i32 [ %sub.i.i86, %if.then.i.i87 ], [ %21, %if.end.i.i88 ]
  %22 = inttoptr i32 %retval.0.i.i89 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i90 = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %0, align 4
  %and.i12.i91 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i91)
  %tobool.not.i13.i92 = icmp eq i32 %and.i12.i91, 0
  br i1 %cmp.i.not.i90, label %if.then.i94, label %do.end8.i100, !prof !223

if.then.i94:                                      ; preds = %_compound_head.exit.i93
  br i1 %tobool.not.i13.i92, label %if.end.i16.i97, label %if.then.i15.i96, !prof !222

if.then.i15.i96:                                  ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i14.i95 = add i32 %26, -1
  br label %_compound_head.exit18.i99

if.end.i16.i97:                                   ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %page to i32
  br label %_compound_head.exit18.i99

_compound_head.exit18.i99:                        ; preds = %if.end.i16.i97, %if.then.i15.i96
  %retval.0.i17.i98 = phi i32 [ %sub.i14.i95, %if.then.i15.i96 ], [ %27, %if.end.i16.i97 ]
  %28 = inttoptr i32 %retval.0.i17.i98 to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 499, 0\0A.popsection", ""() #12, !srcloc !277
  unreachable

do.end8.i100:                                     ; preds = %_compound_head.exit.i93
  br i1 %tobool.not.i13.i92, label %if.end.i23.i103, label %if.then.i22.i102, !prof !222

if.then.i22.i102:                                 ; preds = %do.end8.i100
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i21.i101 = add i32 %26, -1
  br label %ClearPageUnevictable.exit

if.end.i23.i103:                                  ; preds = %do.end8.i100
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %page to i32
  br label %ClearPageUnevictable.exit

ClearPageUnevictable.exit:                        ; preds = %if.end.i23.i103, %if.then.i22.i102
  %retval.0.i24.i104 = phi i32 [ %sub.i21.i101, %if.then.i22.i102 ], [ %29, %if.end.i23.i103 ]
  %30 = inttoptr i32 %retval.0.i24.i104 to ptr
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %30) #12
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mapping.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i = and i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 2
  br i1 %cmp.i.not, label %if.then8, label %ClearPageUnevictable.exit.if.then24_crit_edge, !prof !223

ClearPageUnevictable.exit.if.then24_crit_edge:    ; preds = %ClearPageUnevictable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

if.then8:                                         ; preds = %ClearPageUnevictable.exit
  tail call fastcc void @lock_page(ptr noundef %page)
  %call9 = tail call i32 @PageMovable(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.then8
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i105 = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i105, label %if.then.i106, label %__ClearPageIsolated.exit, !prof !223

if.then.i106:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !240
  unreachable

__ClearPageIsolated.exit:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i107 = and i32 %35, -262145
  %36 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i.i107, ptr %page, align 4
  br label %if.end12

if.end12:                                         ; preds = %__ClearPageIsolated.exit, %if.then8.if.end12_crit_edge
  tail call void @unlock_page(ptr noundef %page) #12
  br label %if.then24

if.end14:                                         ; preds = %page_count.exit
  %call15 = tail call ptr %get_new_page(ptr noundef %page, i32 noundef %private) #12
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %mapping.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mapping.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %and.i.i119 = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i119)
  %cmp.i.not.i120 = icmp eq i32 %and.i.i119, 2
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %0, align 4
  %and.i.i205.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i205.i)
  %tobool.not.i.i206.i = icmp eq i32 %and.i.i205.i, 0
  br i1 %tobool.not.i.i206.i, label %if.end.i.i209.i, label %if.then.i.i208.i, !prof !222

if.then.i.i208.i:                                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i207.i = add i32 %41, -1
  br label %_compound_head.exit.i211.i

if.end.i.i209.i:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i211.i

_compound_head.exit.i211.i:                       ; preds = %if.end.i.i209.i, %if.then.i.i208.i
  %retval.0.i.i210.i = phi i32 [ %sub.i.i207.i, %if.then.i.i208.i ], [ %42, %if.end.i.i209.i ]
  %43 = inttoptr i32 %retval.0.i.i210.i to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !222

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i211.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i211.i
  %call.i.i.i.i.i121 = tail call zeroext i1 @__kasan_check_write(ptr noundef %43, i32 noundef 4) #12
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %43, align 4
  %and.i.i4.i.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_page.exit.i, label %folio_flags.exit.i.i.i.if.then.i123_crit_edge

folio_flags.exit.i.i.i.if.then.i123_crit_edge:    ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i123

trylock_page.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  tail call void @llvm.prefetch.p0(ptr %43, i32 1, i32 3, i32 1) #12
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %50 = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool2.not.not.i = icmp eq i32 %50, 0
  br i1 %tobool2.not.not.i, label %trylock_page.exit.i.if.end9.i_crit_edge, label %trylock_page.exit.i.if.then.i123_crit_edge

trylock_page.exit.i.if.then.i123_crit_edge:       ; preds = %trylock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i123

trylock_page.exit.i.if.end9.i_crit_edge:          ; preds = %trylock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i123:                                     ; preds = %trylock_page.exit.i.if.then.i123_crit_edge, %folio_flags.exit.i.i.i.if.then.i123_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool3.not.i = icmp eq i32 %force, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp.i122 = icmp eq i32 %mode, 0
  %or.cond.i = or i1 %tobool3.not.i, %cmp.i122
  br i1 %or.cond.i, label %if.then.i123.if.end49_crit_edge, label %if.end.i

if.then.i123.if.end49_crit_edge:                  ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.i:                                         ; preds = %if.then.i123
  %51 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i212.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i212.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %and.i124 = and i32 %56, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool6.not.i = icmp eq i32 %and.i124, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.if.end49_crit_edge

if.end.i.if.end49_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end8.i:                                        ; preds = %if.end.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.44, i32 noundef 788) #12
  %57 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %0, align 4
  %and.i.i213.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i213.i)
  %tobool.not.i.i214.i = icmp eq i32 %and.i.i213.i, 0
  br i1 %tobool.not.i.i214.i, label %if.end.i.i217.i, label %if.then.i.i216.i, !prof !222

if.then.i.i216.i:                                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i215.i = add i32 %58, -1
  br label %_compound_head.exit.i221.i

if.end.i.i217.i:                                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i221.i

_compound_head.exit.i221.i:                       ; preds = %if.end.i.i217.i, %if.then.i.i216.i
  %retval.0.i.i218.i = phi i32 [ %sub.i.i215.i, %if.then.i.i216.i ], [ %59, %if.end.i.i217.i ]
  %60 = inttoptr i32 %retval.0.i.i218.i to ptr
  %61 = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %and.i.i.i.i219.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i219.i)
  %tobool.not.i.i.i220.i = icmp eq i32 %and.i.i.i.i219.i, 0
  br i1 %tobool.not.i.i.i220.i, label %folio_flags.exit.i.i226.i, label %if.then.i.i.i222.i, !prof !222

if.then.i.i.i222.i:                               ; preds = %_compound_head.exit.i221.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %60, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i.i226.i:                        ; preds = %_compound_head.exit.i221.i
  %call.i.i.i.i223.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %60, i32 noundef 4) #12
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %60, align 4
  %and.i.i4.i.i224.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i224.i)
  %tobool.not.i.i.i.i225.i = icmp eq i32 %and.i.i4.i.i224.i, 0
  br i1 %tobool.not.i.i.i.i225.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i226.i.if.then.i228.i_crit_edge

folio_flags.exit.i.i226.i.if.then.i228.i_crit_edge: ; preds = %folio_flags.exit.i.i226.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i228.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i226.i
  tail call void @llvm.prefetch.p0(ptr %60, i32 1, i32 3, i32 1) #12
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i227.i = extractvalue { i32, i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %67 = and i32 %asmresult.i.i.i.i.i.i.i227.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %phi.cmp.i.i.i.i = icmp eq i32 %67, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.if.end9.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i228.i_crit_edge

folio_trylock.exit.i.i.if.then.i228.i_crit_edge:  ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i228.i

folio_trylock.exit.i.i.if.end9.i_crit_edge:       ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i228.i:                                   ; preds = %folio_trylock.exit.i.i.if.then.i228.i_crit_edge, %folio_flags.exit.i.i226.i.if.then.i228.i_crit_edge
  tail call void @__folio_lock(ptr noundef %60) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i228.i, %folio_trylock.exit.i.i.if.end9.i_crit_edge, %trylock_page.exit.i.if.end9.i_crit_edge
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %69, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %70, %if.end.i.i.i ]
  %71 = inttoptr i32 %retval.0.i.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i.not.i.i = icmp eq i32 %73, -1
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %0, align 4
  %and.i16.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i125, label %do.end10.i.i, !prof !223

if.then.i.i125:                                   ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !222

if.then.i19.i.i:                                  ; preds = %if.then.i.i125
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i.i = add i32 %75, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i125
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %76, %if.end.i20.i.i ]
  %77 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #12, !srcloc !278
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !222

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i.i = add i32 %75, -1
  br label %PageWriteback.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit.i

PageWriteback.exit.i:                             ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %78, %if.end.i27.i.i ]
  %79 = inttoptr i32 %retval.0.i28.i.i to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %82 = and i32 %81, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool11.not.i = icmp eq i32 %82, 0
  br i1 %tobool11.not.i, label %PageWriteback.exit.i.if.end16.i_crit_edge, label %if.then12.i

PageWriteback.exit.i.if.end16.i_crit_edge:        ; preds = %PageWriteback.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i

if.then12.i:                                      ; preds = %PageWriteback.exit.i
  %83 = and i32 %mode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %switch.i = icmp eq i32 %83, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.then12.i.out.thread261.i_crit_edge

if.then12.i.out.thread261.i_crit_edge:            ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread261.i

sw.epilog.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool13.not.i = icmp eq i32 %force, 0
  br i1 %tobool13.not.i, label %sw.epilog.i.out.thread261.i_crit_edge, label %if.end15.i

sw.epilog.i.out.thread261.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.thread261.i

if.end15.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wait_on_page_writeback(ptr noundef %page) #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end15.i, %PageWriteback.exit.i.if.end16.i_crit_edge
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %0, align 4
  %and.i2.i.i = and i32 %85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i.i155.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i.i155.i, label %if.end.i.i158.i, label %if.then.i.i157.i, !prof !222

if.then.i.i157.i:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i156.i = add i32 %85, -1
  br label %PageAnon.exit.i

if.end.i.i158.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %page to i32
  br label %PageAnon.exit.i

PageAnon.exit.i:                                  ; preds = %if.end.i.i158.i, %if.then.i.i157.i
  %retval.0.i.i159.i = phi i32 [ %sub.i.i156.i, %if.then.i.i157.i ], [ %86, %if.end.i.i158.i ]
  %87 = inttoptr i32 %retval.0.i.i159.i to ptr
  %mapping.i.i.i = getelementptr inbounds %struct.anon.107, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mapping.i.i.i, align 4
  %90 = ptrtoint ptr %89 to i32
  %and.i.i160.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i160.i)
  %cmp.i.i.not.i = icmp eq i32 %and.i.i160.i, 0
  br i1 %cmp.i.i.not.i, label %PageAnon.exit.i.if.end21.i_crit_edge, label %land.lhs.true.i

PageAnon.exit.i.if.end21.i_crit_edge:             ; preds = %PageAnon.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %PageAnon.exit.i
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %0, align 4
  %and.i2.i162.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i162.i)
  %tobool.not.i.i163.i = icmp eq i32 %and.i2.i162.i, 0
  br i1 %tobool.not.i.i163.i, label %if.end.i.i166.i, label %if.then.i.i165.i, !prof !222

if.then.i.i165.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i164.i = add i32 %92, -1
  br label %PageKsm.exit.i

if.end.i.i166.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %page to i32
  br label %PageKsm.exit.i

PageKsm.exit.i:                                   ; preds = %if.end.i.i166.i, %if.then.i.i165.i
  %retval.0.i.i167.i = phi i32 [ %sub.i.i164.i, %if.then.i.i165.i ], [ %93, %if.end.i.i166.i ]
  %94 = inttoptr i32 %retval.0.i.i167.i to ptr
  %mapping.i.i168.i = getelementptr inbounds %struct.anon.107, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %mapping.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mapping.i.i168.i, align 4
  %97 = ptrtoint ptr %96 to i32
  %and.i.i169.i = and i32 %97, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i169.i)
  %cmp.i.i170.i = icmp eq i32 %and.i.i169.i, 3
  br i1 %cmp.i.i170.i, label %PageKsm.exit.i.if.end21.i_crit_edge, label %if.then19.i

PageKsm.exit.i.if.end21.i_crit_edge:              ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then19.i:                                      ; preds = %PageKsm.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i = tail call ptr @page_get_anon_vma(ptr noundef %page) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %PageKsm.exit.i.if.end21.i_crit_edge, %PageAnon.exit.i.if.end21.i_crit_edge
  %anon_vma.0.i = phi ptr [ null, %PageKsm.exit.i.if.end21.i_crit_edge ], [ %call20.i, %if.then19.i ], [ null, %PageAnon.exit.i.if.end21.i_crit_edge ]
  %98 = getelementptr inbounds %struct.page, ptr %call15, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %98, align 4
  %and.i.i229.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i229.i)
  %tobool.not.i.i230.i = icmp eq i32 %and.i.i229.i, 0
  br i1 %tobool.not.i.i230.i, label %if.end.i.i233.i, label %if.then.i.i232.i, !prof !222

if.then.i.i232.i:                                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i231.i = add i32 %100, -1
  br label %_compound_head.exit.i237.i

if.end.i.i233.i:                                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %call15 to i32
  br label %_compound_head.exit.i237.i

_compound_head.exit.i237.i:                       ; preds = %if.end.i.i233.i, %if.then.i.i232.i
  %retval.0.i.i234.i = phi i32 [ %sub.i.i231.i, %if.then.i.i232.i ], [ %101, %if.end.i.i233.i ]
  %102 = inttoptr i32 %retval.0.i.i234.i to ptr
  %103 = getelementptr inbounds %struct.page, ptr %102, i32 0, i32 1
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %103, align 4
  %and.i.i.i.i235.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i235.i)
  %tobool.not.i.i.i236.i = icmp eq i32 %and.i.i.i.i235.i, 0
  br i1 %tobool.not.i.i.i236.i, label %folio_flags.exit.i.i242.i, label %if.then.i.i.i238.i, !prof !222

if.then.i.i.i238.i:                               ; preds = %_compound_head.exit.i237.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %102, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i.i242.i:                        ; preds = %_compound_head.exit.i237.i
  %call.i.i.i.i239.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %102, i32 noundef 4) #12
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %102, align 4
  %and.i.i4.i.i240.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i240.i)
  %tobool.not.i.i.i.i241.i = icmp eq i32 %and.i.i4.i.i240.i, 0
  br i1 %tobool.not.i.i.i.i241.i, label %trylock_page.exit247.i, label %folio_flags.exit.i.i242.i.out_unlock.i_crit_edge

folio_flags.exit.i.i242.i.out_unlock.i_crit_edge: ; preds = %folio_flags.exit.i.i242.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.i

trylock_page.exit247.i:                           ; preds = %folio_flags.exit.i.i242.i
  tail call void @llvm.prefetch.p0(ptr %102, i32 1, i32 3, i32 1) #12
  %108 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i243.i = extractvalue { i32, i32, i32 } %108, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %109 = and i32 %asmresult.i.i.i.i.i.i.i243.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool23.not.not.i = icmp eq i32 %109, 0
  br i1 %tobool23.not.not.i, label %if.end29.i, label %trylock_page.exit247.i.out_unlock.i_crit_edge, !prof !222

trylock_page.exit247.i.out_unlock.i_crit_edge:    ; preds = %trylock_page.exit247.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock.i

if.end29.i:                                       ; preds = %trylock_page.exit247.i
  br i1 %cmp.i.not.i120, label %if.then39.i, label %if.end41.i, !prof !223

if.then39.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  %call40.i = tail call fastcc i32 @move_to_new_page(ptr noundef nonnull %call15, ptr noundef %page, i32 noundef %mode) #12
  br label %out_unlock_both.i

if.end41.i:                                       ; preds = %if.end29.i
  %110 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mapping.i.i, align 4
  %tobool42.not.i = icmp eq ptr %111, null
  br i1 %tobool42.not.i, label %do.body.i, label %if.else.i

do.body.i:                                        ; preds = %if.end41.i
  %112 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %0, align 4
  %and.i2.i172.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i172.i)
  %tobool.not.i.i173.i = icmp eq i32 %and.i2.i172.i, 0
  br i1 %tobool.not.i.i173.i, label %if.end.i.i176.i, label %if.then.i.i175.i, !prof !222

if.then.i.i175.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i174.i = add i32 %113, -1
  br label %PageAnon.exit182.i

if.end.i.i176.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %page to i32
  br label %PageAnon.exit182.i

PageAnon.exit182.i:                               ; preds = %if.end.i.i176.i, %if.then.i.i175.i
  %retval.0.i.i177.i = phi i32 [ %sub.i.i174.i, %if.then.i.i175.i ], [ %114, %if.end.i.i176.i ]
  %115 = inttoptr i32 %retval.0.i.i177.i to ptr
  %mapping.i.i178.i = getelementptr inbounds %struct.anon.107, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %mapping.i.i178.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mapping.i.i178.i, align 4
  %118 = ptrtoint ptr %117 to i32
  %and.i.i179.i = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i179.i)
  %cmp.i.i180.not.i = icmp eq i32 %and.i.i179.i, 0
  br i1 %cmp.i.i180.not.i, label %do.end58.i, label %if.then51.i, !prof !222

if.then51.i:                                      ; preds = %PageAnon.exit182.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.60) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1024, 0\0A.popsection", ""() #12, !srcloc !279
  unreachable

do.end58.i:                                       ; preds = %PageAnon.exit182.i
  %119 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %page, align 4
  %and.i248.i = and i32 %120, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i248.i)
  %tobool.i.not.i = icmp eq i32 %and.i248.i, 0
  br i1 %tobool.i.not.i, label %do.end58.i.if.end90.i_crit_edge, label %if.then61.i

do.end58.i.if.end90.i_crit_edge:                  ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.i

if.then61.i:                                      ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #14
  %call62.i = tail call i32 @try_to_free_buffers(ptr noundef %page) #12
  br label %out_unlock_both.i

if.else.i:                                        ; preds = %if.end41.i
  %call64.i = tail call zeroext i1 @page_mapped(ptr noundef %page) #12
  br i1 %call64.i, label %do.body66.i, label %if.else.i.if.end90.i_crit_edge

if.else.i.if.end90.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90.i

do.body66.i:                                      ; preds = %if.else.i
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %0, align 4
  %and.i2.i183.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i183.i)
  %tobool.not.i.i184.i = icmp eq i32 %and.i2.i183.i, 0
  br i1 %tobool.not.i.i184.i, label %if.end.i.i187.i, label %if.then.i.i186.i, !prof !222

if.then.i.i186.i:                                 ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i185.i = add i32 %122, -1
  br label %PageAnon.exit193.i

if.end.i.i187.i:                                  ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %page to i32
  br label %PageAnon.exit193.i

PageAnon.exit193.i:                               ; preds = %if.end.i.i187.i, %if.then.i.i186.i
  %retval.0.i.i188.i = phi i32 [ %sub.i.i185.i, %if.then.i.i186.i ], [ %123, %if.end.i.i187.i ]
  %124 = inttoptr i32 %retval.0.i.i188.i to ptr
  %mapping.i.i189.i = getelementptr inbounds %struct.anon.107, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %mapping.i.i189.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mapping.i.i189.i, align 4
  %127 = ptrtoint ptr %126 to i32
  %and.i.i190.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i190.i)
  %cmp.i.i191.not.i = icmp eq i32 %and.i.i190.i, 0
  br i1 %cmp.i.i191.not.i, label %PageAnon.exit193.i.do.end88.i_crit_edge, label %land.lhs.true68.i

PageAnon.exit193.i.do.end88.i_crit_edge:          ; preds = %PageAnon.exit193.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i

land.lhs.true68.i:                                ; preds = %PageAnon.exit193.i
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %0, align 4
  %and.i2.i194.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i194.i)
  %tobool.not.i.i195.i = icmp eq i32 %and.i2.i194.i, 0
  br i1 %tobool.not.i.i195.i, label %if.end.i.i198.i, label %if.then.i.i197.i, !prof !222

if.then.i.i197.i:                                 ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i196.i = add i32 %129, -1
  br label %PageKsm.exit204.i

if.end.i.i198.i:                                  ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %page to i32
  br label %PageKsm.exit204.i

PageKsm.exit204.i:                                ; preds = %if.end.i.i198.i, %if.then.i.i197.i
  %retval.0.i.i199.i = phi i32 [ %sub.i.i196.i, %if.then.i.i197.i ], [ %130, %if.end.i.i198.i ]
  %131 = inttoptr i32 %retval.0.i.i199.i to ptr
  %mapping.i.i200.i = getelementptr inbounds %struct.anon.107, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %mapping.i.i200.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mapping.i.i200.i, align 4
  %134 = ptrtoint ptr %133 to i32
  %and.i.i201.i = and i32 %134, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i201.i)
  %cmp.i.i202.i = icmp ne i32 %and.i.i201.i, 3
  %tobool70.not.i = icmp eq ptr %anon_vma.0.i, null
  %spec.select.i = select i1 %cmp.i.i202.i, i1 %tobool70.not.i, i1 false
  br i1 %spec.select.i, label %if.then79.i, label %PageKsm.exit204.i.do.end88.i_crit_edge, !prof !223

PageKsm.exit204.i.do.end88.i_crit_edge:           ; preds = %PageKsm.exit204.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i

if.then79.i:                                      ; preds = %PageKsm.exit204.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.61) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1032, 0\0A.popsection", ""() #12, !srcloc !280
  unreachable

do.end88.i:                                       ; preds = %PageKsm.exit204.i.do.end88.i_crit_edge, %PageAnon.exit193.i.do.end88.i_crit_edge
  tail call void @try_to_migrate(ptr noundef %page, i32 noundef 0) #12
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end88.i, %if.else.i.if.end90.i_crit_edge, %do.end58.i.if.end90.i_crit_edge
  %page_was_mapped.0.off0.i = phi i1 [ true, %do.end88.i ], [ false, %if.else.i.if.end90.i_crit_edge ], [ false, %do.end58.i.if.end90.i_crit_edge ]
  %call91.i = tail call zeroext i1 @page_mapped(ptr noundef %page) #12
  br i1 %call91.i, label %if.end90.i.if.end94.i_crit_edge, label %if.then92.i

if.end90.i.if.end94.i_crit_edge:                  ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.then92.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #14
  %call93.i = tail call fastcc i32 @move_to_new_page(ptr noundef nonnull %call15, ptr noundef %page, i32 noundef %mode) #12
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then92.i, %if.end90.i.if.end94.i_crit_edge
  %rc.0.i = phi i32 [ -11, %if.end90.i.if.end94.i_crit_edge ], [ %call93.i, %if.then92.i ]
  br i1 %page_was_mapped.0.off0.i, label %if.then96.i, label %if.end94.i.out_unlock_both.i_crit_edge

if.end94.i.out_unlock_both.i_crit_edge:           ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock_both.i

if.then96.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %cmp97.i = icmp eq i32 %rc.0.i, 0
  %newpage.page.i = select i1 %cmp97.i, ptr %call15, ptr %page
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc.i.i) #12
  %135 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i, i32 0, i32 1
  %136 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i, i32 0, i32 2
  %137 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i, i32 0, i32 3
  %138 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i, i32 0, i32 4
  %139 = ptrtoint ptr %rwc.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %page, ptr %rwc.i.i, align 4
  %140 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @remove_migration_pte, ptr %135, align 4
  %141 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %136, align 4
  %142 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %137, align 4
  %143 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %138, align 4
  call void @rmap_walk(ptr noundef %newpage.page.i, ptr noundef nonnull %rwc.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc.i.i) #12
  br label %out_unlock_both.i

out_unlock_both.i:                                ; preds = %if.then96.i, %if.end94.i.out_unlock_both.i_crit_edge, %if.then61.i, %if.then39.i
  %rc.1.i = phi i32 [ %call40.i, %if.then39.i ], [ %rc.0.i, %if.then96.i ], [ %rc.0.i, %if.end94.i.out_unlock_both.i_crit_edge ], [ -11, %if.then61.i ]
  call void @unlock_page(ptr noundef nonnull %call15) #12
  br label %out_unlock.i

out.thread261.i:                                  ; preds = %sw.epilog.i.out.thread261.i_crit_edge, %if.then12.i.out.thread261.i_crit_edge
  %rc.2.ph.i = phi i32 [ -16, %if.then12.i.out.thread261.i_crit_edge ], [ -11, %sw.epilog.i.out.thread261.i_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #12
  br label %out

out_unlock.i:                                     ; preds = %out_unlock_both.i, %trylock_page.exit247.i.out_unlock.i_crit_edge, %folio_flags.exit.i.i242.i.out_unlock.i_crit_edge
  %rc.2.i = phi i32 [ -11, %trylock_page.exit247.i.out_unlock.i_crit_edge ], [ %rc.1.i, %out_unlock_both.i ], [ -11, %folio_flags.exit.i.i242.i.out_unlock.i_crit_edge ]
  %tobool99.not.i = icmp eq ptr %anon_vma.0.i, null
  br i1 %tobool99.not.i, label %out_unlock.i.out.i_crit_edge, label %if.then100.i

out_unlock.i.out.i_crit_edge:                     ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then100.i:                                     ; preds = %out_unlock.i
  %refcount.i.i = getelementptr inbounds %struct.anon_vma, ptr %anon_vma.0.i, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %144 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !237
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %144, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then.i249.i, label %if.then100.i.out.i_crit_edge

if.then100.i.out.i_crit_edge:                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then.i249.i:                                   ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_anon_vma(ptr noundef nonnull %anon_vma.0.i) #12
  br label %out.i

out.i:                                            ; preds = %if.then.i249.i, %if.then100.i.out.i_crit_edge, %out_unlock.i.out.i_crit_edge
  call void @unlock_page(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %cmp102.i = icmp eq i32 %rc.2.i, 0
  br i1 %cmp102.i, label %if.then103.i, label %out.i.out_crit_edge

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then103.i:                                     ; preds = %out.i
  br i1 %cmp.i.not.i120, label %if.then113.i, label %if.else114.i, !prof !223

if.then113.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @put_page(ptr noundef nonnull %call15) #12
  br label %if.then21

if.else114.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @putback_lru_page(ptr noundef nonnull %call15) #12
  br label %if.then21

if.then21:                                        ; preds = %if.else114.i, %if.then113.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @page_owner_inited, ptr blockaddress(@unmap_and_move, %if.then.i126)) #12
          to label %out [label %if.then.i126], !srcloc !228

if.then.i126:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  call void @__set_page_owner_migrate_reason(ptr noundef nonnull %call15, i32 noundef %reason) #12
  br label %if.then24

out:                                              ; preds = %if.then21, %out.i.out_crit_edge, %out.thread261.i
  %rc.0 = phi i32 [ 0, %if.then21 ], [ %rc.2.ph.i, %out.thread261.i ], [ %rc.2.i, %out.i.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp23.not = icmp eq i32 %rc.0, -11
  br i1 %cmp23.not, label %out.if.end49_crit_edge, label %out.if.then24_crit_edge

out.if.then24_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

out.if.end49_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then24:                                        ; preds = %out.if.then24_crit_edge, %if.then.i126, %if.end12, %ClearPageUnevictable.exit.if.then24_crit_edge
  %newpage.0182 = phi ptr [ %call15, %out.if.then24_crit_edge ], [ %call15, %if.then.i126 ], [ null, %ClearPageUnevictable.exit.if.then24_crit_edge ], [ null, %if.end12 ]
  %rc.0180 = phi i32 [ %rc.0, %out.if.then24_crit_edge ], [ 0, %if.then.i126 ], [ 0, %ClearPageUnevictable.exit.if.then24_crit_edge ], [ 0, %if.end12 ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12
  br i1 %call.i.i, label %if.end.i.i128, label %if.then24.if.end25_crit_edge

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end.i.i128:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i, align 4
  %147 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end.i.i128, %if.then24.if.end25_crit_edge
  %151 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  %prev.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0180)
  %cmp26 = icmp eq i32 %rc.0180, 0
  br i1 %cmp26, label %if.then27, label %if.then47

if.then27:                                        ; preds = %if.end25
  %mapping.i108 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %153 = ptrtoint ptr %mapping.i108 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %mapping.i108, align 4
  %155 = ptrtoint ptr %154 to i32
  %and.i109 = and i32 %155, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i109)
  %cmp.i110.not = icmp eq i32 %and.i109, 2
  br i1 %cmp.i110.not, label %if.then27.if.end42_crit_edge, label %if.then38, !prof !223

if.then27.if.end42_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then38:                                        ; preds = %if.then27
  %156 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %cmp.i.not.i.i129 = icmp eq i32 %157, -1
  br i1 %cmp.i.not.i.i129, label %if.then.i.i130, label %page_pgdat.exit, !prof !223

if.then.i.i130:                                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.62) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

page_pgdat.exit:                                  ; preds = %if.then38
  %158 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %0, align 4
  %and.i.i131 = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i131)
  %tobool.not.i.i132 = icmp eq i32 %and.i.i131, 0
  br i1 %tobool.not.i.i132, label %if.end.i.i135, label %if.then.i.i134, !prof !222

if.then.i.i134:                                   ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i133 = add i32 %159, -1
  br label %_compound_head.exit.i139

if.end.i.i135:                                    ; preds = %page_pgdat.exit
  call void @__sanitizer_cov_trace_pc() #14
  %160 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i139

_compound_head.exit.i139:                         ; preds = %if.end.i.i135, %if.then.i.i134
  %retval.0.i.i136 = phi i32 [ %sub.i.i133, %if.then.i.i134 ], [ %160, %if.end.i.i135 ]
  %161 = inttoptr i32 %retval.0.i.i136 to ptr
  %162 = getelementptr inbounds %struct.page, ptr %161, i32 0, i32 1
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %162, align 4
  %and.i.i.i.i.i137 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i137)
  %tobool.not.i.i.i.i138 = icmp eq i32 %and.i.i.i.i.i137, 0
  br i1 %tobool.not.i.i.i.i138, label %page_is_file_lru.exit, label %if.then.i.i.i.i140, !prof !222

if.then.i.i.i.i140:                               ; preds = %_compound_head.exit.i139
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %161, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

page_is_file_lru.exit:                            ; preds = %_compound_head.exit.i139
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %161, align 4
  %167 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %0, align 4
  %and.i.i141 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i141)
  %tobool.not.i = icmp eq i32 %and.i.i141, 0
  br i1 %tobool.not.i, label %thp_nr_pages.exit, label %if.then.i142, !prof !222

if.then.i142:                                     ; preds = %page_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/huge_mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 347, 0\0A.popsection", ""() #12, !srcloc !242
  unreachable

thp_nr_pages.exit:                                ; preds = %page_is_file_lru.exit
  call void @__sanitizer_cov_trace_pc() #14
  %169 = shl i32 %166, 12
  %170 = ashr i32 %169, 31
  %add = add nsw i32 %170, 8
  call void @mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef %add, i32 noundef -1) #12
  br label %if.end42

if.end42:                                         ; preds = %thp_nr_pages.exit, %if.then27.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reason)
  %cmp43.not = icmp eq i32 %reason, 1
  br i1 %cmp43.not, label %if.end42.cleanup_crit_edge, label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %171 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %0, align 4
  %and.i.i143 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i143)
  %tobool.not.i.i144 = icmp eq i32 %and.i.i143, 0
  br i1 %tobool.not.i.i144, label %if.end.i.i147, label %if.then.i.i146, !prof !222

if.then.i.i146:                                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i145 = add i32 %172, -1
  br label %_compound_head.exit.i150

if.end.i.i147:                                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i150

_compound_head.exit.i150:                         ; preds = %if.end.i.i147, %if.then.i.i146
  %retval.0.i.i148 = phi i32 [ %sub.i.i145, %if.then.i.i146 ], [ %173, %if.end.i.i147 ]
  %174 = inttoptr i32 %retval.0.i.i148 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %174, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %175 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.i.i.i.i149 = icmp eq i32 %176, 0
  br i1 %cmp.i.i.i.i149, label %if.then.i.i.i.i151, label %do.end5.i.i.i.i, !prof !223

if.then.i.i.i.i151:                               ; preds = %_compound_head.exit.i150
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %174, ptr noundef nonnull @.str.43) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !235
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i150
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %177 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %177, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unmap_and_move, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !228

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %174, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %174) #12
  br label %cleanup

if.then47:                                        ; preds = %if.end25
  %prev.i152 = getelementptr inbounds %struct.list_head, ptr %ret, i32 0, i32 1
  %178 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %prev.i152, align 4
  %call.i.i153 = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %179, ptr noundef %ret) #12
  br i1 %call.i.i153, label %if.end.i.i154, label %if.then47.if.end49_crit_edge

if.then47.if.end49_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end.i.i154:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %180 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %0, ptr %prev.i152, align 4
  %181 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %ret, ptr %0, align 4
  %182 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %prev.i, align 4
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %0, ptr %179, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end.i.i154, %if.then47.if.end49_crit_edge, %out.if.end49_crit_edge, %if.end.i.if.end49_crit_edge, %if.then.i123.if.end49_crit_edge
  %newpage.0183191197 = phi ptr [ %newpage.0182, %if.then47.if.end49_crit_edge ], [ %newpage.0182, %if.end.i.i154 ], [ %call15, %out.if.end49_crit_edge ], [ %call15, %if.then.i123.if.end49_crit_edge ], [ %call15, %if.end.i.if.end49_crit_edge ]
  %rc.0181192196 = phi i32 [ %rc.0180, %if.then47.if.end49_crit_edge ], [ %rc.0180, %if.end.i.i154 ], [ -11, %out.if.end49_crit_edge ], [ -11, %if.then.i123.if.end49_crit_edge ], [ -11, %if.end.i.if.end49_crit_edge ]
  %tobool50.not = icmp eq ptr %put_new_page, null
  br i1 %tobool50.not, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void %put_new_page(ptr noundef %newpage.0183191197, i32 noundef %private) #12
  br label %cleanup

if.else52:                                        ; preds = %if.end49
  %184 = getelementptr inbounds %struct.page, ptr %newpage.0183191197, i32 0, i32 1
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %184, align 4
  %and.i.i155 = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i155)
  %tobool.not.i.i156 = icmp eq i32 %and.i.i155, 0
  br i1 %tobool.not.i.i156, label %if.end.i.i159, label %if.then.i.i158, !prof !222

if.then.i.i158:                                   ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i157 = add i32 %186, -1
  br label %_compound_head.exit.i164

if.end.i.i159:                                    ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %187 = ptrtoint ptr %newpage.0183191197 to i32
  br label %_compound_head.exit.i164

_compound_head.exit.i164:                         ; preds = %if.end.i.i159, %if.then.i.i158
  %retval.0.i.i160 = phi i32 [ %sub.i.i157, %if.then.i.i158 ], [ %187, %if.end.i.i159 ]
  %188 = inttoptr i32 %retval.0.i.i160 to ptr
  %_refcount.i.i.i.i.i161 = getelementptr inbounds %struct.page, ptr %188, i32 0, i32 3
  %call.i.i.i.i.i.i.i162 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i161, i32 noundef 4) #12
  %189 = ptrtoint ptr %_refcount.i.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %_refcount.i.i.i.i.i161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp.i.i.i.i163 = icmp eq i32 %190, 0
  br i1 %cmp.i.i.i.i163, label %if.then.i.i.i.i165, label %do.end5.i.i.i.i169, !prof !223

if.then.i.i.i.i165:                               ; preds = %_compound_head.exit.i164
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %188, ptr noundef nonnull @.str.43) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !235
  unreachable

do.end5.i.i.i.i169:                               ; preds = %_compound_head.exit.i164
  %call.i.i.i10.i.i.i.i166 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i161, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i161, i32 1, i32 3, i32 1) #12
  %191 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i161, ptr %_refcount.i.i.i.i.i161, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i161) #12, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i.i167 = extractvalue { i32, i32 } %191, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i167)
  %cmp.i.i.i.i.i.i.i168 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i167, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@unmap_and_move, %if.then.i.i.i.i.i171)) #12
          to label %folio_put_testzero.exit.i.i172 [label %if.then.i.i.i.i.i171], !srcloc !228

if.then.i.i.i.i.i171:                             ; preds = %do.end5.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i170 = zext i1 %cmp.i.i.i.i.i.i.i168 to i32
  call void @__page_ref_mod_and_test(ptr noundef %188, i32 noundef -1, i32 noundef %conv.i.i.i.i.i170) #12
  br label %folio_put_testzero.exit.i.i172

folio_put_testzero.exit.i.i172:                   ; preds = %if.then.i.i.i.i.i171, %do.end5.i.i.i.i169
  br i1 %cmp.i.i.i.i.i.i.i168, label %if.then.i4.i173, label %folio_put_testzero.exit.i.i172.cleanup_crit_edge

folio_put_testzero.exit.i.i172.cleanup_crit_edge: ; preds = %folio_put_testzero.exit.i.i172
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i4.i173:                                  ; preds = %folio_put_testzero.exit.i.i172
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %188) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i173, %folio_put_testzero.exit.i.i172.cleanup_crit_edge, %if.then51, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end14.cleanup_crit_edge ], [ %rc.0181192196, %if.then51 ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ], [ %rc.0181192196, %folio_put_testzero.exit.i.i172.cleanup_crit_edge ], [ %rc.0181192196, %if.then.i4.i173 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mm_migrate_pages(i32 noundef %succeeded, i32 noundef %failed, i32 noundef %thp_failed, i32 noundef %mode, i32 noundef %reason) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_mm_migrate_pages, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !228

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !222

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !281
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %succeeded, i32 noundef %failed, i32 noundef 0, i32 noundef %thp_failed, i32 noundef 0, i32 noundef %mode, i32 noundef %reason) #12
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !282
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !282
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !222

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !274
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_mm_migrate_pages, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_mm_migrate_pages.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_mm_migrate_pages.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 85, ptr noundef nonnull @.str.56) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  %38 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_migration_target(ptr noundef %page, i32 noundef %private) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %private to ptr
  %gfp_mask1 = getelementptr inbounds %struct.migration_target_control, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %gfp_mask1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gfp_mask1, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then.if.end_crit_edge, !prof !223

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

if.end:                                           ; preds = %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %nid.0 = phi i32 [ %4, %entry.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i.not.i.i = icmp eq i32 %8, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %page_zone.exit, !prof !223

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

page_zone.exit:                                   ; preds = %if.end
  %9 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i.i54 = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i.i54, label %if.then.i.i55, label %page_zone.exit58, !prof !223

if.then.i.i55:                                    ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.62) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #12, !srcloc !241
  unreachable

page_zone.exit58:                                 ; preds = %page_zone.exit
  %shr.i.i = lshr i32 %8, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %shr.i.i56 = lshr i32 %10, 30
  %zone_pgdat = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i56, i32 4
  %11 = ptrtoint ptr %zone_pgdat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zone_pgdat, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 1152
  %13 = zext i32 %sub.ptr.div to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %sub.ptr.div, label %lor.end.fold.split.i [
    i32 2, label %page_zone.exit58.is_highmem_idx.exit_crit_edge
    i32 3, label %land.rhs.i
  ]

page_zone.exit58.is_highmem_idx.exit_crit_edge:   ; preds = %page_zone.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_highmem_idx.exit

land.rhs.i:                                       ; preds = %page_zone.exit58
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %14 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp2.i = icmp eq i32 %14, 2
  br label %is_highmem_idx.exit

lor.end.fold.split.i:                             ; preds = %page_zone.exit58
  call void @__sanitizer_cov_trace_pc() #14
  br label %is_highmem_idx.exit

is_highmem_idx.exit:                              ; preds = %lor.end.fold.split.i, %land.rhs.i, %page_zone.exit58.is_highmem_idx.exit_crit_edge
  %15 = phi i1 [ true, %page_zone.exit58.is_highmem_idx.exit_crit_edge ], [ %cmp2.i, %land.rhs.i ], [ false, %lor.end.fold.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %sub.ptr.sub)
  %16 = icmp eq i32 %sub.ptr.sub, 3456
  %or.cond = select i1 %15, i1 true, i1 %16
  %or20 = or i32 %2, 2
  %gfp_mask.0 = select i1 %or.cond, i32 %or20, i32 %2
  %nmask22 = getelementptr inbounds %struct.migration_target_control, ptr %0, i32 0, i32 1
  %17 = ptrtoint ptr %nmask22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nmask22, align 4
  %call23 = tail call ptr @__alloc_pages(i32 noundef %gfp_mask.0, i32 noundef 0, i32 noundef %nid.0, ptr noundef %18) #12
  ret ptr %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @next_demotion_node(i32 noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @node_demotion, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.demotion_nodes, ptr %0, i32 %node
  %1 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !283
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 696, ptr noundef nonnull @.str.64) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load volatile i16, ptr %arrayidx, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.82)
  switch i16 %6, label %sw.default [
    i16 0, label %rcu_read_lock.exit.out_crit_edge
    i16 1, label %rcu_read_lock.exit.do.end6_crit_edge
  ]

rcu_read_lock.exit.do.end6_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

rcu_read_lock.exit.out_crit_edge:                 ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.default:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %6 to i32
  %call.i15 = tail call i32 @get_random_u32() #12
  %rem = urem i32 %call.i15, %conv
  br label %do.end6

do.end6:                                          ; preds = %sw.default, %rcu_read_lock.exit.do.end6_crit_edge
  %index.0 = phi i32 [ %rem, %sw.default ], [ 0, %rcu_read_lock.exit.do.end6_crit_edge ]
  %arrayidx8 = getelementptr %struct.demotion_nodes, ptr %0, i32 %node, i32 1, i32 %index.0
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load volatile i16, ptr %arrayidx8, align 2
  %conv9 = sext i16 %9 to i32
  br label %out

out:                                              ; preds = %do.end6, %rcu_read_lock.exit.out_crit_edge
  %target.0 = phi i32 [ %conv9, %do.end6 ], [ -1, %rcu_read_lock.exit.out_crit_edge ]
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i16, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %out
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 724, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !284
  %10 = tail call i32 @llvm.read_register.i32(metadata !212) #12
  %and.i.i.i.i.i23 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %target.0, %rcu_read_unlock.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @migrate_on_reclaim_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2) #15
  store ptr %call7.i.i, ptr @node_demotion, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !223

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3283, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 14, ptr noundef nonnull @.str.66, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @migration_offline_cpu, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end38, label %if.end.if.end44_crit_edge, !prof !223

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3293, i32 noundef 9, ptr noundef null) #12
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %call.i89 = tail call i32 @__cpuhp_setup_state(i32 noundef 225, ptr noundef nonnull @.str.67, i1 noundef zeroext true, ptr noundef nonnull @migration_online_cpu, ptr noundef null, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp54 = icmp slt i32 %call.i89, 0
  br i1 %cmp54, label %do.end70, label %if.end44.if.end76_crit_edge, !prof !223

if.end44.if.end76_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

do.end70:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 3296, i32 noundef 9, ptr noundef null) #12
  br label %if.end76

if.end76:                                         ; preds = %do.end70, %if.end44.if.end76_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @numa_init_sysfs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_kobj to i32))
  %0 = load ptr, ptr @mm_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.69, ptr noundef %0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sysfs_create_group(ptr noundef nonnull %call, ptr noundef nonnull @numa_attr_group) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73) #16
  tail call void @kobject_put(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end7 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_migrate_pages(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %succeeded = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %succeeded to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %succeeded, align 4
  %failed = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %failed, align 4
  %thp_succeeded = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %thp_succeeded to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thp_succeeded, align 4
  %thp_failed = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %thp_failed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %thp_failed, align 4
  %thp_split = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %thp_split to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %thp_split, align 4
  %mode = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %13, ptr noundef nonnull @trace_raw_output_mm_migrate_pages.symbols) #12
  %reason = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reason, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %15, ptr noundef nonnull @trace_raw_output_mm_migrate_pages.symbols.28) #12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %call1, ptr noundef %call3) #12
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_migrate_pages_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %mode = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %3, ptr noundef nonnull @trace_raw_output_mm_migrate_pages_start.symbols) #12
  %reason = getelementptr inbounds %struct.trace_event_raw_mm_migrate_pages_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %reason to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reason, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_mm_migrate_pages_start.symbols.39) #12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.38, ptr noundef %call1, ptr noundef %call3) #12
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_unless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_vma_mapped_walk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_anon_rmap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_add_file_rmap(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlock_vma_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_freeze(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_unfreeze(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_page_ext(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_copy_owner(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bh_lrus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_page_move_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !222

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !223

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.52) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !244
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #12
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !228

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #12
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.107, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_bh_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_page_states(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @folio_detach_private(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %private.i = getelementptr inbounds %struct.anon.107, ptr %folio, i32 0, i32 4
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %2 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private.exit, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_test_private.exit:                          ; preds = %entry
  %5 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %folio, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %folio_test_private.exit.cleanup_crit_edge, label %if.end

folio_test_private.exit.cleanup_crit_edge:        ; preds = %folio_test_private.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %folio_test_private.exit
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %2, align 4
  %and.i.i.i6 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %folio_clear_private.exit, label %if.then.i.i8, !prof !222

if.then.i.i8:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.40) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_clear_private.exit:                         ; preds = %if.end
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %folio) #12
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private.i, align 4
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %11 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !223

if.then.i.i.i:                                    ; preds = %folio_clear_private.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.43) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !235
  unreachable

do.end5.i.i.i:                                    ; preds = %folio_clear_private.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !237
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@folio_detach_private, %if.then.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !228

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %folio, i32 noundef -1, i32 noundef %conv.i.i.i.i) #12
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.cleanup_crit_edge

folio_put_testzero.exit.i.cleanup_crit_edge:      ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__put_page(ptr noundef %folio) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %folio_put_testzero.exit.i.cleanup_crit_edge, %folio_test_private.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %folio_test_private.exit.cleanup_crit_edge ], [ %1, %folio_put_testzero.exit.i.cleanup_crit_edge ], [ %1, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_get_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @try_to_migrate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @move_to_new_page(ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %rwc.i.i.i = alloca %struct.rmap_walk_control, align 4
  %wbc.i.i = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 2
  %3 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !222

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %3, align 4
  %and.i16.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !223

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !222

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %11, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %12, %if.end.i20.i ]
  %13 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !285
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !222

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %11, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %14, %if.end.i27.i ]
  %15 = inttoptr i32 %retval.0.i28.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %if.then, label %do.body13, !prof !223

if.then:                                          ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.58) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 857, 0\0A.popsection", ""() #12, !srcloc !286
  unreachable

do.body13:                                        ; preds = %PageLocked.exit
  %18 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i224 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i224)
  %tobool.not.i.i225 = icmp eq i32 %and.i.i224, 0
  br i1 %tobool.not.i.i225, label %if.end.i.i228, label %if.then.i.i227, !prof !222

if.then.i.i227:                                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i226 = add i32 %20, -1
  br label %_compound_head.exit.i233

if.end.i.i228:                                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i233

_compound_head.exit.i233:                         ; preds = %if.end.i.i228, %if.then.i.i227
  %retval.0.i.i229 = phi i32 [ %sub.i.i226, %if.then.i.i227 ], [ %21, %if.end.i.i228 ]
  %22 = inttoptr i32 %retval.0.i.i229 to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.not.i230 = icmp eq i32 %24, -1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %18, align 4
  %and.i16.i231 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i231)
  %tobool.not.i17.i232 = icmp eq i32 %and.i16.i231, 0
  br i1 %cmp.i.not.i230, label %if.then.i234, label %do.end10.i240, !prof !223

if.then.i234:                                     ; preds = %_compound_head.exit.i233
  br i1 %tobool.not.i17.i232, label %if.end.i20.i237, label %if.then.i19.i236, !prof !222

if.then.i19.i236:                                 ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i235 = add i32 %26, -1
  br label %_compound_head.exit22.i239

if.end.i20.i237:                                  ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit22.i239

_compound_head.exit22.i239:                       ; preds = %if.end.i20.i237, %if.then.i19.i236
  %retval.0.i21.i238 = phi i32 [ %sub.i18.i235, %if.then.i19.i236 ], [ %27, %if.end.i20.i237 ]
  %28 = inttoptr i32 %retval.0.i21.i238 to ptr
  tail call void @dump_page(ptr noundef %28, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #12, !srcloc !285
  unreachable

do.end10.i240:                                    ; preds = %_compound_head.exit.i233
  br i1 %tobool.not.i17.i232, label %if.end.i27.i243, label %if.then.i26.i242, !prof !222

if.then.i26.i242:                                 ; preds = %do.end10.i240
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i241 = add i32 %26, -1
  br label %PageLocked.exit246

if.end.i27.i243:                                  ; preds = %do.end10.i240
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %newpage to i32
  br label %PageLocked.exit246

PageLocked.exit246:                               ; preds = %if.end.i27.i243, %if.then.i26.i242
  %retval.0.i28.i244 = phi i32 [ %sub.i25.i241, %if.then.i26.i242 ], [ %29, %if.end.i27.i243 ]
  %30 = inttoptr i32 %retval.0.i28.i244 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %and1.i.i245 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i245)
  %tobool15.not = icmp eq i32 %and1.i.i245, 0
  br i1 %tobool15.not, label %if.then24, label %do.end33, !prof !223

if.then24:                                        ; preds = %PageLocked.exit246
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.59) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 858, 0\0A.popsection", ""() #12, !srcloc !287
  unreachable

do.end33:                                         ; preds = %PageLocked.exit246
  %call34 = tail call ptr @page_mapping(ptr noundef %page) #12
  br i1 %cmp.i.not, label %do.body56, label %if.then42, !prof !223

if.then42:                                        ; preds = %do.end33
  %tobool43.not = icmp eq ptr %call34, null
  br i1 %tobool43.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %call45 = tail call i32 @migrate_page(ptr noundef null, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode)
  br label %if.end138

if.else:                                          ; preds = %if.then42
  %a_ops = getelementptr inbounds %struct.address_space, ptr %call34, i32 0, i32 9
  %33 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %a_ops, align 4
  %migratepage = getelementptr inbounds %struct.address_space_operations, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %migratepage to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %migratepage, align 4
  %tobool46.not = icmp eq ptr %36, null
  br i1 %tobool46.not, label %if.else51, label %if.then47

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 %36(ptr noundef nonnull %call34, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #12
  br label %if.end138

if.else51:                                        ; preds = %if.else
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !222

if.then.i.i.i:                                    ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = add i32 %38, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %39, %if.end.i.i.i ]
  %40 = inttoptr i32 %retval.0.i.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp.i.not.i.i = icmp eq i32 %42, -1
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %3, align 4
  %and.i13.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i275, label %do.end8.i.i, !prof !223

if.then.i.i275:                                   ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i17.i.i, label %if.then.i16.i.i, !prof !222

if.then.i16.i.i:                                  ; preds = %if.then.i.i275
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i15.i.i = add i32 %44, -1
  br label %_compound_head.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.then.i.i275
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %page to i32
  br label %_compound_head.exit19.i.i

_compound_head.exit19.i.i:                        ; preds = %if.end.i17.i.i, %if.then.i16.i.i
  %retval.0.i18.i.i = phi i32 [ %sub.i15.i.i, %if.then.i16.i.i ], [ %45, %if.end.i17.i.i ]
  %46 = inttoptr i32 %retval.0.i18.i.i to ptr
  tail call void @dump_page(ptr noundef %46, ptr noundef nonnull @.str.45) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #12, !srcloc !288
  unreachable

do.end8.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i24.i.i, label %if.then.i23.i.i, !prof !222

if.then.i23.i.i:                                  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i22.i.i = add i32 %44, -1
  br label %PageDirty.exit.i

if.end.i24.i.i:                                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %page to i32
  br label %PageDirty.exit.i

PageDirty.exit.i:                                 ; preds = %if.end.i24.i.i, %if.then.i23.i.i
  %retval.0.i25.i.i = phi i32 [ %sub.i22.i.i, %if.then.i23.i.i ], [ %47, %if.end.i24.i.i ]
  %48 = inttoptr i32 %retval.0.i25.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %51 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i276

if.then.i276:                                     ; preds = %PageDirty.exit.i
  %52 = and i32 %mode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %switch.i = icmp eq i32 %52, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.then.i276.out_crit_edge

if.then.i276.out_crit_edge:                       ; preds = %if.then.i276
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.epilog.i:                                      ; preds = %if.then.i276
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc.i.i) #12
  %53 = call ptr @memset(ptr %wbc.i.i, i32 0, i32 64)
  %54 = ptrtoint ptr %wbc.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %wbc.i.i, align 8
  %55 = getelementptr inbounds { i32, i32, i64, i64, i32, i8, i8, [2 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32 }, ptr %wbc.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 9223372036854775807, ptr %55, align 8
  %57 = getelementptr inbounds { i32, i32, i64, i64, i32, i8, i8, [2 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32 }, ptr %wbc.i.i, i32 0, i32 5
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 16, ptr %57, align 4
  %59 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %34, align 4
  %tobool.not.i.i277 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i277, label %sw.epilog.i.writeout.exit.i_crit_edge, label %if.end.i.i278

sw.epilog.i.writeout.exit.i_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %writeout.exit.i

if.end.i.i278:                                    ; preds = %sw.epilog.i
  %call.i.i = tail call zeroext i1 @clear_page_dirty_for_io(ptr noundef %page) #12
  br i1 %call.i.i, label %if.end2.i.i, label %if.end.i.i278.writeout.exit.i_crit_edge

if.end.i.i278.writeout.exit.i_crit_edge:          ; preds = %if.end.i.i278
  call void @__sanitizer_cov_trace_pc() #14
  br label %writeout.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i278
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rwc.i.i.i) #12
  %61 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i.i, i32 0, i32 1
  %62 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i.i, i32 0, i32 2
  %63 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i.i, i32 0, i32 3
  %64 = getelementptr inbounds %struct.rmap_walk_control, ptr %rwc.i.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %rwc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %page, ptr %rwc.i.i.i, align 4
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @remove_migration_pte, ptr %61, align 4
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %62, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %63, align 4
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %64, align 4
  call void @rmap_walk(ptr noundef %page, ptr noundef nonnull %rwc.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rwc.i.i.i) #12
  %70 = ptrtoint ptr %a_ops to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %a_ops, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call5.i.i = call i32 %73(ptr noundef %page, ptr noundef nonnull %wbc.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %call5.i.i)
  %cmp.not.i.i = icmp eq i32 %call5.i.i, 524288
  br i1 %cmp.not.i.i, label %if.end2.i.i.if.end7.i.i_crit_edge, label %if.then6.i.i

if.end2.i.i.if.end7.i.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.end2.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.44, i32 noundef 788) #12
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %3, align 4
  %and.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !222

if.then.i.i.i.i:                                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add i32 %75, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %76, %if.end.i.i.i.i ]
  %77 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %78 = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i.i.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_flags.exit.i.i.i.i, label %if.then.i.i.i.i.i, !prof !222

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.40) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !229
  unreachable

folio_flags.exit.i.i.i.i:                         ; preds = %_compound_head.exit.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %77, i32 noundef 4) #12
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %77, align 4
  %and.i.i4.i.i.i.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %folio_trylock.exit.i.i.i, label %folio_flags.exit.i.i.i.i.if.then.i.i16.i_crit_edge

folio_flags.exit.i.i.i.i.if.then.i.i16.i_crit_edge: ; preds = %folio_flags.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i16.i

folio_trylock.exit.i.i.i:                         ; preds = %folio_flags.exit.i.i.i.i
  call void @llvm.prefetch.p0(ptr %77, i32 1, i32 3, i32 1) #12
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #12, !srcloc !230
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %83, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %84 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %phi.cmp.i.i.i.i.i = icmp eq i32 %84, 0
  br i1 %phi.cmp.i.i.i.i.i, label %folio_trylock.exit.i.i.i.if.end7.i.i_crit_edge, label %folio_trylock.exit.i.i.i.if.then.i.i16.i_crit_edge

folio_trylock.exit.i.i.i.if.then.i.i16.i_crit_edge: ; preds = %folio_trylock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i16.i

folio_trylock.exit.i.i.i.if.end7.i.i_crit_edge:   ; preds = %folio_trylock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i.i

if.then.i.i16.i:                                  ; preds = %folio_trylock.exit.i.i.i.if.then.i.i16.i_crit_edge, %folio_flags.exit.i.i.i.i.if.then.i.i16.i_crit_edge
  call void @__folio_lock(ptr noundef %77) #12
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then.i.i16.i, %folio_trylock.exit.i.i.i.if.end7.i.i_crit_edge, %if.end2.i.i.if.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp8.i.i = icmp slt i32 %call5.i.i, 0
  %cond.i.i = select i1 %cmp8.i.i, i32 -5, i32 -11
  br label %writeout.exit.i

writeout.exit.i:                                  ; preds = %if.end7.i.i, %if.end.i.i278.writeout.exit.i_crit_edge, %sw.epilog.i.writeout.exit.i_crit_edge
  %retval.0.i.i279 = phi i32 [ %cond.i.i, %if.end7.i.i ], [ -22, %sw.epilog.i.writeout.exit.i_crit_edge ], [ -11, %if.end.i.i278.writeout.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i.i) #12
  br label %out

if.end.i:                                         ; preds = %PageDirty.exit.i
  %85 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %page, align 4
  %and.i.i280 = and i32 %86, 24576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i280)
  %tobool.i.not.i = icmp eq i32 %and.i.i280, 0
  br i1 %tobool.i.not.i, label %if.end.i.if.end7.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call4.i = tail call i32 @try_to_release_page(ptr noundef %page, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i281 = icmp eq i32 %mode, 2
  %cond.i = select i1 %cmp.i281, i32 -11, i32 -16
  br label %out

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %call8.i = tail call i32 @migrate_page(ptr noundef nonnull %call34, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #12
  br label %if.end138

do.body56:                                        ; preds = %do.end33
  %87 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp.i.not.i247 = icmp eq i32 %88, -1
  br i1 %cmp.i.not.i247, label %if.then.i248, label %PageIsolated.exit, !prof !223

if.then.i248:                                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !232
  unreachable

PageIsolated.exit:                                ; preds = %do.body56
  %89 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %page, align 4
  %91 = and i32 %90, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool58.not = icmp eq i32 %91, 0
  br i1 %tobool58.not, label %if.then67, label %do.end76, !prof !223

if.then67:                                        ; preds = %PageIsolated.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 883, 0\0A.popsection", ""() #12, !srcloc !289
  unreachable

do.end76:                                         ; preds = %PageIsolated.exit
  %call77 = tail call i32 @PageMovable(ptr noundef %page) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.end76
  %92 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %cmp.i.not.i250 = icmp eq i32 %93, -1
  br i1 %cmp.i.not.i250, label %if.then.i251, label %__ClearPageIsolated.exit, !prof !223

if.then.i251:                                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !240
  unreachable

__ClearPageIsolated.exit:                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i252 = and i32 %93, -262145
  %94 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and.i.i252, ptr %page, align 4
  br label %out

if.end80:                                         ; preds = %do.end76
  %a_ops81 = getelementptr inbounds %struct.address_space, ptr %call34, i32 0, i32 9
  %95 = ptrtoint ptr %a_ops81 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %a_ops81, align 4
  %migratepage82 = getelementptr inbounds %struct.address_space_operations, ptr %96, i32 0, i32 13
  %97 = ptrtoint ptr %migratepage82 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %migratepage82, align 4
  %call83 = tail call i32 %98(ptr noundef %call34, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp = icmp eq i32 %call83, 0
  br i1 %cmp, label %land.rhs, label %if.end80.out_crit_edge

if.end80.out_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.rhs:                                         ; preds = %if.end80
  %99 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp.i.not.i253 = icmp eq i32 %100, -1
  br i1 %cmp.i.not.i253, label %if.then.i254, label %PageIsolated.exit257, !prof !223

if.then.i254:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !232
  unreachable

PageIsolated.exit257:                             ; preds = %land.rhs
  %101 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %page, align 4
  %103 = and i32 %102, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool85.not = icmp eq i32 %103, 0
  br i1 %tobool85.not, label %land.rhs94, label %PageIsolated.exit257.if.then140_crit_edge

PageIsolated.exit257.if.then140_crit_edge:        ; preds = %PageIsolated.exit257
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

land.rhs94:                                       ; preds = %PageIsolated.exit257
  %.b222 = load i1, ptr @move_to_new_page.__already_done, align 1
  br i1 %.b222, label %land.rhs94.if.then140_crit_edge, label %if.then105, !prof !222

land.rhs94.if.then140_crit_edge:                  ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

if.then105:                                       ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @move_to_new_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 893, i32 noundef 9, ptr noundef null) #12
  br label %if.then140

if.end138:                                        ; preds = %if.end7.i, %if.then47, %if.then44
  %rc.0 = phi i32 [ %call50, %if.then47 ], [ %call45, %if.then44 ], [ %call8.i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp139 = icmp eq i32 %rc.0, 0
  br i1 %cmp139, label %if.end138.if.then140_crit_edge, label %if.end138.out_crit_edge

if.end138.out_crit_edge:                          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end138.if.then140_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then140

if.then140:                                       ; preds = %if.end138.if.then140_crit_edge, %if.then105, %land.rhs94.if.then140_crit_edge, %PageIsolated.exit257.if.then140_crit_edge
  %104 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mapping.i, align 4
  %106 = ptrtoint ptr %105 to i32
  %and.i259 = and i32 %106, 3
  %107 = zext i32 %and.i259 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and.i259, label %if.then140.if.end170_crit_edge [
    i32 2, label %do.body144
    i32 0, label %if.then168
  ]

if.then140.if.end170_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

do.body144:                                       ; preds = %if.then140
  %108 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %109)
  %cmp.i.not.i262 = icmp eq i32 %109, -1
  br i1 %cmp.i.not.i262, label %if.then.i263, label %PageIsolated.exit266, !prof !223

if.then.i263:                                     ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !232
  unreachable

PageIsolated.exit266:                             ; preds = %do.body144
  %110 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %page, align 4
  %112 = and i32 %111, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool146.not = icmp eq i32 %112, 0
  br i1 %tobool146.not, label %if.then155, label %do.end164, !prof !223

if.then155:                                       ; preds = %PageIsolated.exit266
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/migrate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #12, !srcloc !290
  unreachable

do.end164:                                        ; preds = %PageIsolated.exit266
  %113 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %cmp.i.not.i267 = icmp eq i32 %114, -1
  br i1 %cmp.i.not.i267, label %if.then.i268, label %__ClearPageIsolated.exit270, !prof !223

if.then.i268:                                     ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #12, !srcloc !240
  unreachable

__ClearPageIsolated.exit270:                      ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i269 = and i32 %114, -262145
  %115 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %and.i.i269, ptr %page, align 4
  br label %if.end170

if.then168:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %mapping.i, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then168, %__ClearPageIsolated.exit270, %if.then140.if.end170_crit_edge
  tail call void @flush_dcache_page(ptr noundef %newpage) #12
  br label %out

out:                                              ; preds = %if.end170, %if.end138.out_crit_edge, %if.end80.out_crit_edge, %__ClearPageIsolated.exit, %if.then6.i, %writeout.exit.i, %if.then.i276.out_crit_edge
  %rc.1 = phi i32 [ 0, %if.end170 ], [ %rc.0, %if.end138.out_crit_edge ], [ 0, %__ClearPageIsolated.exit ], [ -16, %if.then.i276.out_crit_edge ], [ %cond.i, %if.then6.i ], [ %retval.0.i.i279, %writeout.exit.i ], [ %call83, %if.end80.out_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_anon_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_page_owner_migrate_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @migration_offline_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @node_demotion, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i.i, label %entry.set_migration_target_nodes.exit_crit_edge, label %for.body.i.i.i.i

entry.set_migration_target_nodes.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_migration_target_nodes.exit

for.body.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %0, align 2
  br label %set_migration_target_nodes.exit

set_migration_target_nodes.exit:                  ; preds = %for.body.i.i.i.i, %entry.set_migration_target_nodes.exit_crit_edge
  tail call void @synchronize_rcu() #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @migration_online_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @node_demotion, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i.i, label %entry.set_migration_target_nodes.exit_crit_edge, label %for.body.i.i.i.i

entry.set_migration_target_nodes.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_migration_target_nodes.exit

for.body.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %0, align 2
  br label %set_migration_target_nodes.exit

set_migration_target_nodes.exit:                  ; preds = %for.body.i.i.i.i, %entry.set_migration_target_nodes.exit_crit_edge
  tail call void @synchronize_rcu() #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @numa_demotion_enabled_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @numa_demotion_enabled, align 1, !range !291
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, ptr @.str.78, ptr @.str.77
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.76, ptr noundef nonnull %cond) #12
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @numa_demotion_enabled_store(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.77, i32 noundef 4)
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
  %call3 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(6) @.str.78, i32 noundef 5)
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
  store i8 %storemerge, ptr @numa_demotion_enabled, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.else.return_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !152, !154, !155, !157, !159, !161, !163, !165, !166, !167, !169, !171, !172, !173, !175, !176, !178, !180, !182, !183, !185, !187, !188, !189, !190, !192, !193, !194, !196, !198, !200, !202, !204, !206, !208, !210}
!llvm.named.register.sp = !{!212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__tracepoint_mm_migrate_pages, !1, !"__tracepoint_mm_migrate_pages", i1 false, i1 false}
!1 = !{!"../include/trace/events/migrate.h", i32 48, i32 1}
!2 = !{ptr @__tracepoint_ptr_mm_migrate_pages, !1, !"__tracepoint_ptr_mm_migrate_pages", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_mm_migrate_pages, !1, !"__SCK__tp_func_mm_migrate_pages", i1 false, i1 false}
!4 = !{ptr @__tracepoint_mm_migrate_pages_start, !5, !"__tracepoint_mm_migrate_pages_start", i1 false, i1 false}
!5 = !{!"../include/trace/events/migrate.h", i32 87, i32 1}
!6 = !{ptr @__tracepoint_ptr_mm_migrate_pages_start, !5, !"__tracepoint_ptr_mm_migrate_pages_start", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_mm_migrate_pages_start, !5, !"__SCK__tp_func_mm_migrate_pages_start", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/trace/events/migrate.h", i32 36, i32 1}
!10 = !{ptr @__TRACE_SYSTEM_MIGRATE_ASYNC, !9, !"__TRACE_SYSTEM_MIGRATE_ASYNC", i1 false, i1 false}
!11 = !{ptr @TRACE_SYSTEM_MIGRATE_ASYNC, !9, !"TRACE_SYSTEM_MIGRATE_ASYNC", i1 false, i1 false}
!12 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, !9, !"__TRACE_SYSTEM_MIGRATE_SYNC_LIGHT", i1 false, i1 false}
!14 = !{ptr @TRACE_SYSTEM_MIGRATE_SYNC_LIGHT, !9, !"TRACE_SYSTEM_MIGRATE_SYNC_LIGHT", i1 false, i1 false}
!15 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__TRACE_SYSTEM_MIGRATE_SYNC, !9, !"__TRACE_SYSTEM_MIGRATE_SYNC", i1 false, i1 false}
!17 = !{ptr @TRACE_SYSTEM_MIGRATE_SYNC, !9, !"TRACE_SYSTEM_MIGRATE_SYNC", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/trace/events/migrate.h", i32 37, i32 1}
!20 = !{ptr @__TRACE_SYSTEM_MR_COMPACTION, !19, !"__TRACE_SYSTEM_MR_COMPACTION", i1 false, i1 false}
!21 = !{ptr @TRACE_SYSTEM_MR_COMPACTION, !19, !"TRACE_SYSTEM_MR_COMPACTION", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__TRACE_SYSTEM_MR_MEMORY_FAILURE, !19, !"__TRACE_SYSTEM_MR_MEMORY_FAILURE", i1 false, i1 false}
!24 = !{ptr @TRACE_SYSTEM_MR_MEMORY_FAILURE, !19, !"TRACE_SYSTEM_MR_MEMORY_FAILURE", i1 false, i1 false}
!25 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__TRACE_SYSTEM_MR_MEMORY_HOTPLUG, !19, !"__TRACE_SYSTEM_MR_MEMORY_HOTPLUG", i1 false, i1 false}
!27 = !{ptr @TRACE_SYSTEM_MR_MEMORY_HOTPLUG, !19, !"TRACE_SYSTEM_MR_MEMORY_HOTPLUG", i1 false, i1 false}
!28 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__TRACE_SYSTEM_MR_SYSCALL, !19, !"__TRACE_SYSTEM_MR_SYSCALL", i1 false, i1 false}
!30 = !{ptr @TRACE_SYSTEM_MR_SYSCALL, !19, !"TRACE_SYSTEM_MR_SYSCALL", i1 false, i1 false}
!31 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__TRACE_SYSTEM_MR_MEMPOLICY_MBIND, !19, !"__TRACE_SYSTEM_MR_MEMPOLICY_MBIND", i1 false, i1 false}
!33 = !{ptr @TRACE_SYSTEM_MR_MEMPOLICY_MBIND, !19, !"TRACE_SYSTEM_MR_MEMPOLICY_MBIND", i1 false, i1 false}
!34 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @__TRACE_SYSTEM_MR_NUMA_MISPLACED, !19, !"__TRACE_SYSTEM_MR_NUMA_MISPLACED", i1 false, i1 false}
!36 = !{ptr @TRACE_SYSTEM_MR_NUMA_MISPLACED, !19, !"TRACE_SYSTEM_MR_NUMA_MISPLACED", i1 false, i1 false}
!37 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__TRACE_SYSTEM_MR_CONTIG_RANGE, !19, !"__TRACE_SYSTEM_MR_CONTIG_RANGE", i1 false, i1 false}
!39 = !{ptr @TRACE_SYSTEM_MR_CONTIG_RANGE, !19, !"TRACE_SYSTEM_MR_CONTIG_RANGE", i1 false, i1 false}
!40 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__TRACE_SYSTEM_MR_LONGTERM_PIN, !19, !"__TRACE_SYSTEM_MR_LONGTERM_PIN", i1 false, i1 false}
!42 = !{ptr @TRACE_SYSTEM_MR_LONGTERM_PIN, !19, !"TRACE_SYSTEM_MR_LONGTERM_PIN", i1 false, i1 false}
!43 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__TRACE_SYSTEM_MR_DEMOTION, !19, !"__TRACE_SYSTEM_MR_DEMOTION", i1 false, i1 false}
!45 = !{ptr @TRACE_SYSTEM_MR_DEMOTION, !19, !"TRACE_SYSTEM_MR_DEMOTION", i1 false, i1 false}
!46 = !{ptr @event_class_mm_migrate_pages, !1, !"event_class_mm_migrate_pages", i1 false, i1 false}
!47 = !{ptr @event_mm_migrate_pages, !1, !"event_mm_migrate_pages", i1 false, i1 false}
!48 = !{ptr @__event_mm_migrate_pages, !1, !"__event_mm_migrate_pages", i1 false, i1 false}
!49 = !{ptr @event_class_mm_migrate_pages_start, !5, !"event_class_mm_migrate_pages_start", i1 false, i1 false}
!50 = !{ptr @event_mm_migrate_pages_start, !5, !"event_mm_migrate_pages_start", i1 false, i1 false}
!51 = !{ptr @__event_mm_migrate_pages_start, !5, !"__event_mm_migrate_pages_start", i1 false, i1 false}
!52 = !{ptr @__bpf_trace_tp_map_mm_migrate_pages, !1, !"__bpf_trace_tp_map_mm_migrate_pages", i1 false, i1 false}
!53 = !{ptr @__bpf_trace_tp_map_mm_migrate_pages_start, !5, !"__bpf_trace_tp_map_mm_migrate_pages_start", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/migrate.c", i32 103, i32 2}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../mm/migrate.c", i32 109, i32 2}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../mm/migrate.c", i32 157, i32 4}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../mm/migrate.c", i32 409, i32 3}
!63 = !{ptr @__ksymtab_folio_migrate_mapping, !64, !"__ksymtab_folio_migrate_mapping", i1 false, i1 false}
!64 = !{!"../mm/migrate.c", i32 472, i32 1}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../mm/migrate.c", i32 524, i32 3}
!67 = !{ptr @__ksymtab_folio_migrate_flags, !68, !"__ksymtab_folio_migrate_flags", i1 false, i1 false}
!68 = !{!"../mm/migrate.c", i32 584, i32 1}
!69 = !{ptr @__ksymtab_folio_migrate_copy, !70, !"__ksymtab_folio_migrate_copy", i1 false, i1 false}
!70 = !{!"../mm/migrate.c", i32 591, i32 1}
!71 = !{ptr @__ksymtab_migrate_page, !72, !"__ksymtab_migrate_page", i1 false, i1 false}
!72 = !{!"../mm/migrate.c", i32 624, i32 1}
!73 = !{ptr @__ksymtab_buffer_migrate_page, !74, !"__ksymtab_buffer_migrate_page", i1 false, i1 false}
!74 = !{!"../mm/migrate.c", i32 754, i32 1}
!75 = !{ptr @__initcall__kmod_migrate__330_3301_migrate_on_reclaim_init7, !76, !"__initcall__kmod_migrate__330_3301_migrate_on_reclaim_init7", i1 false, i1 false}
!76 = !{!"../mm/migrate.c", i32 3301, i32 1}
!77 = !{ptr @numa_demotion_enabled, !78, !"numa_demotion_enabled", i1 false, i1 false}
!78 = !{!"../mm/migrate.c", i32 3304, i32 6}
!79 = !{ptr @__initcall__kmod_migrate__331_3362_numa_init_sysfs4, !80, !"__initcall__kmod_migrate__331_3362_numa_init_sysfs4", i1 false, i1 false}
!80 = !{!"../mm/migrate.c", i32 3362, i32 1}
!81 = !{ptr @node_demotion, !82, !"node_demotion", i1 false, i1 false}
!82 = !{!"../mm/migrate.c", i32 2956, i32 31}
!83 = !{ptr @__tpstrtab_mm_migrate_pages, !1, !"__tpstrtab_mm_migrate_pages", i1 false, i1 false}
!84 = !{ptr @__tpstrtab_mm_migrate_pages_start, !5, !"__tpstrtab_mm_migrate_pages_start", i1 false, i1 false}
!85 = !{ptr @str__migrate__trace_system_name, !86, !"str__migrate__trace_system_name", i1 false, i1 false}
!86 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!87 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.21, !1, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.22, !1, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.23, !1, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.24, !1, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.25, !1, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.26, !1, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @trace_event_fields_mm_migrate_pages, !1, !"trace_event_fields_mm_migrate_pages", i1 false, i1 false}
!98 = !{ptr @trace_event_type_funcs_mm_migrate_pages, !1, !"trace_event_type_funcs_mm_migrate_pages", i1 false, i1 false}
!99 = !{ptr @.str.27, !1, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @trace_raw_output_mm_migrate_pages.symbols, !1, !"symbols", i1 false, i1 false}
!101 = !{ptr @.str.29, !1, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.30, !1, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.31, !1, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @trace_raw_output_mm_migrate_pages.symbols.28, !1, !"symbols", i1 false, i1 false}
!111 = !{ptr @print_fmt_mm_migrate_pages, !1, !"print_fmt_mm_migrate_pages", i1 false, i1 false}
!112 = !{ptr @trace_event_fields_mm_migrate_pages_start, !5, !"trace_event_fields_mm_migrate_pages_start", i1 false, i1 false}
!113 = !{ptr @trace_event_type_funcs_mm_migrate_pages_start, !5, !"trace_event_type_funcs_mm_migrate_pages_start", i1 false, i1 false}
!114 = !{ptr @.str.38, !5, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @trace_raw_output_mm_migrate_pages_start.symbols, !5, !"symbols", i1 false, i1 false}
!116 = !{ptr @trace_raw_output_mm_migrate_pages_start.symbols.39, !5, !"symbols", i1 false, i1 false}
!117 = !{ptr @print_fmt_mm_migrate_pages_start, !5, !"print_fmt_mm_migrate_pages_start", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../include/linux/page-flags.h", i32 921, i32 1}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../include/linux/mm.h", i32 717, i32 2}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/page-flags.h", i32 504, i32 1}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/linux/memcontrol.h", i32 537, i32 2}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../include/linux/memcontrol.h", i32 538, i32 2}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/memcontrol.h", i32 417, i32 2}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/memcontrol.h", i32 418, i32 2}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/memcontrol.h", i32 419, i32 2}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/memcontrol.h", i32 398, i32 2}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/page_ref.h", i32 332, i32 2}
!146 = !{ptr @.str.54, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!148 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!149 = !{ptr @.str.55, !5, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!151 = !{ptr @.str.56, !5, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!154 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.58, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../mm/migrate.c", i32 857, i32 2}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../mm/migrate.c", i32 858, i32 2}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../mm/migrate.c", i32 892, i32 3}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../mm/migrate.c", i32 1024, i32 3}
!163 = !{ptr @.str.61, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../mm/migrate.c", i32 1031, i32 3}
!165 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!166 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!169 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!170 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!171 = !{ptr @.str.63, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!175 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../mm/migrate.c", i32 3285, i32 58}
!178 = !{ptr @.str.67, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../mm/migrate.c", i32 3294, i32 55}
!180 = distinct !{null, !181, !"__already_done", i1 false, i1 false}
!181 = !{!"../mm/migrate.c", i32 3089, i32 6}
!182 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../mm/migrate.c", i32 3346, i32 37}
!185 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../mm/migrate.c", i32 3348, i32 3}
!187 = !{ptr @.str.71, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @numa_init_sysfs._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @numa_init_sysfs._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../mm/migrate.c", i32 3353, i32 3}
!192 = !{ptr @numa_init_sysfs._entry.72, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @numa_init_sysfs._entry_ptr.74, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @numa_attr_group, !195, !"numa_attr_group", i1 false, i1 false}
!195 = !{!"../mm/migrate.c", i32 3337, i32 37}
!196 = !{ptr @numa_attrs, !197, !"numa_attrs", i1 false, i1 false}
!197 = !{!"../mm/migrate.c", i32 3332, i32 26}
!198 = !{ptr @.str.75, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../mm/migrate.c", i32 3329, i32 2}
!200 = !{ptr @numa_demotion_enabled_attr, !201, !"numa_demotion_enabled_attr", i1 false, i1 false}
!201 = !{!"../mm/migrate.c", i32 3328, i32 30}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../mm/migrate.c", i32 3310, i32 25}
!204 = !{ptr @.str.77, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../mm/migrate.c", i32 3311, i32 30}
!206 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../mm/migrate.c", i32 3311, i32 39}
!208 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../mm/migrate.c", i32 3318, i32 48}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../mm/migrate.c", i32 3320, i32 54}
!212 = !{!"sp"}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{!"branch_weights", i32 2000, i32 1}
!223 = !{!"branch_weights", i32 1, i32 2000}
!224 = !{!"auto-init"}
!225 = !{i64 2148758254}
!226 = !{i64 1244854, i64 1244879, i64 1244901, i64 1244917, i64 1244929, i64 1244949, i64 1244973, i64 1244989, i64 1245001}
!227 = !{i64 2148758442}
!228 = !{i64 2148359512, i64 2148359517, i64 2148359530, i64 2148359574, i64 2148359608, i64 2148359629}
!229 = !{i64 2150313833, i64 2150314324, i64 2150313870, i64 2150313926, i64 2150313960, i64 2150313984, i64 2150314025, i64 2150314046, i64 2150314074, i64 2150314108}
!230 = !{i64 2148767693, i64 2148767725, i64 2148767754, i64 2148767788, i64 2148767819, i64 2148767842}
!231 = !{i64 2148856798}
!232 = !{i64 2151133824, i64 2151134315, i64 2151133861, i64 2151133917, i64 2151133951, i64 2151133975, i64 2151134016, i64 2151134037, i64 2151134065, i64 2151134099}
!233 = !{i64 2156686023, i64 2156686500, i64 2156686060, i64 2156686116, i64 2156686150, i64 2156686174, i64 2156686215, i64 2156686236, i64 2156686264, i64 2156686298}
!234 = !{i64 2151136643, i64 2151137134, i64 2151136680, i64 2151136736, i64 2151136770, i64 2151136794, i64 2151136835, i64 2151136856, i64 2151136884, i64 2151136918}
!235 = !{i64 2153204831, i64 2153205314, i64 2153204868, i64 2153204924, i64 2153204958, i64 2153204982, i64 2153205023, i64 2153205044, i64 2153205072, i64 2153205106}
!236 = !{i64 2148847311}
!237 = !{i64 2148762020, i64 2148762052, i64 2148762081, i64 2148762115, i64 2148762146, i64 2148762169}
!238 = !{i64 2148847540}
!239 = !{i64 2156693448, i64 2156693925, i64 2156693485, i64 2156693541, i64 2156693575, i64 2156693599, i64 2156693640, i64 2156693661, i64 2156693689, i64 2156693723}
!240 = !{i64 2151139476, i64 2151139967, i64 2151139513, i64 2151139569, i64 2151139603, i64 2151139627, i64 2151139668, i64 2151139689, i64 2151139717, i64 2151139751}
!241 = !{i64 2153234586, i64 2153235070, i64 2153234623, i64 2153234679, i64 2153234713, i64 2153234737, i64 2153234778, i64 2153234799, i64 2153234827, i64 2153234861}
!242 = !{i64 2153195821, i64 2153196309, i64 2153195858, i64 2153195914, i64 2153195948, i64 2153195972, i64 2153196013, i64 2153196034, i64 2153196062, i64 2153196096}
!243 = !{i64 2156695199, i64 2156695676, i64 2156695236, i64 2156695292, i64 2156695326, i64 2156695350, i64 2156695391, i64 2156695412, i64 2156695440, i64 2156695474}
!244 = !{i64 2153228804, i64 2153229288, i64 2153228841, i64 2153228897, i64 2153228931, i64 2153228955, i64 2153228996, i64 2153229017, i64 2153229045, i64 2153229079}
!245 = !{i64 2148758835, i64 2148758861, i64 2148758890, i64 2148758924, i64 2148758955, i64 2148758978}
!246 = !{i64 2152822089}
!247 = !{i64 2153777849}
!248 = !{i64 2153775078}
!249 = !{i64 2152821882}
!250 = !{i64 2151080619, i64 2151081110, i64 2151080656, i64 2151080712, i64 2151080746, i64 2151080770, i64 2151080811, i64 2151080832, i64 2151080860, i64 2151080894}
!251 = !{i64 2148860682}
!252 = !{i64 1244348, i64 1244372, i64 1244393, i64 1244410, i64 1244427}
!253 = !{i64 2148860908}
!254 = !{i64 2156707901, i64 2156708378, i64 2156707938, i64 2156707994, i64 2156708028, i64 2156708052, i64 2156708093, i64 2156708114, i64 2156708142, i64 2156708176}
!255 = !{i64 2151416530, i64 2151417019, i64 2151416567, i64 2151416623, i64 2151416657, i64 2151416681, i64 2151416722, i64 2151416743, i64 2151416771, i64 2151416805}
!256 = !{i64 2151418145, i64 2151418634, i64 2151418182, i64 2151418238, i64 2151418272, i64 2151418296, i64 2151418337, i64 2151418358, i64 2151418386, i64 2151418420}
!257 = !{i64 2148840820}
!258 = !{i64 2154882893, i64 2154883384, i64 2154882930, i64 2154882986, i64 2154883020, i64 2154883044, i64 2154883085, i64 2154883106, i64 2154883134, i64 2154883168}
!259 = !{i64 2154884793, i64 2154885284, i64 2154884830, i64 2154884886, i64 2154884920, i64 2154884944, i64 2154884985, i64 2154885006, i64 2154885034, i64 2154885068}
!260 = !{i64 2154867393, i64 2154867884, i64 2154867430, i64 2154867486, i64 2154867520, i64 2154867544, i64 2154867585, i64 2154867606, i64 2154867634, i64 2154867668}
!261 = !{i64 2154861651, i64 2154862142, i64 2154861688, i64 2154861744, i64 2154861778, i64 2154861802, i64 2154861843, i64 2154861864, i64 2154861892, i64 2154861926}
!262 = !{i64 1163760}
!263 = !{i64 2151063725}
!264 = !{i64 2151064796}
!265 = !{i64 2156712187, i64 2156712664, i64 2156712224, i64 2156712280, i64 2156712314, i64 2156712338, i64 2156712379, i64 2156712400, i64 2156712428, i64 2156712462}
!266 = !{i64 2156721173, i64 2156721650, i64 2156721210, i64 2156721266, i64 2156721300, i64 2156721324, i64 2156721365, i64 2156721386, i64 2156721414, i64 2156721448}
!267 = !{i64 2150776600, i64 2150777091, i64 2150776637, i64 2150776693, i64 2150776727, i64 2150776751, i64 2150776792, i64 2150776813, i64 2150776841, i64 2150776875}
!268 = !{i64 2156724227, i64 2156724704, i64 2156724264, i64 2156724320, i64 2156724354, i64 2156724378, i64 2156724419, i64 2156724440, i64 2156724468, i64 2156724502}
!269 = !{i64 1163515, i64 1163576}
!270 = !{i64 1166247}
!271 = !{i64 1166532}
!272 = !{i64 2156154016}
!273 = !{i64 2156154247}
!274 = !{i64 2150102727}
!275 = !{i64 2150103763}
!276 = !{i64 2150493768, i64 2150493941, i64 2150493956, i64 2150494008, i64 2150494067, i64 2150494091, i64 2150494132, i64 2150494153, i64 2150494181, i64 2150494213}
!277 = !{i64 2150981897, i64 2150982070, i64 2150982085, i64 2150982137, i64 2150982196, i64 2150982220, i64 2150982261, i64 2150982282, i64 2150982310, i64 2150982342}
!278 = !{i64 2150833748, i64 2150834239, i64 2150833785, i64 2150833841, i64 2150833875, i64 2150833899, i64 2150833940, i64 2150833961, i64 2150833989, i64 2150834023}
!279 = !{i64 2156736142, i64 2156736620, i64 2156736179, i64 2156736235, i64 2156736269, i64 2156736293, i64 2156736334, i64 2156736355, i64 2156736383, i64 2156736417}
!280 = !{i64 2156738033, i64 2156738511, i64 2156738070, i64 2156738126, i64 2156738160, i64 2156738184, i64 2156738225, i64 2156738246, i64 2156738274, i64 2156738308}
!281 = !{i64 2156136574}
!282 = !{i64 2156136911}
!283 = !{i64 2150094168}
!284 = !{i64 2150094434}
!285 = !{i64 2150325327, i64 2150325818, i64 2150325364, i64 2150325420, i64 2150325454, i64 2150325478, i64 2150325519, i64 2150325540, i64 2150325568, i64 2150325602}
!286 = !{i64 2156727831, i64 2156728308, i64 2156727868, i64 2156727924, i64 2156727958, i64 2156727982, i64 2156728023, i64 2156728044, i64 2156728072, i64 2156728106}
!287 = !{i64 2156729597, i64 2156730074, i64 2156729634, i64 2156729690, i64 2156729724, i64 2156729748, i64 2156729789, i64 2156729810, i64 2156729838, i64 2156729872}
!288 = !{i64 2150427803, i64 2150428294, i64 2150427840, i64 2150427896, i64 2150427930, i64 2150427954, i64 2150427995, i64 2150428016, i64 2150428044, i64 2150428078}
!289 = !{i64 2156731389, i64 2156731866, i64 2156731426, i64 2156731482, i64 2156731516, i64 2156731540, i64 2156731581, i64 2156731602, i64 2156731630, i64 2156731664}
!290 = !{i64 2156734180, i64 2156734657, i64 2156734217, i64 2156734273, i64 2156734307, i64 2156734331, i64 2156734372, i64 2156734393, i64 2156734421, i64 2156734455}
!291 = !{i8 0, i8 2}
